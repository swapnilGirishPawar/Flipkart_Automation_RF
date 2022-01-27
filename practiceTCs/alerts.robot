*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://demoqa.com/alerts
*** Test Cases ***
testcase
    #alertbutton1
    #alertbutton2
    #alertbutton3
    #alertbutton4


    close browser

*** Keywords ***
browser_open
    open browser    ${url}      ${Browser}
    maximize browser window

alertbutton1
     browser_open
     click element      id:alertButton
     sleep      2
     handle alert       ACCEPT
     sleep      2

alertbutton2
    browser_open
    click element       id:timerAlertButton
    sleep       6
    handle alert        ACCEPT
    sleep       2

alertbutton3
    browser_open
    click element      id:confirmButton
    sleep   2
    handle alert        DISMISS
    sleep   2

alertbutton4
    browser_open
    click element      id:promtButton
    sleep   2
    input text into alert       Hello World !       ACCEPT
    sleep   3
