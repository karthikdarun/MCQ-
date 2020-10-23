*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/DefaultMasterMapping_key.robot


*** Test Cases ***
Map Default types to Admin & Teacher
    Login into the application as Admin
    Navigate to Default Master Mapping 
    Map the default types for Admin and verify it
    # Map the default types for Teacher and verify it
    Logout from the application
    