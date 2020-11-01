*** Settings ***
Library    SeleniumLibrary    
Resource    ../TestData/Workflow.data.robot
Resource    ../Resources/Workflow.key.robot


*** Variables ***
${WorkFlowCode_loc}    xpath://*[@id='txtWorkFlowCode']
${WorkFlowName_loc}    xpath://*[@id='txtWorkFlowName']
${AddWorkFlow}    xpath://*[@id='btnWorkFlowHeaderAdd']
${SaveWorkflow}    xpath://*[@id='btnWorkFlowHeaderSave']
${SearchWorkflowCode_loc}    xpath://*[@id='txtSearchWorkFlowCode']
${SearchWorflowbutton}    xpath://*[@id='btnWorkFlowHeaderSearch']
${VerifyWorkflow}    xpath://*[@id='GridWorkFlowHeader']/tbody/tr/td[2]
${AddWorkflowdetail}    xpath://*[@id='btnWorkFlowDetailAdd']
${SelectWorkFlowUser_loc}    xpath://*[@id='ddlWorkFlowDetailUser']
${Selectworkflowrole_loc}    xpath://*[@id='ddlWorkFlowDetailRole']
${SelectWorkflowAction_loc}    xpath://*[@value='Select Action']
# ${ClickWorkflowAction}    xpath://li[contains(.,'@{WorkflowAction_data}')]

${ClickWorkflowAction}    xpath://li[contains(.,'${WorkflowAction_data}[${index}]')]
${Selectworkflowdisplayaction_loc}    xpath://*[@id='ddlWorkFlowDetailDisplayAction']
${WorkflowOrder_loc}    xpath://*[@id='txtWorkFlowDetailOrder']
${WorkflowactionMessage_loc}    xpath://*[@id='txtWorkFlowDetailMessage']
${SaveWorkflowdetail}    xpath://*[@id='btnWorkFlowDetailSave']