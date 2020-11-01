*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ExamSetup_key.robot    


*** Test Cases ***
Adding exam
    Login into the application as Teacher
    Navigate to exam setup screen
    Add exam Verify it
    logout from the application
    Login into the application as Verifier
    Verify the exam by verifier
    logout from the application
    Login into the application as Teacher
    Verify Pending for approval status
    logout from the application
    Login into the application as Approver
    Approver the exam by Approver 
    logout from the application
    Login into the application as Teacher
    Verify Completed status
    Navigate to Exam User Access screen
    Provide Access for users
    logout from the application