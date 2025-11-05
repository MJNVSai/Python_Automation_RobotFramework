*** Settings ***
Library    SeleniumLibrary
Resource    ../Automation_11/resources.robot
Library    DataDriver    file=../Automation_11/LoginData.xlsx    name_format=Login_{test_type}_{username}    
Suite Setup    Opening My Browser
Suite Teardown    Closing My Browser
#Test Template    Testing_Invalid_Login
Test Template    Run_Login_Test

*** Keywords ***
Testing_Invalid_Login
    [Arguments]    ${username}    ${password}
    Inputing UserName    ${username}
    Inputing Password    ${password}
    Click Login Button
    Error Message Should be Visible

Testing_Valid_Login
    [Arguments]    ${username}    ${password}
    Inputing UserName    ${username}
    Inputing Password    ${password}
    Click Login Button
    Dashboard Page Should Be Visible
    Capture Page Screenshot    DataDriveTest_Valid_Login_Pic.png
    Click Logout Button

# " ... " :=> this means line continuation in Robot Framework (it keeps the command on the same logical line).
Run_Login_Test
    [Arguments]    ${username}    ${password}    ${test_type}
    Run Keyword If    '${test_type}' == 'valid'    Testing_Valid_Login    ${username}    ${password}
    ...    ELSE    Testing_Invalid_Login    ${username}    ${password}


*** Test Cases ***
# LoginValidation_Test_Using_Excel    using    ${username}    and    ${password}

LoginValidation_Test_Using_Excel
    [Tags]    Data Driven Using Excel File
    Example@yourstore.com    username    invalid
