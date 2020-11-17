*** Variables ***

   
${InputSubjectCode_data}    Py_002
${InputSubjName_data}    Physics II   
${InputSubjectDesc_data}    Physics 2nd paper        
${SelectSubjectList_data}    ${InputSubjName_data}       
${VerifySubCode_data}    ${InputSubjectCode_data}        
${SearchSubCode_data}    ${InputSubjectCode_data}    
    
    
${InputModuleName_data}    Fruits    
    
${VerifyModule_data}    ${InputModuleName_data}   
    
${InputTopic_data}    Fruits varieties   
    
${VerifyTopic_data}    ${InputTopic_data}    
    
${InputObj_data}    Testing15  
    
${VerifyObj_data}    ${InputObj_data}    

##############Subject lecturer level setup#########################
${SelectBatchYear_data}    2020    
${SelectExamLevel_data}    Secondary    
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
@{QuestionDesc_data}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds            
@{SearchQuestionDesc_data}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds    
@{VerifyQuestionDesc_data}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds
                           


@{QuestionDesc_data1}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds            
@{SearchQuestionDesc_data1}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds    
@{VerifyQuestionDesc_data1}    Tulsi is not a tree    Bench is a non living thing    Lily is a flower    Brinjal is a fruit    Papaya has more seeds        