*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_suite_2_testcase_1.robot
    Open Browser    http://192.168.50.88    ff
    Sleep    3
    Wait Until Page Contains    Apache2 Ubuntu \ Default Page    30
    Sleep    2
    Close Browser
