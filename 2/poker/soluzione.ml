type suit = S | H | D | C;;
type card = Card of int * suit;;

let rndSuit() = match Random.int 4 with
| 0 -> S
| 1 -> H
| 2 -> D
| 3 -> C
| _ -> failwith "invalid";;

let rndCard() = Card(Random.int 13+1,rndSuit());;

let rndHand() = (rndCard(),rndCard(),rndCard(),rndCard(),rndCard());;
let poker (Card(n1,_), Card(n2,_), Card(n3,_), Card(n4,_), Card(n5,_)) =
  let count x =
    (if x = n1 then 1 else 0) +
    (if x = n2 then 1 else 0) +
    (if x = n3 then 1 else 0) +
    (if x = n4 then 1 else 0) +
    (if x = n5 then 1 else 0) in
  count n1 >= 4 || count n2 >= 4 || count n3 >= 4 || count n4 >= 4 || count n5 >= 4;;


assert (poker (Card(5,H), Card(5,D), Card(5,C), Card(5,S), Card(2,H)));;
assert (poker (Card(9,H), Card(9,D), Card(9,C), Card(9,S), Card(9,H)));;
assert (not (poker (Card(1,H), Card(2,D), Card(3,C), Card(4,S), Card(5,H))));;
assert (not (poker (Card(7,H), Card(7,D), Card(7,C), Card(2,S), Card(2,H))));;
assert (poker (Card(8,H), Card(3,D), Card(8,C), Card(8,S), Card(8,D)));;
assert (not (poker (Card(4,H), Card(4,D), Card(4,C), Card(9,S), Card(2,H))));;
