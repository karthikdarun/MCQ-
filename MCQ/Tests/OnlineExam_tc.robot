*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/OnlineExam_key.robot

*** Test Cases ***
Perform Online Exam
    Login into the application as Student
    Navigate to Online exam
    Take online exam and verify it
    logout from the application    
