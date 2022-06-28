*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keyword/DashBoard.robot
Resource    ../../Keyword/MyInfo.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HR-119: Verify that all the items of My Info module display correctly
    Login ESS    adash   adash123
    Click "My Info" link
    #Verify that FullName shows correct name with account logged in with ESS permission
    #Verify that Sidebar below the "epic" image
    Verify that Personal Details section on the right of the image and sidebar includes the following items with input boxes are disabled
