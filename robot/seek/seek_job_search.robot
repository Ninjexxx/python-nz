*** Settings ***
Library    SeleniumLibrary
Resource    seek_keywords.robot

*** Variables ***
${URL}    https://www.seek.co.nz/
${BROWSER}    chrome
${CARGO}    QA Automation

*** Test Cases ***
Search for QA Automation job in Christchurch
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Search job and validate result    QA Automation    Christchurch
