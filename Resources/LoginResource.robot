*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Keywords ***
Open my browser
    open browser    ${url1}         ${browser}
    maximize browser window
Close my browser
    close all browsers
Input my username
    [Arguments]     ${username}
    input text      id:Email        ${username}
Input my pass
    [Arguments]     ${pass}
    input text      id:Password     ${pass}
Click login button
    click element   xpath://input[@type='submit']
Unable to login
    page should contain     Login was unsuccessful
Click on Logout
    click link      Logout
Dashboard visible
    page should contain     Dashboard