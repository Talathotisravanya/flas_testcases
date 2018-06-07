*** Settings ***
Library           Selenium2Library

*** Test Cases ***
manage_contacts
    Open Browser    http://trident.plugleads.com/    ff
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Sleep    10 seconds
    Click Image    id=dashboardic
    Sleep    5 seconds
    Click Element    link=Manage Contacts
    Sleep    5s
    Input Text    id=userfname    sravanthi
    Sleep    1s
    Input Text    id=userlname    chilevera
    Sleep    1s
    Input Text    id=useremail    sravanya.talathoti@nexiilabs.com
    Sleep    1s
    Input Text    id=contactnumber    9898765432
    Sleep    1s
    Input Text    id=companyname    Trident
    Sleep    1s
    Select From List By Value    id=contactcreationregion    1
    Sleep    1s
    Select From List By Value    id=contactcreationcountry    3
    Sleep    1s
    Select From List By Value    id=contactcreationdesignation    1
    Sleep    1s
    Select From List By Value    id=contactcreationindustry    1
    Sleep    1s
    Select From List By Index    name=contactcreationservice    3
    Sleep    1s
    Select From List By Value    id=contactcreationdomain    1
    Close Window
