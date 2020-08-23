*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot
Library  DataDriver     ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup     Open my browser
Suite Teardown  Close my browser
Test Template   Invalid Login

*** Variables ***
${browser}  chrome

*** Test Cases ***
LoginTestWithExcel using ${username} and ${pass}

*** Keywords ***
Invalid Login
    [arguments]         ${username}    ${pass}
    Input my username   ${username}
    Input my pass       ${pass}
    Click login button
    Unable to login

