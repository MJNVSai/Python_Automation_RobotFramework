*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.meesho.com/
${url2}    https://www.flipkart.com/
${browser}    chrome

*** Keywords ***
launchingBrowser
    [Arguments]    ${weburl}    ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    Set Selenium Speed    4
    ${title}    Get Title
    [Return]    ${title}

SelectMobileSection
    Click Link    xpath://*[@id="container"]/div/div[1]/div/div/div/div/div/div/div/div/div/div[2]/div[1]/div/div[1]/div/div/div/div/div[1]/a[2]
    Close All Browsers

*** Test Cases ***
FlipkartSite
    ${SiteTitle}    launchingBrowser    ${url2}    ${browser}

    Log To Console    Website page Title : ${SiteTitle}
    # We Can Directly Log the variable value in to the log or test reports.
    Log    Website page Title in Log Report : ${SiteTitle}

    SelectMobileSection
