*** Settings ***
Library           String

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2ibrary==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_task_1_subtask_1
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}
