*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resource/LoginKeyword.robot
Suite Setup    Open My Browser    ${url}    ${browser}
Suite Teardown    Close My browser

*** Variables ***
${url}    http://localhost:8888/
${browser}    Chrome
${username}    admin
${password}    admin


*** Test Cases ***
Login Test    
    Login Process    ${username}    ${password}
    Logout Process
    
