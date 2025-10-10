
(* Ho considerato N = {0,1,2,...} *)
let f1 x = if x < 0 then failwith "undefined" else 0;;
let f2 x = if x < 0 then failwith "undefined" else 
  if x < 3 then 1 else 0;;
let f3 x = if x < 0 then failwith "undefined" else 
  if x > 0 && x < 100 then 1 else 0;;
let f4 x = if x < 0 then failwith "undefined" else 0;;
let f5 x = if x < 0 then failwith "undefined" else 1;;
let f6 x = if x < 0 then failwith "undefined" else 
  if x mod 2 = 0 then 1 else 0;;
let f7 x = if x < 0 then failwith "undefined" else 1;;
let f8 x = if x < 0 then failwith "undefined" else 1;;
let f9 x = if x < 0 then failwith "undefined" else 1;;
let f10 x = if x < 0 then failwith "undefined" else 
  if x > 4 && x < 10 then 1 else 0;; 
let f11 x = if x < 0 then failwith "undefined" else 
  if x < 50 && x mod 2 = 0 then 1 else 0;;
let f12 x = if x < 0 then failwith "undefined" else 
  if (x > 0 && x < 50) && x mod 2 = 0 then 1 else 0;;
let f13 x = if x < 0 then failwith "undefined" else 1;;
let f14 x = if x < 0 then failwith "undefined" else 
  if x < 3 then 1 else 0;;
  let is_prime x = true;;
  let f15 x = if x < 0 then failwith "undefined" else 
  if x = 1 || is_prime x then 1 else 0;