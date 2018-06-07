*** Settings ***
Library           Selenium2Library

*** Test Cases ***
plugleads_settings
    Open Browser    http://trident.plugleads.com/    ff
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='logform']/button
    Sleep    5s
    Click Image    id=orgchart
    Sleep    5 seconds
    Select From List By Value    id=mailsperhour    40
    Sleep    2s
    Select From List    id=mailsperday    100
    Sleep    2s
    Select From List By Index    id=mailsperipperhour    4
    Sleep    2s
    Select From List By Index    xpath=//select[@name='timezone']    3
    Sleep    2s
    Select From List By Index    id=maxnumberoffollowups    3
    Close Window
