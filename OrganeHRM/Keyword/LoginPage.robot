*** Settings ***
Library    SeleniumLibrary
Library    ../FunctionConvert/Convert.py
Variables    ../Locators/Locators.py
Resource    ../Keyword/Common.robot

*** Keywords ***
Open my browser
    [Arguments]     ${URL}      ${Browser}
    open browser    ${URL}      ${Browser}
    maximize browser window

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
    should contain any     ${color}    red

Verify Circle_HRM_For_All logo display corectly
    element should be visible         ${Circle_HRM_For_All}

Verify Text_LOGIN_Panel text display corectly
    ${txt_LoginPanel}     get text            ${Text_LOGIN_Panel}
    should be equal       ${txt_LoginPanel}   LOGIN Panel

    ${color_text_button}    Get CSS Property Value    ${Text_LOGIN_Panel}  color
    log to console    ${color_text_button}
    ${convert_hex}      rgb_to_hex   ${color_text_button}
    log    ${convert_hex}
    should be equal    ${convert_hex}    \#000000


Verify username input
    element should be visible    ${txt_UserName}
    element should be visible    ${span_username}
    ${text_span_username}   get text    ${span_username}
    should be equal    ${text_span_username}    Username
    element should be visible    ${Person_Icon}

    ${color_input}    Get CSS Property Value    ${txt_UserName}  color
    log to console    ${color_input}
    ${convert_hex}      rgb_to_hex    ${color_input}
    log    ${convert_hex}
    should be equal    ${convert_hex}    \#666666

Verify password input
    element should be visible    ${txt_Password}
    element should be visible    ${span_password}
    ${text_span_password}   get text    ${span_password}
    should be equal    ${text_span_password}    Password
    element should be visible    ${Lock_Icon}

    ${color_input}    Get CSS Property Value    ${txt_UserName}  color
    log to console    ${color_input}
    ${convert_hex}      rgb_to_hex    ${color_input}
    log    ${convert_hex}
    should be equal    ${convert_hex}    \#666666

Verify login button
    element should be visible    ${btn_login}
    ${text_button}  get value    ${btn_login}
    should be equal     ${text_button}  LOGIN
    element should be visible    ${Background_Of_Button}

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

    ${color_text_link}    Get CSS Property Value    ${Forgot_your_password}  color
    log to console    ${color_text_link}
    ${convert_hex}      rgb_to_hex   ${color_text_link}
    log    ${convert_hex}
    should be equal    ${convert_hex}    \#5d5d5d

Verify 'OrangeHRM 4.10.1 © 2005 - 2022 OrangeHRM, Inc. All rights reserved.' text
    element should be visible    ${text_footer}
    ${text}     get text     ${text_footer}
    should be equal     ${text}   OrangeHRM 4.10.1\n© 2005 - 2022 OrangeHRM, Inc. All rights reserved.

    ${color_text_footer}    Get CSS Property Value    ${text_footer}  color
    log to console    ${color_text_footer}
    ${convert_hex}      rgb_to_hex   ${color_text_footer}
    log    ${convert_hex}
    should contain any    ${convert_hex}    \#777

    element should be visible    ${OrangeHRM_Inc}
    ${underline}    Get CSS Property Value    ${OrangeHRM_Inc}      text-decoration
    should contain    ${underline}     underline

    sleep    10s

    element should be visible    ${Link_Icon}
    element should be visible    ${Facebook_Icon}
    element should be visible    ${Twitter_Icon}
    element should be visible    ${Youtube_Icon}

Verify all buttons have icon at the end of page
   click element    ${OrangeHRM_Inc}
   switch window    new
   location should be      https://www.orangehrm.com/
   close window

   switch window    main
   click element    ${Link_Icon}
   switch window    new
   location should be       http://www.linkedin.com/groups?home=&gid=891077
   close window

   switch window    main
   click element    ${Facebook_Icon}
   switch window    new
   location should be  	    https://www.facebook.com/OrangeHRM
   close window

   switch window    main
   click element    ${Twitter_Icon}
   switch window    new
   location should be    	https://twitter.com/orangehrm
   close window

   switch window    main
   click element    ${Youtube_Icon}
   switch window    new
   location should be        https://www.youtube.com/orangehrm
   close window
   switch window    main

Click on the 'Forgot your password' link
    click link    ${Forgot_your_password}
    location should be    https://opensource-demo.orangehrmlive.com/index.php/auth/requestPasswordResetCode

Click on the username input and click outside the username input
    #Click on
    click element       ${txt_UserName}
    element should not be visible    ${span_username}
    element should be visible    ${span_password}

    #Click outside
    click element    ${Div_Login}
    element should be visible    ${span_username}
    element should be visible    ${span_password}

Enter the value of username input
    input text  ${txt_UserName}     Admin
    Sleep   10s
    textfield value should be       ${txt_UserName}     Admin
    textfield value should be       ${txt_Password}     ${EMPTY}

Delete entered data in username input and click outside the username input
    clear element text    ${txt_UserName}
    click element    ${Div_Login}
    element should be visible    ${span_username}

Click on the password input and click outside the password input
    #Click on
    click element    ${txt_Password}
    element should not be visible    ${span_password}
    element should be visible    ${span_username}
    Sleep   10s
    #Click outside
    click element    ${Div_Login}
    element should be visible    ${span_password}
    element should be visible    ${span_username}

Enter the value of password input
    input password    ${txt_Password}     admin123
    Sleep   10s
    textfield value should be       ${txt_Password}     admin123
    textfield value should be       ${txt_UserName}     ${EMPTY}

Delete entered data in password input and click outside the password input
    clear element text    ${txt_Password}
    click element          ${Div_Login}
    element should be visible    ${span_password}

Verify Successful Login
    location should be     https://opensource-demo.orangehrmlive.com/index.php/dashboard
    page should contain    Welcome


Verify Unsuccessful Login
    [Arguments]    ${error_message}
    ${message} =    get text        ${txt_errorMessage}
    log to console    ${message}
    should be equal    ${message}    ${error_message}

Login ESS
    [Arguments]         ${txt_UserName}    ${txt_Password}
    Enter UserName      ${txt_UserName}
    Enter Password      ${txt_Password}
    Click Button Login
    Verify Successful Login










