*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/GradeMaster.loc.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/GradeMaster.data.robot


*** Keywords ***
Navigate to Grade Master screen
    Click Element    ${ExamMasterMenu}    
    Click Element    ${GradeMaster_Menu}    
    Sleep    ${timeout}
Add grades and Verify it
    Click Element    ${AddGrade}    
    Input Text    ${GradecodeText_loc}    ${GradecodeText_data}
    Click Element    ${SaveGrade}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Input Text    ${GradeCodeSearch_loc}    ${GradeCodeSearch_data}
    Sleep    ${timeout}    
    Click Element    ${SearchGrade}    
    Sleep    ${timeout}    
    Element Text Should Be    ${GradeRecordVerify_loc}    ${GradeRecordVerify_data}
    Sleep    ${timeout}
    Click Element    ${GradeRecordVerify_loc}
    Sleep    ${timeout}
    
    FOR    ${index}    IN RANGE    0    3  
    Click Element    ${AddGradeDetails}  
    Input Text    ${GradeName_loc}    ${GradeName_data}[${index}]
    Input Text    ${GradePoints_loc}    @{GradePoints_data}[${index}]    
    Input Text    ${MarksRangeFrom_loc}    @{MarksRangeFrom_data}[${index}]
    Input Text    ${MarksRangeTo_loc}    @{MarksRangeTo_data}[${index}]    
    Input Text    ${GradeMessage_loc}    @{GradeMessage_data}[${index}]   
    Input Text    ${GradeDetailOrder_loc}    @{GradeDetailOrder_data}[${index}]
    Select From List By Label    ${SelectGradeColor_loc}    @{SelectGradeColor_data}[${index}]
    Click Element    ${SaveGradedetail}    
    Click Element    ${YesButton}
    Sleep    ${timeout}           
    END
                        