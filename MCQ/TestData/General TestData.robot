*** Settings ***
Resource    ExamMaster_data.robot   
*** Variables ***
${Server Url}    http://muthucsm-001-site10.btempurl.com/
${Superadmin username}    superadmin
${Superadmin password}    P@ssw0rd
${Admin Username}    admin_001
${Admin Password}    Admin_001@123
${Teacher username}    teacher_002
${Teacher Password}    Teacher_002@123
${Verifier Username}    verifier_001
${Verifier Password}    Verifier_001@12
${Approver Username}    approver_001
${Approver Password}    Approver_001@12
${Student username}    ${StudentLoginName_data} 
${Student Password}    Student!1 
${Timeout}    3  
