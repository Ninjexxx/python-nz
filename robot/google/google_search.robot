*** Settings ***
Library    SeleniumLibrary
Resource    google_keywords.robot

*** Test Cases ***
Validating Google Search
    Open Browser    https://www.google.com    chrome
    Input Text    name=q   text= Robot Framework
    Press Keys    name=q    ENTER
    Maximize Browser Window
    Wait Until Page Contains    Robot Framework