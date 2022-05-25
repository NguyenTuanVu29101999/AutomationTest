*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional
    open browser    https://www.google.com    chrome
    input text    xpath://input[@name='q']    mobile
    press keys    None    RETURN
    title should be    mobile - Tìm trên Google
    #sleep    3
    close browser