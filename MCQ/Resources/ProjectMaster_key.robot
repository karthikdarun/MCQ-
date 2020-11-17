*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/ProjectMaster_loc.robot
Resource    ../TestData/ProjectMaster_data.robot 
Resource    ../TestData/General TestData.robot
Resource    ../Locators/General Locators.robot  

*** Keywords ***
Add Project Master and verify it
    
    Click Element    ${SystemMasterMenu}
    Sleep    ${Timeout}  
    Click Element   ${ProjectMasterMenu}
    Sleep    ${Timeout}   

    Click Button    ${AddProjectButton}   

    Input Text    ${ProjectCode_loc}    ${Projectcode_data}  
    Input Text    ${ProjectName_loc}    ${ProjectName_data}    
    Select From List By Label    ${EmailConfig_loc}    ${emaiConfig_data}
    Select From List By Label    ${TimeZone_loc}    ${TimeZone_data}
    Input Text    ${ContactPerson_loc}    ${ContactPerson_data}    
    Input Text    ${ContactNumber_loc}    ${ContactNumber}
    Input Text    ${ContactAddress_loc}    ${ContactAddress}    
    Input Text    ${ProjectDescription_loc}    ${ProjectDescription}    
    Click Button    ${SaveProject} 
    Sleep    ${MinTimeout}
    Click Element    ${YesButon}    
    # Handle Alert    ACCEPT
    Sleep    ${Timeout}    

    Input Text    ${ProjectSearchTextbox}    ${ProjectName_data} 
    Sleep    ${Timeout}
    Click Button    ${ProjectMasterSearch}
    Sleep    ${Timeout} 
    
    Element Text Should Be    ${VerifyProjectName}    ${ProjectName_data} 
    Sleep    ${Timeout}     

    Click Element    ${MapSystemConfigButton}
    Sleep    ${Timeout}
    
    # Click Element    ${buttonright}
    # Sleep    ${Timeout}
    # Click Button    ${SystemConfig}
    # Sleep    ${timeout}    
    # Click Button    ${YesButon}
    # Sleep    ${Timeout}         
    

    Select From List By Label    ${OrganizationMapCountryName}    ${OrgCountryName_data}
    select From List By Label    ${OrgMappingBoardName}    ${OrgBoardName_data}
    Select From List By Label    ${OrganizationName}    ${OrganizationName_data}
    

    Select All From List    ${UnselectedListBox}
    Wait Until Element Is Visible    ${RightbnEmailTemplate}  
    # Sleep    ${Timeout}  
    Click Element    ${RightbnEmailTemplate}  
    Sleep    ${Timeout} 
    

    Click Element   ${UpdateEmailTemplateMap}
    Sleep    ${Timeout}   
    Click Element    ${YesButon}   
    Sleep    ${Timeout}
    Click Element    ${Cancelbutton} 
    Sleep    ${Timeout}    
    
    
