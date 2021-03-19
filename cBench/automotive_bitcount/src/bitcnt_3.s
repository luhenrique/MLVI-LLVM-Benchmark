	.text
	.file	"bitcnt_3.c"
	.globl	ntbl_bitcount                   # -- Begin function ntbl_bitcount
	.p2align	4, 0x90
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$15, %rax
                                        # kill: def $eax killed $eax killed $rax
	movslq	%eax, %rcx
	movsbl	bits(,%rcx), %eax
	movq	-8(%rbp), %rcx
	andq	$240, %rcx
	shrq	$4, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movslq	%ecx, %rdx
	movsbl	bits(,%rdx), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	andq	$3840, %rdx                     # imm = 0xF00
	shrq	$8, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movslq	%edx, %rsi
	movsbl	bits(,%rsi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rsi
	andq	$61440, %rsi                    # imm = 0xF000
	shrq	$12, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movslq	%esi, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$983040, %rdi                   # imm = 0xF0000
	shrq	$16, %rdi
                                        # kill: def $edi killed $edi killed $rdi
	movslq	%edi, %r8
	movsbl	bits(,%r8), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %r8
	andq	$15728640, %r8                  # imm = 0xF00000
	shrq	$20, %r8
                                        # kill: def $r8d killed $r8d killed $r8
	movslq	%r8d, %r9
	movsbl	bits(,%r9), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %r9
	andq	$251658240, %r9                 # imm = 0xF000000
	shrq	$24, %r9
                                        # kill: def $r9d killed $r9d killed $r9
	movslq	%r9d, %r10
	movsbl	bits(,%r10), %ecx
	addl	%ecx, %eax
	movabsq	$4026531840, %r10               # imm = 0xF0000000
	andq	-8(%rbp), %r10
	shrq	$28, %r10
                                        # kill: def $r10d killed $r10d killed $r10
	movslq	%r10d, %r11
	movsbl	bits(,%r11), %ecx
	addl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end0:
	.size	ntbl_bitcount, .Lfunc_end0-ntbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	BW_btbl_bitcount                # -- Begin function BW_btbl_bitcount
	.p2align	4, 0x90
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	-16(%rbp), %ecx
	movl	%ecx, %eax
	movsbl	bits(,%rax), %ecx
	movzbl	-15(%rbp), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	%edx, %ecx
	movzbl	-13(%rbp), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	%edx, %ecx
	movzbl	-14(%rbp), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end1:
	.size	BW_btbl_bitcount, .Lfunc_end1-BW_btbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	AR_btbl_bitcount                # -- Begin function AR_btbl_bitcount
	.p2align	4, 0x90
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movsbl	bits(,%rax), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	popq	%rcx
	lfence
	jmpq	*%rcx
.Lfunc_end2:
	.size	AR_btbl_bitcount, .Lfunc_end2-AR_btbl_bitcount
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
.Lfunc_end3:
	.size	__llvm_lvi_thunk_r11, .Lfunc_end3-__llvm_lvi_thunk_r11
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
	.addrsig_sym bits
