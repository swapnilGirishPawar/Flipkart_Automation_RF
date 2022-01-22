*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${Loginurl}  https://www.flipkart.com/
${username_input_box}   xpath://*[@class='_2IX_2- VJZDxU']
${password_input_box}   xpath://*[@class='_2IX_2- _3mctLh VJZDxU']
${LogIn_button}         xpath://*[@class='_2KpZ6l _2HKlqd']
${search_bar_input}     xpath://*[@class ='_3704LK']
${searchButton}         xpath://*[@class='L0Z3Pu']
${firstProductinlist}   xpath://*[@class='_13oc-S']
${addtocart_button}     xpath://*[@class='_2KpZ6l _2U9uOA _3v1-ww']

*** Keywords ***
Open My Browser
    open browser    ${Loginurl}     ${Browser}
    maximize browser window

Close Browsers
    close all browsers

Input Username
    [Arguments]     ${username}
    input text      ${username_input_box}   ${username}

Input Password
    [Arguments]     ${password}
    input text      ${password_input_box}   ${password}

Click On Login Button
    click element   ${LogIn_button}

Home Screen
    page should contain     Search for products, brands and more

Search For Product
    [Arguments]     ${products}
    input text      ${search_bar_input}     ${products}

Search Button
    click element   ${searchButton}

Product Screen
    [Arguments]     ${products}
    page should contain     ${products}

First product
    click element       ${firstProductinlist}

Add to Cart
    click element       ${addtocart_button}

