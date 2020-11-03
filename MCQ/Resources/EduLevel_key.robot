*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Locators/EduLevel_loc.robot
Resource    ../TestData/EduLevel_data.robot

*** Keywords ***

Navigate to Education level
    Click Element    ${ExamMasterMenu}    
    Click Element    ${EducationLevelMenu}    
    Sleep    ${timeout}    
Add Education level and verify it
    Click Element    ${EduLevelAddbutton}    
    Sleep    ${timeout}
    Input Text    ${EduLevelText_loc}    ${EduLevelText_data}
    Click Element    ${SaveEduLevel_loc}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Input Text    ${EduSearchText_loc}    ${EduSearchText_data}
    Sleep    ${timeout}
    Click Element    ${EduSearchbutton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyEduLevel_loc}    ${VerifyEduLevel_data}    
    Click Element    ${VerifyEduLevel_loc}    
    Sleep    ${timeout}
    Click Element    ${AddGroup}    
    Sleep    ${timeout}
    Input Text    ${GroupName_loc}    ${GroupName_data}    
    Click Element    ${SaveGroup}    
    Click Element    ${YesButton}  
    Sleep    ${timeout}     
        
    
    