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
    Click on the username box
    Click on the password box
HO-44-1: Verify 'username' input and 'password' input
    Enter the value of username input
    Enter the value of password input
HO-45: Verify that all links at the body of page can be clickable
    Click on the 'Forgot your password' link
HO-46: Verify that all the items at the footer section display corectly
    Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text
HO-47: Verify that all links and logos at the footer of page can be clickable
    Verify all button have icon at the end of page


