*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../TestData/General TestData.robot
Resource    ../Resources/GradeMaster_key.robot




*** Test Cases ***
Add Grades in Grade Master
    Login into the application as Teacher
    Navigate to Grade Master screen
    Add grades and Verify it
    logout from the application