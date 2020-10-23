*** Settings ***
Resource    ../TestData/Student Creation & Mapping.robot

*** Variables ***
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