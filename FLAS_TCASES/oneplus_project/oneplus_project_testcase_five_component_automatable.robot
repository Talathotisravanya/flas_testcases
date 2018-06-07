*** Settings ***
Library           String

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
oneplus_project_testcase_five_component_automatable
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}
