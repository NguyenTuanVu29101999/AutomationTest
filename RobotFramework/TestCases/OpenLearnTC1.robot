*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../Resources/OpenLearnHomePageKeywords.robot

*** Variables ***
${url}    https://www.open.edu/openlearn/
${browser}    chrome
*** Test Cases ***
#TC1: Check all elements should be visible
#    open my browser    ${url}    ${browser}
#    visible all elements
#    close my browser

#TC2: Check search
#    open my browser    ${url}    ${browser}
#    enter search text    videos
#    click button search
#    verify sucessful search
#    sleep    3
#    close my browser

TC3: Test
    ### Open a sample date picker from material-ui.com###
    Open Browser  https://www.globalsqa.com/demo-site/datepicker/#Simple%20Date%20Picker    edge
    maximize browser window
    sleep    5
    select frame    css:[data-src="../../demoSite/practice/datepicker/default.html"]
    wait until element is visible    xpath://input[@id='datepicker']
    click element    xpath://input[@id='datepicker']
    #Select Date  2019  5  15
    #Select Date  2019  3  15
    #Select Date  2017  9  23
    Select Date  2023  4  15
    unselect frame
    sleep    20
    close all browsers

*** Keywords ***
Select Date  [Arguments]  ${year}  ${month}  ${day}
    ### This keyword evaluates the difference from current date and moves ahead/backward to select the month ###

    ${currentDate} =     Get Current Date    result_format=datetime
    log    ${currentDate}
    Convert To Integer  ${year}
    Convert To Integer  ${month}
    Convert To Integer  ${day}
    ${month-diff}=  Evaluate  ${month} - ${currentDate.month}
    ${year-diff}=  Evaluate  ${year} - ${currentDate.year}
    ${move}=  Evaluate  ${year-diff}*12 + ${month-diff}

    IF    ${move} > 0
        ${shiftForward} =    convert to integer    1
    ELSE IF    ${move} < 0
        ${shiftForward} =    convert to integer    0
        ${move} =    evaluate    ${move}*${-1}
    END
    sleep    2
    FOR     ${var}  IN RANGE    ${move}
        IF    ${shiftForward} == 0
            Click Element  xpath://span[@class='ui-icon ui-icon-circle-triangle-w']
        ELSE IF    ${shiftForward} == 1
            Click Element  xpath://span[@class='ui-icon ui-icon-circle-triangle-e']
        END
    END

    sleep    3
    Click element  xpath://a[contains(text(),'${day}')]

