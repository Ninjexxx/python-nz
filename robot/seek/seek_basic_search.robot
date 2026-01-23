*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://www.seek.co.nz/
${BROWSER}    chrome
@{CARGO}       QA Automation

*** Test Cases ***
Searching QA Automation job opportunities
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text                 name=keywords    @{CARGO}
    Press Keys    name=keywords    ENTER
    Wait Until Page Contains    QA Automation
    Capture Page Screenshot
    Sleep    10s