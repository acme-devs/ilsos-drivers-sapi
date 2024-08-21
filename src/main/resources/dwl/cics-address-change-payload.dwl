%dw 2.0
output application/flatfile schemaPath = "dsf02g-type.ffd" , encoding = "cp037"
---
[{
	"DSF2-TRANSID": p('cics.address-dsf2-transid'),
	("DSF2-DL-NO":payload.dl) if(!isEmpty(payload.dl)),
	("DSF2-DL-ISSUE-DT": payload.dlIssueDate) if(!isEmpty(payload.dlIssueDate)),
	("DSF2-ID-NO":payload.stateId)if(!isEmpty(payload.stateId) and isEmpty(payload.dl) and isEmpty(payload.dlIssueDate)),
	("DSF2-ID-ISSUE-DT":payload.stateIdIssueDate) if(!isEmpty(payload.stateIdIssueDate) and isEmpty(payload.dl) and isEmpty(payload.dlIssueDate)),
	"DSF2-STREET-ADDR": vars.payload.street,
	"DSF2-CITY": vars.payload.city,
	"DSF2-ZIP-CD": vars.payload.zipCode,
	"DSF2-COUNTY-CD": vars.payload.countryCode,
	"DSF2-MOTOR-VTR": "N",
	"DSF2-ADDR-VER": "N"
}]