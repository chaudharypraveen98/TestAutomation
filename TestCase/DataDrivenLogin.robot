*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot
Suite Setup     Open my browser
Suite Teardown  Close my browser
Test Template   Invalid Login

*** Variables ***
${browser}  chrome

*** Test Cases ***      username                password
Wrong pass right user   admin@yourstore.com     12345
Right pass wrong user   asdfg@gmail.com         admin
Empty pass wrong user   asdfg@gmail.com         ${EMPTY}
Right pass empty user   ${EMPTY}                ${EMPTY}

*** Keywords ***
Invalid Login
    [arguments]         ${username}    ${pass}
    Input my username   ${username}
    Input my pass       ${pass}
    Click login button
    Unable to login

