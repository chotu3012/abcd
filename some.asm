include 'emu8086.inc'
call scan_num
mov ax,1
mov bx,cx

fact:
mul bx
dec bx
loop fact
 
  
  
 call print_num
 define_scan_num
 define_print_num
 define_print_num_uns