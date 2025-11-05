*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
SpeedTest_Case
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${speed}    Get Selenium Speed
    Log To Console    Initial Speed : ${speed}

    Set Selenium Speed    3
    Input Text    id:name    mjnvsai
    Input Text    id:email    mj@gmail.com
    Select Radio Button    gender    male

    ${speed}    Get Selenium Speed
    Log To Console    Final Speed : ${speed}

TimeOut_TestCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # The Deafult Timeout is 5seconds but we can customize to make 10 or any number of seconds. so, that if error it will that much time.
    Set Selenium Timeout    10

    Wait Until Page Contains    Cypress45
    # replace with Cypress45 with Cypress

Implicit_Wait_TestCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Set Selenium Implicit Wait    10

    ${wait}    Get Selenium Implicit Wait
    Log To Console    Implicit Wait value : ${wait}

    Input Text    id:name23    mjnvsai
    Input Text    id:email    mj@gmail.com
    Select Radio Button    gender    male

    Close All Browsers

