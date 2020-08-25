*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/LoginTravel.robot

*** Test Cases ***
Registration
    Open reg browser
    Input Contact Information
    Input Mailing Information
    Input User Information
    Click submit button
Login user
    GO TO LOGIN
    Input my username       raju@gmail.com
    Input my pass           1234
    Click submit button