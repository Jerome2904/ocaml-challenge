let mux2_1 (s0:bool) (a:bool) (b:bool) : bool = s0 && a || (not s0 && b);;

let mux2_2 (s0:bool) (a:bool) (b:bool) : bool = if s0 then a else b;;

let mux2_3 (s0:bool) (a:bool) (b:bool) : bool = match s0 with
| true  -> a
| false -> b;;


let mux4 s1 s0 a0 a1 a2 a3 =
  match (s1, s0) with
  | (false, false) -> a0 
  | (false, true) -> a1 
  | (true, false) -> a2  
  | (true, true) -> a3;;

let mux4 s1 s0 a0 a1 a2 a3 = mux2_2 s1 (mux2_2 s0 a0 a1) (mux2_2 s0 a2 a3);; 

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;
