*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keyword/DashBoard.robot
Resource    ../../Keyword/MyInfo.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***


*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HR-134: Verify that be able to edit and save “Custom Fields“
    Login ESS    adash   adash123
    Click "My Info" link
    Click "Edit" button in Custom Fields section
    Click "Save" button in Custom Fields section and Save data in Custom Fields section


