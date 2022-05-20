*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}      https://www.open.edu/openlearn/
${BROWSER}   Chrome

#${HOME}     xpath://div[@id='mainMenu-left']//a[contains(text(),'Home')]
#${FREE_COURSES}     xpath://div[@id='mainMenu-left']//a[contains(text(),'Free courses')]
#${SUBJECTS}     xpath://div[@id='mainMenu-left']//a[contains(text(),'Subjects')]
#${STUDY}        xpath://div[@id='mainMenu-left']//a[contains(text(),'For Study')]
#${FOR_LIFE}     xpath://div[@id='mainMenu-left']//a[contains(text(),'For Life')]
#${HELP}         xpath://div[@id='mainMenu-left']//a[contains(text(),'Help')]

*** Test Cases ***
Open Page
    open browser  ${URL}    ${BROWSER}
    maximize browser window
Click link Home
    click element    xpath://div[@id='mainMenu-left']//a[contains(text(),'Home')]
Click link FreeCourses
    click element     xpath://div[@id='mainMenu-left']//a[contains(text(),'Free courses')]
Click link Subjects
    click element    xpath://div[@id='mainMenu-left']//a[contains(text(),'Subjects')]
Click link STUDY
    click element    xpath://div[@id='mainMenu-left']//a[contains(text(),'For Study')]
Click link FORLIFE
    click element    xpath://div[@id='mainMenu-left']//a[contains(text(),'For Life')]
Click link HELP
    click element     xpath://div[@id='mainMenu-left']//a[contains(text(),'Help')]
Click button create
    ${text} =    get text       xpath://body/div[@id='wrapper']/div[@id='main_wrapper']/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/a[1]
    log    ${text}
    click button     xpath://body/div[@id='wrapper']/div[@id='main_wrapper']/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/a[1]
    sleep    1
Close Page
    sleep   3
    close browser




*** Keywords ***
