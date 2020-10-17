*** Settings ***
Library    SeleniumLibrary 
Resource    ../Resources/General keywords.robot
Resource    ../Resources/ProjectMaster_key.robot  


*** Test Cases ***

Create Project 
    Login as Super Admin
    Click On Project Master
    Click on Add button
    Enter the values for all the fields
    Verify the project name by searching it
    Click on Map Sysyem Config
    Click on System Configuration
    Select the values on organizational mapping
    Select values from Email template mapping
    Click on update button   


    


                
    