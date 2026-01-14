*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Validating Google Search
    Open Browser    https://www.google.com    chrome
    Input Text    name=q   text= Robot Framework
    Press Keys    name=q    ENTER
    Wait Until Page Contains    Robot Framework