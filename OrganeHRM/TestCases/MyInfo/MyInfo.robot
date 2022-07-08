*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keyword/DashBoard.robot
Resource    ../../Keyword/MyInfo.robot
Test Setup         Open my browser     ${URL}  ${Browser}
Test Teardown      Close my browser

*** Variables ***


*** Variables ***
${URL}         https://tmasolutions-osondemand.orangehrm.com/symfony/web/index.php/auth/login               #TMA

#${URL}          https://opensource-demo.orangehrmlive.com/index.php/auth/login                              # ORANGE
${Browser}      Chrome

*** Test Cases ***
HR-157: Verify that Admin can populate restricted fields when editing personal details for ESS-User
    Login with admin account
    Click "PIM" link and find account ESS
    Click on the id_value
    Click "Edit" button In "Personal Details" section
    #Enter valid values into Employee Id, Other Id, SSN Number, SIN Number, Driver's License Number, Date of Birth
    #Click "Save" button to save data











