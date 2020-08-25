*** Settings ***
*** Variables ***

*** Test Cases ***
test1
    #use --include=some tag or -i tag for inclusion
    #use -e tag for exclusion
    #you can use both
    [tags]  recharge
    log to console      prepaid recharge
test2
    [tags]  recharge
    log to console      postpaid recharge
test3
    [tags]  social
    log to console      facebook login
test4
    [tags]  social
    log to console      instagram login
test5
    [tags]  twitter
    log to console      twitter login
*** Keywords ***

