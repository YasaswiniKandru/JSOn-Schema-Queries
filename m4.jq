let $data := json-doc("mo.json") 
for $e in $data.EMPLOYEES[] 
let $x := [for $o in $data.ORDERS[] where $e.ENO eq $o.TAKENBY return $o.ONO] 
return {"eno":$e.ENO,"ono":$x}
