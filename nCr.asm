include 'emu8086.inc'  
print "enter the n "
call scan_num
mov bx,cx
mov ax,1
n_fact:
cmp cx,0
je label1
mul cx
dec cx
jmp n_fact

label1:
printn "n! is "
call print_num 
mov bp,ax   ;n factorial in bp
mov ax,1

printn "enter the r "
call scan_num 
mov di,cx
r_fact:
cmp cx,0
je label2
 mul cx
 dec cx
jmp r_fact
   
label2: 
printn "r! is "
call print_num
mov si,ax  ;r factorial in si
 

sub bx,di
mov ax,bx
printn "sub is"
call print_num 
mov ax,1
label3:
cmp bx,0
je quit
mul bx     
dec bx
jmp label3

      
quit: 
printn "n-r is "
call print_num
;mov sp,ax   ;n-r)! in sp
mul si
mov si,ax
mov dx,0
mov ax,bp
div si

print "the result is "
call print_num
define_print_num_uns
define_print_num
define_scan_num
hlt