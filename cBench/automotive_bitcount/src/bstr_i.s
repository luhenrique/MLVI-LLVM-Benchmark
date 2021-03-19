	.text
	.file	"bstr_i.c"
	.globl	bstr_i                          # -- Begin function bstr_i
	.p2align	4, 0x90
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %esi
	movl	$.L.str, %edi
	callq	strchr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -17(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-17(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %edx
	subl	$48, %edx
	movl	%edx, -12(%rbp)
	movl	-16(%rbp), %edx
	shll	$1, %edx
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	andl	$1, %edx
	orl	-16(%rbp), %edx
	movl	%edx, -16(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	bstr_i, .Lfunc_end0-bstr_i
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
	.asciz	"01"
	.size	.L.str, 3

	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strchr
