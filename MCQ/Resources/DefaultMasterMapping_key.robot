*** Settings ***
Library    SeleniumLibrary
Library    Collections     
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
    
      
         
    ${listele}=    Get WebElements    ${SelectedList_All}
     
    FOR    ${i}    IN RANGE    0    9
    ${Values}=    Get Text    ${listele}[${i}]
    Log To Console    ${Values}
    ${expected_text}=    Get From List    ${AdminSelectedDefaultType_data}    ${i}
    Log To Console    ${expected_text}
    Should Be Equal    ${expected_text}    ${Values}       
    END    
    
    
    
Map the default types for Teacher and verify it
    Select From List By Label    ${SelectRoleInDefaultMasterMap_loc}    ${SelectTeacherRoleInDefaultMasterMap_data}
    Click Element    ${btnDefaultTypeSearch}    
    Sleep    ${timeout}
    Select All From List    ${lstUnSelectedDefaultType_loc}
    Click Element    ${Rightbutton}    
    Click Element    ${btnDefaultTypeUpdate} 
    Click Element    ${YesButton}       
    
    ${listele1}=    Get WebElements    ${SelectedList_All}
     
    FOR    ${i}    IN RANGE    0    9
    ${Teacher_ActualValues}=    Get Text    ${listele1}[${i}]
    Log To Console    ${Teacher_ActualValues}
    ${Expected_Values}=    Get From List    ${TeacherSelectedDefaultType_data}    ${i}
    Log To Console    ${Expected_Values}
    Should Be Equal    ${Expected_Values}    ${Teacher_ActualValues}       
    END  
