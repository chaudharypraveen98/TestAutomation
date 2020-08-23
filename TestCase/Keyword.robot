*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${url2}     https://swisnl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
UserDefinedTest
    LaunchBrowser   ${url1}  ${browser}
    ${title_url}=   GetTitleInPage    ${url2}
    log to console  ${title_url}
    log     ${title_url}
    LaunchFacebook


*** Keywords ***
LaunchFacebook
    #without argument
    go to    https://www.facebook.com/
LaunchBrowser
    #with argument without return value
    [Arguments]     ${url1}  ${browser}
    open browser    ${url1}  ${browser}
    maximize browser window
GetTitleInPage
    #with argument with return value
    [Arguments]     ${url2}
    go to   ${url2}
    sleep   3
    ${page_title}=  get title
    [return]    ${page_title}