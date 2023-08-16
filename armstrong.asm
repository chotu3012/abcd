include 'emu8086.inc'
call scan_num 
printn
mov ax,cx
mov bx,10
mov y,00
label:
div bx
inc y
mov dx,00
cmp ax,00
jne label
mov ax,cx
arm:
div bx
mov bp,ax
mov ax,dx
mov dx,00
mov sp,01
mov si,ax
cube:
mul si
inc sp
mov dx,00
cmp sp,y
jne cube
add sum,ax
mov ax,bp
cmp ax,00
jne arm 
cmp sum,cx
jne s
print 'armstrong'
hlt
s:
print 'not'
hlt
sum dw 00
y dw 00
define_scan_num
define_print_num
define_print_num_uns 



    