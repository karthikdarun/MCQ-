*** Settings ***

Resource    ../Resources/General keywords.robot
Resource    ../Resources/Organization&ProjectLevel_key.robot
Resource    ../Resources/SuperAdminConfig_key.robot
Resource    ../Resources/ProjectMaster_key.robot
    


*** Test Cases ***
Provide menu and page access for super admin in role matrix screen
    Login as Super Admin
    # Navigate to Role matrix Page
    # Provide access to menu and page
    # Verify page and menu access 
    
# Perform Organizational level setup    
    # Navigate to Organization level setup
    # Add Organization setup and Verify it
    # Add Project Master and verify it
    
# Add Project and verify it
    # Add Project Master and verify it
    
Add Admin role in role master screen
    Navigate to Role Master screen
    Add Admin role and verify it
    
Add Admin user in user master screen
    Navigate to User Master screen
    Add Admin user and verify it
    
Map Admin user with Admin role in role mapping screen   
    Navigate to role mapping screen
    Perform role mapping for admin user
    Logout from the application    
