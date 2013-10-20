List2D := List clone
List2D transposed := false

List2D dim := method(x, y,
    y repeat(
        inner := list()
        x repeat(inner push(nil))
        self append(inner)
    )
)

# Hmmm, let's try this again

# Make sure you have this commit before using this solution
# https://github.com/stevedekorte/io/commit/4907d9d618499daa8973c0db380317678c0abd51
List2D dim2 := method(x, y,
    y repeat(self append(Range 0 to(x) asList() map(nil)))
)

firstMatrix := List2D clone
firstMatrix dim(6,7) println
"" println

secondMatrix := List2D clone
secondMatrix dim2(6,7) println
"" println

# The below will cause infinite loop until you apply the change in the
# commit above
testBounds := List2D clone
testBounds dim2(0, 2)
testBounds dim2(0, 2)

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