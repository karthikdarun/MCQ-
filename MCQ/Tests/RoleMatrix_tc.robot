*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/RoleMatrix_key.robot

*** Test Cases ***
Page and Menu Access For All Roles
    # Login as Super Admin
    # Navigate to Role matrix Page
    # Provide Menu and Page access for Admin
    # Provide Menu and Page access for Teacher
    # Provide Menu and Page access for Verifier
    # Provide Menu and Page access for Approver
    # Provide Menu and Page access for Student
    
    
    Login into the application as Admin
    Verify Menu and page access for Admin
    logout from the application
    
    Login into the application as Teacher
    Verify Menu and page access for Teacher
    logout from the application
    
    Login into the application as Student
    Verify Menu and page access for Student
    logout from the application
    
    Login into the application as Verifier
    Verify Menu and page access for Verifier
    logout from the application
    
    Login into the application as Approver
    Verify Menu and page access for Approver
    logout from the application
    
    
    
     