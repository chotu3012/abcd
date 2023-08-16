include 'emu8086.inc'

call scan_num
mov ax,cx 
mov bx,02 



perfect:
div bx
cmp dx,00
jne p
add sum,bx
p:
inc bx 
mov dx,00
mov ax,cx
cmp bx,ax
jne perfect
 

cmp sum,ax 
je res
 print 'not'
 hlt
res:
 print 'perfect'

 sum dw 01

define_scan_num
define_print_num
define_print_num_uns            
 