*** Settings ***
Library           String

*** Test Cases ***
component_1_task_3_subtask_1
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}
