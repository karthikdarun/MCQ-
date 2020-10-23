*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/General keywords.robot


*** Test Cases ***
Create Task ans verify it
    Login into the application as Teacher
    Navigate to create task
    

    
*** Keywords ***
Navigate to create task
    Click Element    ${TaskManager_menu}
    Click Element    ${CreateTask_menu}
    Sleep    2        
    
    
    