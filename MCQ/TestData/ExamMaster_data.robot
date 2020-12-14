*** Variables ***

###########EDULevel##############
${EduSearchText_data}    Ten6      
${VerifyEduLevel_data}    ${EduSearchText_data}    
${EduLevelText_data}    ${EduSearchText_data}   
${GroupName_data}    Group Ten6
   
##########ExamModeMaster#################

${ExamModeTxt_data}    Online17       
${SelecReportView_data}    Yes    
${DescExamMode_data}    Online Exam
${SearchExamModeTxtx_data}   ${ExamModeTxt_data}
${VerifyExamMode_data}    ${ExamModeTxt_data}

##########GradeMaster###################

${GradeCodeSearch_data}    ${GradecodeText_data}          
${GradeRecordVerify_data}    ${GradecodeText_data}       
${GradecodeText_data}    DAB13        
@{GradeName_data}    First    Second    Fail    
@{GradePoints_data}    10    5    0            
@{MarksRangeFrom_data}    80    50    0  
@{MarksRangeTo_data}    100    79    49    
@{GradeMessage_data}    First class    Second class    Fail    
@{GradeDetailOrder_data}    1    2    3    
@{SelectGradeColor_data}    High    Medium    Low  

##############StudentCreation&Mapping##########

${StudentLoginName_data}    student33    
${txtExamUserPassword_data}   Student!1     
${txtExamUserFirstName_data}    student       
${txtExamUserLastName_data}    33    
${txtExamUserEmailID_data}    student33@gmail.com        
${txtExamUserMobileNumber_data}    9874563214        
${DdlBatchYear_ExamUser_data}    2020    
${DdlExamLevel_ExamUser_data}    ${EduSearchText_data}    
${DdlExamUserMasterGroupName_data}    ${GroupName_data}    
${txtExamUserDOB_data}    08-Jun-2006    
${ddlExamUserGender_data}    Male    
${txtExamUserAddress_data}     89 Serangoon Rd, Singapore 201458    
${ExamUserSelectLanguage_data}    English    
${ExamuserDisplayAlert_data}    EmailAlert
${Student1_data}    ${txtExamUserFirstName_data}    ${txtExamUserLastName_data} 
${SelectroleStudent_data}    Student  

############WorkFlow##########################

${WorkFlowCode_data}    WkF_019   
${WorkFlowName_data}    Test workflow19
# ${WorkflowStatus} =    Catenate   SEPARATOR=- ${WorkFlowCode_data}    ${WorkFlowName_data}       
      
${SearchWorkflowCode_data}    ${WorkFlowCode_data}   
${VerifyWOrkflow_data}    ${WorkFlowCode_data}    
@{SelectWorkFlowUser_data}    Verifier 001    Approver 001        
@{Selectworkflowrole_data}    Verifier    Approver 
   
@{WorkflowAction_data}    Verifed    Approved
${WorkflowActionV/AP_data}    Verifed            
@{Selectworkflowdisplayaction_data}    Pending for Verification    Pending for Approval        
@{WorkflowOrder_data}    1    2    
@{WorkflowactionMessage_data}    Verify the exam    Approve the exam  