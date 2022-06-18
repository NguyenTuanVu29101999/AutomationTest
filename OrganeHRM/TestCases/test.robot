*** Settings ***
Library    SeleniumLibrary
Resource    ../Keyword/LoginPage.robot
Suite Setup    open browser    ${URL}  ${Browser}
Suite Teardown     close browser
*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge
*** Test Cases ***
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
