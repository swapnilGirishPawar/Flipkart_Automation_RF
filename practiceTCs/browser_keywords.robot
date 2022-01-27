*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://demoqa.com/browser-windows
*** Test Cases ***
testcase1
    open browser    https://www.google.com      Chrome
    ${location}=    get location
    log to console  first URL is = ${location}
    sleep   2
    go to       ${url}
    ${location}=    get location
    log to console  Second URL is = ${location}
    sleep   2
    go back
    ${location}=    get location
    log to console  Back to first URL is = ${location}
    sleep       2
    close browser


