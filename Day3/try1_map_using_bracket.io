curlyBrackets := method(
	r := Map clone
	call message arguments foreach (arg,
		r atPut (call evalArgAt(0)
		, evalArgAt(0))
	)
	r
)

{1,2,3,4,5} println
{"a", "b", "c", "d", "e"} println