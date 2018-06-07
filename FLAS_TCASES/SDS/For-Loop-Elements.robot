*** Settings ***
Library           String

*** Test Cases ***
For-Loop-Elements
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}
