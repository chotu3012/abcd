include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,ax

fact:
cmp bx,1
je result
 loop fact
  mul bx
 dec bx
 
 result:
 print 
 
 call print_num
 define_scan_num
 define_print_num
 define_print_num_uns
 
 

