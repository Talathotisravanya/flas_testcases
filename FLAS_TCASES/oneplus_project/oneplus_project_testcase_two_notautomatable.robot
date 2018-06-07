*** Settings ***
Library           String

*** Test Cases ***
oneplus_project_testcase_two_notautomatable
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log    Do more actions here ...
