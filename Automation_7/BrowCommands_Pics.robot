*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${url2}    https://tcs.com
${browser}    chrome

*** Keywords ***
BrowserCommands
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Set Selenium Speed    3

    Go To    ${url2}
    Go Back

GetScreenshot
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    Capture Element Screenshot    class:date-picker-box    DatePicker_Element.png
    Capture Page Screenshot    WebsitePageShot_1.png

    Close All Browsers

*** Test Cases ***
BrowserCommands_TestCase
    BrowserCommands

ScreenShot_TestCase
    GetScreenshot