*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${Loginurl}  https://www.flipkart.com/
${username_input_box}   xpath://*[@class='_2IX_2- VJZDxU']
${password_input_box}   xpath://*[@class='_2IX_2- _3mctLh VJZDxU']
${LogIn_button}         xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']
*** Keywords ***