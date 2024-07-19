*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/Crm.robot

*** Keywords ***
Selected browser opens
    log                 Starting the test case
    set selenium timeout    10s
    OPEN BROWSER        ${URL}      ${BROWSER}
    maximize browser window

Browser ends
    log                 End test case
    close all browsers
