*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}  https://www.flipkart.com/
*** Test Cases ***
search_product
    open browser    ${url}  ${Browser}
    LoginIntoApplication
    sleep   5
    close browser


*** Keywords ***
LoginIntoApplication
    input text      xpath://*[@class='_2IX_2- VJZDxU']      pswapnil032@gmail.com
    input text      xpath://*[@class='_2IX_2- _3mctLh VJZDxU']      swapnil123
    click button    xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']
