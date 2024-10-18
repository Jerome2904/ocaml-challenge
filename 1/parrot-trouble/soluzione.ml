let parrot_trouble (is_talking:bool) (time:int) : bool option = 
  if time < 0 || time > 23 then None
  else if is_talking && (time < 7 || time > 20) then 
    Some true
  else Some false;;
