	.text
	.file	"bitcnts.c"
	.globl	main1                           # -- Begin function main1
	.p2align	4, 0x90
	.type	main1,@function
main1:                                  # @main1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$2, -4(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	stderr, %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	callq	exit
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	$.L.str.8, %edi
	callq	puts
.LBB0_4:
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$7, -24(%rbp)
	jge	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$1, -48(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movslq	-24(%rbp), %rax
	movq	main1.pBitCntFunc(,%rax,8), %r11
	movq	-48(%rbp), %rdi
	callq	__llvm_lvi_thunk_r11
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$13, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	-24(%rbp), %rax
	movq	main1.text(,%rax,8), %rsi
	movq	-40(%rbp), %rdx
	movl	$.L.str.9, %edi
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, %al
	callq	printf
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_14:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	main1, .Lfunc_end0-main1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function bit_shifter
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$64, %rax
	setb	%cl
	movb	%cl, -17(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	movb	-17(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	andq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB2_1
.LBB2_6:
	movl	-16(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end1:
	.size	bit_shifter, .Lfunc_end1-bit_shifter
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
	.type	main1.pBitCntFunc,@object       # @main1.pBitCntFunc
	.data
	.p2align	4
main1.pBitCntFunc:
	.quad	bit_count
	.quad	bitcount
	.quad	ntbl_bitcnt
	.quad	ntbl_bitcount
	.quad	BW_btbl_bitcount
	.quad	AR_btbl_bitcount
	.quad	bit_shifter
	.size	main1.pBitCntFunc, 56

	.type	main1.text,@object              # @main1.text
	.p2align	4
main1.text:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	main1.text, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%-38s> Bits: %ld\n"
	.size	.L.str.9, 18

	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bit_count
	.addrsig_sym bitcount
	.addrsig_sym ntbl_bitcnt
	.addrsig_sym ntbl_bitcount
	.addrsig_sym BW_btbl_bitcount
	.addrsig_sym AR_btbl_bitcount
	.addrsig_sym bit_shifter
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym atoi
	.addrsig_sym puts
	.addrsig_sym printf
	.addrsig_sym main1.pBitCntFunc
	.addrsig_sym main1.text
	.addrsig_sym stderr
