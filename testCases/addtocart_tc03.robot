*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/addtocart_resources.robot

#Suite Setup     Open My Browser
#Suite Teardown  Close Browsers

Test Template       Search the product

*** Variables ***
${Browser}  Chrome
${url}  https://www.flipkart.com/

*** Test Cases ***      ${products}
SearchProduct1          Bletooth Headphone


*** Keywords ***
LoginIntoApplication
    input text      xpath://*[@class='_2IX_2- VJZDxU']      pswapnil032@gmail.com
    input text      xpath://*[@class='_2IX_2- _3mctLh VJZDxU']      Charlie@12321
    click button    xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']
    sleep           2

Search the product
    [Arguments]             ${products}
    set selenium implicit wait      30
    open my browser
    LoginIntoApplication
    Search For Product      ${products}
    Search Button
    #Product Screen          ${products} # Assertion
    sleep       2
    click element    xpath://*[contains(text(),'boAt Rockerz 255F Pro+ Bluetooth Headset')]
    #First product  # this will open new tab
    Add to Cart
    sleep               2
    close all browsers
