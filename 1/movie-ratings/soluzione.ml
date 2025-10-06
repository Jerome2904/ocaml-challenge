let movie_rating a b c =
  if (a < 1 || a > 5) || (b < 1 || b > 5) || (c < 1 || c > 5) then failwith "ratings must be between 1 and 5"
  else 
    if a = 5 && b = 5 && c = 5 then "Masterpiece"
    else if (a >= 4 && b = 5 && c = 5) || (a = 5 && b >= 4 && c = 5) || (a = 5 && b = 5 && c >= 4) then "Highly Recommended"
    else if (a >= 3 && b = 4 && c = 4) || (a = 4 && b >= 4 && c = 3) || (a = 4 && b = 4 && c >= 3) then "Recommended"
    else "Mixed Reviews"
;;

movie_rating 5 5 5;;
movie_rating 5 5 4;;
movie_rating 4 4 3;;
movie_rating 2 4 5;;
movie_rating 3 6 4;;