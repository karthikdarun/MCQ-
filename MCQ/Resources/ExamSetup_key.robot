*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/ExamSetup_loc.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/ExamSetup_data.robot

*** Keywords ***
Add exam Verify it
    FOR    ${index}    IN RANGE    0    4
    Click Element    ${ExamSetupAddButton}    
    Sleep    ${MinTimeout}
    Input Text    ${Examcode_loc}    ${Examcode_data}[${index}]
    Input Text    ${ExamName_loc}    ${ExamName_data}[${index}]    
    Select From List By Label    ${ExamType_loc}    ${ExamType_data}[${index}]
    Click Element    ${ExamdateRadioButton_loc}
    Input Text    ${Examdate_loc}    ${Examdate_data}[${index}]    
    Input Text    ${TotalMarks_loc}    ${TotalMarks_data}[${index}]
    Input Text    ${PassMarks_loc}    ${PassMarks_data}[${index}]    
    Select From List By Label    ${ExamGrade_loc}    ${ExamGrade_data}[${index}]
    Click Element    ${ExamDurationAuto_loc}       
    Click Element    ${examSaveButton}
    Click Element    ${YesButton_loc}        
    Sleep    ${MinTimeout}
    
    Input Text    ${ExamSearchExamName_loc}    ${ExamSearchExamName_data}[${index}]
    Sleep    ${MinTimeout}    
    Click Element    ${ExamSearchButton}
    Sleep    ${MinTimeout}
    
    Click Element    ${ExamSetupButton_loc}    
    Sleep    ${MinTimeout}    
    Click Element    ${NextButton}
    Sleep    ${MinTimeout}    
    Click Element    ${ExamSectionAdd_loc}    
    Input Text    ${ExamSectionOrder_loc}    ${ExamSectionOrder_data}[${index}]    
    Input Text    ${ExamSectionName_loc}    ${ExamSectionName_data}[${index}]    
    Input Text    ${TotalQuestions_loc}    ${TotalQuestions_data}[${index}]    
    Input Text    ${ExamSectionTotalMarks_loc}    ${ExamSectionTotalMarks_data}[${index}]    
    Click Element    ${ExamSectionSaveButton_loc}        
    Click Element    ${YesButton_loc} 
    Sleep    ${MaxTimeout}   
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${MinTimeout}
    
    click Element    ${ExamSectionViewRecord}
    Sleep    ${MinTimeout}     
    
      
    Click Element    ${ExamSectionGroupAdd}   
    Sleep    ${MinTimeout}
    Input Text    ${GroupName_loc}    ${GroupName_data}[${index}]
    Input Text    ${ExamSecGrpQuestionsFrom_loc}    ${ExamSecGrpQuestionsFrom_data}[${index}]    
    Input Text    ${ExamSecQuestionsTo_loc}    ${ExamSecQuestionsTo_data}[${index}]
    Sleep    ${MinTimeout} 
    Click Element     ${ExamSecQuestionsCount_loc}         
    Sleep    ${MinTimeout}   
    Input Text    ${SectionGrpIndivMarks_loc}    ${SectionGrpIndivMarks_data}[${index}]    
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
            
    Select From List By Label    ${SelectSubject_loc}    ${SelectSubject_data}[${index}] 
    Sleep    ${MinTimeout}   
    Select From List By Label    ${SelectModule_loc}    ${SelectModule_data}[${index}]
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectTopic_loc}    ${SelectTopic_data}[${index}]
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectObjective_loc}    ${SelectObjective_data}[${index}]
    Sleep    ${MinTimeout}
    Select From List By Label    ${SelectquestionLevel_loc}    ${SelectquestionLevel_data}[${index}]
    Sleep    ${MinTimeout} 
    Select From List By Label    ${SelectComplexity_loc}    ${SelectComplexity_data}[${index}]
    Sleep    ${MinTimeout}    
    Input Text    ${QuestionsTypeQuestionsFrom_loc}    ${QuestionsTypeQuestionsFrom_data}[${index}]
    Input Text    ${QestionsTypeQuestionsTo_loc}    ${QestionsTypeQuestionsTo_data}[${index}]    
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
    Sleep    ${MinTimeout}
    Click Element    ${PassMarkEdit}    
    Clear Element Text    ${PassmarkTextbox_loc}
    Input Text    ${PassmarkTextbox_loc}    ${PassmarkTextbox_data}[${index}]    
    Sleep    ${MinTimeout}
    Click Element    ${Updatebutton}    
    Sleep    ${MinTimeout}
    Click Element    ${SubmitButton} 
    Click Element    ${YesButton_loc}
    Sleep    ${MaxTimeout}    
      
       
    Click Element    ${ExamSetupDetails_Menu}
    Sleep    ${MaxTimeout}
    Input Text    ${ExamSearchExamName_loc}    @{ExamName_data}[${index}]
    Click Element    ${ExamSearchButton}    
    Sleep    ${MinTimeout}
    Element Text Should Be    ${ExamLastActionStatus_loc}    ${ExamLastActionStatus_data}[${index}]
    END 
    
Provide Access for users                                              
        Click Element    ${ExamUSerAccess_Menu}    
        