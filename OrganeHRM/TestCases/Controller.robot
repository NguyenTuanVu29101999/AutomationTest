*** Settings ***
Library      SeleniumLibrary
Resource     ../Keyword/LoginPage.robot
#Resource    ../Keyword/InvalidLogin.robot
Suite Setup    Open my browser    ${URL}  ${Browser}
Suite Teardown     Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HO-43: Verify that all itmes at the header section display corectly
    element should be visible                  ${Logo_Header}

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
    Enter the value of username input
    Delete entered data in username input and click outside the username input
    Click on the password input and click outside the password input
    Enter the value of password input
    Delete entered data in password input and click outside the password input

HO-45: Verify that all links at the body of page can be clickable
    Click on the 'Forgot your password' link

HO-46: Verify that all the items at the footer section display corectly
    Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text

HO-47: Verify that all links and logos at the footer of page can be clickable
    Verify all buttons have icon at the end of page
