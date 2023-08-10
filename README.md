![Banner Image](./img/Banner%20-%20Load%20Test%20Script.png)
# PowerShell JMeter Test Automation Script

This repository contains a PowerShell script for automating load and performance testing using Apache JMeter.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Performing load and performance testing is crucial to ensure the reliability and scalability of your applications. This PowerShell script automates the process of running JMeter tests, making it easier to integrate performance testing into your development workflow.

## Features

- Run JMeter tests from the command line using PowerShell.
- Easily configure the number of users, test files, and other parameters.
- Automate the execution of various test scenarios.
- Obtain test results in CSV format for analysis.

## Prerequisites

- [Apache JMeter](https://jmeter.apache.org/) installed on your system.
- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/overview) available on your machine.

## Usage

1. Clone or download this repository to your local machine.
2. Open a PowerShell terminal.
3. Navigate to the directory containing the script.
4. Run the script using the PowerShell command:

```powershell
   .\RunJMeterTests.ps1
```

Follow the on-screen instructions to choose a test and customize the parameters.

## Customization
The script can be easily customized to suit your specific testing needs. You can modify the script to add more test scenarios, change default parameters, or enhance the reporting mechanism.

## Contributing
Contributions are welcome! If you find any issues or want to add improvements, please follow these steps:

### Fork the repository.
- Create a new branch for your feature or bug fix.
- Make your changes and test thoroughly.
- Create a pull request with a detailed description of your changes.

## License
This project is licensed under the [Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).


## Release Notes 
- Version: 0.0.1-alpha
- Date: July 31, 2023

### Overview
This release marks the initial alpha version of the script, providing basic functionality and a user-friendly menu system for running JMeter tests. Please note that this version is in the early stages of development and is intended for testing and feedback purposes.

### New Features
Implemented a user-friendly menu system for selecting and running different JMeter tests.
Added support for customizing the number of test users for each test.
Enhanced the script's output with colored ASCII art.
### Known Issues
The script may encounter unexpected behavior when used with specific test configurations.
User input validation is still in progress, and certain inputs may cause errors.
### Usage Instructions
Clone the repository to your local machine.
Open PowerShell or Command Prompt and navigate to the script's directory.
Run the script using the command .\RunJMeterTests.ps1.

### Follow the on-screen instructions to choose a test and configure the number of users.
![](./img/Alpha%200.1.png)

Please note that this alpha version is a work in progress, and we welcome your feedback and contributions to help improve its functionality and stability.

**Disclaimer**: This script is provided "as is" without warranty of any kind, expressed or implied. Use at your own risk.