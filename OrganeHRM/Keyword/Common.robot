*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Click All Elements
    [Arguments]         ${locator}
    click element       ${locator}

Get CSS Property Value
    [Documentation]
    [Arguments]         ${locator}        ${attribute_name}
    ${CSS}=             Get WebElement    ${locator}
    ${prop_val}=        Call Method       ${css}    value_of_css_property    ${attribute_name}
    [Return]            ${prop_val}