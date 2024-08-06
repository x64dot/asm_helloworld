section .data
      num1 dq 10 ;we can change this
      num2 dq 5 ; we can change this
      message1 db "Both numbers are equal",10
      message2 db "Both numbers are not equal",10
section .text
      global _start
_start:
      mov rax,[num1]
      mov rbx,[num2]

      cmp rax,rbx

      je equal
      jmp notequal
equal:
     mov rax,1
     mov rdi,1
     mov rsi,message1
     mov rdx,23
     syscall
     jmp exit_program
notequal:
        mov rax,1
        mov rdi,1
        mov rsi,message2
        mov rdx,27
        syscall
        jmp exit_program
exit_program:
            mov rax,60
            mov rdi,0
            syscall

