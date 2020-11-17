*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/Organization&ProjectLevel_key.robot


*** Test Cases ***

Organization Setup
    Login as Super Admin
    Navigate to Organization level setup
    Add Organization setup and Verify it
    
    