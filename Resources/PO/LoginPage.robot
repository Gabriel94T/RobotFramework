*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/PO/Crm.robot

*** Keywords ***

Enters Credentials

 input text              id=email-id         ${VALID_LOGIN_EMAIL}
 input text              id=password         ${VALID_LOGIN_PASSWORD}
 click button            id=submit-id
 page should contain     Our Happy Customers
