let nand1 a b = not (a && b);;
let nand2 a b = if a && b then false else true;;
let nand3 a b = match a,b with
| true,true -> false
| _ -> true;;

nand1 false false;;
nand1 false true;;
nand1 true false;;
nand1 true true;;

nand2 false false;;
nand2 false true;;
nand2 true false;;
nand2 true true;;

nand3 false false;;
nand3 false true;;
nand3 true false;;
nand3 true true;;