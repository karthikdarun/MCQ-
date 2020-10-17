*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/RoleMaster.robot 
Resource    ../TestData/RoleMaster_Data.robot      

*** Keywords ***
Navigate to Role Master screen
    Click Element    xpath:(//div[@id='DivLeftMenuMain']//descendant::a)[2]    
    Click Element    xpath://a[contains(.,'Role Master')]
    Sleep    4 
    
Add and Verify the Roles
    FOR    ${index}    IN RANGE    0    5
    Click Element    ${RoleAddButton}    
    Sleep    ${Timeout}
    Wait Until Element Is Visible    ${RoleProjectSelect}   
    Select From List By Label    ${RoleProjectSelect}    ${Project_role}[${index}]
    Sleep    ${Timeout}        
    Input Text    ${RoleName}    ${RoleName_data}[${index}]
    Sleep    ${Timeout}
    Input Text    ${RoleDesc}    ${Role_Desc_data}[${index}] 
    Sleep    ${Timeout}  
    Select From List By Label    ${HomePage}    ${HomePage_role}[${index}]
    Sleep    ${Timeout}
    Select From List By Label    ${UserType}    ${UserType_role}[${index}]
    Sleep    ${Timeout}
    Select From List By Label    ${ColorName}    ${ColorName_role}[${index}]
    Sleep    ${Timeout}
    Checkbox Should Be Selected    ${Status}
    Sleep    ${Timeout}
    Click Element    ${RoleSaveButton} 
    Sleep    ${Timeout}   
    Click Element    ${RoleYesButton}
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    Select From List By Label    ${Project_ViewScreen}    ${Project_role}[${index}]
    Sleep    ${Timeout}
    Input Text    ${RoleNameInSearch}    ${RoleName_data}[${index}] 
    Sleep    ${Timeout}
    Sleep    ${Timeout}
    Click Element    ${SearchButtonInViewScreen}
    Sleep    ${Timeout}    
    Element Text Should Be    ${RoleName_Verify}    ${RoleName_data}[${index}]
    Sleep    ${Timeout}
    Log    ${RoleName_Verify}        
    Click Element    ${SearchClearInViewScreen}
    Sleep    ${Timeout}               
    END
    
       
                 