include 'emu8086.inc'
mov dl,02
mov cl,05
add cl,dl 
mov al,cl
aaa
call print_num 
printn
AAS
call print_num
define_scan_num
define_print_num
define_print_num_uns
