unless := method(
    (call sender doMessage(call message argAt(0))) ifFalse( 
    call sender doMessage(call message argAt(1))) ifTrue( 
    call sender doMessage(call message argAt(2)))
)

unless(1 == 2, write("One is not two\n"), write("one is two\n"))


unless(1 == 1, write("One is not One\n"), write("one is one\n"))