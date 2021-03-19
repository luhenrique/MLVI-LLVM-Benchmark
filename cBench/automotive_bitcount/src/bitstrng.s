	.text
	.file	"bitstrng.c"
	.globl	bitstring                       # -- Begin function bitstring
	.p2align	4, 0x90
	.type	bitstring,@function
bitstring:                              # @bitstring
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %r8d
	sarl	$2, %r8d
	addl	%r8d, %edx
	movl	-20(%rbp), %r8d
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -40(%rbp)                 # 4-byte Spill
	cltd
	movl	$4, %r8d
	idivl	%r8d
	cmpl	$0, %edx
	movl	$1, %edx
	movl	-36(%rbp), %r8d                 # 4-byte Reload
	cmovnel	%r8d, %edx
	movl	-40(%rbp), %r9d                 # 4-byte Reload
	subl	%edx, %r9d
	subl	%r9d, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$32, (%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sarq	%cl, %rax
	andq	$1, %rax
	addq	$48, %rax
                                        # kill: def $al killed $al killed $rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%al, (%rdx)
	movl	-20(%rbp), %eax
	cltd
	movl	$4, %edi
	idivl	%edi
	cmpl	$0, %edx
	jne	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$32, (%rax)
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_10:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	bitstring, .Lfunc_end0-bitstring
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
