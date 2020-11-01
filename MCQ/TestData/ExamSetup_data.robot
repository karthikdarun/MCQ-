*** Variables ***
${MinTimeout}    2
${MaxTimeout}    4
${Examcode_data}    Exam_142           
${ExamName_data}    Revision Test24          
${ExamType_data}    OnLine            
${Examdate_data}    17-Oct-2020            
${TotalMarks_data}    100                
${PassMarks_data}    40                    
${ExamGrade_data}    ABC               
${ExamSetupWFS_data}    FL_001 - First Level                  
${ExamDurationTextbox_data}    01:00                   
${ExamSectionOrder_data}    1     
${ExamSectionName_data}    A      
${TotalQuestions_data}    5     
${ExamSectionTotalMarks_data}    100     
${GroupName_data}    A1    
${ExamSecGrpQuestionsFrom_data}    1         
${ExamSecQuestionsTo_data}    5          
${ExamSecQuestionsCount_data}    5    
${SectionGrpIndivMarks_data}    20  
${SelectSubject_data}    Science   
${SelectModule_data}    Living
${SelectTopic_data}    Plants  
${SelectObjective_data}    Plant A         
${SelectquestionLevel_data}    1
${SelectComplexity_data}    1      
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
    
${SelectExamMode_data}    Online      
${SelectBatchYear_data}    2020   
${SelecteducationLevel_data}    Primary One     
${SelectGroupName_data}    Group A  
${SelectAvailableuser_data}    student 06       
${VerifySelectedUser_data}    student 06        
        