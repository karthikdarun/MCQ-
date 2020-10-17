*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ExamSetup_key.robot    


*** Test Cases ***
Adding exam
    Login into the application as Teacher
    Navigate to exam setup screen
    Add exam Verify it
    Provide Access for users