*** Settings ***
Resource    ../Locators/General Locators.robot
Resource    ../Resources/General keywords.robot
Resource    ../TestData/General TestData.robot
Resource    ../Resources/ExamMaster_key.robot
Resource    ../Locators/ExamMaster_loc.robot
Resource    ../TestData/ExamMaster_data.robot

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
