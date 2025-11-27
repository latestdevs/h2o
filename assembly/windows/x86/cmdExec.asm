global _start

extern WinExec
extern ExitProcess

section .data
cmd db "cmd.exe",0

section .text
_start:
    push 0
    push cmd
    call WinExec

    push 0
    call ExitProcess
