*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.facebook.com/

*** Test Cases ***
FaceForm
    open browser    ${url}  ${browser}
    #the default implicit wait is 0 seconds
    # implicit wait is the error thrown when no such element is found
    ${implicit_wait}=     get selenium implicit wait
    log to console  ${implicit_wait}
    set selenium implicit wait    10 seconds
    ${implicit_wait}=     get selenium implicit wait
    log to console  ${implicit_wait}
    input text  id:email1    username
    input text  id:pass     pass
    ${speed}=   get selenium speed
    log to console  ${speed}

*** Keywords ***