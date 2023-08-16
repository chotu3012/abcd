 include 'emu8086.inc'
mov si,-2

label1:
add si,2 
cmp si,10
je quit
mov di,si

compare:
add di,2
cmp di,8
jg label1
mov bx,a[di]
cmp a[si],bx
jl swap
jmp compare
swap:
mov bp,a[si]
mov a[si],bx
mov bx,bp
mov a[di],bx
jmp compare

quit:
mov si,0
pt:
cmp si,8
jg stop
mov ax,a[si]
call print_num
printn
add si,2
jmp pt

stop:
hlt

a dw 6,1,3,2,4
define_print_num
define_print_num_uns