*** Settings ***
Library    SeleniumLibrary
Resource    ../Keyword/LoginPage.robot
Suite Setup    Open my browser    ${URL}  ${Browser}
Suite Teardown     Close my browser
*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${Browser}      Edge
*** Test Cases ***
HO-44: Verify that all the items at the body section display corectly
     ${list}    create list    ${Link_Icon}   ${Facebook_Icon}    ${Twitter_Icon}     ${Youtube_Icon}
     log to console    ${list}

     FOR    ${i}    IN   ${list}
        click element    ${i}

        log to console    ${i}
     END
