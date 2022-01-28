*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}     https://www.google.com
*** Test Cases ***
lOOPS
    #forloop
    #forloop2
    #forloopwithlist
    #forloopwithnamelist1
    #forloopwithnamelist2
    Loopwithexitcondition


*** Keywords ***
forloop
    # for(int i from i to 10)
    FOR   ${i}    IN RANGE    1   10
    LOG TO CONSOLE  ${i}
    END

forloop2
    FOR     ${j}    IN    7  6  5  4  3  2  1
    log to console  ${j}
    END

forloopwithlist
    # create list method
    @{items}    create list     1       2       3       4       5
    FOR     ${k}    IN      @{items}
    Log to console  ${k}
    END

forLoopWithNamesList1
    FOR     ${m}    IN    swapnil       girish      pawar
    log to console  ${m}
    END

forloopwithnamelist2
    # create list method
    @{items}    create list     swapnil       girish      pawar
    FOR     ${k}    IN      @{items}
    Log to console  ${k}
    END

Loopwithexitcondition
    @{items}    create list     1       2       3       4       5
    FOR     ${k}    IN      @{items}
    Log to console  ${k}
    EXIT FOR LOOP IF    ${K}==3
    END