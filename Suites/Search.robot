*** Settings ***
Resource    ../PageObjects/HomePageObject/HomePage.robot
Resource    ../PageObjects/LoginPageObject/LoginPage.robot
Resource    ../PageObjects/SearchPageObject/SearchPage.robot
Resource    ../PageObjects/SearchResultPageObject/SearchResultPage.robot

Test Setup    Run Keywords    Open Flight Application    Click Login Button On Home Page
Test Teardown    Run Keywords    Close Flight Application

*** Test Cases ***
Invalid Search Flight Number
    [Documentation]    Verify that user cannot search flight by invalid flight number
    Login To Application    support@ngendigital.com    abc123
    Click Search Flight Button On Home Page
    Search Flight By Flight Number    DA930
    Search Page Should Contain Error Message

Valid Search Flight Number
    [Documentation]    Verify that user can search flight by valid flight number
    Login To Application    support@ngendigital.com    abc123
    Click Search Flight Button On Home Page
    Search Flight By Flight Number    DA935
    Search Result Table Layout Is Visible
