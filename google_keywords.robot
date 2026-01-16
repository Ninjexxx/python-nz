*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Validating Google Search result
    [Arguments]    ${search_term}
    Input Text    name=q    ${search_term}
    Press Keys    name=q    ENTER
    Wait Until Page Contains    ${search_term}