*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_suite_1_testcase_3.robot
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    sal1@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    sleep    10
    Wait Until Page Contains Element    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']    30
    Click Element    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="sidebar-menu"]/ul/li[4]/a/span[1]    30
    Click Element    xpath=//*[@id="sidebar-menu"]/ul/li[4]/a/span[1]
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a    30
    sleep    10
    Click Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="addProspect"]/div[2]/div/button[1]    30
    sleep    10
    Wait Until Page Contains Element    id:createprospectfName    30
    sleep    10
    Input Text    id:createprospectfName    fname3
    Input Text    id:createprospectlName    lname3
    Input Text    id:createprospectemail    fname3@nexii.com
    Input Text    id:phnumber    123456667
    Input Text    id:alternumber    123456735
    Input Text    id:designation    lead
    Input Text    id:addlane1    street1
    Input Text    id:addlane2    city1
    Wait Until Page Contains Element    id:createprospectcustomer    30
    Click Element    id:createprospectcustomer
    Wait Until Page Contains Element    xpath=//*[@id="createprospectcustomer"]/option[4]    30
    Click Element    xpath=//*[@id="createprospectcustomer"]/option[4]
    Input Text    id:information    nexii-311
    Click Element    xpath=//*[@id="addProspect"]/div[2]/div/button[1]
    Click Element    xpath=//*[@id="addProspect"]/div[2]/div/button[2]
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_length"]/label/select    30
    Click Element    xpath=//*[@id="datatable-responsive_length"]/label/select
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_length"]/label/select/option[4]    30
    Click Element    xpath=//*[@id="datatable-responsive_length"]/label/select/option[4]
    Sleep    10
