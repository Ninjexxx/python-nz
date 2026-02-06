*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Trade Me Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Searching cars on Trade Me New Zealand
    [Arguments]    ${car}

    Wait Until Element Is Visible    css=input[type="search"]    10s
    Wait Until Element Is Enabled    css=input[type="search"]    10s

    Click Element    css=input[type="search"]
    Clear Element Text    css=input[type="search"]
    Input Text    css=input[type="search"]    ${car}

    ${old_url}=    Get Location
    Press Keys    css=input[type="search"]    ENTER

    Wait Until Keyword Succeeds    10x    2s
    ...    Should Not Be Equal    ${old_url}    Get Location

    Wait Until Page Contains    ${car}    15s

Close Trade Me Browser
    Close Browser