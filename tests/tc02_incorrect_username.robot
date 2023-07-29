*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/resources.robot
Variables   ../resources/variables.py
Test Setup  Open the browser with the target URL
Test Teardown   Close the browser

*** Comments ***
Test Setup will be run before executing the test
Test Teardown will be run after executing the test

*** Test Cases ***
Do unsuccessful login due to incorrect username
    [Documentation]     Test case 2: Negative LogIn test case. Test steps:
    ...                 1. Open page
    ...                 2. Type incorrect username and correct passwords
    ...                 3. Click on the  submit button
    ...                 4. Wait for the error message to become vissible
    ...                 5. Verify new page contains expected text: Your username is invalid!
    Fill out the login form    ${InValid_UserName_Input_Text}    ${Valid_Password}
    Click Submit Button
    Wait for element visibility    ${Invalid_User_Message}
    Validate incorrect username message
