------------------------------ MODULE Example2 ------------------------------
EXTENDS Integers

VARIABLE x

Init == x = 0

Next == x' = ( x + 1 ) % 10

Spec == Init /\ [][Next]_<<x>> /\ []<><<TRUE>>_<<x>> 

Liveness2 == <>(x = 11)

=============================================================================