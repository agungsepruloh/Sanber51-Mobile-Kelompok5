*** Settings ***
Resource    ../Base/Base.robot
Variables    LoginLocators.py

*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Input Username On Login Page    ${username}
    Input Password On Login Page    ${password}
    Click Login Button On Login Page

Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_EDIT_TEXT}
    Input Text    ${USERNAME_EDIT_TEXT}    ${username}

Input Password On Login Page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_EDIT_TEXT}
    Input Text    ${PASSWORD_EDIT_TEXT}    ${password}

Click Login Button On Login Page
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}

Login Button Should Be Visible On Login Page
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Element Should Be Visible    ${SIGN_IN_BUTTON}

Login Page Should Contain Error Message
    Wait Until Page Contains    ${ERROR_MESSAGE}
    Page Should Contain Text    ${ERROR_MESSAGE}

