*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://www.facebook.com/

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    close browser
    #close all browsers

*** Keywords ***