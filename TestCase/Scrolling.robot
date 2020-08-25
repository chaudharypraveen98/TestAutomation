*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      https://history.state.gov/countries/all

*** Test Cases ***
ScrollTest
    open browser    ${url1}  ${browser}
    maximize browser window
    set selenium speed  2 seconds
    scroll element into view   xpath://*[@id="content-inner"]/div/div[1]/div[9]/ul/li[2]/a
    go to   ${url1}
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)

*** Keywords ***