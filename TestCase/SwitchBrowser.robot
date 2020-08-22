*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      https://www.google.com/
${url2}     https://www.bing.com/
*** Test Cases ***
ChangeBrrowser
    open browser    ${url1}  ${browser}
    maximize browser window

    set selenium speed  1 seconds
    sleep   3

    open browser    ${url2}  ${browser}
    maximize browser window

    switch browser      1
    ${title1}=  get title
    log to console  ${title1}
    sleep   1
    switch browser      2
    ${title2}=  get title
    log to console  ${title2}

    close all browsers

*** Keywords ***