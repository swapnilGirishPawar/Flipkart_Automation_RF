*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/addtocart_resources.robot

*** Variables ***
${Browser}  Chrome
${url}     https://www.flipkart.com/

*** Test Cases ***
LoginTc01
        open browser    ${url}      ${Browser}
        Switch Tab


