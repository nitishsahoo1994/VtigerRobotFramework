*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObject/Locator.py

*** Keywords ***
Click on Organisation
    Click Element    ${organisation_button}    