*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.seek.co.nz/
${BROWSER}      chrome
@{CARGOS}       QA Automation    Python    ServiceNow

*** Test Cases ***
Pesquisar Varios Cargos no Seek
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    FOR    ${cargo}    IN    @{CARGOS}
        Pesquisar Cargo E Validar    ${cargo}
    END

*** Keywords ***
Pesquisar Cargo e Validar
    [Arguments]    ${cargo_da_vez}
    Log To Console    \nProcessando: ${cargo_da_vez}

    Wait Until Element Is Visible    name=keywords    timeout=15s
    Clear Element Text    name=keywords
    Input Text    name=keywords    ${cargo_da_vez}
    Press Keys    name=keywords    ENTER

    Sleep    3s

    Run Keyword And Ignore Error    Wait Until Page Contains    ${cargo_da_vez}
    Capture Page Screenshot    vagas_${cargo_da_vez}.png
    Go To    ${URL}