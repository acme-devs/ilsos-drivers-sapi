%dw 2.0
output application/json
---
[{
dsf2procstatus: if( vars.DSF2PROCSTATUS == p('cicserror.zero-one-code')) p('cicserror.zero-one-message') 
	else if( vars.DSF2PROCSTATUS == p('cicserror.zero-two-code')) p('cicserror.zero-two-message') 
	else if( vars.DSF2PROCSTATUS == p('cicserror.zero-three-code')) p('cicserror.zero-three-message') 
	else if( vars.DSF2PROCSTATUS == p('cicserror.zero-six-code')) p('cicserror.zero-six-message') 
	else if( vars.DSF2PROCSTATUS == p('cicserror.zero-four-code')) p('cicserror.zero-four-message') 
	else if( vars.DSF2PROCSTATUS == p('cicserror.zero-seven-code')) p('cicserror.zero-seven-message') 
    else "success"
}]
