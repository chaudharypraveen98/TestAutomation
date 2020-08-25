*** Settings ***
Library  SeleniumLibrary
Library    Collections
*** Variables ***
${browser}  chrome
${url1}      https://www.youtube.com/

*** Test Cases ***
GetAllLinkTest
    open browser    ${url1}     ${browser}
    #it will count the number of links present on the page
    ${link_count}=   get element count   xpath://a
    ${all_links}=   create list
    FOR   ${i}    IN RANGE   1   ${link_count}
        ${link}=    get text    xpath:(//a)[${i}]
        append to list  ${all_links}  ${link}
    END
    log     ${all_links}
    close browser
*** Keywords ***