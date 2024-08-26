%dw 2.0
output application/json
---
if ( vars.DSF1RETURNCODEDL == "00" ) {
	correlationId: vars.correlationId,
	code: "201",
	message: "Success"
} //else if ( vars.httpStatus != 200 ) {
	//correlationId: vars.correlationId,
	//code: vars.httpStatus,
	//message: vars.apiErrorMessage.error.errors[0].detail
//}
else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-one-code') ) {
	dsf2procstatus: p('cicserror.zero-one-message'),
	code: "400"
}  
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-two-code') ) {
	dsf2procstatus: p('cicserror.zero-two-message'),
	code: "400"
}  
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-three-code') ) {
	dsf2procstatus: p('cicserror.zero-three-message'),
	code: "400"
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-six-code') ) {
	dsf2procstatus: p('cicserror.zero-six-message'),
	code: "400"
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-four-code') ) {
	dsf2procstatus: p('cicserror.zero-four-message'),
	code: "400"
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-seven-code') ) {
	dsf2procstatus: p('cicserror.zero-seven-message'),
	code: "400"
} 
    else dsf2procstatus: "success"
 
