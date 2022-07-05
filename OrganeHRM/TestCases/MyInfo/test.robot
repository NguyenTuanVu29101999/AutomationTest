*** Settings ***
Test Teardown     Close All Browsers
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Download PDF
    # create unique folder
    ${now}    Get Time    epoch
    log    ${now}
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    log    ${download directory}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Go to    https://the-internet.herokuapp.com/download
    Click Link    css:[href="download/Zwrot Seargin.PNG"]
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

*** Keywords ***
Download should be done
    [Arguments]    ${directory}
    ${files}    List Files In Directory    ${directory}
    Length Should Be    ${files}    1    Should be only one file in the download folder
    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp    Chrome is still downloading a file
    ${file}    Join Path    ${directory}    ${files[0]}
    Log    File was successfully downloaded to ${file}
    [Return]    ${file}
    sleep    30