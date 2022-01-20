*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/login_resources.robot

Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login
Test Template   Valid Login


*** Test Cases ***                  username                    password
Valid user with invalid password    pswapnil032@gmail.com       password@12321
invalid user with valid password    918888402650                  swapnil123
invalid user with inalid password   swapnilpawar@gmail.com      wrongpass12321


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Open My Browser
    Input Username  ${username}
    Input Password  ${password}
    Click On Login Button
    sleep   2
    error message
    #close browser


Valid Login
    [Arguments]     ${username}     ${password}
    Open My Browser
    Input Username  ${username}
    Input Password  ${password}
    Click On Login Button
    sleep   2
    home screen
    close browser