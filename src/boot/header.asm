; ldslockOS Boot Header
section .multiboot
    align 4
    dd 0x1BADB002              ; Magic number for Multiboot
    dd 0x00                    ; Flags
    dd -(0x1BADB002 + 0x00)    ; Checksum

section .text
global _start
_start:
    ; The system starts here
    cli                        ; Disable interrupts
    hlt                        ; Halt the CPU
