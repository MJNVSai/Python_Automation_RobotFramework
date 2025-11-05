*** Settings ***
Library    SeleniumLibrary
# Library    XML

*** Variables ***
${url}    https://google.com/
${browser}    chrome
${shop}    https://www.flipkart.com/account/login?ret=/

*** Test Cases ***
InputBox_TestCase
    [Tags]    skip
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

    Input Text    xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[1]/div[1]/div[2]/textarea    Amazon
    Sleep    2
    
    # Click Button    xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[2]/div[4]/div[7]/center/input[1]
    # Sleep    2
    Click Button    name:btnK
    Sleep    10

    Clear Element Text    xpath:/html/body/span[1]/div/div/div/form/div[1]/div[1]/div[2]/div[1]/div[2]/textarea
    Sleep    2

    Input Text    xpath:/html/body/span[1]/div/div/div/form/div[1]/div[1]/div[2]/div[1]/div[2]/textarea    Facebook
    Click Button    xpath:/html/body/span[1]/div/div/div/form/div[1]/div[1]/div[2]/button
    Sleep    2

    Close Browser

InputValidation_TestCase
    Open Browser    ${shop}    ${browser}
    #Wait Until Page Contains    ${shop}
    #Location Should Be    ${shop}
    Maximize Browser Window
    Sleep    2

    Title Should Be    Online Shopping India | Buy Mobiles, Electronics, Appliances, Clothing and More Online at Flipkart.com

    # setting the input box xpath
    ${input_txt}    Set Variable    xpath:/html/body/div/div/div[3]/div/div[2]/div/form/div[1]/input
    Element Should Be Enabled    ${input_txt}
    Element Should Be Visible    ${input_txt}
    Sleep    3

    Input Text    ${input_txt}    sai@gmail.com
    Sleep    3

    Clear Element Text    ${input_txt}
    Sleep    3
    Close Browser



*** Keywords ***
