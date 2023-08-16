include 'emu8086.inc'
call scan_num
mov bx,10 
mov ax,cx

count:
cmp ax,0
je count_end
mov dx,0
div bx
inc c
jmp count

count_end:
print 'count is '
mov ax,c
call print_num   
printn
mov ax,cx

Armstrong:
cmp ax,0
je quit
mov dx,0
div bx  
mov si,c
mov a,ax
mov ax,dx
mov bp,dx
check:  
cmp si,1
je sum
mul bp
dec si
jmp check

sum:
add s,ax
mov ax,a
jmp armstrong

quit:
cmp s,cx
je pt
print 'Not armstrong'
ret
pt:
print 'Armstrong'
ret
 



s dw 0
c dw 0
a dw 0
define_print_num
define_print_num_uns
define_scan_num