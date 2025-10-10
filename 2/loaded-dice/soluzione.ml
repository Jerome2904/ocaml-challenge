let dice prob_six = 
  if prob_six < 0 || prob_six > 100 then failwith "probability must be between 0 and 100" else
  let rnd = Random.int 100 in 
  if rnd < prob_six then 6 else Random.int 5 +1;;


dice 80;;
dice 50;;
dice 30;;
dice 20;;
dice 10;;

