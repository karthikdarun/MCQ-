*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Resources/QuestionDetails_key.robot

*** Test Cases ***
Add questions and answers
    Login into the application as Teacher
    Navigate to question details
    Add questions and verify it
    logout from the application