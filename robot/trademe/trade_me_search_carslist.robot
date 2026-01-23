*** Settings ***
Library    SeleniumLibrary
Library    car_titles.py
Resource   trade_me_keywords.robot

*** Variables ***
${URL}    https://www.trademe.co.nz/
${BROWSER}    chrome

*** Test Cases ***
Search For Car List On Trade Me Using Python Data
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    ${cars}=    Get Search Terms

    FOR    ${car}    IN    @{cars}
    Searching cars on Trade Me New Zealand    ${car}
    END