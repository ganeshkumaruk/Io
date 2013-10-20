# Easy way:
List myAverage := method(self average)

List myAverage2 := method(
    containsNonDigit := select(x, x asNumber() isNan()) size > 0
    if(containsNonDigit, Exception raise("An item in the list is not a number"))

    flatList := self flatten
    flatList reduce(+) / flatList size
)

"Averaging the numbers in a list" println
list(1,2,3,4) myAverage2 println
list(1,2,3,4) myAverage println
list(1,2,3,4,"a") myAverage2 println