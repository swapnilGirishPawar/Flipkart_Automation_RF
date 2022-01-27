*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://demo.guru99.com/test/newtours/
${url2}     https://demo.guru99.com/test/newtours/reservation.php
*** Test Cases ***
radio_and_drop_down_tc
    open browser    ${url2}     ${Browser}
    maximize browser window
#code for radio button selection
    select radio button     tripType    oneway
    select radio button     servClass   Business
#drop down selections
    select from list by value   fromPort    San Francisco
    select from list by label   airline     Unified Airlines








*** Keywords ***
Login
    input text      xpath://*[@name='userName']     admin
    input text      xpath://*[@name='password']     admin
    click element   xpath://*[@name='submit']