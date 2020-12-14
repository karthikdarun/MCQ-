*** Settings ***
Resource    ../TestData/OnlineExam_data.robot

*** Variables ***
${okbutton}    xpath://*[@class='jconfirm-buttons']
${OnlineSelectBatchYear_loc}    xpath://*[@id='DdlExamUserBatchYear']
${OnlineSelectexamLevel_loc}    xpath://*[@id='DdlExamUserExamLevel']
${OnlineSelectExamMode_loc}    xpath://*[@id='DdlExamMasterExamMode']
${OnlineSearchExamBn}    xpath://*[@id='btnOnlineExamSearch']
${TakeExambn}    xpath://*[@id='btnTakeExam']
${GoToExambn}    xpath://*[@id='BtnGotoExam']
${Answer_True}    xpath://*[text()=' True']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Answer_Yes}    xpath://*[text()=' Yes']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Answer_No}    xpath://*[text()=' No']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Answer_False}    xpath://*[text()=' False']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Nextbn}    xpath://*[@id='Nextquestions']
${Skipbn}    xpath://*[@id='Skipquestions']
${Completebn}    xpath://*[@id='btnCompleted']
${OnlinePassTxt_loc}    xpath://*[text()='Pass']
${ViewResultbn}    xpath:(//*[@id='btnViewResult'])[1]
${Nextpagebn}    xpath://*[@class='glyphicon glyphicon-chevron-right']    

${OnlineCorrectAnswerCount_loc}    xpath://*[@id='lblCorrectAnswers']
${OnlineTotalQuestionsCount_loc}    xpath://*[@id='lblTotalQuestion']
${OnlineWrongAnswerCount_loc}    xpath://*[@id='lblWrongAnswers']
${OnlineStudentMarks_loc}    xpath://*[@id='lblStudentTotalMark']
${OnlineTotalMarks_loc}    xpath://*[@id='lblTotalMarks']


${CorrectAnswericon_1}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-ok')])[2]
${CorrectAnswericon_2}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-ok')])[3]
${CorrectAnswericon_3}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-ok')])[4]
${CorrectAnswericon_4}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-ok')])[5]
${CorrectAnswericon_5}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-ok')])[6]

${WrongAnswericon_1}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-remove')])[2]
${WrongAnswericon_2}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-remove')])[3]
${WrongAnswericon_3}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-remove')])[4]
${WrongAnswericon_4}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-remove')])[5]
${WrongAnswericon_5}    xpath:(//*[starts-with(@class,'glyphicon glyphicon-remove')])[6]