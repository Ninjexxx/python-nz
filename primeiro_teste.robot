*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.immigration.govt.nz/
${BROWSER}  chrome

*** Test Cases ***
Abrir Site da Imigracao NZ
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    New Zealand Immigration | New Zealand Immigration
    Close Browser