*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.facebook.com/

*** Test Cases ***
ScreenCapture
    open browser    ${url}  ${browser}
    sleep   3
    #the default directory to save is project directory itself
    input text  id:email    username
    input text  id:pass     pass
    capture element screenshot      xpath:/html/body/div[1]/div[2]/div[1]/div/div/div/div[1]/div[1]/img     logo.png
    capture page screenshot     page.png

*** Keywords ***