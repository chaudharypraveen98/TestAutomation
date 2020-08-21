*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.facebook.com/

*** Test Cases ***
FaceForm
    open browser    ${url}  ${browser}
    #the default timeout is 5 seconds
    ${default_timeout}=     get selenium timeout
    log to console  ${default_timeout}
    set selenium timeout    10 seconds
    wait until page contains   Praveen
    input text  id:email    username
    input text  id:pass     pass
    ${speed}=   get selenium speed
    log to console  ${speed}

*** Keywords ***