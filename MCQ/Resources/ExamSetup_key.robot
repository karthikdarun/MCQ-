*** Settings ***
Library    SeleniumLibrary     
Resource    ../Locators/ExamSetup_loc.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/ExamSetup_data.robot
Library    DateTime    

*** Keywords ***
Add exam Verify it
    
    Click Element    ${ExamSetupAddButton}    
    Sleep    ${MinTimeout}
    Input Text    ${Examcode_loc}    ${Examcode_data}
    Input Text    ${ExamName_loc}    ${ExamName_data}    
    Select From List By Label    ${ExamType_loc}    ${ExamType_data}
    Click Element    ${ExamdateRadioButton_loc}
    
    ${day}    Get Current Date    result_format=%d
       
    # Log To Console    ${day}
    Click Element    ${Examdatepicker_loc} 
    Sleep    ${MaxTimeout}
    ${day}    Get Current Date    result_format=%d
    Sleep    ${MinTimeout}    
    Click Element    xpath://td[@day='${day}']
        
    Input Text    ${TotalMarks_loc}    ${TotalMarks_data}
    Input Text    ${PassMarks_loc}    ${PassMarks_data}    
    Select From List By Label    ${ExamGrade_loc}    ${ExamGrade_data}
    Select From List By Label    ${ExamSetupWFS_loc}    ${ExamSetupWFS_data}
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
    Input Text    ${TotalQuestions_loc}    ${TotalQuestions_data}    
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
    Input Text    ${GroupName_loc}    ${GroupName_data}
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
            
    Select From List By Label    ${SelectSubject_loc}    ${SelectSubject_data} 
    Sleep    ${MinTimeout}   
    Select From List By Label    ${SelectModule_loc}    ${SelectModule_data}
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectTopic_loc}    ${SelectTopic_data}
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectObjective_loc}    ${SelectObjective_data}
    Wait Until Element Is Visible    ${SelectquestionLevel_loc}    
    Select From List By Label    ${SelectquestionLevel_loc}    ${SelectquestionLevel_data}
    Wait Until Element Is Visible    ${SelectComplexity_loc}     
    Select From List By Label    ${SelectComplexity_loc}    ${SelectComplexity_data}
    Sleep    ${MinTimeout}    
    Input Text    ${QuestionsTypeQuestionsFrom_loc}    ${QuestionsTypeQuestionsFrom_data}
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
    Click Element    ${Updatebutton}    
    Sleep    ${MinTimeout}
    Click Element    ${SubmitButton} 
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
           
        