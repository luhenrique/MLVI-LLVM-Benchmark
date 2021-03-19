	.text
	.file	"loop-wrap.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	stderr, %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	fprintf
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-24(%rbp), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	leaq	-40(%rbp), %rdx
	callq	__isoc99_fscanf
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	callq	fclose
	movq	$0, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	-40(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	main1
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movl	$0, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_finfo_dataset"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"rt"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\nError: Can't find dataset!\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%ld"
	.size	.L.str.3, 4

	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym fprintf
	.addrsig_sym __isoc99_fscanf
	.addrsig_sym fclose
	.addrsig_sym main1
	.addrsig_sym stderr
