*** Settings ***
Library           String

*** Test Cases ***
oneplus_project_testcase_two_component_two_automatable
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    : FOR    ${ELEMENT}      @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}
