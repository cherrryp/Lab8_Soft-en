*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser KKU Page
    [Documentation]    Test case for Jenkins headless execution
    Open Browser KKU Page
    Page Should Contain    College of Computing
    Capture Page Screenshot
    [Teardown]    Close Browser

*** Keywords ***
Open Browser KKU Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path='/usr/bin/chromedriver')    sys, selenium.webdriver.chrome.service

    Create Webdriver    Chrome    options=${options}    service=${service}
    Go To    https://computing.kku.ac.th

