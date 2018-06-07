*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_suite_1_testcase_2.robot
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    veera@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a    30
    sleep    10
    Wait Until Page Contains Element    xpath=//img[@class='img-circle']    30
    sleep    10
    Click Element    xpath=//img[@class='img-circle']
    Sleep    10
    Wait Until Page Contains Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']    30
    Click Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']
    Sleep    10
    Close Browser
   
