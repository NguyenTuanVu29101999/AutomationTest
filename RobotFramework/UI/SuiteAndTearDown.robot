*** Settings ***

Suite Setup     log to console  Opening browser
Suite Teardown    log to console    Closing browser

*** Test Cases ***
TC1 Open Page
    log to console    open page

TC2 Check all text
    log to console    check all text

TC3 Close page
    log to console     close page

