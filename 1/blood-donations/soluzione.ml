type blood_group = A | B | AB | O


let check_groups x y = match x,y with
| O,_ -> true
| _,AB -> true
| A,A -> true
| B,B -> true
| _,_ -> false;;


assert (check_groups O O = true);;
assert (check_groups O A = true);;
assert (check_groups O B = true);;
assert (check_groups O AB = true);;
assert (check_groups A O = false);;
assert (check_groups A A = true);;
assert (check_groups A B = false);;
assert (check_groups A AB = true);;
assert (check_groups B O = false);;
assert (check_groups B A = false);;
assert (check_groups B B = true);;
assert (check_groups B AB = true);;
assert (check_groups AB O = false);;
assert (check_groups AB A = false);;
assert (check_groups AB B = false);;
assert (check_groups AB AB = true);;