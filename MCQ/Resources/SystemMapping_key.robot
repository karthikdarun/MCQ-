
*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/SystemMapping_loc.robot
Resource    ../TestData/SystemMapping_data.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/General TestData.robot

*** Keywords ***
Perform System mapping and verify it
    Input Text    ${SearchConfigName_loc}    ${SearchEmailDomainName} 
    Click Element    ${SearchConfigbn}       
    Sleep    ${timeout}
    Click Element    ${Editbn}    
    Input Text    ${DomainNameSystemValue_loc}    ${DomainNameSystemValue_data}    
    Click Element    ${SaveDomainNamebn}  
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    
    Input Text    ${SearchConfigName_loc}    ${SearchBatchYear}
    Click Element    ${SearchConfigbn}    
    Sleep    ${timeout}
    Click Element    ${Editbn}    
    Input Text    ${BatchYearSystemValue_loc}    ${BatchYearSystemValue_data}    
    Click Element    ${SaveBatchYearbn}    
    Click Element    ${YesButton}    
    Sleep    ${timeout}
    
    Input Text    ${SearchConfigName_loc}    ${SearchMobilenumberdigits}    
    Click Element    ${SearchConfigbn}
    Sleep    ${timeout}    
    Click Element    ${Editbn}    
    Input Text    ${MobileDigitsSytsemValue_loc}    ${MobileDigitsSytsemValue_data}    
    Click Element    ${SaveMobileDigitsbn}    
    Click Element    ${YesButton} 
    Sleep    ${timeout}
               
               