	.file	"threads.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.globl	_Z11startThreadPFviE
	.type	_Z11startThreadPFviE, @function
_Z11startThreadPFviE:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$1, %edi
	call	_Znwm@PLT  #new
	movb	$100, (%rax)
	movq	%rax, -48(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	_Z11startThreadPFviE, .-_Z11startThreadPFviE
	.globl	_Z8shareCPUi
	.type	_Z8shareCPUi, @function
_Z8shareCPUi:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	_Z8shareCPUi, .-_Z8shareCPUi
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
