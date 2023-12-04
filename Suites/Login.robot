*** Settings ***
Resource    ../PageObjects/HomePageObject/HomePage.robot
Resource    ../PageObjects/LoginPageObject/LoginPage.robot

Test Setup    Run Keywords    Open Flight Application    Click Login Button On Home Page
Test Teardown    Run Keywords    Close Flight Application

*** Test Cases ***
Invalid Username Invalid Password
    [Documentation]    Verify that user is not able to login with invalid username and invalid password
    Login To Application    invalid@ngendigital.com    password
    Login Page Should Contain Error Message

Valid Username Invalid Password
    [Documentation]    Verify that user is not able to login with valid username and invalid password
    Login To Application    support@ngendigital.com    password
    Login Page Should Contain Error Message

Invalid Username Valid Password
    [Documentation]    Verify that user is not able to login with invalid username and valid password
    Login To Application    invalid@ngendigital.com    abc123
    Login Page Should Contain Error Message

Valid Login
    [Documentation]    Verify that user is able to login with valid username and valid password
   Login To Application    support@ngendigital.com    abc123
   Logout Button Should Be Visible On Home Page
