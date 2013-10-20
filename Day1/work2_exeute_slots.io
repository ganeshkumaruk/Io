Test := Object clone
Test testSlot := "This is a test slot!"
Test slotNames println

Test macroItUp := method("Injecting larvae now!" println)
Test macroItUp # Will print "Injecting larvae now!"

# If the code in a slot is stored as a string then you should use something like
# doString:

Test macroHarderSteps := ("\"Spreading creep now!\" println")
Test macroHarder := method(doString(Test macroHarderSteps))
Test macroHarder

# Update: Re-reading this now the intent of the question seems obvious! Write a
# method that, given a method name, will try to execute that method.
"\nLet's try that again" println
Test specifyMacro := method(name, perform(name))
Test specifyMacro("macroItUp")
Test specifyMacro("macroHarder")
"Done!" println