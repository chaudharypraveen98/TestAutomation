*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://ui.vision/demo/tabs

*** Test Cases ***
NewTabOpen
    open browser    ${url}  ${browser}
    click element   xpath://*[@id="content"]/div[2]/div/p[2]/a
    select window   title=*1* TAB1
    input text      id:sometext1    hello

*** Keywords ***