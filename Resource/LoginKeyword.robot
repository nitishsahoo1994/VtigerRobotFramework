*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locator.py

   
*** Keywords ***
Open My Browser
    [Arguments]    ${siteUrl}    ${siteBrowser}
    Open Browser    ${siteUrl}    ${siteBrowser}
    Maximize Browser Window
    Set Browser Implicit Wait    10 seconds
    
Login Process
    [Arguments]    ${username}    ${password}
    Input Text    ${text_username}    ${username}
    Input Text    ${text_password}    ${password}
    Click Element    ${loginButton}

Logout Process
    Mouse Over    ${adminstrator}
    Click Element    ${logoutButton}          
    
Close My browser
    Close Browser
       
    