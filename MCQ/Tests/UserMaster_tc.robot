*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General keywords.robot
Resource    ../Resources/UserMaster_key.robot



*** Test Cases ***
TC1 Admin User Creation
        
    Login as Super Admin
    Navigate to User Master screen
    Create and Verify the users          
                       
    