*** Settings ***
Library           Selenium2Library

*** Test Cases ***
plugleads_registration
    Open Browser    http://www.plugleads.com/    f
    Sleep    5s
    Click Link    link=Register Now
    Sleep    2s
    Input Text    id=firstName    sravanthi
    Sleep    1s
    Input Text    id=lastName    chilevera
    Input Text    id=companyName    Nexiilabs
    Sleep    1s
    Input Text    id=companyMailId    sravanthi.chilevera@nexiilabs.com
    Sleep    1s
    Select From List By Value    id=countries    India
    Sleep    1s
    Input Text    id=phone    9808765432
    Sleep    1s
    Click Button    id=registerbtn
    Sleep    2s
    Close Window
