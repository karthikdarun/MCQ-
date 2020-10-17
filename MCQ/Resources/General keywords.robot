*** Settings ***
Library    SeleniumLibrary    
Resource    ../TestData/General TestData.robot
Resource    ../Locators/General Locators.robot


*** Keywords ***
Login as Super Admin
    Open browser    ${Server url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Input Text    ${LoginUsernameTextbox}    ${Superadmin username}
    Input Password    ${LoginPasswordTextbox}    ${Superadmin password}
    Sleep    ${timeout}    
    Click Button    ${LoginButton}
    Sleep    ${timeout} 
    
Login into the application as Admin
    Open browser    ${Server url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Input Text    ${LoginUsernameTextbox}    ${Admin Username}
    Input Password    ${LoginPasswordTextbox}    ${Admin Password}
    Sleep    ${timeout}    
    Click Button    ${login_Button}
    Sleep    ${timeout} 
    
Login into the application as Teacher
    Open browser    ${Server url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Input Text    ${LoginUsernameTextbox}    ${Teacher Username}
    Input Password    ${LoginPasswordTextbox}    ${Teacher Password}
    Sleep    ${timeout}    
    Click Button    ${login_Button}
    Sleep    ${timeout} 
    
Navigate to Role matrix Page
    Click Element    ${SystemMappingMenu}    
    Click Element    ${RoleMatrixMenu}
    
Navigate to Exam Setup screen
    Click Element    ${ExamSetup_Menu}
    Click Element    ${ExamSetupDetails_Menu}    
    


# Close the application 
    # Wait Until Element Is Visible    ${Logout_user}    
    # Click Element    ${Logout_user} 
    # Sleep    ${timeout}   
    # Click Element    ${Logout_button}      
    # Close Browser   