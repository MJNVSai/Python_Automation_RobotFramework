*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://en.wikipedia.org/wiki/Main_Page
${browser}    chrome
${url2}    https://testautomationpractice.blogspot.com/
${url3}    https://demo.automationtesting.in/Static.html

*** Keywords ***
WebScrolling
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    4

    # to scroll an webpage we need to deal with javascript.
    # 0 : scroll horizantally upto 0px, 1500 : scroll vertically upto 1500px
    Execute Javascript    window.scrollTo(0,1500)

    # It Will Scroll the webpage until it finds the element with this xpath
    Scroll Element Into View    xpath://*[@id="mp-dyk"]/div[1]/div/span/a/img

    # to scroll the webpage upto the end of the footer or end of the page.
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    # to scroll the webpage from bottom to the top of the page
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)

    Close All Browsers

Right_Double_Clicks
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    # for right click on an element we use "open context menu"
    Open Context Menu    xpath://*[@id="alertBtn"]

    # for double lciking on element
    Double Click Element    xpath:/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[3]/div/aside/div/div[7]/div[1]/button

    Capture Element Screenshot    xpath://*[@id="HTML10"]    DoubleClickCheck.png

    Close All Browsers

DragDropBox
    Open Browser    ${url3}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    4

    # which element to be dragged get that element xpath and in which box it should get dropped get that box or div box's xpath's

    Drag And Drop    xpath://*[@id="angular"]    xpath://*[@id="droparea"]
    Drag And Drop    xpath://*[@id="mongo"]    xpath://*[@id="droparea"]
    Drag And Drop    xpath://*[@id="node"]    xpath://*[@id="droparea"]

    Close All Browsers


*** Test Cases ***
ScrollingPage_TestCase
    WebScrolling

MouseActions
    Right_Double_Clicks

DragDrop_Testcase
    DragDropBox