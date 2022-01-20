*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${Loginurl}  https://www.flipkart.com/
${username_input_box}   xpath://*[@class='_2IX_2- VJZDxU']
${password_input_box}   xpath://*[@class='_2IX_2- _3mctLh VJZDxU']
${LogIn_button}         xpath://*[@class='_2KpZ6l _2HKlqd

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