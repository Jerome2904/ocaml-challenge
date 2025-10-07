type vote = 
| StrongReject
| WeakReject
| WeakAccept
| StrongAccept


let decide_exam a b c = 
  let is_accepted x = if x = StrongAccept || x = WeakAccept then true else false in
  if (is_accepted a && is_accepted b && c <> StrongReject) ||
     (is_accepted a && is_accepted c && b <> StrongReject) ||
     (is_accepted b && is_accepted c && a <> StrongReject) 
  then
    true
  else
    false;;
