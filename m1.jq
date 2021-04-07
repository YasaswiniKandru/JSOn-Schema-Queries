distinct-values((
let $data := json-doc("mo.json") 
for $e in $data.EMPLOYEES[], $o in $data.ORDERS[], $c in $data.CUSTOMERS[] 
where $e.ENO eq $o.TAKENBY and $o.CUSTOMER eq $c.CNO and $e.CITY eq "Wichita" return $c.CNAME
))
