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
HO-44-1: Verify 'username' input
    Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text



