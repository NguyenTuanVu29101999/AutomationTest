*** Settings ***
Library    SeleniumLibrary
Library    ../FunctionConvert/Convert.py

*** Keywords ***
Get CSS Property Value
    [Documentation]
    [Arguments]         ${locator}        ${attribute_name}
    ${CSS}=             Get WebElement    ${locator}
    ${prop_val}=        Call Method       ${css}    value_of_css_property    ${attribute_name}
    [Return]            ${prop_val}


Process Get Color
    [Arguments]         ${locator}
    ${rgb}    Get CSS Property Value  ${locator}   color
    ${convert_hex}      rgb_to_hex   ${rgb}
    [Return]            ${convert_hex}








