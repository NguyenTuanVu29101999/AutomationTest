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
HO-44: Verify that all the items at the body section display corectly
    Verify image of header section
    Verify Circle_HRM_For_All logo display corectly
    Verify Text_LOGIN_Panel text display corectly
    Verify '( Username : Admin | Password : admin123 )' text display corectly
    Verify username input
    Verify password input
    Verify login button
    Verify 'forgot password' link
    Click on the username input and click outside the username input
    Click on the password input and click outside the password input


