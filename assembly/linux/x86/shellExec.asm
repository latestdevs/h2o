section .text
global _start

_start:
    xor eax, eax            ; eax = 0
    push eax                ; null terminator

    ; push "//sh"
    push 0x68732f2f

    ; push "/bin"
    push 0x6e69622f

    mov ebx, esp            ; ebx -> "/bin//sh"

    push eax                ; argv null
    push ebx                ; argv[0] = "/bin//sh"
    mov ecx, esp            ; ecx -> argv

    xor edx, edx            ; edx = 0 (envp null)

    mov al, 0x0b            ; execve syscall
    int 0x80
