*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.instagram.com/reels/
${browser}    firefox

*** Test Cases ***
Google Test Case
    Open Browser    https://mjnvsai.github.io/Database-Management/    chrome
    Maximize Browser Window
    Capture Page Screenshot     TestCaseScrenShot_1.png
    Sleep    10
    Close Browser

FireFox Test Case
    insidefirefox

*** Keywords ***
insidefirefox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Capture Page Screenshot    TestCaseScrenShot_2.png
    Sleep    10
    Close Browser
