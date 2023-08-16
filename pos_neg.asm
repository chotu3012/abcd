include 'emu8086.inc'
Define_scan_num
Define_print_num
Define_print_num_uns
call scan_num
mov ax,cx
cmp ax,0
jg great
 print 'negative'
 hlt
great:
 print 'positive' 

hlt