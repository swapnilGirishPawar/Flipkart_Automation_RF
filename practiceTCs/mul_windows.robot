*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://demoqa.com/browser-windows
*** Test Cases ***
mul_bowser_handling
    open browser    ${url}      ${Browser}
    maximize browser window


    click element   id=windowButton
    sleep   2
    switch browser  2
    maximize browser window
    sleep       2
    close all browsers


*** Keywords ***
New Tab handling
    open browser    ${url}      ${Browser}
    click element   id=tabButton
    sleep       2

    sleep       2
    close all browsers
