*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/OpenLearnHomePage.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window

Visible all elements
    element should be visible    ${logo}
    element should be visible    ${openlearnlogo}
    element should be visible    ${tagline}
    element should be visible    ${link_theOpenUniversity}
    element should be visible    ${link_studyWithTheOpenUniversity}
    element should be visible    ${text_searchFor}
    element should be visible    ${input_searchBox}
    element should be visible    ${button_search}
    element should be visible    ${link_Home}
    element should be visible    ${link_FreeCourses}
    element should be visible    ${link_Subjects}
    element should be visible    ${link_ForStudy}
    element should be visible    ${link_ForLife}
    element should be visible    ${link_Help}
    element should be visible    ${link_SignIn}
    element should be visible    ${mainImage}
    element should be visible    ${text_bannerHeading}
    element should be visible    ${text_bannerSubHeading}
    element should be visible    ${input_bannerSearchBox}
    element should be visible    ${button_bannerSearch}
    element should be visible    ${button_scroll}

Enter search text
    [Arguments]    ${input_text}
    input text    ${input_searchbox}    ${input_text}

Click button search
    click button    ${button_search}

Verify sucessful search
    title should be    Search - OpenLearn - Open University

Close my browser
    close all browsers