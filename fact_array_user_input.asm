include 'emu8086.inc'
mov si,0
;call scan_num
mov cx,1
mov bp,cx

input:
cmp n,5
je quit
mov ax,1
mov bx,1

fact:
cmp bx,bp
jg quit1 
mov dx,0
mul bx
inc bx
jmp fact
     
quit1:
mov a[si],ax
add si,2
inc bp   
inc n
jmp input

quit:
mov si,0
pt:
cmp si,10
je stop
mov ax,a[si]
add si,2
call print_num
jmp pt

stop:
ret

n dw 0
a dw ?,?,?,?,?
define_print_num
define_print_num_uns
define_scan_num

