	.text
	.file	"bitarray.c"
	.globl	alloc_bit_array                 # -- Begin function alloc_bit_array
	.p2align	4, 0x90
	.type	alloc_bit_array,@function
alloc_bit_array:                        # @alloc_bit_array
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	subq	$1, %rax
	shrq	$3, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	callq	calloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	alloc_bit_array, .Lfunc_end0-alloc_bit_array
	.cfi_endproc
                                        # -- End function
	.globl	getbit                          # -- Begin function getbit
	.p2align	4, 0x90
	.type	getbit,@function
getbit:                                 # @getbit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %eax
	movl	-12(%rbp), %esi
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	-16(%rbp), %esi                 # 4-byte Reload
	andl	%edx, %esi
	cmpl	$0, %esi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end1:
	.size	getbit, .Lfunc_end1-getbit
	.cfi_endproc
                                        # -- End function
	.globl	setbit                          # -- Begin function setbit
	.p2align	4, 0x90
	.type	setbit,@function
setbit:                                 # @setbit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB3_2
# %bb.1:
	movl	-12(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edi
	orl	%edx, %edi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, (%rsi)
	jmp	.LBB3_3
.LBB3_2:
	movl	-12(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	xorl	$-1, %edx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edi
	andl	%edx, %edi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, (%rsi)
.LBB3_3:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end2:
	.size	setbit, .Lfunc_end2-setbit
	.cfi_endproc
                                        # -- End function
	.globl	flipbit                         # -- Begin function flipbit
	.p2align	4, 0x90
	.type	flipbit,@function
flipbit:                                # @flipbit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltd
	movl	$8, %ecx
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -8(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %esi
	xorl	%edx, %esi
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_lvi_thunk_r11,"axG",@progbits,__llvm_lvi_thunk_r11,comdat
	.hidden	__llvm_lvi_thunk_r11            # -- Begin function __llvm_lvi_thunk_r11
	.weak	__llvm_lvi_thunk_r11
	.p2align	4, 0x90
	.type	__llvm_lvi_thunk_r11,@function
__llvm_lvi_thunk_r11:                   # @__llvm_lvi_thunk_r11
# %bb.0:
	lfence
	jmpq	*%r11
.Lfunc_end4:
	.size	__llvm_lvi_thunk_r11, .Lfunc_end4-__llvm_lvi_thunk_r11
                                        # -- End function
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
