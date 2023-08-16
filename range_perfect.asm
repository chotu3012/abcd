include 'emu8086.inc'
call scan_num
mov ax,cx 
printn
call scan_num
mov sp,cx


label:
mov bx,01
mov sum,00
cmp ax,sp
jne per
hlt 

per:
mov bp,ax
div bx
mov ax,bp
cmp dx,00
jne adding               ;perfect
add sum,bx
adding:
 mov dx,00
inc bx
cmp bx,ax
jl per
cmp sum,ax
jne r
printn
call print_num 
  
r: 

inc ax
jmp label



               
sum dw 00
define_scan_num
define_print_num
define_print_num_uns