*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/General Locators.robot
Resource    ../Locators/DefaultMasterMapping_loc.robot
Resource    ../TestData/DefaultMasterMapping_data.robot

*** Keywords ***
Map the default types for Admin and verify it
    Select From List By Label    ${SelectRoleInDefaultMasterMap_loc}    ${SelectAdminRoleInDefaultMasterMap_data}
    Click Element    ${btnDefaultTypeSearch}    
    Sleep    ${timeout}
    Select All From List    ${lstUnSelectedDefaultType_loc}
    Click Element    ${Rightbutton}    
    Click Element    ${btnDefaultTypeUpdate} 
    Click Element    ${YesButton}
    ${listele}=    Get WebElements    xpath://*[@id='lstSelectedDefaultType']/option
    FOR    ${i}    IN    @{listele}
    ${Values}=    Get Text    ${i} 
           
    Element Text Should Be    ${lstSelectedDefaultType_loc}    @{AdminSelectedDefaultType_data}        
       
    END    
    
    
    
Map the default types for Teacher and verify it
    Select From List By Label    ${SelectRoleInDefaultMasterMap_loc}    ${SelectTeacherRoleInDefaultMasterMap_data}
    Click Element    ${btnDefaultTypeSearch}    
    Sleep    ${timeout}
    Select All From List    ${lstUnSelectedDefaultType_loc}
    Click Element    ${Rightbutton}    
    Click Element    ${btnDefaultTypeUpdate} 
    Click Element    ${YesButton}       
    Element Text Should Be    ${lstSelectedDefaultType_loc}    @{TeacherSelectedDefaultType_data}    
    Sleep    ${timeout}  
