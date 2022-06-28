*** Settings ***
Library      SeleniumLibrary
Resource     ../Keyword/LoginPage.robot
#Resource    ../Keyword/InvalidLogin.robot
Variables    ../Locators/DashBoard.py
Test Setup    Open my browser    ${URL}  ${Browser}
Test Teardown     Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HO-47: Verify that all links and logos at the footer of page can be clickable
    ${LIST}     create list    Leave    Time    My Info    Performance  Dashboard   Directory   Buzz
    FOR    ${I}     IN        ${LIST}
        ${TEXT}     get text    ${I}
        log to console    ${TEXT}
    END



