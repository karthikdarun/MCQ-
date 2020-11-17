*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/RoleMapping_loc.robot
Resource    ../TestData/RoleMapping_Data.robot

*** Keywords ***


    
Map the users for the Roles and verify it
    FOR    ${index}    IN RANGE    0    3
    Wait Until Element Is Visible    ${SelectProject_loc}    
    Select From List By Label    ${SelectProject_loc}    ${SelectProject_Data}[${index}]   
    Sleep    ${Timeout}
    Select From List By Label    ${SelectRole_loc}    ${SelectRole_Data}[${index}]    
    Sleep    ${Timeout}
    Click Element    ${Searchbutton_loc}    
    Sleep     ${Timeout}
    Select From List By Label    ${AvailUsers_loc}    ${AvailUsers_Data}[${index}]
    Sleep    ${Timeout}
    Click Element    ${buttonRight_loc}      
    Sleep    ${Timeout}       
    Click Element    ${UpdateButton_loc}
    Sleep    ${Timeout}    
    Click Element    ${YesButton_loc}  
    Sleep    ${Timeout}  
    Click Element    ${ClearButton_loc}
    Wait Until Element Is Visible    ${SelectProject_loc}    
    Select From List By Label    ${SelectProject_loc}    ${SelectProject_Data}[${index}]
    Sleep    ${Timeout}
    Select From List By Label    ${SelectRole_loc}    ${SelectRole_Data}[${index}]    
    Sleep    ${Timeout}
    Click Element    ${Searchbutton_loc} 
    Sleep    ${Timeout}
    Element Should Contain    ${SelectedUsers_loc}    ${SelectedUsers__Data}[${index}]    
    Sleep    ${Timeout}
    END   
               