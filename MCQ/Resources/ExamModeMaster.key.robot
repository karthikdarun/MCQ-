*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/General Locators.robot
Resource    General keywords.robot
Resource    ../TestData/General TestData.robot
Resource    ../TestData/ExamModeMaster_data.robot
Resource    ../Locators/ExamModeMaster.loc.robot

*** Keywords ***
 Navigate to Exam Mode Master screen
    Click Element    ${ExamMasterMenu}    
    Click Element    ${ExamModeMaster_Menu}
    Sleep    ${timeout}    
    
 Add Exam Mode and Verify it
    Click Element    ${ExamModeAddBUtton}    
    Input Text    ${ExamModeTxt_loc}    ${ExamModeTxt_data}
    Select From List By Label    ${SelecReportView_loc}    ${SelecReportView_data}
    Input Text    ${DescExamMode_loc}    ${DescExamMode_data}
    Click Element    ${SaveExamMode}    
    Click Element    ${YesButton}
    Sleep    ${timeout}    
    Input Text    ${SearchExamModeTxtx_loc}    ${SearchExamModeTxtx_data}
    Click Element    ${SearchExamModeButton}
    Sleep    ${timeout}    
    Element Text Should Be    ${VerifyExamMode_loc}    ${VerifyExamMode_data}                              