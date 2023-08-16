include 'emu8086.inc'
mov si,00
mov al,00
l:
cmp str[si],'@'
jne p
call print_num
hlt
p:
inc al
inc si
jmp l                       ;string_length

str db "sharada@"

define_scan_num
define_print_num
define_print_num_uns


