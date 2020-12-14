*** Settings ***
Library    SeleniumLibrary
Library    DateTime       
Resource    ../Resources/General keywords.robot


*** Test Cases ***
Create Task and verify it
    Login into the application as Teacher
    Navigate to create task
    

    
*** Keywords ***
Navigate to create task
    # Click Element    ${TaskManager_menu}
    Click Element    ${CreateTask_menu}
    Sleep    2
    Input Text    xpath://*[@id='txtTaskName']    Task_1    
    Select From List By Label    xpath://*[@id='ddlTaskCategory']    Simple
    Select From List By Label    xpath://*[@id='ddlTaskPriority']    High         
    ${day}    Get Current Date    result_format=%d   
    Log To Console    ${day}
    Click Element    xpath://tbody/tr[3]/td[2]/div/span 
    Sleep    2
    Click Element    xpath://td[@day='${day}']
    # Sleep    3
    # Click Element    xpath://tbody/tr[3]/td[2]/div/span     
    # Click Element    xpath:(//td[contains(.,'${day}')])[2]
    Sleep    2
    Input Text    xpath://*[@id="PartialViewMain"]/div/div/div[3]/div[2]    Task one
    Click Element    xpath://tbody/tr[3]/td[4]/div/span
    Click Element    xpath:(//td[contains(.,'${day}')])[2]    
    # Click Element    xpath://*[@id='btnSaveTask']    
    
    # Click Element    ${TaskView_menu}        
            
    
          
    
    
          
    
    
    