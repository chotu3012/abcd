include 'emu8086.inc'
define_print_num_uns
define_print_num
define_scan_num 
call scan_num 
mov bp ,10
mov si,cx
mov ax,cx
mov bx,0 
reverse:
cmp ax,0
jne LABEL1 
je quit
LABEL1:
div bp 
mov cx,dx
mov dx,0
mov sp,ax
mov ax,bx
mul bp
add ax,cx
;mov dx,0 
mov bx,ax
mov ax,sp
jmp reverse 

quit: 
mov ax,bx
cmp ax,si
je palin 
print "NOT PALINDROME"
hlt
palin:
print "Palindrome "
hlt