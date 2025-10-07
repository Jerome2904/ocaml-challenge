let incr_opt x = match x with
| Some x -> Some (x+1)
| None -> None;;


assert(incr_opt (Some 5) = Some 6);;
assert(incr_opt None = None);;