section .text
global _start

_start:
    xor eax, eax
    push eax

    ; push "//sh"
    push 0x68732f2f

    ; push "/bin"
    push 0x6e69622f

    mov ebx, esp

    push eax
    push ebx
    mov ecx, esp

    xor edx, edx

    mov al, 0x0b
    int 0x80
