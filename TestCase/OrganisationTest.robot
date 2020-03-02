*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resource/HomeKeyword.robot
Resource    ../Resource/LoginKeyword.robot
Resource    ../Resource/OrganisationKeyword.robot
Suite Setup    Open My Browser    ${url}    ${browser}
Suite Teardown    Close My browser
Test Setup    Login Process    ${username}    ${password}
Test Teardown    Logout Process

*** Variables ***
${url}    http://localhost:8888/
${browser}    Chrome
${username}    admin
${password}    admin
${organisationName}    TestYantra

*** Test Cases ***
Create Organisation
    Click on Organisation
    Click On add Button
    Enter Organisation Name    ${organisationName}
    Click On Save Button
    

