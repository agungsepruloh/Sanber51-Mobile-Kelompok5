*** Settings ***
Resource    ../Base/Base.robot
Variables    SearchLocators.py

*** Keywords ***
Search Flight By Flight Number
    [Arguments]    ${flight_number}
    Input Search Flight Number    ${flight_number}
    Click Search Button

Input Search Flight Number
    [Arguments]    ${flight_number}
    Wait Until Element Is Visible    ${FLIGHT_NUMBER_EDIT_TEXT}
    Input Text    ${FLIGHT_NUMBER_EDIT_TEXT}    ${flight_number}

Click Search Button
    Wait Until Element Is Visible    ${SEARCH_BUTTON}
    Click Element    ${SEARCH_BUTTON}

Search Page Should Contain Error Message
    Wait Until Page Contains    ${ERROR_MESSAGE_INVALID_FLIGHT_NUMBER}
    Page Should Contain Text    ${ERROR_MESSAGE_INVALID_FLIGHT_NUMBER}