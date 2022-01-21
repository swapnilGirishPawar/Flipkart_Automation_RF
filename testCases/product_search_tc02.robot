*** Settings ***
Library     SeleniumLibrary
Library     DataDriver
*** Variables ***
${Browser}  Chrome
${url}  https://www.flipkart.com/
*** Test Cases ***
search_product
    [Arguments]     ${products}
    open browser    ${url}  ${Browser}
    Search For Product  ${products}
    sleep   5
    Search For Product
    close browser


*** Keywords ***
LoginIntoApplication
    input text      xpath://*[@class='_2IX_2- VJZDxU']      pswapnil032@gmail.com
    input text      xpath://*[@class='_2IX_2- _3mctLh VJZDxU']      swapnil123
    click button    xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']
