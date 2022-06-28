*** Settings ***
Library    SeleniumLibrary
Resource    ../Keyword/LoginPage.robot
Library    ../FunctionConvert/Convert.py
Variables    ../Locators/DashBoard.py
Variables    ../Locators/MyInfo.py
Resource    ../Keyword/Common.robot
*** Keywords ***
Shoule Be Equal
    [Arguments]    ${locator}   ${I}
    should be equal    ${locator}     ${I}

Click "My Info" link
    click element    ${MyInfo_Link}

Verify that FullName shows correct name with account logged in with ESS permission
    element should be visible    ${FullName}
    ${text}     get text    ${FullName}
    log    ${text}
    should be equal    ${text}  	Ananya Dash

Verify that Image below the full name
    element should be visible    ${Epic_Image}

Verify that Sidebar below the "epic" image
    # Personal Details
    element should be visible    ${PersonalDetail_Link}
    ${PersonalDetail}       get text    ${PersonalDetail_Link}
    log    ${PersonalDetail}
    should be equal as strings    ${PersonalDetail}     Personal Details

    # Contact Details
    element should be visible    ${ContactDetail_Link}
    ${ContactDetail}       get text    ${ContactDetail_Link}
    log    ${ContactDetail}
    should be equal as strings    ${ContactDetail}    Contact Details

    # Emergency Contacts
    element should be visible    ${EmergencyContacts_Link}
    ${EmergencyContacts}       get text    ${EmergencyContacts_Link}
    log    ${EmergencyContacts}
    should be equal as strings    ${EmergencyContacts}    Emergency Contacts

    # Dependents
    element should be visible    ${Dependents_Link}
    ${Dependents}       get text    ${Dependents_Link}
    log    ${Dependents}
    should be equal as strings    ${Dependents}    Dependents

    # Immigration
    element should be visible    ${Immigration_Link}
    ${Immigration}  get text    ${Immigration_Link}
    log    ${Immigration}
    should be equal as strings    ${Immigration}    Immigration

    # Job
    element should be visible    ${Job_Link}
    ${Job}  get text    ${Job_Link}
    log    ${job}
    should be equal as strings    ${Job}    Job

    # Salary
    element should be visible    ${Salary_Link}
    ${Salary}   get text    ${salary_link}
    log    ${Salary}
    should be equal as strings    ${Salary}     Salary

    # Tax Exemptions
    element should be visible    ${TaxExemptions_Link}
    ${TaxExemptions}   get text    ${TaxExemptions_Link}
    log    ${taxexemptions}
    should be equal as strings    ${taxexemptions}      Tax Exemptions

    # Report-to
    element should be visible    ${ReportTo_Link}
    ${ReportTo}     get text     ${ReportTo_Link}
    log    ${ReportTo}
    should be equal as strings    ${ReportTo}       Report-to

     # Qualifications
    element should be visible    ${Qualifications_Link}
    ${Qualifications}     get text     ${Qualifications_Link}
    log    ${Qualifications}
    should be equal as strings    ${Qualifications}  Qualifications

    # Memberships
    element should be visible    ${Memberships_Link}
    ${Memberships}     get text     ${Memberships_Link}
    log    ${Memberships}
    should be equal as strings    ${Memberships}  Memberships

Verify that Personal Details section on the right of the image and sidebar includes the following items with input boxes are disabled
    # Full Name title
    element should be visible    ${txt_FullName}
    ${text}     get text    ${txt_FullName}
    log    ${text}
    should be equal as strings    ${text}   Full Name

    element should be visible    ${txt_FirstName}
    ${text}     get text    ${txt_FirstName}
    log    ${text}
    should be equal as strings    ${text}   	* First Name

    element should be visible    ${txt_MiddleName}
    ${text}     get text    ${txt_MiddleName}
    log    ${text}
    should be equal as strings    ${text}   	Middle Name

    element should be visible    ${txt_Lastname}
    ${text}     get text    ${txt_Lastname}
    log    ${text}
    should be equal as strings    ${text}   	* Last Name

    element should be visible    ${input_FirstName}
    element should be visible    ${input_MiddleName}
    element should be visible    ${input_LastName}


























