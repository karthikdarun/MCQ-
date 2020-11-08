*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/RoleMatrix_loc.robot
Resource    ../TestData/RoleMatrix_data.robot


*** Keywords ***
       
Provide Menu and Page access for Admin
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleAdmin_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    # ${elements}=    Get WebElements    xpath://input[@id='UniqRoleMatrixAccessID']
    # ${CountElem}=    Get Length    ${elements}
    # FOR    ${index}    IN RANGE    0    ${CountElem}
        # Click Element    ${elements}[${index}]    
    # END             
    Select Checkbox    ${DefaultMasterMapping_ckbox}       
    Sleep    ${Timeout}
    Select Checkbox    ${RoleMapping_ckbox}         
    Sleep    ${Timeout}
    Select Checkbox    ${RoleMatrix_ckbox}       
    Sleep    ${Timeout}
    Select Checkbox    ${SystemMapping_ckbox}        
    Sleep    ${Timeout}    
    Select Checkbox    ${UserMaster_ckbox}    
    Sleep    ${Timeout}
    Select Checkbox    ${RoleMaster_ckbox}    
    Sleep    ${Timeout}
    Select Checkbox    ${WFS_ckbox}        
    Sleep    ${Timeout}
    Select Checkbox    ${ChangePass_ckbox}        
    Sleep    ${Timeout}
    Select Checkbox    ${DefaultMaster_ckbox}    
    Sleep    ${Timeout} 
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}   
    Click Element    ${UpdatebuttonRoleMatrix_loc}     
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout} 
    
    Execute Javascript    window.scrollBy(900, 900)    
    Sleep    ${Timeout}    
    Click Element    ${DefaultMasterMapping_pageaccess}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}    
    Click Element    ${RoleMapping_pageaccess}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${RoleMatrix_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${SystemMapping_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${UserMaster_pageaccess}    
    Click Element    ${UserMaster_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${RoleMaster_pageaccess}    
    Click Element    ${RoleMaster_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${WFS_pageaccess}
    Click Element    ${WFS_pageaccess} 
    Sleep    ${Timeout}   
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${ChangePass_Pageaccess}    
    Click Element    ${ChangePass_Pageaccess} 
    Sleep    ${Timeout}   
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc}
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout} 
    
       
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${DefaultMaster_pageaccess}    
    Click Element    ${DefaultMaster_pageaccess}
    Sleep    ${Timeout}  
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc}
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Verify Menu and page access for Admin
    
    Element Text Should Be    ${Dashboard_Menu}    ${Dashboard_Text}
    Click Element    ${Dashboard_Menu}    
    Element Should Be Visible    ${DashboardHome}        
    Click Element    ${SystemMaster_Menu}    
    Sleep    ${Timeout}   
    Element Text Should Be    ${UserMaster_Menu}    ${UserMaster_Text}
    Click Element    ${UserMaster_Menu}
    Sleep    ${Timeout}
    Element Should Be Visible    ${UM_searchText} 
    Element Should Be Enabled    ${DelButton}
    Element Should Be Enabled    ${AddButton}               
    Element Text Should Be    ${RoleMaster_Menu}    ${RoleMaster_Text}
    Click Element    ${RoleMaster_Menu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${RoleMasterSearchText}  
    Element Should Be Visible    ${RoleMasterAddButton}    
    Element Should Be Visible    ${RoleMasterDelButton}    
      
    Element Text Should Be    ${ChangePass_Menu}    ${ChangePassword_Text}
    Click Element    ${ChangePass_Menu} 
    Sleep    ${Timeout}   
    Element Should Be Visible    ${ChangePassSearchText}
            
    Element Text Should Be    ${DefaultMaster_Menu}    ${DefaultMaster_Text}
    Click Element    ${DefaultMaster_Menu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${DefaultMasterSearch}
    Element Should Be Visible    ${DefaultMasterAdd}    
    Element Should Be Visible    ${DefaultMaster_delbutton}        
    
    
    Click Element    ${WFS_Menu}
    Element Should Be Visible    ${WFSSearchText}            
    Element Text Should Be    ${SystemMappingMenu}    ${SystemMapping_Text}
    Click Element    ${SystemMappinSubMenu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${SystemmappingSearch}
    Element Should Be Visible    ${SystemMappingEditbutton}        
    Element Text Should Be    ${RoleMatrixMenu}    ${RoleMatrix_Text}
    Click Element    ${RoleMatrixMenu} 
    Sleep    ${Timeout}
    Element Should Be Visible    ${RoleMatrixSearch}
    Element Should Be Visible    ${RoleMatrix_updatebutton}          
    Element Text Should Be    ${RoleMappingMenu}    ${RoleMapping_Text}
    Click Element    ${RoleMappingMenu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${RoleMappingSearch} 
    Element Should Be Visible    ${RoleMapping_updatebutton}       
    Element Text Should Be    ${DefaultMasterMappingMenu}    ${DefaultMasterMapping_Text}
    Click Element    ${DefaultMasterMappingMenu} 
    Sleep    ${Timeout}
    Element Should Be Visible    ${DefaultMappingSearch}    
    Element Should Be Visible    ${DefaultMasterMappingUpdatebutton}    
    
        

    
Provide Menu and Page access for Teacher
    
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleTeacher_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Reports_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${ExamModeMaster_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ExamUserImport_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${GradeMaster_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Addressbook_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${WkFlow_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${EducationLevel_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ExamUserImport_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${EducationLevelImport_ckbox}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${SubjectLevelMapping_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${SubjectLecturerLevelSetUp_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${UserMaster_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${WFS_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ChangePass_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${DefaultMaster_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Compose_ckbox}
    Sleep    ${Timeout}      
    Select Checkbox    ${InternalEmail_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Inbox_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Drafts_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Trash_ckbox}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${SentMail_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${QuestionDetailsImport_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${Question Details_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ExamUserAccess_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ExamSetupDetails_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${TaskView_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Create Task_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${AssignTask_ckbox}
    Sleep    ${Timeout}
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}
    Sleep    ${Timeout}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout} 
    
    
    # Click Element    ${PageAccessButton_2} 
    # Sleep    ${Timeout}    
    # Select All From List    ${CommonListBox_loc}
    # Click Element    ${btnright_loc}    
    # Click Element    ${updatebutton_loc} 
    # Click Element    ${RoleMatrixYesBn}       
    # Sleep    ${Timeout}
    
    Click Element    ${ExamModeMaster_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${ExamUserMaster_Pageaccess}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Click Element    ${GradeMaster_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${AddressBook_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${WorkFlow_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${EducationLevel_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${ExamUserImport_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${EducationLevelImport_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${SubjectLevelMapping_Pageaccess}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${SubjectLecturerLevel SetUp_pageAccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${UserMaster_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${WFS_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${ChangePass_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)    
    Sleep    ${Timeout}    
    Click Element    ${DefaultMaster_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Compose_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${InternalEmail_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Inbox_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Drafts_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${Trash_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${SentMail_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
     Click Element    ${Question Details Import_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${Question Details_pageAccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    click Element    ${ExamUserAccess_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${ExamSetUpDetails_pageaccess}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${CreateTask_Pageaccess}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${AssignTask_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    
    
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    

Verify Menu and page access for Teacher
    Click Element    ${Dashboard_Menu}    
    Element Text Should Be    ${DashboardHome}    ${Dashboard_Text} 
    Click Element    ${Dashboard_Menu}    
    Element Text Should Be    ${DashboardHome}    ${DashboardHome_text}
        
    Click Element    ${SystemMaster_Menu}
    Click Element    ${UserMaster_Menu}
    Element Should Be Visible    ${UM_searchText}    
    Click Element    ${WFS_Menu}    
    Element Should Be Visible    ${WFSSearchText}
    Click Element    ${ChangePass_Menu}    
    Element Should Be Visible    ${ChangePassSearchText}
    Click Element    ${DefaultMaster_Menu}    
    Element Should Be Visible    ${DefaultMasterSearch} 
    
    Click Element    ${ExamMasterMenu}    
    Click Element    ${ExamModeMaster_Menu}
    Element Should Be Visible    ${ExamModeMasterSearch}
    Click Element    ${ExamMasterMenu}    
    Click Element    ${GradeMaster_Menu}
    Element Should Be Visible    ${GradeMasterSearch}
      
    Click Element    ${Address_Menu}
    Element Should Be Visible    ${AddressbookHome}
      
    Click Element    ${EducationLevelMenu}
    Element Should Be Visible    ${EducationLevelSearch}
    
    Click Element    ${ExamUSerImport_menu}
    Element Should Be Visible    ${ExamUserImportHome}
     
    Click Element    ${EduLevelImport_menu}
    Element Should Be Visible    ${EduLevelImportHome}
     
    Click Element    ${QuestionDetailsImport_Menu}
    Element Should Be Visible    ${QuestionDetailsImportHome} 
    Click Element    ${QuestionDetails_Menu}
    Element Should Be Visible    ${QuestionDetailsSearch}
    
    Click Element    ${ExamSetupMenu}        
                          
    Click Element    ${ExamUSerAccess_Menu}
    Element Should Be Visible    ${ExamUserAccessSearch}    
                          
    Click Element    ${ExamSetupDetails_Menu}
    Element Should Be Visible    ${ExamSetupDetailssearch}    
                          
    Click Element    ${EducationSetup_Menu}
    Click Element    ${SubjectLevelMapping_Menu}    
    Element Should Be Visible    ${SubjectLevelSetupSearch}    
                          
    Click Element    ${SubjectlecturerLevelSetup_menu}
    Element Should Be Visible    ${SubLecturerLevelsetupsearch}    
                          
    Click Element    ${TaskMaster_menu}
    Click Element    ${TaskView_menu}        
    Element Should Be Visible    ${TaskViewSearch}    
                          
    Click Element    ${CreateTask_menu}
    Element Should Be Visible    ${CreateTaskHome}
    
    Click Element    ${AssignTask_menu}
    Element Should Be Visible    ${AssignTaskSearch}        
    Element Should Be Visible    ${AssignTaskDelButton}
    Element Should Be Visible    ${AssignTaskEditButton}    
    Element Should Be Visible    ${AssignTaskResetButton}    
    Element Should Be Visible    ${AssignTaskSaveButton}    
    
    
    Click Element    ${internalemail_menu}
    Click Element    ${Compose_menu}    
    Element Should Be Visible    ${ComposeDiscardButton}
    Element Should Be Visible    ${ComposeDraftButton}    
    Element Should Be Visible    ${ComposeHome}    
    Element Should Be Visible    ${ComposeSendButton}
    
    Click Element    ${Inbox_menu}
    Element Should Be Visible    ${Inbox_menu}
    Click Element    ${Drafts_menu}
    Element Should Be Visible    ${DraftsHome}
    Click Element    ${Trash_menu}
    Element Should Be Visible    ${TrashHome}
    Click Element    ${${SentMail_menu}}
    Element Should Be Visible    ${SentMailHome}
    Click Element    ${Reports_menu}
    Element Should Be Visible    ${ExamStatusReportSearch}
    
    
Provide Menu and Page access for Verifier
    
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleVerifier_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Exam For Verification_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${All Exam Verification_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Verified Exams_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ChangePass_ckbox}
    Sleep    ${Timeout}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    
    

    Click Element    ${ChangePass_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Verify Menu and page access for Verifier
      Click Element    ${Dashboard_Menu}    
      Element Should Be Visible    ${DashboardHome} 
      Click Element    ${SystemMaster_Menu}
      Click Element    ${ChangePass_Menu}        
      Element Should Be Visible    ${ChangePassSearchText} 
      Click Element    ${AllExamVerificationMenu}    
      Element Should Be Visible    ${AllExamverificationSearch} 
      Click Element    ${ExamFOrVerificationMenu}    
      Element Should Be Visible    ${ExamForVerificationSearch} 
      Click Element    ${VerifiedExamsMenu}    
      Element Should Be Visible    ${VerifiedExamsSearch} 
       
    
                  
Provide Menu and Page access for Approver
    
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleApprover_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${ApprovedExams_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${All Exam Approval_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Exam For Approval_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ChangePass_ckbox}
    Sleep    ${Timeout}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}    

    Click Element    ${ChangePass_Pageaccess}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Verify Menu and page access for Approver
    Click Element    ${Dashboard_Menu}    
    Element Should Be Visible    ${DashboardHome}    
    Click Element    ${SystemMaster_Menu} 
    Click Element    ${ChangePass_Menu}       
    Element Should Be Visible    ${ChangePassSearchText}
    Click Element    ${AllExamApproval_menu}
    Element Should Be Visible    ${AllExamApprovalSearch}    
    Click Element    ${ExamForApproval_menu}
    Element Should Be Visible    ${ExamForApprovalSearch}    
    Click Element    ${ApprovedExams_menu}    
    Element Should Be Visible    ${ApprovedExamsSearch}                
    
    
Provide Menu and Page access for Student
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleStudent_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${OnlineExam_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${StudentTaskView_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Overall Exam Report_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${ExamScheduler_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${SystemMaster_Menu}
    Sleep    ${Timeout}    
    Select Checkbox    ${ChangePass_ckbox}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout} 
    Select Checkbox    ${Compose_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${InternalEmail_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Inbox_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${Drafts_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Trash_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${SentMail_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${Practice Exam View_ckbox}
    Sleep    ${Timeout}    
    Select Checkbox    ${Practice Exam Setup_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${AssignPracticeExam_ckbox}
    Sleep    ${Timeout}
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    
    
     
    Click Element    ${ChangePass_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${Compose_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${InternalEmail_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Inbox_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Drafts_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${Trash_Pageaccess}    
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${SentMail_Pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PracticeExamSetup_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${AssignPracticeExam_pageaccess} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Verify Menu and page access for Student
    Click Element    ${Dashboard_Menu}    
    Element Should Be Visible    ${DashboardHome_text}
    Click Element    ${SystemMaster_Menu} 
    Click Element    ${ChangePass_Menu}       
    Element Should Be Visible    ${ChangePassSearchText}
    Click Element    ${OnlineExam_Menu}
    Element Should Be Visible    ${OnlineExamHome}    
    Click Element    ${OverallExamReport_menu}    
    Element Should Be Visible    ${OverallExamReportSearch}    
    Click Element    ${ExamScheduler_menu}    
    Element Should Be Visible    ${ExamStatusReportSearch}
    
    Click Element    ${internalemail_menu} 
    Click Element    ${Compose_menu}       
    Element Should Be Visible    ${ComposeHome}
     Element Should Be Visible    ${ComposeDiscardButton}
     Element Should Be Visible    ${ComposeDraftButton}
     Element Should Be Visible    ${ComposeSendButton}
    
    Click Element    ${Inbox_menu}    
    Element Should Be Visible    ${InboxHome}
    Click Element    ${Drafts_menu}    
    Element Should Be Visible    ${DraftsHome}
    Click Element    ${Trash_menu}    
    Element Should Be Visible    ${TrashHome}
    Click Element    ${SentMail_menu}    
    Element Should Be Visible    ${SentMailHome}
    Click Element    ${StudentTaskView_menu}    
    Element Should Be Visible    ${StudenTaskViewHome}
    
    Click Element    ${PracticeExams_menu}
    Click Element    ${PracticeExamView_Menu}        
    Element Should Be Visible    ${PracticeExamViewHome}
    Click Element    ${PracticeExamSetup_Menu}
    Element Should Be Visible    ${PracticeExamSetupAddButton}    
    Element Should Be Visible    ${PracticeExamSetupDelButton}        
    Click Element    ${AssignPracticeExam_Menu}
    Click Element    ${AssignPracticeExam_Home}        
    

    
               
        