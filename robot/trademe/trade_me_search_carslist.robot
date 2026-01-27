*** Settings ***
Library    SeleniumLibrary
Library    ../../python/data/car_titles.py
Resource   trade_me_keywords.robot

Suite Setup    Open Trade Me Browser    ${URL}    ${BROWSER}
Suite Teardown  Close Trade Me Browser

*** Variables ***
${URL}    https://www.trademe.co.nz/
${BROWSER}    chrome

*** Test Cases ***
Search For Car List On Trade Me Using Python Data
    [Tags]    smoke    trademe    search
    ${cars}=    Get Search Terms

    FOR    ${car}    IN    @{cars}
        Searching cars on Trade Me New Zealand    ${car}
    END