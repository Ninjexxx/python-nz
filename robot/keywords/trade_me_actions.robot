*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/trade_me_search_page.robot

*** Keywords ***
Search For Car Brand
    [Arguments]    ${car}

    Cars Search Input Should Be Ready

    ${old_url}=    Get Location
    Type Cars Search Term    ${car}
    Submit Cars Search

    Wait Until Keyword Succeeds    10x    2s
    ...    Should Not Be Equal    ${old_url}    Get Location
