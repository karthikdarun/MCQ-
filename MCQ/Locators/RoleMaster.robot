*** Variables ***
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
${Project_ViewScreen}    xpath://select[@id='DdlsearchRoleProject']
${RoleNameInSearch}    xpath://input[@id='txtsearchRolenName']
${SearchButtonInViewScreen}    //button[@id='btnRoleSearch']
${RoleName_Verify}    Xpath:(//table[@id='Rolegrid']//descendant::td)[7]
${SearchClearInViewScreen}    xpath://button[@id='btnRoleSearchClear']