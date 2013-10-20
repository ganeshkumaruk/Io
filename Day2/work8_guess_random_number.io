randomNumber := ((Random value) * 100 + 1) floor

i := 0
guess := 0
while(i < 10 and guess != randomNumber,
    ("Guess a number between 1 and 100: (guess " .. i+1 .. " of 10): ") println
    #guess = ReadLine readLine
    guess = File standardInput readLine asNumber
    guess = if(guess asNumber isNan, 0, guess asNumber)
    if(guess > randomNumber, "Too high" println)
    if(guess < randomNumber, "Too low" println)
    if(guess == randomNumber, "Congrats, you did it!" println exit)
    i = i + 1
)

if(guess == randomNumber,
    "Congrats, you did it!" println,
    "Too bad, maybe next time" println)