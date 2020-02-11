	.file	"threads.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB357:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE357:
	.size	_ZnwmPv, .-_ZnwmPv
	.globl	threads
	.bss
	.align 16
	.type	threads, @object
	.size	threads, 24
threads:
	.zero	24
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
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, %edi
	call	_Znwm@PLT
	movb	$100, (%rax)
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	threads(%rip), %rdi
	call	_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
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
	.section	.text._ZNSt6vectorI6threadSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EEC2Ev
	.type	_ZNSt6vectorI6threadSaIS0_EEC2Ev, @function
_ZNSt6vectorI6threadSaIS0_EEC2Ev:
.LFB836:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA836
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt6vectorI6threadSaIS0_EEC2Ev,"aG",@progbits,_ZNSt6vectorI6threadSaIS0_EEC5Ev,comdat
.LLSDA836:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE836-.LLSDACSB836
.LLSDACSB836:
.LLSDACSE836:
	.section	.text._ZNSt6vectorI6threadSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EEC5Ev,comdat
	.size	_ZNSt6vectorI6threadSaIS0_EEC2Ev, .-_ZNSt6vectorI6threadSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI6threadSaIS0_EEC1Ev
	.set	_ZNSt6vectorI6threadSaIS0_EEC1Ev,_ZNSt6vectorI6threadSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_
	.type	_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_, @function
_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L10
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI6threadSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_, .-_ZNSt6vectorI6threadSaIS0_EE9push_backERKS0_
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI6threadED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev:
.LFB845:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI6threadSaIS0_EEC1Ev,_ZNSt12_Vector_baseI6threadSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev:
.LFB848:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA848
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.section	.gcc_except_table._ZNSt12_Vector_baseI6threadSaIS0_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EED5Ev,comdat
.LLSDA848:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE848-.LLSDACSB848
.LLSDACSB848:
.LLSDACSE848:
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI6threadSaIS0_EED1Ev,_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev
	.section	.text._ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.section	.text._ZNSt6vectorI6threadSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EE3endEv
	.type	_ZNSt6vectorI6threadSaIS0_EE3endEv, @function
_ZNSt6vectorI6threadSaIS0_EE3endEv:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	_ZNSt6vectorI6threadSaIS0_EE3endEv, .-_ZNSt6vectorI6threadSaIS0_EE3endEv
	.section	.rodata
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB853:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA853
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI6threadSaIS0_EE5beginEv
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm
.LEHE0:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI6threadEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %rdi
.LEHB1:
	call	_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	movq	%rax, -56(%rbp)
	addq	$48, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE1:
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rcx
	sarq	$4, %rcx
	movabsq	$-6148914691236517205, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m
.LEHE2:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	jmp	.L28
.L26:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -56(%rbp)
	jne	.L22
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_
	jmp	.L23
.L22:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E
.L23:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m
	call	__cxa_rethrow@PLT
.LEHE3:
.L27:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L28:
	call	__stack_chk_fail@PLT
.L25:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.section	.gcc_except_table._ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"aG",@progbits,_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 4
.LLSDA853:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT853-.LLSDATTD853
.LLSDATTD853:
	.byte	0x1
	.uleb128 .LLSDACSE853-.LLSDACSB853
.LLSDACSB853:
	.uleb128 .LEHB0-.LFB853
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB853
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB853
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB853
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB853
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L27-.LFB853
	.uleb128 0
	.uleb128 .LEHB4-.LFB853
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE853:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT853:
	.section	.text._ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.size	_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI6threadSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI6threadEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI6threadSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI6threadED2Ev,"axG",@progbits,_ZNSaI6threadED5Ev,comdat
	.align 2
	.weak	_ZNSaI6threadED2Ev
	.type	_ZNSaI6threadED2Ev, @function
_ZNSaI6threadED2Ev:
.LFB858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	_ZNSaI6threadED2Ev, .-_ZNSaI6threadED2Ev
	.weak	_ZNSaI6threadED1Ev
	.set	_ZNSaI6threadED1Ev,_ZNSaI6threadED2Ev
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m:
.LFB860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m
.L33:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI6threadSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK6threadEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$48, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L37
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	32(%rbx), %rax
	movq	40(%rbx), %rdx
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
.L37:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI6threadE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L40
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L40:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L41
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L42
.L41:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv
	jmp	.L43
.L42:
	movq	-32(%rbp), %rax
.L43:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI6threadSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorI6threadSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EE5beginEv
	.type	_ZNSt6vectorI6threadSaIS0_EE5beginEv, @function
_ZNSt6vectorI6threadSaIS0_EE5beginEv:
.LFB866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	_ZNSt6vectorI6threadSaIS0_EE5beginEv, .-_ZNSt6vectorI6threadSaIS0_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m
	jmp	.L54
.L52:
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI6threadSaIS0_EE11_M_allocateEm
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP6threadSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIP6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaI6threadEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP6threadEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSaI6threadEC2Ev,"axG",@progbits,_ZNSaI6threadEC5Ev,comdat
	.align 2
	.weak	_ZNSaI6threadEC2Ev
	.type	_ZNSaI6threadEC2Ev, @function
_ZNSaI6threadEC2Ev:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	_ZNSaI6threadEC2Ev, .-_ZNSaI6threadEC2Ev
	.weak	_ZNSaI6threadEC1Ev
	.set	_ZNSaI6threadEC1Ev,_ZNSaI6threadEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI6threadED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI6threadED2Ev:
.LFB878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadED2Ev, .-_ZN9__gnu_cxx13new_allocatorI6threadED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI6threadED1Ev,_ZN9__gnu_cxx13new_allocatorI6threadED2Ev
	.section	.text._ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m:
.LFB880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI6threadEE10deallocateERS1_PS0_m
	.section	.text._ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv:
.LFB881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI6threadSaIS0_EE8max_sizeEv
	.section	.text._ZNKSt6vectorI6threadSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI6threadSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI6threadSaIS0_EE4sizeEv:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	_ZNKSt6vectorI6threadSaIS0_EE4sizeEv, .-_ZNKSt6vectorI6threadSaIS0_EE4sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L71
	movq	-16(%rbp), %rax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI6threadEE8allocateERS1_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIP6threadEC1ES1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorI6threadSt13move_iteratorIPS0_EET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E:
.LFB886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIP6threadES2_S1_ET0_T_S5_S4_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_:
.LFB887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorI6threadE7destroyIS1_EEvPT_
	.section	.text._ZSt8_DestroyIP6threadEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP6threadEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP6threadEvT_S2_
	.type	_ZSt8_DestroyIP6threadEvT_S2_, @function
_ZSt8_DestroyIP6threadEvT_S2_:
.LFB888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	_ZSt8_DestroyIP6threadEvT_S2_, .-_ZSt8_DestroyIP6threadEvT_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev:
.LFB890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI6threadEC1Ev,_ZN9__gnu_cxx13new_allocatorI6threadEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m:
.LFB892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI6threadE10deallocateEPS1_m
	.section	.text._ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_:
.LFB893:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI6threadEE8max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB894:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv:
.LFB895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L89
	call	_ZSt17__throw_bad_allocv@PLT
.L89:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI6threadE8allocateEmPKv
	.section	.text._ZNSt13move_iteratorIP6threadEC2ES1_,"axG",@progbits,_ZNSt13move_iteratorIP6threadEC5ES1_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIP6threadEC2ES1_
	.type	_ZNSt13move_iteratorIP6threadEC2ES1_, @function
_ZNSt13move_iteratorIP6threadEC2ES1_:
.LFB897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	_ZNSt13move_iteratorIP6threadEC2ES1_, .-_ZNSt13move_iteratorIP6threadEC2ES1_
	.weak	_ZNSt13move_iteratorIP6threadEC1ES1_
	.set	_ZNSt13move_iteratorIP6threadEC1ES1_,_ZNSt13move_iteratorIP6threadEC2ES1_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_, @function
_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_:
.LFB899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_, .-_ZSt18uninitialized_copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_:
.LFB900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP6threadEEvT_S4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv:
.LFB901:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$384307168202282325, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI6threadE8max_sizeEv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_:
.LFB902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6threadES4_EET0_T_S7_S6_
	.section	.text._ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_,"axG",@progbits,_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_,comdat
	.weak	_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	.type	_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_, @function
_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_:
.LFB903:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_, .-_ZSt4copyISt13move_iteratorIP6threadES2_ET0_T_S5_S4_
	.section	.text._ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",@progbits,_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,comdat
	.weak	_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.type	_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, @function
_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIP6threadE4baseEv
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIP6threadET_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, .-_ZSt12__miter_baseIP6threadEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.section	.text._ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_:
.LFB905:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP6threadET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP6threadET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP6threadET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb1EP6threadS1_ET1_T0_S3_S2_
	.section	.text._ZNKSt13move_iteratorIP6threadE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIP6threadE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIP6threadE4baseEv
	.type	_ZNKSt13move_iteratorIP6threadE4baseEv, @function
_ZNKSt13move_iteratorIP6threadE4baseEv:
.LFB906:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE906:
	.size	_ZNKSt13move_iteratorIP6threadE4baseEv, .-_ZNKSt13move_iteratorIP6threadE4baseEv
	.section	.text._ZSt12__miter_baseIP6threadET_S2_,"axG",@progbits,_ZSt12__miter_baseIP6threadET_S2_,comdat
	.weak	_ZSt12__miter_baseIP6threadET_S2_
	.type	_ZSt12__miter_baseIP6threadET_S2_, @function
_ZSt12__miter_baseIP6threadET_S2_:
.LFB907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE907:
	.size	_ZSt12__miter_baseIP6threadET_S2_, .-_ZSt12__miter_baseIP6threadET_S2_
	.section	.text._ZSt12__niter_baseIP6threadET_S2_,"axG",@progbits,_ZSt12__niter_baseIP6threadET_S2_,comdat
	.weak	_ZSt12__niter_baseIP6threadET_S2_
	.type	_ZSt12__niter_baseIP6threadET_S2_, @function
_ZSt12__niter_baseIP6threadET_S2_:
.LFB908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	_ZSt12__niter_baseIP6threadET_S2_, .-_ZSt12__niter_baseIP6threadET_S2_
	.section	.text._ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_:
.LFB909:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE909:
	.size	_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb1EP6threadS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_:
.LFB910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L114
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L114:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE910:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6threadEEPT_PKS4_S7_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB911:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L118
	cmpl	$65535, -8(%rbp)
	jne	.L118
	leaq	threads(%rip), %rdi
	call	_ZNSt6vectorI6threadSaIS0_EEC1Ev
	leaq	__dso_handle(%rip), %rdx
	leaq	threads(%rip), %rsi
	leaq	_ZNSt6vectorI6threadSaIS0_EED1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
.L118:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE911:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorI6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI6threadSaIS0_EED2Ev
	.type	_ZNSt6vectorI6threadSaIS0_EED2Ev, @function
_ZNSt6vectorI6threadSaIS0_EED2Ev:
.LFB913:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA913
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP6threadS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI6threadSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.section	.gcc_except_table._ZNSt6vectorI6threadSaIS0_EED2Ev,"aG",@progbits,_ZNSt6vectorI6threadSaIS0_EED5Ev,comdat
.LLSDA913:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE913-.LLSDACSB913
.LLSDACSB913:
.LLSDACSE913:
	.section	.text._ZNSt6vectorI6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6threadSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI6threadSaIS0_EED2Ev, .-_ZNSt6vectorI6threadSaIS0_EED2Ev
	.weak	_ZNSt6vectorI6threadSaIS0_EED1Ev
	.set	_ZNSt6vectorI6threadSaIS0_EED1Ev,_ZNSt6vectorI6threadSaIS0_EED2Ev
	.text
	.type	_GLOBAL__sub_I_threads, @function
_GLOBAL__sub_I_threads:
.LFB915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE915:
	.size	_GLOBAL__sub_I_threads, .-_GLOBAL__sub_I_threads
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_threads
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
