*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Website
    Open Browser To Login Page
    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    chrome
    ...    options=--headless
    ...    options=--no-sandbox
    ...    options=--disable-dev-shm-usage
