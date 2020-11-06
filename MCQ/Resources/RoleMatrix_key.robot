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
    Select Checkbox    ${Checkbox8_loc}    
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox9_loc}     
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox10_loc}    
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox11_loc}    
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox12_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox13_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox14_loc}    
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox15_loc}    
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox16_loc}
    Sleep    ${Timeout} 
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}   
    Click Element    ${UpdatebuttonRoleMatrix_loc}     
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout} 
    
    Execute Javascript    window.scrollBy(900, 900)    
    Sleep    ${Timeout}    
    Click Element    ${PageAccessButton_10}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}    
    Click Element    ${PageAccessButton_11}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_12}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Sleep    ${Timeout} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_13}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${PageAccessButton_15}    
    Click Element    ${PageAccessButton_15} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${PageAccessButton_16}    
    Click Element    ${PageAccessButton_16}
    Sleep    ${Timeout}     
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${PageAccessButton_17}
    Click Element    ${PageAccessButton_17} 
    Sleep    ${Timeout}   
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${PageAccessButton_18}    
    Click Element    ${PageAccessButton_18} 
    Sleep    ${Timeout}   
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc}
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout} 
    
       
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${PageAccessButton_19}    
    Click Element    ${PageAccessButton_19}
    Sleep    ${Timeout}  
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc}
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Verify Menu and page access
    
    Element Text Should Be    ${Dashboard_Menu}    ${Dashboard_Text}
    Click Element    ${Dashboard_Menu}    
    Element Should Be Visible    ${DashboardHome}        
    Click Element    ${SystemMaster_Menu}    
    Element Text Should Be    ${SystemMaster_Menu}     ${SystemMaster_Text}
    Click Element    ${SystemMaster_Menu}
    Sleep    ${Timeout}    
    Element Text Should Be    ${UserMaster_Menu}    ${UserMaster_Text}
    Click Element    ${UserMaster_Menu}
    Element Should Be Visible    ${UM_searchText} 
    Element Should Be Visible    ${DelButton}
    Element Should Be Visible    ${AddButton}               
    Element Text Should Be    ${RoleMaster_Menu}    ${RoleMaster_Text}
    Click Element    ${RoleMaster_Menu}    
    Element Should Be Visible    ${RoleMasterSearchText}  
    Element Should Be Visible    ${RoleMasterAddButton}    
    Element Should Be Visible    ${RoleMasterDelButton}    
      
    Element Text Should Be    ${ChangePass_Menu}    ${ChangePassword_Text}
    Click Element    ${ChangePass_Menu}    
    Element Should Be Visible    ${ChangePassSearchText}
            
    Element Text Should Be    ${DefaultMaster_Menu}    ${DefaultMaster_Text}
    Click Element    ${DefaultMaster_Menu}    
    Element Should Be Visible    ${DefaultMasterSearch}
    Element Should Be Visible    ${DefaultMasterAdd}    
    Element Should Be Visible    ${DefaultMaster_delbutton}        
    
    Click Element    ${ExamMasterMenu}    
    Sleep    ${Timeout}    
    Element Text Should Be    ${ExamMasterMenu}    ${ExamMaster_Text}
    Click Element    ${ExamMasterMenu}    
    Element Text Should Be    ${ExamUserMasterMenu}    ${ExamUserMaster_Text}
    Click Element    ${ExamUSerMasterSearch}
    Element Should Be Visible    ${ExamUSerMasterAddButton}
    Element Should Be Visible    ${ExamUserMaster_delButton}            
    Element Should Be Visible    ${ExamUSerMasterSearch}   
    Element Text Should Be    ${EducationLevelMenu}    ${Education Level_Text}
    Click Element    ${EducationLevelMenu}    
    Element Should Be Visible    ${EducationLevelSearch}    
    Click Element    ${SystemMappingMenu}
    Sleep    ${Timeout}    
    Element Text Should Be    ${SystemMappingMenu}    ${SystemMapping_Text}
    Click Element    ${SystemMappinSubMenu}    
    Element Should Be Visible    ${SystemmappingSearch}
    Element Should Be Visible    ${SystemMappingEditbutton}        
    Element Text Should Be    ${RoleMatrixMenu}    ${RoleMatrix_Text}
    Click Element    ${RoleMatrixMenu} 
    Element Should Be Visible    ${RoleMatrixSearch}
    Element Should Be Visible    ${RoleMatrix_updatebutton}          
    Element Text Should Be    ${RoleMappingMenu}    ${RoleMapping_Text}
    Click Element    ${RoleMappingMenu}    
    Element Should Be Visible    ${RoleMappingSearch} 
    Element Should Be Visible    ${RoleMapping_updatebutton}       
    Element Text Should Be    ${DefaultMasterMappingMenu}    ${DefaultMasterMapping_Text}
    Click Element    ${DefaultMasterMappingMenu} 
    Element Should Be Visible    ${DefaultMappingSearch}    
    Element Should Be Visible    ${DefaultMasterMappingUpdatebutton}    
    
        

    
Provide Menu and Page access for Teacher
    
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleTeacher_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Checkbox1_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox2_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox3_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox4_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox5_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox6_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox7_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox8_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox9_loc}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox10_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox11_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox12_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox13_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox14_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox15_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox16_loc}
    Sleep    ${Timeout}      
    Select Checkbox    ${Checkbox17_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox18_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox19_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox21_loc}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox22_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox23_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox24_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox25_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox26_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox27_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox28_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox29_loc}
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
    
    Click Element    ${PageAccessButton_4} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_5}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_6} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_7} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_8} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_9} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_10} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_11} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_13}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_14} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_16} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_17} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_18} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(600, 600)    
    Sleep    ${Timeout}    
    Click Element    ${PageAccessButton_19} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_21} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_22} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_23} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_24} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_26} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_27} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
     Click Element    ${PageAccessButton_29} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_30} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    click Element    ${PageAccessButton_32} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_33}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_35}     
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_36} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_37} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    
Provide Menu and Page access for Verifier
    
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleVerifier_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Checkbox1_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox2_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox3_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox4_loc}
    Sleep    ${Timeout}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    
    

    Click Element    ${PageAccessButton_8} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Provide Menu and Page access for Approver
    
  Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleApprover_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Checkbox1_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox2_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox3_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox4_loc}
    Sleep    ${Timeout}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}    

    Click Element    ${PageAccessButton_8}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc} 
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
Provide Menu and Page access for Student
    Select From List By Label    ${RoleMatrixProject_loc}    ${RoleMatrixProject_data}
    Wait Until Element Is Visible    ${RoleMatrixRole_loc}    
    Select From List By Label    ${RoleMatrixRole_loc}    ${RoleMatrixRoleStudent_data}    
    Click Element    ${btnUserRoleMatrixSearch}
    Sleep    ${Timeout}
    
    Select Checkbox    ${Checkbox1_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox2_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox3_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox4_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox5_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox6_loc}
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout} 
    Select Checkbox    ${Checkbox7_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox8_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox9_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox10_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox11_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox12_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox13_loc}
    Sleep    ${Timeout}    
    Select Checkbox    ${Checkbox14_loc}
    Sleep    ${Timeout}
    Select Checkbox    ${Checkbox15_loc}
    Sleep    ${Timeout}
    Scroll Element Into View    ${UpdatebuttonRoleMatrix_loc}
    Click Element    ${UpdatebuttonRoleMatrix_loc} 
    Click Element    ${RoleMatrixYesBn}
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    
    
    # Click Element    ${PageAccessButton_2} 
    # Sleep    ${Timeout}    
    # Select All From List    ${CommonListBox_loc}
    # Click Element    ${btnright_loc}    
    # Click Element    ${updatebutton_loc} 
    # Click Element    ${RoleMatrixYesBn}       
    # Sleep    ${Timeout}
    
    # Click Element    ${PageAccessButton_4} 
    # Sleep    ${Timeout}    
    # Select All From List    ${CommonListBox_loc}
    # Click Element    ${btnright_loc}    
    # Click Element    ${updatebutton_loc} 
    # Click Element    ${RoleMatrixYesBn}       
    # Sleep    ${Timeout}
    
    # Click Element    ${PageAccessButton_6}     
    # Sleep    ${Timeout}    
    # Select All From List    ${CommonListBox_loc}
    # Click Element    ${btnright_loc}    
    # Click Element    ${updatebutton_loc} 
    # Click Element    ${RoleMatrixYesBn}       
    # Sleep    ${Timeout}
    # Click Element    ${PageAccessButton_8} 
    # Sleep    ${Timeout}    
    # Select All From List    ${CommonListBox_loc}
    # Click Element    ${btnright_loc}    
    # Click Element    ${updatebutton_loc} 
    # Click Element    ${RoleMatrixYesBn}       
    # Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_10} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Click Element    ${PageAccessButton_12} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_13} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_14} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_15} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_17}    
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_18} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_20} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_21} 
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}
    
    Execute Javascript    window.scrollBy(900, 900)
    Sleep    ${Timeout}
    Click Element    ${PageAccessButton_22}
    Sleep    ${Timeout}    
    Select All From List    ${CommonListBox_loc}
    Click Element    ${btnright_loc}    
    Click Element    ${updatebutton_loc} 
    Click Element    ${RoleMatrixYesBn}       
    Sleep    ${Timeout}    
         
           
        