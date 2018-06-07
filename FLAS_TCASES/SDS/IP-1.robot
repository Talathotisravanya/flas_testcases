*** Settings ***
Library           String

*** Variables ***
${IP-1}           {softwares:['myaql','python']}

*** Test Cases ***
TC1
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}
