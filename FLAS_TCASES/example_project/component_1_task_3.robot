*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
sale_login
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    sal1@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    Wait Until Page Contains Element    xpath=//*[@id="sidebar-menu"]/ul/li[4]/a/span[1]
    Click Element    xpath=//*[@id="sidebar-menu"]/ul/li[4]/a/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a    20
    sleep    10
    Close Browser
