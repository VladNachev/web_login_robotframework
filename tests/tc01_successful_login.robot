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
Do successful login
    [Documentation]     Test case 1: Positive LogIn test. Test steps:
    ...                 1. Open page
    ...                 2. Type correct username and passwords
    ...                 3. Click on the  submit button
    ...                 4. Verify the new URL contains practicetestautomation.com/logged-in-successfully/
    ...                 5. Wait for the message to become visible
    ...                 6. Verify new page contains expected text: Logged In Successfully
    Fill out the login form    ${Valid_UserName}    ${Valid_Password}
    Click Submit Button
    ${Current_URL}    Get Location
    Verify URL of logged page    ${Current_URL}
    Wait for element visibility    ${Logged_Successfully_Message}
    Validate successfully logged message