let mux2 s0 a b = (a && s0) || (b && not s0);;

let mux2_2 s0 (a:bool) b = if s0 then a else b;;

let mux2_3 s0 (a:bool) b = match s0 with
| true -> a
| false -> b;;
let mux4 s1 s0 a0 a1 a2 a3 =
  let fst_mux  = mux2 s0 a1 a0 in 
  let snd_mux = mux2 s0 a3 a2 in 
  mux2 s1 snd_mux fst_mux;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;