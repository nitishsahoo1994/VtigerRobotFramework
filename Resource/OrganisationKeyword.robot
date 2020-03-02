*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObject/Locator.py

*** Keywords ***
Click On add Button
    Click Element    ${add_organisation_button}    
         
Enter Organisation Name
    [Arguments]    ${organisationName}
    Input Text    ${text_organisation_name}    ${organisationName}    
    
Click On Save Button
    Click Element    ${save_button}  
    
Click On Organisation After Pass Data
    Click Element    ${organisation_button}      