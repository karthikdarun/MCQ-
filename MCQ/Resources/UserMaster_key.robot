

*** Settings ***
Library    SeleniumLibrary    
Resource    ../TestData/UserMaster_data.robot
Resource    ../Locators/General Locators.robot
Resource    ../Locators/UserMaster.robot
Resource    ../TestData/General TestData.robot

*** Keywords ***    
    
 
          
    
Create and Verify the users
    FOR    ${index}    IN RANGE    0    3
    Click Element    ${AddButtonInViewScreen} 
    Sleep    ${timeout}       
    Select From List By Label    ${SelectProject}    ${ProjectSearch}[${index}]    
    Input Text    ${A_login}   ${Login}[${index}]
    Input Password    ${A_Password}    ${Pwd}[${index}]
    Input Text    ${A_FirstName}    ${FName}[${index}]
    Input Text    ${A_LastName}    ${LName}[${index}]
    Input Text    ${A_MailId}    ${Email}[${index}]   
    Input Text    ${A_MobNum}    ${Mob_Num}[${index}]  
    Input Text    ${A_Dob}    ${DOB}[${index}]
    Select From List By Label    ${A_Gender}    ${Gender}[${index}]
    Sleep    ${timeout}
    Element Should Contain    ${A_lang}    ${Lang}[${index}]  
    Sleep    ${timeout}
                 
    Wait Until Element Is Visible    ${A_DisplayAlert_click}     
    # Select From List By Label    xpath://div[$id='SelectLanguage_ExamUser_chosen']    ${Admin Lang}
    Click Element    ${A_DisplayAlert_click}    
    Sleep    ${timeout}
    Mouse Down    ${A_DisplayAlert_select}
    Sleep    ${timeout}
    Click Element    ${A_DisplayAlert_select}        
    
    Click Element    ${Save_button}
    Click Element    ${Accept_button}
    Sleep    ${timeout}    
    Select From List By Label    ${project_search_button}    ${Project Search}[${index}]
    Input Text    ${LoginName_UMSearch}    ${Login}[${index}]
    Sleep    ${timeout}
    Click Element    ${Search_button}
    Sleep    ${timeout}
    # ${VerifyLoginName}    Get Text    ${CompareLoginNameText}
    Element Text Should Be    ${CompareLoginNameText}    ${Login}[${index}]    
    Sleep    ${timeout}
    END       

Close the application 
    Wait Until Element Is Visible    ${Logout_user}    
    Click Element    ${Logout_user} 
    Sleep    ${timeout}   
    Click Element    ${Logout_button}      
    Close Browser   