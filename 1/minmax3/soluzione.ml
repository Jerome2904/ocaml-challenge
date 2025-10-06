let minmax3 a b c = 
  let min = if a <= b && a <= c then a 
  else if b <= c && b <= c then b
  else c in 
  let max = if a >= b && a >= c then a 
  else if b >= a && b >= c then b
  else c in
  (min,max)
;;

minmax3 1 3 2;;
minmax3 5 7 3;;
minmax3 10 10 10;;