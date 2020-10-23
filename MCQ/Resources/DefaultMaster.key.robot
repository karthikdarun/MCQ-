*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/DefaultMaster.loc.robot
Resource    ../Locators/General Locators.robot
Resource    ../TestData/DefaultMaster.data.robot

*** Keywords ***
Adding records for default types and verify it
    Click Element    ${BatchYear_loc}
    Execute Javascript    window.scrollBy(900,900)    
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${BatchyearDefaultTextField_data_1}
    Input Text    ${txtDefaultOrderBy_loc}    ${BatchyearDefaultOrderBy_data_2}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${BatchyearDefaultColorCode_data_3}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    
    Click Element    ${Level_loc}
    Execute Javascript    window.scrollBy(900,900)   
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${LevelDefaultTextField_data_1}
    Input Text    ${txtDefaultOrderBy_loc}    ${LevelDefaultOrderBy_data_2}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${LevelDefaultColorCode_data_3}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)    
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${LevelDefaultTextField_data_4}
    Input Text    ${txtDefaultOrderBy_loc}    ${LevelDefaultOrderBy_data_5}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${LevelDefaultColorCode_data_6}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
       
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${LevelDefaultTextField_data_7}
    Input Text    ${txtDefaultOrderBy_loc}    ${LevelDefaultOrderBy_data_8}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${LevelDefaultColorCode_data_9}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
     
      
    Click Element    ${TaskPriority_loc} 
    Execute Javascript    window.scrollBy(900,900)   
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskPriorityDefaultTextField_data_1}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskPriorityDefaultOrderBy_data_2}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskPriorityDefaultColorCode_data_3}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout} 
    Execute Javascript    window.scrollBy(900,900)   
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskPriorityDefaultTextField_data_4}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskPriorityDefaultOrderBy_data_5}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskPriorityDefaultColorCode_data_6}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
       
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskPriorityDefaultTextField_data_7}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskPriorityDefaultOrderBy_data_8}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskPriorityDefaultColorCode_data_9}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}     
    
           
     
    
           
    Click Element    ${Complexity_loc}
    Execute Javascript    window.scrollBy(900,900)    
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${ComplexityDefaultTextField_data_1}
    Input Text    ${txtDefaultOrderBy_loc}    ${ComplexityDefaultOrderBy_data_2}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${ComplexityDefaultColorCode_data_3}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}  
    Execute Javascript    window.scrollBy(900,900)  
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${ComplexityDefaultTextField_data_4}
    Input Text    ${txtDefaultOrderBy_loc}    ${ComplexityDefaultOrderBy_data_5}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${ComplexityDefaultColorCode_data_6}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
       
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${ComplexityDefaultTextField_data_7}
    Input Text    ${txtDefaultOrderBy_loc}    ${ComplexityDefaultOrderBy_data_8}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${ComplexityDefaultColorCode_data_9}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}  
     
    
    Click Element    ${TaskCategory_loc} 
    Execute Javascript    window.scrollBy(900,900)   
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskCategoryDefaultTextField_data_1}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskCategoryDefaultOrderBy_data_2}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskCategoryDefaultColorCode_data_3}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}  
    Execute Javascript    window.scrollBy(900,900)  
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskCategoryDefaultTextField_data_4}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskCategoryDefaultOrderBy_data_5}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskCategoryDefaultColorCode_data_6}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}
    Sleep    ${timeout}
    Execute Javascript    window.scrollBy(900,900)
       
    Click Element    ${btnAddDefaultDetail}
    Input Text    ${txtDefaultTextField_loc}    ${TaskCategoryDefaultTextField_data_7}
    Input Text    ${txtDefaultOrderBy_loc}    ${TaskCategoryDefaultOrderBy_data_8}    
    Select From List By Label    ${ddlDefaultColorCode_loc}    ${TaskCategoryDefaultColorCode_data_9}    
    Click Element    ${SaveDefaultMasterDetails}    
    Click Element    ${YesButton}   
            
       
