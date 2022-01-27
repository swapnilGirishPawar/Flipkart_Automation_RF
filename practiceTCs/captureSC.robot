*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://opensource-demo.orangehrmlive.com/index.php/auth/login
*** Test Cases ***
login
    open browser    ${url}      ${Browser}
    maximize browser window
    input text      xpath://*[@id='txtUsername']    Admin
    input text      xpath://*[@id='txtPassword']    admin123
    capture element screenshot  xpath://*[@id="divLogo"]/img    C:/Users/user/PycharmProjects/NewAutomation/logo.png
    capture page screenshot     C:/Users/user/PycharmProjects/NewAutomation/LoginTC.png

    click element   xpath://*[@id='btnLogin']
    sleep   2
    close browser


*** Keywords ***
