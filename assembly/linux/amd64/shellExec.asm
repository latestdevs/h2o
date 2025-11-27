section .text
global _start

_start:
    xor rax, rax
    push rax

    mov rdi, rsp

    push rax
    push rdi
    mov rsi, rsp

    xor rdx, rdx

    mov rax, 59
    syscall
