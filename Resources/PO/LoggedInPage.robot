*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} = Add Customer

*** Keywords ***

User clicks new customer

    click link                  id=new-customer
    wait until page contains    ${ADDCUSTOMER_HEADER_LABEL}
