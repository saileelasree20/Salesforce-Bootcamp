import { LightningElement } from 'lwc';

export default class PlacementHome extends LightningElement {

    studentName = 'Sai Leela Sree';
    rollNumber = '22091A0501';
    department = 'CSE';

    todayDate = '12 August 2026';

    numberOfCompanies = 25;
    numberOfJobs = 63;
    applicationsSubmitted = 5;

    welcomeMessage = '';
    status = 'Not Applied';

    showWelcome() {
        this.welcomeMessage = 'Welcome to Salesforce Development.';
    }

    applyStatus() {
        this.status = 'Applied';
    }
}
