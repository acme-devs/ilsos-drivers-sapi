%dw 2.0
output application/java
---					
 " UPDATE db2devl.DP_ADDR_CHG_TRANS SET DEPT = '"  ++  payload.department  ++ "' , " ++  " STREET = '"  ++  payload.street  ++ "'  WHERE TRANS_KEY =  '" ++ vars.dbResult.TRANS_KEY[0] ++ "'"
