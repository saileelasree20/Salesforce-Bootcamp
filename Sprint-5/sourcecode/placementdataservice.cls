public class PlacementDataService {

    public static Student__c getStudent(Id studentId) {

        Student__c student = [
            SELECT Id, Name, CGPA__c
            FROM Student__c
            WHERE Id = :studentId
            LIMIT 1
        ];

        return student;
    }


    public static Job_Opening__c getJob(Id jobId) {

        Job_Opening__c job = [
            SELECT Id, Name, Required_CGPA__c, Last_Date__c
            FROM Job_Opening__c
            WHERE Id = :jobId
            LIMIT 1
        ];

        return job;
    }


    public static List<Application__c> getExistingApplications(
        Id studentId,
        Id jobId
    ) {

        List<Application__c> applications = [
            SELECT Id, Name, Student__c, Job_Opening__c, Status__c
            FROM Application__c
            WHERE Student__c = :studentId
            AND Job_Opening__c = :jobId
        ];

        return applications;
    }


    public static Application__c createApplication(
        Id studentId,
        Id jobId
    ) {

        Application__c application = new Application__c();

        application.Student__c = studentId;
        application.Job_Opening__c = jobId;
        application.Status__c = 'Applied';

        insert application;

        return application;
    }


    public static Application__c updateApplicationStatus(
        Id applicationId,
        String newStatus
    ) {

        Application__c application = [
            SELECT Id, Status__c
            FROM Application__c
            WHERE Id = :applicationId
            LIMIT 1
        ];

        application.Status__c = newStatus;

        update application;

        return application;
    }


    public static Map<Id, Student__c> getStudents(
        Set<Id> studentIds
    ) {

        return new Map<Id, Student__c>([
            SELECT Id, CGPA__c
            FROM Student__c
            WHERE Id IN :studentIds
        ]);
    }


    public static Map<Id, Job_Opening__c> getJobs(
        Set<Id> jobIds
    ) {

        return new Map<Id, Job_Opening__c>([
            SELECT Id, Required_CGPA__c, Last_Date__c
            FROM Job_Opening__c
            WHERE Id IN :jobIds
        ]);
    }


    public static List<Application__c> getExistingApplications(
        Set<Id> studentIds,
        Set<Id> jobIds
    ) {

        return [
            SELECT Student__c, Job_Opening__c
            FROM Application__c
            WHERE Student__c IN :studentIds
            AND Job_Opening__c IN :jobIds
        ];
    }


    public static List<Student__c> getStudentsForPlacement(
        Set<Id> studentIds
    ) {

        return [
            SELECT Id
            FROM Student__c
            WHERE Id IN :studentIds
        ];
    }


    public static void updateStudents(
        List<Student__c> students
    ) {

        update students;
    }
}
