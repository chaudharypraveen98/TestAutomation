*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}     https://www.facebook.com/

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    title should be     Facebook – log in or sign up
    ${"input_element"}    set variable   id:email
    element should be visible   ${"input_element"}
    element should be enabled   ${"input_element"}
    #element should be enabled   ${"input_element"} this is the negative condition
    input text  ${"input_element"}    username
    sleep   5
    clear element text    ${"input_element"}
    sleep   3
    close browser

*** Keywords ***