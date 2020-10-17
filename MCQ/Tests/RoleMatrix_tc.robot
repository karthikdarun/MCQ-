*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/RoleMatrix_key.robot

*** Test Cases ***
Page and Menu Access For All Roles
    Login as Super Admin
    Navigate to Role matrix Page
    Provide Menu and Page access for Admin
    # Verify Menu and page access for Admin
    # Login into the application as Admin
    # Verify Menu and page access
    Provide Menu and Page access for Teacher
    # Verify Menu and page access for Teacher
    Provide Menu and Page access for Verifier
    # Verify Menu and page access for Verifier
    Provide Menu and Page access for Approver
    # Verify Menu and page access for Approver
    Provide Menu and Page access for Student
    # Verify Menu and page access for Student   