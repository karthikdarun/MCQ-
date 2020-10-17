*** Variables ***
${System Master_loc}    xpath:(//div[@id='DivLeftMenuMain']//descendant::a)[2]
${Organization Level SetUp'_loc}    xpath://a[contains(.,'Organization Level SetUp')]
${SelectCountry_Loc}    xpath://select[@id='DdlOrgLevelCountry']
${BoardMasterSearch_loc}    xpath://button[@id='btnBoardMasterSearch']
${AddBoardMaster_loc}    xpath://button[@id='btnAddBoardMaster']
${BoardName_loc}    xpath://input[@id='txtBoardName']
${BoardType_loc}    xpath://select[@id='DdlBoardType']
${Website_loc}    xpath://input[@id='txtWebsite']
${Address_loc}    xpath://input[@id='txtAddress']
${BoardMasterSave_loc}    Xpath://button[@id='btnBoardMasterSave']
${VerifyBoardName_loc}    xpath:(//table[@id='BoardMasterGrid']//descendant::div)[9]
${AddOrganization_loc}    xpath://button[@id='btnAddOrganizationMaster']
${OrganizationName_loc}    xpath://input[@id='txtOrgName']
${OrganizationSaveButton_loc}    xpath://button[@id='btnOrganizationMasterSave']
${VerifyOrganizationName_loc}    xpath:(//table[@id='OrgMasterGrid']//descendant::td)[2]
${YesButton}    xpath:(//div[@class='jconfirm-buttons']//descendant::b)[1]

