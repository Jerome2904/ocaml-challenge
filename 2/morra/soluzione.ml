type winner = Player | Computer | Tie ;;
let win (hp,gp) = 
  let hc = Random.int 6 in
  let gc = Random.int 11 in
  let player_win = hp+hc = gp in
  let comp_win = hp+hc = gc in
  if player_win && not comp_win then ((hc,gc),Player) else
    if comp_win && not player_win then ((hc,gc),Computer) else
      ((hc,gc),Tie);;


win(2,5);;
win(2,5);;
win(2,5);;
win(2,5);;
win(2,5);;
win(2,5);;