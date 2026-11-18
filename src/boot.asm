[org 0x7C00]

mov ax, 0x0000
int 0x10
mov ah, 0x0e
int 0x10
jmp start

start:
    call printf
    jmp end
end:
    hlt
    jmp end

printf:
    mov bx, string
    mov al, [bx]
    int 0x10
    cmp byte al, 0x00
    jne printf
    ret
string:
    db "hello world", 0
times 510 - ($-$$) db 0x00
dw 0xAA55

