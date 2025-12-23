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
        Log To Console    \nIniciando busca para: ${cargo}
        Wait Until Element Is Visible    name=keywords    timeout=15s
        Clear Element Text    name=keywords
        Input Text            name=keywords    ${cargo}
        Press Keys         name=keywords    ENTER
        Sleep    5s
        Wait Until Page Contains    ${cargo}    timeout=15s
        Log To Console    Sucesso: Vagas para ${cargo} encontradas!
        Capture Page Screenshot    vagas_${cargo}.png
        Go To    ${URL}
    END