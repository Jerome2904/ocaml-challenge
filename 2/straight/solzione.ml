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
let straight (Card(n1,_),Card(n2,_),Card(n3,_),Card(n4,_),Card(n5,_)) = 
  let mn = min n1 (min n2 (min n3 (min n4 n5))) in
  let mx = max n1 (max n2 (max n3 (max n4 n5))) in
  let distinct =
    n1<>n2 && n1<>n3 && n1<>n4 && n1<>n5 &&
    n2<>n3 && n2<>n4 && n2<>n5 &&
    n3<>n4 && n3<>n5 &&
    n4<>n5 in
  distinct && (mx - mn = 4);;

assert (straight (Card(2,S), Card(3,H), Card(4,D), Card(5,C), Card(6,S)));;
assert (straight (Card(10,S), Card(11,H), Card(12,D), Card(13,C), Card(9,S)));;
assert (not (straight (Card(1,S), Card(2,H), Card(3,D), Card(4,C), Card(6,S))));;
assert (not (straight (Card(2,S), Card(2,H), Card(3,D), Card(4,C), Card(5,S))));; 
assert (not (straight (Card(5,S), Card(7,H), Card(9,D), Card(10,C), Card(11,S))));;
assert (straight (Card(1,S), Card(2,H), Card(3,D), Card(4,C), Card(5,S)));;