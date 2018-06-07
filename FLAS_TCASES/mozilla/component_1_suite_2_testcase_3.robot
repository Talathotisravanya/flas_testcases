*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_suite_2_testcase_3.robot
    Open Browser    http://google.com    ff
    Sleep    10
    Input Text    id=lst-ib    plugleads
    Sleep    10
    Click Element    xpath=//input[@value='Google Search']
    Sleep    10
    Wait Until Page Contains    plugleads    30
