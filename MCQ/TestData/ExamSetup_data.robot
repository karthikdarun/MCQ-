*** Variables ***
${MinTimeout}    2
${MaxTimeout}    4
@{Examcode_data}    Exam_128    Exam_129    Exam_130    Exam_131
@{ExamName_data}    Revision Test6    Revision Test7    Revision Test8    Revision Test9
@{ExamType_data}    OnLine    OnLine    OnLine    OnLine
@{Examdate_data}    17-Oct-2020    17-Oct-2020    19-Oct-2020    19-Oct-2020
@{TotalMarks_data}    100    100    100    100    
@{PassMarks_data}    40    30    40    30        
@{ExamGrade_data}    ABC    ABC    ABC    ABC   
@{ExamSetupWFS_data}    FL_001 - First Level    FL_001 - First Level    FL_001 - First Level    FL_001 - First Level      
@{ExamDurationTextbox_data}    01:00    01:00    01:00    00:10       
@{ExamSectionOrder_data}    1    1    1    1  
@{ExamSectionName_data}    A    A    A    A    
@{TotalQuestions_data}    5    5    5    5    
@{ExamSectionTotalMarks_data}    100    100    100    100    
@{GroupName_data}    A1    A1    A1    A1   
@{ExamSecGrpQuestionsFrom_data}    1    1    1    1        
@{ExamSecQuestionsTo_data}    5    5    5    5        
@{ExamSecQuestionsCount_data}    5   5    5    5    
@{SectionGrpIndivMarks_data}    20    20    20    20
@{SelectSubject_data}    Science    Science    Science    Science  
@{SelectModule_data}    Living    Living    Living    Living    
@{SelectTopic_data}    Plants    Plants    Plants    Plants    
@{SelectObjective_data}    Plant A    Plant A    Plant A    Plant A       
@{SelectquestionLevel_data}    1    1    1    1    
@{SelectComplexity_data}    Simple    Simple    Simple    Simple    
@{QuestionsTypeQuestionsFrom_data}    1    1    1    1        
@{QestionsTypeQuestionsTo_data}    5    5    5    5    
@{QuestionsTypeQuestionCount_data}    5    5    5    5    
@{PassmarkTextbox_data}    30    30    40    30 

#Verify Data
@{ExamSearchExamName_data}    @{ExamName_data}    @{ExamName_data}    @{ExamName_data}    @{ExamName_data}    
@{ExamNameInGrid_data}    @{ExamName_data}    @{ExamName_data}    @{ExamName_data}    @{ExamName_data}  
@{ExamLastActionStatus_data}    Completed    Completed    Completed    Completed 

#####ExamUSerAccess############
    
${SelectExamMode_loc}    Online    Online    Online    Online    
${SelectBatchYear_loc}    2020    2020    2020    2020    
${SelecteducationLevel_loc}    Primary One    Primary One    Primary One    Primary One    
${SelectGroupName_loc}    Group A    Group A    Group A     Group A   
${SelectAvailableuser_loc}    StudentName    StudentName    StudentName    StudentName    
${VerifySelectedUser_loc}    StudentName    StudentName    StudentName    StudentName        
        