global _start
section .data
test_string: db "abcdefg", 0

section .text
strlen:
	xor rax, rax
.loop:
	cmp byte [rdi + rax], 0
	je .end
	inc rax
	jmp .loop
.end:
	ret

_start:
	mov rdi, test_string
	call strlen
	mov rdi, rax

	mov rax, 60
	syscall

; resultado em (unix):
; echo $? 