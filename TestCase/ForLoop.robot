*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoopTest
    # this will print for loop excluding last value
    FOR   ${i}    IN RANGE   1     11
        log to console  ${i}
    END

    #this will print value in next line each because each value contains tab between them
    FOR     ${j}    IN  1   2   3   4   5
        log to console  ${j}
    END

    #this will print values in a single line
    FOR     ${j}    IN  1 2 3 4 5
        log to console  ${j}
    END

    # this will create a list and print values using for loop
    @{name_list} =     Create List     rahul   praveen
    FOR     ${name}     IN  @{name_list}
        log to console  ${name}
    END
FORINTEST
    #this will enumerate the list
    @{product_list}=     Create List    pencil  eraser
    FOR     ${serial}   ${names}     IN ENUMERATE    @{product_list}
        log to console    ${serial} ${names}
    END
*** Keywords ***