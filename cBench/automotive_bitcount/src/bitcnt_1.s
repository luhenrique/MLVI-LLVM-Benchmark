	.text
	.file	"bitcnt_1.c"
	.globl	bit_count                       # -- Begin function bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	$1, %rsi
	andq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	cmpq	%rdx, %rcx
	jne	.LBB0_2
# %bb.4:
	jmp	.LBB0_5
.LBB0_5:
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	bit_count, .Lfunc_end0-bit_count
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
.Lfunc_end1:
	.size	__llvm_lvi_thunk_r11, .Lfunc_end1-__llvm_lvi_thunk_r11
                                        # -- End function
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
