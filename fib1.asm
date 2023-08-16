include 'emu8086.inc'
call scan_num
mov ax,0
call print_num  
;print ','
;mov ax,1      
;call print_num 
mov bx,1

mov n,cx
fib:
cmp n,0
je quit 
print ','
call print_num  ;0 1 2
mov bp,ax    
add ax,bx ;1 2
mov bx,bp  ;1 2
dec n
jmp fib

quit:
hlt
define_print_num
define_print_num_uns
define_scan_num
n dw ?