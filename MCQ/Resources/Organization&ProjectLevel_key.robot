*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/Organization&ProjectLevel_loc.robot
Resource    ../TestData/Organization&ProjectLevel_data.robot
Resource    General keywords.robot

*** Keywords ***
    
Navigation to Organization level setup
    Click Element    ${System Master_loc}   
    # Sleep    ${Timeout}
    # Execute Javascript    window.scrollBy(900, 900)
    # Scroll Element Into View    ${Organization Level SetUp'_loc}
    Sleep    ${Timeout}
    Click Element    ${Organization Level SetUp'_loc}    
    Sleep    ${Timeout}  
        
       
    
Add Organization setup and Verify it
    Select From List By Label    ${SelectCountry_Loc}    ${SelectCountry_data}
    Sleep    ${Timeout}
    Click Element    ${AddBoardMaster_loc}
    Input Text    ${BoardName_loc}    ${BoardName_data}    
    Select From List By Label    ${BoardType_loc}    ${BoardType_data}    
    Input Text    ${Website_loc}    ${Website_data}    
    Input Text    ${Address_loc}    ${Address_data}    
    Click Element    ${BoardMasterSave_loc}
    Click Element    ${YesButton}     
    Sleep    ${Timeout}
    Click Element    ${BoardMasterSearch_loc} 
    Sleep    ${Timeout}       
    Element Text Should Be    ${VerifyBoardName_loc}    ${BoardName_data}    
    Sleep    ${Timeout}
    Click Element    ${VerifyBoardName_loc}
    Sleep    ${Timeout}  
    Click Element    ${AddOrganization_loc}    
    Input Text    ${OrganizationName_loc}    ${OrganizationName_data}  
    Click Element    ${OrganizationSaveButton_loc}
    Click Element    ${YesButton}    
    Element Text Should Be    ${VerifyOrganizationName_loc}    ${OrganizationName_data}    