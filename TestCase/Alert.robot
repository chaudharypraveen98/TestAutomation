*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.seleniumeasy.com/test/javascript-alert-box-demo.html

*** Test Cases ***
AlertShow
    open browser    ${url}  ${browser}
    set selenium speed  1 seconds
    click element   xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/button
    handle alert    accept
    click element   xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/button
    handle alert    dismiss
    #we can use "handle alert    leave" to do nothing
    click element   xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/button
    alert should be present     Press a button!
    close all browsers

*** Keywords ***