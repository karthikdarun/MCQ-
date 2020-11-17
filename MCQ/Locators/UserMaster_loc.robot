*** Settings ***
Resource    ../TestData/UserMaster_data.robot


*** Variables ***

${AddButtonInViewScreen}    id:btnAddUser 
${SelectProject}    id:DdlUserProject
${A_login}    id:txtLoginName
${A_Password}    id:txtPassword          
${A_FirstName}    id:txtFirstName
${A_LastName}    id:txtLastName
${A_MailId}    id:txtUserEmailID
${A_MobNum}    id:txtUserMobileNumber
${A_Dob}    id:txtUserDOB
${A_Gender}    id:ddlUserGender
${A_lang}    xpath://span[contains(text(),'English')]
${A_DisplayAlert_click}    xpath://input[@class='chosen-search-input default']
${A_DisplayAlert_select}    xpath://li[contains(.,'${DisplayAlertText}')]
${Save_button}    id:btnSaveUser
${Accept_button}    xpath:(//div[@class='jconfirm-buttons']/button)[1]
${project_search_button}    id:DdlSearchUserProject
${LoginName_UMSearch}    id:txtsearchLoginName
${Search_button}    id:btnUserSearch
${CompareLoginNameText}    xpath:(//table[@id="Usergrid"]//descendant::td)[8]
${RoleAddButton}    xpath://button[@id='btnAddUserRole']
${RoleProjectSelect}    xpath://select[@id='DdlRoleProject']
${RoleName}    xpath://input[@id='txtRoleName']
${RoleDesc}    xpath://textarea[@id='txtRoleDescription']
${HomePage}    xpath://select[@id='DdlHomePage']
${UserType}    xpath://select[@id='ddlRoleUsertype']
${ColorName}    xpath://select[@id='ddlRoleColorCode']
${Status}    xpath://input[@id='ChkRoleUserActive']
${RoleSaveButton}    xpath://button[@id='btnSaveUserRole']
${RoleYesButton}    xpath:(//div[@class='jconfirm-buttons']/button)[1]



${Logout_user}    xpath://div[@id='DivTopMenuProfile']
${Logout_button}    xpath://span[contains(text(),'Log Out')]    
 
    
    
