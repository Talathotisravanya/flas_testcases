*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
sale_login
    Open Browser    http://192.168.50.76/    ff
    Input Text    xpath=//input[@id='emailid']    sal1@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    sleep    10
    Close Browser
