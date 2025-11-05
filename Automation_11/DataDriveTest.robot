*** Settings ***
Library    SeleniumLibrary
Resource    D:\\VenkatSai\\Python_RobotFramework_Learn\\robotLearn1\\Automation_11\\resources.robot
Suite Setup    Opening My Browser
Suite Teardown    Closing My Browser
Test Template    Testing_Invalid_Login
#Test Template    Testing_Valid_Login

*** Test Cases ***    username    password
Right User Wrong Password    admin@yourstore.com    xyz
Wrong User Right Password    admin123456@yourstore.com    admin
Right User Empty Password    admin@yourstore.com    ${EMPTY}
Empty User Right Password    ${EMPTY}    admin
Wrong User Wrong Password    sai@yourstore.com    abcdfgh

Right_Login
    [Template]    Testing_Valid_Login
    admin@yourstore.com    admin


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
    Capture Page Screenshot    Valid_Login_Pic.png
    Click Logout Button