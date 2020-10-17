
*** Variables ***
${SystemMasterMenu}    xpath://a[contains(text(),'System Master')]
${ProjectMasterMenu}    xpath://a[contains(text(),'Project Master')]
${AddProjectButton}    id:btnAddProject
${ProjectCode}    name:txtProjectCode
${ProjectName}    name:txtProjectName
${EmailConfig}    id:DdlEmailConfigName
${TimeZone}    xpath://select[@id='DdlTimeZone']
${ContactPerson}    id:txtProjectContactPerson
${ContactNumber}    id:txtProjectContactNumber
${ContactAddress}    id:txtProjectContactAddress
${ProjectDescription}    id:txtProjectDescription
${SaveProject}    id:btnSaveProject
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
${OrgMapButtonRight}    xpath:(//button[@id='btnright'])[2]
