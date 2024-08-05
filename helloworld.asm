section .data
      text db "Hello, world!",10

section .text 
      global _start
_start:
       ; sys_write 

       mov rax,1
       mov rdi,1
       mov rsi,text
       mov rdx,14
       syscall
       
       ; sys_exit       

       mov rax,60
       mov rdi,0
       syscall 
