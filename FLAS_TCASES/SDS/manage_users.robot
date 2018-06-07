*** Settings ***
Library           Selenium2Library

*** Test Cases ***
manage_users
    Open Browser    http://trident.plugleads.com/    ff
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    Sleep    5s
    Click Image    id=manageuser
    Sleep    2s
    Click Element    xpath=//a[@onclick='usersLoader();']
    Sleep    2s
    Click Element    xpath=//a[@onclick='createUserPopup();']
    Sleep    2s
    Input Text    id=name    sravanthi
    Sleep    1s
    Input Text    id=lname    chilevera
    Sleep    1s
    Input Text    id=email    sravanthi.chilevera@nexiilabs.com
    Sleep    1s
    Select From List By Value    id=op1    2
    Sleep    1s
    Select From List By Value    id=op2    1
    Sleep    1s
    Click Button    css=button.btn.btn-danger
    Sleep    1s
    Close Window
