let is_posfrac (a,b) = 
  if a > 0 && b > 0 then true 
  else false;;

let compare_posfrac (a,b) (c,d) =
  if not (is_posfrac (a,b)) || not (is_posfrac (c,d)) then
    failwith "both fractions must be positive"
  else
    let left = a * d in
    let right = c * b in
    if left = right then 0
    else if left > right then 1
    else -1;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;

let compare_frac (a,b) (c,d) = 
  let left = a * d in
  let right = b * c in 
  if b = 0 || d = 0 then failwith "denominator cannot be zero"
  else if left = right then 0
  else if left > right then 1
  else -1;;

