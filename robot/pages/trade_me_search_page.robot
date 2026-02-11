*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Keywords ***
Cars Search Input Should Be Ready
    Wait Until Page Contains Element    css=input.tm-refine-keywords__search-input-box    20s
    Scroll Element Into View            css=input.tm-refine-keywords__search-input-box

Wait For Search Results   
    Wait Until Page Contains Element    css=span.tm-motors-search-card-title__title    20s

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

Get Result Titles
    ${elements}=    Get WebElements    span.tm-motors-search-card-title__title
    ${titles}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Text    ${el}
        Append To List    ${titles}    ${text}
    END
    RETURN    ${titles}

At Least One Result Should Contain Term
    [Arguments]    ${term}

    ${titles}=    Get Result Titles
    ${found}=    Set Variable    False
    ${term_lower}=    Convert To Lower Case    ${term}

    FOR    ${title}    IN    @{titles}
        ${title_lower}=    Convert To Lower Case    ${title}
        ${contains}=    Evaluate    "${term_lower}" in """${title_lower}"""
        Run Keyword If    ${contains}    Set Variable    ${found}    True
    END

    Should Be True    ${found}