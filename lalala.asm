include 'emu8086.inc'
mov bx,10
array:
cmp si,10
je quit1
mov ax,a[si]
mov c,0

count:      
cmp ax,0
je check
mov dx,0
div bx
inc c
jmp count

check:
mov di,c
;mov ax,a[si]
cmp ax,0
je quit
mov dx,0
div bx
mov bp,dx
multiply:
cmp di,1  
je sum
mul bp
dec di
jmp multiply

sum:
add s,ax
jmp check

quit:
mov di,s
cmp di,a[si]
je armstrong
add si,2
jmp array
armstrong:
mov ax,a[si]
call print_num
add si,2
jmp array


quit1:
ret

c dw 0
s dw 0
a dw 7,28,153,8,6
define_print_num
define_print_num_uns
define_scan_num

