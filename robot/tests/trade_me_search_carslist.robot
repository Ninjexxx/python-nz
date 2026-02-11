*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/trade_me_actions.robot
Resource    ../pages/trade_me_search_page.robot
Resource   ../keywords/common_browser.robot
Library     ../../python/data/car_titles.py

Suite Setup     Open Trade Me Browser    ${URL}    ${BROWSER}
Suite Teardown  Close Trade Me Browser

*** Variables ***
${URL}      https://www.trademe.co.nz/a/motors/cars
${BROWSER}  chrome

*** Test Cases ***
Search Cars Using Python Data
    [Tags]    smoke    regression    trademe

    ${cars}=    Get Smoke Search Terms
    FOR    ${car}    IN    @{cars}
        Search For Car Brand    ${car}
    END