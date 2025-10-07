let best_offer x y z = match x,y,z with
| Some x,Some y,Some z -> Some (max x (max y z))
| Some x, Some y, None -> Some (max x y)
| Some x, None, Some y -> Some (max x y)
| None, Some x, Some y -> Some (max x y)
| Some x,None,None -> Some x
| None,Some x,None -> Some x
| None,None,Some x -> Some x
| _,_,_ -> None;;


assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert(best_offer (Some 100) None (Some 150) = Some 150);;

assert(best_offer None None None = None);;

assert(best_offer None (Some 300) None = Some 300);;