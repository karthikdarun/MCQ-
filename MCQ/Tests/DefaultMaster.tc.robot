*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/DefaultMaster.key.robot
Resource    ../TestData/General TestData.robot

*** Test Cases ***
Adding records for default types in Default Master
    Login into the application as Admin
    Navigate to Default Master screen
    Adding records for default types and verify it
    logout from the application