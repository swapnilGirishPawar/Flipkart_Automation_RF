*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${Browser}  Chrome
${url}      https://demo.guru99.com/test/simple_context_menu.html
*** Test Cases ***
mouse_actions
    #browser_open
    #right click operation
    #double click operation

    #drag_drop


*** Keywords ***
browser_open
    open browser    ${url}     ${Browser}
    maximize browser window

right click operation
    open context menu   xpath://*[@class='context-menu-one btn btn-neutral']
    sleep       2

double click operation
    reload page
    sleep       2
    double click element    xpath://button[contains(text(),'Double-Click Me To See Alert')]
    sleep   2

drag_drop
    open browser        https://demo.guru99.com/test/drag_drop.html     Chrome
    sleep   2
    scroll element into view    xpath://*[contains(text(),'Debit Movement')]

    #drag and drop       xpath://*[@class='button button-orange']        xpath://*[@class='field14 ui-droppable ui-sortable']
    #drag and drop       xpath://*[@id="credit2"]/a        xpath://*[@id='bank']/li
    sleep   2

