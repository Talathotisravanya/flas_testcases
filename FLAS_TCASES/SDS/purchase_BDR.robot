*** Settings ***
Library           Selenium2Library

*** Test Cases ***
purchase_BDR
    Open Browser    http://trident.plugleads.com/    ff
    Input Text    id=emailide    venkateswara.dasari@nexiilabs.com
    Input Password    id=passworde    Nexii@123
    Click Button    xpath=//form[@id='loginform']/button
    sleep    10 seconds
    Click Image    id=dashboardic
    Sleep    10s
    Click Link    id=purchase-historyLink
    Sleep    10s
    Click Element    id=new-VBDELink1
    Sleep    10s
    Input Text    id=vbdename    BDR
    sleep    10s
    Select From List    id=mailServerId1    NexiiAutomation
    Input Text    id=vbdeemail    micheal.kim@nexiiautomation.com
    Input Password    id=vbdepassword    Nexii@123
    Input Text    xpath=//textarea[@id="vbdesignatureid"]    Thanks
    Sleep    5 seconds
    Select From List By Value    id=vbdecreationservice    1
    Set Browser Implicit Wait    10 seconds
    Select From List By Value    id=vbdecreationregion    3
    Select From List By Value    id=vbdecreationdomain    1
    Select From List By Value    id=bdrList    1
    Select From List By Value    id=packageId    0
    Close Window
