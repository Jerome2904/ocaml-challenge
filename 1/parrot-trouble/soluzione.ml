let parrot_trouble x y = 
  if y < 0 || y > 23 then None 
  else
    if x && (y < 7 || y > 20) then Some true 
    else
      Some false;;

assert (parrot_trouble true 0 = Some true);;
assert (parrot_trouble true 6 = Some true);;
assert (parrot_trouble true 7 = Some false);;
assert (parrot_trouble true 8 = Some false);;
assert (parrot_trouble true 20 = Some false);;
assert (parrot_trouble true 21 = Some true);;
assert (parrot_trouble true 22 = Some true);;
assert (parrot_trouble true 23 = Some true);;

assert (parrot_trouble false 0 = Some false);;
assert (parrot_trouble false 6 = Some false);;
assert (parrot_trouble false 7 = Some false);;
assert (parrot_trouble false 8 = Some false);;
assert (parrot_trouble false 20 = Some false);;
assert (parrot_trouble false 21 = Some false);;
assert (parrot_trouble false 22 = Some false);;
assert (parrot_trouble false 23 = Some false);;

assert (parrot_trouble true 25 = None);;
assert (parrot_trouble true (-1) = None);;
assert (parrot_trouble false 25 = None);;
assert (parrot_trouble false (-1) = None);;
