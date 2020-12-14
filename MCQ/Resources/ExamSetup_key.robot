*** Settings ***
Library    SeleniumLibrary     
Resource    ../Locators/ExamSetup_loc.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/ExamSetup_data.robot
Library    DateTime    

*** Keywords ***
Add exam
    
    Click Element    ${ExamSetupAddButton}    
    Sleep    ${MinTimeout}
    Input Text    ${Examcode_loc}    ${Examcode_data}
    Input Text    ${ExamName_loc}    ${ExamName_data}    
    Select From List By Label    ${ExamType_loc}    ${ExamType_data}
    Click Element    ${ExamdateRadioButton_loc}
    
    ${day}    Get Current Date    result_format=%d-%b-%yyyy
       
    Log To Console    ${day}
    # Click Element    ${Examdatepicker_loc} 
    Sleep    ${MaxTimeout}
    ${date}    Get Current Date    result_format=%d-%b-%Y
    Input Text    ${ExamDateText_loc}    ${date}    
    # Click Element    xpath://td[@day='${day}']
    Sleep    ${MinTimeout}   
    Input Text    ${TotalMarks_loc}    ${ExamTotalMarks_data}
    Input Text    ${PassMarks_loc}    ${ExamPassMarks_data}    
    Select From List By Label    ${ExamGrade_loc}    ${ExamGrade_data}
    ${WorkflowCodeName} =    Catenate   SEPARATOR=${SPACE}-${SPACE}    ${WorkFlowCode_data}    ${WorkFlowName_data}
    # Log To Console    ${WorkflowCodeName}     
    Select From List By Label    ${ExamSetupWFS_loc}    ${WorkflowCodeName}
    Click Element    ${ExamDurationAuto_loc}       
    Click Element    ${examSaveButton}
    Click Element    ${YesButton_loc}        
    Sleep    ${MinTimeout}
    
    Input Text    ${ExamSearchExamName_loc}    ${ExamSearchExamName_data}
    Sleep    ${MinTimeout}    
    Click Element    ${ExamSearchButton}
    Sleep    ${MinTimeout}
    
    Click Element    ${ExamSetupButton_loc}    
    Sleep    ${MinTimeout}    
    Click Element    ${NextButton}
    Sleep    ${MinTimeout}    
    Click Element    ${ExamSectionAdd_loc}    
    Input Text    ${ExamSectionOrder_loc}    ${ExamSectionOrder_data}    
    Input Text    ${ExamSectionName_loc}    ${ExamSectionName_data}    
    Input Text    ${TotalQuestions_loc}    ${ExamTotalQuestions_data}    
    Input Text    ${ExamSectionTotalMarks_loc}    ${ExamSectionTotalMarks_data}    
    Click Element    ${ExamSectionSaveButton_loc}        
    Click Element    ${YesButton_loc} 
    Sleep    ${MaxTimeout}   
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${MinTimeout}
    
    click Element    ${ExamSectionViewRecord}
    Sleep    ${MinTimeout}     
    
      
    Click Element    ${ExamSectionGroupAdd}   
    Sleep    ${MinTimeout}
    Input Text    ${ExamGroupName_loc}    ${ExamGroupName_data}
    Input Text    ${ExamSecGrpQuestionsFrom_loc}    ${ExamSecGrpQuestionsFrom_data}    
    Input Text    ${ExamSecQuestionsTo_loc}    ${ExamSecQuestionsTo_data}
    Sleep    ${MinTimeout} 
    Click Element     ${ExamSecQuestionsCount_loc}         
    Sleep    ${MinTimeout}   
    Input Text    ${SectionGrpIndivMarks_loc}    ${SectionGrpIndivMarks_data}    
    Click Element    ${ExamSecGrpDetailSave_loc}    
    Click Element    ${YesButton_loc}  
    Sleep    ${MinTimeout}
    Click Element    ${NextButton}
    Sleep    ${MinTimeout}  
    
    Click Element    ${ExamsecGrpDetailView_loc} 
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${MinTimeout}     
    Click Element    ${ExamSecQuestionTypeAdd_loc}
    Sleep    ${MinTimeout}
            
    Select From List By Label    ${ExamSelectSubject_loc}    ${SelectSubject_data} 
    Sleep    ${MinTimeout}   
    Select From List By Label    ${ExamSelectModule_loc}    ${ExamSelectModule_data}
    Sleep    ${MinTimeout}
    Select From List By Label    ${ExamSelectTopic_loc}    ${ExamSelectTopic_data}
    Sleep    ${MinTimeout}
    Select From List By Label    ${ExamSelectObjective_loc}    ${ExamSelectObjective_data}
    Wait Until Element Is Visible    ${ExamSelectquestionLevel_loc}    
    Select From List By Label    ${ExamSelectquestionLevel_loc}    ${ExamSelectquestionLevel_data}
    Wait Until Element Is Visible    ${ExamSelectComplexity_loc}     
    Select From List By Label    ${ExamSelectComplexity_loc}    ${ExamSelectComplexity_data}
    Sleep    ${MinTimeout}    
    Input Text    ${ExamQuestionsTypeQuestionsFrom_loc}    ${QuestionsTypeQuestionsFrom_data}
    Input Text    ${QestionsTypeQuestionsTo_loc}    ${QestionsTypeQuestionsTo_data}    
    Click Element    ${QuestionsTypeQuestionCount_loc}
    Sleep    ${MinTimeout}
    Click Element    ${ExamSectionQuestionTypeSave_loc}    
    Click Element    ${YesButton_loc}
    Sleep    ${MinTimeout}    
    Click Element    ${NextButton}
    Sleep    ${MinTimeout}
    
    Click Element    ${questionSelectionAdd_loc}
    Click Element    ${examSecQuestionSearch}    
    Sleep    ${MinTimeout}
    Select Checkbox    ${AllCheckbox} 
    Click Element    ${ExamQuesQuestionSave}
    Click Element    ${YesButton_loc}
    Sleep    ${MinTimeout}
    Click Element    ${NextButton}
    Sleep    ${MaxTimeout}
    Click Element    ${PassMarkEdit}    
    Clear Element Text    ${PassmarkTextbox_loc}
    Input Text    ${PassmarkTextbox_loc}    ${PassmarkTextbox_data}    
    Sleep    ${MinTimeout}
    Click Element    ${ExamUpdatebutton}    
    Sleep    ${MinTimeout}
    Click Element    ${ExamSubmitButton} 
    Click Element    ${YesButton_loc}
    Sleep    ${MaxTimeout}    
      
       
    Click Element    ${ExamSetupDetails_Menu}
    Sleep    ${MaxTimeout}
    Input Text    ${ExamSearchExamName_loc}    ${ExamName_data}
    Click Element    ${ExamSearchButton}    
    Sleep    ${MinTimeout}
    Element Text Should Be    ${ExamLastActionStatus_loc}    ${ExamLastActionStatusPending_data}
    # End
    
Verify the exam by verifier
    Click Element    ${ExamForVerification}    
    Sleep    ${MaxTimeout}
    Input Text    ${ExamSearchExamName_loc}    ${ExamName_data}
    Sleep    ${MinTimeout}
    Click Element    ${ExamSearchButton} 
    Sleep    ${MinTimeout}       
    Click Element    ${VerifyButtonIn verifier}
    Sleep    ${MinTimeout}    
    Select From List By Label    ${SelectAction_loc}    ${SelectActionVerify_data}
    Input Text    ${Verify/approveDescription_loc}    ${VerifyDescription_data}
    Click Element    ${Verify/ApproveSubmit}
    Click Element    ${YesButton_loc}
    Sleep    ${MinTimeout}
    
Verify Pending for approval status
    
    Click Element    ${ExamSetup_Menu} 
    Sleep    ${MaxTimeout}   
    Click Element    ${ExamSetupDetails_Menu}
    Sleep    ${MaxTimeout}
    Input Text    ${ExamSearchExamName_loc}    ${ExamName_data}
    Click Element    ${ExamSearchButton}    

    Sleep    ${MinTimeout}
    Element Text Should Be    ${ExamLastActionStatus_loc}    ${ExamLastActionStatusApproval_data}
    
    
    
Approver the exam by Approver
    Click Element    ${ExamForApprover}
    Sleep    ${MinTimeout}
    Input Text    ${ExamSearchExamName_loc}    ${ExamName_data}
    Sleep    ${MinTimeout}
    Click Element    ${ExamSearchButton} 
    Sleep    ${MinTimeout}
    Click Element    ${ApproveButtonIn Approver}
    Sleep    ${MinTimeout}    
    Click Element    ${SelectAction_loc}
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectAction_loc}    ${SelectActionApprove_data}
    # Mouse Down    xpath://*[contains(text(),'Verifed')]
    # Click Element    xpath://*[contains(text(),'Verifed')]        
    Input Text    ${Verify/approveDescription_loc}    ${ApproveDescription_data}    
    Click Element    ${Verify/ApproveSubmit}    
    Click Element    ${YesButton_loc}
    Sleep    ${MinTimeout}
    
Verify Completed status
    Click Element    ${ExamSetup_Menu}    
    Click Element    ${ExamSetupDetails_Menu}
    Sleep    ${MaxTimeout}
    Input Text    ${ExamSearchExamName_loc}    ${ExamName_data}
    Click Element    ${ExamSearchButton}    
    Sleep    ${MinTimeout}
    Element Text Should Be    ${ExamLastActionStatus_loc}    ${ExamLastActionStatusCompleted_data}                     
     
    
Provide Access for users 
        # FOR    ${index}    IN RANGE    0    4                                             
        Input Text    ${ExamNameInUserAcess_loc}    ${ExamName_data}
        Click Element    ${ExamSearchButton}    
        Sleep    ${MinTimeout} 
        Click Element    ${ExamNameInGrid_loc}    
        Sleep    ${MinTimeout}
        Wait Until Element Is Visible    ${SelectExamMode_loc}    
        Select From List By Label    ${SelectExamMode_loc}    ${SelectExamMode_data}
        Select From List By Label    ${SelectBatchYear_loc}    ${SelectBatchYear_data}
        Select From List By Label    ${SelecteducationLevel_loc}    ${SelecteducationLevel_data}
        Select From List By Label    ${SelectGroupName_loc}    ${SelectGroupName_data} 
        Select From List By Label    ${SelectAvailableuser_loc}    ${SelectAvailableuser_data}    
        Sleep    ${MinTimeout}    
        Click Element    ${Rightbutton}
        
        Execute Javascript    window.scrollBy(900, 900)
        Sleep    ${MinTimeout}    
        Click Element    ${ExamUserAccessUpdate}    
        Click Element    ${YesButton_loc}
        Sleep    ${MinTimeout}
        Element Text Should Be    ${VerifySelectedUser_loc}    ${SelectAvailableuser_data} 
        Sleep    ${MinTimeout}    
        Click Element    ${ExamUSerAccessClear}    
        # END                            
           
        