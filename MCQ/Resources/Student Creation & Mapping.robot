*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../TestData/Student Creation & Mapping.robot
Resource    ../Locators/StudentCreation&Mapping.robot

*** Keywords ***
Add Students and verify it
    Click Element    ${ExamUserAddbutton}
    Input Text    ${ExamUSerLoginName_loc}    ${StudentLoginName_data} 
    Input Password    ${txtExamUserPassword_loc}    ${txtExamUserPassword_data}
    Input Text    ${txtExamUserFirstName_loc}    ${txtExamUserFirstName_data}
    Input Text    ${txtExamUserLastName_loc}    ${txtExamUserLastName_data}    
    Input Text    ${txtExamUserEmailID_loc}    ${txtExamUserEmailID_data}
    Input Text    ${txtExamUserMobileNumber_loc}    ${txtExamUserMobileNumber_data}    
    Select From List By Label    ${DdlBatchYear_ExamUser_loc}    ${DdlBatchYear_ExamUser_data}
    Select From List By Label    ${DdlExamLevel_ExamUser_loc}    ${DdlExamLevel_ExamUser_data} 
    Select From List By Label    ${DdlExamUserMasterGroupName_loc}    ${DdlExamUserMasterGroupName_data}
    Input Text    ${txtExamUserDOB_loc}    ${txtExamUserDOB_data}    
    Select From List By Label    ${ddlExamUserGender_loc}    ${ddlExamUserGender_data}
    Input Text    ${txtExamUserAddress_loc}    ${txtExamUserAddress_data}    
    Click Element    ${ClickExamuserDisplayAlert_loc}    
    Sleep    ${timeout}    
    Mouse Down    ${SelectExamUSerDisplayAlert_loc}
    Sleep    ${timeout}    
    Click Element    ${SelectExamUSerDisplayAlert_loc}
    Sleep    ${timeout}                                 
    Click Element    ${btnSaveExamUser}    
    Click Element    ${YesButton}
    Input Text    ${ExamUserLogin_loc}    ${StudentLoginName_data}
    Sleep    ${timeout}    
    Click Element    ${btnExamUserSearch}
    Sleep    ${timeout}   
     
        
    ${textvalue}    Get Text    ${VerifyStudentLogin_loc} 
    Log To Console    ${textvalue}          
    Element Text Should Be    ${VerifyStudentLogin_loc}    ${StudentLoginName_data}    
    
Map the user with student role and verify it
    Select From List By Label    ${SelectroleStudent_loc}    ${SelectroleStudent_data}
    Click Element    ${RoleMappingSearchButton}
    Sleep    ${timeout}
    
    Wait Until Element Is Visible    ${AvailableusersStudent_loc}    
    Select From List By Label    ${AvailableusersStudent_loc}    ${Student1_data}     
    Click Element    ${Rightbutton}
    Click Element    ${RoleUpdatebuttonStudent}
    Click Element    ${YesButton} 
    Sleep    ${timeout}
    Element Text Should Be    ${SelectedusersStudent_loc}    ${Student1_data}    
    



    # ${elements1}=    Get WebElements    //*[@id='lstSelectedUserID']/option
    # FOR    ${element1}    IN    @{elements1}
    # ${SelectedUsersList}=    Get Text    ${element1}
    # if 
    # Log To Console    ${SelectedUsersList}
    # END 
            
     
    
                       