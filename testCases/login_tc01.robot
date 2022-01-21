*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/login_resources.robot
Library     DataDriver      ../test_data/testData.xlsx      sheet_name=Sheet1


Suite Setup     Open My Browser
Suite Teardown  Close Browsers

Test Template   Invalid Login


*** Test Cases ***
Login Test With excel   ${username}     ${password}

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input Username  ${username}
    Input Password  ${password}
    Click On Login Button
    sleep   2
    error message
    reload page


Valid Login
    [Arguments]     ${username}     ${password}
    Open My Browser
    Input Username  ${username}
    Input Password  ${password}
    Click On Login Button
    sleep   2
    home screen
    close browser