*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/General Locators.robot
Resource    ../Resources/General keywords.robot
Resource    ../Resources/Student Creation & Mapping.robot   


*** Test Cases ***
Student creation and map users with student role
    Login into the application as Teacher
    Navigate to Exam user master
    Add Students and verify it
    logout from the application
    Login into the application as Admin
    Navigate to Role Mapping screen
    Map the user with student role and verify it
    logout from the application
    