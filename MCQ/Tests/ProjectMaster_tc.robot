*** Settings ***
Library    SeleniumLibrary 
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ProjectMaster_key.robot  


*** Test Cases ***

Create Project 
    Login as Super Admin
    Add Project Master and verify it
    logout from the application                
    