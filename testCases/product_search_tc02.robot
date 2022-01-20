*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}  https://www.flipkart.com/
*** Test Cases ***
search_product

*** Keywords ***
LoginIntoApplication
    input text      xpath://*[@class='_2IX_2- VJZDxU']      pswapnil032@gmail.com
    input text      xpath://*[@class='_2IX_2- _3mctLh VJZDxU']      swapnil123
    click button    xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']