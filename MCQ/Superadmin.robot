*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${Server url}    http://muruga123-001-site1.itempurl.com/
${superadmin username}    superadmin
${superadmin password}    P@ssw0rd

*** Test Cases ***

Create Super Admin 
    Login As SuperAdmin
    Click On Project Master
    Click on Add button
    Enter the values for all the fields
    Verify the project name by searching it
    Click on Map Sysyem Config
    Click on System Configuration
    Select the values on organizational mapping
    Select values from Email template mapping
    Click on update button   

*** Keywords ***

Login As SuperAdmin
    Open browser    ${Server url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Input Text    id:TxtUserName    ${superadmin username}
    Input Password    id:TxtPassword    ${superadmin password}
    Sleep    4    
    Click Button    xpath://button[@onclick='Login()']
    Sleep    5
    
Click On Project Master
    
    Click Element    xpath://a[contains(text(),'System Master')]
    Sleep    3  
    Click Element   xpath://a[contains(text(),'Project Master')]
    Sleep    3
    
Click on Add button
    Click Button    id:btnAddProject
    
Enter the values for all the fields
    Input Text    name:txtProjectCode    SGE_002  
    Input Text    name:txtProjectName    Automation_002    
    Select From List By Label    id:DdlEmailConfigName    Email Config
    Select From List By Label    xpath://select[@id='DdlTimeZone']    India Standard Time
    Input Text    id:txtProjectContactPerson    karthik    
    Input Text    id:txtProjectContactNumber    9175878965    
    Input Text    id:txtProjectContactAddress    Flat 22, Singapore    
    Input Text    id:txtProjectDescription    International school    
    Click Button    id:btnSaveProject 
    Sleep    2
    Click Element    xpath://b[contains(text(),'Yes')]    
    # Handle Alert    ACCEPT
    Sleep    3
    
Verify the project name by searching it
    Input Text    xpath://input[@id='txtsearchProjectName']    Automation_002 
    Click Button    id:btnProjectSearch
    Sleep    3
    
Click on Map Sysyem Config
    Click Element    xpath://div[@title='Map System config']
    Sleep    2    
    
Click on System Configuration
    Click Button    id:btnright 
    Sleep    2    
    Click Button    id:btnMapConfig 
    Sleep    2
    Click Element    xpath:(//div[@class='jconfirm-buttons']/button)[1]
      
    
         
    
Select the values on organizational mapping
    # ${country}=    Get WebElements    id:ddlCountryName    
    # Select From List By Value    id:ddlCountryName    ${country}[Singapore]
    # ${Board}=    Get WebElements    id:ddlBoardName
    # Select From List By Value    id:ddlBoardName    ${Board}[CBSE]
    Select From List By Label    id:ddlCountryName    Singapore
    select From List By Label    id:ddlBoardName    CBSE
    Select From List By Label    id:ddlOrgName    HIndustan
    
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
    
    

                
    