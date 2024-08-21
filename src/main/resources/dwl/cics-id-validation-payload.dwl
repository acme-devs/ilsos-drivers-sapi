%dw 2.0
output application/flatfile schemaPath = "dsf01g-type.ffd" , encoding = "cp037"
---
[{
	"DSF1-CODE": p('cics.idValidation-dsf1-code'),
	("DSF1-DL-NO":payload.dl) if(!isEmpty(payload.dl)),
	("DSF1-DL-ISSUE-DT": payload.dlIssueDate) if(!isEmpty(payload.dlIssueDate)),
	("DSF1-ID-NO":payload.stateId)if(!isEmpty(payload.stateId) and isEmpty(payload.dl) and isEmpty(payload.dlIssueDate)),
	("DSF1-ID-ISSUE-DT":payload.stateIdIssueDate) if(!isEmpty(payload.stateIdIssueDate) and isEmpty(payload.dl) and isEmpty(payload.dlIssueDate)),
	"DSF1-SSN-LAST4": payload.ssnLast4,
	"DSF1-DOB": payload.dateOfBirth,
	"DSF1-TVDL": payload.tvdl
}]