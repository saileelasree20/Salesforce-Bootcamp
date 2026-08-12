# Day 1 - Salesforce Foundation & Data Modeling

## Project: Placement Management System

### Objective

The objective of Day 1 was to build the Salesforce foundation for a **Placement Management System** by creating the required custom objects, fields, relationships, and application navigation.

The data model was designed to manage students, companies, job opportunities, applications, and offer letters throughout the placement process.

---

## Objects Created

The following custom objects were created in Salesforce:

1. **Student**
2. **Company**
3. **Job**
4. **Application**
5. **Offer Letter**

---

## Important Fields Configured

### Student

The Student object stores student information required for placement activities.

Important fields include:

* Student Name
* Student CGPA
* Placement Status

### Company

The Company object stores information about companies participating in the placement process.

Important fields include:

* Company Name
* Company details

### Job

The Job object represents job opportunities offered by companies.

Important fields include:

* Job Title
* Minimum CGPA
* Last Date to Apply
* Company

### Application

The Application object tracks students applying for available jobs.

Important fields include:

* Student
* Job
* Application Date
* Application Status

### Offer Letter

The Offer Letter object stores information about students who are selected for a job.

Important fields include:

* Student
* Job/Application
* Offer Status
* Offer Date

---

## Relationships

Relationships were configured between the objects to represent the complete placement workflow.

### Student → Application

A student can apply for multiple jobs.

**Relationship:**

```text
Student
   |
   | applies
   ↓
Application
```

### Application → Job

Each application is associated with a particular job.

```text
Application
   |
   | applied for
   ↓
Job
```

### Job → Company

Each job belongs to a company.

```text
Job
   |
   | belongs to
   ↓
Company
```

### Application → Offer Letter

When a student is selected for an application, an offer letter can be created.

```text
Application
   |
   | selected
   ↓
Offer Letter
```

---

## Complete Data Model

The overall placement process can be represented as:

```text
                  Company
                     |
                     | offers
                     ↓
                    Job
                     |
                     | applied through
                     ↓
                  Application
                  /          \
                 /            \
                ↓              ↓
            Student       Offer Letter
```

Another way to understand the process is:

```text
Student
   |
   | applies for
   ↓
Application
   |
   | for
   ↓
Job
   |
   | offered by
   ↓
Company

Application
   |
   | selected
   ↓
Offer Letter
```

---

## Placement Process

The Salesforce application represents the following real-world process:

1. A **Company** creates or provides a job opportunity.
2. The **Job** contains requirements such as the minimum CGPA and application deadline.
3. A **Student** checks the available jobs.
4. The student submits an **Application** for a suitable job.
5. The application stores the application date and current application status.
6. If the student is selected, the application status is updated accordingly.
7. An **Offer Letter** is created for the selected student.
8. The student's **Placement Status** can be updated to reflect the final placement result.

---

## Salesforce Configuration Completed

The following Salesforce configuration was completed during Day 1:

* Created custom objects for the placement management system.
* Created required custom fields.
* Configured student-related placement information.
* Configured job eligibility information such as Minimum CGPA.
* Configured job application deadline.
* Configured application tracking fields.
* Configured application status.
* Configured student placement status.
* Created relationships between the objects.
* Configured application navigation for easier access to the objects.

---

## Key Learning Outcomes

Through this task, I learned:

* How to create custom objects in Salesforce.
* How to create and configure custom fields.
* How to choose appropriate field types.
* How relationships between Salesforce objects work.
* How to design a Salesforce data model based on a real-world requirement.
* How to represent a business process using Salesforce objects and relationships.
* How to configure application navigation.
* How Salesforce data modeling forms the foundation for automation and development.

---

## Project Workflow

The final workflow of the Placement Management System is:

```text
Company
   ↓
Creates Job
   ↓
Student Views Job
   ↓
Student Applies
   ↓
Application Created
   ↓
Application Reviewed
   ↓
Student Selected
   ↓
Offer Letter Created
   ↓
Student Placement Status Updated
```

---

## Conclusion

Day 1 established the **Salesforce foundation and data model** for the Placement Management System. The required objects, fields, and relationships were configured to represent the complete placement lifecycle from job creation and student applications to selection and offer letters.

This data model will serve as the foundation for future development activities such as **validation rules, flows, Apex, triggers, SOQL, and Lightning Web Components (LWC)**.
