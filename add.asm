section .data
      num1 dq 5
      num2 dq 5
      result dq 0
      text db "Check the return to get the sum", 10

section .text
      global _start
_start:
      ; adding two numbers 

      mov rax,[num1]
      mov rbx,[num2]
      add rax,rbx
       
      mov [result],rax        
      
      ; sys_write
      
      mov rax,1
      mov rdi,1
      mov rsi,text
      mov rdx,35
      syscall

      ; sys_exit and returning the sum of 5+5 
     
      mov rax, 60
      mov rdi,[result]
      syscall 
