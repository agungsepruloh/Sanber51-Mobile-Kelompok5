*** Settings ***
Resource    ../Base/Base.robot
Variables    SearchResultLocators.py

*** Keywords ***
Search Result Table Layout Is Visible
    Wait Until Element Is Visible    ${TABLE_LAYOUT}
    Element Should Be Visible    ${TABLE_LAYOUT}
