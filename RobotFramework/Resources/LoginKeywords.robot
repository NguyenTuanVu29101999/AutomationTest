*** Settings ***
Library    SeleniumLibrary
Variables    ./PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Click Login Link
    click link    ${link_login}

Enter Email
    [Arguments]    ${email}
    input text    ${txt_loginemail}    ${email}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}    ${password}

Click Login Button
    click button    ${btn_login}

Verify Successful Login
    title should be    nopCommerce demo store

Close my Browser
    close all browsers