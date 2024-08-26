%dw 2.0
output application/json
var query =  "SELECT * FROM db2devl.DP_ADDR_CHG_TRANS WHERE "
var whereClauseDl = "DL_NO=:dl"
var whereClauseStateId= "ID_NO=:stateId"
---
if ( (!isEmpty(payload.dl) and isEmpty(payload.stateId)) or (!isEmpty(payload.dl) and !isEmpty(payload.stateId))) query ++ whereClauseDl 
else if ( !isEmpty(payload.stateId) and isEmpty(payload.dl) ) query ++ whereClauseStateId

else "No Select Query Found- Error"