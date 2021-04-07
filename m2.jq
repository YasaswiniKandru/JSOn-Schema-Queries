let $data := json-doc("mo.json")
let $part := [for $p in $data.PARTS[] where $p.PRICE lt 20.00 return $p.PNO]
let $c_no := [for $o in $data.ORDERS[] where (every $p in $part[] satisfies (some $i in $o.ITEMS[].PARTNUMBER satisfies $i eq $p)) return $o.CUSTOMER]
for $c in $data.CUSTOMERS[], $n in $c_no[]
where $c.CNO eq $n
return $c.CNAME
