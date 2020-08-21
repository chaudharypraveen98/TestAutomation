*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://www.spotify.com/uk/signup/

*** Test Cases ***
RadioSelect
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    #selecting radio button
    ${"gender_element"}     set variable    gender
    select radio button     gender      male
    #selecting the checkboxes
    #unselect radio button gender  male

*** Keywords ***