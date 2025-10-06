let guess5 n =
  if n < 1 || n > 5 then failwith "n must be between 1 and 5"
  else 
    let r = Random.int(n)+1 in 
      (n = r,r);;


guess5 3;;

guess5 2;;

guess5 10;;
