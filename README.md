# Web Login Robotframework
## Web Login Automation using Robotframework
## Short description
This project has been made for practicing web automation with RobotFramework in combination with Selenium WebDriver. 

Target of test suit: https://practicetestautomation.com/practice-test-login/

### Test suit contains the following test cases:
#### Test case 1: Positive LogIn test. Test steps:
- Open page
- Type correct username and passwords
- Click on the  submit button
- Verify the new URL contains practicetestautomation.com/logged-in-successfully/
- Wait for the message to become visible
- Verify new page contains expected text: Logged In Successfully
#### Test case 2: Negative LogIn test case. Test steps:
- Open page
- Type incorrect username and correct passwords
- Click on the  submit button
- Wait for the message to become visible
- Verify new page contains expected text: Your username is invalid!
#### Test case 3: Negative LogIn test case. Test steps:
- Open page
- Type correct username and incorrect passwords
- Click on the  submit button
- Wait for the message to become visible
- Verify new page contains expected text: Your password is invalid!

## Clone repository
```bash
$ git clone https://github.com/VladNachev/web_login_robotframework.git
```

## How to run Robot Framework test from command line?
Basic syntax:
```bash
$ robot [options] robot_files
```
Execute all test cases in folder(s):
```bash
$ robot .
```
Execute all test cases in single file:
```bash
$ robot tests/tc01_successful_login.robot
```