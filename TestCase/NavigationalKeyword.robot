*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      https://www.google.com/
${url2}     https://www.bing.com/
*** Test Cases ***
NavTest
    open browser    ${url1}  ${browser}
    set selenium speed  1 seconds
    maximize browser window

    # get location means get url
    ${loc}=     get location
    log to console  ${loc}

    go to    ${url2}
    ${loc}=     get location
    log to console  ${loc}

    go back
    ${loc}= get location
    log to console  ${loc}

*** Keywords ***