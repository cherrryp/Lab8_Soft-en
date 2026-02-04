*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Website
    Open Browser To Login Page
    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    chrome
    ...    options=add_argument(--headless)
    ...    options=add_argument(--no-sandbox)
    ...    options=add_argument(--disable-dev-shm-usage)
    Maximize Browser Window
