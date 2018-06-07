*** Settings ***
Variables         ../../modified_file.yaml

*** Test Cases ***
TC_1
    Run Keyword    log

TC_2

sample
    LOg    ${configurations}
