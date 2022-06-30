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

    # * First Name
    element should be visible    ${txt_FirstName}
    ${text}     get text    ${txt_FirstName}
    log    ${text}
    should be equal as strings    ${text}   	* First Name

    # Middle Name
    element should be visible    ${txt_MiddleName}
    ${text}     get text    ${txt_MiddleName}
    log    ${text}
    should be equal as strings    ${text}   	Middle Name

    # * Last Name
    element should be visible    ${txt_Lastname}
    ${text}     get text    ${txt_Lastname}
    log    ${text}
    should be equal as strings    ${text}   	* Last Name

    # Input first name
    element should be visible    ${input_FirstName}
    ${val_FirstName}  get value       ${input_FirstName}
    should be equal as strings    ${val_FirstName}  Ananya

    # Input middle name
    element should be visible    ${input_MiddleName}

    # Input last name
    element should be visible    ${input_LastName}
    ${val_LastName}  get value       ${input_LastName}
    log    ${val_LastName}
    should be equal as strings    ${val_LastName}  Dash

    # EmployeeId
    element should be visible    ${txt_EmployeeId}
    ${employeeId}    get text    ${txt_EmployeeId}
    should be equal as strings   ${employeeId}  Employee Id
    element should be visible    ${input_EmployeeId}
    ${val_EmployeeId}   get value    ${input_EmployeeId}
    should be equal as strings    ${val_EmployeeId}     0251

    # OrtherId
    element should be visible    ${txt_OtherId}
    ${OtherId}    get text       ${txt_OtherId}
    should be equal as strings   ${OtherId}  Other Id
    element should be visible    ${input_OtherId}

    # Driver's License Number
    element should be visible    ${txt_DriverLicenseNumber}
    ${DriverLicenseNumber}     get text         ${txt_DriverLicenseNumber}
    should be equal as strings   ${DriverLicenseNumber}    Driver's License Number
    element should be visible    ${input_DriverLicenseNumber}

    # License Expiry Date
    element should be visible    ${txt_LicenseExpiryDate}
    ${LicenseExpiryDate}    get text    ${txt_LicenseExpiryDate}
    should be equal as strings    ${LicenseExpiryDate}  License Expiry Date
    element should be visible     ${datetimepicker_LicenseExpiryDate}
    element should be visible     ${img_Calender_License}

    # SSN Number
    element should be visible    ${txt_SSNNumber}
    ${SSNNumber}    get text     ${txt_SSNNumber}
    should be equal as strings   ${SSNNumber}   SSN Number
    element should be visible    ${input_SSN_Number}

    # SIN Number
    element should be visible    ${txt_SSIN_Number}
    ${SINNumber}    get text     ${txt_SSIN_Number}
    should be equal as strings   ${SINNumber}   SIN Number
    element should be visible    ${input_SSIN_Number}

    # Gender
    element should be visible       ${txt_Gender}
    ${Gender}   get text            ${txt_Gender}
    log    ${Gender}
    should be equal as strings      ${Gender}   Gender

    element should be visible       ${radiobutton_Male}
    #${male}     get text            ${radiobutton_Male}
    #should be equal as strings      ${male}    Male

    element should be visible       ${radiobutton_Female}
    #${female}     get text          ${radiobutton_Female}
    #should be equal as strings      ${female}   Female

    #  Marital Status
    element should be visible       ${txt_MaritalStatus}
    ${MaritalStatus}     get text   ${txt_MaritalStatus}
    should be equal as strings      ${MaritalStatus}    Marital Status
    element should be visible       ${dropdown_MaritalStatus}

    # Nationality
    element should be visible       ${txt_Nationality}
    ${Nationality}     get text     ${txt_Nationality}
    should be equal as strings      ${Nationality}      Nationality
    element should be visible       ${dropdown_Nationality}

    # Date of birth
    element should be visible       ${txt_DateOfBirth}
    ${text_DOB}     get text        ${txt_DateOfBirth}
    should be equal as strings      ${text_DOB}     Date of Birth
    element should be visible       ${input_DateOfBirth}
    element should be visible       ${img_Calender}

    # Nick Name
    element should be visible       ${txt_NickName}
    ${NickName}  get text           ${txt_NickName}
    should be equal as strings      ${NickName}     Nick Name
    element should be visible       ${input_NickName}

    # Smoker
    element should be visible       ${txt_Smoker}
    ${Smoker}  get text             ${txt_Smoker}
    should be equal as strings      ${Smoker}       Smoker
    element should be visible       ${checkbox_Smoker}

    # Military Service
    element should be visible       ${txt_MilitaryService}
    ${MilitaryService}  get text    ${txt_MilitaryService}
    should be equal as strings      ${MilitaryService}      Military Service
    element should be visible       ${input_MilitaryService}

    # * Required field
    element should be visible        ${txt_RequiredField}
    ${text_requires}    get text     ${txt_RequiredField}
    should be equal as strings       ${text_requires}   * Required field

    # btn Edit
    element should be visible        ${btn_Save}
    ${text_button}      get value    ${btn_Save}
    should be equal as strings       ${text_button}     Edit

Verify that custom fields section below personal details section display includes
    element should be visible    ${txt_CustomFields}
    ${customefields}     get text         ${txt_CustomFields}
    should be equal as strings   ${customefields}    Custom Fields

    element should be visible    ${txt_BloodType}
    ${bloodtype}     get text         ${txt_BloodType}
    should be equal as strings   ${bloodtype}    Blood Type

    element should be visible    ${dropdown_BloodType}

    element should be visible    ${btn_EditCustomFields}
    ${edit}     get value        ${btn_EditCustomFields}
    should be equal as strings   ${edit}    Edit

Verify that attachments section below custom fields section display includes
    element should be visible       ${txt_Attachments}
    ${attachments}      get text    ${txt_Attachments}
    should be equal as strings      ${attachments}      Attachments

    element should be visible       ${btn_AddAttachment}
    ${add}      get value           ${btn_AddAttachment}
    should be equal as strings      ${add}  Add

Click "Edit" button in Personal Details section     # 130
    element should be enabled    ${input_FirstName}
    element should be enabled    ${input_MiddleName}
    element should be enabled    ${input_LastName}
    element should be enabled    ${datetimepicker_LicenseExpiryDate}
    element should be enabled    ${radiobutton_Male}
    element should be enabled    ${radiobutton_Female}
    element should be enabled    ${dropdown_MaritalStatus}
    element should be enabled    ${dropdown_Nationality}
    element should be enabled    ${input_NickName}
    element should be enabled    ${input_MilitaryService}
    element should be enabled    ${checkbox_Smoker}

    element should be visible    ${btn_Save}
    click element    ${btn_Save}
    ${text}     get value    ${btn_Save}
    should be equal as strings    ${text}   Save
    sleep    10

Verify that the "This field is required" message is displayed   #(132)
    clear element text           ${input_FirstName}
    sleep    30s
    element should be visible    ${message_required_FN}

    #${message_1}  get text          ${message_required_FN}
    #should be equal as strings    ${message_1}    This field is required

    click element    ${btn_Save}

    clear element text           ${input_LastName}
    sleep    30s
    element should be visible    ${message_required_LN}

    #${message_2}  get text          ${message_required_LN}
    #should be equal as strings    ${message_2}    This field is required

    click element    ${btn_Save}

Enter data in the FirstName field and automatically truncated if the maximum size is reached    #(136)
    # Enter a text has 29 characters into the "First Name" input box
    input text    ${input_FirstName}    this string has 29 characters
    ${text1}      get text    ${input_FirstName}
    should be equal as strings    ${text1}    this string has 29 characters
    clear element text    ${input_FirstName}

    sleep    15

    # Enter a text has 30 characters into the "First Name" input box
    input text    ${input_FirstName}    this string has 30 character!!
    ${text2}      get text    ${input_FirstName}
    should be equal as strings    ${text2}    this string has 30 character!!
    clear element text    ${input_FirstName}

     sleep    15

    # Enter a text has 31 characters into the "First Name" input box
    input text    ${input_FirstName}    this string has 31 characters!!
    ${text3}      get text    ${input_FirstName}
    should be equal as strings    ${text3}     this string has 31 characters!
    clear element text    ${input_FirstName}

    sleep    15

    # Enter a text has 33 characters into the "First Name" input box
    input text    ${input_FirstName}     this string has 33 characters!!##
    ${text4}      get text    ${input_FirstName}
    should be equal as strings    ${text4}   this string has 33 characters!

Enter data in the MiddleName field and automatically truncated if the maximum size is reached    #(136)
    # Enter a text has 29 characters into the "Middel Name" input box
    input text    ${input_MiddleName}    this string has 29 characters
    ${text1}      get text    ${input_MiddleName}
    should be equal as strings    ${text1}    this string has 29 characters.
    clear element text    ${input_MiddleName}

    sleep    15

    # Enter a text has 30 characters into the "Middel Name" input box
    input text    ${input_MiddleName}    this string has 30 character!!
    ${text2}      get text    ${input_MiddleName}
    should be equal as strings    ${text2}    this string has 30 character!!
    clear element text    ${input_MiddleName}

    sleep    15

    # Enter a text has 31 characters into the "Middel Name" input box
    input text    ${input_MiddleName}    this string has 31 characters!!
    ${text3}      get text    ${input_MiddleName}
    should be equal as strings    ${text3}     this string has 31 characters!!
    clear element text    ${input_MiddleName}

    sleep    15

    # Enter a text has 33 characters into the "Middel Name" input box
    input text    ${input_MiddleName}     this string has 33 characters!!##
    ${text4}      get text    ${input_MiddleName}
    should be equal as strings    ${text4}    this string has 33 characters!!##

Enter data in the LastName field and automatically truncated if the maximum size is reached     #(136)
    # Enter a text has 29 characters into the "Last Name" input box
    input text    ${input_LastName}    this string has 29 characters
    ${text1}      get text    ${input_LastName}
    should be equal as strings    ${text1}    this string has 29 characters
    clear element text    ${input_LastName}

    # Enter a text has 30 characters into the "Last Name" input box
    input text    ${input_LastName}    this string has 30 character!!
    ${text2}      get text    ${input_LastName}
    should be equal as strings    ${text2}    this string has 30 character!!
    clear element text    ${input_LastName}

    # Enter a text has 31 characters into the "Last Name" input box
    input text    ${input_LastName}    this string has 31 characters!!
    ${text3}      get text    ${input_LastName}
    should be equal as strings    ${text3}     this string has 31 characters!!
    clear element text    ${input_LastName}

    # Enter a text has 33 characters into the "Last Name" input box
    input text    ${input_LastName}     this string has 33 characters!!##
    ${text4}      get text    ${input_LastName}
    should be equal as strings    ${text4}    this string has 33 characters!!##

Enter data in the NickName field and automatically truncated if the maximum size is reached     #(136)
     # Enter a text has 29 characters into the NickName input box
    input text    ${input_NickName}    this string has 29 characters
    ${text1}      get text    ${input_NickName}
    should be equal as strings    ${text1}    this string has 29 characters
    clear element text    ${input_NickName}

    # Enter a text has 30 characters into the NickName input box
    input text    ${input_NickName}    this string has 30 character!!
    ${text2}      get text    ${input_NickName}
    should be equal as strings    ${text2}    this string has 30 character!!
    clear element text    ${input_NickName}

    # Enter a text has 31 characters into the NickName input box
    input text    ${input_NickName}    this string has 31 characters!!
    ${text3}      get text    ${input_NickName}
    should be equal as strings    ${text3}     this string has 31 characters!!
    clear element text    ${input_NickName}

    # Enter a text has 33 characters into the NickName input box
    input text    ${input_NickName}     this string has 33 characters!!##
    ${text4}      get text    ${input_NickName}
    should be equal as strings    ${text4}    this string has 33 characters!!##

Enter data in the MilitaryService field and automatically truncated if the maximum size is reached  #(136)
    # Enter a text has 29 characters into the MilitaryService input box
    input text    ${input_MilitaryService}    this string has 29 characters
    ${text1}      get text    ${input_MilitaryService}
    should be equal as strings    ${text1}    this string has 29 characters
    clear element text    ${input_MilitaryService}

    # Enter a text has 30 characters into the MilitaryService input box
    input text    ${input_MilitaryService}    this string has 30 character!!
    ${text2}      get text    ${input_MilitaryService}
    should be equal as strings    ${text2}    this string has 30 character!!
    clear element text    ${input_MilitaryService}

    # Enter a text has 31 characters into the MilitaryService input box
    input text    ${input_MilitaryService}    this string has 31 characters!!
    ${text3}      get text    ${input_MilitaryService}
    should be equal as strings    ${text3}     this string has 31 characters!!
    clear element text    ${input_MilitaryService}

    # Enter a text has 33 characters into the MilitaryService input box
    input text    ${input_MilitaryService}     this string has 33 characters!!##
    ${text4}      get text    ${input_MilitaryService}
    should be equal as strings    ${text4}    this string has 33 characters!!##

Enter valid data into the input box and click "save" button     #133
    # enter data
    input text    ${txt_FirstName}      Nguyen
    input text    ${txt_MiddleName}     Tuan
    input text    ${txt_Lastname}       Vu
    # datetime picker

    element should be visible    ${radiobutton_Male}
    ${text_male}    get text     ${radiobutton_Male}
    should be equal as strings   ${text_male}  Male

    select radio button          ${radiobutton_Male}  text_male
    select from list by value    ${dropdown_MaritalStatus}  Single
    select from list by label    ${dropdown_Nationality}    Vietnamese
    input text    ${input_NickName}     Vu Nguyen
    input text    ${input_MilitaryService}      No
    select checkbox    ${checkbox_Smoker}
    sleep    30

Click "Save" button     # 133
    click element    ${btn_Save}
    # Verify that button lettering changed from Processing to Edit
    element attribute value should be    ${btn_Save}   Processing
    #${processing}     get value    ${btn_Save}
    #should be equal as strings    ${processing}     Processing

    # Messsages successfully saved is displayed
    wait until element is visible    ${txt_SuccessfullySaved}   10s
    ${saved}    get text    ${txt_SuccessfullySaved}
    should be equal as strings    ${saved}  Successfully Saved

    # Values in input boxes are displayed correctly once entered
    ${val_FN}   get value    ${input_FirstName}
    should be equal as strings    ${val_FN}   Nguyen

    ${val_MDN}  get value    ${input_MiddleName}
    should be equal as strings    ${val_MDN}   Tuan

    ${val_LN}   get value    ${input_LastName}
    should be equal as strings    ${val_LN}   Vu

    ${val_NN}   get value    ${input_NickName}
    should be equal as strings    ${val_NN}   Vu Nguyen

    ${val_MS}   get value    ${input_MilitaryService}
    should be equal as strings    ${val_MS}   No

    ${Edit}     get value    ${btn_Save}
    should be equal as strings    ${Edit}   Edit

All input boxes are disabled when data is saved successfully    # 133
    element should be disabled    ${input_FirstName}
    element should be disabled    ${input_MiddleName}
    element should be disabled    ${input_LastName}
    element should be disabled    ${datetimepicker_LicenseExpiryDate}
    element should be disabled    ${radiobutton_Male}
    element should be disabled    ${radiobutton_Female}
    element should be disabled    ${dropdown_MaritalStatus}
    element should be disabled    ${dropdown_Nationality}
    element should be disabled    ${input_NickName}
    element should be disabled    ${input_MilitaryService}
    element should be disabled    ${checkbox_Smoker}

Click "Edit" button in Custom Fields section       #134
    click element    ${btn_EditCustomFields}
    element should be enabled    ${dropdown_BloodType}

    ${save}  get value    ${btn_EditCustomFields}
    should be equal as strings    ${save}    Save

Click "Save" button in Custom Fields section and Save data in Custom Fields section

    # Click on the Blood Type ComboBox
    ${lists}=   create list     --Select--  A+  A-   AB+   AB-   B+  B-  O+  O-
    log     ${lists}
    FOR    ${item}    IN    @{lists}
        log    ${item}
    END
    select from list by value    ${dropdown_BloodType}  A+






















