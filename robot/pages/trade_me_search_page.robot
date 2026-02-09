*** Settings ***
Library    SeleniumLibrary
Library    String

*** Keywords ***
Cars Search Input Should Be Ready
    Wait Until Page Contains Element    css=input.tm-refine-keywords__search-input-box    20s
    Scroll Element Into View            css=input.tm-refine-keywords__search-input-box

Type Cars Search Term
    [Arguments]    ${term}
    Click Element    css=input.tm-refine-keywords__search-input-box
    Clear Element Text    css=input.tm-refine-keywords__search-input-box
    Input Text    css=input.tm-refine-keywords__search-input-box    ${term}

Submit Cars Search
    Press Keys    css=input.tm-refine-keywords__search-input-box    ENTER

Search Result Should Match Term
    [Arguments]    ${term}

    ${current_url}=    Get Location
    ${url_lower}=      Convert To Lower Case    ${current_url}
    ${term_lower}=     Convert To Lower Case    ${term}

    Should Contain    ${url_lower}    ${term_lower}