*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Searching cars on Trade Me New Zealand
    [Arguments]    ${car}
    Wait Until Element Is Visible    id=search    timeout=15s
    Clear Element Text    id=search
    Input Text    id=search    ${car}
    Press Keys    id=search    ENTER
    Wait Until Page Contains        ${car}
    Sleep                            3s
