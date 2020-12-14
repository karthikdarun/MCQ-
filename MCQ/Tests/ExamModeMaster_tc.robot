*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ExamModeMaster_key.robot


*** Test Cases ***
Add Exam Mode Master
        
    Navigate to Exam Mode Master screen
    Add Exam Mode and Verify it
    logout from the application