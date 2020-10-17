*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/ProjectMaster_loc.robot
Resource    ../TestData/ProjectMaster_data.robot   

*** Keywords ***
Click On Project Master
    
    Click Element    ${SystemMasterMenu}
    Sleep    3  
    Click Element   ${ProjectMasterMenu}
    Sleep    3
    
Click on Add button
    Click Button    ${AddProjectButton}
    
Enter the values for all the fields
    Input Text    ${ProjectCode}    ${Projectcode_data}  
    Input Text    ${ProjectName}    ${ProjectName_data}    
    Select From List By Label    ${EmailConfig}    ${emaiConfig_data}
    Select From List By Label    ${TimeZone}    ${TimeZone_data}
    Input Text    ${ContactPerson}    ${ContactPerson_data}    
    Input Text    ${ContactNumber}        ${ContactNumber}
    Input Text    ${ContactAddress}    ${ContactAddress}    
    Input Text    ${ProjectDescription}    ${ProjectDescription}    
    Click Button    id:btnSaveProject 
    Sleep    2
    Click Element    ${YesButon}    
    # Handle Alert    ACCEPT
    Sleep    3
    
Verify the project name by searching it
    Input Text    ${ProjectSearchTextbox}    ${ProjectName_data} 
    Sleep    3
    Click Button    ${ProjectMasterSearch}
    Sleep    3
    
Click on Map Sysyem Config
    Click Element    ${MapSystemConfigButton}
    Sleep    2    
  
Click on System Configuration
    
    Click Element    ${buttonright}
    Sleep    2
    Click Button    ${SystemConfig}
    Sleep    2    
    Click Button    ${YesButon}
    Sleep    2
            
    
Select the values on organizational mapping
    Select From List By Label    ${OrganizationMapCountryName}    ${OrgCountryName_data}
    select From List By Label    ${OrgMappingBoardName}    ${OrgBoardName_data}
    Select From List By Label    ${OrganizationName}    ${OrganizationName_data}
    
Select values from Email template mapping
    Select All From List    id:lstUnSelectedTemplate
    Wait Until Element Is Visible    xpath:(//button[@id='btnright'])[2]    
    Click Element    xpath:(//button[@id='btnright'])[2]  
    Sleep    2 
    
Click on update button
    Click Element   id:btnSysConfigUpdate
    Sleep    2   
    Click Element    xpath:(//div[@class='jconfirm-buttons']/button)[1]   
    Sleep    3
    Click Element    xpath://button[@id='btnCancelProjectConfig']     
    
    
