*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Dropdown
    open browser    ${url}  ${browser}
    maximize browser window
    # label can be id or label of the menu
    select from list by label   continents  Europe
    sleep   3
    select from list by index   continents  6
    # you can even select by value
    #select from list by value   continents  Europe

    sleep   3
    select from list by label   selenium_commands   Wait Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep   2
    unselect from list by label   selenium_commands   WebElement Commands

*** Keywords ***