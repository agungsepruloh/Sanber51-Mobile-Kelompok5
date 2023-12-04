*** Settings ***
Resource    ../Base/Base.robot
Variables   HomeLocators.py

*** Keywords ***
Click Login Button On Home Page
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}

Click Search Flight Button On Home Page
    Wait Until Element Is Visible    ${SEARCH_FLIGHT_BUTTON}
    Click Element    ${SEARCH_FLIGHT_BUTTON}

Login Button Should Be Visible On Home Page
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_BUTTON}    Sign In

Logout Button Should Be Visible On Home Page
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_BUTTON}    Sign Out