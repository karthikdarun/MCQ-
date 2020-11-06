*** Settings ***
Resource    ../Resources/General keywords.robot
Resource    ../Resources/SystemMapping_key.robot


*** Test Cases ***
Perform System mapping
    Login into the application as Admin
    Navigate to System Mapping screen
    Perform System mapping and verify it
    Logout from the application