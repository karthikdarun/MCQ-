*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/OnlineExam_loc.robot
Resource    ../TestData/OnlineExam_data.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot

*** Keywords ***
 Navigate to Online exam
    Click Element    ${okbutton}    
    Sleep    ${MinTimeout}
    Click Element    ${OnlineExam_Menu}
    Sleep    ${timeout}           
    
Take online exam and verify it
   Select From List By Label    ${OnlineSelectBatchYear_loc}    ${SelectBatchYear_data}
   Select From List By Label    ${OnlineSelectexamLevel_loc}    ${SelectexamLevel_data}
   Select From List By Label    ${OnlineSelectExamMode_loc}    ${SelectExamMode_data} 
   Click Element    ${OnlineSearchExamBn}    
   Sleep    ${timeout}
   Click Element    ${Nextpagebn}    
   Click Element    ${TakeExambn}    
   Sleep    ${timeout}
   Click Element    ${GoToExambn}
   Sleep    ${MinTimeout}
   Click Element    ${Answer_yes}
   Sleep    ${MinTimeout}
   Click Element    ${Nextbn}
   Sleep    ${MinTimeout}    
   Click Element    ${Answer_yes}
   Sleep    ${MinTimeout}    
   Click Element    ${Nextbn}
   Sleep    ${MinTimeout}    
   Click Element    ${Answer_yes}
   Sleep    ${MinTimeout}    
   Click Element    ${Nextbn}
   Sleep    ${MinTimeout}
   Click Element    ${Answer_yes}
   Sleep    ${MinTimeout}    
   Click Element    ${Nextbn} 
   Sleep    ${MinTimeout}   
   Click Element    ${Answer_yes}
   Sleep    ${MinTimeout}
   Execute Javascript    window.scrollBy(900,900)
   Sleep    ${timeout}      
   Click Element    ${Completebn}
   # Click Element    ${ViewResultbn}    
   Sleep    ${timeout}
   
   Element Text Should Be    ${OnlinePassTxt_loc}    ${OnlinePassTxt_data}
   Element text should be    ${OnlineTotalQuestionsCount_loc}    ${OnlineTotalQuestionsCount_data}
   Element Text Should Be    ${OnlineCorrectAnswerCount_loc}    ${OnlineCorrectAnswerCount_data}
   Element Text Should Be    ${OnlineWrongAnswerCount_loc}    ${OnlineWrongAnswerCount_data}
   Element Text Should Be    ${OnlineTotalMarks_loc}   ${OnlineTotalMarksCount_data}        
   Element Text Should Be    ${OnlineStudentMarks_loc}    ${OnlineStudentMarks_data} 
   Sleep    ${timeout}      
   
                         
          
