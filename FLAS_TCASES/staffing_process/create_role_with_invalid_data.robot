*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
create_role_with_invalid_data
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    veera@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="sidebar-menu"]/ul/li[1]/ul/li[2]/a    30
    Click Element    xpath=//*[@id="sidebar-menu"]/ul/li[1]/ul/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a    30
    Click Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a
    Wait Until Page Contains Element    id:role_name    30
    Sleep    10
    Input Text    id:role_name    manager3
    Sleep    10
    Wait Until Page Contains Element    id:createRoleSave    30
    Click Element    id:createRoleSave
    Sleep    10
    reload page
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    manager3
    Wait Until Page Contains    manager3    30
    Wait Until Page Contains Element    xpath=//img[@class='img-circle']    30
    sleep    5
    Click Element    xpath=//img[@class='img-circle']
    Sleep    5
    Wait Until Page Contains Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']    30
    Click Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']
    Sleep    5
    Close Browser
    sleep    2
   
