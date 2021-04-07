let $data := json-doc("mo.json")
for $o in $data.ORDERS[]  
let $total:=sum(for $i in $o.ITEMS[] 
		   let $cost := ( for $p in $data.PARTS[] where $i.PARTNUMBER eq $p.PNO return $i.QUANTITY*$p.PRICE)
		   return $cost)	
return {"ono":$o.ONO, "price":$total}
