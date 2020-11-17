*** Settings ***
Resource    ../TestData/ExamMaster_data.robot

*** Variables ***
##############EDULevel#################

${EduSearchText_loc}    xpath://*[@id='txtSearchEducationLevelName']
${EduSearchbutton}    xpath://*[@id='btnEducationSearch']
${VerifyEduLevel_loc}    xpath://*[@id='EducationMasterGrid']/tbody/tr/td[2]
${EduLevelAddbutton}    xpath://*[@id='btnAddEducationMaster']
${EduLevelText_loc}    xpath://*[@id='txtEducationLevelName']
${SaveEduLevel_loc}    xpath://*[@id='btnEducationMasterSave']
${AddGroup}    xpath://*[@id='btnAddEducationLevelGroup']    
${GroupName_loc}    xpath://*[@id='txtEducationLevelGroupName']
${SaveGroup}    xpath://*[@id='btnSaveEducationLevelGroup']

###############ExamModeMaster#########################

${SearchExamModeTxtx_loc}    xpath://*[@id='txtsearchExamMode']
${AddExamMOde}    xpath://*[@id='btnAddExamMode']
${ExamModeTxt_loc}    xpath://*[@id='txtExamMode']
${SelecReportView_loc}    xpath://*[@id='DdlExamUserReportView']
${DescExamMode_loc}    xpath://*[@id='txtExamModeDescription']
${SaveExamMode}    xpath://*[@id='btnSaveExamMode']
${SearchExamModeButton}    xpath://*[@id='btnExamModeSearch']
${VerifyExamMode_loc}    xpath://*[@id='ExamModegrid']/tbody/tr/td[2]
###############GradeMaster####################


${GradeCodeSearch_loc}    xpath://*[@id='txtSearchGradeCode']
${SearchGrade}    xpath://*[@id='btnGradeHeaderSearch']
${AddGrade}    xpath://*[@id='btnAddGradeHeader']
${GradeRecordVerify_loc}    xpath://*[@id='GridGradeHeader']/tbody/tr/td[2]
${GradecodeText_loc}    xpath://*[@id='txtGradeCode']
${SaveGrade}    xpath://*[@id='btnSaveGradeHeader']    
${AddGradeDetails}    xpath://*[@id='btnAddGradeDetail']
${GradeName_loc}    xpath://*[@id='txtGradeName']
${GradePoints_loc}    xpath://*[@id='txtGradePoints']
${MarksRangeFrom_loc}    xpath://*[@id='txtGradeRangeFrom']
${MarksRangeTo_loc}    xpath://*[@id='txtGradeRangeTo']
${GradeMessage_loc}    xpath://*[@id='txtGradeMessage']
${GradeDetailOrder_loc}    xpath://*[@id='txtGradeDetailOrder']
${SelectGradeColor_loc}    xpath://*[@id='ddlGradeColorCode']
${SaveGradedetail}    xpath://*[@id='btnSaveGradeDetail']

##################StudentCreation&Mapping###########

${ExamUserAddbutton}    xpath://*[@id='btnAddExamUser']
${ExamUSerLoginName_loc}    xpath://*[@id='txtExamUserLoginName']
${txtExamUserPassword_loc}    xpath://*[@id='txtExamUserPassword']
${txtExamUserFirstName_loc}    xpath://*[@id='txtExamUserFirstName']
${txtExamUserLastName_loc}    xpath://*[@id='txtExamUserLastName']
${txtExamUserEmailID_loc}    xpath://*[@id='txtExamUserEmailID']
${txtExamUserMobileNumber_loc}    xpath://*[@id='txtExamUserMobileNumber']
${DdlBatchYear_ExamUser_loc}    xpath://*[@id='DdlBatchYear_ExamUser']
${DdlExamLevel_ExamUser_loc}    xpath://*[@id='DdlExamLevel_ExamUser']
${DdlExamUserMasterGroupName_loc}    xpath://*[@id='DdlExamUserMasterGroupName']
${txtExamUserDOB_loc}    xpath://*[@id='txtExamUserDOB']
${ddlExamUserGender_loc}    xpath://*[@id='ddlExamUserGender']
${txtExamUserAddress_loc}    xpath://*[@id='txtExamUserAddress']
${ExamUserSelectLanguage_loc}    xpath://*[@id='SelectLanguage_ExamUser_chosen']
${ClickExamuserDisplayAlert_loc}    xpath://*[@id='SelectDisplayAlert_chosen']
${SelectExamUSerDisplayAlert_loc}    xpath://li[contains(., '${ExamuserDisplayAlert_data}')]
${btnSaveExamUser}    xpath://*[@id='btnSaveExamUser']
${ExamUserLogin_loc}    xpath://*[@id='txtsearchExamUserLoginName']
${btnExamUserSearch}    xpath://*[@id='btnExamUserSearch']
${VerifyStudentLogin_loc}    xpath://*[@id='ExamUsergrid']/tbody/tr/td[10]

###########role Mapping Student############


${SelectroleStudent_loc}    xpath://*[@id='DdlRoleSetUpUserRole']
${SeachButtonStudent_loc}    xpath://*[@id='btnLoginUserSearch']
${AvailableusersStudent_loc}    xpath://*[@id='lstUnSelectedUserID']
${RoleUpdatebuttonStudent}    xpath://*[@id='btnLoginUserUpdate']
${SelectedusersStudent_loc}    xpath://*[@id='lstSelectedUserID']

#######################WorkFlow##################

${WorkFlowCode_loc}    xpath://*[@id='txtWorkFlowCode']
${WorkFlowName_loc}    xpath://*[@id='txtWorkFlowName']
${AddWorkFlow}    xpath://*[@id='btnWorkFlowHeaderAdd']
${SaveWorkflow}    xpath://*[@id='btnWorkFlowHeaderSave']
${SearchWorkflowCode_loc}    xpath://*[@id='txtSearchWorkFlowCode']
${SearchWorflowbutton}    xpath://*[@id='btnWorkFlowHeaderSearch']
${VerifyWorkflow}    xpath://*[@id='GridWorkFlowHeader']/tbody/tr/td[2]
${AddWorkflowdetail}    xpath://*[@id='btnWorkFlowDetailAdd']
${SelectWorkFlowUser_loc}    xpath://*[@id='ddlWorkFlowDetailUser']
${Selectworkflowrole_loc}    xpath://*[@id='ddlWorkFlowDetailRole']
${SelectWorkflowAction_loc}    xpath://*[@value='Select Action']
# ${ClickWorkflowAction}    xpath://li[contains(.,'@{WorkflowAction_data}')]

${ClickWorkflowAction}    xpath://li[contains(.,'${WorkflowAction_data}')]
${Selectworkflowdisplayaction_loc}    xpath://*[@id='ddlWorkFlowDetailDisplayAction']
${WorkflowOrder_loc}    xpath://*[@id='txtWorkFlowDetailOrder']
${WorkflowactionMessage_loc}    xpath://*[@id='txtWorkFlowDetailMessage']
${SaveWorkflowdetail}    xpath://*[@id='btnWorkFlowDetailSave']