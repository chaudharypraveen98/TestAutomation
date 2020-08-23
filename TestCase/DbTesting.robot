*** Settings ***
Library  OperatingSystem
Library  DatabaseLibrary
Suite Setup         Connect To DataBase     pymysql     ${DBName} ${DBUser} ${DBPass} ${DBHost} ${DBPort}
Suite Teardown      Disconnect From DataBase

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.01
${DBPort}       3306
*** Test Cases ***
Create Person Table
    ${output}=      Execute SQL String      Create table person(id integer,first_name varchar(20),last_name varchar(20))
    log to console      ${output}
    should be equal to strings      ${output}   None

*** Keywords ***

