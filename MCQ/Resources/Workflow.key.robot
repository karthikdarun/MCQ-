*** Settings ***

Library    SeleniumLibrary    
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Locators/WorkFlow_loc.robot
Resource    ../TestData/Workflow.data.robot
Library    Collections    

*** Keywords ***

Navigate to Workflow screen
    Click Element    ${ExamMasterMenu}    
    Click Element    ${WorkFlow_Menu} 
    Sleep    ${timeout}
    
    
Add Workflow and verify it
    Click Element    ${AddWorkFlow}    
    Input Text    ${WorkFlowCode_loc}    ${WorkFlowCode_data}
    Input Text    ${WorkFlowName_loc}    ${WorkFlowName_data}    
    Click Element    ${SaveWorkflow}
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Input Text    ${SearchWorkflowCode_loc}    ${SearchWorkflowCode_data}
    Sleep    ${timeout}
    Click Element    ${SearchWorflowbutton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyWorkflow}    ${VerifyWOrkflow_data} 
    Sleep    ${timeout}       
    Click Element    ${VerifyWorkflow}  
    FOR    ${index}    IN RANGE    0    2
    Click Element    ${AddWorkflowdetail}
    Sleep    ${timeout}    
    Select From List By Label    ${SelectWorkFlowUser_loc}    ${SelectWorkFlowUser_data}[${index}]
    Select From List By Label    ${Selectworkflowrole_loc}    ${Selectworkflowrole_data}[${index}]
    Click Element    ${SelectWorkflowAction_loc}
    ${WKAction}=    Get From List    ${WorkflowAction_data}    ${index}
    Log To Console    ${WKAction}        
    Mouse Down    xpath://li[contains(.,'${WKAction}')]
    Sleep    ${timeout}
    Click Element    xpath://li[contains(.,'${WKAction}')]    
    Select From List By Label    ${Selectworkflowdisplayaction_loc}    ${Selectworkflowdisplayaction_data}[${index}]
    Input Text    ${WorkflowOrder_loc}    ${WorkflowOrder_data}[${index}]    
    Input Text    ${WorkflowactionMessage_loc}    ${WorkflowactionMessage_data}[${index}]
        
    Click Element    ${SaveWorkflowdetail}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}    
    END
        
      
        