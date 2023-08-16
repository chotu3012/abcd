include 'emu8086.inc'
mov si,0

iterate: 
cmp si,10
je quit  

mov bp ,10
;mov rev,cx
mov ax,a[si]
mov bx,0
 
reverse:
cmp ax,0
je stop

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
 
stop:
cmp bx,a[si]
je p
add si,2
jmp iterate

p:
mov ax,a[si]
call print_num
print ' , '
inc si
inc si
jmp iterate

quit:
hlt 
ret
rev dw 0
a dw 6,20,28,1,121   
define_print_num
define_print_num_uns
define_scan_num

