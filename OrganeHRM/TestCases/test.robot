*** Settings ***
Library      SeleniumLibrary
Resource     ../Keyword/LoginPage.robot
#Resource    ../Keyword/InvalidLogin.robot
Test Setup    Open my browser    ${URL}  ${Browser}
Test Teardown     Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HO-47: Verify that all links and logos at the footer of page can be clickable
    Verify all buttons have icon at the end of page



