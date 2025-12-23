*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://www.seek.co.nz/
${BROWSER}     chrome
${USER_DATA}    --user-data-dir=C:\\Users\\arthu\\AppData\\Local\\Google\\Chrome\\User Data
${CARGO}     QA Automation

*** Test Cases ***
Pesquisar vaga no SEEK NZ
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text                 name=keywords    ${CARGO}
    Click Element   xpath=//body
    Wait Until Page Contains    QA Automation    timeout=15s
    Capture Page Screenshot