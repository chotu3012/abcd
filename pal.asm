include 'emu8086.inc'
call scan_num
printn
mov ax,cx
mov bx,10

sum dw 00

rev: 
div bx
mov sp,ax 
mov bp,dx
mov ax,sum
mul bx
add ax,bp
mov sum,ax
mov dx,00
mov ax,sp
cmp ax,00
jne rev
mov ax,sum 
call print_num
cmp ax,cx

je result 

  print 'not'
  hlt

result: 
print 'palindrome'

define_scan_num
define_print_num
define_print_num_uns



