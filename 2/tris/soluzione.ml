let tris (a,b,c,d) = 
  (a = b && b = c) || (a = b && b = d) ||
  (a = c && c = d) || (b = c && c = d);;

let hand () =
  let a = Random.int 10+1 in
  let b = Random.int 10+1 in
  let c = Random.int 10+1 in
  let d = Random.int 10+1 in
  Printf.printf "hand = (%d, %d, %d, %d)\n" a b c d;
  (a, b, c, d);;

tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;
tris (hand ());;