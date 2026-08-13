public class NotificationService {

    public static void notifySelectedStudents(
        List<Application__c> applications
    ) {

        Set<Id> studentIds = new Set<Id>();

        for (Application__c app : applications) {

            if (
                app.Status__c == 'Selected' &&
                app.Student__c != null
            ) {
                studentIds.add(app.Student__c);
            }
        }

        if (studentIds.isEmpty()) {
            return;
        }

        List<Student__c> students = [
            SELECT Id, Name, Email__c
            FROM Student__c
            WHERE Id IN :studentIds
        ];

        List<Messaging.SingleEmailMessage> emails =
            new List<Messaging.SingleEmailMessage>();

        for (Student__c student : students) {

            if (String.isNotBlank(student.Email__c)) {

                Messaging.SingleEmailMessage email =
                    new Messaging.SingleEmailMessage();

                email.setToAddresses(
                    new String[] { student.Email__c }
                );

                email.setSubject(
                    'Congratulations! You have been Selected'
                );

                email.setPlainTextBody(
                    'Dear ' + student.Name +
                    ',\n\nCongratulations! ' +
                    'You have been selected for the placement.\n\n' +
                    'Regards,\nPlacement Management Team'
                );

                emails.add(email);
            }
        }

        if (!emails.isEmpty()) {
            Messaging.sendEmail(emails);
        }
    }
}
