
let f1 x = x = 0;;
let f2 x = if x then 1 else 0;;
let f3 x = (x+1,true);;
let f4 (x,y) = if y then x+1 else 1;;
let f5 x = fun y -> (y+1)+x;;
let f6 x = fun y -> (y=1) && (x=1) ;;
let f7 x = fun y -> (y=1) && x;;
let f8 x = fun y -> if y || x then 1 else 0;;
let f9 x = fun y ->if x then y+1 else 0;;
let f10 f = f 10+1;;
let f11 f = if f 1 then 1 else 0;;
let f12 f = f true + 1;;
let f13 f = if f 13 then true else false;;
let f14 f = if f true then 1 else 0;;
let f15 x (y,z) = x+y-z;;
let f16 x y z =  x+y+z;;
let f17 f = fun x ->  f (f x) +1;;
let f18 f = f (fun g -> g +1) +1;;
let f19 f = fun b -> if (f 1) = 1 then b else not b;;
let f20 f = fun g -> if (f 0) && g then 1 else 0;;  



