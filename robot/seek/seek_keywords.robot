*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search job and validate result
    [Arguments]    ${job_title}    ${location}

    Wait Until Element Is Visible    name=keywords    timeout=15s
    Clear Element Text    name=keywords
    Input Text    name=keywords    ${job_title}

    Wait Until Element Is Visible    name=where    timeout=15s
    Clear Element Text    name=where
    Input Text    name=where    ${location}

    Wait Until Element Is Visible    xpath=//li[contains(., '${location}')]    timeout=10s
    Click Element    xpath=//li[contains(., '${location}')]

    Click Button    xpath=//button[@type="submit"]

    Wait Until Page Contains    ${job_title}    timeout=15s
    Sleep    10s