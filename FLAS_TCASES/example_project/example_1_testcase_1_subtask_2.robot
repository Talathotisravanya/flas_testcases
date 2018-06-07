*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
Register
    Open Browser    http://192.168.50.67:9000    ff
    sleep    5
    Wait Until Page Contains Element    id:login_link    30
    Click Element    id:login_link
    sleep    5
