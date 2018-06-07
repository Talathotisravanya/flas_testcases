*** Settings ***
Library           String

*** Test Cases ***
component_2_task_3_subtask_3
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
    \    Log    ${RANDOM_STRING}
