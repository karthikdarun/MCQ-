*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/OnlineExam_loc.robot
Resource    ../TestData/OnlineExam_data.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot

*** Keywords ***
 Navigate to Online exam
    Click Element    ${OnlineExam}
    Sleep    ${timeout}
           
    
Take online exam and verify it
   Select From List By Label    ${SelectBatchYear_loc}    ${SelectBatchYear_data}
   Select From List By Label    ${SelectexamLevel_loc}    ${SelectexamLevel_data}
   Select From List By Label    ${SelectExamMode_loc}    ${SelectExamMode_data} 
   Click Element    ${SearchExamBn}    
   Sleep    ${timeout}
   Click Element    ${Nextpagebn}    
   Click Element    ${TakeExambn}    
   Sleep    ${timeout}
   Click Element    ${GoToExambn}
   Click Element    ${True_1stradio button}
   Click Element    ${Nextbn}    
   Click Element    ${True_1stradio button}    
   Click Element    ${Nextbn}    
   Click Element    ${True_1stradio button}    
   Click Element    ${Nextbn}
   Click Element    ${True_1stradio button}    
   Click Element    ${Nextbn}    
   Click Element    ${True_1stradio button}
   Execute Javascript    window.scrollBy(900,900)
   Sleep    ${timeout}      
   Click Element    ${Completebn}
   # Click Element    ${ViewResultbn}    
   Sleep    ${timeout}
   
   Element Text Should Be    ${PassTxt_loc}    ${PassTxt_data}
   Element text should be    ${TotalQuestionsCount_loc}    ${TotalQuestionsCount_data}
   Element Text Should Be    ${CorrectAnswerCount_loc}    ${CorrectAnswerCount_data}
   Element Text Should Be    ${WrongAnswerCount_loc}    ${WrongAnswerCount_data}
   Element Text Should Be    ${TotalMarks_loc}   ${TotalMarksCount_data}        
   Element Text Should Be    ${StudentMarks_loc}    ${StudentMarks_data} 
   Sleep    ${timeout}      
   
                         
          
