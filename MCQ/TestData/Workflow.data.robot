*** Variables ***


${WorkFlowCode_data}    WkF_005    
${WorkFlowName_data}    One Level   
${SearchWorkflowCode_data}    ${WorkFlowCode_data}   
${VerifyWOrkflow_data}    ${WorkFlowCode_data}    
@{SelectWorkFlowUser_data}    Verifier 001    Approver 001        
@{Selectworkflowrole_data}    Verifier    Approver 
   
@{WorkflowAction_data}    Verifed    Approved
${WorkflowActionV/AP_data}    Verifed            
@{Selectworkflowdisplayaction_data}    Pending for Verification    Pending for Approval        
@{WorkflowOrder_data}    1    2    
@{WorkflowactionMessage_data}    Verify the exam    Approve the exam    
  