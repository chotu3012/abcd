include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,10
mov bp,0

reverse:
mov dx,0
cmp ax,0
je quit
div bx
mov rem,dx
mov si,ax
mov ax,bp
mul bx
add ax,rem
mov bp,ax
mov ax,si
jmp reverse

quit:
mov ax,bp
print 'The reverse is '
call print_num                   


mov c,1
mov s,0
odd:
cmp ax,0
je quit1
div bx
cmp c,1
je sum
mov c,1
mov dx,0
jmp odd
sum:
add s,dx
mov dx,0
mov c,0
jmp odd

quit1:
mov ax,s
printn 'The sum is :'
call print_num
hlt

define_print_num
define_print_num_uns
define_scan_num
rem dw ?
c dw ?
s dw ?