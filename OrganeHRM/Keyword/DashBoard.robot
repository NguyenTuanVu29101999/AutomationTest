*** Settings ***
Library    SeleniumLibrary
Resource    ../Keyword/LoginPage.robot
Library    ../FunctionConvert/Convert.py
Variables    ../Locators/DashBoard.py
Resource    ../Keyword/Common.robot

*** Keywords ***
Shoule Be Equal
    [Arguments]    ${locator}   ${I}
    should be equal    ${locator}     ${I}

Verify that all the items of DashBoard page display corectly
    element should be visible    ${OrangeHRM_Image}
    element should be visible    ${Market_Button}
    element should be visible    ${Subscribe_Button}
    element should be visible    ${Help_Icon}
    element should be visible    ${Bell_Icon}
    element should be visible    ${Welcome_Text}

Verify that all link of navigation
    element should be visible    ${Leave_Link}
    ${color}    Process Get Color    ${Leave_Link}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${Time_Link}
    ${color}    Process Get Color    ${Time_Link}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${MyInfo_Link}
    ${color}    Process Get Color    ${MyInfo_Link}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${Performance_Link}
    ${color}    Process Get Color    ${Performance_Link}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${Dashboard_Link}
    ${color}    Process Get Color    ${Dashboard_Link}
    should contain any    ${color}    \#fff

    element should be visible    ${Directory_Link}
    ${color}    Process Get Color    ${Directory_Link}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${Buzz_Link}
    ${color}    Process Get Color    ${Buzz_Link}
    should be equal    ${color}    \#5d5d5d

Verify that all items body section
    element should be visible    ${Dashboard_Title}
    ${color}    Process Get Color    ${Dashboard_Title}
    should be equal    ${color}    \#5d5d5d

    element should be visible    ${QuickLaunch_Text}

    #Aplly_Leave
    element should be visible    ${ApplyLeave_Image}
    element should be visible    ${ApplyLeave_Text}
    ${color_applyleave}    Process Get Color    ${ApplyLeave_Text}
    should be equal    ${color_applyleave}     \#000000

    #My_Leave
    element should be visible    ${MyLeave_Image}
    element should be visible    ${MyLeave_Text}
    ${color_myleave}    Process Get Color    ${MyLeave_Text}
    should be equal    ${color_myleave}     \#000000

    #My_Timesheet
    element should be visible    ${MyTimesheet_Image}
    element should be visible    ${MyTimesheet_Text}
    ${color_timesheet}    Process Get Color    ${MyTimesheet_Text}
    should be equal    ${color_timesheet}     \#000000
    ${fontweight}    Get CSS Property Value    ${MyTimesheet_Text}      font-weight
    #should contain    ${fontweight}     underline


Verify text of footer
    element should be visible    ${OrangeHRM_Inc}
    #text of footer
    element should be visible    ${txt_footer}
    ${txt}  get text    ${txt_footer}
    should be equal as strings    ${txt}    OrangeHRM 4.10.1\n© 2005 - 2022 OrangeHRM, Inc. All rights reserved.
    #color of text
    ${color}    Process Get Color    ${txt_footer}
    should contain any    ${color}    \#777











