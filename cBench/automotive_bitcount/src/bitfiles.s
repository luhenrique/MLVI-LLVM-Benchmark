	.text
	.file	"bitfiles.c"
	.globl	bfopen                          # -- Begin function bfopen
	.p2align	4, 0x90
	.type	bfopen,@function
bfopen:                                 # @bfopen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$16, %edi
	callq	malloc
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	cmpq	-32(%rbp), %rdx
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fopen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	cmpq	(%rax), %rdx
	jne	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-32(%rbp), %rax
	movb	$0, 9(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 11(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	bfopen, .Lfunc_end0-bfopen
	.cfi_endproc
                                        # -- End function
	.globl	bfread                          # -- Begin function bfread
	.p2align	4, 0x90
	.type	bfread,@function
bfread:                                 # @bfread
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movsbl	9(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB2_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fgetc
                                        # kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movb	%al, 8(%rcx)
	movq	-8(%rbp), %rcx
	movb	$8, 9(%rcx)
.LBB2_2:
	movq	-8(%rbp), %rax
	movb	9(%rax), %cl
	addb	$-1, %cl
	movb	%cl, 9(%rax)
	movq	-8(%rbp), %rax
	movsbl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movsbl	9(%rax), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %esi
	shll	%cl, %esi
	andl	%esi, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end1:
	.size	bfread, .Lfunc_end1-bfread
	.cfi_endproc
                                        # -- End function
	.globl	bfwrite                         # -- Begin function bfwrite
	.p2align	4, 0x90
	.type	bfwrite,@function
bfwrite:                                # @bfwrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	11(%rax), %ecx
	movl	$8, %edx
	cmpl	%ecx, %edx
	jne	.LBB3_2
# %bb.1:
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	fputc
	movq	-16(%rbp), %rcx
	movb	$0, 11(%rcx)
.LBB3_2:
	movq	-16(%rbp), %rax
	movb	11(%rax), %cl
	addb	$1, %cl
	movb	%cl, 11(%rax)
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %edx
	shll	$1, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, 10(%rax)
	movl	-4(%rbp), %esi
	andl	$1, %esi
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %edi
	orl	%esi, %edi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, 10(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end2:
	.size	bfwrite, .Lfunc_end2-bfwrite
	.cfi_endproc
                                        # -- End function
	.globl	bfclose                         # -- Begin function bfclose
	.p2align	4, 0x90
	.type	bfclose,@function
bfclose:                                # @bfclose
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
	movq	(%rax), %rdi
	callq	fclose
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	callq	free
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end3:
	.size	bfclose, .Lfunc_end3-bfclose
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
	.addrsig_sym malloc
	.addrsig_sym fopen
	.addrsig_sym free
	.addrsig_sym fgetc
	.addrsig_sym fputc
	.addrsig_sym fclose
