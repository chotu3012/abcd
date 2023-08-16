include 'emu8086.inc'
call scan_num
mov n,cx
mov si,00

label:
call scan_num 
;printn
mov a[si],cl
inc si
cmp si,n
jne label

mov si,00
mov bl,02
mov al,a[si]

perfect:
div bl
cmp ah,00
jne l
add sum,bl

l:
inc bl
mov ah,00 
mov al,a[si]
cmp bl,al
jne perfect

cmp sum,al
jne p
printn
call print_num
p:
inc si 
mov al,a[si] 
mov bl,02
mov sum,01
cmp si,n
jne perfect
hlt
sum db 01
n dw 00
a db n dup(0)
define_scan_num
define_print_num
define_print_num_uns