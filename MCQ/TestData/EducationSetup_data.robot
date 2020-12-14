*** Settings ***
Resource    ExamMaster_data.robot
Resource    General TestData.robot


*** Variables ***

   
${InputSubjectCode_data}    CH_012
${InputSubjName_data}    Physics XIII  
${InputSubjectDesc_data}    Physics 13th paper        
${SelectSubjectList_data}    ${InputSubjName_data}       
${VerifySubCode_data}    ${InputSubjectCode_data}        
${SearchSubCode_data}    ${InputSubjectCode_data}    
    
    
${InputModuleName_data}    Trees10    
    
${VerifyModule_data}    ${InputModuleName_data}   
    
${InputTopic_data}    Trees10 Varieties   
    
${VerifyTopic_data}    ${InputTopic_data}    
    
${InputObj_data}    Testing26  
    
${VerifyObj_data}    ${InputObj_data}    

##############Subject lecturer level setup#########################
${SelectBatchYear_data}    2020    
${SelectExamLevel_data}    ${EduSearchText_data}    
${InputLecturerName_data}    teacher_002       
${VerifySubjectName_data}    ${InputSubjName_data}    
${VerifyLecturerName_data}    ${InputLecturerName_data} 

####################Question details #########################

${SelectSubject_data}    ${InputSubjName_data}    
${SelectQuestionModule_data}    ${InputModuleName_data}    
${Questiontopic_data}    ${InputTopic_data}    
${QuestionObj_data}    ${InputObj_data}    
${QuestionLevel_data}    2    
${QuestionComplexity_data}    2    
${QuestionType_data}    Dichotomous    
${QuestionViewMode_data}    Public View    
@{QuestionDesc_data}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds            
@{SearchQuestionDesc_data}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds    
@{VerifyQuestionDesc_data}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds
                           


@{QuestionDesc_data1}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds            
@{SearchQuestionDesc_data1}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds    
@{VerifyQuestionDesc_data1}    Purple4 leaves is not a tree    Purple4 Laptop is a non living thing    Purple4 rose is a flower    Purple4 grapes is a fruit    Purple4 melon has more seeds        