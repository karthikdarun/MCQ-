*** Settings ***
Resource    ../TestData/OnlineExam_data.robot



*** Variables ***
${SelectBatchYear_loc}    xpath://*[@id='DdlExamUserBatchYear']
${SelectexamLevel_loc}    xpath://*[@id='DdlExamUserExamLevel']
${SelectExamMode_loc}    xpath://*[@id='DdlExamMasterExamMode']
${SearchExamBn}    xpath://*[@id='btnOnlineExamSearch']
${TakeExambn}    xpath://*[@id='btnTakeExam']
${GoToExambn}    xpath://*[@id='BtnGotoExam']
${Answer_True}    xpath://*[text()=' ${Ans_true}']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Answer_False}    xpath://*[text()=' ${Ans_false}']//ancestor::tr/descendant::input[@id='AnswerChoice']
${Nextbn}    xpath://*[@id='Nextquestions']
${Skipbn}    xpath://*[@id='Skipquestions']
${Completebn}    xpath://*[@id='btnCompleted']
${PassTxt_loc}    xpath://*[text()='Pass']
${ViewResultbn}    xpath:(//*[@id='btnViewResult'])[2]
${Nextpagebn}    xpath://*[@class='glyphicon glyphicon-chevron-right']    

${CorrectAnswerCount_loc}    xpath://*[@id='lblCorrectAnswers']
${TotalQuestionsCount_loc}    xpath://*[@id='lblTotalQuestion']
${WrongAnswerCount_loc}    xpath://*[@id='lblWrongAnswers']
${StudentMarks_loc}    xpath://*[@id='lblStudentTotalMark']
${TotalMarks_loc}    xpath://*[@id='lblTotalMarks']


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