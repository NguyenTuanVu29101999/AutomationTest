*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
${URL}      https://www.globalsqa.com/demo-site/datepicker/#Simple%20Date%20Picker
${BROWSER}   Chrome

*** Test Cases ***
Test Datetime picker
    ### Open a sample date picker from material-ui.com###
    Open Browser  ${URL}     ${BROWSER}
    maximize browser window

    select frame    css:[data-src="../../demoSite/practice/datepicker/default.html"]
    wait until element is visible    xpath://input[@id='datepicker']
    click element    xpath://input[@id='datepicker']
    #input text    xpath://input[@id='datepicker']    ${EMPTY}
    #Select Date  2019  5  15
    #Select Date  2019  3  15
    #Select Date  2017  9  11
    #Select Date  2017  4  15
    #Select Date    2022 5  19
#    unselect frame    xpath://div[@class='single_tab_div resp-tab-content resp-tab-content-active']//iframe[@class='demo-frame lazyloaded']
    unselect frame

Close my browser
    sleep    3
    close browser

*** Keywords ***
Select Date  [Arguments]  ${year}  ${month}  ${day}
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
            Click Element  xpath://span[@class='ui-icon ui-icon-circle-triangle-e']cle
        END
    END

    sleep    3
    Click element  xpath://a[contains(text(),'${day}')]
