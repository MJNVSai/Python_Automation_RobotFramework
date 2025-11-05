*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Keywords ***
TestingDropDownMenu
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    5

    # selecting the dropdown by dropdown label
    Select From List By Label    id:country    France

    # selecting the dropdown by dropdown label index value
    Select From List By Index    id:country    6

    # selecting the dropdown by dropdown value paramenter
    Select From List By Value    id:country    india

    Close All Browsers

TestingListBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    5

    # selecting the listbox by listbox label
    Select From List By Label    id:colors    Red

    # selecting the listbox by listbox label index value
    Select From List By Index    id:colors    4

    # selecting the listbox by listbox value paramenter
    Select From List By Value    id:colors    yellow

    Close All Browsers

*** Test Cases ***
Dropdown_TestCase
    TestingDropDownMenu

ListBox_TestCase
    TestingListBox

