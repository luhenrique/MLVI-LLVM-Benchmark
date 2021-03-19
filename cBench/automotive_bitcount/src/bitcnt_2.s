	.text
	.file	"bitcnt_2.c"
	.globl	bitcount                        # -- Begin function bitcount
	.p2align	4, 0x90
	.type	bitcount,@function
bitcount:                               # @bitcount
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2863311530, %rax               # imm = 0xAAAAAAAA
	andq	-8(%rbp), %rax
	sarq	$1, %rax
	movq	-8(%rbp), %rcx
	andq	$1431655765, %rcx               # imm = 0x55555555
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movabsq	$3435973836, %rax               # imm = 0xCCCCCCCC
	andq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	andq	$858993459, %rcx                # imm = 0x33333333
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4042322160, %rax               # imm = 0xF0F0F0F0
	andq	-8(%rbp), %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rcx
	andq	$252645135, %rcx                # imm = 0xF0F0F0F
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4278255360, %rax               # imm = 0xFF00FF00
	andq	-8(%rbp), %rax
	sarq	$8, %rax
	movq	-8(%rbp), %rcx
	andq	$16711935, %rcx                 # imm = 0xFF00FF
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4294901760, %rax               # imm = 0xFFFF0000
	andq	-8(%rbp), %rax
	sarq	$16, %rax
	movq	-8(%rbp), %rcx
	andq	$65535, %rcx                    # imm = 0xFFFF
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	bitcount, .Lfunc_end0-bitcount
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
