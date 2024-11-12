*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com
${name}    Admin
${pass}    admin123

*** Keywords ***
Open Page
    Open Browser     ${url}    chrome
    Maximize Browser Window  

Login
    Wait Until Element Is Visible     xpath=//input[@name='username']    timeout=10
    Input Text   xpath=//input[@name='username']   ${name}   
    Sleep     2s
    Wait Until Element Is Visible    xpath=//input[@name='password']   timeout=10
    Input Password    xpath=//input[@name='password']  ${pass}
    Sleep     2s
    Click Button    xpath=//button[normalize-space()='Login']
    Sleep    5s
    Close Browser

*** Test Cases ***
Login Orange
    Open Page
    Login