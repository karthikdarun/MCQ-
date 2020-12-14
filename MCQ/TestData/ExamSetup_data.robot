*** Settings ***
Resource    ExamMaster_data.robot
Resource    EducationSetup_data.robot


*** Variables ***
${MinTimeout}    2
${MaxTimeout}    4
${Examcode_data}    Exam_160           
${ExamName_data}    Revision Test160         
${ExamType_data}    OnLine            
${Examdate_data}    17-Oct-2020            
${ExamTotalMarks_data}    100                
${ExamPassMarks_data}    30                    
${ExamGrade_data}    ${GradecodeText_data}               
                 
${ExamDurationTextbox_data}    01:00                   
${ExamSectionOrder_data}    1     
${ExamSectionName_data}    A      
${ExamTotalQuestions_data}    5     
${ExamSectionTotalMarks_data}    100     
${ExamGroupName_data}    A1    
${ExamSecGrpQuestionsFrom_data}    1         
${ExamSecQuestionsTo_data}    5          
${ExamSecQuestionsCount_data}    5    
${SectionGrpIndivMarks_data}    20  
${ExamSelectSubject_data}    ${InputSubjName_data}   
${ExamSelectModule_data}    ${InputModuleName_data}
${ExamSelectTopic_data}    ${InputTopic_data}  
${ExamSelectObjective_data}    ${InputObj_data}         
${ExamSelectquestionLevel_data}    ${QuestionLevel_data}
${ExamSelectComplexity_data}    ${QuestionComplexity_data}      
${QuestionsTypeQuestionsFrom_data}    1          
${QestionsTypeQuestionsTo_data}    5    
${QuestionsTypeQuestionCount_data}    5       
${PassmarkTextbox_data}    30    

#Verify Data
${ExamSearchExamName_data}    ${ExamName_data}    
${ExamNameInGrid_data}    ${ExamName_data}   
${ExamLastActionStatusPending_data}    Pending for Verification
${ExamLastActionStatusApproval_data}    Pending for Approval 
${ExamLastActionStatusCompleted_data}    Completed

################Verifier#########################


${SelectActionVerify_data}    Verifed    
${VerifyDescription_data}    TestVerify    
${SelectActionApprove_data}    Approved        
${ApproveDescription_data}    TestApprove 

#####ExamUSerAccess############
    
${SelectExamMode_data}    ${ExamModeTxt_data}      
${SelectBatchYear_data}    2020   
${SelecteducationLevel_data}    ${EduSearchText_data}     
${SelectGroupName_data}    ${GroupName_data}  
${SelectAvailableuser_data}    ${Student1_data}       
${VerifySelectedUser_data}    ${Student1_data}        
        