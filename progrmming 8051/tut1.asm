org 00h
mov tmod,#00100000b
back:mov tl1,#05h
setb tr1
here:jnb tf1,here
cpl p2.0
clr tf1
sjmp here
end
