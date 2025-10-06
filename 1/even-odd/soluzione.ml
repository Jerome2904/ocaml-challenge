
let is_even x = (x mod 2) = 0;;

is_even 984;;
is_even 1001;;

let win a b = 
  let is_valid x = x >= 1 && x <= 5 in
    if not (is_valid a) && not (is_valid b) then 0
    else if not (is_valid a) then -1
    else if not (is_valid b) then 1
    else 
      let sum = a + b in 
        if is_even sum then 1 else -1;;


(* Test *)
win 2 3;;

win 8 3;;

win 2 6;;

win 1 5;;

win 6 10;;

