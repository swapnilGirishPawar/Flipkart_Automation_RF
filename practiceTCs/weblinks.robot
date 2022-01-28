*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${Browser}  chrome
${url}     https://demo.guru99.com/test/newtours/

*** Test Cases ***

testcase
    getalllinks

*** Keywords ***

getalllinks
    open browser    ${url}      ${Browser}
    maximize browser window
    ${linkcount}=    get element count     xpath://a
    log to console  ${linkcount}

    @{linkitems}        create list
    FOR     ${i}    IN RANGE    1       ${linkcount}
    ${linktext}=    get text        xpath:(//a)[ ${i} ]
    log to console      ${linktext}
    END
    close browser