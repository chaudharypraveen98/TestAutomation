*** Settings ***
#it run starting of program
Suite Setup     log to console      opening browser
#it run after the all the test cases
Suite Teardown  log to console      closing browser
# ir run before ecah test case
Test Setup      log to console      welcome to test case
#it run after each test case
Test Teardown   log to console      logout out of test case

*** Variables ***

*** Test Cases ***
test1
    log to console      prepaid recharge
test2
    log to console      postpaid recharge
test3
    log to console      facebook login


*** Keywords ***

