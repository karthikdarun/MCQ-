
*** Settings ***

Library    SeleniumLibrary    
Resource   ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../TestData/SuperAdmin_data.robot
Resource    ../Locators/RoleMapping_loc.robot
Resource    ../Locators/RoleMatrix_loc.robot
Resource    ../Locators/UserMaster_loc.robot
Resource    ../Locators/RoleMaster.robot



*** Keywords ***


Provide access to menu and page
    Select From List By Label    ${SelectProject_loc}    ${SelectProjectAdmin_Data}
    Select From List By Label    ${SelectRole_loc}    ${SelectRoleAdmin_Data}
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${timeout}
    Select Checkbox    ${RoleMapping_ckbox}
    Select Checkbox    ${RoleMaster_ckbox}
    Select Checkbox    ${UserMaster_ckbox}
    Select Checkbox    ${OrganizationLevelSetup_ckbox}
    Scroll Element Into View    ${RoleMatrix_updatebutton} 
    Click Element    ${RoleMatrix_updatebutton}    
    Click Element    ${RoleMatrix_updatebutton} 
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${RoleMapping_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout} 
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${UserMaster_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${Timeout}
    Click Element    ${RoleMaster_pageaccess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${Timeout}
    Click Element    ${OrganizationLevelSetup_PageAcess}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}                
           
    
Verify page and menu access
    Execute Javascript    window.scrollBy(900,900)
    Checkbox Should Be Selected    ${RoleMapping_ckbox}
    Checkbox Should Be Selected    ${UserMaster_ckbox}
    Checkbox Should Be Selected    ${RoleMaster_ckbox}
    Checkbox Should Be Selected    ${OrganizationLevelSetup_ckbox}
Add Admin role and verify it 
      
    
    Click Element    ${RoleAddButton}    
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${RoleProjectSelect}   
    Select From List By Label    ${RoleProjectSelect}    ${SelectProjectAdmin_Data}
    Sleep    ${Timeout}        
    Input Text    ${RoleName}    ${RoleName_dataAdmin}
    Sleep    ${Timeout}
    Input Text    ${RoleDesc}    ${Role_Desc_dataAdmin}
    Sleep    ${Timeout}  
    Select From List By Label    ${HomePage}    ${HomePage_roleAdmin}
    Sleep    ${Timeout}
    Select From List By Label    ${UserType}    ${UserType_roleAdmin}
    Sleep    ${Timeout}
    Select From List By Label    ${ColorName}    ${ColorName_roleAdmin}
    Sleep    ${Timeout}
    Checkbox Should Be Selected    ${Status}
    Sleep    ${Timeout}
    Click Element    ${RoleSaveButton} 
    Sleep    ${Timeout}   
    Click Element    ${RoleYesButton}
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    Select From List By Label    ${Project_ViewScreen}    ${SelectProjectAdmin_Data}
    Sleep    ${Timeout}
    Input Text    ${RoleNameInSearch}    ${RoleName_dataAdmin}
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    Click Element    ${SearchButtonInViewScreen}
    Sleep    ${Timeout}    
    Element Text Should Be    ${RoleName_Verify}    ${RoleName_dataAdmin}
    Sleep    ${Timeout}   
Add Admin user and verify it 
    Click Element    ${UserMaster_Menu}    
    Sleep    ${timeout}
    
    Click Element    ${AddButtonInViewScreen} 
    Sleep    ${timeout}       
    Select From List By Label    ${SelectProject}    ${SelectProjectAdmin_Data}  
    Input Text    ${A_login}   ${LoginAdmin}
    Input Password    ${A_Password}    ${Pwd}
    Input Text    ${A_FirstName}    ${FNameAdmin}
    Input Text    ${A_LastName}    ${LNameAdmin}
    Input Text    ${A_MailId}    ${EmailAdmin}   
    Input Text    ${A_MobNum}    ${Mob_NumAdmin}  
    Input Text    ${A_Dob}    ${DOBAdmin}
    Select From List By Label    ${A_Gender}    ${GenderAdmin}
    Sleep    ${timeout}
    Element Should Contain    ${A_lang}    ${LangAdmin} 
    Sleep    ${timeout}
                 
    Wait Until Element Is Visible    ${A_DisplayAlert_click}     
    # Select From List By Label    xpath://div[$id='SelectLanguage_ExamUser_chosen']    ${Admin Lang}
    Click Element    ${A_DisplayAlert_click}    
    Sleep    ${timeout}
    Mouse Down    ${A_DisplayAlert_select}
    Sleep    ${timeout}
    Click Element    ${A_DisplayAlert_select}        
    
    Click Element    ${Save_button}
    Click Element    ${Accept_button}
    Sleep    ${timeout}    
    Select From List By Label    ${project_search_button}    ${SelectProjectAdmin_Data}
    Input Text    ${LoginName_UMSearch}    ${LoginAdmin}
    Sleep    ${timeout}
    Click Element    ${Search_button}
    Sleep    ${timeout}
    # ${VerifyLoginName}    Get Text    ${CompareLoginNameText}
    Element Text Should Be    ${CompareLoginNameText}    ${LoginAdmin}    
    Sleep    ${MinTimeout} 
    Click Element    ${SystemMaster_Menu}    
    Sleep    ${timeout}   
Perform role mapping for admin user
        
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${SelectProject_loc}    
    Select From List By Label    ${SelectProject_loc}    ${SelectProjectAdmin_Data}  
    Sleep    ${Timeout}
    Select From List By Label    ${SelectRole_loc}    ${SelectRoleAdmin_Data}    
    Sleep    ${Timeout}
    Click Element    ${Searchbutton_loc}    
    Sleep     ${Timeout}
    Select From List By Label    ${AvailUsers_loc}    ${AvailUsersAdmin_Data}
    Sleep    ${Timeout}
    Click Element    ${buttonRight_loc}      
    Sleep    ${Timeout}       
    Click Element    ${UpdateButton_loc}
    Sleep    ${Timeout}    
    Click Element    ${YesButton_loc}  
    Sleep    ${Timeout}  
    Click Element    ${ClearButton_loc}
    Wait Until Element Is Visible    ${SelectProject_loc}    
    Select From List By Label    ${SelectProject_loc}    ${SelectProjectAdmin_Data}
    Sleep    ${Timeout}
    Select From List By Label    ${SelectRole_loc}    ${SelectRoleAdmin_Data}    
    Sleep    ${Timeout}
    Click Element    ${Searchbutton_loc} 
    Sleep    ${Timeout}
    Element Should Contain    ${SelectedUsers_loc}    ${SelectedUsersAdmin_Data}    
    Sleep    ${Timeout}
    
  