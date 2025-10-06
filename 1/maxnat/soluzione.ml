let fail x = failwith("both numbers must be natuaral");;
let max_nat a b = 
  let is_nat x = x >= 0 in 
    if not(is_nat a) || not(is_nat b) then fail a
    else if a > b then a
    else b;;


assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;