mov A,#45h
mov B,#54h
add A,B
mov R3,A
setb PSW.3
setb PSW.4
mov R2,A