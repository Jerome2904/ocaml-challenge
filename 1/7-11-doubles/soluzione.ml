let seven_eleven_doubles() = 
let d1 = Random.int(6)+1 in 
let d2 = Random.int(6)+1 in 
let sum = d1 + d2 in
let is_equal = d1 = d2 in
(sum = 7 || sum = 11 || is_equal,d1,d2);;