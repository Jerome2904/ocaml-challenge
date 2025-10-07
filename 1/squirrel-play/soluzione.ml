type season = Spring | Summer | Autumn | Winter

let squirrel_play temp season = match temp,season with
| temp,Summer when temp >= 15 && temp <= 35 -> true;
| temp,_ when temp >= 15 && temp <= 30 -> true;
| _,_ -> false;;


assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;

