let $data := json-doc("mo.json")
let $emp := distinct-values(for $c in $data.CUSTOMERS[],
              	$e in $data.EMPLOYEES[],
              	$o in $data.ORDERS[]          
                where $e.ENO eq $o.TAKENBY and $o.CUSTOMER eq $c.CNO and $e.ZIP eq $c.ZIP
                return $e.ENAME)
for $e in $data.EMPLOYEES[]
where $e.ENAME ne $emp
return $e.ENAME
