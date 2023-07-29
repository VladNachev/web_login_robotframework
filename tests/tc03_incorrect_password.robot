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
Do unsuccessful login due to incorrect password
    [Documentation]     Test case 3: Negative LogIn test case. Test steps:
    ...                 1. Open page
    ...                 2. Type correct username and incorrect passwords
    ...                 3. Click on the  submit button
    ...                 4. Wait for the error message to become vissible
    ...                 5. Verify new page contains expected text: Your password is invalid!
    Fill out the login form    ${Valid_UserName}    ${InValid_Password_Input_Text}
    Click Submit Button
    Wait for element visibility    ${Invalid_Password_Message}
    Validate incorrect password message
