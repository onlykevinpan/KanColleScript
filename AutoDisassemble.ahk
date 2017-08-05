^G::;press ctrl&G to start
MsgBox,Start
Process, wait, ElectronicObserver.exe, 5;get browser
NewPID = %ErrorLevel%
Loop, 40 {
  randX := returnRanX()
  randY := returnRanY()
  ControlClick, x%randX% y%randY%, ahk_pid %NewPID%;work in background with float position
  sleep,1000
  randA := returnRanA()
  randB := returnRanB()
  ControlClick, x%randA% y%randB%, ahk_pid %NewPID%
  Sleep, 5000
}
MsgBox,Finish
Return

returnRanX() {
  Random, rand, 260, 600
  return rand
}
returnRanY() {
  Random, rand, 310, 320
  return rand
}

returnRanA() {
  Random, rand, 690, 775
  return rand
}
returnRanB() {
  Random, rand, 605, 625
  return rand
}