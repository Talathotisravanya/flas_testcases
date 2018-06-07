*** Settings ***
Library           String

*** Test Cases ***
component_1_task_2_subtask_2
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log    Do more actions here ...
