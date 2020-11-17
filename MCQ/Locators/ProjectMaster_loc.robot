
*** Variables ***
${SystemMasterMenu}    xpath://a[contains(text(),'System Master')]
${ProjectMasterMenu}    xpath://a[contains(text(),'Project Master')]
${AddProjectButton}    id:btnAddProject
${ProjectCode_loc}    name:txtProjectCode
${ProjectName_loc}    name:txtProjectName
${EmailConfig_loc}    id:DdlEmailConfigName
${TimeZone_loc}    xpath://select[@id='DdlTimeZone']
${ContactPerson_loc}    id:txtProjectContactPerson
${ContactNumber_loc}    id:txtProjectContactNumber
${ContactAddress_loc}    id:txtProjectContactAddress
${ProjectDescription_loc}    id:txtProjectDescription
${SaveProject}    id:btnSaveProject
${VerifyProjectName}    xpath://*[@id='Projectgrid']/tbody/tr/td[4]
${ProjectSearchTextbox}    xpath://input[@id='txtsearchProjectName']
${ProjectMasterSearch}    id:btnProjectSearch
${MapSystemConfigButton}    xpath://div[@title='Map System config']
${SystemConfig}    xpath://*[@id='btnMapConfig']
${buttonright}    id:btnright
${MapConfig}    id:btnMapConfig
${YesButon}    xpath:(//div[@class='jconfirm-buttons']/button)[1]
${OrganizationMapCountryName}    id:ddlCountryName
${OrgMappingBoardName}    id:ddlBoardName
${OrganizationName}    id:ddlOrgName
${UnselectedListBox}    id:lstUnSelectedTemplate
${RightbnEmailTemplate}    xpath:(//*[@id='btnright'])[2]
${UpdateEmailTemplateMap}    id:btnSysConfigUpdate
${Cancelbutton}    xpath://button[@id='btnCancelProjectConfig']

