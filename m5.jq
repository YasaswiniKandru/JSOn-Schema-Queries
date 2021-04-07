let $data := json-doc("mo.json") 
for $o in $data.ORDERS[] 
let $d1 := $o.RECEIVEDDATE
let $d2 := $o.SHIPPEDDATE
where date($d2) gt date($d1) +  xs:dayTimeDuration("P2D")
return {"Order ID":$o.ONO}
