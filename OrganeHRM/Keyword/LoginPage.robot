*** Settings ***
Library    SeleniumLibrary
Library    ../FunctionConvert/Convert.py
Variables    ../Locators/Locators.py
Resource    ../Keyword/Common.robot

*** Keywords ***
Open my browser
    [Arguments]     ${URL}      ${Browser}
    open browser    ${URL}      ${Browser}
    Sleep   15

Close my browser
    Sleep   10
    Close browser

Enter UserName
    [Arguments]    ${UserName}
    input text     ${txt_UserName}       ${UserName}

Enter Password
    [Arguments]        ${Password}
    input password     ${txt_Password}     ${Password}

Click Button Login
    click button       ${btn_login}
    Sleep    2

Verify image of header section
    element should be visible    ${Background_Header_Form}

Verify '( Username : Admin | Password : admin123 )' text display corectly
    ${text_color}         get text           ${Text_Username_Password}
    should be equal       ${text_color}       ( Username : Admin | Password : admin123 )
    ${color}    get element attribute         ${Text_Username_Password}    style
    log to console    ${color}

Verify Circle_HRM_For_All logo display corectly
    element should be visible         ${Circle_HRM_For_All}

Verify Text_LOGIN_Panel text display corectly
    ${txt_LoginPanel}     get text            ${Text_LOGIN_Panel}
    should be equal       ${txt_LoginPanel}   LOGIN Panel

Verify username input
    element should be visible    ${txt_UserName}
    element should be visible    ${Person_Icon}

Verify password input
    element should be visible    ${txt_Password}
    element should be visible    ${Lock_Icon}

Verify login button
    element should be visible    ${btn_login}
    ${text_button}  get value    ${btn_login}
    should be equal     ${text_button}  LOGIN

    ${color_text_button}    Get CSS Property Value    ${btn_login}  color
    log to console    ${color_text_button}
    ${convert_hex}      rgb_to_hex   ${color_text_button}
    log    ${convert_hex}
    should be equal    ${convert_hex}    \#ffffff

Verify 'forgot password' link
    ${text_link}     get text             ${Forgot_your_password}
    should be equal       ${text_link}    Forgot your password?
    ${underline_link}   Get CSS Property Value    ${Forgot_your_password}   text-decoration
    log to console    ${underline_link}
    should contain    ${underline_link}     underline

Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text
    element should be visible    ${text_footer}
    element should be visible    ${OrangeHRM_Inc}
    ${underline}    Get CSS Property Value    ${OrangeHRM_Inc}      text-decoration
    should contain    ${underline}     underline

Verify all button have icon at the end of page
   click element    ${Link_Icon}
   click element    ${Facebook_Icon}
   click element    ${Twitter_Icon}
   click element    ${Youtube_Icon}

Click on the username box
    click element       ${txt_UserName}
    element should not be visible    ${span_username}
    #element should be visible    ${span_password}

Click on the password box
    click element    ${txt_Password}
    element should not be visible    ${span_password}
    #element should be visible    ${span_username}





