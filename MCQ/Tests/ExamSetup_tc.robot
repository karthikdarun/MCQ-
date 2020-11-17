*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ExamSetup_key.robot    


*** Test Cases ***
Add exam in Exam setup
    
    Login into the application as Teacher
    Navigate to exam setup screen
    Add exam Verify it
    logout from the application
    
Verify the Exam by Verifier
    Login into the application as Verifier
    Verify the exam by verifier
    logout from the application
    
Verify the Pending for approval status in Teacher's login
    Login into the application as Teacher
    Verify Pending for approval status
    logout from the application
    
Approve the Exam by Approver
    Login into the application as Approver
    Approver the exam by Approver 
    logout from the application
    
Verify the completed status in Teacher's login 
    Login into the application as Teacher
    Verify Completed status
    
Provide user access for Exam
    Navigate to Exam User Access screen
    Provide Access for users
    logout from the application