*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Locators/ExamMaster_loc.robot
Resource    ../TestData/ExamMaster_data.robot
Library    Collections  

*** Keywords ***
Navigate to Education level
    Click Element    ${ExamMasterMenu}    
    Click Element    ${EducationLevelMenu}    
    Sleep    ${timeout}    
Add Education level and verify it
    Click Element    ${EduLevelAddbutton}    
    Sleep    ${timeout}
    Input Text    ${EduLevelText_loc}    ${EduLevelText_data}
    Click Element    ${SaveEduLevel_loc}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Input Text    ${EduSearchText_loc}    ${EduSearchText_data}
    Sleep    ${timeout}
    Click Element    ${EduSearchbutton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyEduLevel_loc}    ${VerifyEduLevel_data}    
    Click Element    ${VerifyEduLevel_loc}    
    Sleep    ${timeout}
    Click Element    ${AddGroup}    
    Sleep    ${timeout}
    Input Text    ${GroupName_loc}    ${GroupName_data}    
    Click Element    ${SaveGroup}    
    Click Element    ${YesButton}  
    Sleep    ${timeout} 
    
Navigate to Exam Mode Master screen
    Click Element    ${ExamMasterMenu}    
    Click Element    ${ExamModeMaster_Menu}
    Sleep    ${timeout}    
    
 Add Exam Mode and Verify it
    Click Element    ${ExamModeAddBUtton}    
    Input Text    ${ExamModeTxt_loc}    ${ExamModeTxt_data}
    Select From List By Label    ${SelecReportView_loc}    ${SelecReportView_data}
    Input Text    ${DescExamMode_loc}    ${DescExamMode_data}
    Click Element    ${SaveExamMode}    
    Click Element    ${YesButton}
    Sleep    ${timeout}    
    Input Text    ${SearchExamModeTxtx_loc}    ${SearchExamModeTxtx_data}
    Click Element    ${SearchExamModeButton}
    Sleep    ${timeout}    
    Element Text Should Be    ${VerifyExamMode_loc}    ${VerifyExamMode_data}  
    
Navigate to Grade Master screen
    Click Element    ${ExamMasterMenu}    
    Click Element    ${GradeMaster_Menu}    
    Sleep    ${timeout}
Add grades and Verify it
    Click Element    ${AddGrade}    
    Input Text    ${GradecodeText_loc}    ${GradecodeText_data}
    Click Element    ${SaveGrade}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Input Text    ${GradeCodeSearch_loc}    ${GradeCodeSearch_data}
    Sleep    ${timeout}    
    Click Element    ${SearchGrade}    
    Sleep    ${timeout}    
    Element Text Should Be    ${GradeRecordVerify_loc}    ${GradeRecordVerify_data}
    Sleep    ${timeout}
    Click Element    ${GradeRecordVerify_loc}
    
Add Students and verify it
    Click Element    ${ExamUserAddbutton}
    Input Text    ${ExamUSerLoginName_loc}    ${StudentLoginName_data} 
    Input Password    ${txtExamUserPassword_loc}    ${txtExamUserPassword_data}
    Input Text    ${txtExamUserFirstName_loc}    ${txtExamUserFirstName_data}
    Input Text    ${txtExamUserLastName_loc}    ${txtExamUserLastName_data}    
    Input Text    ${txtExamUserEmailID_loc}    ${txtExamUserEmailID_data}
    Input Text    ${txtExamUserMobileNumber_loc}    ${txtExamUserMobileNumber_data}    
    Select From List By Label    ${DdlBatchYear_ExamUser_loc}    ${DdlBatchYear_ExamUser_data}
    Select From List By Label    ${DdlExamLevel_ExamUser_loc}    ${DdlExamLevel_ExamUser_data} 
    Select From List By Label    ${DdlExamUserMasterGroupName_loc}    ${DdlExamUserMasterGroupName_data}
    Input Text    ${txtExamUserDOB_loc}    ${txtExamUserDOB_data}    
    Select From List By Label    ${ddlExamUserGender_loc}    ${ddlExamUserGender_data}
    Input Text    ${txtExamUserAddress_loc}    ${txtExamUserAddress_data}    
    Click Element    ${ClickExamuserDisplayAlert_loc}    
    Sleep    ${timeout}    
    Mouse Down    ${SelectExamUSerDisplayAlert_loc}
    Sleep    ${timeout}    
    Click Element    ${SelectExamUSerDisplayAlert_loc}
    Sleep    ${timeout}                                 
    Click Element    ${btnSaveExamUser}    
    Click Element    ${YesButton}
    Input Text    ${ExamUserLogin_loc}    ${StudentLoginName_data}
    Sleep    ${timeout}    
    Click Element    ${btnExamUserSearch}
    Sleep    ${timeout}   
     
        
    ${textvalue}    Get Text    ${VerifyStudentLogin_loc} 
    Log To Console    ${textvalue}          
    Element Text Should Be    ${VerifyStudentLogin_loc}    ${StudentLoginName_data}    
    
Map exam user with student role and verify it
    Select From List By Label    ${SelectroleStudent_loc}    ${SelectroleStudent_data}
    Click Element    ${Searchbutton_loc}
    Sleep    ${timeout}
    
    Wait Until Element Is Visible    ${AvailableusersStudent_loc}    
    Select From List By Label    ${AvailableusersStudent_loc}    ${Student1_data}     
    Click Element    ${Rightbutton}
    Click Element    ${RoleUpdatebuttonStudent}
    Click Element    ${YesButton} 
    Sleep    ${timeout}
    Sleep    3
    ${userValue}    Get From List    ${userlist}    -1
    # ${userValues}    Get List Items    ${userlist}
    # Log To Console    ${userValues}        
    List Should Contain Value    ${userValue}    ${Student1_data}        
    # Element Text Should Be    ${SelectedusersStudent_loc}    ${Student1_data}
    
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
        
    
        