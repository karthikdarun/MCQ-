*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Locators/EducationSetup_loc.robot
Resource    ../TestData/EducationSetup_data.robot


*** Keywords ***
Navigate to Subject level mapping screen
    Click Element    ${EducationSetup_Menu}
    Click Element    ${SubjectLevelMapping_Menu}    
    Sleep    ${timeout}    
Perform Subject level setup and verify it
    Click Element    ${SubLevelMapAddButton}
    Input Text    ${InputSubjectCode_loc}    ${InputSubjectCode_data}    
    Input Text    ${InputSubjName_loc}    ${InputSubjName_data}
    Input Text    ${InputSubjectDesc_loc}    ${InputSubjectDesc_data}    
    Click Element    ${SaveSubjectbn}    
    Click Element    ${YesButton}
    Input Text    ${SearchSubCode_loc}    ${SearchSubCode_data}
    Sleep    ${timeout}    
    Click Element    ${SearchSubjectbn}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifySubCode_loc}    ${VerifySubCode_data}    
    Sleep    ${timeout}    
       
    Click Element    ${VerifySubCode_loc}    
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${timeout}
    
    Click Element    ${AddModulebn}
    Sleep    ${timeout}
    Input Text    ${InputModuleName_loc}    ${InputModuleName_data}    
    Click Element    ${SaveModulebn}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyModule_loc}    ${VerifyModule_data}    
    Click Element    ${VerifyModule_loc}    
    Sleep    ${timeout}
    
    Click Element    ${AddTopicbn}
    Sleep    ${timeout}
    Input Text    ${InputTopic_loc}    ${InputTopic_data}    
    Click Element    ${SaveTopicbn}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyTopic_loc}    ${VerifyTopic_data}    
    Click Element    ${VerifyTopic_loc}    
    Sleep    ${timeout}
    
    Click Element    ${AddObjectivebn}
    Sleep    ${timeout}    
    Input Text    ${InputObj_loc}    ${InputObj_data}    
    Click Element    ${SaveObjectivebn}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifyObj_loc}    ${VerifyObj_data}    
    
           
        

Navigate to Subject lecturer level setup
    Sleep    ${timeout}
    Click Element    ${SubjectlecturerLevelSetup_menu}    
    Sleep    ${timeout}
       

Map subject with lecturer/teacher and verify it
    Select From List By Label    ${SelectBatchYearTeacherLevel_loc}    ${SelectBatchYear_data}
    Select From List By Label    ${SelectExamLevelTeacherLevelSetup_loc}    ${SelectExamLevel_data}
    Sleep    ${timeout}
    Click Element    ${SearchTeacherbn}
    Sleep    ${timeout}
    Click Element    ${AddLecturerlevelSetup}
    Click Element    ${EditLecturerlevelSetup}    
    Click Element    ${LecturerList_loc}
    Input Text    ${InputLecturerName_loc}    ${InputLecturerName_data} 
    Sleep    ${timeout}   
    Click Element    ${SearchLecturerbn}
    Sleep    ${timeout} 
    Click Element    ${SelectLecturerRadiobn}
    Sleep    ${timeout}
    Click Element    ${LecturerSubmitbutton}
    Select From List By Label    ${SelectSubjectList_loc}    ${SelectSubjectList_data}
    Click Element    ${UpdateLecturersetupbn}
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    Element Text Should Be    ${VerifySubjectName_loc}    ${VerifySubjectName_data}
    Sleep    ${timeout} 
    Element Text Should Be    ${VerifyLecturerName_loc}    ${VerifyLecturerName_data}                                           