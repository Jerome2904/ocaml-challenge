type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP
let isLecture d c = match d,c with
| Tu,ALF -> true
| We,LIP -> true
| Th,_ -> true
| Fr,ALF -> true
| _,_ -> false;;

isLecture Mo ALF;;
isLecture Tu ALF;;
isLecture We ALF;;
isLecture Th ALF;;
isLecture Fr ALF;;

isLecture Mo LIP;;
isLecture Tu LIP;;
isLecture We LIP;;
isLecture Th LIP;;
isLecture Fr LIP;;