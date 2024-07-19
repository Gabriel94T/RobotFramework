*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${BUTTON_SIGNIN} = id=SignIn


*** Keywords ***

Verify Page Loaded

 element text should be    Customers Are Priority One!
 click link                ${BUTTON_SIGNIN}
 page should contain       Login

