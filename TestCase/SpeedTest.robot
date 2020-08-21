*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.facebook.com/

*** Test Cases ***
FaceForm
    open browser    ${url}  ${browser}
    maximize browser window
    ${speed}=   get selenium speed
    log to console  ${speed}
    set selenium speed  2seconds
    input text  id:email    username
    input text  id:pass     pass
    ${speed}=   get selenium speed
    log to console  ${speed}

*** Keywords ***