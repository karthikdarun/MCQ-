*** Settings ***
Resource    ../Resources/General keywords.robot



*** Test Cases ***
Perform Subject Level MApping & Subject lecturer level setup
    Login into the application as Teacher
    Navigate to Subject level mapping screen
    Perform Subject level setup and verify it
    Navigate to Subject lecturer level setup
    Map subject with lecturer/teacher and verify it
    logout from the application
    