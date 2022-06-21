*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/LoginPage.robot
Test Setup          Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
Valid login
    Enter UserName      ${user_name}
    Enter Password      ${password}
    Click Button Login
    Verify Successful Login