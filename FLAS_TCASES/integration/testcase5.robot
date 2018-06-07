*** Settings ***
Library           String

*** Test Cases ***
Run-Keyword-If
    ${TYPE}=    Set Variable    V1
    Run Keyword If    '${TYPE}' == 'V1'    Log    Testing Variant 1
    Run Keyword If    '${TYPE}' == 'V2'    Log    Testing Variant 2
    Run Keyword If    '${TYPE}' == 'V3'    Log    Testing Variant 3
