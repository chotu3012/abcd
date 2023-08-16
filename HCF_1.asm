include 'emu8086.inc'
call scan_num
mov ax,cx
mov si,ax
call scan_num
mov bx,cx
mov bp,bx
cmp ax,bx
jg HCF
mov cx,ax
mov ax,bx
mov bx,cx

HCF: 
MOV DX,0
div bx
cmp dx,0
je label1
mov ax,bx
mov bx,dx
jmp HCF

label1:
mov ax,bx     
print 'The HCF is :'
call print_num 

LCM:
mov ax,si
mul bp
div bx
print 'The LCM is :'
call print_num
hlt
define_print_num
define_print_num_uns
define_scan_num
