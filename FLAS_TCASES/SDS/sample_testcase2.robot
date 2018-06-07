*** Settings ***
Library           String

*** Test Cases ***
sample_testcase2
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}


