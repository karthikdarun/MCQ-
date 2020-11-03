*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot
Resource    ../Locators/QuestionDetails_loc.robot
Resource    ../TestData/QuestionDetails_data.robot

*** Keywords ***
Navigate to question details
    Click Element    ${QuestionMaster_Menu}       
    Click Element    ${QuestionDetails_Menu}
    Sleep    ${timeout}   
Add questions and verify it
    Click Element    ${Addquestionbn}    
    Sleep    ${timeout}    
    Select From List By Label    ${SelectSubject_loc}    ${SelectSubject_data}
    Select From List By Label    ${SelectQuestionModule_loc}    ${SelectQuestionModule_data}
    Select From List By Label    ${Questiontopic_loc}    ${Questiontopic_data}
    Select From List By Label    ${QuestionObj_loc}    ${QuestionObj_data}
    Select From List By Label    ${QuestionLevel_loc}    ${QuestionLevel_data}
    Select From List By Label    ${QuestionComplexity_loc}    ${QuestionComplexity_data}
    Select From List By Label    ${QuestionType_loc}    ${QuestionType_data}
    Select From List By Label    ${QuestionViewMode_loc}    ${QuestionViewMode_data}
    FOR    ${i}    IN RANGE    0    5
    Input Text    ${QuestionDesc_loc}    ${QuestionDesc_data}[${i}]
    Click Element    ${SaveQuestionbn}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}       
    END
       
    Click Button    ${Backbn}    
    Sleep    ${timeout}    
    FOR    ${index}    IN RANGE    0    5
    Input Text    ${SearchQuestionDesc_loc}    ${SearchQuestionDesc_data}[${index}]
    Click Element    ${QuestionSearchbn}
    Sleep    ${timeout}    
    Element Text Should Be    ${VerifyQuestionDesc_loc}    ${VerifyQuestionDesc_data}[${index}]
    Sleep    ${timeout}
    Click Element    ${Answerbn}    
    Sleep    ${timeout}
    Click Element    ${AnswerYesbn}    
    Click Element    ${SaveAnswerbn}
    Click Element    ${YesButton}
    Sleep    ${timeout}           
    END      
    
    
    
    