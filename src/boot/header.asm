; ldslockOS Boot Header
section .multiboot
    align 4
    dd 0x1BADB002              ; Magic number
    dd 0x03                    ; Flags (pede módulos e memória)
    dd -(0x1BADB002 + 0x03)    ; Checksum

section .text
global _start
extern main                    ; Aqui ele vai procurar seu código C++ ou C

_start:
    ; Configura uma pilha básica (stack)
    mov esp, stack_space
    
    ; Chama o seu código principal
    call main

    ; Se o código principal retornar, ele trava por segurança
    cli
.hlt_loop:
    hlt
    jmp .hlt_loop

section .bss
resb 8192                      ; Reserva 8KB para a pilha
stack_space:
