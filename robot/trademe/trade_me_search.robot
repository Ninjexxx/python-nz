*** Settings ***
Library    SeleniumLibrary
Library    car_titles.py

*** Variables ***
${URL}    https://www.trademe.co.nz/
${BROWSER}    chrome

*** Test Cases ***
Search For Car On Trade Me Using Python Data
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    ${terms}=    Get Search Terms
    ${car}=    Set Variable    ${terms}[0]

    Wait Until Element Is Visible    id=search
    Input Text    id=search    ${car}
    Press Keys    id=search    ENTER

    Wait Until Page Contains    ${car}

    Sleep    5s