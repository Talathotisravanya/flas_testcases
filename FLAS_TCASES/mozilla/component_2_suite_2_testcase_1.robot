*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_suite_2_testcase_1.robot
    Open Browser    http://192.168.50.67:9003    ff
    sleep    5
    Wait Until Page Contains Element    id:login_link    30
    Click Element    id:login_link
    sleep    5
    Wait Until Page Contains    Register    30
    Wait Until Page Contains Element    xpath=//*[@id="default"]/header/div[1]/div/div[1]/a    30
    Click Element    xpath=//*[@id="default"]/header/div[1]/div/div[1]/a
    sleep    5
    Wait Until Page Contains Element    xpath=//*[@id="browse"]/li/ul/li[1]/a    30
    Wait Until Page Contains Element    xpath=//*[@id="default"]/header/div[1]/div/div[2]/span/a    30
    Click Element    xpath=//*[@id="default"]/header/div[1]/div/div[2]/span/a
    sleep    5
    Wait Until Page Contains    Your basket is empty.    30
    sleep    3
    Close Browser