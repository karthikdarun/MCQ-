*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${SERVER URL}    http://muruga123-001-site1.itempurl.com/
${VALID USERNAME}    superadmin
${VALID PASSWORD}    P@ssw0rd
${INVALID USERNAME}    superadmin1
${INVALID PASSWORD}    P@ssw0rd1

*** Test Cases ***

Login With Valid Credentials
    Login Page   
    Enter Valid Credentials    
    Submit Credentials       
    Verify Username Text Present
    Exit from the application
    Close Browser
     
*** Test Cases ***

Login With Invalid Credentials
    Login Page
    Enter invalid credentials
    Submit Credentials
    Verify Login Error message    
    Close Browser  
    
*** Keywords ***
Login Page
   Open Browser    ${SERVER URL}    Chrome
    Set Browser Implicit Wait    20
    Maximize Browser Window
Enter Valid Credentials
    Input Text    id:TxtUserName    ${VALID USERNAME}
    Input Text    id:TxtPassword    ${VALID PASSWORD}
Enter invalid credentials
    Input Text    id:TxtUserName    ${INVALID USERNAME} 
    Input Password    id:TxtPassword    ${INVALID PASSWORD}
Submit Credentials
    Click Element    xpath://td[contains(text(),'Login')]
    Sleep    2 
Verify Username Text Present
    Element Should Contain    xpath://label[@class='ProfileName']    Super Admin
Exit from the application  
    Click Element    xpath://div[@id='DivTopMenuProfile']/span   
    Click Element    xpath://span[contains(text(),'Log Out')]
Verify Login Error message
    Element Text should Be    xpath://label[@id='LblError']    Username/Password is incorrect


      
    
    
                