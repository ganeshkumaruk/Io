List2D := List clone
List2D transposed := false

List2D dim := method(x, y,
    y repeat(
        inner := list()
        x repeat(inner push(nil))
        self append(inner)
    )
)

firstMatrix := List2D clone
firstMatrix dim(6,7) println
"" println

List2D set := method(x, y, value,
    self at(x) atPut(y, value)
)

List2D get := method(x, y,
    self at(x) at(y)
)

"Setting and getting a matrix" println
firstMatrix set(2,4,"asdfad")
firstMatrix println
"" println

firstMatrix get(2,4) println
firstMatrix get(1,2) println

file := File with("matrix.txt")
file remove
file openForUpdating
file write(firstMatrix join(", "))
file close

file = File with("matrix.txt")
file openForReading
lines := file readLines
file close
lines at(0) type println
matrixFromFile := lines at(0) split(", ")
matrixFromFile type println
matrixFromFile println