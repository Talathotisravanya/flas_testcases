*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
update_user_with_valid_data
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    veera@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    sal6241@gm.com
    Wait Until Page Contains Element    xpath=//*[@id="userstable"]/tr/td[8]/a[1]/i    30
    Click Element    xpath=//*[@id="userstable"]/tr/td[8]/a[1]/i
    Wait Until Page Contains Element    id=firstname1    30
    Sleep    10
    Clear Element Text    id=firstname1
    Sleep    10
    Input Text    id=firstname1    rahul
    Wait Until Page Contains Element    id=lastname1    30
    Sleep    10
    Clear Element Text    id=lastname1
    Sleep    10
    Input Text    id=lastname1    kumar
    Wait Until Page Contains Element    id=save    30
    Sleep    10
    Click Element    id=save
    Sleep    5
    Reload Page
    sleep    5
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    sal6241@gm.com
    Wait Until Page Contains    rahul    30
    Wait Until Page Contains Element    xpath=//img[@class='img-circle']    30
    sleep    10
    Click Element    xpath=//img[@class='img-circle']
    Sleep    10
    Wait Until Page Contains Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']    30
    Click Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']
    Sleep    5
    Close Browser
    sleep    2