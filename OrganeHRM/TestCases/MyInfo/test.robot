*** Settings ***
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Select Datepicker Date
    [Documentation]     Select given day from datepicker
    [Arguments]     ${dateElem}     ${expectedMonthYear}    ${clickElement}
    Input Text      ${dateElem}    ${Empty}    # open the datepicker
    ${monthyear}=   Get Datepicker MonthYear
    FOR    ${Index}    IN RANGE    1   31
       Run Keyword If  '${monthyear}' == '${expectedMonthYear}'   Exit For Loop
       Click Link    //*/div[@id='ui-datepicker-div']//*/a[contains(@class, 'ui-datepicker-prev')]
       ${monthyear}=   Get Datepicker MonthYear
    END
    Click Link    ${clickElement}

Get Datepicker MonthYear
    [Documentation]     Return current month + year from datepicker
    [Return]    ${monthyear}
    ${month}=   Get Element Text  //select[@class='ui-datepicker-month']
    ${year}=    Get Element Text  //select[@class='ui-datepicker-year']
    ${monthyear}=   Catenate    ${month}  ${year}