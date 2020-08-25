*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Variables ***
${browser}      chrome
${reg_url}      http://demo.guru99.com/test/newtours/register.php
${login_url}    http://demo.guru99.com/test/newtours/login.php

*** Keywords ***
Open reg browser
    open browser    ${reg_url}         ${browser}
    maximize browser window
Close my browser
    close all browsers
GO TO LOGIN
    go to    ${login_url}
Input Contact Information
    input text      ${first_name}   jack
    input text      ${last_name}    ma
    input text      ${phone_no}     8010124186
    input text      ${username}     admin
    sleep   3
Input Mailing Information
    input text      ${address}      house123
    input text      ${city}         ga
    input text      ${state}        haryan
    input text      ${pincode}      098765
    sleep           2
Input User Information
    input text      ${email}            raju@gmail.com
    input text      ${password}         1234
    input text      ${con_password}     1234
    sleep           3
Input my username
    [Arguments]     ${user1}
    input text      name:userName        ${user1}
Input my pass
    [Arguments]     ${pass1}
    input text      ${password}     ${pass1}
Click submit button
    click element   xpath://input[@type='submit']
Click on Logout
    click link      Logout