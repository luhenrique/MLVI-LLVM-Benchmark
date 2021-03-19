	.text
	.file	"bitcnt_4.c"
	.globl	ntbl_bitcnt                     # -- Begin function ntbl_bitcnt
	.p2align	4, 0x90
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	andq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movslq	%edx, %rsi
	movsbl	bits(,%rsi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	sarq	$4, %rsi
	movq	%rsi, -8(%rbp)
	cmpq	%rsi, %rcx
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	ntbl_bitcnt
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB0_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	ntbl_bitcnt, .Lfunc_end0-ntbl_bitcnt
	.cfi_endproc
                                        # -- End function
	.globl	btbl_bitcnt                     # -- Begin function btbl_bitcnt
	.p2align	4, 0x90
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movsbl	-8(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rdx
	movsbl	bits(,%rdx), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	sarq	$8, %rdx
	movq	%rdx, -8(%rbp)
	cmpq	%rdx, %rcx
	je	.LBB2_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	btbl_bitcnt
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB2_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end1:
	.size	btbl_bitcnt, .Lfunc_end1-btbl_bitcnt
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
.Lfunc_end2:
	.size	__llvm_lvi_thunk_r11, .Lfunc_end2-__llvm_lvi_thunk_r11
                                        # -- End function
	.type	bits,@object                    # @bits
	.data
	.p2align	4
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ntbl_bitcnt
	.addrsig_sym btbl_bitcnt
	.addrsig_sym bits
