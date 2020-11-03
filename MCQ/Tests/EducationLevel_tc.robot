*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/EduLevel_key.robot



*** Test Cases **
Add Education Level and Group
    Login into the application as Teacher
    Navigate to Education level
    Add Education level and verify it
    Logout from the application