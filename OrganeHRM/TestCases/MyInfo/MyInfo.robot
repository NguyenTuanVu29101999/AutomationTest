*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keyword/DashBoard.robot
Resource    ../../Keyword/MyInfo.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***


*** Variables ***
${URL}         https://tmasolutions-osondemand.orangehrm.com/symfony/web/index.php/auth/login

${Browser}      Chrome

*** Test Cases ***
HR-135: Verify that the message "Should be a valid date in yyyy-mm-dd format" is displayed when the incorrect format
    Login ESS    adash   4w@hOc@K@1AH
    Click "My Info" link
    Enter data for "License Expiration Date" input box










