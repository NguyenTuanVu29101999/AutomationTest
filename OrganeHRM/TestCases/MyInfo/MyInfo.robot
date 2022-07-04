*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keyword/DashBoard.robot
Resource    ../../Keyword/MyInfo.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***


*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Chrome

*** Test Cases ***
HR-150: Verify that be able to delete attachments at “Attachments“
    Login ESS    adash   adash123
    Click "My Info" link
    Select the check box of the data to be deleted
    Click "Delete" button







