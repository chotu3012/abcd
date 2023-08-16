include 'emu8086.inc'
call scan_num 
mov ax,cx 
mov sp,ax
call scan_num
mov bx,cx
mov si,bx 

cmp bx,ax
jg swap  
swap:
mov bp,ax
mov ax,bx
mov bx,bp 

HCF:
mov dx,0          
div bx
cmp dx,0 
je quit
mov ax,bx
mov bx,dx
jmp HCF
 
 quit:
 mov ax,bx 
 print 'HCF is :'
 call print_num
 
 LCM:
 mov ax,sp
 mul si
 mov dx,0
 div bx
 print '  lcm is:'
 call print_num   
 define_print_num
 define_print_num_uns 
 define_scan_num
