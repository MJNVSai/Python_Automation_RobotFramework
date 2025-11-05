# 🤖 Python Selenium Robot Framework Automation Suite

![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python)
![Robot Framework](https://img.shields.io/badge/Robot%20Framework-5.x-green?logo=robotframework)
![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-Automation-orange?logo=selenium)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Mac%20%7C%20Linux-lightgrey)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Repo Size](https://img.shields.io/github/repo-size/MJNVSai/Python_Automation_RobotFramework)
![Stars](https://img.shields.io/github/stars/MJNVSai/Python_Automation_RobotFramework?style=social)
![Last Commit](https://img.shields.io/github/last-commit/MJNVSai/Python_Automation_RobotFramework)

This repository contains **12 powerful automation test suites** built using **Robot Framework** and **SeleniumLibrary** 🧩Each file demonstrates an important web automation concept — from browser control, element interactions, and alerts, to advanced **data-driven testing using Excel**.

🧭 Project Overview
-------------------

This project serves as a **complete learning and practice suite** for mastering **Robot Framework automation** using **Python** and **Selenium**.It includes both beginner and advanced test cases such as:

*   🌐 Browser control & screenshot capture
    
*   ⌨️ Input box automation & validation
    
*   ✅ Radio buttons & checkbox handling
    
*   🔽 Dropdowns, list boxes, and select menus
    
*   ⏱️ Speed, timeout, and wait handling
    
*   🪟 Window & alert management
    
*   🖱️ Scrolling, right/double click & drag-drop actions
    
*   📊 Table validation & data assertions
    
*   📑 Keyword-driven login tests

## ⚙️ Tech Stack

| 🧰 Component | 💡 Description |
|--------------|----------------|
| **Language** | ![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python) |
| **Framework** | ![Robot Framework](https://img.shields.io/badge/Robot%20Framework-5.x-green?logo=robotframework) |
| **Library** | ![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-Automation-orange?logo=selenium) |
| **Browser Drivers** | ![ChromeDriver](https://img.shields.io/badge/ChromeDriver-%F0%9F%94%A5-red?logo=google-chrome) ![GeckoDriver](https://img.shields.io/badge/GeckoDriver-%E2%9A%A1-blue?logo=firefox) |
| **Data Source** | ![Excel](https://img.shields.io/badge/Excel-DataDriver%20Library-success?logo=microsoft-excel) |
| **Reports** | ![HTML Report](https://img.shields.io/badge/Report-HTML%20%26%20Log%20Reports-lightgrey?logo=robotframework) |


### 📂 Folder Details

| 📄 File Name | 🧩 Description | 🏷️ Badge |
|---------------|----------------|----------|
| **Test.robot** | Main Robot Framework test suite containing automation scripts. | ![Robot](https://img.shields.io/badge/File-.robot-blue?logo=robotframework) |
| **report.html** | Summary report showing overall test results. | ![HTML Report](https://img.shields.io/badge/Report-HTML%20Report-green?logo=html5) |
| **log.html** | Detailed step-by-step execution log. | ![Log](https://img.shields.io/badge/Log-Detailed%20Execution-orange?logo=files) |
| **output.xml** | Raw machine-readable test output. | ![XML](https://img.shields.io/badge/Output-XML-lightgrey?logo=xml) |

---

📦 **Directory:** `Automation-1`  

## ⚙️ Setup, Installation & Execution Guide

Follow these steps to set up the environment and execute your Robot Framework automation tests.

---

### 🧱 Prerequisites

Before you begin, ensure that you have the following installed:

| 🧰 Tool | ✅ Check Command | ⚡ Required Version | 🏷️ Badge |
|----------|----------------|--------------------|-----------|
| **Python** | `python --version` | ≥ 3.8 | ![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python) |
| **pip** | `pip --version` | Latest | ![pip](https://img.shields.io/badge/pip-Latest-orange?logo=python) |

---

### 📦 Installation Steps

Run the following commands to install all necessary dependencies 👇

 ## ⚙️ Step 1: Verify Installations

```bash
python --version
pip --version
```

---

## 🧱 Step 2: Create and Activate a Virtual Environment

```bash
python -m venv robotLearn1
robotLearn1\Scripts\activate
```

---

## 🧰 Step 3: Install Required Packages

### 🔹 Core Libraries

```bash
pip install selenium
pip install robotframework
pip install robotframework-seleniumlibrary
pip install webdriver-manager
```

### 🔹 Data-Driven Testing Support

```bash
pip install robotframework-datadriver
pip install -U robotframework-datadriver[XLS]
```

---

## 🧾 Step 4: Verify Installation

```bash
pip show robotframework
pip list
```

---

## 🧩 Step 5: Setup Editor (VS Code)

Install the following extension from the **VS Code Marketplace**:

> **Extension:** `Robot Framework Language Server`

This provides syntax highlighting, autocomplete, and debugging support for Robot Framework.

---

## 🚀 Step 6: Run Your Test Suite

Run your `.robot` test file using the `robot` command:

```bash
robot Automation-1/Test.robot
```

This executes the `Test.robot` file located inside the `Automation-1` directory.

---

### 📊 Generated Reports

After execution, the following files are automatically generated in the same folder:

| 📄 File | 💡 Description | 🏷️ Badge |
|----------|----------------|-----------|
| **log.html** | Detailed step-by-step execution log. | ![Log](https://img.shields.io/badge/Log-Execution-orange?logo=files) |
| **report.html** | Summary report of all test cases. | ![Report](https://img.shields.io/badge/Report-HTML%20Summary-green?logo=html5) |
| **output.xml** | Machine-readable output data. | ![XML](https://img.shields.io/badge/Output-XML-lightgrey?logo=xml) |

📂 **Generated Location: Automation-1**  


📚 Test Suite Breakdown
-----------------------

🧪 Test File                       📝 Description

**Code 1 :⇒** Launches browsers (Chrome & Firefox), captures screenshots, and closes them.

**Code 2 :⇒** Automates Google & Flipkart — entering text, clicking buttons, and validating input fields.

**Code 3 :⇒** Demonstrates selection/unselection of radio buttons and checkboxes.

**Code 4 :⇒** Handles dropdown & list box selections via label, index, and value.

**Code 5 :⇒** Tests Selenium speeds, explicit timeouts, and implicit waits.

**Code 6 :⇒** Handles multiple browser tabs/windows and JavaScript alert popups.

**Code 7 :⇒** Demonstrates browser navigation and captures screenshots of elements/pages.

**Code 8 :⇒** Covers webpage scrolling, right-click, double-click, and drag-drop actions.

**Code 9 :⇒** Uses argument-based reusable keywords to launch sites and retrieve titles dynamically.

**Code 10 :⇒** Validates table structure, counts rows/columns, and asserts cell data.

**Code 11 :⇒** Implements **keyword-driven login tests** with valid/invalid credentials using Suite Setup/Teardown.

**Code 12 :⇒** Implements **Excel data-driven login tests** using the DataDriver library.

🧠 Key Concepts Covered
-----------------------

*   🧩 Test Cases & Custom Keywords
    
*   ⚙️ Suite Setup / Teardown
    
*   🧾 Test Templates
    
*   💬 Variable usage (${url}, ${browser} etc.)
    
*   📦 External Resource Files
    
*   🔁 Argument & Return Handling
    
*   🧮 Conditional Execution (Run Keyword If)
    
*   📸 Screenshot Capture
    
*   📈 Excel-based Data-Driven Testing
    

📸 Example Outputs
------------------

📷 **Screenshots Generated:**

*   TestCaseScrenShot\_1.png
    
*   Valid\_Login\_Pic.png
    
*   DatePicker\_Element.png
    
*   DoubleClickCheck.png
    

📊 **Reports Generated:**

*   ✅ report.html — Pass/Fail Summary
    
*   🔍 log.html — Step-by-step Execution Logs
    
*   ⚙️ output.xml — Raw Output File


🧪 **Purpose:** Stores execution results for the first automation test suite including reports and logs.  

> 💡 _Tip:_ After every test run, Robot Framework automatically generates the `report.html`, `log.html`, and `output.xml` files inside the test folder.


🧩 External Resources
---------------------

*   🧠 **resources.robot** → Contains reusable keywords such as browser opening, login, logout, and validation.
    
*   📊 **LoginData.xlsx** → Holds username, password, and test type combinations for Excel-based data-driven login validation.
    

🏁 Expected Outcomes
--------------------

✅ All tests automatically open browsers, perform actions, validate outputs, and close sessions.

📸 Screenshots are captured for verification steps.

📄 Reports (log.html, report.html) provide detailed insights.

📊 Excel-driven tests dynamically iterate through multiple login datasets.

> 🚀 **“Automate smartly. Validate effectively. Report beautifully.”**

✨ _Built with Passion, Tested with Precision, Logged with Confidence_ ✨
