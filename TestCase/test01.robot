*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://www.facebook.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    input text  id:email    username
    input text  id:pass     password
    click element    xpath://button[@type="submit"]