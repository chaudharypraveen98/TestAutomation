*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${url2}     https://swisnl.github.io/jQuery-contextMenu/demo.html
${url3}     http://testautomationpractice.blogspot.com/
*** Test Cases ***
MouseTest
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep   2

    # drag and drop
    drag and drop   id:box5  id:box101

    # right click or context menu
    sleep   2
    go to   ${url2}
    open context menu   xpath:/html/body/div/section/div/div/div/p/span

    #double click
    sleep   2
    go to   ${url3}
    double click element    xpath://*[@id="HTML10"]/div[1]/button

*** Keywords ***