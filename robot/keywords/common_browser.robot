*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Trade Me Browser
    [Arguments]    ${url}    ${browser}

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys

    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size\=1920,1080

    Create Webdriver    Chrome    options=${options}
    Go To    ${url}

Close Trade Me Browser
    Close Browser
