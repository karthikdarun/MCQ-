*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/Workflow.key.robot



*** Test Cases ***
Add workflow and verify it
    Login into the application as Teacher
    Navigate to Workflow screen
    Add Workflow and verify it
    logout from the application