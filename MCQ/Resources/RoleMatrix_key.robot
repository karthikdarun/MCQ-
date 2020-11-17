*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/RoleMatrix_loc.robot
Resource    ../Locators/General Locators.robot
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
   
    Select Checkbox    ${RoleMapping_ckbox}         
    
    Select Checkbox    ${RoleMatrix_ckbox}       
   
    Select Checkbox    ${SystemMapping_ckbox}        
     
    Select Checkbox    ${UserMaster_ckbox}    
   
    Select Checkbox    ${RoleMaster_ckbox}    
    
    Select Checkbox    ${WFS_ckbox}        
    
    Select Checkbox    ${ChangePass_ckbox}        
   
    Select Checkbox    ${DefaultMaster_ckbox}    
  
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
    Sleep    ${Timeout}
    Element Should Be Enabled    ${DelButton}
    Element Should Be Enabled    ${AddButton}               
    Element Text Should Be    ${RoleMaster_Menu}    ${RoleMaster_Text}
    Click Element    ${RoleMaster_Menu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${RoleMasterSearchText}
    Sleep    ${Timeout}  
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
    Click Element    ${SystemMappingMenu}    
    Click Element    ${SystemMappinSubMenu}
    Sleep    ${Timeout}    
    Element Should Be Visible    ${SystemMappingSearch}
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
      
    Select Checkbox    ${ExamModeMaster_ckbox}
    
    Select Checkbox    ${ExamUserImport_ckbox}
   
    Select Checkbox    ${GradeMaster_ckbox}
    
    Select Checkbox    ${Addressbook_ckbox}
    
    Select Checkbox    ${WkFlow_ckbox}
    
    Select Checkbox    ${EducationLevel_ckbox}
   
    Select Checkbox    ${ExamUserImport_ckbox}
    
    Select Checkbox    ${EducationLevelImport_ckbox}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${SubjectLevelMapping_ckbox}
    Sleep    ${Timeout}
    Select Checkbox    ${SubjectLecturerLevelSetUp_ckbox}
   
    Select Checkbox    ${UserMaster_ckbox}
   
    Select Checkbox    ${WFS_ckbox}
   
    Select Checkbox    ${ChangePass_ckbox}
    
    Select Checkbox    ${DefaultMaster_ckbox}
    
    Select Checkbox    ${Compose_ckbox}
         
    Select Checkbox    ${InternalEmail_ckbox}
    
    Select Checkbox    ${Inbox_ckbox}
    
    Select Checkbox    ${Drafts_ckbox}
   
    Select Checkbox    ${Trash_ckbox}
   
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${SentMail_ckbox}
    
    Select Checkbox    ${QuestionDetailsImport_ckbox}
        
    Select Checkbox    ${Question Details_ckbox}
    
    Select Checkbox    ${ExamUserAccess_ckbox}
    
    Select Checkbox    ${ExamSetupDetails_ckbox}
    
    Select Checkbox    ${TaskView_ckbox}
    
    Select Checkbox    ${Create Task_ckbox}
    
    Select Checkbox    ${AssignTask_ckbox}
    
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}
    
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout} 
    
   
    
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
    Sleep    ${Timeout}
    

Verify Menu and page access for Teacher
     
    # Element Text Should Be    ${Dashboard_Menu}    ${Dashboard_Text} 
    
    # Element Text Should Be    ${DashboardHome}    ${DashboardHome_text}
        
    # Click Element    ${SystemMaster_Menu}
    # Click Element    ${UserMaster_Menu}
    # Sleep    ${MinTimeout}
    # Element Should Be Visible    ${UM_searchText}    
    # Click Element    ${WFS_Menu}    
    # Element Should Be Visible    ${WFSSearchText}
    # Click Element    ${ChangePass_Menu}    
    # Element Should Be Visible    ${ChangePassSearchText}
    # Click Element    ${DefaultMaster_Menu}    
    # Element Should Be Visible    ${DefaultMasterSearch} 
    
    # Click Element    ${ExamMasterMenu} 
    # Sleep    ${MinTimeout}   
    # Click Element    ${ExamModeMaster_Menu}
    # Sleep    ${MinTimeout}
    # Element Should Be Visible    ${ExamModeMasterSearch}
       
    # Click Element    ${GradeMaster_Menu}
    # Element Should Be Visible    ${GradeMasterSearch}
      
    # Click Element    ${Address_Menu}
    # Element Should Be Visible    ${AddressbookHome}
    # Sleep    ${Timeout}
      
    # Click Element    ${EducationLevelMenu}
    # Element Should Be Visible    ${EducationLevelSearch}
    # Sleep    ${MinTimeout}
    
    # Click Element    ${ExamUSerImport_menu}
    # Element Should Be Visible    ${ExamUserImportHome}
    # Sleep    ${MinTimeout}
     
    # Click Element    ${EduLevelImport_menu}
    # Element Should Be Visible    ${EduLevelImportHome}
    # Sleep    ${MinTimeout}
    # # Execute Javascript    window.scrollBy(900, 900)
    # # Execute Javascript    window.scrollBy(900,900)
    # Click Element    ${QuestionMaster_Menu}
    # Sleep    ${MinTimeout}     
    # Click Element    ${QuestionDetailsImport_Menu}
    # Element Should Be Visible    ${QuestionDetailsImportHome} 
    # Click Element    ${QuestionDetails_Menu}
    # Element Should Be Visible    ${QuestionDetailsSearch}
    # Sleep    ${MinTimeout}
    
    # Click Element    ${ExamSetupMenu}        
    # Sleep    ${MinTimeout}                     
    # Click Element    ${ExamUSerAccess_Menu}
    # Sleep    ${MinTimeout}
    # Element Should Be Visible    ${ExamUserAccessSearch} 
    # Sleep    ${MinTimeout}   
                          
    # Click Element    ${ExamSetupDetails_Menu}
    # Sleep    ${MinTimeout}
    # Element Should Be Visible    ${ExamSetupDetailssearch}
    # Sleep    ${MinTimeout}    
                          

    # Click Element    ${EducationSetup_Menu}
    # Sleep    ${MinTimeout}
    # Click Element    ${SubjectLevelMapping_Menu}    
    # Element Should Be Visible    ${SubjectLevelSetupSearch}    
                          
    # Click Element    ${SubjectlecturerLevelSetup_menu}
    # Element Should Be Visible    ${SubLecturerLevelsetupsearch} 
    # Sleep    ${Timeout}   
                          
    # Click Element    ${TaskMaster_menu}
    # Sleep    ${MinTimeout}
    # Click Element    ${TaskView_menu}        
    # Element Should Be Visible    ${TaskViewSearch}    
                          
    # Click Element    ${CreateTask_menu}
    # Element Should Be Visible    ${CreateTaskHome}
    
    # Click Element    ${AssignTask_menu}
    # Element Should Be Visible    ${AssignTaskSearch}        
    # Element Should Be Visible    ${AssignTaskDelButton}
    # Element Should Be Visible    ${AssignTaskEditButton}    
    # Element Should Be Visible    ${AssignTaskResetButton}    
    # Element Should Be Visible    ${AssignTaskSaveButton}    
    
    Execute Javascript    window.scrollBy(900,900)
    Click Element    ${internalemail_menu}
    Sleep    ${MinTimeout}
    Click Element    ${Compose_menu} 
    Sleep    ${MinTimeout}  
    Execute Javascript    window.scrollBy(0,0) 
    Element Should Be Visible    ${ComposeDiscardButton}
    Element Should Be Visible    ${ComposeDraftButton}     
    Element Should Be Visible    ${ComposeSendButton}
    
    Scroll Element Into View    ${ComposeHome}
    Element Should Be Visible    ${ComposeHome}   
    Click Element    ${Inbox_menu}
    Element Should Be Visible    ${Inbox_menu}
    Execute Javascript    window.scrollBy(900,900)
    Click Element    ${Drafts_menu}
    Scroll Element Into View    ${DraftsHome}
    Element Should Be Visible    ${DraftsHome}
    Execute Javascript    window.scrollBy(900,900)
    Click Element    ${Trash_menu}
    Scroll Element Into View    ${TrashHome}
    Element Should Be Visible    ${TrashHome}
    Execute Javascript    window.scrollBy(900,900)
    Click Element    ${SentMail_menu}
    Scroll Element Into View    ${SentMailHome}
    Element Should Be Visible    ${SentMailHome}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${timeout}
    Click Element    ${Reports_menu}
    Scroll Element Into View    ${ExamStatusReportSearch}
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
       
    Element Should Be Visible    ${DashboardHome}
    Click Element    ${SystemMaster_Menu} 
    Click Element    ${ChangePass_Menu}       
    Element Should Be Visible    ${ChangePassSearchText}
    Click Element    ${OnlineExam_Menu}
    Element Should Be Visible    ${OnlineExamHome}    
    Click Element    ${OverallExamReport_menu}    
    Element Should Be Visible    ${OverallExamReportSearch}    
    Click Element    ${ExamScheduler_menu}    
    Element Should Be Visible    ${ExamStatusReportSearch}
    Sleep    ${MinTimeout}
    
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
    Sleep    ${timeout}
    Click Element    ${Trash_menu}    
    Element Should Be Visible    ${TrashHome}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${timeout}
    Click Element    ${SentMail_menu}  
    Scroll Element Into View    ${SentMailHome}  
    Element Should Be Visible    ${SentMailHome}
    Click Element    ${StudentTaskView_menu}    
    Element Should Be Visible    ${StudenTaskViewHome}
    Sleep    ${MinTimeout}
    
    Click Element    ${PracticeExams_menu}
    Click Element    ${PracticeExamView_Menu}        
    Element Should Be Visible    ${PracticeExamViewHome}
    Click Element    ${PracticeExamSetup_Menu}
    Sleep    ${timeout}
    Element Should Be Visible    ${PracticeExamSetupAddButton}    
    Element Should Be Visible    ${PracticeExamSetupDelButton}
    Execute Javascript    window.scrollBy(900,900)        
    Click Element    ${AssignPracticeExam_Menu}
    Sleep    ${timeout}
    Scroll Element Into View    ${AssignPracticeExam_Home}
    Element Should Be Visible    ${AssignPracticeExam_Home}
    Sleep    ${timeout}        
    

    
               
        