*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Headless Chrome
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path='/usr/bin/chromedriver')    sys, selenium.webdriver.chrome.service

    Create Webdriver    Chrome    options=${options}    service=${service}

*** Test Cases ***
Verify KKU Computing Page
    [Documentation]    Test case for Jenkins headless execution
    Open Headless Chrome
    Go To    https://computing.kku.ac.th
    Page Should Contain    College of Computing
    Capture Page Screenshot
    [Teardown]    Close Browser