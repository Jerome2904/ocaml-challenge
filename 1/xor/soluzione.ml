let xor1 a b = (not a && b) || (not b && a);;
let xor2 (a: bool)(b: bool) = if a = b then false else true;;
let xor3 a b = match a,b with
| false,false -> false
| true,true -> false
| _ -> true;;

xor1 false false;;
xor1 false true;;
xor1 true false;;
xor1 true true;;

xor2 false false;;
xor2 false true;;
xor2 true false;;
xor2 true true;;

xor3 false false;;
xor3 false true;;
xor3 true false;;
xor3 true true;;