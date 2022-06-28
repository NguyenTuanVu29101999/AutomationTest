*** Settings ***
Library     SeleniumLibrary
Resource     ../../Keyword/LoginPage.robot
Resource    ../../Keyword/DashBoard.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge

*** Test Cases ***
HR-118: Verify that ESS-User account login successfully and verify that all the items of DashBoard page display corectly
   Login ESS    adash   adash123
   Verify that all the items of DashBoard page display corectly
   Verify that all link of navigation
   Verify that all items body section
   Verify text of footer



