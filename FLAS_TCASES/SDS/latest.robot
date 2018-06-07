*** Settings ***
Library           Selenium2Library

*** Test Cases ***
MailServer_mangement
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=configuremail
    Click Element    xpath=//a[@id='createmail']
    Press Key    id=servername    27
    Input Text    id=servername    Nexiilabs
    Input Text    id=shost    email.nexiilabs.com
    Input Text    id=sport    587
    Input Text    id=ihost    email.nexiilabs.com
    Input Text    id=iport    993
    Input Text    id=email    sravanthi.chilevera@nexiilabs.com
    Input Text    id=password    bangaram123
    Click Button    css=button.btn.btn-success-mail
    Click Element    xpath=//button[@class='confirm']
    Close Window

Purchase_BDR
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=dashboardic
    Set Browser Implicit Wait    10 seconds
    Click Link    id=purchase-historyLink
    Set Browser Implicit Wait    10 seconds
    Click Element    id=new-VBDELink1
    Input Text    id=vbdename    BDR
    Select From List    id=mailServerId1    NexiiAutomation
    Input Text    id=vbdeemail    micheal.kim@nexiiautomation.com
    Input Password    id=vbdepassword    Nexii@123
    Comment    Set Selenium Implicit Wait    10 seconds
    Input Text    xpath=//textarea[@id="vbdesignatureid"]    Thanks & Regards,Micheal
    Set Browser Implicit Wait    20 seconds
    Select From List By Value    id=vbdecreationservice    1
    Set Browser Implicit Wait    10 seconds
    Select From List By Value    id=vbdecreationregion    3
    Select From List By Value    id=vbdecreationdomain    1
    Select From List By Value    id=bdrList    1
    Select From List By Value    id=packageId    0
    Close Window

Settings
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=orgchart
    Select From List By Value    id=mailsperhour    40
    Select From List    id=mailsperday    100
    Select From List By Index    id=mailsperipperhour    4
    Select From List By Index    xpath=//select[@name='timezone']    3
    Select From List By Index    id=maxnumberoffollowups    3
    Close Window

Manage_Roles
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=manageuser
    Click Element    id=createdesig
    Press Key    id=Designationname    13
    Input Text    id=Designationname    Manager
    Click Element    xpath=//button[@type='button']/span
    Press Key    xpath=//input[@value='multiselect-all']    13
    Click Element    xpath=//input[@value='multiselect-all']
    Click Button    css=button.btn.btn-danger
    Close Window

Manage_Users
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=manageuser
    Click Element    xpath=//a[@onclick='usersLoader();']
    Press Key    xpath=//a[@id="createbutto"]    27
    Comment    Set Selenium Implicit Wait    10 seconds
    Click Element    xpath=//a[@onclick='createUserPopup();']
    Press Key    id=name    27
    Input Text    id=name    sravanthi
    Input Text    id=lname    chilevera
    Input Text    id=email    sravanthi.chilevera@nexiilabs.com
    Select From List By Value    id=op1    2
    Select From List By Value    id=op2    1
    Click Button    css=button.btn.btn-danger
    Close Window

Manage_contacts
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=dashboardic
    Set Browser Implicit Wait    10 seconds
    Comment    Press Key    link=Manage Contacts    27
    Click Element    link=Manage Contacts
    Input Text    id=userfname    sravanthi
    Input Text    id=userlname    chilevera
    Input Text    id=useremail    sravanya.talathoti@nexiilabs.com
    Input Text    id=contactnumber    9898765432
    Input Text    id=companyname    Trident
    Select From List By Value    id=contactcreationregion    1
    Select From List By Value    id=contactcreationcountry    3
    Select From List By Value    id=contactcreationdesignation    1
    Select From List By Value    id=contactcreationindustry    1
    Select From List By Index    name=contactcreationservice    3
    Select From List By Value    id=contactcreationdomain    1
    Close Window

Edit_contact
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=dashboardic
    Set Browser Implicit Wait    10 seconds
    Click Element    link=Manage Contacts
    Set Browser Implicit Wait    10 seconds
    Click Element    xpath=//*[@id="contactsSideBar"]/div/div[1]/ul/li[5]
    Comment    Press Key    xpath=//a[@id='contactsLink']    27
    Comment    Click Image    xpath=//a[@id='contactsLink']
    Comment    Click Button    xpath=(//ul[@class='menu accordion-menu'])[2]/li[5]/a
    Set Browser Implicit Wait    10 seconds
    Click Button    css=a.btn.btn-success.btn-sm m-user-edit
    Clear Element Text    id=userfname
    Input Text    id=userfname    Sravanthi
    Clear Element Text    id=userlname
    Input Text    id=userlname    Chilevera
    Clear Element Text    id=useremail
    Input Text    id=useremail    venkateswara.dasari@nexiilabs.com
    Clear Element Text    id=contactnumber
    Input Text    id=contactnumber    8976534212
    Clear Element Text    id=companyname
    Input Text    id=companyname    Nexiilabs
    Select From List By Value    id=contactcreationregion    1
    Select From List By Value    id=contactcreationcountry    1

Profile_management
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=configuremail
    Click Link    link=Profile Management
    Clear Element Text    id=name
    Comment    Set Browser Implicit Wait    10 seconds
    Input Text    id=name    sravanthi
    Clear Element Text    id=lname
    Comment    Set Browser Implicit Wait    10 seconds
    Input Text    id=lname    chilevera
    Select From List By Value    id=countries    Albania
    Input Text    id=phone    9898765432
    Select From List By Value    id=citrusScheme    mastercard
    Input Text    id=citrusNumber    98765432190876
    Input Text    id=citrusCardHolder    sravanthi
    Input Text    id=citrusExpiry    06/2020
    Input Text    id=citrusCvv    123
    Close Window

Billing_update
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=configuremail
    Click Link    link=Profile Management
    Clear Element Text    id=fname
    Input Text    id=fname    sravanthi
    Clear Element Text    id=lastname
    Input Text    id=lastname    chilevera
    Clear Element Text    id=Email
    Input Text    id=Email    sravanthi.chilevera@nexiilabs.com
    Clear Element Text    id=street1
    Input Text    id=street1    Hitech city
    Clear Element Text    id=street2
    Input Text    id=street2    Madhapur
    Clear Element Text    id=city
    Input Text    id=city    Secunderabad
    Clear Element Text    id=state
    Input Text    id=state    Telangana
    Clear Element Text    id=country
    Input Text    id=country    India
    Clear Element Text    id=zipcode
    Input Text    id=zipcode    509872
    Clear Element Text    id=mobile
    Input Text    id=mobile    9876543210
    Close Window

Manage_campaign
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=dashboardic
    Set Browser Implicit Wait    10 seconds
    Click Link    link=Manage Campaign
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Purchase vCampaigner
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Manage Contacts
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Reports
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Control Panel
    Click Image    id=configuremail
    Set Browser Implicit Wait    20 seconds
    Click Link    link=User Management
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Settings
    Set Browser Implicit Wait    30 seconds
    Click Link    link=Reports
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Profile Management
    Set Browser Implicit Wait    20 seconds
    Click Link    link=Package Purchase
    Press Key    xpath=//main[@class='page-content content-wrap']/descendant::li[4]/a    27
    Click Element    xpath=//*[@id="homeload"]/main/div[1]/div/div[2]/div/ul/li[4]/a
    Click Link    link=Log out
    Close Window

Clone_BDR
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=dashboardic
    Set Browser Implicit Wait    10 seconds
    Click Link    id=purchase-historyLink
    Set Browser Implicit Wait    10 seconds
    Click Button    id=clickMeId
    Input Text    id=vbdename    Krishna
    Input Text    id=vbdeemail    krishna.guptha@nexiiautomation.com
    Input Password    id=vbdepassword    Nexii@123
    Select From List By Value    id=bdrList    1
    Set Browser Implicit Wait    10 seconds
    Input Text    xpath=//textarea[@placeholder='Signature']    Thanks& Regards
    Close Window

registration
    Open Browser    http://www.plugleads.com/    Chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10 seconds
    Click Link    link= Register Now
    Input Text    id=firstName    sravanthi
    Input Text    id=lastName    chilevera
    Input Text    id=companyName    Nexiilabs
    Input Text    id=companyMailId    sravanthi.chilevera@nexiilabs.com
    Select From List By Value    id=countries    India
    Input Text    id=phone    9808765432
    Close Window

Purchase_package
    Open Browser    http://trident.plugleads.com/    Chrome
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Set Browser Implicit Wait    10 seconds
    Click Image    id=configuremail
    Click Link    link=Package Purchase
    Set Browser Implicit Wait    20 seconds
    Click Element    id=purchase
    Select From List By Value    id=packages    2
    Click Button    css=button.btn.btn-danger
    Set Browser Implicit Wait    20 seconds
    Close Window
