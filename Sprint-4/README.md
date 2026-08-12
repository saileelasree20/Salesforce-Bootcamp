# Salesforce Interview Readiness Bootcamp – Day 4

## Building My First Lightning Web Component (LWC)

### Overview

Day 4 focused on learning **Lightning Web Components (LWC)** and creating the frontend of the **Placement Management System**.

I learned how to create an LWC, use HTML and JavaScript, handle button clicks, and deploy the component to a Salesforce Lightning Page.

---

## Objectives

* Understand Lightning Web Components.
* Create a basic LWC.
* Understand LWC file structure.
* Use HTML for the UI.
* Use JavaScript for component logic.
* Handle button click events.
* Display basic student information.
* Deploy an LWC to a Lightning Page.
* Understand how LWC can connect with Apex.

---

## What is LWC?

**Lightning Web Components (LWC)** is Salesforce's framework for building modern and reusable user interfaces.

LWC mainly uses:

* HTML
* JavaScript
* CSS

---

## LWC Structure

A basic LWC contains three main files:

```text
placementHome/
│
├── placementHome.html
├── placementHome.js
└── placementHome.js-meta.xml
```

### HTML

Used to create the user interface.

### JavaScript

Used to handle variables, events, and component logic.

### Meta XML

Used to configure where the component can be used in Salesforce.

---

## Activities Completed

### 1. Created First LWC

Created an LWC named:

```text
placementHome
```

It displays:

```text
Welcome to Vishnu Placement Portal
```

The component was deployed and added to a Lightning Page.

---

### 2. Displayed Student Details

Displayed basic student information:

```text
Student Name : Devi
Roll Number  : 23PA1A0540
Department   : CSE
```

---

### 3. Added Button Click

Created a button:

```text
Show Welcome Message
```

When the button is clicked, it displays:

```text
Welcome to Salesforce Development.
```

---

### 4. Added Application Status

Initially, the status is:

```text
Status : Not Applied
```

After clicking the button:

```text
Status : Applied
```

This was implemented using JavaScript.

---

### 5. Created Placement Portal UI

Created a simple Placement Portal screen containing:

```text
Placement Portal

Today's Date

Welcome Student

Number of Companies : 25
Number of Jobs      : 63
Applications        : 5
```

The values are currently hard-coded for learning purposes.

---

## LWC and Apex

The basic architecture of the application is:

```text
User
 ↓
LWC
 ↓
Apex
 ↓
SOQL / DML
 ↓
Salesforce Database
```

Currently, the Day 4 component uses basic hard-coded data.

In future development, Apex will be used to retrieve real data from Salesforce.

---

## Project Structure

```text
Day-4-LWC/
│
├── README.md
│
├── force-app/
│   └── main/
│       └── default/
│           └── lwc/
│               └── placementHome/
│                   ├── placementHome.html
│                   ├── placementHome.js
│                   └── placementHome.js-meta.xml
│
└── screenshots/
```

---

## Technologies Used

* Salesforce
* Lightning Web Components (LWC)
* HTML
* JavaScript
* Lightning App Builder
* VS Code
* Salesforce CLI

---

## Future Improvements

* Connect LWC with Apex.
* Fetch real student data.
* Display actual company and job counts.
* Display real application data.
* Add Jobs and Applications navigation.
* Connect the UI with the Placement Management System.
* Improve the portal design.

---

## Conclusion

Day 4 helped me understand the basics of **Lightning Web Components** and Salesforce frontend development.

I created my first LWC, displayed student information, handled button events, and created the initial Placement Portal UI.

The next step is to connect the LWC with **Apex and Salesforce data** to make the application dynamic.
