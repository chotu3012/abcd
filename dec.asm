include 'emu8086.inc'
call scan_num
mov al,cl 
mov bl,02
mov si,00
label:
div bl
mov a[si],ah
mov ah,00
inc si
cmp al,00
jne label
dec si
 printn
label1:
mov al,a[si]
call print_num
dec si
cmp si,00
jnl label1
 hlt
a db 12dup(0)

define_scan_num
define_print_num
define_print_num_uns
