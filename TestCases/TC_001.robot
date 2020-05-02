*** Settings ***
Library    SeleniumLibrary
Resource   ../RobotConfig/ProjectConfig.robot
Resource   ../ResourceKeywords/KeywordsLibrary.robot
Resource    ../ElementLocators/Locators.robot


*** Test Cases ***
TC_001_Open Browser Functionality
    Open Browser and Maximize     ${AppUrl}    ${BrowserName}

TC_002_Enter Data Functionality

    ${row}=    Read Number of Rows    Registration

    :FOR  ${i}    IN RANGE    2    ${row}+1
    \   ${UsernameData}=    Read Excel Cell Data   Registration    ${i}    1
    \   ${UserEmailData}=   Read Excel Cell Data    Registration    ${i}    2
    \   ${UserPassworData}=    Read Excel Cell Data    Registration    ${i}    3
    \   ${UserConfirmPasswordData}=    Read Excel Cell Data    Registration    ${i}    4
    \   log to console    ${UsernameData}
    \   log to console    ${UserEmailData}
    \   log to console    ${UserPassworData}
    \   log to console    ${UserConfirmPasswordData}
    \   Enter Data in text fields      ${Username}                  ${UsernameData}
    \   Enter Data in text fields      ${UserEmail}                 ${UserEmailData}
    \   Enter Data in text fields      ${UserPassword}              ${UserPassworData}
    \   Enter Data in text fields      ${UserConfirmPassword}       ${UserConfirmPasswordData}
    \   click element                  ${SignUpButton}
    \   sleep    4 seconds









