*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${Loginurl}  https://www.flipkart.com/
${username_input_box}   xpath://*[@class='_2IX_2- VJZDxU']
${password_input_box}   xpath://*[@class='_2IX_2- _3mctLh VJZDxU']
${LogIn_button}         xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']

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

Error Message
    page should contain     Your username or password is incorrect

Clear Fields
    clear element text      xpath://*[@class='_2IX_2- _3umUoc _2LYh3d VJZDxU']
    clear element text      xpath://*[@class='_2IX_2- _3umUoc _3mctLh VJZDxU']