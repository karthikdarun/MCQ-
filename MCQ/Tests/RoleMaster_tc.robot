*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/RoleMaster.robot
Resource    ../Locators/RoleMaster.robot


*** Test Cases ***
Adding Roles in Role Master Screen
    Login as Super Admin
    Navigate to Role Master screen
    Add and Verify the roles
    # Close the application
     