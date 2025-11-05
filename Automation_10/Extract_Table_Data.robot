*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
tableValidation
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    ${rows}    Get Element Count    xpath://*[@id="taskTable"]/tbody/tr
    ${columns}    Get Element Count    xpath://*[@id="headers"]/th

    Log To Console    No.of Rows in a Table : ${rows}
    Log To Console    No.of Columns in a Table : ${columns}

    Log    No.of Rows in a Table : ${rows}
    Log    No.of Columns in a Table : ${columns}

    ${data}    Get Text    xpath://*[@id="rows"]/tr[4]/td[3]
    ${data2}    Get Text    xpath://*[@id="rows"]/tr[4]/td[1]
    ${data3}    Get Text    xpath://*[@id="headers"]/th[3]
    Log To Console    ${data3} of ${data2} : ${data}
    Log    ${data3} of ${data2} : ${data}

TableDataCheck
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2

    Table Column Should Contain    xpath://*[@id="HTML1"]/div[1]/table    2    Author
    Table Row Should Contain    xpath://*[@id="HTML1"]/div[1]/table    6    2000
    Table Cell Should Contain    xpath://*[@id="HTML1"]/div[1]/table    3    2    Mukesh

    #Table Header Should Contain    xpath://*[@id="HTML1"]/div[1]/table    BookTable

    Close All Browsers