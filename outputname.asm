section .data
text db "Enter your name: "

section .bss
buffer resb 128

section .text
      global _start
_start:
      mov rax,1
      mov rdi,1
      mov rsi,text
      mov rdx,17
      syscall
     
      mov rax,0
      mov rdi,0
      mov rsi,buffer
      mov rdx,128
      syscall
     
      mov rax,1
      mov rdi,1
      mov rsi,buffer
      mov rdx,128
      syscall   

      mov rax,60
      mov rdi,0
      syscall
