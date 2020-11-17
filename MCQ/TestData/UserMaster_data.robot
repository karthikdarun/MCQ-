
*** Variables ***
${timeout}    3
# User Creation

@{Login}    Teacher_001    Verifier_001    Approver_001
@{Pwd}    Teacher_001@123    Verifier_001@123    Approver_001@123
@{FName}    Teacher    Verifier    Approver
@{LName}    001    001    001
@{Email}    Teacher_001@gmail.com    Verifier_001@gmail.com    Approver_001@gmail.com
@{Mob_Num}    9568789654    9568789654    9568789654
@{DOB}    12/06/1989    12/06/1989    12/06/1989
@{Gender}         Male    Male
@{Lang}    English    English    English
@{DisplayAlert}    Exam Alert    Exam Alert    Exam Alert
@{ProjectSearch}    Automation_001    Automation_001    Automation_001

# USer creation Verification

${DisplayAlertText}    Exam Alert
${Admin_Login}    admin_001
${Teacher_Login}    Teacher_001
${Verifier_Login}    Verifier_001
${Approver_Login}    Approver_001