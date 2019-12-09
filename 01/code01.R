massHalf=input/3
massRnd=trunc(massHalf)
massDown=massRnd-2
print(sum(massDown))

PartTwo=data.frame(input,massDown)
colnames(PartTwo) <- c("module","initFuel")

fuel2=trunc(massDown)