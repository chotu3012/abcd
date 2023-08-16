include 'emu8086.inc'
mov si,2
mov bl,0
sum: 
cmp si,6
jg quit
add bl,a[si]
add si,3
jmp sum 

quit:
mov al,bl
print 'Sum is '
call print_num
hlt

 a db 6,1,3,2,4,8
define_print_num
define_print_num_uns