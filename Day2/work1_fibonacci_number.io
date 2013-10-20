fib_recur := method(num,
    if(num <= 1, num, fib_recur(num - 1) + fib_recur(num - 2) )
)

fib_loop := method(num,
    old := 0
    new := 1
    next := 0
    for(i, num, 1, -1,
        next = old + new
        old = new
        new = next
    )
    old
)

"Fib 0" println
fib_recur(0) println
fib_loop(0) println

"Fib 4" println
fib_recur(4) println
fib_loop(4) println

"Fib 8" println
fib_recur(8) println
fib_loop(8) println