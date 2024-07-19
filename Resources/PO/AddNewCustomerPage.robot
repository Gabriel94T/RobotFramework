*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit
${EMAIL_TEXTBOX} =                  id=EmailAddress
${FIRSTNAME_TEXTBOX} =              id=FirstName
${LASTNAME_TEXTBOX} =               id=LastName
${CITY_TEXTBOX} =                   id=City
${STATE_DROPDOWN} =                 id=StateOrRegion
${GENDER_RADIO} =                   gender
${PROMO_CHECKBOX} =                 name=promos-name

*** Keywords ***

User enters details of new customer

    Fill Customer Fields
    Click Submit Button


Fill Customer Fields
    input text              ${EMAIL_TEXTBOX}    johndoe@gmail.com
    input text              ${FIRSTNAME_TEXTBOX}       John
    input text              ${LASTNAME_TEXTBOX}        Doe
    input text              ${CITY_TEXTBOX}            Texas
    select from list by value    ${STATE_DROPDOWN}   TX
    select radio button     ${GENDER_RADIO}      male
    Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
    sleep                   1s
    select checkbox         ${PROMO_CHECKBOX}



Click Submit Button

    click button            ${ADDCUSTOMER_SUBMIT_BUTTON}
    wait until page contains    Success! New customer added.



