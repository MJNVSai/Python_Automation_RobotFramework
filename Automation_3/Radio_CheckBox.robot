*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
RadioButton_CheckBox_TestCase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2

    # selecting the radio buttions
    Select Radio Button    gender    male
    Select Radio Button    gender    female
    Select Radio Button    gender    male

    # selecting check boxes
    Select Checkbox    id:tuesday
    Select Checkbox    id:wednesday
    Unselect Checkbox    id:tuesday

    Close Browser

*** Keywords ***
