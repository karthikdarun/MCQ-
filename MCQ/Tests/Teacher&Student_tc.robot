*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ExamMaster_key.robot
Resource    ../Resources/EducationSetup_key.robot
Resource    ../Resources/QuestionDetails_key.robot    
Resource    ../Resources/ExamSetup_key.robot
Resource    ../Resources/OnlineExam_key.robot   


*** Test Cases ***

Add Exam Mode in Exam Mode Master
    Login into the application as Teacher
    Navigate to Exam Mode Master screen
    Add Exam Mode and Verify it    
    
Add Grades in Grade Master    
    Navigate to Grade Master screen
    Add grades and Verify it
    
Add Education Level and Group    
    Navigate to Education level
    Add Education level and verify it    
    
Add workflow and verify it    
    Navigate to Workflow screen
    Add Workflow and verify it
        
Student creation    
    Navigate to Exam user master
    Add Students and verify it
    logout from the application
    
Map Exam user with student role
    Login into the application as Admin
    Navigate to Role Mapping screen
    Map exam user with student role and verify it
    logout from the application

Perform Subject Level Mapping 
    Login into the application as Teacher
    Navigate to Subject level mapping screen
    Perform Subject level setup and verify it
    
Perform Subject lecturer level setup
    Navigate to Subject lecturer level setup
    Map subject with lecturer/teacher and verify it
    
Add questions and answers    
    Navigate to question details
    Add questions and verify it
    logout from the application 
       
Add exam in Exam setup    
    Login into the application as Teacher
    Navigate to exam setup screen
    Add exam Verify it
    logout from the application
    
Verify the Exam by Verifier
    Login into the application as Verifier
    Verify the exam by verifier
    logout from the application
    
Verify Pending for approval status in Teacher's login
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
    
Perform Online Exam
    Login into the application as Student
    Navigate to Online exam
    Take online exam and verify it
    logout from the application  