*** Settings ***
Library     SeleniumLibrary
Library     DataDriver     ../TestData/LoginData.xlsx  sheet_name=Sheet1
Resource    ../Keyword/LoginPage.robot
Suite Setup         Open my browser     ${URL}  ${Browser}
Suite Teardown      Close my browser
Test Template       Invalid login

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
Invalid login   ${txt_UserName}     ${txt_Password}

*** Keywords ***
Invalid login
    [Arguments]         ${txt_UserName}    ${txt_Password}
    Enter UserName      ${txt_UserName}
    Enter Password      ${txt_Password}
    Click Button Login