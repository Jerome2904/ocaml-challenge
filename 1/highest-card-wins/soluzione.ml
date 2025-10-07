type card = Joker | Val of int;;

let win x y = match x, y with
| Joker, Joker -> false
| Joker,_ -> true
| _,Joker -> false
| Val x, Val y -> x > y;;

assert (win (Val 10) (Val 5) = true);;
assert (win (Val 8) (Val 6) = true);;
assert (win (Val 9) (Val 7) = true);;

assert (win (Val 3) (Val 6) = false);;
assert (win (Val 2) (Val 10) = false);;

assert (win Joker (Val 5) = true);;
assert (win Joker Joker = false);;