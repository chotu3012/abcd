include 'emu8086.inc'
mov bl,02
mov cl,bl
mov al,bl
mov si,00
mov a[si],1
inc si

 fact:
 dec bl
 mul bl
 mov ah,00
 cmp bl,01
 jne fact
 mov a[si],al
 inc si
 inc cl
 mov bl,cl
 mov al,bl
 cmp bl,05 
 jng fact
 
 

mov si,00
printing:
mov al,a[si]
printn
call print_num
inc si
cmp si,5
jne printing
 hlt
a db 5 dup(0)
define_scan_num
define_print_num
define_print_num_uns 