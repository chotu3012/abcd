include 'emu8086.inc'
Define_scan_num
Define_print_num
Define_print_num_uns
call scan_num
mov ax,cx
mov bx,2
div bx   
PRINT 'thr ax is  '                

call print_num

cmp dx,0
JE LABEL1 
PRINT 'odd'
RET
LABEL1:
PRINT 'even'
hlt