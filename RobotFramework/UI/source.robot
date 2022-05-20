*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}      https://www.open.edu/openlearn/
${BROWSER}   Chrome

*** Keywords ***

Open my browser
    open browser     ${URL}    ${BROWSER}
    maximize browser window



Close browsers
    close all browsers

