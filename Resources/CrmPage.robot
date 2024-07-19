*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/LoggedInPage.robot
Resource    ../Resources/PO/AddNewCustomerPage.robot


*** Keywords ***

User is logging in

   LandingPage.Verify Page Loaded

User enters credentials

   LoginPage.Enters Credentials

User clicks on new customer button

   LoggedInPage.User clicks new customer

User adds new customer

    AddNewCustomerPage.User enters details of new customer

