*** Settings ***
Library    SeleniumLibrary
Variables    ../UI/locator.py

*** Keywords ***
Open my browser
    [Arguments]    ${URL}   ${BROWSER}
    open browser  ${URL}    ${BROWSER}
    maximize browser window

Verify text and all link can be clickable
    @{item}     create list      Home     Free courses  Subjects    For Study   For Life    Help    Create account / Sign in
    ${text1} =   get text        ${text_Home}
    ${text2} =   get text        ${text_frecoures}
    ${text3} =   get text        ${text_subject}
    ${text4} =   get text        ${text_study}
    ${text5} =   get text        ${text_Life}
    ${text6} =   get text        ${text_Help}
    ${text_btn} =   get text     ${btn_CreateOrSignIn}

   FOR    ${i}     IN      @{item}
        IF    "${text1}" == "${i}"
            click element    ${text_Home}
        END

        IF     "${text2}" == "${i}"
            click element    ${text_frecoures}
        END

        IF  "${text3}" == "${i}"
            click element    ${text_subject}
        END

        IF  "${text4}" == "${i}"
            click element    ${text_study}
        END

        IF  "${text5}" == "${i}"
           click element    ${text_Life}
        END


   END


Close my browser
    close browser
