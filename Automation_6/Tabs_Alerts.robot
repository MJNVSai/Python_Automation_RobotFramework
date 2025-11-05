*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://robotframework.org/
${browser}    chrome
${url2}    https://testautomationpractice.blogspot.com/

*** Keywords ***
HandleCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    Click Link    xpath://*[@id="app"]/div[5]/div[5]/div[2]/div[3]/div[2]/a[59]
    Switch Window    Robot Framework
    Close Window
    Close Browser

HandleAlerts
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    Click Button    id:confirmBtn
    #Alert Should Not Be Present    I am an alert box
    Handle Alert    ACCEPT

    Click Button    id:confirmBtn
    #Alert Should Be Present    Press a button!
    Handle Alert    action=DISMISS

    Close Browser


*** Test Cases ***
HandlingTabs_TestCase
    HandleCase

HandlingAlertBoxs_TestCase
    HandleAlerts

