*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}     https://www.flipkart.com/
*** Test Cases ***
Login
    open browser    ${url}      ${Browser}
