*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Trade Me Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Trade Me Browser
    Close Browser
