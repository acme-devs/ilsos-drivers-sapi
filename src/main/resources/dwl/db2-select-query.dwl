%dw 2.0
output application/json
---
" SELECT * " ++
                    "   FROM db2devl.DP_ADDR_CHG_TRANS " ++ 
                    "   WHERE DL_NO =  '" ++ payload.dl ++ "'"