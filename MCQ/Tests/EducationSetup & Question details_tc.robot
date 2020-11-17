*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/EducationSetup_key.robot
Resource    ../Resources/QuestionDetails_key.robot


*** Test Cases ***
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
    

    