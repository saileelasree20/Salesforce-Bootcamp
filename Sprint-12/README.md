# Salesforce Placement Management System

## Chapter 12 – From Developer Org to Production

### Sprint 12 – Git, Salesforce CLI, Metadata, Sandboxes and Deployment

---

## 📌 Project Overview

The **Placement Management System** is a Salesforce application developed as part of the **Salesforce Developer Bridge Program**.

Chapter 12 focuses on moving the Salesforce application from a Developer Org toward a controlled, professional deployment process.

The chapter covers:

- Git and GitHub
- Version Control
- Branches
- Commits
- Pull Requests
- Code Reviews
- Salesforce CLI
- Salesforce Metadata
- Metadata Retrieval
- Metadata Deployment
- Sandboxes
- Scratch Orgs
- Changesets
- Metadata API
- Testing
- Deployment
- Troubleshooting

---

# 🎯 Learning Objectives

After completing Chapter 12, I learned how to:

- Use Git for Salesforce development.
- Create and manage a GitHub repository.
- Create feature branches.
- Commit Salesforce source changes.
- Push and pull changes.
- Create Pull Requests.
- Perform code reviews.
- Understand Salesforce metadata.
- Use Salesforce CLI.
- Authenticate Salesforce Orgs.
- Retrieve metadata from Salesforce.
- Deploy metadata to Salesforce.
- Understand Salesforce Sandboxes.
- Understand Scratch Orgs.
- Understand Changesets.
- Understand Metadata API.
- Identify deployment dependencies.
- Run tests before deployment.
- Verify a deployment.
- Troubleshoot common deployment problems.
- Document a Salesforce deployment process.

---

# 🏢 Project Details

| Item | Details |
|---|---|
| Project | Placement Management System |
| Platform | Salesforce |
| Chapter | Chapter 12 |
| Sprint | Sprint 12 |
| Main Topic | From Developer Org to Production |
| Version Control | Git |
| Repository | GitHub |
| CLI | Salesforce CLI |
| Backend | Apex |
| Frontend | Lightning Web Components |
| Query Language | SOQL |
| Deployment | Salesforce Metadata / CLI |
| Environments | Developer, QA, UAT, Production |

---

# 🏗️ Project Architecture

The overall development and deployment process is:

```text
Salesforce Developer Org
          |
          v
    Retrieve Metadata
          |
          v
     Local Source
          |
          v
     Git Repository
          |
          v
    Feature Branch
          |
          v
      Pull Request
          |
          v
      Code Review
          |
          v
        Merge
          |
          v
       Testing
          |
          v
      Deployment
          |
          v
          QA
          |
          v
          UAT
          |
          v
      Production
