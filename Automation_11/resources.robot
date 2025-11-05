*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome

*** Keywords ***
Opening My Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    3

Closing My Browser
    Close All Browsers

Logging Into page
    Go To    ${URL}

Inputing UserName
    [Arguments]    ${username}
    Input Text    xpath://*[@id="Email"]    ${username}

Inputing Password
    [Arguments]    ${password}
    Input Text    xpath://*[@id="Password"]    ${password}

Click Login Button
    Click Element    class:button-1

Click Logout Button
    Click Link    xpath://*[@id="navbarText"]/ul/li[3]/a

Error Message Should be Visible
    Page Should Contain    Login was unsuccessful

Dashboard Page Should Be Visible
    Wait Until Page Contains    Dashboard    timeout=10s