*** Settings ***
Library           String

*** Test Cases ***
oneplus_project_testcase_four_component_automatable
    ${TYPE}=    Set Variable    V1
    Run Keyword If    '${TYPE}' == 'V1'    Log    Testing Variant 1
    Run Keyword If    '${TYPE}' == 'V2'    Log    Testing Variant 2
    Run Keyword If    '${TYPE}' == 'V3'    Log    Testing Variant 3
