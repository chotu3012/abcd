include 'emu8086.inc'
call scan_num 
mov bp ,10
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
print 'reverse number is'
call print_num
mov sp,0 ;count
mov di,0 ;sum
mov cx,2 ;divide  count
mov bx,10 ;divide number
label2:
cmp ax,0
je quit2 
mov dx,0
div bx  ;ax/bx
mov si,dx
mov dx,0
inc sp 
mov bp,ax
mov ax,sp 
mov dx,0
div cx 
mov ax,bp
cmp dx,0
jne sum
jmp  label2
 sum:
 add di,si 
 jmp label2 
 
 
 quit2:
 mov ax,di
 printn
 print 'sum is  '
 call print_num 
 define_print_num_uns
define_print_num
define_scan_num 
 hlt