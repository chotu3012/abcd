
include 'emu8086.inc'
define_print_num_uns
define_print_num
define_scan_num 
call scan_num 
mov bh ,10
mov al,cl
mov bl,0 
jmp reverse
reverse:
cmp al,0
jne label1 
je quit
LABEL1:
div bh
mov dl,ah
mov dh,al
mov al,bl
mul bh
add al,dl
mov ah,0 
mov dl,0
mov bl,al
mov al,dh
jmp reverse 

quit: 
mov al,bl
call print_num 
RET

