include 'emu8086.inc'
call scan_num
mov ax,cx  
printn
call scan_num
mov sp,cx

label:
mov bx,02
mov count,01
cmp ax,sp
jne prime
hlt
prime:
mov bp,ax
div bx
mov ax,bp
cmp dx,00
jne adding
inc count
adding:
inc bx
mov dx,00
cmp bx,ax
jng prime

cmp count,02
jne s
printn
call print_num
s:
inc ax
jmp label 
 count dw 00
define_scan_num
define_print_num
define_print_num_uns