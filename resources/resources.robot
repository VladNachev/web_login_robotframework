*** Settings ***
Documentation   This file contains some reusable keywords
...
...
Library     SeleniumLibrary
Variables   variables.py

*** Keywords ***
Open the browser with the target URL
    Create Webdriver                                Chrome
    Maximize Browser Window
    Go To                                           ${URL_Login_Page_Practice}

Close the browser
    Close Browser

Wait for element visibility
    [Arguments]                                     ${Element_Locator}
    Wait Until Element Is Visible                   ${Element_Locator}

URL should be
    [Arguments]                                     ${URL}
    Location Should Be                              ${URL}

Fill out the login form
    [Arguments]                                     ${UserName}                                             ${Password}
    Clear Element Text                              ${UserName_Locator_ID}
    Clear Element Text                              ${Password_Locator_ID}
    Input Text                                      ${UserName_Locator_ID}                                  ${UserName}
    Input Password                                  ${Password_Locator_ID}                                  ${Password}


Click Submit Button
    Click Button    ${Submit_Button_Locator_ID}

Verify URL of logged page
    [Arguments]     ${Current_URL}
    Should Contain    ${Current_URL}    ${ULR_Logged_Successfully_Path}

Validate successfully logged message
    ${Actual_Header_Message}=   Get Text    ${Logged_Successfully_Message}
    Should Be Equal As Strings    ${Actual_Header_Message}    ${Expected_Logged_Successfully_Message}
    
Validate incorrect username message
    ${Error_Message}=   Get Text    ${Invalid_User_Message}
    Should Be Equal As Strings    ${Error_Message}    ${Expected_Invalid_Username_Message}

Validate incorrect password message
    ${Error_Message}=   Get Text    ${Invalid_Password_Message}
    Should Be Equal As Strings    ${Error_Message}    ${Expected_Invalid_Password_Message}