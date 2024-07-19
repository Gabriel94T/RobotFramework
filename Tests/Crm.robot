*** Settings ***
Resource    ../Resources/CrmPage.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/CrmPage.robot
Resource    ../Resources/LoginPage.robot
Test Setup    Selected browser opens
Test Teardown    Browser ends

*** Variables ***
${BROWSER}  = chrome
${URL}      = https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} = test@gmail.com
${VALID_LOGIN_PASSWORD} = test

*** Test Cases ***
User is logging in

    [Documentation]    Testing the website
    [Tags]    Smoke


    Given User is logging in
    Then User enters credentials

User is logging in and adds new customer

    [Documentation]    Testing the website and add new customer
    [Tags]    Smoke2

    Given User is logging in
    And User enters credentials
    When User clicks on new customer button
    Then User adds new customer




