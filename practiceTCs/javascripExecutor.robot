*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}     https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
javascriptExecutor
    #scrollbyvalue
    #scrollintoview
    scrollintoendofpage
    close browser

*** Keywords ***
browser
    open browser    ${url}      ${Browser}
    maximize browser window

scrollbyvalue
    browser
    execute javascript  window.scrollTo(0,1500)
    sleep   2

scrollintoview
    browser
    sleep   2
    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    sleep   2

scrollintoendofpage
    browser
    sleep   2
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    sleep   2