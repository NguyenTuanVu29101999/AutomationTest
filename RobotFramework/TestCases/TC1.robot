*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome
${eml}    x@gmail.com
${pwd}    Test@123
*** Test Cases ***
LoginTest
    open my browser    ${url}    ${browser}
    click login link
    enter email    ${eml}
    enter password    ${pwd}
    click login button
    sleep    3
    verify successful login
    close my browser