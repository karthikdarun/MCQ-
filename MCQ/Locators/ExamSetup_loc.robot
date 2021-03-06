*** Settings ***
Library    SeleniumLibrary
Library    DateTime        
Resource    ../Resources/ExamSetup_key.robot


*** Variables ***
${ExamSetupAddButton}    xpath://*[@id='btnExamdetailAdd']
${Examcode_loc}    xpath://*[@id='txtExamMasterExamCode']
${ExamName_loc}    xpath://*[@id='txtExamMasterExamName']
${ExamType_loc}    xpath://*[@id='DdlExamMasterExamType'] 
${ExamdateRadioButton_loc}    xpath://*[@id='AutoDate']
${ExamDateText_loc}    xpath://*[@id='txtExamMasterExamDate']
${Examdatepicker_loc}    xpath:(//*[@id='ExamMasterdialog']//descendant::span)[3]

# ${CurrentDate_loc}    xpath://td[@day='${day}']

${TotalMarks_loc}    xpath://*[@id='txtExamMasterTotalMarks']
${PassMarks_loc}    xpath://*[@id='txtExamMasterPassMarks']
${ExamGrade_loc}    xpath://*[@id='DdlExamMasterExamGrade']
${ExamSetupWFS_loc}    xpath://*[@id='DdlExamMasterWorkFlow']
${ExamDurationAuto_loc}    xpath://*[@id='AutoTime']
${ExamDurationFixed_loc}    xpath://*[@id='FixedTime']
${ExamDurationTextbox_loc}    xpath://*[@id='txtExamMasterExamDuration']
${ExamdateFixedRadio}    xpath://*[@id='FixedDate']
${examSaveButton}    xpath://*[@id='btnExamMasterSave']
${YesButton_loc}    xpath:(//*[@class='jconfirm-buttons']/button)[1]
${ExamSetupButton_loc}    xpath://*[@class='btn btn-GoButton']
${NextButton}    xpath://*[@id='btnNext']
${ExamSectionAdd_loc}    xpath://*[@id='btnExamSectionAdd']
${ExamSectionOrder_loc}    xpath://*[@id='txtExamSectionOrder']
${ExamSectionName_loc}    xpath://*[@id='txtExamSectionName']
${TotalQuestions_loc}    xpath://*[@id='txtExamTotalQuestions']
${ExamSectionTotalMarks_loc}    xpath://*[@id='txtExamTotalMarks']
${ExamSectionSaveButton_loc}    xpath://*[@id='btnExamSectionSave']
${ExamSectionViewRecord}    xpath://div[contains(text(),'A')]
${ExamSectionGroupAdd}    xpath://*[@id='btnExamSectionGrpdetailAdd']
${ExamGroupName_loc}    xpath://*[@id='txtExamSectionGroupName']
${ExamSecGrpQuestionsFrom_loc}    xpath://*[@id='txtExamSectionGroupQuestionsFrom']    
${ExamSecQuestionsTo_loc}    xpath://*[@id='txtExamSectionGroupQuestionsTo']    
${ExamSecQuestionsCount_loc}    xpath://*[@id='txtExamSectionGroupQuestionsCount']
${SectionGrpIndivMarks_loc}    xpath://input[@id='txtExamSectionGroupMarks']
${ExamSecGrpDetailSave_loc}    xpath://*[@id='btnExamSectionGrpdetailSave']
${ExamsecGrpDetailView_loc}    xpath://div[contains(text(),'A1')]
${ExamSecQuestionTypeAdd_loc}    xpath://button[@id='btnExamSectionQuestionTypeAdd']
${ExamSelectSubject_loc}    xpath://select[@id='DdlQuestionTypeExamSubject']
${ExamSelectModule_loc}    xpath://select[@id='DdlQuestionTypeExamModule']
${ExamSelectTopic_loc}    xpath://select[@id='DdlQuestionTypeTopic']
${ExamSelectObjective_loc}    xpath://select[@id='DdlQuestionTypeObjective']
${ExamSelectquestionLevel_loc}    xpath://select[@id='ddlQuestionTypeLevelName']
${ExamSelectComplexity_loc}    xpath://select[@id='DdlQuestionTypeComplexity']
${ExamQuestionsTypeQuestionsFrom_loc}    xpath://input[@id='txtQuestionTypeQuestionsFrom']    
${QestionsTypeQuestionsTo_loc}    xpath://input[@id='txtQuestionTypeQuestionsTo']
${QuestionsTypeQuestionCount_loc}    xpath://input[@id='txtQuestionTypeQuestionsCount']
${ExamSectionQuestionTypeSave_loc}    xpath://button[@id='btnExamSectionQuestionTypeSave']
${questionSelectionAdd_loc}    xpath://*[@id='grid']/tbody/tr/td[2]/div/span
${examSecQuestionSearch}    xpath://button[@id='btnExamQuesQuestionSearch']
${AllCheckbox}    xpath://input[@id='QuestionGridAllCheckBox']
${ExamQuesQuestionSave}    xpath://button[@id='btnExamQuesQuestionSave']
${PassMarkEdit}    xpath://tbody/tr/td[7]/div
${PassmarkTextbox_loc}    xpath://*[@id='txtpassmark_undefined']
${ExamUpdatebutton}    xpath://tbody/tr/td[7]/div/span[2]
${ExamSubmitButton}    xpath://button[@id='btnSubmission']
${ExamSearchExamName_loc}    xpath://input[@id='txtExamsearchExamName']
${ExamSearchButton}    xpath://button[@id='btnExamSearch']
${ExamNameInGrid_loc}    xpath://*[@id='ExamMasterGrid']/tbody/tr/td[6] 
${ExamLastActionStatus_loc}    xpath://*[@id='ExamMasterGrid']/tbody/tr/td[13]

###########################################Exam user access######################
${ExamUSerAccessClear}    xpath://*[@id='btnExamSearchClear']
${ExamNameInUserAcess_loc}    xpath://*[@id='txtExamsearchExamName']
${UseraccessExamRecord}    xpath://*[@id='ExamMasterGrid']/tbody/tr/td[2]
${SelectExamMode_loc}    xpath://*[@id='DdlExamMasterExamMode']
${SelectBatchYear_loc}    xpath://*[@id='DdllExamUserBatchYear']
${SelecteducationLevel_loc}    xpath://*[@id='DdlExamUserExamLevel']
${SelectGroupName_loc}    xpath://*[@id='DdlExamUserMasterGroupName']
${SelectAvailableuser_loc}    xpath://*[@id='lstExamUserUnSelectedUsers']
${VerifySelectedUser_loc}    xpath://*[@id='lstExamUserSelectedUsers']
${ExamUserAccessUpdate}    xpath://*[@id='btnExamUserLevelUpdate']

################Verifier#########################
${ExamForVerification}    xpath://*[contains(text(),'Exam For Verification')]
${VerifyButtonIn verifier}    xpath://div[@title='Verify']
${SelectAction_loc}    xpath://*[@id='DdlWorkflowRole']
${Verify/approveDescription_loc}    xpath://*[@id='txtDescription']
${Verify/ApproveSubmit}    xpath://*[@id='btnWorkflowSubmit']

################Approver##############################

${ExamForApprover}    xpath://*[contains(text(),'Exam For Approval')]
${ApproveButtonIn Approver}    xpath://*[@title='Approve']







   
