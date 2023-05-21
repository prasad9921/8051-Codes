org 00h
mov tmod,#00000001b
back:mov tl0,#0f0h
mov th0,#0ffh
cpl p1.0
acall delay
sjmp back
delay:setb tr0
here:jnb tf0,here
clr tr0
clr tf0
ret 
end