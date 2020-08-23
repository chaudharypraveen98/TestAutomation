*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url1}      https://www.techlistic.com/p/demo-selenium-practice.html

*** Test Cases ***
GetAllLinkTest
    open browser    ${url1}     ${browser}
    #it will count the number of rows
    ${rows}=   get element count   xpath://table[@class='tsc_table_s13']//tbody//tr
    #it will count the number of columns
    ${columns}=   get element count   xpath://table[@class='tsc_table_s13']//thead//th
    log to console      ${rows}
    log to console      ${columns}
    ${data}=    get text    xpath://table[@class='tsc_table_s13']//tbody/tr[1]/td[2]
    log to console      ${data}
    table column should contain     xpath://table[@class='tsc_table_s13']   3   City
    table row should contain        xpath://table[@class='tsc_table_s13']   4   Financial Center
    table cell should contain       xpath://table[@class='tsc_table_s13']   2   4   829m
    table header should contain     xpath://table[@class='tsc_table_s13']   City
*** Keywords ***