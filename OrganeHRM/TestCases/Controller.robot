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
HO-43: Verify that all itmes at the header section display corectly
    element should be visible    ${Logo_Header}
HO-44: Verify that all the items at the body section display corectly
    Verify image of header section
    Verify Circle_HRM_For_All logo display corectly
    Verify Text_LOGIN_Panel text display corectly
    Verify username input
    Verify password input
    Verify login button
    Verify 'forgot password' link
    Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text
    Verify all button have icon at the end of page
    Click on the username box
    Click on the password box



