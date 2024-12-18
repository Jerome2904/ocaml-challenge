type weekday = Mo | Tu | We | Th | Fr
type course = ALF | LIP

let isLecture (d : weekday) (c : course) : bool =
  match (d, c) with
  | (Tu, ALF) -> true
  | (Th, ALF) -> true
  | (Fr, ALF) -> true
  | (We, LIP) -> true
  | (Th, LIP) -> true
  | _ -> false;;