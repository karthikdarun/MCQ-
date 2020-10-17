*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/RoleMapping_Key.robot


*** Test Cases ***
Role Mapping
    Login as Super Admin
    Navigate to Role Mapping screen
    Map the users for the Roles and verify it
    