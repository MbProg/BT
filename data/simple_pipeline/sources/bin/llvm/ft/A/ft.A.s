	.text
	.file	"ft/A/ft.A.bc"
	.file	1 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/../common/type.h"
	.file	2 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/appft.c"
	.file	3 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/fft3d.c"
	.file	4 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/mainft.c"
	.file	5 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/type.h"
	.file	6 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/c_timers.c"
	.file	7 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/wtime.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	-4682421225964825446    # double -3.947841760435743E-5
	.text
	.globl	appft
	.p2align	4, 0x90
	.type	appft,@function
appft:                                  # @appft
.Lfunc_begin0:
	.loc	2 54 0                  # appft.c:54:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$10312, %rsp            # imm = 0x2848
.Ltmp6:
	.cfi_def_cfa_offset 10368
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: appft:niter <- %EDI
	#DEBUG_VALUE: appft:total_time <- %RSI
	#DEBUG_VALUE: appft:verified <- %RDX
	movq	%rdx, 32(%rsp)          # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: appft:verified <- [%RSP+32]
	movq	%rsi, 40(%rsp)          # 8-byte Spill
.Ltmp14:
	#DEBUG_VALUE: appft:total_time <- [%RSP+40]
	movl	%edi, 28(%rsp)          # 4-byte Spill
.Ltmp15:
	#DEBUG_VALUE: appft:i <- 1
	#DEBUG_VALUE: appft:niter <- [%RSP+28]
	.loc	2 61 5 prologue_end     # appft.c:61:5
	movl	$1, %edi
	callq	timer_clear
.Ltmp16:
	#DEBUG_VALUE: appft:i <- 2
	movl	$2, %edi
	callq	timer_clear
	movl	$3, %edi
	callq	timer_clear
	movl	$4, %edi
	callq	timer_clear
	movl	$5, %edi
	callq	timer_clear
	movl	$6, %edi
	callq	timer_clear
	movl	$7, %edi
	callq	timer_clear
	movl	$8, %edi
	callq	timer_clear
	movl	$9, %edi
	callq	timer_clear
	movl	$10, %edi
	callq	timer_clear
	movl	$11, %edi
	callq	timer_clear
	movl	$12, %edi
	callq	timer_clear
	movl	$13, %edi
	callq	timer_clear
	movl	$14, %edi
	callq	timer_clear
	movl	$15, %edi
	callq	timer_clear
.Ltmp17:
	.loc	2 64 3                  # appft.c:64:3
	movl	$2, %edi
	callq	timer_start
	.loc	2 65 3                  # appft.c:65:3
	movl	$256, %edi              # imm = 0x100
	movl	$256, %esi              # imm = 0x100
	movl	$128, %edx
	movl	$xnt, %ecx
	callq	compute_initial_conditions
	leaq	6208(%rsp), %r14
.Ltmp18:
	#DEBUG_VALUE: appft:exp1 <- [%R14+0]
	.loc	2 67 3                  # appft.c:67:3
	movl	$256, %edi              # imm = 0x100
	movq	%r14, %rsi
	callq	CompExp
	leaq	2112(%rsp), %rbp
.Ltmp19:
	#DEBUG_VALUE: appft:exp2 <- [%RBP+0]
	.loc	2 68 3                  # appft.c:68:3
	movl	$256, %edi              # imm = 0x100
	movq	%rbp, %rsi
	callq	CompExp
	leaq	64(%rsp), %rbx
.Ltmp20:
	#DEBUG_VALUE: appft:exp3 <- [%RBX+0]
	.loc	2 69 3                  # appft.c:69:3
	movl	$128, %edi
	movq	%rbx, %rsi
	callq	CompExp
	.loc	2 70 3                  # appft.c:70:3
	movq	%rbx, 16(%rsp)
.Ltmp21:
	#DEBUG_VALUE: appft:exp3 <- undef
	movq	%rbp, 8(%rsp)
.Ltmp22:
	#DEBUG_VALUE: appft:exp2 <- undef
	movq	%r14, (%rsp)
.Ltmp23:
	#DEBUG_VALUE: appft:exp1 <- undef
	movl	$1, %edi
	movl	$256, %esi              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	movl	$128, %ecx
	movl	$xnt, %r8d
	movl	$y, %r9d
	callq	fftXYZ
	.loc	2 71 3                  # appft.c:71:3
	movl	$2, %edi
	callq	timer_stop
	.loc	2 73 3                  # appft.c:73:3
	movl	$1, %edi
	callq	timer_start
	movl	$twiddle, %r14d
	xorl	%edx, %edx
.Ltmp24:
	.loc	2 74 7                  # appft.c:74:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_2
# BB#1:                                 # %if.then
	.loc	2 74 23 is_stmt 0 discriminator 1 # appft.c:74:23
	movl	$13, %edi
	callq	timer_start
	movl	$twiddle, %r14d
	xorl	%edx, %edx
.Ltmp25:
	.p2align	4, 0x90
.LBB0_2:                                # %for.body8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
	.loc	2 81 17 is_stmt 1       # appft.c:81:17
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%edx, %eax
	.loc	2 81 24 is_stmt 0       # appft.c:81:24
	addl	%eax, %eax
	.loc	2 81 17                 # appft.c:81:17
	andl	$-128, %eax
	.loc	2 81 12                 # appft.c:81:12
	movl	%edx, %ebx
	subl	%eax, %ebx
.Ltmp26:
	#DEBUG_VALUE: appft:ii <- %EBX
	.loc	2 82 14 is_stmt 1       # appft.c:82:14
	imull	%ebx, %ebx
.Ltmp27:
	#DEBUG_VALUE: appft:ii2 <- %EBX
	.loc	2 81 12                 # appft.c:81:12
	xorl	%r13d, %r13d
.Ltmp28:
	#DEBUG_VALUE: appft:k <- 0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
.Ltmp29:
	.p2align	4, 0x90
.LBB0_3:                                # %for.body12
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	.loc	2 84 19                 # appft.c:84:19
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$25, %eax
	addl	%r13d, %eax
	andl	$-128, %eax
	addl	%eax, %eax
	.loc	2 84 14 is_stmt 0       # appft.c:84:14
	movl	%r13d, %r12d
	subl	%eax, %r12d
.Ltmp30:
	#DEBUG_VALUE: appft:kk <- %R12D
	.loc	2 85 21 is_stmt 1       # appft.c:85:21
	imull	%r12d, %r12d
.Ltmp31:
	.loc	2 85 17 is_stmt 0       # appft.c:85:17
	addl	%ebx, %r12d
.Ltmp32:
	#DEBUG_VALUE: appft:j <- 0
	#DEBUG_VALUE: appft:ik2 <- %R12D
	movq	%r14, %r15
	xorl	%ebp, %ebp
.Ltmp33:
	.p2align	4, 0x90
.LBB0_4:                                # %for.body19
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	2 87 21 is_stmt 1       # appft.c:87:21
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$25, %eax
	addl	%ebp, %eax
	andl	$-128, %eax
	addl	%eax, %eax
	.loc	2 88 46                 # appft.c:88:46
	movl	%ebp, %ecx
	subl	%eax, %ecx
	imull	%ecx, %ecx
	.loc	2 88 50 is_stmt 0       # appft.c:88:50
	addl	%r12d, %ecx
	.loc	2 88 35                 # appft.c:88:35
	cvtsi2sdl	%ecx, %xmm0
	.loc	2 88 34                 # appft.c:88:34
	mulsd	%xmm1, %xmm0
	.loc	2 88 28                 # appft.c:88:28
	callq	exp
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	.loc	2 88 26                 # appft.c:88:26
	movsd	%xmm0, (%r15)
.Ltmp34:
	.loc	2 86 7 is_stmt 1 discriminator 1 # appft.c:86:7
	incq	%rbp
	addq	$8, %r15
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_4
.Ltmp35:
# BB#5:                                 # %for.inc33
                                        #   in Loop: Header=BB0_3 Depth=2
	.loc	2 83 5 discriminator 1  # appft.c:83:5
	incq	%r13
	addq	$2056, %r14             # imm = 0x808
	cmpq	$256, %r13              # imm = 0x100
	jne	.LBB0_3
.Ltmp36:
# BB#6:                                 # %for.inc36
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	48(%rsp), %rdx          # 8-byte Reload
	.loc	2 80 3 discriminator 1  # appft.c:80:3
	incq	%rdx
	movq	56(%rsp), %r14          # 8-byte Reload
	addq	$526336, %r14           # imm = 0x80800
	cmpq	$128, %rdx
	jne	.LBB0_2
.Ltmp37:
# BB#7:                                 # %for.end38
	.loc	2 92 7                  # appft.c:92:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_10
# BB#8:                                 # %if.end41
	.loc	2 92 23 is_stmt 0 discriminator 1 # appft.c:92:23
	movl	$13, %edi
	callq	timer_stop
.Ltmp38:
	.loc	2 94 7 is_stmt 1        # appft.c:94:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_10
# BB#9:                                 # %if.then43
	.loc	2 94 23 is_stmt 0 discriminator 1 # appft.c:94:23
	movl	$12, %edi
	callq	timer_start
.Ltmp39:
.LBB0_10:                               # %if.end44
	.loc	2 95 3 is_stmt 1        # appft.c:95:3
	movl	$256, %edi              # imm = 0x100
	movl	$256, %esi              # imm = 0x100
	movl	$128, %edx
	movl	$xnt, %ecx
	callq	compute_initial_conditions
.Ltmp40:
	.loc	2 96 7                  # appft.c:96:7
	cmpl	$0, timers_enabled(%rip)
	movl	28(%rsp), %ebp          # 4-byte Reload
	leaq	6208(%rsp), %rbx
	movq	%rbx, %r12
	leaq	2112(%rsp), %rbx
	movq	%rbx, %r13
	leaq	64(%rsp), %rbx
	je	.LBB0_13
# BB#11:                                # %if.end47
	.loc	2 96 23 is_stmt 0 discriminator 1 # appft.c:96:23
	movl	$12, %edi
	callq	timer_stop
.Ltmp41:
	.loc	2 97 7 is_stmt 1        # appft.c:97:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_13
# BB#12:                                # %if.then49
	.loc	2 97 23 is_stmt 0 discriminator 1 # appft.c:97:23
	movl	$15, %edi
	callq	timer_start
.Ltmp42:
.LBB0_13:                               # %if.end50
	.loc	2 98 3 is_stmt 1        # appft.c:98:3
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r12, (%rsp)
	movl	$1, %r14d
	movl	$1, %edi
	movl	$256, %esi              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	movl	$128, %ecx
	movl	$xnt, %r8d
	movl	$y, %r9d
	callq	fftXYZ
	xorl	%eax, %eax
.Ltmp43:
	.loc	2 99 7                  # appft.c:99:7
	cmpl	$0, timers_enabled(%rip)
	movq	40(%rsp), %r15          # 8-byte Reload
	je	.LBB0_16
# BB#14:                                # %if.then55
	.loc	2 99 23 is_stmt 0 discriminator 1 # appft.c:99:23
	movl	$15, %edi
	callq	timer_stop
	movl	$1, %r14d
.Ltmp44:
.LBB0_15:                               # %for.cond57thread-pre-split
	.loc	2 102 9 is_stmt 1       # appft.c:102:9
	movl	timers_enabled(%rip), %eax
.Ltmp45:
.LBB0_16:                               # %for.cond57
	.loc	2 101 19 discriminator 1 # appft.c:101:19
	cmpl	%ebp, %r14d
	jle	.LBB0_17
.Ltmp46:
# BB#28:                                # %for.end86
	.loc	2 114 7                 # appft.c:114:7
	testl	%eax, %eax
	je	.LBB0_30
# BB#29:                                # %if.then88
.Ltmp47:
	.loc	2 114 23 is_stmt 0 discriminator 1 # appft.c:114:23
	movl	$14, %edi
	callq	timer_start
.Ltmp48:
.LBB0_30:                               # %if.end89
	.loc	2 115 3 is_stmt 1       # appft.c:115:3
	movl	$256, %edi              # imm = 0x100
	movl	$256, %esi              # imm = 0x100
	movl	$128, %edx
	movl	$sums, %r8d
	movl	%ebp, %ecx
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	verify
.Ltmp49:
	.loc	2 116 7                 # appft.c:116:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_32
# BB#31:                                # %if.then91
	.loc	2 116 23 is_stmt 0 discriminator 1 # appft.c:116:23
	movl	$14, %edi
	callq	timer_stop
.Ltmp50:
.LBB0_32:                               # %if.end92
	.loc	2 117 3 is_stmt 1       # appft.c:117:3
	movl	$1, %edi
	callq	timer_stop
	.loc	2 119 17                # appft.c:119:17
	movl	$1, %edi
	callq	timer_read
	.loc	2 119 15 is_stmt 0      # appft.c:119:15
	movsd	%xmm0, (%r15)
.Ltmp51:
	.loc	2 120 8 is_stmt 1       # appft.c:120:8
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_34
.Ltmp52:
# BB#33:                                # %if.end96
	.loc	2 122 3                 # appft.c:122:3
	movl	$.Lstr, %edi
	callq	puts
	.loc	2 123 58                # appft.c:123:58
	movl	$1, %edi
	callq	timer_read
	.loc	2 123 3 is_stmt 0 discriminator 1 # appft.c:123:3
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movb	$1, %al
	callq	printf
	.loc	2 124 58 is_stmt 1      # appft.c:124:58
	movl	$2, %edi
	callq	timer_read
	.loc	2 124 3 is_stmt 0 discriminator 1 # appft.c:124:3
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %esi
	movb	$1, %al
	callq	printf
	.loc	2 125 58 is_stmt 1      # appft.c:125:58
	movl	$3, %edi
	callq	timer_read
	.loc	2 125 3 is_stmt 0 discriminator 1 # appft.c:125:3
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %esi
	movb	$1, %al
	callq	printf
	.loc	2 126 58 is_stmt 1      # appft.c:126:58
	movl	$4, %edi
	callq	timer_read
	.loc	2 126 3 is_stmt 0 discriminator 1 # appft.c:126:3
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %esi
	movb	$1, %al
	callq	printf
	.loc	2 127 58 is_stmt 1      # appft.c:127:58
	movl	$7, %edi
	callq	timer_read
	.loc	2 127 3 is_stmt 0 discriminator 1 # appft.c:127:3
	movl	$.L.str.1, %edi
	movl	$.L.str.6, %esi
	movb	$1, %al
	callq	printf
	.loc	2 128 58 is_stmt 1      # appft.c:128:58
	movl	$8, %edi
	callq	timer_read
	.loc	2 128 3 is_stmt 0 discriminator 1 # appft.c:128:3
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %esi
	movb	$1, %al
	callq	printf
	.loc	2 129 58 is_stmt 1      # appft.c:129:58
	movl	$9, %edi
	callq	timer_read
	.loc	2 129 3 is_stmt 0 discriminator 1 # appft.c:129:3
	movl	$.L.str.1, %edi
	movl	$.L.str.8, %esi
	movb	$1, %al
	callq	printf
	.loc	2 130 58 is_stmt 1      # appft.c:130:58
	movl	$10, %edi
	callq	timer_read
	.loc	2 130 3 is_stmt 0 discriminator 1 # appft.c:130:3
	movl	$.L.str.1, %edi
	movl	$.L.str.9, %esi
	movb	$1, %al
	callq	printf
	.loc	2 131 58 is_stmt 1      # appft.c:131:58
	movl	$11, %edi
	callq	timer_read
	.loc	2 131 3 is_stmt 0 discriminator 1 # appft.c:131:3
	movl	$.L.str.1, %edi
	movl	$.L.str.10, %esi
	movb	$1, %al
	callq	printf
	.loc	2 132 58 is_stmt 1      # appft.c:132:58
	movl	$12, %edi
	callq	timer_read
	.loc	2 132 3 is_stmt 0 discriminator 1 # appft.c:132:3
	movl	$.L.str.1, %edi
	movl	$.L.str.11, %esi
	movb	$1, %al
	callq	printf
	.loc	2 133 58 is_stmt 1      # appft.c:133:58
	movl	$13, %edi
	callq	timer_read
	.loc	2 133 3 is_stmt 0 discriminator 1 # appft.c:133:3
	movl	$.L.str.1, %edi
	movl	$.L.str.12, %esi
	movb	$1, %al
	callq	printf
	.loc	2 134 58 is_stmt 1      # appft.c:134:58
	movl	$14, %edi
	callq	timer_read
	.loc	2 134 3 is_stmt 0 discriminator 1 # appft.c:134:3
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %esi
	movb	$1, %al
	callq	printf
	.loc	2 135 58 is_stmt 1      # appft.c:135:58
	movl	$15, %edi
	callq	timer_read
	.loc	2 135 3 is_stmt 0 discriminator 1 # appft.c:135:3
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %esi
	movb	$1, %al
	callq	printf
	.loc	2 136 58 is_stmt 1      # appft.c:136:58
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	.loc	2 136 3 is_stmt 0       # appft.c:136:3
	movl	$.L.str.1, %edi
	movl	$.L.str.15, %esi
	movb	$1, %al
	callq	printf
.LBB0_34:                               # %cleanup
	.loc	2 137 1 is_stmt 1 discriminator 2 # appft.c:137:1
	addq	$10312, %rsp            # imm = 0x2848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_17:                               # %for.body60
.Ltmp53:
	.loc	2 102 9                 # appft.c:102:9
	testl	%eax, %eax
	je	.LBB0_19
# BB#18:                                # %if.then62
.Ltmp54:
	.loc	2 102 25 is_stmt 0 discriminator 1 # appft.c:102:25
	movl	$11, %edi
	callq	timer_start
.Ltmp55:
.LBB0_19:                               # %if.end63
	.loc	2 103 5 is_stmt 1       # appft.c:103:5
	movl	$256, %edi              # imm = 0x100
	movl	$256, %esi              # imm = 0x100
	movl	$128, %edx
	movl	$xnt, %ecx
	movl	$y, %r8d
	movl	$twiddle, %r9d
	callq	evolve
.Ltmp56:
	.loc	2 104 9                 # appft.c:104:9
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_22
# BB#20:                                # %if.end66
	.loc	2 104 25 is_stmt 0 discriminator 1 # appft.c:104:25
	movl	$11, %edi
	callq	timer_stop
.Ltmp57:
	.loc	2 105 9 is_stmt 1       # appft.c:105:9
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_22
# BB#21:                                # %if.then68
	.loc	2 105 25 is_stmt 0 discriminator 1 # appft.c:105:25
	movl	$15, %edi
	callq	timer_start
.Ltmp58:
.LBB0_22:                               # %if.end69
	.loc	2 106 5 is_stmt 1       # appft.c:106:5
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r12, (%rsp)
	movl	$-1, %edi
	movl	$256, %esi              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	movl	$128, %ecx
	movl	$xnt, %r8d
	movl	$xnt, %r9d
	callq	fftXYZ
.Ltmp59:
	.loc	2 107 9                 # appft.c:107:9
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_25
# BB#23:                                # %if.end75
	.loc	2 107 25 is_stmt 0 discriminator 1 # appft.c:107:25
	movl	$15, %edi
	callq	timer_stop
.Ltmp60:
	.loc	2 108 9 is_stmt 1       # appft.c:108:9
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_25
# BB#24:                                # %if.then77
	.loc	2 108 25 is_stmt 0 discriminator 1 # appft.c:108:25
	movl	$10, %edi
	callq	timer_start
.Ltmp61:
.LBB0_25:                               # %if.end78
	.loc	2 109 24 is_stmt 1      # appft.c:109:24
	movslq	%r14d, %rax
	shlq	$4, %rax
	leaq	sums(%rax), %rdi
	.loc	2 109 5 is_stmt 0       # appft.c:109:5
	movl	$256, %edx              # imm = 0x100
	movl	$256, %ecx              # imm = 0x100
	movl	$128, %r8d
	movl	$xnt, %r9d
	movl	%r14d, %esi
	callq	CalculateChecksum
.Ltmp62:
	.loc	2 110 9 is_stmt 1       # appft.c:110:9
	cmpl	$0, timers_enabled(%rip)
	je	.LBB0_27
# BB#26:                                # %if.then82
	.loc	2 110 25 is_stmt 0 discriminator 1 # appft.c:110:25
	movl	$10, %edi
	callq	timer_stop
.Ltmp63:
.LBB0_27:                               # %for.inc84
	.loc	2 101 31 is_stmt 1 discriminator 2 # appft.c:101:31
	incl	%r14d
.Ltmp64:
	#DEBUG_VALUE: appft:kt <- %R14D
	jmp	.LBB0_15
.Ltmp65:
.Lfunc_end0:
	.size	appft, .Lfunc_end0-appft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4742906807993761792     # double 1220703125
	.text
	.globl	compute_initial_conditions
	.p2align	4, 0x90
	.type	compute_initial_conditions,@function
compute_initial_conditions:             # @compute_initial_conditions
.Lfunc_begin1:
	.file	8 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/auxfnct.c"
	.loc	8 138 0                 # auxfnct.c:138:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$6248, %rsp             # imm = 0x1868
.Ltmp72:
	.cfi_def_cfa_offset 6304
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: compute_initial_conditions:d1 <- %EDI
	#DEBUG_VALUE: compute_initial_conditions:d2 <- %ESI
	#DEBUG_VALUE: compute_initial_conditions:d3 <- %EDX
	#DEBUG_VALUE: compute_initial_conditions:u0 <- %RCX
	movq	%rcx, %r13
.Ltmp79:
	#DEBUG_VALUE: compute_initial_conditions:u0 <- %R13
	#DEBUG_VALUE: compute_initial_conditions:d3 <- [%RSP+16]
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%esi, %ebx
.Ltmp80:
	#DEBUG_VALUE: compute_initial_conditions:d2 <- %EBX
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movl	%edi, %ebp
.Ltmp81:
	#DEBUG_VALUE: compute_initial_conditions:d1 <- %EBP
	movl	%ebx, %eax
.Ltmp82:
	.loc	8 137 55 prologue_end   # auxfnct.c:137:55
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	1(%rbp), %eax
	.loc	8 147 9                 # auxfnct.c:147:9
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movabsq	$4734050326586327040, %rax # imm = 0x41B2B9B0A1000000
.Ltmp83:
	#DEBUG_VALUE: compute_initial_conditions:start <- 3.141593e+08
	#DEBUG_VALUE: compute_initial_conditions:a <- 1.220703e+09
	#DEBUG_VALUE: compute_initial_conditions:seed <- 3.141593e+08
	movq	%rax, 32(%rsp)
	leaq	32(%rsp), %rdi
.Ltmp84:
	#DEBUG_VALUE: compute_initial_conditions:start <- [%RDI+0]
	#DEBUG_VALUE: compute_initial_conditions:an <- 1.000000e+00
	#DEBUG_VALUE: ipow46:result <- 1.000000e+00
	#DEBUG_VALUE: ipow46:a <- 1.220703e+09
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.loc	8 152 11                # auxfnct.c:152:11
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	randlc
.Ltmp85:
	.loc	8 153 19                # auxfnct.c:153:19
	leal	(%rbp,%rbp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%rbp, %r12
.Ltmp86:
	#DEBUG_VALUE: compute_initial_conditions:d1 <- %R12D
	.loc	8 153 22 is_stmt 0      # auxfnct.c:153:22
	movl	%eax, %ebp
	imull	%ebx, %ebp
.Ltmp87:
	#DEBUG_VALUE: ipow46:result <- 1.000000e+00
	#DEBUG_VALUE: ipow46:a <- 1.220703e+09
	#DEBUG_VALUE: compute_initial_conditions:d2 <- [%RSP+4]
	.loc	8 96 16 is_stmt 1       # auxfnct.c:96:16
	testl	%ebp, %ebp
	je	.LBB1_8
.Ltmp88:
# BB#1:                                 # %if.end.i
	#DEBUG_VALUE: compute_initial_conditions:d2 <- [%RSP+4]
	#DEBUG_VALUE: compute_initial_conditions:d1 <- %R12D
	#DEBUG_VALUE: compute_initial_conditions:start <- [%RDI+0]
	#DEBUG_VALUE: compute_initial_conditions:u0 <- %R13
	#DEBUG_VALUE: ipow46:q <- 1.220703e+09
	movabsq	$4742906807993761792, %rax # imm = 0x41D2309CE5400000
	.loc	8 97 5                  # auxfnct.c:97:5
	movq	%rax, 80(%rsp)
	.loc	8 98 5                  # auxfnct.c:98:5
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.Ltmp89:
	#DEBUG_VALUE: ipow46:r <- 1.000000e+00
	movq	%rax, 64(%rsp)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp90:
	.loc	8 101 3 discriminator 1 # auxfnct.c:101:3
	cmpl	$2, %ebp
	jl	.LBB1_7
.Ltmp91:
# BB#2:
	#DEBUG_VALUE: compute_initial_conditions:u0 <- %R13
	#DEBUG_VALUE: compute_initial_conditions:start <- [%RDI+0]
	#DEBUG_VALUE: compute_initial_conditions:d1 <- %R12D
	#DEBUG_VALUE: compute_initial_conditions:d2 <- [%RSP+4]
	leaq	80(%rsp), %r14
	leaq	64(%rsp), %r15
.Ltmp92:
	.p2align	4, 0x90
.LBB1_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	8 102 12                # auxfnct.c:102:12
	movl	%ebp, %ebx
	shrl	$31, %ebx
	addl	%ebp, %ebx
.Ltmp93:
	.loc	8 103 12                # auxfnct.c:103:12
	movl	%ebx, %eax
	andl	$-2, %eax
.Ltmp94:
	.loc	8 103 9 is_stmt 0       # auxfnct.c:103:9
	cmpl	%ebp, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then3.i
                                        #   in Loop: Header=BB1_3 Depth=1
	.loc	8 102 12 is_stmt 1      # auxfnct.c:102:12
	sarl	%ebx
.Ltmp95:
	#DEBUG_VALUE: ipow46:n2 <- %EBX
	#DEBUG_VALUE: ipow46:n <- %EBX
	#DEBUG_VALUE: ipow46:q <- [%R14+0]
	.loc	8 104 15                # auxfnct.c:104:15
	movq	%r14, %rdi
	callq	randlc
.Ltmp96:
	.loc	8 153 8                 # auxfnct.c:153:8
	movl	%ebx, %ebp
.Ltmp97:
	#DEBUG_VALUE: ipow46:n2 <- %EBP
	#DEBUG_VALUE: ipow46:n <- %EBP
	jmp	.LBB1_6
.Ltmp98:
	.p2align	4, 0x90
.LBB1_5:                                # %if.else.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: ipow46:r <- [%R15+0]
	#DEBUG_VALUE: ipow46:q <- %XMM0
	.loc	8 107 15                # auxfnct.c:107:15
	movq	%r15, %rdi
	callq	randlc
.Ltmp99:
	.loc	8 108 12                # auxfnct.c:108:12
	decl	%ebp
.Ltmp100:
	#DEBUG_VALUE: ipow46:n <- %EBP
.LBB1_6:                                # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: ipow46:n <- %EBP
	.loc	8 101 12 discriminator 1 # auxfnct.c:101:12
	cmpl	$1, %ebp
.Ltmp101:
	.loc	8 104 26                # auxfnct.c:104:26
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	jg	.LBB1_3
.Ltmp102:
.LBB1_7:                                # %while.end.i
	#DEBUG_VALUE: ipow46:q <- %XMM0
	leaq	64(%rsp), %rdi
.Ltmp103:
	#DEBUG_VALUE: ipow46:r <- [%RDI+0]
	.loc	8 111 11                # auxfnct.c:111:11
	callq	randlc
.Ltmp104:
	.loc	8 112 12                # auxfnct.c:112:12
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
.Ltmp105:
	#DEBUG_VALUE: ipow46:r <- [%RSP+8]
	#DEBUG_VALUE: ipow46:result <- [%RSP+8]
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.Ltmp106:
.LBB1_8:                                # %ipow46.exit
	.loc	8 157 18                # auxfnct.c:157:18
	movq	32(%rsp), %rax
.Ltmp107:
	#DEBUG_VALUE: compute_initial_conditions:k <- 1
	.loc	8 157 16 is_stmt 0      # auxfnct.c:157:16
	movq	%rax, 96(%rsp)
.Ltmp108:
	.loc	8 158 3 is_stmt 1 discriminator 1 # auxfnct.c:158:3
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB1_11
.Ltmp109:
# BB#9:                                 # %for.body.preheader
	.loc	8 140 14                # auxfnct.c:140:14
	leaq	104(%rsp), %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ebx
	leaq	32(%rsp), %r14
	.p2align	4, 0x90
.LBB1_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp110:
	#DEBUG_VALUE: compute_initial_conditions:start <- [%R14+0]
	#DEBUG_VALUE: compute_initial_conditions:an <- undef
	.loc	8 159 13                # auxfnct.c:159:13
	movq	%r14, %rdi
.Ltmp111:
	#DEBUG_VALUE: compute_initial_conditions:an <- [%RSP+8]
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	randlc
.Ltmp112:
	#DEBUG_VALUE: compute_initial_conditions:an <- undef
	.loc	8 160 20                # auxfnct.c:160:20
	movq	32(%rsp), %rax
	.loc	8 160 18 is_stmt 0      # auxfnct.c:160:18
	movq	%rax, (%rbp)
.Ltmp113:
	.loc	8 158 3 is_stmt 1 discriminator 1 # auxfnct.c:158:3
	addq	$8, %rbp
	decl	%ebx
	jne	.LBB1_10
.Ltmp114:
.LBB1_11:                               # %for.cond16.preheader
	.loc	8 163 3 discriminator 1 # auxfnct.c:163:3
	movq	16(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_21
# BB#12:                                # %for.body18.lr.ph
.Ltmp115:
	.loc	8 165 19 discriminator 1 # auxfnct.c:165:19
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	jle	.LBB1_13
.Ltmp116:
# BB#22:                                # %for.body18.us.preheader
	movq	%r12, %rax
	.loc	8 164 10                # auxfnct.c:164:10
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-1(%rax), %ecx
.Ltmp117:
	.loc	8 167 7 discriminator 1 # auxfnct.c:167:7
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	%eax, %r15d
	andl	$3, %r15d
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
.Ltmp118:
	.loc	8 164 10                # auxfnct.c:164:10
	imulq	%r12, %rax
	shlq	$4, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	shlq	$4, %r12
	xorl	%ecx, %ecx
	leaq	2144(%rsp), %r14
	.p2align	4, 0x90
.LBB1_23:                               # %for.body18.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #       Child Loop BB1_27 Depth 3
                                        #       Child Loop BB1_30 Depth 3
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	96(%rsp,%rcx,8), %rax
	.loc	8 164 8 is_stmt 0       # auxfnct.c:164:8
	movq	%rax, 56(%rsp)
.Ltmp119:
	#DEBUG_VALUE: compute_initial_conditions:j <- 0
	movl	4(%rsp), %ebx           # 4-byte Reload
	movl	$0, %ebp
	jle	.LBB1_24
	.p2align	4, 0x90
.LBB1_26:                               # %for.body23.us.us
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_27 Depth 3
                                        #       Child Loop BB1_30 Depth 3
.Ltmp120:
	#DEBUG_VALUE: compute_initial_conditions:x0 <- undef
	.loc	8 166 7 is_stmt 1       # auxfnct.c:166:7
	movl	28(%rsp), %edi          # 4-byte Reload
	leaq	56(%rsp), %rsi
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %rdx
	callq	vranlc
	testl	%r15d, %r15d
.Ltmp121:
	#DEBUG_VALUE: compute_initial_conditions:i <- 0
	movq	%r13, %rcx
	movq	%r14, %rdx
	movl	$0, %eax
	je	.LBB1_28
	.p2align	4, 0x90
.LBB1_27:                               # %for.body27.us.us.prol
                                        #   Parent Loop BB1_23 Depth=1
                                        #     Parent Loop BB1_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp122:
	.loc	8 168 23                # auxfnct.c:168:23
	movupd	(%rdx), %xmm0
	movupd	%xmm0, (%rcx)
.Ltmp123:
	.loc	8 167 7 discriminator 1 # auxfnct.c:167:7
	incq	%rax
	addq	$16, %rdx
	addq	$16, %rcx
	cmpl	%eax, %r15d
	jne	.LBB1_27
.LBB1_28:                               # %for.body23.us.us.split
                                        #   in Loop: Header=BB1_26 Depth=2
	cmpl	$3, 8(%rsp)             # 4-byte Folded Reload
	jb	.LBB1_31
# BB#29:                                # %for.body23.us.us.split.split
                                        #   in Loop: Header=BB1_26 Depth=2
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	shlq	$4, %rax
	leaq	2144(%rsp,%rax), %rdx
	addq	%r13, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_30:                               # %for.body27.us.us
                                        #   Parent Loop BB1_23 Depth=1
                                        #     Parent Loop BB1_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp124:
	.loc	8 168 23                # auxfnct.c:168:23
	movups	(%rdx,%rsi), %xmm0
	movups	%xmm0, (%rax,%rsi)
	movups	16(%rdx,%rsi), %xmm0
	movups	%xmm0, 16(%rax,%rsi)
	movups	32(%rdx,%rsi), %xmm0
	movups	%xmm0, 32(%rax,%rsi)
	movupd	48(%rdx,%rsi), %xmm0
	movupd	%xmm0, 48(%rax,%rsi)
.Ltmp125:
	.loc	8 167 7 discriminator 1 # auxfnct.c:167:7
	addq	$64, %rsi
	addl	$-4, %ecx
	jne	.LBB1_30
.Ltmp126:
.LBB1_31:                               # %for.cond25.for.inc39_crit_edge.us.us
                                        #   in Loop: Header=BB1_26 Depth=2
	.loc	8 165 5 discriminator 1 # auxfnct.c:165:5
	incq	%rbp
	addq	%r12, %r13
	cmpl	4(%rsp), %ebp           # 4-byte Folded Reload
	jne	.LBB1_26
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_24:                               # %for.body23.us81
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: compute_initial_conditions:x0 <- undef
.Ltmp127:
	.loc	8 166 7                 # auxfnct.c:166:7
	movl	28(%rsp), %edi          # 4-byte Reload
	leaq	56(%rsp), %rsi
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %rdx
	callq	vranlc
.Ltmp128:
	#DEBUG_VALUE: compute_initial_conditions:i <- 0
	.loc	8 165 5 discriminator 1 # auxfnct.c:165:5
	decl	%ebx
	jne	.LBB1_24
.Ltmp129:
.LBB1_25:                               # %for.cond21.for.inc42_crit_edge.us
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	.loc	8 163 3 discriminator 1 # auxfnct.c:163:3
	incq	%rcx
	movq	48(%rsp), %r13          # 8-byte Reload
	addq	40(%rsp), %r13          # 8-byte Folded Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB1_23
	jmp	.LBB1_21
.Ltmp130:
.LBB1_13:                               # %for.body18.preheader
	movq	16(%rsp), %rdx          # 8-byte Reload
	.loc	8 143 10                # auxfnct.c:143:10
	leal	-1(%rdx), %ecx
	xorl	%eax, %eax
	testb	$7, %dl
	movq	%rdx, %rbp
                                        # implicit-def: %RDX
	je	.LBB1_16
# BB#14:                                # %for.body18.prol.preheader
	movl	%ebp, %esi
	andl	$7, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_15:                               # %for.body18.prol
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compute_initial_conditions:j <- 0
.Ltmp131:
	.loc	8 163 3 discriminator 1 # auxfnct.c:163:3
	leaq	1(%rdi), %rax
	movq	%rdi, %rdx
	cmpl	%eax, %esi
	movq	%rax, %rdi
	jne	.LBB1_15
.Ltmp132:
.LBB1_16:                               # %for.body18.preheader.split
	.loc	8 143 10                # auxfnct.c:143:10
	cmpl	$7, %ecx
	jb	.LBB1_20
# BB#17:                                # %for.body18.preheader.split.split
	movl	%ebp, %ecx
	.p2align	4, 0x90
.LBB1_18:                               # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compute_initial_conditions:j <- 0
	movq	%rax, %rdx
.Ltmp133:
	.loc	8 163 3 discriminator 1 # auxfnct.c:163:3
	leaq	8(%rdx), %rax
	cmpl	%eax, %ecx
	jne	.LBB1_18
# BB#19:                                # %for.end44.loopexit121.unr-lcssa
	addq	$7, %rdx
.LBB1_20:                               # %for.end44.loopexit121
.Ltmp134:
	.loc	8 164 10                # auxfnct.c:164:10
	movq	96(%rsp,%rdx,8), %rax
	.loc	8 164 8 is_stmt 0       # auxfnct.c:164:8
	movq	%rax, 56(%rsp)
.Ltmp135:
.LBB1_21:                               # %for.end44
	.loc	8 172 1 is_stmt 1       # auxfnct.c:172:1
	addq	$6248, %rsp             # imm = 0x1868
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp136:
.Lfunc_end1:
	.size	compute_initial_conditions, .Lfunc_end1-compute_initial_conditions
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI2_2:
	.quad	0                       # double 0
	.text
	.globl	CompExp
	.p2align	4, 0x90
	.type	CompExp,@function
CompExp:                                # @CompExp
.Lfunc_begin2:
	.loc	8 45 0                  # auxfnct.c:45:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp143:
	.cfi_def_cfa_offset 96
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: CompExp:n <- %EDI
	#DEBUG_VALUE: CompExp:exponent <- %RSI
.Ltmp150:
	#DEBUG_VALUE: CompExp:nu <- %EDI
	movq	%rsi, %r13
.Ltmp151:
	#DEBUG_VALUE: ilog2:n <- %EDI
	#DEBUG_VALUE: CompExp:pi <- 3.141593e+00
	#DEBUG_VALUE: CompExp:exponent <- %R13
	.loc	8 70 7 prologue_end     # auxfnct.c:70:7
	cmpl	$1, %edi
	jne	.LBB2_2
.Ltmp152:
# BB#1:                                 # %ilog2.exit.thread
	#DEBUG_VALUE: CompExp:exponent <- %R13
	#DEBUG_VALUE: ilog2:n <- %EDI
	#DEBUG_VALUE: CompExp:nu <- %EDI
	#DEBUG_VALUE: CompExp:n <- %EDI
	.loc	8 52 17                 # auxfnct.c:52:17
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r13)
.Ltmp153:
	#DEBUG_VALUE: CompExp:j <- 1
	#DEBUG_VALUE: CompExp:ln <- 1
	#DEBUG_VALUE: CompExp:ku <- 2
	jmp	.LBB2_13
.Ltmp154:
.LBB2_2:                                # %while.cond.preheader.i
	#DEBUG_VALUE: CompExp:exponent <- %R13
	#DEBUG_VALUE: ilog2:n <- %EDI
	#DEBUG_VALUE: CompExp:nu <- %EDI
	#DEBUG_VALUE: CompExp:n <- %EDI
	.loc	8 74 13 discriminator 1 # auxfnct.c:74:13
	cmpl	$2, %edi
	jle	.LBB2_14
.Ltmp155:
# BB#3:
	#DEBUG_VALUE: CompExp:n <- %EDI
	#DEBUG_VALUE: CompExp:nu <- %EDI
	#DEBUG_VALUE: ilog2:n <- %EDI
	#DEBUG_VALUE: CompExp:exponent <- %R13
	movl	$2, %ecx
	xorl	%eax, %eax
.Ltmp156:
	.p2align	4, 0x90
.LBB2_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	8 51 7                  # auxfnct.c:51:7
	movl	%eax, %edx
.Ltmp157:
	.loc	8 75 13                 # auxfnct.c:75:13
	addl	%ecx, %ecx
.Ltmp158:
	#DEBUG_VALUE: ilog2:nn <- %ECX
	.loc	8 74 3 discriminator 1  # auxfnct.c:74:3
	leal	1(%rdx), %eax
	.loc	8 74 13 is_stmt 0 discriminator 1 # auxfnct.c:74:13
	cmpl	%edi, %ecx
	.loc	8 74 3 discriminator 1  # auxfnct.c:74:3
	jl	.LBB2_4
.Ltmp159:
# BB#5:                                 # %ilog2.exit
	#DEBUG_VALUE: ilog2:nn <- %ECX
	addl	$2, %edx
.Ltmp160:
	.loc	8 52 17 is_stmt 1       # auxfnct.c:52:17
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, (%r13)
	#DEBUG_VALUE: CompExp:j <- 1
	#DEBUG_VALUE: CompExp:ln <- 1
	#DEBUG_VALUE: CompExp:ku <- 2
	movq	$0, 8(%r13)
.Ltmp161:
	.loc	8 55 17 discriminator 1 # auxfnct.c:55:17
	testl	%eax, %eax
	jns	.LBB2_6
	jmp	.LBB2_13
.Ltmp162:
.LBB2_14:                               # %ilog2.exit.thread55
	#DEBUG_VALUE: CompExp:n <- %EDI
	#DEBUG_VALUE: CompExp:nu <- %EDI
	#DEBUG_VALUE: ilog2:n <- %EDI
	#DEBUG_VALUE: CompExp:exponent <- %R13
	.loc	8 52 17                 # auxfnct.c:52:17
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movupd	%xmm0, (%r13)
	#DEBUG_VALUE: CompExp:j <- 1
	#DEBUG_VALUE: CompExp:ln <- 1
	#DEBUG_VALUE: CompExp:ku <- 2
	movl	$1, %edx
.Ltmp163:
.LBB2_6:                                # %for.body.preheader
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movl	$2, %r15d
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB2_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
.Ltmp164:
	#DEBUG_VALUE: CompExp:i <- 0
	movq	%rax, 32(%rsp)          # 8-byte Spill
.Ltmp165:
	.loc	8 57 5 discriminator 1  # auxfnct.c:57:5
	testl	%ebx, %ebx
	jle	.LBB2_12
.Ltmp166:
# BB#8:                                 # %for.body6.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	.loc	8 56 14                 # auxfnct.c:56:14
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	.loc	8 56 12 is_stmt 0       # auxfnct.c:56:12
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
.Ltmp167:
	#DEBUG_VALUE: CompExp:t <- %XMM1
	.loc	8 57 5 is_stmt 1 discriminator 1 # auxfnct.c:57:5
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	testb	$1, %bl
	movl	$0, %ebp
	je	.LBB2_10
.Ltmp168:
# BB#9:                                 # %for.body6.prol
                                        #   in Loop: Header=BB2_7 Depth=1
	#DEBUG_VALUE: CompExp:t <- %XMM1
	.loc	8 58 14                 # auxfnct.c:58:14
	movapd	%xmm1, %xmm0
	mulsd	.LCPI2_2, %xmm0
.Ltmp169:
	#DEBUG_VALUE: CompExp:ti <- %XMM0
	.loc	8 59 20                 # auxfnct.c:59:20
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	leal	-1(%r15), %eax
	.loc	8 59 7 is_stmt 0        # auxfnct.c:59:7
	movslq	%eax, %rbp
.Ltmp170:
	#DEBUG_VALUE: CompExp:ti <- [%RSP+0]
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	.loc	8 59 26                 # auxfnct.c:59:26
	callq	cos
.Ltmp171:
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	.loc	8 59 26 discriminator 1 # auxfnct.c:59:26
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp172:
	.loc	8 59 26 discriminator 2 # auxfnct.c:59:26
	shlq	$4, %rbp
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, (%r13,%rbp)
	movsd	%xmm0, 8(%r13,%rbp)
	movl	$1, %ebp
.Ltmp173:
.LBB2_10:                               # %for.body6.lr.ph.split
                                        #   in Loop: Header=BB2_7 Depth=1
	.loc	8 57 5 is_stmt 1 discriminator 1 # auxfnct.c:57:5
	cmpl	$1, %ebx
	je	.LBB2_12
	.p2align	4, 0x90
.LBB2_11:                               # %for.body6
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp174:
	.loc	8 58 12                 # auxfnct.c:58:12
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	.loc	8 58 14 is_stmt 0       # auxfnct.c:58:14
	mulsd	%xmm1, %xmm0
.Ltmp175:
	#DEBUG_VALUE: CompExp:ti <- %XMM0
	.loc	8 59 7 is_stmt 1        # auxfnct.c:59:7
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	leal	(%r15,%rbp), %r14d
	leal	-1(%r15,%rbp), %eax
	movslq	%eax, %r12
.Ltmp176:
	#DEBUG_VALUE: CompExp:ti <- [%RSP+0]
	.loc	8 59 26 is_stmt 0       # auxfnct.c:59:26
	callq	cos
.Ltmp177:
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	.loc	8 59 26 discriminator 1 # auxfnct.c:59:26
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	.loc	8 59 26 discriminator 2 # auxfnct.c:59:26
	shlq	$4, %r12
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, (%r13,%r12)
	movsd	%xmm0, 8(%r13,%r12)
.Ltmp178:
	.loc	8 57 5 is_stmt 1 discriminator 1 # auxfnct.c:57:5
	leal	1(%rbp), %eax
.Ltmp179:
	.loc	8 58 12                 # auxfnct.c:58:12
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	.loc	8 58 14 is_stmt 0       # auxfnct.c:58:14
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	%ebx, %r12d
	.loc	8 59 7 is_stmt 1        # auxfnct.c:59:7
	movslq	%r14d, %rbx
	.loc	8 59 26 is_stmt 0       # auxfnct.c:59:26
	callq	cos
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	.loc	8 59 26 discriminator 1 # auxfnct.c:59:26
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	8 59 26 discriminator 2 # auxfnct.c:59:26
	shlq	$4, %rbx
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, (%r13,%rbx)
	movsd	%xmm0, 8(%r13,%rbx)
	movl	%r12d, %ebx
.Ltmp180:
	.loc	8 57 5 is_stmt 1 discriminator 1 # auxfnct.c:57:5
	addq	$2, %rbp
	cmpl	%ebx, %ebp
	jne	.LBB2_11
.Ltmp181:
.LBB2_12:                               # %for.end
                                        #   in Loop: Header=BB2_7 Depth=1
	.loc	8 61 13                 # auxfnct.c:61:13
	addl	%ebx, %r15d
.Ltmp182:
	#DEBUG_VALUE: CompExp:ku <- %R15D
	.loc	8 62 12                 # auxfnct.c:62:12
	addl	%ebx, %ebx
.Ltmp183:
	#DEBUG_VALUE: CompExp:ln <- %EBX
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
.Ltmp184:
	.loc	8 55 3 discriminator 1  # auxfnct.c:55:3
	cmpl	%eax, %ecx
	.loc	8 55 24 is_stmt 0 discriminator 2 # auxfnct.c:55:24
	leal	1(%rcx), %eax
.Ltmp185:
	#DEBUG_VALUE: CompExp:j <- %EAX
	jne	.LBB2_7
.Ltmp186:
.LBB2_13:                               # %for.end19
	.loc	8 64 1 is_stmt 1        # auxfnct.c:64:1
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp187:
.Lfunc_end2:
	.size	CompExp, .Lfunc_end2-CompExp
	.cfi_endproc

	.globl	fftXYZ
	.p2align	4, 0x90
	.type	fftXYZ,@function
fftXYZ:                                 # @fftXYZ
.Lfunc_begin3:
	.loc	3 143 0                 # fft3d.c:143:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp189:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp190:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp191:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp192:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp194:
	.cfi_def_cfa_offset 304
.Ltmp195:
	.cfi_offset %rbx, -56
.Ltmp196:
	.cfi_offset %r12, -48
.Ltmp197:
	.cfi_offset %r13, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: fftXYZ:sign <- %EDI
	#DEBUG_VALUE: fftXYZ:n1 <- %ESI
	#DEBUG_VALUE: fftXYZ:n2 <- %EDX
	#DEBUG_VALUE: fftXYZ:n3 <- %ECX
	#DEBUG_VALUE: fftXYZ:x <- %R8
	#DEBUG_VALUE: fftXYZ:xout <- %R9
	movq	%r9, 208(%rsp)          # 8-byte Spill
.Ltmp201:
	#DEBUG_VALUE: fftXYZ:xout <- [%RSP+208]
	movq	%r8, 104(%rsp)          # 8-byte Spill
.Ltmp202:
	#DEBUG_VALUE: fftXYZ:x <- [%RSP+104]
	movl	%ecx, %r14d
.Ltmp203:
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	movl	%edx, %ebp
.Ltmp204:
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	%esi, %r13d
.Ltmp205:
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%edi, %r12d
.Ltmp206:
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	movq	320(%rsp), %rax
	#DEBUG_VALUE: fftXYZ:exp3 <- [%RSP+144]
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	312(%rsp), %rbx
	#DEBUG_VALUE: fftXYZ:exp2 <- %RBX
	movq	304(%rsp), %rax
	#DEBUG_VALUE: fftXYZ:exp1 <- [%RSP+136]
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
.Ltmp207:
	.loc	3 141 34 prologue_end   # fft3d.c:141:34
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	1(%r13), %eax
.Ltmp208:
	.loc	3 149 7                 # fft3d.c:149:7
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_2
.Ltmp209:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: fftXYZ:exp1 <- [%RSP+136]
	#DEBUG_VALUE: fftXYZ:exp2 <- %RBX
	#DEBUG_VALUE: fftXYZ:exp3 <- [%RSP+144]
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	#DEBUG_VALUE: fftXYZ:x <- [%RSP+104]
	#DEBUG_VALUE: fftXYZ:xout <- [%RSP+208]
	.loc	3 149 23 is_stmt 0 discriminator 1 # fft3d.c:149:23
	movl	$3, %edi
	callq	timer_start
.Ltmp210:
.LBB3_2:                                # %if.end
	#DEBUG_VALUE: fftXYZ:exp2 <- %RBX
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	movl	%r12d, 16(%rsp)         # 4-byte Spill
	.loc	3 151 24 is_stmt 1      # fft3d.c:151:24
	movl	$8192, %eax             # imm = 0x2000
	xorl	%edx, %edx
	idivl	%r13d
.Ltmp211:
	.loc	3 152 16                # fft3d.c:152:16
	cmpl	$33, %eax
	movl	$32, %ebx
.Ltmp212:
	.loc	3 152 7 is_stmt 0       # fft3d.c:152:7
	cmovll	%eax, %ebx
.Ltmp213:
	.loc	3 152 38 discriminator 1 # fft3d.c:152:38
	movl	%ebx, fftblock(%rip)
.Ltmp214:
	.loc	3 154 9 is_stmt 1       # fft3d.c:154:9
	movl	%r13d, %edi
	callq	ilog2
	movl	%eax, 52(%rsp)          # 4-byte Spill
.Ltmp215:
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+52]
	.loc	3 155 7                 # fft3d.c:155:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_4
.Ltmp216:
# BB#3:                                 # %if.then7
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+52]
	.loc	3 155 23 is_stmt 0 discriminator 1 # fft3d.c:155:23
	movl	$7, %edi
	callq	timer_start
.Ltmp217:
.LBB3_4:                                # %for.cond.preheader
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	.loc	3 156 3 is_stmt 1 discriminator 1 # fft3d.c:156:3
	movl	%r14d, 72(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB3_32
.Ltmp218:
# BB#5:                                 # %for.cond10.preheader.lr.ph
	#DEBUG_VALUE: fftXYZ:sign <- %R12D
	#DEBUG_VALUE: fftXYZ:n1 <- %R13D
	#DEBUG_VALUE: fftXYZ:n2 <- %EBP
	#DEBUG_VALUE: fftXYZ:n3 <- %R14D
	.loc	3 153 19                # fft3d.c:153:19
	incl	%ebx
.Ltmp219:
	.loc	3 159 30 discriminator 1 # fft3d.c:159:30
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	leal	-1(%rbp), %eax
.Ltmp220:
	#DEBUG_VALUE: fftXYZ:ble <- [%RSP+132]
	.loc	3 156 3 discriminator 1 # fft3d.c:156:3
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movslq	%ebx, %r15
	movq	%r15, 184(%rsp)         # 8-byte Spill
	leal	-1(%r13), %eax
.Ltmp221:
	.loc	3 162 9 discriminator 1 # fft3d.c:162:9
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%r13d, %r14d
.Ltmp222:
	andl	$3, %r14d
.Ltmp223:
	.loc	3 167 7 discriminator 1 # fft3d.c:167:7
	testl	%r13d, %r13d
	setle	23(%rsp)                # 1-byte Folded Spill
.Ltmp224:
	.loc	3 156 3 discriminator 1 # fft3d.c:156:3
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdx
	movq	56(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	shlq	$4, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r15, %r12
.Ltmp225:
	shlq	$4, %r12
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	48(%rax), %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	shlq	$6, %r15
	xorl	%ecx, %ecx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 160(%rsp)         # 8-byte Spill
.Ltmp226:
	.p2align	4, 0x90
.LBB3_6:                                # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #         Child Loop BB3_18 Depth 4
                                        #       Child Loop BB3_22 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_28 Depth 4
	.loc	3 157 5 discriminator 1 # fft3d.c:157:5
	testl	%ebp, %ebp
	jle	.LBB3_31
# BB#7:                                 # %for.body12.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%edi, %edi
.Ltmp227:
	.loc	3 158 19                # fft3d.c:158:19
	movl	fftblock(%rip), %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_8:                                # %for.body12
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #         Child Loop BB3_18 Depth 4
                                        #       Child Loop BB3_22 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_28 Depth 4
	.loc	3 158 28 is_stmt 0      # fft3d.c:158:28
	leal	-1(%rcx,%rax), %eax
.Ltmp228:
	#DEBUG_VALUE: fftXYZ:ble <- %EAX
	.loc	3 159 15 is_stmt 1      # fft3d.c:159:15
	cmpl	%ebp, %eax
.Ltmp229:
	.loc	3 159 11 is_stmt 0      # fft3d.c:159:11
	cmovgl	132(%rsp), %eax         # 4-byte Folded Reload
.Ltmp230:
	.loc	3 160 23 is_stmt 1      # fft3d.c:160:23
	leal	1(%rdi,%rax), %edx
.Ltmp231:
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 161 7 discriminator 1 # fft3d.c:161:7
	cmpl	%eax, %ecx
	jg	.LBB3_9
.Ltmp232:
# BB#10:                                # %for.cond23.preheader.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	testl	%r13d, %r13d
	jle	.LBB3_9
.Ltmp233:
# BB#11:                                # %for.body25.lr.ph.us.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	movl	%edx, 196(%rsp)         # 4-byte Spill
.Ltmp234:
	.loc	3 163 18                # fft3d.c:163:18
	movslq	%ecx, %rbp
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	movq	%rax, 232(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rsi          # 8-byte Reload
	imulq	%rbp, %rsi
	shlq	$4, %rsi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %rdx
.Ltmp235:
	addl	%ecx, %edi
	movq	%rdi, 240(%rsp)         # 8-byte Spill
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	40(%rsp), %r13          # 8-byte Reload
	imulq	%rbp, %r13
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%edi, %r9d
	.p2align	4, 0x90
.LBB3_12:                               # %for.body25.lr.ph.us
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_15 Depth 4
                                        #         Child Loop BB3_18 Depth 4
	movslq	%r9d, %r10
	testl	%r14d, %r14d
	je	.LBB3_13
# BB#14:                                #   in Loop: Header=BB3_12 Depth=3
	movq	%r10, %rax
	shlq	$4, %rax
	leaq	plane(%rax), %rcx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_15:                               # %for.body25.us.prol
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	3 163 33 is_stmt 0      # fft3d.c:163:33
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rcx)
.Ltmp236:
	.loc	3 162 9 is_stmt 1 discriminator 1 # fft3d.c:162:9
	incq	%rax
	addq	$16, %rdx
	addq	%r12, %rcx
	cmpl	%eax, %r14d
	jne	.LBB3_15
	jmp	.LBB3_16
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_12 Depth=3
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.LBB3_16:                               # %for.body25.lr.ph.us.split
                                        #   in Loop: Header=BB3_12 Depth=3
	cmpl	$3, 96(%rsp)            # 4-byte Folded Reload
	movq	%r15, %r11
	jb	.LBB3_19
# BB#17:                                # %for.body25.lr.ph.us.split.split
                                        #   in Loop: Header=BB3_12 Depth=3
	movq	32(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	movq	%rax, %rsi
	shlq	$4, %rsi
	leaq	3(%rax), %rdx
	movq	184(%rsp), %rdi         # 8-byte Reload
	imulq	%rdi, %rdx
	addq	%r10, %rdx
	shlq	$4, %rdx
	leaq	plane(%rdx), %r8
	leaq	2(%rax), %rdx
	imulq	%rdi, %rdx
	addq	%r10, %rdx
	shlq	$4, %rdx
	leaq	plane(%rdx), %rdx
	movq	%rdi, %rbx
	imulq	%rax, %rbx
	addq	%r10, %rbx
	shlq	$4, %rbx
	leaq	plane(%rbx), %r15
	incq	%rax
	imulq	%rdi, %rax
	addq	%r10, %rax
	shlq	$4, %rax
	leaq	plane(%rax), %rax
	xorl	%ebx, %ebx
	movq	120(%rsp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_18:                               # %for.body25.us
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp237:
	.loc	3 163 33                # fft3d.c:163:33
	leaq	(%rdi,%r13), %r10
	movups	-48(%rsi,%r10), %xmm0
	movups	%xmm0, (%r15,%rbx)
	movups	-32(%rsi,%r10), %xmm0
	movups	%xmm0, (%rax,%rbx)
	movups	-16(%rsi,%r10), %xmm0
	movups	%xmm0, (%rdx,%rbx)
	movups	(%rsi,%r10), %xmm0
	movups	%xmm0, (%r8,%rbx)
.Ltmp238:
	.loc	3 162 9 discriminator 1 # fft3d.c:162:9
	addq	$64, %rdi
	addq	%r11, %rbx
	addl	$-4, %ecx
	jne	.LBB3_18
.Ltmp239:
.LBB3_19:                               # %for.cond23.for.inc35_crit_edge.us
                                        #   in Loop: Header=BB3_12 Depth=3
	movq	%r11, %r15
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	.loc	3 161 7 discriminator 1 # fft3d.c:161:7
	addq	%rax, %rdx
	incl	%r9d
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
	.loc	3 161 23 is_stmt 0 discriminator 1 # fft3d.c:161:23
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	.loc	3 161 7 discriminator 1 # fft3d.c:161:7
	leaq	1(%rbp), %rbp
	jl	.LBB3_12
.Ltmp240:
# BB#20:                                # %for.end37
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	setg	%bl
	.loc	3 166 7 is_stmt 1       # fft3d.c:166:7
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$plane, %r9d
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	196(%rsp), %edx         # 4-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	callq	Swarztrauber
.Ltmp241:
	.loc	3 167 7 discriminator 1 # fft3d.c:167:7
	orb	23(%rsp), %bl           # 1-byte Folded Reload
	movq	240(%rsp), %r11         # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	jne	.LBB3_30
# BB#21:                                # %for.body43.lr.ph.us.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
.Ltmp242:
	.loc	3 169 11                # fft3d.c:169:11
	addq	160(%rsp), %rdx         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB3_22:                               # %for.body43.lr.ph.us
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_28 Depth 4
	movslq	%r11d, %r8
	shlq	$4, %r8
	testl	%r14d, %r14d
	je	.LBB3_23
# BB#24:                                #   in Loop: Header=BB3_22 Depth=3
	leaq	plane(%r8), %rcx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_25:                               # %for.body43.us.prol
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	3 169 24 is_stmt 0      # fft3d.c:169:24
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
.Ltmp243:
	.loc	3 168 9 is_stmt 1 discriminator 1 # fft3d.c:168:9
	incq	%rax
	addq	%r12, %rcx
	addq	$16, %rdx
	cmpl	%eax, %r14d
	jne	.LBB3_25
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_23:                               #   in Loop: Header=BB3_22 Depth=3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.LBB3_26:                               # %for.body43.lr.ph.us.split
                                        #   in Loop: Header=BB3_22 Depth=3
	cmpl	$3, 96(%rsp)            # 4-byte Folded Reload
	jb	.LBB3_29
# BB#27:                                # %for.body43.lr.ph.us.split.split
                                        #   in Loop: Header=BB3_22 Depth=3
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	leaq	3(%rax), %r10
	imulq	%r12, %r10
	addq	%r8, %r10
	movq	%rax, %rdi
	shlq	$4, %rdi
	movq	176(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdi), %r9
	leaq	2(%rax), %rcx
	imulq	%r12, %rcx
	addq	%r8, %rcx
	addq	160(%rsp), %rdi         # 8-byte Folded Reload
	movq	%r12, %rbx
	imulq	%rax, %rbx
	addq	%r8, %rbx
	incq	%rax
	imulq	%r12, %rax
	addq	%r8, %rax
	movq	%r13, %rbp
	movl	$plane, %esi
	.p2align	4, 0x90
.LBB3_28:                               # %for.body43.us
                                        #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp244:
	.loc	3 169 24                # fft3d.c:169:24
	movups	(%rsi,%rbx), %xmm0
	movups	%xmm0, (%rdi,%rbp)
	movups	(%rsi,%rax), %xmm0
	movups	%xmm0, 16(%rdi,%rbp)
	movups	(%rsi,%rcx), %xmm0
	movups	%xmm0, 32(%rdi,%rbp)
	movups	(%rsi,%r10), %xmm0
	movups	%xmm0, (%r9,%rbp)
.Ltmp245:
	.loc	3 168 9 discriminator 1 # fft3d.c:168:9
	addq	%r15, %rsi
	addq	$64, %rbp
	addl	$-4, %edx
	jne	.LBB3_28
.Ltmp246:
.LBB3_29:                               # %for.cond41.for.inc58_crit_edge.us
                                        #   in Loop: Header=BB3_22 Depth=3
	.loc	3 167 7 discriminator 1 # fft3d.c:167:7
	incl	%r11d
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	addq	%rax, %r13
	movq	168(%rsp), %rax         # 8-byte Reload
	.loc	3 167 23 is_stmt 0 discriminator 1 # fft3d.c:167:23
	cmpq	64(%rsp), %rax          # 8-byte Folded Reload
	.loc	3 167 7 discriminator 1 # fft3d.c:167:7
	leaq	1(%rax), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	jl	.LBB3_22
	jmp	.LBB3_30
.Ltmp247:
	.p2align	4, 0x90
.LBB3_9:                                # %for.end37.thread
                                        #   in Loop: Header=BB3_8 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	.loc	3 166 7 is_stmt 1       # fft3d.c:166:7
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$plane, %r9d
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%r13d, %ecx
	movl	76(%rsp), %r8d          # 4-byte Reload
	callq	Swarztrauber
.Ltmp248:
.LBB3_30:                               # %for.inc61
                                        #   in Loop: Header=BB3_8 Depth=2
	.loc	3 157 36 discriminator 2 # fft3d.c:157:36
	movl	fftblock(%rip), %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	.loc	3 157 33 is_stmt 0 discriminator 2 # fft3d.c:157:33
	addl	%eax, %ecx
.Ltmp249:
	#DEBUG_VALUE: fftXYZ:bls <- %ECX
	#DEBUG_VALUE: fftXYZ:j <- %ECX
	movl	%ecx, %edi
	negl	%edi
	movq	80(%rsp), %rbp          # 8-byte Reload
	.loc	3 157 23 discriminator 1 # fft3d.c:157:23
	cmpl	%ebp, %ecx
	movq	32(%rsp), %r13          # 8-byte Reload
	jl	.LBB3_8
.Ltmp250:
.LBB3_31:                               # %for.inc64
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	200(%rsp), %rcx         # 8-byte Reload
	.loc	3 156 3 is_stmt 1 discriminator 1 # fft3d.c:156:3
	incq	%rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	addq	%rax, 160(%rsp)         # 8-byte Folded Spill
	addq	%rax, 176(%rsp)         # 8-byte Folded Spill
	cmpl	72(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB3_6
.Ltmp251:
.LBB3_32:                               # %for.end66
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	72(%rsp), %ebx          # 4-byte Reload
.Ltmp252:
	.loc	3 174 7                 # fft3d.c:174:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_34
# BB#33:                                # %if.then68
	.loc	3 174 23 is_stmt 0 discriminator 1 # fft3d.c:174:23
	movl	$7, %edi
	callq	timer_stop
.Ltmp253:
.LBB3_34:                               # %if.end69
	.loc	3 176 24 is_stmt 1      # fft3d.c:176:24
	movl	$8192, %eax             # imm = 0x2000
	xorl	%edx, %edx
	idivl	%ebp
.Ltmp254:
	.loc	3 177 16                # fft3d.c:177:16
	cmpl	$33, %eax
	movl	$32, %ecx
.Ltmp255:
	.loc	3 177 7 is_stmt 0       # fft3d.c:177:7
	cmovll	%eax, %ecx
.Ltmp256:
	.loc	3 177 38 discriminator 1 # fft3d.c:177:38
	movl	%ecx, fftblock(%rip)
.Ltmp257:
	.loc	3 179 9 is_stmt 1       # fft3d.c:179:9
	movl	%ebp, %edi
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	callq	ilog2
	movl	%eax, 24(%rsp)          # 4-byte Spill
.Ltmp258:
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+24]
	.loc	3 180 7                 # fft3d.c:180:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_36
.Ltmp259:
# BB#35:                                # %if.then77
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+24]
	.loc	3 180 23 is_stmt 0 discriminator 1 # fft3d.c:180:23
	movl	$8, %edi
	callq	timer_start
.Ltmp260:
.LBB3_36:                               # %for.cond79.preheader
	movl	%ebx, %ecx
.Ltmp261:
	.loc	3 181 3 is_stmt 1 discriminator 1 # fft3d.c:181:3
	testl	%ecx, %ecx
	jle	.LBB3_42
# BB#37:                                # %for.cond82.preheader.lr.ph
.Ltmp262:
	.loc	3 182 5 discriminator 1 # fft3d.c:182:5
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB3_42
# BB#38:                                # %for.body84.lr.ph.us.preheader
.Ltmp263:
	.loc	3 184 30 discriminator 1 # fft3d.c:184:30
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %r14d
.Ltmp264:
	#DEBUG_VALUE: fftXYZ:ble <- %R14D
	.loc	3 186 47                # fft3d.c:186:47
	movq	112(%rsp), %rax         # 8-byte Reload
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	.loc	3 183 19                # fft3d.c:183:19
	movl	fftblock(%rip), %eax
	xorl	%esi, %esi
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	216(%rsp), %r15         # 8-byte Reload
.Ltmp265:
	.p2align	4, 0x90
.LBB3_39:                               # %for.body84.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
	.loc	3 186 47                # fft3d.c:186:47
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rbp          # 8-byte Reload
	imulq	%rsi, %rbp
	shlq	$4, %rbp
	addq	104(%rsp), %rbp         # 8-byte Folded Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_40:                               # %for.body84.us
                                        #   Parent Loop BB3_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	3 183 28                # fft3d.c:183:28
	leal	-1(%rbx,%rax), %eax
.Ltmp266:
	#DEBUG_VALUE: fftXYZ:ble <- %EAX
	.loc	3 184 15                # fft3d.c:184:15
	cmpl	%r12d, %eax
.Ltmp267:
	.loc	3 184 11 is_stmt 0      # fft3d.c:184:11
	cmovgl	%r14d, %eax
.Ltmp268:
	.loc	3 185 17 is_stmt 1      # fft3d.c:185:17
	movl	$1, %edx
	subl	%ebx, %edx
	.loc	3 185 23 is_stmt 0      # fft3d.c:185:23
	addl	%eax, %edx
.Ltmp269:
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 186 47 is_stmt 1      # fft3d.c:186:47
	movslq	%ebx, %rbx
	movq	%rbx, %r9
	shlq	$4, %r9
	addq	%rbp, %r9
	.loc	3 186 7 is_stmt 0       # fft3d.c:186:7
	movq	%r15, (%rsp)
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	24(%rsp), %esi          # 4-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r8d
	callq	Swarztrauber
.Ltmp270:
	.loc	3 182 36 is_stmt 1 discriminator 2 # fft3d.c:182:36
	movl	fftblock(%rip), %eax
	.loc	3 182 33 is_stmt 0 discriminator 2 # fft3d.c:182:33
	addl	%eax, %ebx
.Ltmp271:
	#DEBUG_VALUE: fftXYZ:bls <- %EBX
	.loc	3 182 23 discriminator 1 # fft3d.c:182:23
	cmpl	%r12d, %ebx
	.loc	3 182 5 discriminator 1 # fft3d.c:182:5
	jl	.LBB3_40
.Ltmp272:
# BB#41:                                # %for.cond82.for.inc102_crit_edge.us
                                        #   in Loop: Header=BB3_39 Depth=1
	#DEBUG_VALUE: fftXYZ:bls <- %EBX
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	.loc	3 181 3 is_stmt 1 discriminator 1 # fft3d.c:181:3
	incq	%rsi
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB3_39
.Ltmp273:
.LBB3_42:                               # %for.end104
	.loc	3 189 7                 # fft3d.c:189:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_44
# BB#43:                                # %if.then106
	.loc	3 189 23 is_stmt 0 discriminator 1 # fft3d.c:189:23
	movl	$8, %edi
	movl	%ecx, %ebx
	callq	timer_stop
	movl	%ebx, %ecx
.Ltmp274:
.LBB3_44:                               # %if.end107
	.loc	3 191 24 is_stmt 1      # fft3d.c:191:24
	movl	$8192, %eax             # imm = 0x2000
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ebx
.Ltmp275:
	.loc	3 192 16                # fft3d.c:192:16
	cmpl	$33, %ebx
	movl	$32, %eax
.Ltmp276:
	.loc	3 192 7 is_stmt 0       # fft3d.c:192:7
	cmovll	%ebx, %eax
.Ltmp277:
	.loc	3 192 38 discriminator 1 # fft3d.c:192:38
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%eax, fftblock(%rip)
.Ltmp278:
	.loc	3 194 9 is_stmt 1       # fft3d.c:194:9
	movl	%ecx, %edi
	movl	%ecx, %r14d
	callq	ilog2
	movl	%eax, 40(%rsp)          # 4-byte Spill
.Ltmp279:
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+40]
	.loc	3 195 7                 # fft3d.c:195:7
	cmpl	$0, timers_enabled(%rip)
.Ltmp280:
	.loc	3 195 7 is_stmt 0       # fft3d.c:195:7
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	je	.LBB3_46
.Ltmp281:
# BB#45:                                # %if.then115
	#DEBUG_VALUE: fftXYZ:log <- [%RSP+40]
	.loc	3 195 23 discriminator 1 # fft3d.c:195:23
	movl	$9, %edi
	callq	timer_start
.Ltmp282:
.LBB3_46:                               # %for.cond117.preheader
	.loc	3 196 3 is_stmt 1 discriminator 1 # fft3d.c:196:3
	testl	%ebp, %ebp
	movl	%r14d, %ecx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	jle	.LBB3_65
.Ltmp283:
# BB#47:                                # %for.cond120.preheader.lr.ph
	.loc	3 193 19                # fft3d.c:193:19
	incl	24(%rsp)                # 4-byte Folded Spill
.Ltmp284:
	#DEBUG_VALUE: fftXYZ:blkp <- [%RSP+24]
	.loc	3 199 30 discriminator 1 # fft3d.c:199:30
	leal	-1(%rdx), %eax
.Ltmp285:
	#DEBUG_VALUE: fftXYZ:ble <- [%RSP+64]
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
.Ltmp286:
	.loc	3 203 33                # fft3d.c:203:33
	imulq	%rsi, %rax
.Ltmp287:
	.loc	3 196 3 discriminator 1 # fft3d.c:196:3
	movslq	%ebp, %rdi
	movslq	%esi, %rbp
.Ltmp288:
	.loc	3 207 7 discriminator 1 # fft3d.c:207:7
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	setle	88(%rsp)                # 1-byte Folded Spill
.Ltmp289:
	.loc	3 196 3 discriminator 1 # fft3d.c:196:3
	shlq	$4, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	shlq	$4, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	notl	%ebx
	cmpl	$-34, %ebx
	movl	$-33, %r12d
	cmovgl	%ebx, %r12d
	imulq	%rbp, %rdi
	shlq	$4, %rdi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
.Ltmp290:
	.p2align	4, 0x90
.LBB3_48:                               # %for.cond120.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_50 Depth 2
                                        #       Child Loop BB3_55 Depth 3
                                        #         Child Loop BB3_56 Depth 4
                                        #       Child Loop BB3_60 Depth 3
                                        #         Child Loop BB3_61 Depth 4
	movq	%rsi, 168(%rsp)         # 8-byte Spill
.Ltmp291:
	.loc	3 197 5 discriminator 1 # fft3d.c:197:5
	testl	%edx, %edx
	jle	.LBB3_64
# BB#49:                                # %for.body122.lr.ph
                                        #   in Loop: Header=BB3_48 Depth=1
	xorl	%r14d, %r14d
.Ltmp292:
	.loc	3 198 19                # fft3d.c:198:19
	movl	fftblock(%rip), %eax
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_50:                               # %for.body122
                                        #   Parent Loop BB3_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_55 Depth 3
                                        #         Child Loop BB3_56 Depth 4
                                        #       Child Loop BB3_60 Depth 3
                                        #         Child Loop BB3_61 Depth 4
	.loc	3 198 28 is_stmt 0      # fft3d.c:198:28
	leal	-1(%r13,%rax), %r15d
.Ltmp293:
	#DEBUG_VALUE: fftXYZ:ble <- %R15D
	.loc	3 199 15 is_stmt 1      # fft3d.c:199:15
	cmpl	%edx, %r15d
.Ltmp294:
	.loc	3 199 11 is_stmt 0      # fft3d.c:199:11
	cmovgl	64(%rsp), %r15d         # 4-byte Folded Reload
.Ltmp295:
	testl	%ecx, %ecx
	.loc	3 200 23 is_stmt 1      # fft3d.c:200:23
	leal	1(%r14,%r15), %edx
.Ltmp296:
	#DEBUG_VALUE: fftXYZ:i <- 0
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	jle	.LBB3_51
.Ltmp297:
# BB#52:                                # %for.cond134.preheader.lr.ph
                                        #   in Loop: Header=BB3_50 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 202 9 discriminator 1 # fft3d.c:202:9
	cmpl	%r15d, %r13d
	jle	.LBB3_54
.Ltmp298:
# BB#53:                                # %for.end153.thread
                                        #   in Loop: Header=BB3_50 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 206 7                 # fft3d.c:206:7
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$plane, %r9d
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	24(%rsp), %r8d          # 4-byte Reload
	movl	%ecx, %ebx
	callq	Swarztrauber
	#DEBUG_VALUE: fftXYZ:i <- 0
	movl	%ebx, %ecx
.Ltmp299:
	.loc	3 208 25 discriminator 1 # fft3d.c:208:25
	cmpl	%r15d, %r13d
	movq	120(%rsp), %r10         # 8-byte Reload
	jle	.LBB3_59
	jmp	.LBB3_63
.Ltmp300:
	.p2align	4, 0x90
.LBB3_51:                               # %for.end153.thread403
                                        #   in Loop: Header=BB3_50 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 206 7                 # fft3d.c:206:7
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$plane, %r9d
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	24(%rsp), %r8d          # 4-byte Reload
	movl	%ecx, %ebx
	callq	Swarztrauber
	movl	%ebx, %ecx
	#DEBUG_VALUE: fftXYZ:i <- 0
	jmp	.LBB3_63
.Ltmp301:
	.p2align	4, 0x90
.LBB3_54:                               # %for.body136.lr.ph.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
	#DEBUG_VALUE: fftXYZ:len <- %EDX
	.loc	3 203 27                # fft3d.c:203:27
	movslq	%r13d, %r9
	movslq	%r15d, %rbx
	leaq	-1(%r9), %r8
	shlq	$4, %r9
	addq	104(%rsp), %r9          # 8-byte Folded Reload
	leal	(%r14,%r13), %r10d
	xorl	%r11d, %r11d
.Ltmp302:
	.p2align	4, 0x90
.LBB3_55:                               # %for.body136.lr.ph
                                        #   Parent Loop BB3_48 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_56 Depth 4
	movl	%r10d, %ebp
	movq	%r9, %rax
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB3_56:                               # %for.body136
                                        #   Parent Loop BB3_48 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        #       Parent Loop BB3_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	3 203 11 is_stmt 0      # fft3d.c:203:11
	movslq	%ebp, %rbp
	movq	%rbp, %rdi
	shlq	$4, %rdi
	.loc	3 203 33                # fft3d.c:203:33
	movups	(%rax), %xmm0
	movups	%xmm0, plane(%rdi)
.Ltmp303:
	.loc	3 202 25 is_stmt 1 discriminator 1 # fft3d.c:202:25
	incq	%rsi
	addq	$16, %rax
	incl	%ebp
	cmpq	%rbx, %rsi
	.loc	3 202 9 is_stmt 0 discriminator 1 # fft3d.c:202:9
	jl	.LBB3_56
.Ltmp304:
# BB#57:                                # %for.inc151
                                        #   in Loop: Header=BB3_55 Depth=3
	.loc	3 201 7 is_stmt 1 discriminator 1 # fft3d.c:201:7
	incq	%r11
	addq	112(%rsp), %r9          # 8-byte Folded Reload
	subl	%r12d, %r10d
	cmpl	%ecx, %r11d
	jne	.LBB3_55
.Ltmp305:
# BB#58:                                # %for.end153
                                        #   in Loop: Header=BB3_50 Depth=2
	.loc	3 206 7                 # fft3d.c:206:7
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$plane, %r9d
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	24(%rsp), %r8d          # 4-byte Reload
	movl	%ecx, %ebx
	callq	Swarztrauber
	#DEBUG_VALUE: fftXYZ:i <- 0
	movl	%ebx, %ecx
.Ltmp306:
	.loc	3 208 25 discriminator 1 # fft3d.c:208:25
	cmpl	%r15d, %r13d
	setg	%al
.Ltmp307:
	.loc	3 207 7 discriminator 1 # fft3d.c:207:7
	orb	88(%rsp), %al           # 1-byte Folded Reload
	movq	120(%rsp), %r10         # 8-byte Reload
	jne	.LBB3_63
.LBB3_59:                               # %for.body160.lr.ph.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
.Ltmp308:
	.loc	3 209 30                # fft3d.c:209:30
	movslq	%r13d, %r8
	movslq	%r15d, %rbp
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r9
	decq	%r8
	shlq	$4, %r9
	addq	208(%rsp), %r9          # 8-byte Folded Reload
	addl	%r13d, %r14d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_60:                               # %for.body160.lr.ph
                                        #   Parent Loop BB3_48 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_61 Depth 4
	movl	%r14d, %ebx
	movq	%r9, %rdx
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB3_61:                               # %for.body160
                                        #   Parent Loop BB3_48 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        #       Parent Loop BB3_60 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	3 209 37 is_stmt 0      # fft3d.c:209:37
	movslq	%ebx, %rbx
	movq	%rbx, %rdi
	shlq	$4, %rdi
	movups	plane(%rdi), %xmm0
	movups	%xmm0, (%rdx)
.Ltmp309:
	.loc	3 208 25 is_stmt 1 discriminator 1 # fft3d.c:208:25
	incq	%rax
	addq	$16, %rdx
	incl	%ebx
	cmpq	%rbp, %rax
	.loc	3 208 9 is_stmt 0 discriminator 1 # fft3d.c:208:9
	jl	.LBB3_61
.Ltmp310:
# BB#62:                                # %for.inc176
                                        #   in Loop: Header=BB3_60 Depth=3
	.loc	3 207 7 is_stmt 1 discriminator 1 # fft3d.c:207:7
	incq	%rsi
	addq	%r10, %r9
	subl	%r12d, %r14d
	cmpl	%ecx, %esi
	jne	.LBB3_60
.Ltmp311:
.LBB3_63:                               # %for.inc179
                                        #   in Loop: Header=BB3_50 Depth=2
	.loc	3 197 36 discriminator 2 # fft3d.c:197:36
	movl	fftblock(%rip), %eax
	.loc	3 197 33 is_stmt 0 discriminator 2 # fft3d.c:197:33
	addl	%eax, %r13d
.Ltmp312:
	#DEBUG_VALUE: fftXYZ:bls <- %R13D
	movl	%r13d, %r14d
	negl	%r14d
	movq	32(%rsp), %rdx          # 8-byte Reload
	.loc	3 197 23 discriminator 1 # fft3d.c:197:23
	cmpl	%edx, %r13d
	jl	.LBB3_50
.Ltmp313:
.LBB3_64:                               # %for.inc182
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	168(%rsp), %rsi         # 8-byte Reload
	.loc	3 196 3 is_stmt 1 discriminator 1 # fft3d.c:196:3
	incq	%rsi
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	%rax, 104(%rsp)         # 8-byte Folded Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	184(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %esi
	jne	.LBB3_48
.Ltmp314:
.LBB3_65:                               # %for.end184
	.loc	3 214 7                 # fft3d.c:214:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_67
# BB#66:                                # %if.end187
	.loc	3 214 23 is_stmt 0 discriminator 1 # fft3d.c:214:23
	movl	$9, %edi
	callq	timer_stop
.Ltmp315:
	.loc	3 215 7 is_stmt 1       # fft3d.c:215:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB3_67
# BB#68:                                # %if.then189
	.loc	3 215 23 is_stmt 0 discriminator 1 # fft3d.c:215:23
	movl	$3, %edi
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	timer_stop              # TAILCALL
.Ltmp316:
.LBB3_67:                               # %if.end190
	.loc	3 216 1 is_stmt 1       # fft3d.c:216:1
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp317:
.Lfunc_end3:
	.size	fftXYZ, .Lfunc_end3-fftXYZ
	.cfi_endproc

	.globl	ilog2
	.p2align	4, 0x90
	.type	ilog2,@function
ilog2:                                  # @ilog2
.Lfunc_begin4:
	.loc	8 68 0                  # auxfnct.c:68:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: ilog2:n <- %EDI
	xorl	%eax, %eax
.Ltmp318:
	.loc	8 70 9 prologue_end     # auxfnct.c:70:9
	cmpl	$1, %edi
	je	.LBB4_4
.Ltmp319:
# BB#1:                                 # %while.cond.preheader
	#DEBUG_VALUE: ilog2:n <- %EDI
	movl	$1, %eax
	.loc	8 74 3 discriminator 1  # auxfnct.c:74:3
	cmpl	$3, %edi
	jl	.LBB4_4
# BB#2:
	#DEBUG_VALUE: ilog2:n <- %EDI
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp320:
	.loc	8 75 13                 # auxfnct.c:75:13
	addl	%ecx, %ecx
.Ltmp321:
	#DEBUG_VALUE: ilog2:nn <- %ECX
	.loc	8 76 13                 # auxfnct.c:76:13
	incl	%eax
.Ltmp322:
	#DEBUG_VALUE: ilog2:lg <- %EAX
	.loc	8 74 13 discriminator 1 # auxfnct.c:74:13
	cmpl	%edi, %ecx
	.loc	8 74 3 is_stmt 0 discriminator 1 # auxfnct.c:74:3
	jl	.LBB4_3
.Ltmp323:
.LBB4_4:                                # %cleanup
	.loc	8 79 1 is_stmt 1        # auxfnct.c:79:1
	retq
.Ltmp324:
.Lfunc_end4:
	.size	ilog2, .Lfunc_end4-ilog2
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI5_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.p2align	4, 0x90
	.type	Swarztrauber,@function
Swarztrauber:                           # @Swarztrauber
.Lfunc_begin5:
	.loc	3 61 0                  # fft3d.c:61:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp326:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp327:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp328:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp329:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp330:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp331:
	.cfi_def_cfa_offset 192
.Ltmp332:
	.cfi_offset %rbx, -56
.Ltmp333:
	.cfi_offset %r12, -48
.Ltmp334:
	.cfi_offset %r13, -40
.Ltmp335:
	.cfi_offset %r14, -32
.Ltmp336:
	.cfi_offset %r15, -24
.Ltmp337:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: Swarztrauber:is <- %EDI
	#DEBUG_VALUE: Swarztrauber:m <- %ESI
	#DEBUG_VALUE: Swarztrauber:vlen <- %EDX
	#DEBUG_VALUE: Swarztrauber:n <- %ECX
	#DEBUG_VALUE: Swarztrauber:xd1 <- %R8D
	#DEBUG_VALUE: Swarztrauber:ox <- %R9
	movq	%r9, %r15
.Ltmp338:
	#DEBUG_VALUE: Swarztrauber:ox <- %R15
	movl	%ecx, %ebp
.Ltmp339:
	#DEBUG_VALUE: Swarztrauber:n <- %EBP
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	movl	%edx, %ebx
.Ltmp340:
	#DEBUG_VALUE: Swarztrauber:vlen <- %EBX
	movl	%esi, 16(%rsp)          # 4-byte Spill
.Ltmp341:
	#DEBUG_VALUE: Swarztrauber:m <- [%RSP+16]
	movl	%edi, 24(%rsp)          # 4-byte Spill
.Ltmp342:
	#DEBUG_VALUE: Swarztrauber:is <- [%RSP+24]
	movq	192(%rsp), %rax
	#DEBUG_VALUE: Swarztrauber:exponent <- [%RSP+72]
.Ltmp343:
	.loc	3 62 3 prologue_end     # fft3d.c:62:3
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%r8d, %r14d
.Ltmp344:
	.loc	3 68 7                  # fft3d.c:68:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB5_2
.Ltmp345:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: Swarztrauber:exponent <- [%RSP+72]
	#DEBUG_VALUE: Swarztrauber:is <- [%RSP+24]
	#DEBUG_VALUE: Swarztrauber:m <- [%RSP+16]
	#DEBUG_VALUE: Swarztrauber:vlen <- %EBX
	#DEBUG_VALUE: Swarztrauber:n <- %EBP
	#DEBUG_VALUE: Swarztrauber:ox <- %R15
	#DEBUG_VALUE: Swarztrauber:xd1 <- %R8D
	.loc	3 68 23 is_stmt 0 discriminator 1 # fft3d.c:68:23
	movl	$4, %edi
	callq	timer_start
.Ltmp346:
.LBB5_2:                                # %if.end
	#DEBUG_VALUE: Swarztrauber:vlen <- %EBX
	#DEBUG_VALUE: Swarztrauber:n <- %EBP
	#DEBUG_VALUE: Swarztrauber:ox <- %R15
	#DEBUG_VALUE: Swarztrauber:xd1 <- %R8D
	#DEBUG_VALUE: Swarztrauber:lj <- 1
	#DEBUG_VALUE: Swarztrauber:l <- 1
	.loc	3 75 17 is_stmt 1 discriminator 1 # fft3d.c:75:17
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_33
.Ltmp347:
# BB#3:                                 # %for.body.lr.ph
	#DEBUG_VALUE: Swarztrauber:xd1 <- %R8D
	#DEBUG_VALUE: Swarztrauber:ox <- %R15
	#DEBUG_VALUE: Swarztrauber:n <- %EBP
	#DEBUG_VALUE: Swarztrauber:vlen <- %EBX
	.loc	3 72 10                 # fft3d.c:72:10
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
.Ltmp348:
	#DEBUG_VALUE: Swarztrauber:n1 <- %EAX
	movl	$1, %r11d
	.loc	3 74 10                 # fft3d.c:74:10
	movl	$1, %edi
	movl	16(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edi
.Ltmp349:
	#DEBUG_VALUE: Swarztrauber:li <- %EDI
	.loc	3 75 3 discriminator 1  # fft3d.c:75:3
	movslq	%eax, %rcx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %eax
.Ltmp350:
	.loc	3 92 7 discriminator 1  # fft3d.c:92:7
	movl	%eax, 100(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	setle	%al
.Ltmp351:
	.loc	3 103 7 discriminator 1 # fft3d.c:103:7
	movb	%al, 7(%rsp)            # 1-byte Spill
	testl	%ebp, %ebp
	setle	%dl
	orb	%al, %dl
	movb	%dl, 15(%rsp)           # 1-byte Spill
.Ltmp352:
	.loc	3 104 9 discriminator 1 # fft3d.c:104:9
	movl	%ebx, %eax
	andl	$3, %eax
.Ltmp353:
	.loc	3 75 3 discriminator 1  # fft3d.c:75:3
	movq	%rax, 120(%rsp)         # 8-byte Spill
	imulq	$528, %rcx, %rax        # imm = 0x210
	imulq	%r14, %rcx
.Ltmp354:
	.loc	3 81 5 discriminator 1  # fft3d.c:81:5
	shlq	$4, %r14
.Ltmp355:
	.loc	3 75 3 discriminator 1  # fft3d.c:75:3
	shlq	$4, %rcx
	movq	%r15, %rbx
.Ltmp356:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	addq	%rbx, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	scr(%rax), %rsi
	leaq	8(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movapd	.LCPI5_0(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	movl	$1, %r9d
.Ltmp357:
	.p2align	4, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_10 Depth 4
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_27 Depth 3
                                        #         Child Loop BB5_28 Depth 4
                                        #     Child Loop BB5_16 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_20 Depth 3
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%r11d, 28(%rsp)         # 4-byte Spill
.Ltmp358:
	.loc	3 77 12                 # fft3d.c:77:12
	leal	(%r9,%r9), %eax
	.loc	3 78 13                 # fft3d.c:78:13
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
.Ltmp359:
	#DEBUG_VALUE: Swarztrauber:i <- 0
	#DEBUG_VALUE: Swarztrauber:ku <- %EAX
	#DEBUG_VALUE: Swarztrauber:li <- %EAX
	movl	%eax, 8(%rsp)           # 4-byte Spill
.Ltmp360:
	#DEBUG_VALUE: Swarztrauber:ku <- [%RSP+8]
	#DEBUG_VALUE: Swarztrauber:li <- [%RSP+8]
	.loc	3 81 5 discriminator 1  # fft3d.c:81:5
	cmpl	$2, %edi
	jl	.LBB5_13
.Ltmp361:
# BB#5:                                 # %for.body4.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	#DEBUG_VALUE: Swarztrauber:li <- [%RSP+8]
	#DEBUG_VALUE: Swarztrauber:ku <- [%RSP+8]
	movslq	8(%rsp), %rdx           # 4-byte Folded Reload
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movslq	%r9d, %rcx
.Ltmp362:
	.loc	3 92 7 discriminator 1  # fft3d.c:92:7
	testl	%r9d, %r9d
	setle	%bl
	orb	7(%rsp), %bl            # 1-byte Folded Reload
	movb	%bl, 56(%rsp)           # 1-byte Spill
.Ltmp363:
	.loc	3 81 5 discriminator 1  # fft3d.c:81:5
	movq	%r14, %rdi
	imulq	%rcx, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	imulq	$528, %rax, %rax        # imm = 0x210
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	$66, %rcx, %rbp
	xorl	%r15d, %r15d
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	xorl	%r13d, %r13d
.Ltmp364:
	.p2align	4, 0x90
.LBB5_6:                                # %for.body4
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_10 Depth 4
	.loc	3 88 25                 # fft3d.c:88:25
	leaq	(%r13,%rdx), %rax
	.loc	3 88 14 is_stmt 0       # fft3d.c:88:14
	shlq	$4, %rax
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx,%rax), %xmm1      # xmm1 = mem[0],zero
	movsd	8(%rcx,%rax), %xmm2     # xmm2 = mem[0],zero
	jg	.LBB5_8
.Ltmp365:
# BB#7:                                 # %for.body4
                                        #   in Loop: Header=BB5_6 Depth=2
	.loc	3 90 14 is_stmt 1       # fft3d.c:90:14
	xorpd	%xmm0, %xmm2
.Ltmp366:
	#DEBUG_VALUE: Swarztrauber:u1 [bit_piece offset=64 size=64] <- %XMM2
.LBB5_8:                                # %for.body4
                                        #   in Loop: Header=BB5_6 Depth=2
	#DEBUG_VALUE: Swarztrauber:k <- 0
	.loc	3 92 7 discriminator 1  # fft3d.c:92:7
	cmpb	$0, 56(%rsp)            # 1-byte Folded Reload
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%r10, %r11
	movq	%r8, %rbx
	movl	$0, %edx
	jne	.LBB5_12
	.p2align	4, 0x90
.LBB5_9:                                # %for.body27.lr.ph.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_10 Depth 4
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%r15, %rdi
	movq	%r11, %r12
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB5_10:                               # %for.body27.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp367:
	.loc	3 94 17                 # fft3d.c:94:17
	movupd	(%rcx), %xmm3
	.loc	3 95 17                 # fft3d.c:95:17
	movupd	(%r12), %xmm4
	.loc	3 96 27                 # fft3d.c:96:27
	movapd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movapd	%xmm5, scr(%rdi)
	.loc	3 97 27                 # fft3d.c:97:27
	movapd	%xmm3, %xmm5
	subsd	%xmm4, %xmm5
	movapd	%xmm1, %xmm6
	mulsd	%xmm5, %xmm6
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	subsd	%xmm4, %xmm3
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm6
	mulsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm5
	addsd	%xmm3, %xmm5
	movsd	%xmm6, scr(%rdi,%rbp,8)
	movsd	%xmm5, scr+8(%rdi,%rbp,8)
.Ltmp368:
	.loc	3 93 9 discriminator 1  # fft3d.c:93:9
	addq	$16, %rcx
	addq	$16, %r12
	addq	$16, %rdi
	decl	%eax
	jne	.LBB5_10
.Ltmp369:
# BB#11:                                # %for.cond25.for.inc110_crit_edge.us
                                        #   in Loop: Header=BB5_9 Depth=3
	.loc	3 92 7 discriminator 1  # fft3d.c:92:7
	incq	%rdx
	addq	%r14, %rbx
	addq	%r14, %r11
	addq	$528, %r15              # imm = 0x210
	cmpl	%r9d, %edx
	jne	.LBB5_9
.Ltmp370:
.LBB5_12:                               # %for.inc113
                                        #   in Loop: Header=BB5_6 Depth=2
	.loc	3 81 5 discriminator 1  # fft3d.c:81:5
	incq	%r13
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r8
	addq	%rax, %r10
	movq	80(%rsp), %r15          # 8-byte Reload
	addq	40(%rsp), %r15          # 8-byte Folded Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	.loc	3 81 19 is_stmt 0 discriminator 1 # fft3d.c:81:19
	cmpq	%rdx, %r13
	jl	.LBB5_6
.Ltmp371:
.LBB5_13:                               # %for.end115
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	28(%rsp), %r11d         # 4-byte Reload
	.loc	3 102 9 is_stmt 1       # fft3d.c:102:9
	cmpl	16(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB5_22
# BB#14:                                # %for.cond118.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
.Ltmp372:
	.loc	3 103 7 discriminator 1 # fft3d.c:103:7
	cmpb	$0, 15(%rsp)            # 1-byte Folded Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	movl	$scr, %r12d
	movl	$0, %r8d
	movl	104(%rsp), %r10d        # 4-byte Reload
	movl	100(%rsp), %r15d        # 4-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	jne	.LBB5_15
	.p2align	4, 0x90
.LBB5_16:                               # %for.body123.lr.ph.us
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_20 Depth 3
	testl	%edx, %edx
	movq	%r9, %rax
	movq	%r12, %rcx
	movl	$0, %edi
	je	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %for.body123.us.prol
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp373:
	.loc	3 105 21                # fft3d.c:105:21
	movupd	(%rcx), %xmm1
	movupd	%xmm1, (%rax)
.Ltmp374:
	.loc	3 104 9 discriminator 1 # fft3d.c:104:9
	incq	%rdi
	addq	$16, %rcx
	addq	$16, %rax
	cmpl	%edi, %edx
	jne	.LBB5_17
.LBB5_18:                               # %for.body123.lr.ph.us.split
                                        #   in Loop: Header=BB5_16 Depth=2
	cmpl	$3, %r15d
	jb	.LBB5_21
# BB#19:                                # %for.body123.lr.ph.us.split.split
                                        #   in Loop: Header=BB5_16 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	subl	%edi, %ebp
	shlq	$4, %rdi
	leaq	(%r12,%rdi), %rbx
	addq	%r9, %rdi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_20:                               # %for.body123.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp375:
	.loc	3 105 21                # fft3d.c:105:21
	movups	(%rbx,%rax), %xmm1
	movups	%xmm1, (%rdi,%rax)
	movups	16(%rbx,%rax), %xmm1
	movups	%xmm1, 16(%rdi,%rax)
	movups	32(%rbx,%rax), %xmm1
	movups	%xmm1, 32(%rdi,%rax)
	movupd	48(%rbx,%rax), %xmm1
	movupd	%xmm1, 48(%rdi,%rax)
.Ltmp376:
	.loc	3 104 9 discriminator 1 # fft3d.c:104:9
	addq	$64, %rax
	addl	$-4, %ebp
	jne	.LBB5_20
.Ltmp377:
.LBB5_21:                               # %for.cond121.for.inc135_crit_edge.us
                                        #   in Loop: Header=BB5_16 Depth=2
	.loc	3 103 7 discriminator 1 # fft3d.c:103:7
	incq	%r8
	addq	$528, %r12              # imm = 0x210
	addq	%r14, %r9
	cmpl	%r10d, %r8d
	jne	.LBB5_16
.Ltmp378:
.LBB5_15:                               #   in Loop: Header=BB5_4 Depth=1
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	8(%rsp), %ecx           # 4-byte Reload
	jmp	.LBB5_32
	.p2align	4, 0x90
.LBB5_22:                               # %if.else138
                                        #   in Loop: Header=BB5_4 Depth=1
.Ltmp379:
	.loc	3 110 14                # fft3d.c:110:14
	leal	(,%r9,4), %edx
.Ltmp380:
	#DEBUG_VALUE: Swarztrauber:lj <- %EDX
	movl	108(%rsp), %eax         # 4-byte Reload
	.loc	3 111 15                # fft3d.c:111:15
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	#DEBUG_VALUE: Swarztrauber:i <- 0
.Ltmp381:
	#DEBUG_VALUE: Swarztrauber:ku <- %ECX
	#DEBUG_VALUE: Swarztrauber:li <- %ECX
	.loc	3 114 7 discriminator 1 # fft3d.c:114:7
	cmpl	$4, %eax
	jl	.LBB5_32
.Ltmp382:
# BB#23:                                # %for.body144.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	#DEBUG_VALUE: Swarztrauber:li <- %ECX
	#DEBUG_VALUE: Swarztrauber:ku <- %ECX
	#DEBUG_VALUE: Swarztrauber:lj <- %EDX
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movslq	%ecx, %rdx
.Ltmp383:
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%ecx, 8(%rsp)           # 4-byte Spill
.Ltmp384:
	.loc	3 125 9 discriminator 1 # fft3d.c:125:9
	testl	%r9d, %r9d
	setle	%cl
.Ltmp385:
	orb	7(%rsp), %cl            # 1-byte Folded Reload
	movb	%cl, 64(%rsp)           # 1-byte Spill
.Ltmp386:
	.loc	3 114 7 discriminator 1 # fft3d.c:114:7
	imulq	$528, %rax, %rcx        # imm = 0x210
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	shll	$2, %r9d
	movslq	%r9d, %rcx
	imulq	%r14, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r14, %r11
	imulq	%rax, %r11
	addq	112(%rsp), %r11         # 8-byte Folded Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_24:                               # %for.body144
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_27 Depth 3
                                        #         Child Loop BB5_28 Depth 4
.Ltmp387:
	.loc	3 121 27                # fft3d.c:121:27
	leaq	(%rdi,%rdx), %rcx
	.loc	3 121 16 is_stmt 0      # fft3d.c:121:16
	shlq	$4, %rcx
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movsd	(%rdx,%rcx), %xmm1      # xmm1 = mem[0],zero
	movsd	8(%rdx,%rcx), %xmm2     # xmm2 = mem[0],zero
	jg	.LBB5_26
.Ltmp388:
# BB#25:                                # %for.body144
                                        #   in Loop: Header=BB5_24 Depth=2
	.loc	3 123 16 is_stmt 1      # fft3d.c:123:16
	xorpd	%xmm0, %xmm2
.Ltmp389:
	#DEBUG_VALUE: Swarztrauber:u1 [bit_piece offset=64 size=64] <- %XMM2
.LBB5_26:                               # %for.body144
                                        #   in Loop: Header=BB5_24 Depth=2
	#DEBUG_VALUE: Swarztrauber:k <- 0
	.loc	3 125 9 discriminator 1 # fft3d.c:125:9
	cmpb	$0, 64(%rsp)            # 1-byte Folded Reload
	movq	%r11, %rcx
	movq	%r13, %r9
	movq	%r15, %r8
	movl	$0, %r12d
	jne	.LBB5_30
	.p2align	4, 0x90
.LBB5_27:                               # %for.body174.lr.ph.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_28 Depth 4
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r10d
	movq	%rcx, %rbp
	movq	%r9, %rdx
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB5_28:                               # %for.body174.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        #       Parent Loop BB5_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp390:
	.loc	3 127 19                # fft3d.c:127:19
	movapd	scr(%rbx), %xmm3
	.loc	3 128 19                # fft3d.c:128:19
	movapd	(%rsi,%rbx), %xmm4
	.loc	3 129 27                # fft3d.c:129:27
	movapd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movupd	%xmm5, (%rdx)
	.loc	3 130 27                # fft3d.c:130:27
	movapd	%xmm3, %xmm5
	subsd	%xmm4, %xmm5
	movapd	%xmm1, %xmm6
	mulsd	%xmm5, %xmm6
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	subsd	%xmm4, %xmm3
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm6
	mulsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm5
	addsd	%xmm3, %xmm5
	movsd	%xmm6, -8(%rbp)
	movsd	%xmm5, (%rbp)
.Ltmp391:
	.loc	3 126 11 discriminator 1 # fft3d.c:126:11
	addq	$16, %rbx
	addq	$16, %rdx
	addq	$16, %rbp
	decl	%r10d
	jne	.LBB5_28
.Ltmp392:
# BB#29:                                # %for.cond172.for.inc260_crit_edge.us
                                        #   in Loop: Header=BB5_27 Depth=3
	.loc	3 125 9 discriminator 1 # fft3d.c:125:9
	incq	%r12
	addq	$528, %r8               # imm = 0x210
	addq	%r14, %r9
	addq	%r14, %rcx
	.loc	3 125 23 is_stmt 0 discriminator 1 # fft3d.c:125:23
	cmpq	%rax, %r12
	jl	.LBB5_27
.Ltmp393:
.LBB5_30:                               # %for.inc263
                                        #   in Loop: Header=BB5_24 Depth=2
	.loc	3 114 7 is_stmt 1 discriminator 1 # fft3d.c:114:7
	incq	%rdi
	addq	56(%rsp), %r15          # 8-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, %r13
	addq	%rcx, %r11
	movq	80(%rsp), %rdx          # 8-byte Reload
	.loc	3 114 21 is_stmt 0 discriminator 1 # fft3d.c:114:21
	cmpq	%rdx, %rdi
	jl	.LBB5_24
.Ltmp394:
# BB#31:                                #   in Loop: Header=BB5_4 Depth=1
	movl	28(%rsp), %r11d         # 4-byte Reload
	movl	8(%rsp), %ecx           # 4-byte Reload
	movl	40(%rsp), %edx          # 4-byte Reload
.LBB5_32:                               # %for.inc267
                                        #   in Loop: Header=BB5_4 Depth=1
	.loc	3 75 25 is_stmt 1 discriminator 2 # fft3d.c:75:25
	addl	$2, %r11d
.Ltmp395:
	#DEBUG_VALUE: Swarztrauber:l <- %R11D
	.loc	3 75 3 is_stmt 0 discriminator 1 # fft3d.c:75:3
	cmpl	16(%rsp), %r11d         # 4-byte Folded Reload
	movl	%ecx, %edi
	movl	%edx, %r9d
	jle	.LBB5_4
.Ltmp396:
.LBB5_33:                               # %for.end269
	.loc	3 136 7 is_stmt 1       # fft3d.c:136:7
	cmpl	$0, timers_enabled(%rip)
	je	.LBB5_34
# BB#35:                                # %if.then271
	.loc	3 136 23 is_stmt 0 discriminator 1 # fft3d.c:136:23
	movl	$4, %edi
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	timer_stop              # TAILCALL
.Ltmp397:
.LBB5_34:                               # %if.end272
	.loc	3 137 1 is_stmt 1       # fft3d.c:137:1
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp398:
.Lfunc_end5:
	.size	Swarztrauber, .Lfunc_end5-Swarztrauber
	.cfi_endproc

	.globl	evolve
	.p2align	4, 0x90
	.type	evolve,@function
evolve:                                 # @evolve
.Lfunc_begin6:
	.loc	8 178 0                 # auxfnct.c:178:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp400:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp401:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp402:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp403:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp404:
	.cfi_def_cfa_offset 56
.Ltmp405:
	.cfi_offset %rbx, -56
.Ltmp406:
	.cfi_offset %r12, -48
.Ltmp407:
	.cfi_offset %r13, -40
.Ltmp408:
	.cfi_offset %r14, -32
.Ltmp409:
	.cfi_offset %r15, -24
.Ltmp410:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: evolve:nx <- %EDI
	#DEBUG_VALUE: evolve:ny <- %ESI
	#DEBUG_VALUE: evolve:nz <- %EDX
	#DEBUG_VALUE: evolve:x <- %RCX
	#DEBUG_VALUE: evolve:y <- %R8
	#DEBUG_VALUE: evolve:twiddle <- %R9
	movq	%r9, -104(%rsp)         # 8-byte Spill
.Ltmp411:
	#DEBUG_VALUE: evolve:twiddle <- [%RSP+-104]
	movq	%r8, -72(%rsp)          # 8-byte Spill
.Ltmp412:
	#DEBUG_VALUE: evolve:y <- [%RSP+-72]
	movq	%rcx, -80(%rsp)         # 8-byte Spill
.Ltmp413:
	#DEBUG_VALUE: evolve:x <- [%RSP+-80]
	movl	%edx, -108(%rsp)        # 4-byte Spill
.Ltmp414:
	.loc	8 176 34 prologue_end   # auxfnct.c:176:34
	leal	1(%rdi), %eax
.Ltmp415:
	#DEBUG_VALUE: evolve:i <- 0
	.loc	8 180 3 discriminator 1 # auxfnct.c:180:3
	testl	%edx, %edx
.Ltmp416:
	#DEBUG_VALUE: evolve:nz <- [%RSP+-108]
	jle	.LBB6_12
# BB#1:                                 # %for.cond3.preheader.lr.ph
	#DEBUG_VALUE: evolve:nz <- [%RSP+-108]
	#DEBUG_VALUE: evolve:x <- [%RSP+-80]
	#DEBUG_VALUE: evolve:y <- [%RSP+-72]
	#DEBUG_VALUE: evolve:twiddle <- [%RSP+-104]
	#DEBUG_VALUE: evolve:ny <- %ESI
	#DEBUG_VALUE: evolve:nx <- %EDI
	movl	%esi, %edx
.Ltmp417:
	.loc	8 181 5 discriminator 1 # auxfnct.c:181:5
	testl	%esi, %esi
	jle	.LBB6_12
# BB#2:                                 # %for.cond6.preheader.lr.ph.us.preheader
	#DEBUG_VALUE: evolve:nx <- %EDI
	#DEBUG_VALUE: evolve:ny <- %ESI
	#DEBUG_VALUE: evolve:twiddle <- [%RSP+-104]
	#DEBUG_VALUE: evolve:y <- [%RSP+-72]
	#DEBUG_VALUE: evolve:x <- [%RSP+-80]
	#DEBUG_VALUE: evolve:nz <- [%RSP+-108]
	movq	%rax, %rcx
.Ltmp418:
	.loc	8 183 9                 # auxfnct.c:183:9
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	imulq	%rcx, %rdx
.Ltmp419:
	.loc	8 182 7 discriminator 1 # auxfnct.c:182:7
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movl	%edi, %ebp
	andl	$1, %ebp
.Ltmp420:
	.loc	8 183 9                 # auxfnct.c:183:9
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%rcx, %r9
	shlq	$4, %r9
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	8(%rax), %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leaq	(,%rdx,8), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	leaq	(,%rcx,8), %rax
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB6_3:                                # %for.cond6.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #       Child Loop BB6_9 Depth 3
	testl	%edi, %edi
	jle	.LBB6_11
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	-56(%rsp), %rdx         # 8-byte Reload
	imulq	-96(%rsp), %rdx         # 8-byte Folded Reload
	.loc	8 183 22 is_stmt 0      # auxfnct.c:183:22
	movq	-104(%rsp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rdx,8), %rcx
	.loc	8 183 9                 # auxfnct.c:183:9
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	shlq	$4, %rdx
	movq	-72(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	.loc	8 184 9 is_stmt 1       # auxfnct.c:184:9
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	addq	-80(%rsp), %rdx         # 8-byte Folded Reload
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	-64(%rsp), %r15         # 8-byte Reload
	movq	-88(%rsp), %rcx         # 8-byte Reload
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB6_5:                                # %for.body8.lr.ph.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
	testl	%ebp, %ebp
	movl	$0, %r10d
	je	.LBB6_7
# BB#6:                                 # %for.body8.us.us.prol
                                        #   in Loop: Header=BB6_5 Depth=2
	.loc	8 183 9                 # auxfnct.c:183:9
	movq	%r13, %rdx
	imulq	-32(%rsp), %rdx         # 8-byte Folded Reload
	.loc	8 183 22 is_stmt 0      # auxfnct.c:183:22
	movq	-16(%rsp), %rbx         # 8-byte Reload
	movsd	(%rbx,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	.loc	8 183 9                 # auxfnct.c:183:9
	shlq	$4, %rdx
	movl	%ebp, %ebx
	movq	-24(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%rdx), %rbp
	.loc	8 184 9 is_stmt 1       # auxfnct.c:184:9
	addq	-8(%rsp), %rdx          # 8-byte Folded Reload
	.loc	8 183 22                # auxfnct.c:183:22
	movupd	(%rbp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movupd	%xmm0, (%rbp)
	.loc	8 184 22                # auxfnct.c:184:22
	movups	(%rbp), %xmm0
	movl	%ebx, %ebp
	movups	%xmm0, (%rdx)
	movl	$1, %r10d
.Ltmp421:
.LBB6_7:                                # %for.body8.lr.ph.us.us.split
                                        #   in Loop: Header=BB6_5 Depth=2
	cmpl	$1, %edi
	je	.LBB6_10
# BB#8:                                 # %for.body8.lr.ph.us.us.split.split
                                        #   in Loop: Header=BB6_5 Depth=2
	.loc	8 182 7 discriminator 1 # auxfnct.c:182:7
	movl	%edi, %r11d
	subl	%r10d, %r11d
	leaq	(%r15,%r10,8), %r12
	shlq	$4, %r10
	movq	-72(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r10), %r8
	addq	-80(%rsp), %r10         # 8-byte Folded Reload
	movq	%rcx, %r14
	.p2align	4, 0x90
.LBB6_9:                                # %for.body8.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp422:
	.loc	8 183 22                # auxfnct.c:183:22
	movupd	(%r8,%r14), %xmm0
	movsd	-8(%r12), %xmm1         # xmm1 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm0, %xmm1
	movupd	%xmm1, (%r8,%r14)
	.loc	8 184 22                # auxfnct.c:184:22
	movups	(%r8,%r14), %xmm0
	movups	%xmm0, (%r10,%r14)
	.loc	8 183 22                # auxfnct.c:183:22
	movupd	16(%r8,%r14), %xmm0
	movsd	(%r12), %xmm1           # xmm1 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm0, %xmm1
	movupd	%xmm1, 16(%r8,%r14)
	.loc	8 184 22                # auxfnct.c:184:22
	movups	16(%r8,%r14), %xmm0
	movups	%xmm0, 16(%r10,%r14)
.Ltmp423:
	.loc	8 182 7 discriminator 1 # auxfnct.c:182:7
	addq	$32, %r14
	addq	$16, %r12
	addl	$-2, %r11d
	jne	.LBB6_9
.Ltmp424:
.LBB6_10:                               # %for.cond6.for.inc52_crit_edge.us.us
                                        #   in Loop: Header=BB6_5 Depth=2
	.loc	8 181 5 discriminator 1 # auxfnct.c:181:5
	incq	%r13
	addq	%r9, %rcx
	addq	%rax, %r15
	cmpl	%esi, %r13d
	jne	.LBB6_5
.Ltmp425:
.LBB6_11:                               # %for.cond3.for.inc55_crit_edge.us
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-96(%rsp), %rdx         # 8-byte Reload
	.loc	8 180 3 discriminator 1 # auxfnct.c:180:3
	incq	%rdx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	movq	-88(%rsp), %rcx         # 8-byte Reload
	addq	-40(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	-48(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, -64(%rsp)         # 8-byte Folded Spill
	cmpl	-108(%rsp), %edx        # 4-byte Folded Reload
	jne	.LBB6_3
.Ltmp426:
.LBB6_12:                               # %for.end57
	.loc	8 188 1                 # auxfnct.c:188:1
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp427:
.Lfunc_end6:
	.size	evolve, .Lfunc_end6-evolve
	.cfi_endproc

	.globl	CalculateChecksum
	.p2align	4, 0x90
	.type	CalculateChecksum,@function
CalculateChecksum:                      # @CalculateChecksum
.Lfunc_begin7:
	.loc	8 119 0                 # auxfnct.c:119:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp428:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp429:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp430:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp431:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp432:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp433:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp434:
	.cfi_def_cfa_offset 80
.Ltmp435:
	.cfi_offset %rbx, -56
.Ltmp436:
	.cfi_offset %r12, -48
.Ltmp437:
	.cfi_offset %r13, -40
.Ltmp438:
	.cfi_offset %r14, -32
.Ltmp439:
	.cfi_offset %r15, -24
.Ltmp440:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: CalculateChecksum:csum <- %RDI
	#DEBUG_VALUE: CalculateChecksum:iterN <- %ESI
	#DEBUG_VALUE: CalculateChecksum:d1 <- %EDX
	#DEBUG_VALUE: CalculateChecksum:d2 <- %ECX
	#DEBUG_VALUE: CalculateChecksum:d3 <- %R8D
	#DEBUG_VALUE: CalculateChecksum:u <- %R9
	movl	%edx, %r10d
.Ltmp441:
	#DEBUG_VALUE: CalculateChecksum:d1 <- %R10D
	movq	%rdi, %r14
.Ltmp442:
	#DEBUG_VALUE: CalculateChecksum:csum <- %R14
	movl	%ecx, %r12d
.Ltmp443:
	.loc	8 118 45 prologue_end   # auxfnct.c:118:45
	leal	1(%r10), %r13d
.Ltmp444:
	#DEBUG_VALUE: CalculateChecksum:i <- 1
	#DEBUG_VALUE: CalculateChecksum:csum_temp [bit_piece offset=64 size=64] <- 0.000000e+00
	#DEBUG_VALUE: CalculateChecksum:csum_temp [bit_piece offset=0 size=64] <- 0.000000e+00
	.loc	8 127 17                # auxfnct.c:127:17
	imulq	%r13, %r12
	xorpd	%xmm1, %xmm1
	movl	$1, %edi
	movl	$3, %r11d
	movl	$5, %ebx
.Ltmp445:
	.p2align	4, 0x90
.LBB7_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	8 124 13                # auxfnct.c:124:13
	movl	%edi, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r15d
	.loc	8 125 17                # auxfnct.c:125:17
	movl	%r11d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	.loc	8 126 17                # auxfnct.c:126:17
	movl	%ebx, %eax
	cltd
	idivl	%r8d
	.loc	8 127 17                # auxfnct.c:127:17
	movslq	%r15d, %rax
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	imulq	%r12, %rdx
	shlq	$4, %rdx
	addq	%r9, %rdx
	imulq	%r13, %rbp
	shlq	$4, %rbp
	addq	%rdx, %rbp
	shlq	$4, %rax
	movupd	(%rax,%rbp), %xmm0
	addpd	%xmm0, %xmm1
.Ltmp446:
	.loc	8 122 27 discriminator 2 # auxfnct.c:122:27
	incl	%edi
.Ltmp447:
	#DEBUG_VALUE: CalculateChecksum:i1 <- %EDI
	#DEBUG_VALUE: CalculateChecksum:i <- %EDI
	.loc	8 122 3 is_stmt 0 discriminator 1 # auxfnct.c:122:3
	addl	$3, %r11d
	addl	$5, %ebx
	cmpl	$1025, %edi             # imm = 0x401
	jne	.LBB7_1
.Ltmp448:
# BB#2:                                 # %for.end
	#DEBUG_VALUE: CalculateChecksum:i <- %EDI
	#DEBUG_VALUE: CalculateChecksum:i1 <- %EDI
	.loc	8 129 15 is_stmt 1      # auxfnct.c:129:15
	imull	%r10d, %ecx
	imull	%r8d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	divpd	%xmm0, %xmm1
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	movapd	%xmm1, %xmm0
	.loc	8 130 3                 # auxfnct.c:130:3
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movl	$.L.str, %edi
.Ltmp449:
	movb	$2, %al
	callq	printf
	.loc	8 132 11                # auxfnct.c:132:11
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movups	%xmm0, (%r14)
	.loc	8 133 1                 # auxfnct.c:133:1
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp450:
.Lfunc_end7:
	.size	CalculateChecksum, .Lfunc_end7-CalculateChecksum
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_0:
	.quad	4647716223740731491     # double 512.16010453460001
	.quad	4647710234438055421     # double 511.7395998266
.LCPI8_1:
	.quad	4647715611847849306     # double 512.09054036780003
	.quad	4647712378429286815     # double 511.86147161820003
.LCPI8_2:
	.quad	4647715363644646846     # double 512.06232293059998
	.quad	4647713186768359672     # double 511.9074203747
.LCPI8_3:
	.quad	4647715201083779904     # double 512.04384189970006
	.quad	4647713664742752214     # double 511.9345900733
.LCPI8_4:
	.quad	4647715089463888328     # double 512.03115218719995
	.quad	4647714026129912094     # double 511.95513255499998
.LCPI8_5:
	.quad	4647715014316171396     # double 512.02260888089995
	.quad	4647714323181659480     # double 511.97201799189997
.LCPI8_6:
	.quad	4647714964361158012     # double 512.01692965339998
	.quad	4647714571568805837     # double 511.98613716649999
.LCPI8_7:
	.quad	4647714930873233849     # double 512.01312251720003
	.quad	4647714779143823957     # double 511.99793644020002
.LCPI8_8:
	.quad	4647714907600474636     # double 512.01047671080005
	.quad	4647714883769205737     # double 512.00776740920003
.LCPI8_9:
	.quad	4647714890325705284     # double 512.00851279690005
	.quad	4647714955694004279     # double 512.01594431210003
.LCPI8_10:
	.quad	4647714876336537919     # double 512.00692241269996
	.quad	4647715015516715828     # double 512.02274536699997
.LCPI8_11:
	.quad	4647714863963986020     # double 512.00551581640002
	.quad	4647715065339872260     # double 512.02840960410003
.LCPI8_12:
	.quad	4647714852231752749     # double 512.00418201590003
	.quad	4647715106925822707     # double 512.0331373793
.LCPI8_13:
	.quad	4647714840607929565     # double 512.0028605402
	.quad	4647715141727464474     # double 512.03709386790001
.LCPI8_14:
	.quad	4647714828836653955     # double 512.00152230109995
	.quad	4647715170930627008     # double 512.04041388309997
.LCPI8_15:
	.quad	4647714816827357828     # double 512.00015700220001
	.quad	4647715195498120097     # double 512.04320688370001
.LCPI8_16:
	.quad	4647714793720978473     # double 511.99876505549997
	.quad	4647715216210300567     # double 512.04556158599996
.LCPI8_17:
	.quad	4647714768871199408     # double 511.99735250909998
	.quad	4647715233700084256     # double 512.0475499442
.LCPI8_18:
	.quad	4647714743810041432     # double 511.99592794720002
	.quad	4647715248482083067     # double 512.04923046290003
.LCPI8_19:
	.quad	4647714718700865583     # double 511.99450065579998
	.quad	4647715260976293729     # double 512.05065089020002
.LCPI8_20:
	.quad	4647714693701231000     # double 511.99307959110001
	.quad	4647715271527101756     # double 512.05185037820002
.LCPI8_21:
	.quad	4647714668953513002     # double 511.9916728462
	.quad	4647715280418398411     # double 512.05286120159997
.LCPI8_22:
	.quad	4647714644580811152     # double 511.99028741849997
	.quad	4647715287885559228     # double 512.05371011950001
.LCPI8_23:
	.quad	4647714620686013351     # double 511.98892915649998
	.quad	4647715294124908604     # double 512.05441945140001
.LCPI8_24:
	.quad	4647714597352589244     # double 511.98760280490001
	.quad	4647715299301207037     # double 512.05500792839996
.LCPI8_26:
	.quad	4647716777032492091     # double 512.22300652520005
	.quad	4647712236497160604     # double 511.85340371090001
.LCPI8_27:
	.quad	4647715223563750771     # double 512.0463975765
	.quad	4647709645421436241     # double 511.70611810819997
.LCPI8_28:
	.quad	4647714579300738730     # double 511.98657667600003
	.quad	4647709707316937436     # double 511.7096364601
.LCPI8_29:
	.quad	4647713968909458695     # double 511.95187994880001
	.quad	4647710195498954917     # double 511.73738639499999
.LCPI8_30:
	.quad	4647713529612755568     # double 511.92690882229999
	.quad	4647710734670750249     # double 511.76803476319998
.LCPI8_31:
	.quad	4647713201217017344     # double 511.90824168580002
	.quad	4647711240495181225     # double 511.79678755319998
.LCPI8_32:
	.quad	4647712957385413303     # double 511.89438146380002
	.quad	4647711693329148919     # double 511.82252818410001
.LCPI8_33:
	.quad	4647712778948607367     # double 511.88423850570001
	.quad	4647712091523894302     # double 511.84516293479999
.LCPI8_34:
	.quad	4647712650614621723     # double 511.87694356319997
	.quad	4647712438952045103     # double 511.8649119387
.LCPI8_35:
	.quad	4647712560486010485     # double 511.87182034480003
	.quad	4647712740982535951     # double 511.88208038440001
.LCPI8_36:
	.quad	4647712499556552521     # double 511.86835690610002
	.quad	4647713003065939774     # double 511.89697810109999
.LCPI8_37:
	.quad	4647712461099210513     # double 511.86617085929998
	.quad	4647713230247602292     # double 511.90989188349999
.LCPI8_38:
	.quad	4647712440094768417     # double 511.86497689499998
	.quad	4647713427030683327     # double 511.92107770659999
.LCPI8_39:
	.quad	4647712432770571380     # double 511.86456056259999
	.quad	4647713597371278493     # double 511.93076044840001
.LCPI8_40:
	.quad	4647712436255569362     # double 511.86475866180001
	.quad	4647713744720239338     # double 511.93913626710003
.LCPI8_41:
	.quad	4647712448332524157     # double 511.86544515719999
	.quad	4647713872078113742     # double 511.94637572409999
.LCPI8_42:
	.quad	4647712467263262694     # double 511.86652124509999
	.quad	4647713982050381865     # double 511.95262692379998
.LCPI8_43:
	.quad	4647712491666034867     # double 511.86790838209998
	.quad	4647714076898424225     # double 511.95801841079998
.LCPI8_44:
	.quad	4647712520428982853     # double 511.86954336640002
	.quad	4647714158584978149     # double 511.96266175379998
.LCPI8_45:
	.quad	4647712552648367905     # double 511.87137482639997
	.quad	4647714228814040370     # double 511.96665381380001
.LCPI8_46:
	.quad	4647712587583699731     # double 511.8733606701
	.quad	4647714289065660850     # double 511.97007872189999
.LCPI8_47:
	.quad	4647712624624527714     # double 511.87546619739999
	.quad	4647714340626130976     # double 511.97300959530003
.LCPI8_48:
	.quad	4647712663265349185     # double 511.87766267379999
	.quad	4647714384614139616     # double 511.9755100241
.LCPI8_49:
	.quad	4647712703086275607     # double 511.87992623140002
	.quad	4647714422003375566     # double 511.9776353561
.LCPI8_50:
	.quad	4647712743737866350     # double 511.88223700679998
	.quad	4647714453642040798     # double 511.97943380599997
.LCPI8_52:
	.quad	4647780855375829763     # double 519.50787074569996
	.quad	4647740341443749267     # double 514.90196992380004
.LCPI8_53:
	.quad	4647745973117586196     # double 515.54221711340006
	.quad	4647721481303322541     # double 512.75782019969995
.LCPI8_54:
	.quad	4647736522464258755     # double 514.46780222220002
	.quad	4647716796192372369     # double 512.22518475139998
.LCPI8_55:
	.quad	4647732540096568058     # double 514.01505943279994
	.quad	4647715774474714214     # double 512.1090289018
.LCPI8_56:
	.quad	4647730252965031893     # double 513.75504268099996
	.quad	4647715821443041480     # double 512.11436858239995
.LCPI8_57:
	.quad	4647728722998927762     # double 513.58110567280005
	.quad	4647716132014389119     # double 512.14967645679997
.LCPI8_58:
	.quad	4647727630776127053     # double 513.4569343165
	.quad	4647716461126652683     # double 512.18709218929996
.LCPI8_59:
	.quad	4647726823851136980     # double 513.36519756610005
	.quad	4647716744649737202     # double 512.2193250322
.LCPI8_60:
	.quad	4647726210954455214     # double 513.2955192805
	.quad	4647716974654790769     # double 512.24547357940003
.LCPI8_61:
	.quad	4647725731812737565     # double 513.24104717379998
	.quad	4647717158417320528     # double 512.26636496030005
.LCPI8_62:
	.quad	4647725345373930924     # double 513.19711416790005
	.quad	4647717305514581170     # double 512.28308798269995
.LCPI8_63:
	.quad	4647725023493253852     # double 513.16052057160005
	.quad	4647717424252945000     # double 512.29658697180002
.LCPI8_64:
	.quad	4647724746881177817     # double 513.12907341940002
	.quad	4647717521060745450     # double 512.30759274449997
.LCPI8_65:
	.quad	4647724502337582822     # double 513.10127203139996
	.quad	4647717600717379248     # double 512.31664865530001
.LCPI8_66:
	.quad	4647724280841300538     # double 513.0760908195
	.quad	4647717666736571534     # double 512.32415416849994
.LCPI8_67:
	.quad	4647724076233382276     # double 513.05282959229999
	.quad	4647717721708558840     # double 512.33040375990004
.LCPI8_68:
	.quad	4647723884313055902     # double 513.03101077730003
	.quad	4647717767562923377     # double 512.33561679759998
.LCPI8_69:
	.quad	4647723702218414034     # double 513.0103090133
	.quad	4647717805759284425     # double 512.3399592211
.LCPI8_70:
	.quad	4647723528002291949     # double 512.99050293330004
	.quad	4647717837422381685     # double 512.34355889849996
.LCPI8_71:
	.quad	4647723360341525039     # double 512.97144211090006
	.quad	4647717863436847030     # double 512.34651640080006
.LCPI8_73:
	.quad	4647765519268125991     # double 517.76435715790001
	.quad	4647640582505672624     # double 507.78034585969999
.LCPI8_74:
	.quad	4647745180695271480     # double 515.45212912629995
	.quad	4647658959255719237     # double 508.82494315989999
.LCPI8_75:
	.quad	4647738045249536008     # double 514.64092286489995
	.quad	4647672961722881690     # double 509.62089126590001
.LCPI8_76:
	.quad	4647734500008488958     # double 514.23787562129996
	.quad	4647681431436801940     # double 510.1023387619
.LCPI8_77:
	.quad	4647732079245864934     # double 513.96266677369999
	.quad	4647686626801643086     # double 510.39766106169998
.LCPI8_78:
	.quad	4647730141283916872     # double 513.7423460082
	.quad	4647690094941358305     # double 510.59480198019997
.LCPI8_79:
	.quad	4647728490782203917     # double 513.55470568780004
	.quad	4647692656620458864     # double 510.74041657830003
.LCPI8_80:
	.quad	4647727051625794266     # double 513.39109254660002
	.quad	4647694719142209835     # double 510.8576573661
.LCPI8_81:
	.quad	4647725784794818171     # double 513.24707053899999
	.quad	4647696479600820621     # double 510.95772785230002
.LCPI8_82:
	.quad	4647724665073809555     # double 513.11977299839998
	.quad	4647698033036517657     # double 511.04603044829997
.LCPI8_83:
	.quad	4647723673392869532     # double 513.00703192829997
	.quad	4647699426565149247     # double 511.12524337999997
.LCPI8_84:
	.quad	4647722793975101357     # double 512.90705370319995
	.quad	4647700685539243949     # double 511.19680777180002
.LCPI8_85:
	.quad	4647722013186799220     # double 512.81828835019996
	.quad	4647701825786187200     # double 511.2616233064
.LCPI8_86:
	.quad	4647721319043013699     # double 512.73937333829997
	.quad	4647702859102794068     # double 511.32036055510002
.LCPI8_87:
	.quad	4647720700966746400     # double 512.66910620199997
	.quad	4647703795574513518     # double 511.37359280930002
.LCPI8_88:
	.quad	4647720149639936225     # double 512.60642760040002
	.quad	4647704644454585601     # double 511.42184605480003
.LCPI8_89:
	.quad	4647719656883302980     # double 512.55040765700005
	.quad	4647705414427998128     # double 511.46561397599999
.LCPI8_90:
	.quad	4647719215543865578     # double 512.50023317199998
	.quad	4647706113640350174     # double 511.50535959659999
.LCPI8_91:
	.quad	4647718819385538875     # double 512.45519518460003
	.quad	4647706749658464928     # double 511.54151304070001
.LCPI8_92:
	.quad	4647718462983843551     # double 512.41467700290002
	.quad	4647707329429721838     # double 511.5744692211
.LCPI8_94:
	.quad	4647585926309710736     # double 504.67350081929999
	.quad	4647704344410989670     # double 511.40479055100002
.LCPI8_95:
	.quad	4647608228472027966     # double 505.94123197340002
	.quad	4647677537017306482     # double 509.88096664329998
.LCPI8_96:
	.quad	4647625758340485386     # double 506.93768962870001
	.quad	4647676366038795091     # double 509.81440422129998
.LCPI8_97:
	.quad	4647640739797191663     # double 507.78928684739998
	.quad	4647681981620352239     # double 510.13361307589997
.LCPI8_98:
	.quad	4647653652860944873     # double 508.52330953910001
	.quad	4647688277027114740     # double 510.49146551939998
.LCPI8_99:
	.quad	4647664655022133161     # double 509.14870999589999
	.quad	4647693560290629122     # double 510.79178428030002
.LCPI8_101:
	.quad	4648201777868773741     # double 567.36121789440006
	.quad	4647867204986466646     # double 529.32468491750001
.LCPI8_102:
	.quad	4648164680088135076     # double 563.14368852710004
	.quad	4647857444082945719     # double 528.21499866290003
.LCPI8_103:
	.quad	4648131771445366233     # double 559.40240899699995
	.quad	4647847633423404540     # double 527.09965580369999
.LCPI8_104:
	.quad	4648102457547981204     # double 556.06980470200006
	.quad	4647837985294094392     # double 526.00279049250003
.LCPI8_105:
	.quad	4648076246021328515     # double 553.08989912499999
	.quad	4647828637633885897     # double 524.94008456330005
.LCPI8_106:
	.quad	4648052725922390170     # double 550.41597345380001
	.quad	4647819675647827362     # double 523.92122470859999
.LCPI8_108:
	.quad	4648089605539473607     # double 554.60870049640005
	.quad	4647231669510505718     # double 484.53633319779999
.LCPI8_109:
	.quad	4648089868018605739     # double 554.63854091890005
	.quad	4647266749978803780     # double 486.53042695110003
.LCPI8_110:
	.quad	4648089659548546451     # double 554.61484061709996
	.quad	4647299482796776185     # double 488.39107223360003
.LCPI8_111:
	.quad	4648089022008818436     # double 554.54236074150003
	.quad	4647330027136047042     # double 490.12731690459998
.LCPI8_112:
	.quad	4648087994125719196     # double 554.42550396239994
	.quad	4647358531207884585     # double 491.7475857993
.LCPI8_113:
	.quad	4648086611707355297     # double 554.26834119019998
	.quad	4647385133033128467     # double 493.2597244941
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI8_25:
	.quad	4647710234438055421     # double 511.7395998266
.LCPI8_51:
	.quad	4647712236497160604     # double 511.85340371090001
.LCPI8_72:
	.quad	4647740341443749267     # double 514.90196992380004
.LCPI8_93:
	.quad	4647640582505672624     # double 507.78034585969999
.LCPI8_100:
	.quad	4647704344410989670     # double 511.40479055100002
.LCPI8_107:
	.quad	4647867204986466646     # double 529.32468491750001
.LCPI8_114:
	.quad	4647231669510505718     # double 484.53633319779999
.LCPI8_115:
	.quad	4427486594234968593     # double 9.9999999999999998E-13
	.text
	.globl	verify
	.p2align	4, 0x90
	.type	verify,@function
verify:                                 # @verify
.Lfunc_begin8:
	.file	9 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/verify.c"
	.loc	9 43 0                  # verify.c:43:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp451:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp452:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp453:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp454:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp455:
	.cfi_def_cfa_offset 48
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp456:
	.cfi_def_cfa_offset 464
.Ltmp457:
	.cfi_offset %rbx, -48
.Ltmp458:
	.cfi_offset %r12, -40
.Ltmp459:
	.cfi_offset %r13, -32
.Ltmp460:
	.cfi_offset %r14, -24
.Ltmp461:
	.cfi_offset %r15, -16
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:cksum <- %R8
	#DEBUG_VALUE: verify:verified <- %R9
	movq	%r9, %r14
.Ltmp462:
	#DEBUG_VALUE: verify:verified <- %R14
	movq	%r8, %r15
.Ltmp463:
	#DEBUG_VALUE: verify:epsilon <- 1.000000e-12
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 52 13 prologue_end    # verify.c:52:13
	movl	$1, (%r14)
.Ltmp464:
	.loc	9 54 18                 # verify.c:54:18
	cmpl	$64, %edi
	jne	.LBB8_5
.Ltmp465:
# BB#1:                                 # %entry
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$64, %esi
	jne	.LBB8_5
.Ltmp466:
# BB#2:                                 # %entry
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$64, %edx
	jne	.LBB8_5
.Ltmp467:
# BB#3:                                 # %entry
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$6, %ecx
	jne	.LBB8_5
.Ltmp468:
# BB#4:                                 # %if.then
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 56 16                 # verify.c:56:16
	movaps	.LCPI8_108(%rip), %xmm0 # xmm0 = [5.546087e+02,4.845363e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 57 16                 # verify.c:57:16
	movaps	.LCPI8_109(%rip), %xmm0 # xmm0 = [5.546385e+02,4.865304e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 58 16                 # verify.c:58:16
	movaps	.LCPI8_110(%rip), %xmm0 # xmm0 = [5.546148e+02,4.883911e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 59 16                 # verify.c:59:16
	movaps	.LCPI8_111(%rip), %xmm0 # xmm0 = [5.545424e+02,4.901273e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 60 16                 # verify.c:60:16
	movaps	.LCPI8_112(%rip), %xmm0 # xmm0 = [5.544255e+02,4.917476e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 61 16                 # verify.c:61:16
	movapd	.LCPI8_113(%rip), %xmm0 # xmm0 = [5.542683e+02,4.932597e+02]
	movapd	%xmm0, 96(%rsp)
	movsd	.LCPI8_114(%rip), %xmm1 # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp469:
.LBB8_5:                                # %if.else
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 62 26 discriminator 1 # verify.c:62:26
	cmpl	$128, %edi
	jne	.LBB8_10
.Ltmp470:
# BB#6:                                 # %if.else
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$128, %esi
	jne	.LBB8_10
.Ltmp471:
# BB#7:                                 # %if.else
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$32, %edx
	jne	.LBB8_10
.Ltmp472:
# BB#8:                                 # %if.else
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$6, %ecx
	jne	.LBB8_10
.Ltmp473:
# BB#9:                                 # %if.then33
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 64 16                 # verify.c:64:16
	movaps	.LCPI8_101(%rip), %xmm0 # xmm0 = [5.673612e+02,5.293247e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 65 16                 # verify.c:65:16
	movaps	.LCPI8_102(%rip), %xmm0 # xmm0 = [5.631437e+02,5.282150e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 66 16                 # verify.c:66:16
	movaps	.LCPI8_103(%rip), %xmm0 # xmm0 = [5.594024e+02,5.270997e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 67 16                 # verify.c:67:16
	movaps	.LCPI8_104(%rip), %xmm0 # xmm0 = [5.560698e+02,5.260028e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 68 16                 # verify.c:68:16
	movaps	.LCPI8_105(%rip), %xmm0 # xmm0 = [5.530899e+02,5.249401e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 69 16                 # verify.c:69:16
	movapd	.LCPI8_106(%rip), %xmm0 # xmm0 = [5.504160e+02,5.239212e+02]
	movapd	%xmm0, 96(%rsp)
	movsd	.LCPI8_107(%rip), %xmm1 # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp474:
.LBB8_10:                               # %if.else58
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 70 26 discriminator 1 # verify.c:70:26
	cmpl	$256, %edi              # imm = 0x100
	jne	.LBB8_15
.Ltmp475:
# BB#11:                                # %if.else58
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$256, %esi              # imm = 0x100
	jne	.LBB8_15
.Ltmp476:
# BB#12:                                # %if.else58
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$128, %edx
	jne	.LBB8_15
.Ltmp477:
# BB#13:                                # %if.else58
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$6, %ecx
	jne	.LBB8_15
.Ltmp478:
# BB#14:                                # %if.then66
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 72 16                 # verify.c:72:16
	movaps	.LCPI8_94(%rip), %xmm0  # xmm0 = [5.046735e+02,5.114048e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 73 16                 # verify.c:73:16
	movaps	.LCPI8_95(%rip), %xmm0  # xmm0 = [5.059412e+02,5.098810e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 74 16                 # verify.c:74:16
	movaps	.LCPI8_96(%rip), %xmm0  # xmm0 = [5.069377e+02,5.098144e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 75 16                 # verify.c:75:16
	movaps	.LCPI8_97(%rip), %xmm0  # xmm0 = [5.077893e+02,5.101336e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 76 16                 # verify.c:76:16
	movaps	.LCPI8_98(%rip), %xmm0  # xmm0 = [5.085233e+02,5.104915e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 77 16                 # verify.c:77:16
	movapd	.LCPI8_99(%rip), %xmm0  # xmm0 = [5.091487e+02,5.107918e+02]
	movapd	%xmm0, 96(%rsp)
	movsd	.LCPI8_100(%rip), %xmm1 # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp479:
.LBB8_15:                               # %if.else91
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 78 26 discriminator 1 # verify.c:78:26
	cmpl	$512, %edi              # imm = 0x200
	jne	.LBB8_20
.Ltmp480:
# BB#16:                                # %if.else91
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$256, %esi              # imm = 0x100
	jne	.LBB8_20
.Ltmp481:
# BB#17:                                # %if.else91
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$256, %edx              # imm = 0x100
	jne	.LBB8_20
.Ltmp482:
# BB#18:                                # %if.else91
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$20, %ecx
	jne	.LBB8_20
.Ltmp483:
# BB#19:                                # %if.then99
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 80 17                 # verify.c:80:17
	movaps	.LCPI8_73(%rip), %xmm0  # xmm0 = [5.177644e+02,5.077803e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 81 17                 # verify.c:81:17
	movaps	.LCPI8_74(%rip), %xmm0  # xmm0 = [5.154521e+02,5.088249e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 82 17                 # verify.c:82:17
	movaps	.LCPI8_75(%rip), %xmm0  # xmm0 = [5.146409e+02,5.096209e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 83 17                 # verify.c:83:17
	movaps	.LCPI8_76(%rip), %xmm0  # xmm0 = [5.142379e+02,5.101023e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 84 17                 # verify.c:84:17
	movaps	.LCPI8_77(%rip), %xmm0  # xmm0 = [5.139627e+02,5.103977e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 85 17                 # verify.c:85:17
	movaps	.LCPI8_78(%rip), %xmm0  # xmm0 = [5.137423e+02,5.105948e+02]
	movaps	%xmm0, 96(%rsp)
	.loc	9 86 17                 # verify.c:86:17
	movaps	.LCPI8_79(%rip), %xmm0  # xmm0 = [5.135547e+02,5.107404e+02]
	movaps	%xmm0, 112(%rsp)
	.loc	9 87 17                 # verify.c:87:17
	movaps	.LCPI8_80(%rip), %xmm0  # xmm0 = [5.133911e+02,5.108577e+02]
	movaps	%xmm0, 128(%rsp)
	.loc	9 88 17                 # verify.c:88:17
	movaps	.LCPI8_81(%rip), %xmm0  # xmm0 = [5.132471e+02,5.109577e+02]
	movaps	%xmm0, 144(%rsp)
	.loc	9 89 17                 # verify.c:89:17
	movaps	.LCPI8_82(%rip), %xmm0  # xmm0 = [5.131198e+02,5.110460e+02]
	movaps	%xmm0, 160(%rsp)
	.loc	9 90 17                 # verify.c:90:17
	movaps	.LCPI8_83(%rip), %xmm0  # xmm0 = [5.130070e+02,5.111252e+02]
	movaps	%xmm0, 176(%rsp)
	.loc	9 91 17                 # verify.c:91:17
	movaps	.LCPI8_84(%rip), %xmm0  # xmm0 = [5.129071e+02,5.111968e+02]
	movaps	%xmm0, 192(%rsp)
	.loc	9 92 17                 # verify.c:92:17
	movaps	.LCPI8_85(%rip), %xmm0  # xmm0 = [5.128183e+02,5.112616e+02]
	movaps	%xmm0, 208(%rsp)
	.loc	9 93 17                 # verify.c:93:17
	movaps	.LCPI8_86(%rip), %xmm0  # xmm0 = [5.127394e+02,5.113204e+02]
	movaps	%xmm0, 224(%rsp)
	.loc	9 94 17                 # verify.c:94:17
	movaps	.LCPI8_87(%rip), %xmm0  # xmm0 = [5.126691e+02,5.113736e+02]
	movaps	%xmm0, 240(%rsp)
	.loc	9 95 17                 # verify.c:95:17
	movaps	.LCPI8_88(%rip), %xmm0  # xmm0 = [5.126064e+02,5.114218e+02]
	movaps	%xmm0, 256(%rsp)
	.loc	9 96 17                 # verify.c:96:17
	movaps	.LCPI8_89(%rip), %xmm0  # xmm0 = [5.125504e+02,5.114656e+02]
	movaps	%xmm0, 272(%rsp)
	.loc	9 97 17                 # verify.c:97:17
	movaps	.LCPI8_90(%rip), %xmm0  # xmm0 = [5.125002e+02,5.115054e+02]
	movaps	%xmm0, 288(%rsp)
	.loc	9 98 17                 # verify.c:98:17
	movaps	.LCPI8_91(%rip), %xmm0  # xmm0 = [5.124552e+02,5.115415e+02]
	movaps	%xmm0, 304(%rsp)
	.loc	9 99 17                 # verify.c:99:17
	movapd	.LCPI8_92(%rip), %xmm0  # xmm0 = [5.124147e+02,5.115745e+02]
	movapd	%xmm0, 320(%rsp)
	movsd	.LCPI8_93(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp484:
.LBB8_20:                               # %if.else180
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 101 26 discriminator 1 # verify.c:101:26
	cmpl	$512, %edi              # imm = 0x200
	jne	.LBB8_25
.Ltmp485:
# BB#21:                                # %if.else180
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$512, %esi              # imm = 0x200
	jne	.LBB8_25
.Ltmp486:
# BB#22:                                # %if.else180
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB8_25
.Ltmp487:
# BB#23:                                # %if.else180
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$20, %ecx
	jne	.LBB8_25
.Ltmp488:
# BB#24:                                # %if.then188
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 103 17                # verify.c:103:17
	movaps	.LCPI8_52(%rip), %xmm0  # xmm0 = [5.195079e+02,5.149020e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 104 17                # verify.c:104:17
	movaps	.LCPI8_53(%rip), %xmm0  # xmm0 = [5.155422e+02,5.127578e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 105 17                # verify.c:105:17
	movaps	.LCPI8_54(%rip), %xmm0  # xmm0 = [5.144678e+02,5.122252e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 106 17                # verify.c:106:17
	movaps	.LCPI8_55(%rip), %xmm0  # xmm0 = [5.140151e+02,5.121090e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 107 17                # verify.c:107:17
	movaps	.LCPI8_56(%rip), %xmm0  # xmm0 = [5.137550e+02,5.121144e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 108 17                # verify.c:108:17
	movaps	.LCPI8_57(%rip), %xmm0  # xmm0 = [5.135811e+02,5.121497e+02]
	movaps	%xmm0, 96(%rsp)
	.loc	9 109 17                # verify.c:109:17
	movaps	.LCPI8_58(%rip), %xmm0  # xmm0 = [5.134569e+02,5.121871e+02]
	movaps	%xmm0, 112(%rsp)
	.loc	9 110 17                # verify.c:110:17
	movaps	.LCPI8_59(%rip), %xmm0  # xmm0 = [5.133652e+02,5.122193e+02]
	movaps	%xmm0, 128(%rsp)
	.loc	9 111 17                # verify.c:111:17
	movaps	.LCPI8_60(%rip), %xmm0  # xmm0 = [5.132955e+02,5.122455e+02]
	movaps	%xmm0, 144(%rsp)
	.loc	9 112 17                # verify.c:112:17
	movaps	.LCPI8_61(%rip), %xmm0  # xmm0 = [5.132410e+02,5.122664e+02]
	movaps	%xmm0, 160(%rsp)
	.loc	9 113 17                # verify.c:113:17
	movaps	.LCPI8_62(%rip), %xmm0  # xmm0 = [5.131971e+02,5.122831e+02]
	movaps	%xmm0, 176(%rsp)
	.loc	9 114 17                # verify.c:114:17
	movaps	.LCPI8_63(%rip), %xmm0  # xmm0 = [5.131605e+02,5.122966e+02]
	movaps	%xmm0, 192(%rsp)
	.loc	9 115 17                # verify.c:115:17
	movaps	.LCPI8_64(%rip), %xmm0  # xmm0 = [5.131291e+02,5.123076e+02]
	movaps	%xmm0, 208(%rsp)
	.loc	9 116 17                # verify.c:116:17
	movaps	.LCPI8_65(%rip), %xmm0  # xmm0 = [5.131013e+02,5.123166e+02]
	movaps	%xmm0, 224(%rsp)
	.loc	9 117 17                # verify.c:117:17
	movaps	.LCPI8_66(%rip), %xmm0  # xmm0 = [5.130761e+02,5.123242e+02]
	movaps	%xmm0, 240(%rsp)
	.loc	9 118 17                # verify.c:118:17
	movaps	.LCPI8_67(%rip), %xmm0  # xmm0 = [5.130528e+02,5.123304e+02]
	movaps	%xmm0, 256(%rsp)
	.loc	9 119 17                # verify.c:119:17
	movaps	.LCPI8_68(%rip), %xmm0  # xmm0 = [5.130310e+02,5.123356e+02]
	movaps	%xmm0, 272(%rsp)
	.loc	9 120 17                # verify.c:120:17
	movaps	.LCPI8_69(%rip), %xmm0  # xmm0 = [5.130103e+02,5.123400e+02]
	movaps	%xmm0, 288(%rsp)
	.loc	9 121 17                # verify.c:121:17
	movaps	.LCPI8_70(%rip), %xmm0  # xmm0 = [5.129905e+02,5.123436e+02]
	movaps	%xmm0, 304(%rsp)
	.loc	9 122 17                # verify.c:122:17
	movapd	.LCPI8_71(%rip), %xmm0  # xmm0 = [5.129714e+02,5.123465e+02]
	movapd	%xmm0, 320(%rsp)
	movsd	.LCPI8_72(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp489:
.LBB8_25:                               # %if.else269
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 123 27 discriminator 1 # verify.c:123:27
	cmpl	$2048, %edi             # imm = 0x800
	jne	.LBB8_30
.Ltmp490:
# BB#26:                                # %if.else269
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$1024, %esi             # imm = 0x400
	jne	.LBB8_30
.Ltmp491:
# BB#27:                                # %if.else269
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB8_30
.Ltmp492:
# BB#28:                                # %if.else269
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$25, %ecx
	jne	.LBB8_30
.Ltmp493:
# BB#29:                                # %if.then277
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 125 17                # verify.c:125:17
	movaps	.LCPI8_26(%rip), %xmm0  # xmm0 = [5.122230e+02,5.118534e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 126 17                # verify.c:126:17
	movaps	.LCPI8_27(%rip), %xmm0  # xmm0 = [5.120464e+02,5.117061e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 127 17                # verify.c:127:17
	movaps	.LCPI8_28(%rip), %xmm0  # xmm0 = [5.119866e+02,5.117096e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 128 17                # verify.c:128:17
	movaps	.LCPI8_29(%rip), %xmm0  # xmm0 = [5.119519e+02,5.117374e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 129 17                # verify.c:129:17
	movaps	.LCPI8_30(%rip), %xmm0  # xmm0 = [5.119269e+02,5.117680e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 130 17                # verify.c:130:17
	movaps	.LCPI8_31(%rip), %xmm0  # xmm0 = [5.119082e+02,5.117968e+02]
	movaps	%xmm0, 96(%rsp)
	.loc	9 131 17                # verify.c:131:17
	movaps	.LCPI8_32(%rip), %xmm0  # xmm0 = [5.118944e+02,5.118225e+02]
	movaps	%xmm0, 112(%rsp)
	.loc	9 132 17                # verify.c:132:17
	movaps	.LCPI8_33(%rip), %xmm0  # xmm0 = [5.118842e+02,5.118452e+02]
	movaps	%xmm0, 128(%rsp)
	.loc	9 133 17                # verify.c:133:17
	movaps	.LCPI8_34(%rip), %xmm0  # xmm0 = [5.118769e+02,5.118649e+02]
	movaps	%xmm0, 144(%rsp)
	.loc	9 134 17                # verify.c:134:17
	movaps	.LCPI8_35(%rip), %xmm0  # xmm0 = [5.118718e+02,5.118821e+02]
	movaps	%xmm0, 160(%rsp)
	.loc	9 135 17                # verify.c:135:17
	movaps	.LCPI8_36(%rip), %xmm0  # xmm0 = [5.118684e+02,5.118970e+02]
	movaps	%xmm0, 176(%rsp)
	.loc	9 136 17                # verify.c:136:17
	movaps	.LCPI8_37(%rip), %xmm0  # xmm0 = [5.118662e+02,5.119099e+02]
	movaps	%xmm0, 192(%rsp)
	.loc	9 137 17                # verify.c:137:17
	movaps	.LCPI8_38(%rip), %xmm0  # xmm0 = [5.118650e+02,5.119211e+02]
	movaps	%xmm0, 208(%rsp)
	.loc	9 138 17                # verify.c:138:17
	movaps	.LCPI8_39(%rip), %xmm0  # xmm0 = [5.118646e+02,5.119308e+02]
	movaps	%xmm0, 224(%rsp)
	.loc	9 139 17                # verify.c:139:17
	movaps	.LCPI8_40(%rip), %xmm0  # xmm0 = [5.118648e+02,5.119391e+02]
	movaps	%xmm0, 240(%rsp)
	.loc	9 140 17                # verify.c:140:17
	movaps	.LCPI8_41(%rip), %xmm0  # xmm0 = [5.118654e+02,5.119464e+02]
	movaps	%xmm0, 256(%rsp)
	.loc	9 141 17                # verify.c:141:17
	movaps	.LCPI8_42(%rip), %xmm0  # xmm0 = [5.118665e+02,5.119526e+02]
	movaps	%xmm0, 272(%rsp)
	.loc	9 142 17                # verify.c:142:17
	movaps	.LCPI8_43(%rip), %xmm0  # xmm0 = [5.118679e+02,5.119580e+02]
	movaps	%xmm0, 288(%rsp)
	.loc	9 143 17                # verify.c:143:17
	movaps	.LCPI8_44(%rip), %xmm0  # xmm0 = [5.118695e+02,5.119627e+02]
	movaps	%xmm0, 304(%rsp)
	.loc	9 144 17                # verify.c:144:17
	movaps	.LCPI8_45(%rip), %xmm0  # xmm0 = [5.118714e+02,5.119667e+02]
	movaps	%xmm0, 320(%rsp)
	.loc	9 145 17                # verify.c:145:17
	movaps	.LCPI8_46(%rip), %xmm0  # xmm0 = [5.118734e+02,5.119701e+02]
	movaps	%xmm0, 336(%rsp)
	.loc	9 146 17                # verify.c:146:17
	movaps	.LCPI8_47(%rip), %xmm0  # xmm0 = [5.118755e+02,5.119730e+02]
	movaps	%xmm0, 352(%rsp)
	.loc	9 147 17                # verify.c:147:17
	movaps	.LCPI8_48(%rip), %xmm0  # xmm0 = [5.118777e+02,5.119755e+02]
	movaps	%xmm0, 368(%rsp)
	.loc	9 148 17                # verify.c:148:17
	movaps	.LCPI8_49(%rip), %xmm0  # xmm0 = [5.118799e+02,5.119776e+02]
	movaps	%xmm0, 384(%rsp)
	.loc	9 149 17                # verify.c:149:17
	movapd	.LCPI8_50(%rip), %xmm0  # xmm0 = [5.118822e+02,5.119794e+02]
	movapd	%xmm0, 400(%rsp)
	movsd	.LCPI8_51(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB8_35
.Ltmp494:
.LBB8_30:                               # %if.else378
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 150 27 discriminator 1 # verify.c:150:27
	cmpl	$4096, %edi             # imm = 0x1000
	jne	.LBB8_49
.Ltmp495:
# BB#31:                                # %if.else378
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$2048, %esi             # imm = 0x800
	jne	.LBB8_49
.Ltmp496:
# BB#32:                                # %if.else378
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	cmpl	$2048, %edx             # imm = 0x800
	jne	.LBB8_49
.Ltmp497:
# BB#33:                                # %if.else378
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	cmpl	$25, %ecx
	jne	.LBB8_49
.Ltmp498:
# BB#34:                                # %if.then386
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 152 17                # verify.c:152:17
	movaps	.LCPI8_0(%rip), %xmm0   # xmm0 = [5.121601e+02,5.117396e+02]
	movaps	%xmm0, 16(%rsp)
	.loc	9 153 17                # verify.c:153:17
	movaps	.LCPI8_1(%rip), %xmm0   # xmm0 = [5.120905e+02,5.118615e+02]
	movaps	%xmm0, 32(%rsp)
	.loc	9 154 17                # verify.c:154:17
	movaps	.LCPI8_2(%rip), %xmm0   # xmm0 = [5.120623e+02,5.119074e+02]
	movaps	%xmm0, 48(%rsp)
	.loc	9 155 17                # verify.c:155:17
	movaps	.LCPI8_3(%rip), %xmm0   # xmm0 = [5.120438e+02,5.119346e+02]
	movaps	%xmm0, 64(%rsp)
	.loc	9 156 17                # verify.c:156:17
	movaps	.LCPI8_4(%rip), %xmm0   # xmm0 = [5.120312e+02,5.119551e+02]
	movaps	%xmm0, 80(%rsp)
	.loc	9 157 17                # verify.c:157:17
	movaps	.LCPI8_5(%rip), %xmm0   # xmm0 = [5.120226e+02,5.119720e+02]
	movaps	%xmm0, 96(%rsp)
	.loc	9 158 17                # verify.c:158:17
	movaps	.LCPI8_6(%rip), %xmm0   # xmm0 = [5.120169e+02,5.119861e+02]
	movaps	%xmm0, 112(%rsp)
	.loc	9 159 17                # verify.c:159:17
	movaps	.LCPI8_7(%rip), %xmm0   # xmm0 = [5.120131e+02,5.119979e+02]
	movaps	%xmm0, 128(%rsp)
	.loc	9 160 17                # verify.c:160:17
	movaps	.LCPI8_8(%rip), %xmm0   # xmm0 = [5.120105e+02,5.120078e+02]
	movaps	%xmm0, 144(%rsp)
	.loc	9 161 17                # verify.c:161:17
	movaps	.LCPI8_9(%rip), %xmm0   # xmm0 = [5.120085e+02,5.120159e+02]
	movaps	%xmm0, 160(%rsp)
	.loc	9 162 17                # verify.c:162:17
	movaps	.LCPI8_10(%rip), %xmm0  # xmm0 = [5.120069e+02,5.120227e+02]
	movaps	%xmm0, 176(%rsp)
	.loc	9 163 17                # verify.c:163:17
	movaps	.LCPI8_11(%rip), %xmm0  # xmm0 = [5.120055e+02,5.120284e+02]
	movaps	%xmm0, 192(%rsp)
	.loc	9 164 17                # verify.c:164:17
	movaps	.LCPI8_12(%rip), %xmm0  # xmm0 = [5.120042e+02,5.120331e+02]
	movaps	%xmm0, 208(%rsp)
	.loc	9 165 17                # verify.c:165:17
	movaps	.LCPI8_13(%rip), %xmm0  # xmm0 = [5.120029e+02,5.120371e+02]
	movaps	%xmm0, 224(%rsp)
	.loc	9 166 17                # verify.c:166:17
	movaps	.LCPI8_14(%rip), %xmm0  # xmm0 = [5.120015e+02,5.120404e+02]
	movaps	%xmm0, 240(%rsp)
	.loc	9 167 17                # verify.c:167:17
	movaps	.LCPI8_15(%rip), %xmm0  # xmm0 = [5.120002e+02,5.120432e+02]
	movaps	%xmm0, 256(%rsp)
	.loc	9 168 17                # verify.c:168:17
	movaps	.LCPI8_16(%rip), %xmm0  # xmm0 = [5.119988e+02,5.120456e+02]
	movaps	%xmm0, 272(%rsp)
	.loc	9 169 17                # verify.c:169:17
	movaps	.LCPI8_17(%rip), %xmm0  # xmm0 = [5.119974e+02,5.120475e+02]
	movaps	%xmm0, 288(%rsp)
	.loc	9 170 17                # verify.c:170:17
	movaps	.LCPI8_18(%rip), %xmm0  # xmm0 = [5.119959e+02,5.120492e+02]
	movaps	%xmm0, 304(%rsp)
	.loc	9 171 17                # verify.c:171:17
	movaps	.LCPI8_19(%rip), %xmm0  # xmm0 = [5.119945e+02,5.120507e+02]
	movaps	%xmm0, 320(%rsp)
	.loc	9 172 17                # verify.c:172:17
	movaps	.LCPI8_20(%rip), %xmm0  # xmm0 = [5.119931e+02,5.120519e+02]
	movaps	%xmm0, 336(%rsp)
	.loc	9 173 17                # verify.c:173:17
	movaps	.LCPI8_21(%rip), %xmm0  # xmm0 = [5.119917e+02,5.120529e+02]
	movaps	%xmm0, 352(%rsp)
	.loc	9 174 17                # verify.c:174:17
	movaps	.LCPI8_22(%rip), %xmm0  # xmm0 = [5.119903e+02,5.120537e+02]
	movaps	%xmm0, 368(%rsp)
	.loc	9 175 17                # verify.c:175:17
	movaps	.LCPI8_23(%rip), %xmm0  # xmm0 = [5.119889e+02,5.120544e+02]
	movaps	%xmm0, 384(%rsp)
	.loc	9 176 17                # verify.c:176:17
	movapd	.LCPI8_24(%rip), %xmm0  # xmm0 = [5.119876e+02,5.120550e+02]
	movapd	%xmm0, 400(%rsp)
	movsd	.LCPI8_25(%rip), %xmm1  # xmm1 = mem[0],zero
.Ltmp499:
.LBB8_35:                               # %if.end493
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 183 7                 # verify.c:183:7
	cmpl	$0, (%r14)
	je	.LBB8_48
.Ltmp500:
# BB#36:                                # %for.cond.preheader
	#DEBUG_VALUE: verify:n1 <- %EDI
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:cksum <- %R15
	.loc	9 184 21 discriminator 1 # verify.c:184:21
	testl	%ecx, %ecx
	jle	.LBB8_46
.Ltmp501:
# BB#37:                                # %for.body.preheader
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 185 13                # verify.c:185:13
	movslq	%ecx, %r12
	addq	$24, %r15
.Ltmp502:
	leaq	16(%rsp), %r13
	xorl	%ebx, %ebx
.Ltmp503:
	.loc	9 187 17                # verify.c:187:17
	movsd	.LCPI8_115(%rip), %xmm6 # xmm6 = mem[0],zero
	jmp	.LBB8_40
.Ltmp504:
	.p2align	4, 0x90
.LBB8_39:                               # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB8_40 Depth=1
	#DEBUG_VALUE: verify:err <- %XMM1
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	.loc	9 184 21 discriminator 1 # verify.c:184:21
	addq	$16, %r15
.Ltmp505:
	.loc	9 185 13                # verify.c:185:13
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
.Ltmp506:
	.loc	9 184 21 discriminator 1 # verify.c:184:21
	addq	$16, %r13
.Ltmp507:
.LBB8_40:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	9 185 13                # verify.c:185:13
	movsd	(%r13), %xmm2           # xmm2 = mem[0],zero
.Ltmp508:
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=0 size=64] <- %XMM2
	#DEBUG_VALUE: dcmplx_div:c <- %XMM2
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=0 size=64] <- %XMM2
	#DEBUG_VALUE: dcmplx_div:c <- %XMM2
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=0 size=64] <- %XMM2
	#DEBUG_VALUE: dcmplx_div:c <- %XMM2
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=0 size=64] <- %XMM2
	#DEBUG_VALUE: dcmplx_div:c <- %XMM2
	movsd	-8(%r15), %xmm3         # xmm3 = mem[0],zero
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm3
.Ltmp509:
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=0 size=64] <- %XMM3
	#DEBUG_VALUE: dcmplx_div:a <- %XMM3
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=0 size=64] <- %XMM3
	#DEBUG_VALUE: dcmplx_div:a <- %XMM3
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=0 size=64] <- %XMM3
	#DEBUG_VALUE: dcmplx_div:a <- %XMM3
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=0 size=64] <- %XMM3
	#DEBUG_VALUE: dcmplx_div:a <- %XMM3
	subsd	%xmm1, %xmm0
.Ltmp510:
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:b <- %XMM0
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:b <- %XMM0
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:b <- %XMM0
	#DEBUG_VALUE: dcmplx_div:z1 [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:b <- %XMM0
	.file	10 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT/./global.h"
	.loc	10 74 27                # ./global.h:74:27
	movapd	%xmm1, %xmm4
	.loc	10 75 19                # ./global.h:75:19
	movapd	%xmm2, %xmm5
	mulsd	%xmm3, %xmm5
	.loc	10 76 25                # ./global.h:76:25
	mulsd	%xmm1, %xmm3
.Ltmp511:
	.loc	10 75 25                # ./global.h:75:25
	mulsd	%xmm0, %xmm1
	.loc	10 76 19                # ./global.h:76:19
	mulsd	%xmm2, %xmm0
.Ltmp512:
	.loc	10 74 21                # ./global.h:74:21
	mulsd	%xmm2, %xmm2
.Ltmp513:
	.loc	10 74 27 is_stmt 0      # ./global.h:74:27
	mulsd	%xmm4, %xmm4
	.loc	10 74 24                # ./global.h:74:24
	addsd	%xmm2, %xmm4
.Ltmp514:
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	.loc	10 75 22 is_stmt 1      # ./global.h:75:22
	addsd	%xmm5, %xmm1
	.loc	10 75 29 is_stmt 0      # ./global.h:75:29
	divsd	%xmm4, %xmm1
.Ltmp515:
	#DEBUG_VALUE: dcmplx_div:real <- %XMM1
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=0 size=64] <- %XMM1
	#DEBUG_VALUE: dcmplx_div:real <- %XMM1
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=0 size=64] <- %XMM1
	#DEBUG_VALUE: dcmplx_div:real <- %XMM1
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=0 size=64] <- %XMM1
	#DEBUG_VALUE: dcmplx_div:real <- %XMM1
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=0 size=64] <- %XMM1
	.loc	10 76 22 is_stmt 1      # ./global.h:76:22
	subsd	%xmm3, %xmm0
	.loc	10 76 29 is_stmt 0      # ./global.h:76:29
	divsd	%xmm4, %xmm0
.Ltmp516:
	#DEBUG_VALUE: dcmplx_div:imag <- %XMM0
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:imag <- %XMM0
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:imag <- %XMM0
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=64 size=64] <- %XMM0
	#DEBUG_VALUE: dcmplx_div:imag <- %XMM0
	#DEBUG_VALUE: dcmplx_div:result [bit_piece offset=64 size=64] <- %XMM0
	.loc	9 185 13 is_stmt 1      # verify.c:185:13
	mulsd	%xmm1, %xmm1
.Ltmp517:
	mulsd	%xmm0, %xmm0
.Ltmp518:
	addsd	%xmm1, %xmm0
	.loc	9 185 13 is_stmt 0 discriminator 4 # verify.c:185:13
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
.Ltmp519:
	.loc	9 47 19 is_stmt 1       # verify.c:47:19
	ucomisd	%xmm1, %xmm1
.Ltmp520:
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=64 size=64] <- %XMM1
	jnp	.LBB8_42
.Ltmp521:
# BB#41:                                # %call.sqrt
                                        #   in Loop: Header=BB8_40 Depth=1
	#DEBUG_VALUE: dcmplx_div:z2 [bit_piece offset=64 size=64] <- %XMM1
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	callq	sqrt
.Ltmp522:
	.loc	9 187 17                # verify.c:187:17
	movsd	.LCPI8_115(%rip), %xmm6 # xmm6 = mem[0],zero
.Ltmp523:
	.loc	9 47 19                 # verify.c:47:19
	movapd	%xmm0, %xmm1
.Ltmp524:
.LBB8_42:                               # %for.body.split
                                        #   in Loop: Header=BB8_40 Depth=1
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: verify:err <- %XMM1
	.loc	9 187 11                # verify.c:187:11
	ucomisd	%xmm1, %xmm6
	jb	.LBB8_43
.Ltmp525:
# BB#38:                                # %for.cond
                                        #   in Loop: Header=BB8_40 Depth=1
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: verify:err <- %XMM1
	.loc	9 184 21 discriminator 1 # verify.c:184:21
	incq	%rbx
	.loc	9 184 5 is_stmt 0 discriminator 1 # verify.c:184:5
	cmpq	%r12, %rbx
	jl	.LBB8_39
.Ltmp526:
# BB#45:                                # %for.end
	#DEBUG_VALUE: verify:err <- %XMM1
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	.loc	9 193 9 is_stmt 1       # verify.c:193:9
	cmpl	$0, (%r14)
	je	.LBB8_44
.Ltmp527:
.LBB8_46:                               # %if.then588
	.loc	9 194 7                 # verify.c:194:7
	movl	$.Lstr.4, %edi
	jmp	.LBB8_47
.Ltmp528:
.LBB8_43:                               # %for.end.thread
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: verify:err <- %XMM1
	.loc	9 188 19                # verify.c:188:19
	movl	$0, (%r14)
.Ltmp529:
.LBB8_44:                               # %if.else590
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: dcmplx_div:divisor <- %XMM4
	#DEBUG_VALUE: verify:err <- %XMM1
	.loc	9 196 7                 # verify.c:196:7
	movl	$.Lstr.3, %edi
.Ltmp530:
.LBB8_47:                               # %if.end593
	callq	puts
.Ltmp531:
.LBB8_48:                               # %if.end593
	.loc	9 199 1                 # verify.c:199:1
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB8_49:                               # %if.end493.thread
.Ltmp532:
	#DEBUG_VALUE: verify:cksum <- %R15
	#DEBUG_VALUE: verify:verified <- %R14
	#DEBUG_VALUE: verify:nt <- %ECX
	#DEBUG_VALUE: verify:n3 <- %EDX
	#DEBUG_VALUE: verify:n2 <- %ESI
	#DEBUG_VALUE: verify:n1 <- %EDI
	.loc	9 178 5                 # verify.c:178:5
	movl	$.Lstr.30, %edi
.Ltmp533:
	callq	puts
	.loc	9 179 15                # verify.c:179:15
	movl	$0, (%r14)
	jmp	.LBB8_48
.Ltmp534:
.Lfunc_end8:
	.size	verify, .Lfunc_end8-verify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_0:
	.quad	4664568617600556000     # double 7136.4437639778189
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin9:
	.loc	4 51 0                  # mainft.c:51:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	4 58 13 prologue_end    # mainft.c:58:13
	subq	$104, %rsp
.Ltmp535:
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: main:argc <- %EDI
	#DEBUG_VALUE: main:argv <- %RSI
	movl	$.L.str.16, %edi
.Ltmp536:
	movl	$.L.str.1.17, %esi
.Ltmp537:
	callq	fopen
.Ltmp538:
	#DEBUG_VALUE: main:fp <- %RAX
	.loc	4 58 39 is_stmt 0       # mainft.c:58:39
	testq	%rax, %rax
.Ltmp539:
	.loc	4 58 7                  # mainft.c:58:7
	je	.LBB9_2
.Ltmp540:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: main:fp <- %RAX
	.loc	4 59 20 is_stmt 1       # mainft.c:59:20
	movl	$1, timers_enabled(%rip)
	.loc	4 60 5                  # mainft.c:60:5
	movq	%rax, %rdi
	callq	fclose
.Ltmp541:
	jmp	.LBB9_3
.Ltmp542:
.LBB9_2:                                # %if.else
	#DEBUG_VALUE: main:fp <- %RAX
	.loc	4 62 20                 # mainft.c:62:20
	movl	$0, timers_enabled(%rip)
.Ltmp543:
.LBB9_3:                                # %if.end
	#DEBUG_VALUE: main:niter <- 6
	.loc	4 67 3                  # mainft.c:67:3
	movl	$.Lstr.18, %edi
	callq	puts
	.loc	4 68 3                  # mainft.c:68:3
	movl	$.L.str.3.19, %edi
	movl	$256, %esi              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	movl	$128, %ecx
	xorl	%eax, %eax
	callq	printf
	.loc	4 69 3                  # mainft.c:69:3
	movl	$.L.str.4.20, %edi
	movl	$6, %esi
	xorl	%eax, %eax
	callq	printf
	.loc	4 70 3                  # mainft.c:70:3
	movl	$10, %edi
	callq	putchar
	leaq	96(%rsp), %rsi
.Ltmp544:
	#DEBUG_VALUE: main:total_time <- [%RSI+0]
	#DEBUG_VALUE: main:Class <- 65
	leaq	92(%rsp), %rdx
.Ltmp545:
	#DEBUG_VALUE: main:verified <- [%RDX+0]
	.loc	4 74 3                  # mainft.c:74:3
	movl	$6, %edi
	callq	appft
.Ltmp546:
	.loc	4 76 7                  # mainft.c:76:7
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
.Ltmp547:
	#DEBUG_VALUE: main:total_time <- %XMM0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_4
	jnp	.LBB9_5
.Ltmp548:
.LBB9_4:                                # %select.true.sink
	#DEBUG_VALUE: main:total_time <- %XMM0
	#DEBUG_VALUE: main:verified <- [%RDX+0]
	.loc	4 80 13                 # mainft.c:80:13
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
.Ltmp549:
.LBB9_5:                                # %select.end
	#DEBUG_VALUE: main:total_time <- %XMM0
	#DEBUG_VALUE: main:verified <- [%RDX+0]
	.loc	4 86 65                 # mainft.c:86:65
	movl	92(%rsp), %eax
.Ltmp550:
	#DEBUG_VALUE: main:verified <- %EAX
	.loc	4 85 3                  # mainft.c:85:3
	movl	%eax, 8(%rsp)
	movq	$.L.str.12.27, 80(%rsp)
	movq	$.L.str.10.25, 72(%rsp)
	movq	$.L.str.10.25, 64(%rsp)
	movq	$.L.str.11.26, 56(%rsp)
	movq	$.L.str.10.25, 48(%rsp)
	movq	$.L.str.10.25, 40(%rsp)
	movq	$.L.str.10.25, 32(%rsp)
	movq	$.L.str.9.24, 24(%rsp)
	movq	$.L.str.8.23, 16(%rsp)
	movq	$.L.str.7.22, (%rsp)
	movl	$.L.str.6.21, %edi
	movl	$65, %esi
	movl	$256, %edx              # imm = 0x100
	movl	$256, %ecx              # imm = 0x100
	movl	$128, %r8d
	movl	$6, %r9d
	callq	print_results
	.loc	4 91 1                  # mainft.c:91:1
	xorl	%eax, %eax
.Ltmp551:
	addq	$104, %rsp
	retq
.Ltmp552:
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI10_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI10_1:
	.quad	4710765210229538816     # double 8388608
.LCPI10_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI10_3:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	randlc
	.p2align	4, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
.Lfunc_begin10:
	.file	11 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/randdp.c"
	.loc	11 5 0                  # randdp.c:5:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: randlc:x <- %RDI
	#DEBUG_VALUE: randlc:a <- %XMM0
	#DEBUG_VALUE: randlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: randlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: randlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: randlc:t46 <- 7.036874e+13
	.loc	11 47 12 prologue_end   # randdp.c:47:12
	movsd	.LCPI10_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
.Ltmp553:
	#DEBUG_VALUE: randlc:t1 <- %XMM1
	.loc	11 48 8                 # randdp.c:48:8
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm2
.Ltmp554:
	#DEBUG_VALUE: randlc:a1 <- %XMM2
	.loc	11 49 16                # randdp.c:49:16
	movsd	.LCPI10_1(%rip), %xmm4  # xmm4 = mem[0],zero
	movapd	%xmm2, %xmm1
.Ltmp555:
	mulsd	%xmm4, %xmm1
	.loc	11 49 10 is_stmt 0      # randdp.c:49:10
	subsd	%xmm1, %xmm0
.Ltmp556:
	#DEBUG_VALUE: randlc:a2 <- %XMM0
	.loc	11 56 15 is_stmt 1      # randdp.c:56:15
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	.loc	11 56 12 is_stmt 0      # randdp.c:56:12
	movapd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
.Ltmp557:
	#DEBUG_VALUE: randlc:t1 <- %XMM5
	.loc	11 57 8 is_stmt 1       # randdp.c:57:8
	cvttsd2si	%xmm5, %eax
	xorps	%xmm5, %xmm5
.Ltmp558:
	cvtsi2sdl	%eax, %xmm5
	.loc	11 59 21                # randdp.c:59:21
	movapd	%xmm0, %xmm6
	mulsd	%xmm5, %xmm6
.Ltmp559:
	#DEBUG_VALUE: randlc:x1 <- %XMM5
	.loc	11 58 17                # randdp.c:58:17
	mulsd	%xmm4, %xmm5
.Ltmp560:
	.loc	11 58 11 is_stmt 0      # randdp.c:58:11
	subsd	%xmm5, %xmm1
.Ltmp561:
	#DEBUG_VALUE: randlc:x2 <- %XMM1
	.loc	11 59 11 is_stmt 1      # randdp.c:59:11
	mulsd	%xmm1, %xmm2
.Ltmp562:
	.loc	11 59 16 is_stmt 0      # randdp.c:59:16
	addsd	%xmm6, %xmm2
.Ltmp563:
	#DEBUG_VALUE: randlc:t1 <- %XMM2
	.loc	11 60 19 is_stmt 1      # randdp.c:60:19
	mulsd	%xmm2, %xmm3
	.loc	11 60 8 is_stmt 0       # randdp.c:60:8
	cvttsd2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
.Ltmp564:
	#DEBUG_VALUE: randlc:t2 <- %XMM3
	.loc	11 61 16 is_stmt 1      # randdp.c:61:16
	mulsd	%xmm4, %xmm3
.Ltmp565:
	.loc	11 61 10 is_stmt 0      # randdp.c:61:10
	subsd	%xmm3, %xmm2
.Ltmp566:
	#DEBUG_VALUE: randlc:z <- %XMM2
	.loc	11 62 12 is_stmt 1      # randdp.c:62:12
	mulsd	%xmm4, %xmm2
.Ltmp567:
	.loc	11 62 21 is_stmt 0      # randdp.c:62:21
	mulsd	%xmm0, %xmm1
.Ltmp568:
	.loc	11 62 16                # randdp.c:62:16
	addsd	%xmm2, %xmm1
.Ltmp569:
	#DEBUG_VALUE: randlc:t3 <- %XMM1
	.loc	11 63 19 is_stmt 1      # randdp.c:63:19
	movsd	.LCPI10_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm0
.Ltmp570:
	mulsd	%xmm2, %xmm0
	.loc	11 63 8 is_stmt 0       # randdp.c:63:8
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
.Ltmp571:
	#DEBUG_VALUE: randlc:t4 <- %XMM0
	.loc	11 64 17 is_stmt 1      # randdp.c:64:17
	mulsd	.LCPI10_3(%rip), %xmm0
.Ltmp572:
	.loc	11 64 11 is_stmt 0      # randdp.c:64:11
	addsd	%xmm1, %xmm0
	.loc	11 64 6                 # randdp.c:64:6
	movsd	%xmm0, (%rdi)
	.loc	11 65 11 is_stmt 1      # randdp.c:65:11
	mulsd	%xmm2, %xmm0
.Ltmp573:
	#DEBUG_VALUE: randlc:r <- %XMM0
	.loc	11 67 3                 # randdp.c:67:3
	retq
.Ltmp574:
.Lfunc_end10:
	.size	randlc, .Lfunc_end10-randlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI11_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI11_2:
	.quad	4710765210229538816     # double 8388608
.LCPI11_3:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI11_4:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	vranlc
	.p2align	4, 0x90
	.type	vranlc,@function
vranlc:                                 # @vranlc
.Lfunc_begin11:
	.loc	11 72 0                 # randdp.c:72:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: vranlc:n <- %EDI
	#DEBUG_VALUE: vranlc:x <- %RSI
	#DEBUG_VALUE: vranlc:a <- %XMM0
	#DEBUG_VALUE: vranlc:y <- %RDX
	#DEBUG_VALUE: vranlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: vranlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: vranlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: vranlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: vranlc:i <- 0
	.loc	11 122 3 prologue_end discriminator 1 # randdp.c:122:3
	testl	%edi, %edi
	jle	.LBB11_3
.Ltmp575:
# BB#1:
	#DEBUG_VALUE: vranlc:y <- %RDX
	#DEBUG_VALUE: vranlc:a <- %XMM0
	#DEBUG_VALUE: vranlc:x <- %RSI
	#DEBUG_VALUE: vranlc:n <- %EDI
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.loc	11 115 12               # randdp.c:115:12
	mulsd	%xmm0, %xmm1
.Ltmp576:
	#DEBUG_VALUE: vranlc:t1 <- %XMM1
	.loc	11 116 8                # randdp.c:116:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
.Ltmp577:
	cvtsi2sdl	%eax, %xmm1
.Ltmp578:
	#DEBUG_VALUE: vranlc:a1 <- %XMM1
	movsd	.LCPI11_1(%rip), %xmm5  # xmm5 = mem[0],zero
	.loc	11 117 16               # randdp.c:117:16
	mulsd	%xmm1, %xmm5
	.loc	11 117 10 is_stmt 0     # randdp.c:117:10
	addsd	%xmm0, %xmm5
.Ltmp579:
	#DEBUG_VALUE: vranlc:a2 <- %XMM5
	.loc	11 128 14 is_stmt 1     # randdp.c:128:14
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
.Ltmp580:
	.loc	11 130 19               # randdp.c:130:19
	movsd	.LCPI11_2(%rip), %xmm3  # xmm3 = mem[0],zero
	.loc	11 135 21               # randdp.c:135:21
	movsd	.LCPI11_3(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI11_4(%rip), %xmm8  # xmm8 = mem[0],zero
.Ltmp581:
	.p2align	4, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	11 128 17               # randdp.c:128:17
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	.loc	11 128 14 is_stmt 0     # randdp.c:128:14
	movapd	%xmm6, %xmm7
	mulsd	%xmm0, %xmm7
.Ltmp582:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	11 129 10 is_stmt 1     # randdp.c:129:10
	cvttsd2si	%xmm7, %eax
	xorps	%xmm7, %xmm7
.Ltmp583:
	cvtsi2sdl	%eax, %xmm7
	.loc	11 131 23               # randdp.c:131:23
	movapd	%xmm5, %xmm2
	mulsd	%xmm7, %xmm2
.Ltmp584:
	#DEBUG_VALUE: vranlc:x1 <- %XMM7
	.loc	11 130 19               # randdp.c:130:19
	mulsd	%xmm3, %xmm7
.Ltmp585:
	.loc	11 130 13 is_stmt 0     # randdp.c:130:13
	subsd	%xmm7, %xmm6
.Ltmp586:
	#DEBUG_VALUE: vranlc:x2 <- %XMM6
	.loc	11 131 13 is_stmt 1     # randdp.c:131:13
	movapd	%xmm1, %xmm7
	mulsd	%xmm6, %xmm7
	.loc	11 131 18 is_stmt 0     # randdp.c:131:18
	addsd	%xmm2, %xmm7
.Ltmp587:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	11 132 21 is_stmt 1     # randdp.c:132:21
	movapd	%xmm7, %xmm2
	mulsd	%xmm0, %xmm2
	.loc	11 132 10 is_stmt 0     # randdp.c:132:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp588:
	#DEBUG_VALUE: vranlc:t2 <- %XMM2
	.loc	11 133 18 is_stmt 1     # randdp.c:133:18
	mulsd	%xmm3, %xmm2
.Ltmp589:
	.loc	11 133 12 is_stmt 0     # randdp.c:133:12
	subsd	%xmm2, %xmm7
.Ltmp590:
	#DEBUG_VALUE: vranlc:z <- %XMM7
	.loc	11 134 14 is_stmt 1     # randdp.c:134:14
	mulsd	%xmm3, %xmm7
.Ltmp591:
	.loc	11 134 23 is_stmt 0     # randdp.c:134:23
	mulsd	%xmm5, %xmm6
.Ltmp592:
	.loc	11 134 18               # randdp.c:134:18
	addsd	%xmm7, %xmm6
.Ltmp593:
	#DEBUG_VALUE: vranlc:t3 <- %XMM6
	.loc	11 135 21 is_stmt 1     # randdp.c:135:21
	movapd	%xmm6, %xmm2
	mulsd	%xmm4, %xmm2
	.loc	11 135 10 is_stmt 0     # randdp.c:135:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp594:
	#DEBUG_VALUE: vranlc:t4 <- %XMM2
	.loc	11 136 19 is_stmt 1     # randdp.c:136:19
	mulsd	%xmm8, %xmm2
.Ltmp595:
	.loc	11 136 13 is_stmt 0     # randdp.c:136:13
	addsd	%xmm6, %xmm2
	.loc	11 136 8                # randdp.c:136:8
	movsd	%xmm2, (%rsi)
	.loc	11 137 16 is_stmt 1     # randdp.c:137:16
	mulsd	%xmm4, %xmm2
	.loc	11 137 10 is_stmt 0     # randdp.c:137:10
	movsd	%xmm2, (%rdx)
.Ltmp596:
	.loc	11 122 3 is_stmt 1 discriminator 1 # randdp.c:122:3
	addq	$8, %rdx
	decl	%edi
	jne	.LBB11_2
.Ltmp597:
.LBB11_3:                               # %for.end
	.loc	11 141 1                # randdp.c:141:1
	retq
.Ltmp598:
.Lfunc_end11:
	.size	vranlc, .Lfunc_end11-vranlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	print_results
	.p2align	4, 0x90
	.type	print_results,@function
print_results:                          # @print_results
.Lfunc_begin12:
	.file	12 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/print_results.c"
	.loc	12 10 0                 # print_results.c:10:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp599:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp600:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp601:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp602:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp603:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp604:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp605:
	.cfi_def_cfa_offset 96
.Ltmp606:
	.cfi_offset %rbx, -56
.Ltmp607:
	.cfi_offset %r12, -48
.Ltmp608:
	.cfi_offset %r13, -40
.Ltmp609:
	.cfi_offset %r14, -32
.Ltmp610:
	.cfi_offset %r15, -24
.Ltmp611:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: print_results:name <- %RDI
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:n1 <- %EDX
	#DEBUG_VALUE: print_results:n2 <- %ECX
	#DEBUG_VALUE: print_results:n3 <- %R8D
	#DEBUG_VALUE: print_results:niter <- %R9D
	#DEBUG_VALUE: print_results:t <- %XMM0
	#DEBUG_VALUE: print_results:mops <- %XMM1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
.Ltmp612:
	#DEBUG_VALUE: print_results:mops <- [%RSP+8]
	movsd	%xmm0, (%rsp)           # 8-byte Spill
.Ltmp613:
	#DEBUG_VALUE: print_results:t <- [%RSP+0]
	movl	%r9d, %r14d
.Ltmp614:
	#DEBUG_VALUE: print_results:niter <- %R14D
	movl	%r8d, %r12d
.Ltmp615:
	#DEBUG_VALUE: print_results:n3 <- %R12D
	movl	%ecx, %r13d
.Ltmp616:
	#DEBUG_VALUE: print_results:n2 <- %R13D
	movl	%edx, %r15d
.Ltmp617:
	#DEBUG_VALUE: print_results:n1 <- %R15D
	movl	%esi, %ebx
.Ltmp618:
	#DEBUG_VALUE: print_results:class <- %EBX
	movq	%rdi, %rbp
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:verified <- undef
.Ltmp619:
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	12 14 3 prologue_end    # print_results.c:14:3
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
.Ltmp620:
	.loc	12 15 3                 # print_results.c:15:3
	movl	$.L.str.1.18, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
.Ltmp621:
	#DEBUG_VALUE: print_results:class <- %ESI
	callq	printf
.Ltmp622:
	.loc	12 22 20                # print_results.c:22:20
	movl	%r12d, %eax
	orl	%r13d, %eax
	je	.LBB12_1
.Ltmp623:
# BB#7:                                 # %if.else30
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	12 36 5                 # print_results.c:36:5
	movl	$.L.str.5.22, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp624:
	movl	%r13d, %edx
	movl	%r12d, %ecx
	callq	printf
	jmp	.LBB12_8
.Ltmp625:
.LBB12_1:                               # %if.then
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	12 23 29                # print_results.c:23:29
	movzbl	(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB12_6
.Ltmp626:
# BB#2:                                 # %land.lhs.true8
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	12 23 10 is_stmt 0 discriminator 1 # print_results.c:23:10
	movzbl	1(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB12_6
.Ltmp627:
# BB#3:                                 # %if.then13
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	12 24 33 is_stmt 1      # print_results.c:24:33
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	%r15d, %edi
	callq	ldexp
	leaq	16(%rsp), %rdi
	.loc	12 24 7 is_stmt 0 discriminator 1 # print_results.c:24:7
	movl	$.L.str.2.19, %esi
.Ltmp628:
	movb	$1, %al
	callq	sprintf
	movl	$15, %eax
.Ltmp629:
	#DEBUG_VALUE: print_results:j <- 14
	.loc	12 26 12 is_stmt 1      # print_results.c:26:12
	movzbl	30(%rsp), %ecx
	cmpl	$46, %ecx
	jne	.LBB12_5
.Ltmp630:
# BB#4:                                 # %if.then21
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	12 27 17                # print_results.c:27:17
	movb	$32, 30(%rsp)
	movl	$14, %eax
.Ltmp631:
	#DEBUG_VALUE: print_results:j <- 13
.LBB12_5:                               # %if.end
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	12 30 17                # print_results.c:30:17
	movb	$0, 16(%rsp,%rax)
	leaq	16(%rsp), %rsi
	.loc	12 31 7                 # print_results.c:31:7
	movl	$.L.str.3.20, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB12_8
.Ltmp632:
.LBB12_6:                               # %if.else
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	12 33 7                 # print_results.c:33:7
	movl	$.L.str.4.21, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp633:
	callq	printf
.Ltmp634:
.LBB12_8:                               # %if.end32
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:cs7 <- undef
	movq	168(%rsp), %r12
.Ltmp635:
	#DEBUG_VALUE: print_results:cs6 <- %R12
	movq	160(%rsp), %r13
.Ltmp636:
	#DEBUG_VALUE: print_results:cs5 <- %R13
	movq	152(%rsp), %r15
.Ltmp637:
	#DEBUG_VALUE: print_results:cs4 <- %R15
	movq	144(%rsp), %rbp
.Ltmp638:
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	movq	136(%rsp), %rbx
	#DEBUG_VALUE: print_results:npbversion <- undef
	#DEBUG_VALUE: print_results:compiletime <- undef
	#DEBUG_VALUE: print_results:cs1 <- undef
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	.loc	12 39 3                 # print_results.c:39:3
	movl	$.L.str.6.23, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	printf
	.loc	12 40 3                 # print_results.c:40:3
	movl	$.L.str.7.24, %edi
	movb	$1, %al
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	12 41 3                 # print_results.c:41:3
	movl	$.L.str.8.25, %edi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	12 42 3                 # print_results.c:42:3
	movl	$.L.str.9.26, %edi
	xorl	%eax, %eax
	movq	96(%rsp), %rsi
	callq	printf
.Ltmp639:
	.loc	12 46 5                 # print_results.c:46:5
	movl	$.L.str.10.27, %edi
	.loc	12 43 8                 # print_results.c:43:8
	cmpl	$0, 104(%rsp)
.Ltmp640:
	.loc	12 43 8 is_stmt 0       # print_results.c:43:8
	je	.LBB12_10
.Ltmp641:
# BB#9:                                 # %if.then37
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	12 44 5 is_stmt 1       # print_results.c:44:5
	movl	$.L.str.11.28, %esi
	jmp	.LBB12_11
.Ltmp642:
.LBB12_10:                              # %if.else39
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	12 46 5                 # print_results.c:46:5
	movl	$.L.str.12.29, %esi
.Ltmp643:
.LBB12_11:                              # %if.end41
	#DEBUG_VALUE: print_results:cs6 <- %R12
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:niter <- %R14D
	xorl	%eax, %eax
	callq	printf
	movq	176(%rsp), %r14
.Ltmp644:
	movq	112(%rsp), %rsi
.Ltmp645:
	.loc	12 47 3                 # print_results.c:47:3
	movl	$.L.str.13.30, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	12 48 3                 # print_results.c:48:3
	movl	$.L.str.14.31, %edi
	xorl	%eax, %eax
	movq	120(%rsp), %rsi
	callq	printf
	.loc	12 50 3                 # print_results.c:50:3
	movl	$.L.str.15.32, %edi
	xorl	%eax, %eax
	movq	128(%rsp), %rsi
	callq	printf
	.loc	12 52 3                 # print_results.c:52:3
	movl	$.L.str.16.33, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	.loc	12 53 3                 # print_results.c:53:3
	movl	$.L.str.17.34, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
	.loc	12 54 3                 # print_results.c:54:3
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	.loc	12 55 3                 # print_results.c:55:3
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	printf
	.loc	12 56 3                 # print_results.c:56:3
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	printf
	.loc	12 57 3                 # print_results.c:57:3
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	.loc	12 59 3                 # print_results.c:59:3
	movl	$.Lstr.35, %edi
	callq	puts
	.loc	12 65 1                 # print_results.c:65:1
	addq	$40, %rsp
	popq	%rbx
.Ltmp646:
	popq	%r12
.Ltmp647:
	popq	%r13
.Ltmp648:
	popq	%r14
	popq	%r15
.Ltmp649:
	popq	%rbp
.Ltmp650:
	retq
.Ltmp651:
.Lfunc_end12:
	.size	print_results, .Lfunc_end12-print_results
	.cfi_endproc

	.globl	timer_clear
	.p2align	4, 0x90
	.type	timer_clear,@function
timer_clear:                            # @timer_clear
.Lfunc_begin13:
	.loc	6 26 0                  # c_timers.c:26:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_clear:n <- %EDI
	.loc	6 27 5 prologue_end     # c_timers.c:27:5
	movslq	%edi, %rax
	.loc	6 27 16 is_stmt 0       # c_timers.c:27:16
	movq	$0, elapsed(,%rax,8)
	.loc	6 28 1 is_stmt 1        # c_timers.c:28:1
	retq
.Ltmp652:
.Lfunc_end13:
	.size	timer_clear, .Lfunc_end13-timer_clear
	.cfi_endproc

	.globl	timer_start
	.p2align	4, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
.Lfunc_begin14:
	.loc	6 35 0                  # c_timers.c:35:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp653:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp654:
	.cfi_def_cfa_offset 32
.Ltmp655:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_start:n <- %EDI
	movl	%edi, %ebx
.Ltmp656:
	#DEBUG_VALUE: timer_start:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp657:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	6 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	6 16 13                 # c_timers.c:16:13
	movq	8(%rsp), %rax
.Ltmp658:
	.loc	6 36 5                  # c_timers.c:36:5
	movslq	%ebx, %rcx
	.loc	6 36 14 is_stmt 0       # c_timers.c:36:14
	movq	%rax, start(,%rcx,8)
	.loc	6 37 1 is_stmt 1        # c_timers.c:37:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp659:
	retq
.Ltmp660:
.Lfunc_end14:
	.size	timer_start, .Lfunc_end14-timer_start
	.cfi_endproc

	.globl	timer_stop
	.p2align	4, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
.Lfunc_begin15:
	.loc	6 44 0                  # c_timers.c:44:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp661:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp662:
	.cfi_def_cfa_offset 32
.Ltmp663:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_stop:n <- %EDI
	movl	%edi, %ebx
.Ltmp664:
	#DEBUG_VALUE: timer_stop:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp665:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	6 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	6 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp666:
	#DEBUG_VALUE: elapsed_time:t <- %XMM0
	#DEBUG_VALUE: timer_stop:now <- %XMM0
	.loc	6 48 15                 # c_timers.c:48:15
	movslq	%ebx, %rax
	.loc	6 48 13 is_stmt 0       # c_timers.c:48:13
	subsd	start(,%rax,8), %xmm0
.Ltmp667:
	#DEBUG_VALUE: timer_stop:t <- %XMM0
	.loc	6 49 16 is_stmt 1       # c_timers.c:49:16
	addsd	elapsed(,%rax,8), %xmm0
.Ltmp668:
	movsd	%xmm0, elapsed(,%rax,8)
	.loc	6 51 1                  # c_timers.c:51:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp669:
	retq
.Ltmp670:
.Lfunc_end15:
	.size	timer_stop, .Lfunc_end15-timer_stop
	.cfi_endproc

	.globl	timer_read
	.p2align	4, 0x90
	.type	timer_read,@function
timer_read:                             # @timer_read
.Lfunc_begin16:
	.loc	6 58 0                  # c_timers.c:58:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_read:n <- %EDI
	.loc	6 59 13 prologue_end    # c_timers.c:59:13
	movslq	%edi, %rax
	movsd	elapsed(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	.loc	6 59 5 is_stmt 0        # c_timers.c:59:5
	retq
.Ltmp671:
.Lfunc_end16:
	.size	timer_read, .Lfunc_end16-timer_read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI17_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	wtime_
	.p2align	4, 0x90
	.type	wtime_,@function
wtime_:                                 # @wtime_
.Lfunc_begin17:
	.loc	7 8 0 is_stmt 1         # ../common/wtime.c:8:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp672:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp673:
	.cfi_def_cfa_offset 32
.Ltmp674:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: wtime_:t <- %RDI
	movq	%rdi, %rbx
.Ltmp675:
	#DEBUG_VALUE: wtime_:t <- %RBX
	leaq	(%rsp), %rdi
.Ltmp676:
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	.loc	7 11 3 prologue_end     # ../common/wtime.c:11:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp677:
	.loc	7 12 7                  # ../common/wtime.c:12:7
	movl	wtime_.sec(%rip), %ecx
	.loc	7 12 25 is_stmt 0 discriminator 1 # ../common/wtime.c:12:25
	movq	(%rsp), %rax
.Ltmp678:
	.loc	7 12 7                  # ../common/wtime.c:12:7
	testl	%ecx, %ecx
	jns	.LBB17_2
.Ltmp679:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	.loc	7 12 20 discriminator 1 # ../common/wtime.c:12:20
	movl	%eax, wtime_.sec(%rip)
.Ltmp680:
	.loc	7 13 21 is_stmt 1       # ../common/wtime.c:13:21
	movl	%eax, %ecx
.Ltmp681:
.LBB17_2:                               # %if.end
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	movslq	%ecx, %rcx
	.loc	7 13 19 is_stmt 0       # ../common/wtime.c:13:19
	subq	%rcx, %rax
	.loc	7 13 8                  # ../common/wtime.c:13:8
	cvtsi2sdq	%rax, %xmm0
	.loc	7 13 35                 # ../common/wtime.c:13:35
	cvtsi2sdq	8(%rsp), %xmm1
	.loc	7 13 34                 # ../common/wtime.c:13:34
	mulsd	.LCPI17_0(%rip), %xmm1
	.loc	7 13 26                 # ../common/wtime.c:13:26
	addsd	%xmm0, %xmm1
	.loc	7 13 6                  # ../common/wtime.c:13:6
	movsd	%xmm1, (%rbx)
	.loc	7 14 1 is_stmt 1        # ../common/wtime.c:14:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp682:
	retq
.Ltmp683:
.Lfunc_end17:
	.size	wtime_, .Lfunc_end17-wtime_
	.cfi_endproc

	.type	timers_enabled,@object  # @timers_enabled
	.comm	timers_enabled,4,4
	.type	xnt,@object             # @xnt
	.local	xnt
	.comm	xnt,134742016,16
	.type	y,@object               # @y
	.local	y
	.comm	y,134742016,16
	.type	fftblock,@object        # @fftblock
	.local	fftblock
	.comm	fftblock,4,4
	.type	plane,@object           # @plane
	.local	plane
	.comm	plane,135168,16
	.type	scr,@object             # @scr
	.local	scr
	.comm	scr,135168,16
	.type	twiddle,@object         # @twiddle
	.local	twiddle
	.comm	twiddle,67371008,16
	.type	sums,@object            # @sums
	.local	sums
	.comm	sums,112,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" T =%5d     Checksum =%22.12E%22.12E\n"
	.size	.L.str, 38

	.type	.Lstr.30,@object        # @str.30
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.30:
	.asciz	"  Verification test for FT not performed"
	.size	.Lstr.30, 41

	.type	.Lstr.4,@object         # @str.4
	.p2align	4
.Lstr.4:
	.asciz	" Verification test for FT successful"
	.size	.Lstr.4, 37

	.type	.Lstr.3,@object         # @str.3
	.p2align	4
.Lstr.3:
	.asciz	" Verification test for FT failed"
	.size	.Lstr.3, 33

	.type	.Lstr,@object           # @str
	.p2align	4
.Lstr:
	.asciz	" FT subroutine timers "
	.size	.Lstr, 23

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" %26s =%9.4f\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FT total                  "
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"WarmUp time               "
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"fftXYZ body               "
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Swarztrauber              "
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"X time                    "
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Y time                    "
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Z time                    "
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"CalculateChecksum         "
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"evolve                    "
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"compute_initial_conditions"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"twiddle                   "
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"verify                    "
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"fftXYZ                    "
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Benchmark time            "
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"timer.flag"
	.size	.L.str.16, 11

	.type	.L.str.1.17,@object     # @.str.1.17
.L.str.1.17:
	.asciz	"r"
	.size	.L.str.1.17, 2

	.type	.Lstr.18,@object        # @str.18
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.18:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER-C) - FT Benchmark\n"
	.size	.Lstr.18, 58

	.type	.L.str.3.19,@object     # @.str.3.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3.19:
	.asciz	" Size                : %4dx%4dx%4d\n"
	.size	.L.str.3.19, 36

	.type	.L.str.4.20,@object     # @.str.4.20
.L.str.4.20:
	.asciz	" Iterations          :     %10d\n"
	.size	.L.str.4.20, 33

	.type	.L.str.6.21,@object     # @.str.6.21
.L.str.6.21:
	.asciz	"FT"
	.size	.L.str.6.21, 3

	.type	.L.str.7.22,@object     # @.str.7.22
.L.str.7.22:
	.asciz	"          floating point"
	.size	.L.str.7.22, 25

	.type	.L.str.8.23,@object     # @.str.8.23
.L.str.8.23:
	.asciz	"3.3.1"
	.size	.L.str.8.23, 6

	.type	.L.str.9.24,@object     # @.str.9.24
.L.str.9.24:
	.asciz	"03 Mar 2016"
	.size	.L.str.9.24, 12

	.type	.L.str.10.25,@object    # @.str.10.25
.L.str.10.25:
	.asciz	"(none)"
	.size	.L.str.10.25, 7

	.type	.L.str.11.26,@object    # @.str.11.26
.L.str.11.26:
	.asciz	"-I ../common "
	.size	.L.str.11.26, 14

	.type	.L.str.12.27,@object    # @.str.12.27
.L.str.12.27:
	.asciz	"randdp"
	.size	.L.str.12.27, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\n\n %s Benchmark Completed.\n"
	.size	.L.str.17, 28

	.type	.L.str.1.18,@object     # @.str.1.18
.L.str.1.18:
	.asciz	" Class           =             %12c\n"
	.size	.L.str.1.18, 37

	.type	.L.str.2.19,@object     # @.str.2.19
.L.str.2.19:
	.asciz	"%15.0lf"
	.size	.L.str.2.19, 8

	.type	.L.str.3.20,@object     # @.str.3.20
.L.str.3.20:
	.asciz	" Size            =          %15s\n"
	.size	.L.str.3.20, 34

	.type	.L.str.4.21,@object     # @.str.4.21
.L.str.4.21:
	.asciz	" Size            =             %12d\n"
	.size	.L.str.4.21, 37

	.type	.L.str.5.22,@object     # @.str.5.22
.L.str.5.22:
	.asciz	" Size            =           %4dx%4dx%4d\n"
	.size	.L.str.5.22, 42

	.type	.L.str.6.23,@object     # @.str.6.23
.L.str.6.23:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str.6.23, 37

	.type	.L.str.7.24,@object     # @.str.7.24
.L.str.7.24:
	.asciz	" Time in seconds =             %12.2lf\n"
	.size	.L.str.7.24, 40

	.type	.L.str.8.25,@object     # @.str.8.25
.L.str.8.25:
	.asciz	" Mop/s total     =          %15.2lf\n"
	.size	.L.str.8.25, 37

	.type	.L.str.9.26,@object     # @.str.9.26
.L.str.9.26:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str.9.26, 25

	.type	.L.str.10.27,@object    # @.str.10.27
.L.str.10.27:
	.asciz	" Verification    =             %12s\n"
	.size	.L.str.10.27, 37

	.type	.L.str.11.28,@object    # @.str.11.28
.L.str.11.28:
	.asciz	"SUCCESSFUL"
	.size	.L.str.11.28, 11

	.type	.L.str.12.29,@object    # @.str.12.29
.L.str.12.29:
	.asciz	"UNSUCCESSFUL"
	.size	.L.str.12.29, 13

	.type	.L.str.13.30,@object    # @.str.13.30
.L.str.13.30:
	.asciz	" Version         =             %12s\n"
	.size	.L.str.13.30, 37

	.type	.L.str.14.31,@object    # @.str.14.31
.L.str.14.31:
	.asciz	" Compile date    =             %12s\n"
	.size	.L.str.14.31, 37

	.type	.L.str.15.32,@object    # @.str.15.32
.L.str.15.32:
	.asciz	"\n Compile options:\n    CC           = %s\n"
	.size	.L.str.15.32, 42

	.type	.L.str.16.33,@object    # @.str.16.33
.L.str.16.33:
	.asciz	"    CLINK        = %s\n"
	.size	.L.str.16.33, 23

	.type	.L.str.17.34,@object    # @.str.17.34
.L.str.17.34:
	.asciz	"    C_LIB        = %s\n"
	.size	.L.str.17.34, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"    C_INC        = %s\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"    CFLAGS       = %s\n"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"    CLINKFLAGS   = %s\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"    RAND         = %s\n"
	.size	.L.str.21, 23

	.type	.Lstr.35,@object        # @str.35
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.35:
	.asciz	"\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n"
	.size	.Lstr.35, 194

	.type	elapsed,@object         # @elapsed
	.local	elapsed
	.comm	elapsed,512,16
	.type	start,@object           # @start
	.local	start
	.comm	start,512,16
	.type	wtime_.sec,@object      # @wtime_.sec
	.data
	.p2align	2
wtime_.sec:
	.long	4294967295              # 0xffffffff
	.size	wtime_.sec, 4

	.file	13 "/usr/include/libio.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	15 "/home/norouzi/Desktop/software/llvmTemp/build/bin/../lib/clang/3.9.0/include/stddef.h"
	.file	16 "/usr/include/stdio.h"
	.file	17 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	18 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.0 (trunk)" # string offset=0
.Linfo_string1:
	.asciz	"appft.c"               # string offset=28
.Linfo_string2:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/FT" # string offset=36
.Linfo_string3:
	.asciz	"sums"                  # string offset=98
.Linfo_string4:
	.asciz	"real"                  # string offset=103
.Linfo_string5:
	.asciz	"double"                # string offset=108
.Linfo_string6:
	.asciz	"imag"                  # string offset=115
.Linfo_string7:
	.asciz	"dcomplex"              # string offset=120
.Linfo_string8:
	.asciz	"sizetype"              # string offset=129
.Linfo_string9:
	.asciz	"twiddle"               # string offset=138
.Linfo_string10:
	.asciz	"xnt"                   # string offset=146
.Linfo_string11:
	.asciz	"y"                     # string offset=150
.Linfo_string12:
	.asciz	"false"                 # string offset=152
.Linfo_string13:
	.asciz	"true"                  # string offset=158
.Linfo_string14:
	.asciz	"auxfnct.c"             # string offset=163
.Linfo_string15:
	.asciz	"fft3d.c"               # string offset=173
.Linfo_string16:
	.asciz	"fftblock"              # string offset=181
.Linfo_string17:
	.asciz	"int"                   # string offset=190
.Linfo_string18:
	.asciz	"plane"                 # string offset=194
.Linfo_string19:
	.asciz	"scr"                   # string offset=200
.Linfo_string20:
	.asciz	"mainft.c"              # string offset=204
.Linfo_string21:
	.asciz	"timers_enabled"        # string offset=213
.Linfo_string22:
	.asciz	"logical"               # string offset=228
.Linfo_string23:
	.asciz	"verify.c"              # string offset=236
.Linfo_string24:
	.asciz	"../common/randdp.c"    # string offset=245
.Linfo_string25:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common" # string offset=264
.Linfo_string26:
	.asciz	"../common/print_results.c" # string offset=330
.Linfo_string27:
	.asciz	"../common/c_timers.c"  # string offset=356
.Linfo_string28:
	.asciz	"start"                 # string offset=377
.Linfo_string29:
	.asciz	"elapsed"               # string offset=383
.Linfo_string30:
	.asciz	"../common/wtime.c"     # string offset=391
.Linfo_string31:
	.asciz	"sec"                   # string offset=409
.Linfo_string32:
	.asciz	"ipow46"                # string offset=413
.Linfo_string33:
	.asciz	"a"                     # string offset=420
.Linfo_string34:
	.asciz	"exponent"              # string offset=422
.Linfo_string35:
	.asciz	"result"                # string offset=431
.Linfo_string36:
	.asciz	"q"                     # string offset=438
.Linfo_string37:
	.asciz	"r"                     # string offset=440
.Linfo_string38:
	.asciz	"n2"                    # string offset=442
.Linfo_string39:
	.asciz	"n"                     # string offset=445
.Linfo_string40:
	.asciz	"dummy"                 # string offset=447
.Linfo_string41:
	.asciz	"ilog2"                 # string offset=453
.Linfo_string42:
	.asciz	"nn"                    # string offset=459
.Linfo_string43:
	.asciz	"lg"                    # string offset=462
.Linfo_string44:
	.asciz	"dcmplx_div"            # string offset=465
.Linfo_string45:
	.asciz	"z1"                    # string offset=476
.Linfo_string46:
	.asciz	"z2"                    # string offset=479
.Linfo_string47:
	.asciz	"divisor"               # string offset=482
.Linfo_string48:
	.asciz	"c"                     # string offset=490
.Linfo_string49:
	.asciz	"b"                     # string offset=492
.Linfo_string50:
	.asciz	"d"                     # string offset=494
.Linfo_string51:
	.asciz	"elapsed_time"          # string offset=496
.Linfo_string52:
	.asciz	"t"                     # string offset=509
.Linfo_string53:
	.asciz	"appft"                 # string offset=511
.Linfo_string54:
	.asciz	"CompExp"               # string offset=517
.Linfo_string55:
	.asciz	"CalculateChecksum"     # string offset=525
.Linfo_string56:
	.asciz	"compute_initial_conditions" # string offset=543
.Linfo_string57:
	.asciz	"evolve"                # string offset=570
.Linfo_string58:
	.asciz	"fftXYZ"                # string offset=577
.Linfo_string59:
	.asciz	"Swarztrauber"          # string offset=584
.Linfo_string60:
	.asciz	"main"                  # string offset=597
.Linfo_string61:
	.asciz	"verify"                # string offset=602
.Linfo_string62:
	.asciz	"randlc"                # string offset=609
.Linfo_string63:
	.asciz	"vranlc"                # string offset=616
.Linfo_string64:
	.asciz	"print_results"         # string offset=623
.Linfo_string65:
	.asciz	"timer_clear"           # string offset=637
.Linfo_string66:
	.asciz	"timer_start"           # string offset=649
.Linfo_string67:
	.asciz	"timer_stop"            # string offset=661
.Linfo_string68:
	.asciz	"timer_read"            # string offset=672
.Linfo_string69:
	.asciz	"wtime_"                # string offset=683
.Linfo_string70:
	.asciz	"exp1"                  # string offset=690
.Linfo_string71:
	.asciz	"exp2"                  # string offset=695
.Linfo_string72:
	.asciz	"exp3"                  # string offset=700
.Linfo_string73:
	.asciz	"niter"                 # string offset=705
.Linfo_string74:
	.asciz	"total_time"            # string offset=711
.Linfo_string75:
	.asciz	"verified"              # string offset=722
.Linfo_string76:
	.asciz	"i"                     # string offset=731
.Linfo_string77:
	.asciz	"ii"                    # string offset=733
.Linfo_string78:
	.asciz	"ii2"                   # string offset=736
.Linfo_string79:
	.asciz	"k"                     # string offset=740
.Linfo_string80:
	.asciz	"kk"                    # string offset=742
.Linfo_string81:
	.asciz	"j"                     # string offset=745
.Linfo_string82:
	.asciz	"ik2"                   # string offset=747
.Linfo_string83:
	.asciz	"kt"                    # string offset=751
.Linfo_string84:
	.asciz	"n12"                   # string offset=754
.Linfo_string85:
	.asciz	"n22"                   # string offset=758
.Linfo_string86:
	.asciz	"n32"                   # string offset=762
.Linfo_string87:
	.asciz	"jj"                    # string offset=766
.Linfo_string88:
	.asciz	"ap"                    # string offset=769
.Linfo_string89:
	.asciz	"tmp"                   # string offset=772
.Linfo_string90:
	.asciz	"RanStarts"             # string offset=776
.Linfo_string91:
	.asciz	"d1"                    # string offset=786
.Linfo_string92:
	.asciz	"d2"                    # string offset=789
.Linfo_string93:
	.asciz	"d3"                    # string offset=792
.Linfo_string94:
	.asciz	"u0"                    # string offset=795
.Linfo_string95:
	.asciz	"seed"                  # string offset=798
.Linfo_string96:
	.asciz	"an"                    # string offset=803
.Linfo_string97:
	.asciz	"x0"                    # string offset=806
.Linfo_string98:
	.asciz	"nu"                    # string offset=809
.Linfo_string99:
	.asciz	"pi"                    # string offset=812
.Linfo_string100:
	.asciz	"ln"                    # string offset=815
.Linfo_string101:
	.asciz	"ku"                    # string offset=818
.Linfo_string102:
	.asciz	"ti"                    # string offset=821
.Linfo_string103:
	.asciz	"m"                     # string offset=824
.Linfo_string104:
	.asciz	"sign"                  # string offset=826
.Linfo_string105:
	.asciz	"n1"                    # string offset=831
.Linfo_string106:
	.asciz	"n3"                    # string offset=834
.Linfo_string107:
	.asciz	"x"                     # string offset=837
.Linfo_string108:
	.asciz	"xout"                  # string offset=839
.Linfo_string109:
	.asciz	"log"                   # string offset=844
.Linfo_string110:
	.asciz	"ble"                   # string offset=848
.Linfo_string111:
	.asciz	"len"                   # string offset=852
.Linfo_string112:
	.asciz	"bls"                   # string offset=856
.Linfo_string113:
	.asciz	"blkp"                  # string offset=860
.Linfo_string114:
	.asciz	"is"                    # string offset=865
.Linfo_string115:
	.asciz	"vlen"                  # string offset=868
.Linfo_string116:
	.asciz	"xd1"                   # string offset=873
.Linfo_string117:
	.asciz	"ox"                    # string offset=877
.Linfo_string118:
	.asciz	"lj"                    # string offset=880
.Linfo_string119:
	.asciz	"l"                     # string offset=883
.Linfo_string120:
	.asciz	"li"                    # string offset=885
.Linfo_string121:
	.asciz	"u1"                    # string offset=888
.Linfo_string122:
	.asciz	"x11"                   # string offset=891
.Linfo_string123:
	.asciz	"x21"                   # string offset=895
.Linfo_string124:
	.asciz	"lk"                    # string offset=899
.Linfo_string125:
	.asciz	"i11"                   # string offset=902
.Linfo_string126:
	.asciz	"i12"                   # string offset=906
.Linfo_string127:
	.asciz	"i21"                   # string offset=910
.Linfo_string128:
	.asciz	"i22"                   # string offset=914
.Linfo_string129:
	.asciz	"nx"                    # string offset=918
.Linfo_string130:
	.asciz	"ny"                    # string offset=921
.Linfo_string131:
	.asciz	"nz"                    # string offset=924
.Linfo_string132:
	.asciz	"csum"                  # string offset=927
.Linfo_string133:
	.asciz	"iterN"                 # string offset=932
.Linfo_string134:
	.asciz	"u"                     # string offset=938
.Linfo_string135:
	.asciz	"csum_temp"             # string offset=940
.Linfo_string136:
	.asciz	"i1"                    # string offset=950
.Linfo_string137:
	.asciz	"ji"                    # string offset=953
.Linfo_string138:
	.asciz	"ki"                    # string offset=956
.Linfo_string139:
	.asciz	"cexpd"                 # string offset=959
.Linfo_string140:
	.asciz	"nt"                    # string offset=965
.Linfo_string141:
	.asciz	"cksum"                 # string offset=968
.Linfo_string142:
	.asciz	"epsilon"               # string offset=974
.Linfo_string143:
	.asciz	"err"                   # string offset=982
.Linfo_string144:
	.asciz	"argc"                  # string offset=986
.Linfo_string145:
	.asciz	"argv"                  # string offset=991
.Linfo_string146:
	.asciz	"char"                  # string offset=996
.Linfo_string147:
	.asciz	"fp"                    # string offset=1001
.Linfo_string148:
	.asciz	"_flags"                # string offset=1004
.Linfo_string149:
	.asciz	"_IO_read_ptr"          # string offset=1011
.Linfo_string150:
	.asciz	"_IO_read_end"          # string offset=1024
.Linfo_string151:
	.asciz	"_IO_read_base"         # string offset=1037
.Linfo_string152:
	.asciz	"_IO_write_base"        # string offset=1051
.Linfo_string153:
	.asciz	"_IO_write_ptr"         # string offset=1066
.Linfo_string154:
	.asciz	"_IO_write_end"         # string offset=1080
.Linfo_string155:
	.asciz	"_IO_buf_base"          # string offset=1094
.Linfo_string156:
	.asciz	"_IO_buf_end"           # string offset=1107
.Linfo_string157:
	.asciz	"_IO_save_base"         # string offset=1119
.Linfo_string158:
	.asciz	"_IO_backup_base"       # string offset=1133
.Linfo_string159:
	.asciz	"_IO_save_end"          # string offset=1149
.Linfo_string160:
	.asciz	"_markers"              # string offset=1162
.Linfo_string161:
	.asciz	"_next"                 # string offset=1171
.Linfo_string162:
	.asciz	"_sbuf"                 # string offset=1177
.Linfo_string163:
	.asciz	"_pos"                  # string offset=1183
.Linfo_string164:
	.asciz	"_IO_marker"            # string offset=1188
.Linfo_string165:
	.asciz	"_chain"                # string offset=1199
.Linfo_string166:
	.asciz	"_fileno"               # string offset=1206
.Linfo_string167:
	.asciz	"_flags2"               # string offset=1214
.Linfo_string168:
	.asciz	"_old_offset"           # string offset=1222
.Linfo_string169:
	.asciz	"long int"              # string offset=1234
.Linfo_string170:
	.asciz	"__off_t"               # string offset=1243
.Linfo_string171:
	.asciz	"_cur_column"           # string offset=1251
.Linfo_string172:
	.asciz	"unsigned short"        # string offset=1263
.Linfo_string173:
	.asciz	"_vtable_offset"        # string offset=1278
.Linfo_string174:
	.asciz	"signed char"           # string offset=1293
.Linfo_string175:
	.asciz	"_shortbuf"             # string offset=1305
.Linfo_string176:
	.asciz	"_lock"                 # string offset=1315
.Linfo_string177:
	.asciz	"_IO_lock_t"            # string offset=1321
.Linfo_string178:
	.asciz	"_offset"               # string offset=1332
.Linfo_string179:
	.asciz	"__off64_t"             # string offset=1340
.Linfo_string180:
	.asciz	"__pad1"                # string offset=1350
.Linfo_string181:
	.asciz	"__pad2"                # string offset=1357
.Linfo_string182:
	.asciz	"__pad3"                # string offset=1364
.Linfo_string183:
	.asciz	"__pad4"                # string offset=1371
.Linfo_string184:
	.asciz	"__pad5"                # string offset=1378
.Linfo_string185:
	.asciz	"long unsigned int"     # string offset=1385
.Linfo_string186:
	.asciz	"size_t"                # string offset=1403
.Linfo_string187:
	.asciz	"_mode"                 # string offset=1410
.Linfo_string188:
	.asciz	"_unused2"              # string offset=1416
.Linfo_string189:
	.asciz	"_IO_FILE"              # string offset=1425
.Linfo_string190:
	.asciz	"FILE"                  # string offset=1434
.Linfo_string191:
	.asciz	"Class"                 # string offset=1439
.Linfo_string192:
	.asciz	"mflops"                # string offset=1445
.Linfo_string193:
	.asciz	"r23"                   # string offset=1452
.Linfo_string194:
	.asciz	"r46"                   # string offset=1456
.Linfo_string195:
	.asciz	"t23"                   # string offset=1460
.Linfo_string196:
	.asciz	"t46"                   # string offset=1464
.Linfo_string197:
	.asciz	"t1"                    # string offset=1468
.Linfo_string198:
	.asciz	"a1"                    # string offset=1471
.Linfo_string199:
	.asciz	"a2"                    # string offset=1474
.Linfo_string200:
	.asciz	"x1"                    # string offset=1477
.Linfo_string201:
	.asciz	"x2"                    # string offset=1480
.Linfo_string202:
	.asciz	"t2"                    # string offset=1483
.Linfo_string203:
	.asciz	"z"                     # string offset=1486
.Linfo_string204:
	.asciz	"t3"                    # string offset=1488
.Linfo_string205:
	.asciz	"t4"                    # string offset=1491
.Linfo_string206:
	.asciz	"size"                  # string offset=1494
.Linfo_string207:
	.asciz	"name"                  # string offset=1499
.Linfo_string208:
	.asciz	"class"                 # string offset=1504
.Linfo_string209:
	.asciz	"mops"                  # string offset=1510
.Linfo_string210:
	.asciz	"optype"                # string offset=1515
.Linfo_string211:
	.asciz	"cs7"                   # string offset=1522
.Linfo_string212:
	.asciz	"cs6"                   # string offset=1526
.Linfo_string213:
	.asciz	"cs5"                   # string offset=1530
.Linfo_string214:
	.asciz	"cs4"                   # string offset=1534
.Linfo_string215:
	.asciz	"cs3"                   # string offset=1538
.Linfo_string216:
	.asciz	"npbversion"            # string offset=1542
.Linfo_string217:
	.asciz	"compiletime"           # string offset=1553
.Linfo_string218:
	.asciz	"cs1"                   # string offset=1565
.Linfo_string219:
	.asciz	"cs2"                   # string offset=1569
.Linfo_string220:
	.asciz	"now"                   # string offset=1573
.Linfo_string221:
	.asciz	"tv"                    # string offset=1577
.Linfo_string222:
	.asciz	"tv_sec"                # string offset=1580
.Linfo_string223:
	.asciz	"__time_t"              # string offset=1587
.Linfo_string224:
	.asciz	"tv_usec"               # string offset=1596
.Linfo_string225:
	.asciz	"__suseconds_t"         # string offset=1604
.Linfo_string226:
	.asciz	"timeval"               # string offset=1618
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	28                      # 28
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	40                      # 40
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	32                      # 32
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	2                       # 2
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Lfunc_begin1
	.quad	.Ltmp81
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp81
	.quad	.Ltmp86
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp86
	.quad	.Ltmp92
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Lfunc_begin1
	.quad	.Ltmp80
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp80
	.quad	.Ltmp87
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp87
	.quad	.Ltmp92
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Lfunc_begin1
	.quad	.Ltmp79
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp79
	.quad	.Ltmp85
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	16                      # 16
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Lfunc_begin1
	.quad	.Ltmp79
	.short	1                       # Loc expr size
	.byte	82                      # DW_OP_reg2
	.quad	.Ltmp79
	.quad	.Ltmp92
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Ltmp84
	.quad	.Ltmp92
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp110
	.quad	.Ltmp114
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc13:
	.quad	.Ltmp111
	.quad	.Ltmp112
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc14:
	.quad	.Ltmp105
	.quad	.Ltmp106
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Ltmp95
	.quad	.Ltmp98
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp98
	.quad	.Ltmp99
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp102
	.quad	.Ltmp104
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Ltmp98
	.quad	.Ltmp100
	.short	2                       # Loc expr size
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
	.quad	.Ltmp103
	.quad	.Ltmp105
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp105
	.quad	.Ltmp106
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Ltmp95
	.quad	.Ltmp97
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp97
	.quad	.Ltmp98
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Ltmp95
	.quad	.Ltmp97
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp97
	.quad	.Ltmp98
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp100
	.quad	.Ltmp102
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc19:
	.quad	.Lfunc_begin2
	.quad	.Ltmp151
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	.Ltmp151
	.quad	.Ltmp156
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	.Ltmp162
	.quad	.Ltmp163
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Ltmp153
	.quad	.Ltmp185
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp185
	.quad	.Ltmp186
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Ltmp153
	.quad	.Ltmp183
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp183
	.quad	.Ltmp186
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Ltmp153
	.quad	.Ltmp182
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	2                       # 2
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp182
	.quad	.Ltmp186
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc23:
	.quad	.Ltmp158
	.quad	.Ltmp162
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp167
	.quad	.Ltmp172
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc25:
	.quad	.Ltmp169
	.quad	.Ltmp170
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp170
	.quad	.Ltmp171
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	.Ltmp175
	.quad	.Ltmp176
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp176
	.quad	.Ltmp177
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc26:
	.quad	.Lfunc_begin3
	.quad	.Ltmp206
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp206
	.quad	.Ltmp225
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Lfunc_begin3
	.quad	.Ltmp205
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp205
	.quad	.Ltmp226
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc28:
	.quad	.Lfunc_begin3
	.quad	.Ltmp204
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp204
	.quad	.Ltmp226
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Lfunc_begin3
	.quad	.Ltmp203
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp203
	.quad	.Ltmp222
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Lfunc_begin3
	.quad	.Ltmp202
	.short	1                       # Loc expr size
	.byte	88                      # DW_OP_reg8
	.quad	.Ltmp202
	.quad	.Ltmp210
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	232                     # 104
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc31:
	.quad	.Lfunc_begin3
	.quad	.Ltmp201
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	.Ltmp201
	.quad	.Ltmp210
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	208                     # 208
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc32:
	.quad	.Lfunc_begin3
	.quad	.Ltmp210
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	144                     # 144
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Lfunc_begin3
	.quad	.Ltmp212
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc34:
	.quad	.Lfunc_begin3
	.quad	.Ltmp210
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	136                     # 136
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc35:
	.quad	.Ltmp215
	.quad	.Ltmp217
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	52                      # 52
	.quad	.Ltmp258
	.quad	.Ltmp260
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	.Ltmp279
	.quad	.Ltmp282
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	40                      # 40
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp220
	.quad	.Ltmp226
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	132                     # 132
	.byte	1                       # 
	.quad	.Ltmp228
	.quad	.Ltmp230
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp264
	.quad	.Ltmp265
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp266
	.quad	.Ltmp268
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp285
	.quad	.Ltmp290
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	192                     # 64
	.byte	0                       # 
	.quad	.Ltmp293
	.quad	.Ltmp295
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc37:
	.quad	.Ltmp231
	.quad	.Ltmp235
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp247
	.quad	.Ltmp248
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp269
	.quad	.Ltmp273
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp296
	.quad	.Ltmp302
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc38:
	.quad	.Ltmp249
	.quad	.Ltmp250
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp271
	.quad	.Ltmp273
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp312
	.quad	.Ltmp313
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc39:
	.quad	.Ltmp249
	.quad	.Ltmp250
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Ltmp284
	.quad	.Ltmp290
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	0
	.quad	0
.Ldebug_loc41:
	.quad	.Ltmp321
	.quad	.Ltmp323
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc42:
	.quad	.Ltmp322
	.quad	.Ltmp323
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Lfunc_begin5
	.quad	.Ltmp342
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp342
	.quad	.Ltmp346
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	0
	.quad	0
.Ldebug_loc44:
	.quad	.Lfunc_begin5
	.quad	.Ltmp341
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp341
	.quad	.Ltmp346
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	16                      # 16
	.quad	0
	.quad	0
.Ldebug_loc45:
	.quad	.Lfunc_begin5
	.quad	.Ltmp340
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp340
	.quad	.Ltmp356
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Lfunc_begin5
	.quad	.Ltmp339
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp339
	.quad	.Ltmp357
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc47:
	.quad	.Lfunc_begin5
	.quad	.Ltmp357
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc48:
	.quad	.Lfunc_begin5
	.quad	.Ltmp338
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	.Ltmp338
	.quad	.Ltmp357
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc49:
	.quad	.Lfunc_begin5
	.quad	.Ltmp346
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	200                     # 72
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc50:
	.quad	.Ltmp346
	.quad	.Ltmp380
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp380
	.quad	.Ltmp383
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc51:
	.quad	.Ltmp346
	.quad	.Ltmp395
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp395
	.quad	.Ltmp396
	.short	3                       # Loc expr size
	.byte	91                      # super-register DW_OP_reg11
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc52:
	.quad	.Ltmp348
	.quad	.Ltmp350
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Ltmp349
	.quad	.Ltmp357
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp359
	.quad	.Ltmp360
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp360
	.quad	.Ltmp364
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	.Ltmp381
	.quad	.Ltmp385
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc54:
	.quad	.Ltmp359
	.quad	.Ltmp360
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp360
	.quad	.Ltmp364
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	.Ltmp381
	.quad	.Ltmp385
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc55:
	.quad	.Ltmp366
	.quad	.Ltmp366
	.short	5                       # Loc expr size
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.byte	99                      # DW_OP_reg19
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	.Ltmp389
	.quad	.Ltmp389
	.short	5                       # Loc expr size
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.byte	99                      # DW_OP_reg19
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc56:
	.quad	.Lfunc_begin6
	.quad	.Ltmp416
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp416
	.quad	.Lfunc_end6
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	148                     # -108
	.byte	127                     # 
	.quad	0
	.quad	0
.Ldebug_loc57:
	.quad	.Lfunc_begin6
	.quad	.Ltmp413
	.short	1                       # Loc expr size
	.byte	82                      # DW_OP_reg2
	.quad	.Ltmp413
	.quad	.Lfunc_end6
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	176                     # -80
	.byte	127                     # 
	.quad	0
	.quad	0
.Ldebug_loc58:
	.quad	.Lfunc_begin6
	.quad	.Ltmp412
	.short	1                       # Loc expr size
	.byte	88                      # DW_OP_reg8
	.quad	.Ltmp412
	.quad	.Lfunc_end6
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	184                     # -72
	.byte	127                     # 
	.quad	0
	.quad	0
.Ldebug_loc59:
	.quad	.Lfunc_begin6
	.quad	.Ltmp411
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	.Ltmp411
	.quad	.Lfunc_end6
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	152                     # -104
	.byte	127                     # 
	.quad	0
	.quad	0
.Ldebug_loc60:
	.quad	.Lfunc_begin7
	.quad	.Ltmp442
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp442
	.quad	.Ltmp445
	.short	1                       # Loc expr size
	.byte	94                      # DW_OP_reg14
	.quad	0
	.quad	0
.Ldebug_loc61:
	.quad	.Lfunc_begin7
	.quad	.Ltmp441
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp441
	.quad	.Ltmp445
	.short	3                       # Loc expr size
	.byte	90                      # super-register DW_OP_reg10
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc62:
	.quad	.Lfunc_begin7
	.quad	.Ltmp445
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc63:
	.quad	.Ltmp444
	.quad	.Ltmp447
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp447
	.quad	.Ltmp449
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc64:
	.quad	.Ltmp447
	.quad	.Ltmp449
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc65:
	.quad	.Lfunc_begin8-.Lfunc_begin8
	.quad	.Ltmp504-.Lfunc_begin8
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp532-.Lfunc_begin8
	.quad	.Ltmp533-.Lfunc_begin8
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc66:
	.quad	.Lfunc_begin8-.Lfunc_begin8
	.quad	.Ltmp463-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	88                      # DW_OP_reg8
	.quad	.Ltmp463-.Lfunc_begin8
	.quad	.Ltmp502-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	.Ltmp532-.Lfunc_begin8
	.quad	.Lfunc_end8-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc67:
	.quad	.Lfunc_begin8-.Lfunc_begin8
	.quad	.Ltmp462-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	.Ltmp462-.Lfunc_begin8
	.quad	.Ltmp504-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	94                      # DW_OP_reg14
	.quad	.Ltmp532-.Lfunc_begin8
	.quad	.Lfunc_end8-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	94                      # DW_OP_reg14
	.quad	0
	.quad	0
.Ldebug_loc68:
	.quad	.Ltmp504-.Lfunc_begin8
	.quad	.Ltmp506-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp524-.Lfunc_begin8
	.quad	.Ltmp527-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp528-.Lfunc_begin8
	.quad	.Ltmp530-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc69:
	.quad	.Ltmp504-.Lfunc_begin8
	.quad	.Ltmp507-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	.Ltmp514-.Lfunc_begin8
	.quad	.Ltmp527-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	.Ltmp528-.Lfunc_begin8
	.quad	.Ltmp530-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	0
	.quad	0
.Ldebug_loc70:
	.quad	.Ltmp508-.Lfunc_begin8
	.quad	.Ltmp513-.Lfunc_begin8
	.short	3                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	.Ltmp520-.Lfunc_begin8
	.quad	.Ltmp524-.Lfunc_begin8
	.short	6                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.byte	98                      # DW_OP_reg18
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc71:
	.quad	.Ltmp508-.Lfunc_begin8
	.quad	.Ltmp513-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc72:
	.quad	.Ltmp509-.Lfunc_begin8
	.quad	.Ltmp510-.Lfunc_begin8
	.short	3                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	.Ltmp510-.Lfunc_begin8
	.quad	.Ltmp512-.Lfunc_begin8
	.short	6                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.byte	97                      # DW_OP_reg17
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc73:
	.quad	.Ltmp509-.Lfunc_begin8
	.quad	.Ltmp511-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc74:
	.quad	.Ltmp510-.Lfunc_begin8
	.quad	.Ltmp512-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc75:
	.quad	.Ltmp515-.Lfunc_begin8
	.quad	.Ltmp517-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc76:
	.quad	.Ltmp515-.Lfunc_begin8
	.quad	.Ltmp516-.Lfunc_begin8
	.short	3                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	.Ltmp516-.Lfunc_begin8
	.quad	.Ltmp518-.Lfunc_begin8
	.short	6                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.byte	97                      # DW_OP_reg17
	.byte	147                     # DW_OP_piece
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc77:
	.quad	.Ltmp516-.Lfunc_begin8
	.quad	.Ltmp518-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc78:
	.quad	.Lfunc_begin9-.Lfunc_begin9
	.quad	.Ltmp536-.Lfunc_begin9
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc79:
	.quad	.Lfunc_begin9-.Lfunc_begin9
	.quad	.Ltmp537-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	0
	.quad	0
.Ldebug_loc80:
	.quad	.Ltmp538-.Lfunc_begin9
	.quad	.Ltmp541-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	.Ltmp542-.Lfunc_begin9
	.quad	.Ltmp543-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	0
	.quad	0
.Ldebug_loc81:
	.quad	.Ltmp544-.Lfunc_begin9
	.quad	.Ltmp547-.Lfunc_begin9
	.short	2                       # Loc expr size
	.byte	116                     # DW_OP_breg4
	.byte	0                       # 0
	.quad	.Ltmp547-.Lfunc_begin9
	.quad	.Lfunc_end9-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc82:
	.quad	.Ltmp545-.Lfunc_begin9
	.quad	.Ltmp550-.Lfunc_begin9
	.short	2                       # Loc expr size
	.byte	113                     # DW_OP_breg1
	.byte	0                       # 0
	.quad	.Ltmp550-.Lfunc_begin9
	.quad	.Ltmp551-.Lfunc_begin9
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc83:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp556-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc84:
	.quad	.Ltmp553-.Lfunc_begin10
	.quad	.Ltmp555-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp557-.Lfunc_begin10
	.quad	.Ltmp558-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	.Ltmp563-.Lfunc_begin10
	.quad	.Ltmp566-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc85:
	.quad	.Ltmp554-.Lfunc_begin10
	.quad	.Ltmp562-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc86:
	.quad	.Ltmp556-.Lfunc_begin10
	.quad	.Ltmp570-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc87:
	.quad	.Ltmp559-.Lfunc_begin10
	.quad	.Ltmp560-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc88:
	.quad	.Ltmp561-.Lfunc_begin10
	.quad	.Ltmp568-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc89:
	.quad	.Ltmp564-.Lfunc_begin10
	.quad	.Ltmp565-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc90:
	.quad	.Ltmp566-.Lfunc_begin10
	.quad	.Ltmp567-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc91:
	.quad	.Ltmp571-.Lfunc_begin10
	.quad	.Ltmp572-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc92:
	.quad	.Lfunc_begin11-.Lfunc_begin10
	.quad	.Ltmp581-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc93:
	.quad	.Lfunc_begin11-.Lfunc_begin10
	.quad	.Ltmp580-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc94:
	.quad	.Lfunc_begin11-.Lfunc_begin10
	.quad	.Ltmp581-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc95:
	.quad	.Ltmp576-.Lfunc_begin10
	.quad	.Ltmp577-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp582-.Lfunc_begin10
	.quad	.Ltmp583-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	.Ltmp587-.Lfunc_begin10
	.quad	.Ltmp590-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc96:
	.quad	.Ltmp578-.Lfunc_begin10
	.quad	.Ltmp581-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc97:
	.quad	.Ltmp579-.Lfunc_begin10
	.quad	.Ltmp581-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc98:
	.quad	.Ltmp584-.Lfunc_begin10
	.quad	.Ltmp585-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc99:
	.quad	.Ltmp586-.Lfunc_begin10
	.quad	.Ltmp592-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc100:
	.quad	.Ltmp588-.Lfunc_begin10
	.quad	.Ltmp589-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc101:
	.quad	.Ltmp590-.Lfunc_begin10
	.quad	.Ltmp591-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc102:
	.quad	.Ltmp593-.Lfunc_begin10
	.quad	.Ltmp597-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc103:
	.quad	.Ltmp594-.Lfunc_begin10
	.quad	.Ltmp595-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc104:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp619-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp619-.Lfunc_begin12
	.quad	.Ltmp638-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc105:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp618-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp618-.Lfunc_begin12
	.quad	.Ltmp621-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp621-.Lfunc_begin12
	.quad	.Ltmp624-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp625-.Lfunc_begin12
	.quad	.Ltmp628-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp632-.Lfunc_begin12
	.quad	.Ltmp633-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc106:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp617-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp617-.Lfunc_begin12
	.quad	.Ltmp637-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc107:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp616-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp616-.Lfunc_begin12
	.quad	.Ltmp636-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc108:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp615-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp615-.Lfunc_begin12
	.quad	.Ltmp635-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc109:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp614-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp614-.Lfunc_begin12
	.quad	.Ltmp644-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc110:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp613-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp613-.Lfunc_begin12
	.quad	.Ltmp620-.Lfunc_begin12
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc111:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp612-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp612-.Lfunc_begin12
	.quad	.Ltmp620-.Lfunc_begin12
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc112:
	.quad	.Ltmp629-.Lfunc_begin12
	.quad	.Ltmp631-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp631-.Lfunc_begin12
	.quad	.Lfunc_end12-.Lfunc_begin12
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc113:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp647-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	92                      # DW_OP_reg12
	.quad	0
	.quad	0
.Ldebug_loc114:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp648-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc115:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp649-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc116:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp650-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc117:
	.quad	.Lfunc_begin12-.Lfunc_begin12
	.quad	.Ltmp646-.Lfunc_begin12
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc118:
	.quad	.Lfunc_begin14-.Lfunc_begin13
	.quad	.Ltmp656-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp656-.Lfunc_begin13
	.quad	.Ltmp659-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc119:
	.quad	.Lfunc_begin15-.Lfunc_begin13
	.quad	.Ltmp664-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp664-.Lfunc_begin13
	.quad	.Ltmp669-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc120:
	.quad	.Ltmp665-.Lfunc_begin13
	.quad	.Ltmp666-.Lfunc_begin13
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp666-.Lfunc_begin13
	.quad	.Ltmp667-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc121:
	.quad	.Ltmp666-.Lfunc_begin13
	.quad	.Ltmp667-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc122:
	.quad	.Ltmp667-.Lfunc_begin13
	.quad	.Ltmp668-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc123:
	.quad	.Lfunc_begin17-.Lfunc_begin17
	.quad	.Ltmp675-.Lfunc_begin17
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp675-.Lfunc_begin17
	.quad	.Ltmp682-.Lfunc_begin17
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc124:
	.quad	.Ltmp676-.Lfunc_begin17
	.quad	.Lfunc_end17-.Lfunc_begin17
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	0
	.quad	0
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	32                      # DW_AT_inline
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	29                      # DW_TAG_inlined_subroutine
	.byte	1                       # DW_CHILDREN_yes
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	88                      # DW_AT_call_file
	.byte	11                      # DW_FORM_data1
	.byte	89                      # DW_AT_call_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	31                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	32                      # DW_AT_inline
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	32                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	34                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	35                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	36                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	37                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	38                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	39                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	40                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	41                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	42                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	44                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	45                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	46                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	25                      # DW_FORM_flag_present
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	47                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	48                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	49                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	50                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	51                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	32                      # DW_AT_inline
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	52                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	53                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	54                      # Abbreviation Code
	.byte	29                      # DW_TAG_inlined_subroutine
	.byte	1                       # DW_CHILDREN_yes
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	88                      # DW_AT_call_file
	.byte	11                      # DW_FORM_data1
	.byte	89                      # DW_AT_call_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	55                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	56                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	57                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lsection_info:
.Lcu_begin0:
	.long	574                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x237 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	sums
	.byte	3                       # Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.byte	7                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4b:0xb DW_TAG_typedef
	.long	86                      # DW_AT_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x56:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x5a:0xc DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	115                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x66:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	115                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x73:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	9                       # Abbrev [9] 0x7a:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x81:0x15 DW_TAG_variable
	.long	.Linfo_string9          # DW_AT_name
	.long	150                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	twiddle
	.byte	3                       # Abbrev [3] 0x96:0x1a DW_TAG_array_type
	.long	115                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x9b:0x6 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.byte	128                     # DW_AT_count
	.byte	10                      # Abbrev [10] 0xa1:0x7 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	10                      # Abbrev [10] 0xa8:0x7 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.short	257                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xb0:0x15 DW_TAG_variable
	.long	.Linfo_string10         # DW_AT_name
	.long	197                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	xnt
	.byte	3                       # Abbrev [3] 0xc5:0x1a DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0xca:0x6 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.byte	128                     # DW_AT_count
	.byte	10                      # Abbrev [10] 0xd0:0x7 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	10                      # Abbrev [10] 0xd7:0x7 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.short	257                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xdf:0x15 DW_TAG_variable
	.long	.Linfo_string11         # DW_AT_name
	.long	197                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	y
	.byte	11                      # Abbrev [11] 0xf4:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0xf8:0x6 DW_TAG_enumerator
	.long	.Linfo_string12         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	12                      # Abbrev [12] 0xfe:0x6 DW_TAG_enumerator
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x105:0x5 DW_TAG_pointer_type
	.long	75                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x10a:0x119 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string53         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0x11f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string73         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x12e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string74         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x13d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string75         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	572                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x14c:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\3000"
	.long	.Linfo_string70         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	547                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x15b:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\300\020"
	.long	.Linfo_string71         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	547                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x16a:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.asciz	"\300"
	.long	.Linfo_string72         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	560                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x179:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string76         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x188:0xf DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string77         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x197:0xf DW_TAG_variable
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x1a6:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string79         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1b2:0xf DW_TAG_variable
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string80         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x1c1:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string81         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1cd:0xf DW_TAG_variable
	.long	.Ldebug_loc7            # DW_AT_location
	.long	.Linfo_string82         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x1dc:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	94
	.byte	147
	.byte	4
	.long	.Linfo_string83         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x1eb:0xb DW_TAG_variable
	.long	.Linfo_string84         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x1f6:0xb DW_TAG_variable
	.long	.Linfo_string85         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x201:0xb DW_TAG_variable
	.long	.Linfo_string86         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x20c:0xb DW_TAG_variable
	.long	.Linfo_string87         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x217:0xb DW_TAG_variable
	.long	.Linfo_string88         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	115                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x223:0xd DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	10                      # Abbrev [10] 0x228:0x7 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x230:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x235:0x6 DW_TAG_subrange_type
	.long	122                     # DW_AT_type
	.byte	128                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x23c:0x5 DW_TAG_pointer_type
	.long	.Lsection_info+2708     # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin1:
	.long	1219                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	24                      # Abbrev [24] 0xb:0x4bc DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string14         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	0                       # DW_AT_low_pc
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x2a:0x5 DW_TAG_pointer_type
	.long	.Lsection_info+115      # DW_AT_type
	.byte	25                      # Abbrev [25] 0x2f:0x65 DW_TAG_subprogram
	.long	.Linfo_string32         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+115      # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	26                      # Abbrev [26] 0x3b:0xb DW_TAG_formal_parameter
	.long	.Linfo_string33         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	26                      # Abbrev [26] 0x46:0xb DW_TAG_formal_parameter
	.long	.Linfo_string34         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x51:0xb DW_TAG_variable
	.long	.Linfo_string35         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x5c:0xb DW_TAG_variable
	.long	.Linfo_string36         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x67:0xb DW_TAG_variable
	.long	.Linfo_string37         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x72:0xb DW_TAG_variable
	.long	.Linfo_string38         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	88                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x7d:0xb DW_TAG_variable
	.long	.Linfo_string39         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	88                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x88:0xb DW_TAG_variable
	.long	.Linfo_string40         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x94:0x137 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string56         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0xa9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc8            # DW_AT_location
	.long	.Linfo_string91         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xb8:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc9            # DW_AT_location
	.long	.Linfo_string92         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xc7:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc10           # DW_AT_location
	.long	.Linfo_string93         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xd6:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc11           # DW_AT_location
	.long	.Linfo_string94         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	1170                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0xe5:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340\020"
	.long	.Linfo_string89         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.long	1097                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf4:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	.Linfo_string90         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	1157                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x103:0xf DW_TAG_variable
	.long	.Ldebug_loc12           # DW_AT_location
	.long	.Linfo_string28         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	27                      # Abbrev [27] 0x112:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	.Linfo_string33         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	1191                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x126:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	161
	.byte	176
	.byte	185
	.byte	178
	.byte	65
	.long	.Linfo_string95         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	1191                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x13a:0xf DW_TAG_variable
	.long	.Ldebug_loc13           # DW_AT_location
	.long	.Linfo_string96         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x149:0xc DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string79         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x155:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string81         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x161:0xb DW_TAG_variable
	.long	.Linfo_string97         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x16c:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x178:0xb DW_TAG_variable
	.long	.Linfo_string40         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	28                      # Abbrev [28] 0x183:0x47 DW_TAG_inlined_subroutine
	.long	47                      # DW_AT_abstract_origin
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	8                       # DW_AT_call_file
	.byte	153                     # DW_AT_call_line
	.byte	29                      # Abbrev [29] 0x18e:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	59                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x19c:0x9 DW_TAG_variable
	.long	.Ldebug_loc14           # DW_AT_location
	.long	81                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1a5:0x9 DW_TAG_variable
	.long	.Ldebug_loc15           # DW_AT_location
	.long	92                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1ae:0x9 DW_TAG_variable
	.long	.Ldebug_loc16           # DW_AT_location
	.long	103                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1b7:0x9 DW_TAG_variable
	.long	.Ldebug_loc17           # DW_AT_location
	.long	114                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1c0:0x9 DW_TAG_variable
	.long	.Ldebug_loc18           # DW_AT_location
	.long	125                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1cb:0x2e DW_TAG_subprogram
	.long	.Linfo_string41         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+1864     # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	26                      # Abbrev [26] 0x1d7:0xb DW_TAG_formal_parameter
	.long	.Linfo_string39         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x1e2:0xb DW_TAG_variable
	.long	.Linfo_string42         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x1ed:0xb DW_TAG_variable
	.long	.Linfo_string43         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x1f9:0xd7 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string54         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	32                      # Abbrev [32] 0x20e:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string39         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x21d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc19           # DW_AT_location
	.long	.Linfo_string34         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	1196                    # DW_AT_type
	.byte	20                      # Abbrev [20] 0x22c:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string98         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	27                      # Abbrev [27] 0x23b:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	24
	.byte	45
	.byte	68
	.byte	84
	.byte	251
	.byte	33
	.byte	9
	.byte	64
	.long	.Linfo_string99         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	1191                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x24f:0xf DW_TAG_variable
	.long	.Ldebug_loc20           # DW_AT_location
	.long	.Linfo_string81         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x25e:0xf DW_TAG_variable
	.long	.Ldebug_loc21           # DW_AT_location
	.long	.Linfo_string100        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x26d:0xf DW_TAG_variable
	.long	.Ldebug_loc22           # DW_AT_location
	.long	.Linfo_string101        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x27c:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x288:0xf DW_TAG_variable
	.long	.Ldebug_loc24           # DW_AT_location
	.long	.Linfo_string52         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x297:0xf DW_TAG_variable
	.long	.Ldebug_loc25           # DW_AT_location
	.long	.Linfo_string102        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x2a6:0xb DW_TAG_variable
	.long	.Linfo_string103        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x2b1:0x1e DW_TAG_inlined_subroutine
	.long	459                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	8                       # DW_AT_call_file
	.byte	51                      # DW_AT_call_line
	.byte	33                      # Abbrev [33] 0x2bc:0x9 DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	471                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x2c5:0x9 DW_TAG_variable
	.long	.Ldebug_loc23           # DW_AT_location
	.long	482                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	34                      # Abbrev [34] 0x2d0:0x2f DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	459                     # DW_AT_abstract_origin
	.byte	33                      # Abbrev [33] 0x2e3:0x9 DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	471                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x2ec:0x9 DW_TAG_variable
	.long	.Ldebug_loc41           # DW_AT_location
	.long	482                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x2f5:0x9 DW_TAG_variable
	.long	.Ldebug_loc42           # DW_AT_location
	.long	493                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x2ff:0x92 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string57         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	32                      # Abbrev [32] 0x314:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string129        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x323:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	84
	.byte	147
	.byte	4
	.long	.Linfo_string130        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x332:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc56           # DW_AT_location
	.long	.Linfo_string131        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x341:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc57           # DW_AT_location
	.long	.Linfo_string107        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	1170                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x350:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc58           # DW_AT_location
	.long	.Linfo_string11         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	1170                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x35f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc59           # DW_AT_location
	.long	.Linfo_string9          # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	177                     # DW_AT_decl_line
	.long	1201                    # DW_AT_type
	.byte	19                      # Abbrev [19] 0x36e:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x37a:0xb DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x385:0xb DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x391:0xb8 DW_TAG_subprogram
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string55         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0x3a6:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc60           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	1196                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x3b5:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	84
	.byte	147
	.byte	4
	.long	.Linfo_string133        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x3c4:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc61           # DW_AT_location
	.long	.Linfo_string91         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x3d3:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc62           # DW_AT_location
	.long	.Linfo_string92         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x3e2:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	88
	.byte	147
	.byte	4
	.long	.Linfo_string93         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	35                      # Abbrev [35] 0x3f1:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	89
	.long	.Linfo_string134        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	1170                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x3fe:0xf DW_TAG_variable
	.long	.Ldebug_loc63           # DW_AT_location
	.long	.Linfo_string76         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x40d:0xb DW_TAG_variable
	.long	.Linfo_string135        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	121                     # DW_AT_decl_line
	.long	1110                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x418:0xf DW_TAG_variable
	.long	.Ldebug_loc64           # DW_AT_location
	.long	.Linfo_string136        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x427:0xb DW_TAG_variable
	.long	.Linfo_string77         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x432:0xb DW_TAG_variable
	.long	.Linfo_string137        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x43d:0xb DW_TAG_variable
	.long	.Linfo_string138        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x449:0xd DW_TAG_array_type
	.long	1110                    # DW_AT_type
	.byte	10                      # Abbrev [10] 0x44e:0x7 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x456:0xb DW_TAG_typedef
	.long	1121                    # DW_AT_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x461:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	36                      # Abbrev [36] 0x465:0xc DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	36                      # Abbrev [36] 0x471:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x47e:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	37                      # Abbrev [37] 0x485:0xd DW_TAG_array_type
	.long	.Lsection_info+115      # DW_AT_type
	.byte	10                      # Abbrev [10] 0x48a:0x7 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x492:0x5 DW_TAG_pointer_type
	.long	1175                    # DW_AT_type
	.byte	3                       # Abbrev [3] 0x497:0x10 DW_TAG_array_type
	.long	1110                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0x49c:0x5 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0x4a1:0x5 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	39                      # Abbrev [39] 0x4a7:0x5 DW_TAG_const_type
	.long	.Lsection_info+115      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x4ac:0x5 DW_TAG_pointer_type
	.long	1110                    # DW_AT_type
	.byte	13                      # Abbrev [13] 0x4b1:0x5 DW_TAG_pointer_type
	.long	1206                    # DW_AT_type
	.byte	37                      # Abbrev [37] 0x4b6:0x10 DW_TAG_array_type
	.long	.Lsection_info+115      # DW_AT_type
	.byte	38                      # Abbrev [38] 0x4bb:0x5 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0x4c0:0x5 DW_TAG_subrange_type
	.long	1150                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin2:
	.long	840                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	24                      # Abbrev [24] 0xb:0x341 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string15         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	0                       # DW_AT_low_pc
	.long	.Ldebug_ranges3         # DW_AT_ranges
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string16         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	fftblock
	.byte	8                       # Abbrev [8] 0x3f:0x7 DW_TAG_base_type
	.long	.Linfo_string17         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x46:0x15 DW_TAG_variable
	.long	.Linfo_string18         # DW_AT_name
	.long	91                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	plane
	.byte	3                       # Abbrev [3] 0x5b:0xd DW_TAG_array_type
	.long	104                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x60:0x7 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.short	8448                    # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x68:0xb DW_TAG_typedef
	.long	115                     # DW_AT_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x73:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	36                      # Abbrev [36] 0x77:0xc DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	36                      # Abbrev [36] 0x83:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x90:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x97:0x15 DW_TAG_variable
	.long	.Linfo_string19         # DW_AT_name
	.long	172                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	scr
	.byte	3                       # Abbrev [3] 0xac:0x13 DW_TAG_array_type
	.long	104                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0xb1:0x7 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.short	256                     # DW_AT_count
	.byte	4                       # Abbrev [4] 0xb8:0x6 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.byte	33                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0xbf:0x5 DW_TAG_pointer_type
	.long	196                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0xc4:0xb DW_TAG_array_type
	.long	104                     # DW_AT_type
	.byte	38                      # Abbrev [38] 0xc9:0x5 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xcf:0x10e DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string58         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0xe4:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc26           # DW_AT_location
	.long	.Linfo_string104        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xf3:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc27           # DW_AT_location
	.long	.Linfo_string105        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x102:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc28           # DW_AT_location
	.long	.Linfo_string38         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x111:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc29           # DW_AT_location
	.long	.Linfo_string106        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x120:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc30           # DW_AT_location
	.long	.Linfo_string107        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	817                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x12f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc31           # DW_AT_location
	.long	.Linfo_string108        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	838                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x13e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc34           # DW_AT_location
	.long	.Linfo_string70         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	838                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x14d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc33           # DW_AT_location
	.long	.Linfo_string71         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	838                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x15c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string72         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	838                     # DW_AT_type
	.byte	40                      # Abbrev [40] 0x16b:0xf DW_TAG_variable
	.long	.Ldebug_loc35           # DW_AT_location
	.long	.Linfo_string109        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x17a:0xf DW_TAG_variable
	.long	.Ldebug_loc36           # DW_AT_location
	.long	.Linfo_string110        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x189:0xf DW_TAG_variable
	.long	.Ldebug_loc37           # DW_AT_location
	.long	.Linfo_string111        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x198:0xf DW_TAG_variable
	.long	.Ldebug_loc38           # DW_AT_location
	.long	.Linfo_string112        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x1a7:0xf DW_TAG_variable
	.long	.Ldebug_loc39           # DW_AT_location
	.long	.Linfo_string81         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x1b6:0xf DW_TAG_variable
	.long	.Ldebug_loc40           # DW_AT_location
	.long	.Linfo_string113        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	41                      # Abbrev [41] 0x1c5:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x1d1:0xb DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	42                      # Abbrev [42] 0x1dd:0x154 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0x1f2:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc43           # DW_AT_location
	.long	.Linfo_string114        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x201:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc44           # DW_AT_location
	.long	.Linfo_string103        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x210:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc45           # DW_AT_location
	.long	.Linfo_string115        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x21f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc46           # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x22e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc47           # DW_AT_location
	.long	.Linfo_string116        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x23d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc48           # DW_AT_location
	.long	.Linfo_string117        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	.Lsection_info+2719     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x24c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc49           # DW_AT_location
	.long	.Linfo_string34         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	838                     # DW_AT_type
	.byte	40                      # Abbrev [40] 0x25b:0xf DW_TAG_variable
	.long	.Ldebug_loc50           # DW_AT_location
	.long	.Linfo_string118        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x26a:0xf DW_TAG_variable
	.long	.Ldebug_loc51           # DW_AT_location
	.long	.Linfo_string119        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x279:0xf DW_TAG_variable
	.long	.Ldebug_loc52           # DW_AT_location
	.long	.Linfo_string105        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x288:0xf DW_TAG_variable
	.long	.Ldebug_loc53           # DW_AT_location
	.long	.Linfo_string120        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	41                      # Abbrev [41] 0x297:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x2a3:0xf DW_TAG_variable
	.long	.Ldebug_loc54           # DW_AT_location
	.long	.Linfo_string101        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x2b2:0xf DW_TAG_variable
	.long	.Ldebug_loc55           # DW_AT_location
	.long	.Linfo_string121        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	104                     # DW_AT_type
	.byte	41                      # Abbrev [41] 0x2c1:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string79         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x2cd:0xb DW_TAG_variable
	.long	.Linfo_string107        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	191                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x2d8:0xb DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x2e3:0xb DW_TAG_variable
	.long	.Linfo_string122        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	104                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x2ee:0xb DW_TAG_variable
	.long	.Linfo_string123        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	104                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x2f9:0xb DW_TAG_variable
	.long	.Linfo_string124        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x304:0xb DW_TAG_variable
	.long	.Linfo_string125        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x30f:0xb DW_TAG_variable
	.long	.Linfo_string126        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x31a:0xb DW_TAG_variable
	.long	.Linfo_string127        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x325:0xb DW_TAG_variable
	.long	.Linfo_string128        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x331:0x5 DW_TAG_pointer_type
	.long	822                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x336:0x10 DW_TAG_array_type
	.long	104                     # DW_AT_type
	.byte	38                      # Abbrev [38] 0x33b:0x5 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.byte	38                      # Abbrev [38] 0x340:0x5 DW_TAG_subrange_type
	.long	144                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x346:0x5 DW_TAG_pointer_type
	.long	104                     # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin3:
	.long	781                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x306 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string20         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
	.byte	43                      # Abbrev [43] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string21         # DW_AT_name
	.long	63                      # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	timers_enabled
	.byte	44                      # Abbrev [44] 0x3f:0xb DW_TAG_typedef
	.long	.Lsection_info+244      # DW_AT_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x4a:0x1 DW_TAG_pointer_type
	.byte	46                      # Abbrev [46] 0x4b:0x89 DW_TAG_subprogram
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string60         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+1864     # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0x64:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc78           # DW_AT_location
	.long	.Linfo_string144        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x73:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc79           # DW_AT_location
	.long	.Linfo_string145        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	212                     # DW_AT_type
	.byte	40                      # Abbrev [40] 0x82:0xf DW_TAG_variable
	.long	.Ldebug_loc80           # DW_AT_location
	.long	.Linfo_string147        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	229                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x91:0xc DW_TAG_variable
	.byte	6                       # DW_AT_const_value
	.long	.Linfo_string73         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x9d:0xf DW_TAG_variable
	.long	.Ldebug_loc81           # DW_AT_location
	.long	.Linfo_string74         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	41                      # Abbrev [41] 0xac:0xd DW_TAG_variable
	.asciz	"\301"                  # DW_AT_const_value
	.long	.Linfo_string191        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	222                     # DW_AT_type
	.byte	40                      # Abbrev [40] 0xb9:0xf DW_TAG_variable
	.long	.Ldebug_loc82           # DW_AT_location
	.long	.Linfo_string75         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	63                      # DW_AT_type
	.byte	21                      # Abbrev [21] 0xc8:0xb DW_TAG_variable
	.long	.Linfo_string192        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0xd4:0x5 DW_TAG_pointer_type
	.long	217                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0xd9:0x5 DW_TAG_pointer_type
	.long	222                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0xde:0x7 DW_TAG_base_type
	.long	.Linfo_string146        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	13                      # Abbrev [13] 0xe5:0x5 DW_TAG_pointer_type
	.long	234                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xea:0xb DW_TAG_typedef
	.long	245                     # DW_AT_type
	.long	.Linfo_string190        # DW_AT_name
	.byte	16                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	47                      # Abbrev [47] 0xf5:0x17c DW_TAG_structure_type
	.long	.Linfo_string189        # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	13                      # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	36                      # Abbrev [36] 0xfd:0xc DW_TAG_member
	.long	.Linfo_string148        # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x109:0xc DW_TAG_member
	.long	.Linfo_string149        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x115:0xc DW_TAG_member
	.long	.Linfo_string150        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x121:0xc DW_TAG_member
	.long	.Linfo_string151        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x12d:0xc DW_TAG_member
	.long	.Linfo_string152        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x139:0xc DW_TAG_member
	.long	.Linfo_string153        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x145:0xd DW_TAG_member
	.long	.Linfo_string154        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x152:0xd DW_TAG_member
	.long	.Linfo_string155        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x15f:0xd DW_TAG_member
	.long	.Linfo_string156        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x16c:0xd DW_TAG_member
	.long	.Linfo_string157        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x179:0xd DW_TAG_member
	.long	.Linfo_string158        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x186:0xd DW_TAG_member
	.long	.Linfo_string159        # DW_AT_name
	.long	217                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x193:0xd DW_TAG_member
	.long	.Linfo_string160        # DW_AT_name
	.long	625                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1a0:0xd DW_TAG_member
	.long	.Linfo_string165        # DW_AT_name
	.long	675                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x1ad:0xd DW_TAG_member
	.long	.Linfo_string166        # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x1ba:0xd DW_TAG_member
	.long	.Linfo_string167        # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1c7:0xd DW_TAG_member
	.long	.Linfo_string168        # DW_AT_name
	.long	680                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1d4:0xd DW_TAG_member
	.long	.Linfo_string171        # DW_AT_name
	.long	698                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1e1:0xd DW_TAG_member
	.long	.Linfo_string173        # DW_AT_name
	.long	705                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1ee:0xd DW_TAG_member
	.long	.Linfo_string175        # DW_AT_name
	.long	712                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x1fb:0xd DW_TAG_member
	.long	.Linfo_string176        # DW_AT_name
	.long	731                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x208:0xd DW_TAG_member
	.long	.Linfo_string178        # DW_AT_name
	.long	743                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x215:0xd DW_TAG_member
	.long	.Linfo_string180        # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x222:0xd DW_TAG_member
	.long	.Linfo_string181        # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x22f:0xd DW_TAG_member
	.long	.Linfo_string182        # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x23c:0xd DW_TAG_member
	.long	.Linfo_string183        # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x249:0xd DW_TAG_member
	.long	.Linfo_string184        # DW_AT_name
	.long	754                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x256:0xd DW_TAG_member
	.long	.Linfo_string187        # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	48                      # Abbrev [48] 0x263:0xd DW_TAG_member
	.long	.Linfo_string188        # DW_AT_name
	.long	772                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x271:0x5 DW_TAG_pointer_type
	.long	630                     # DW_AT_type
	.byte	47                      # Abbrev [47] 0x276:0x2d DW_TAG_structure_type
	.long	.Linfo_string164        # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	13                      # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x27e:0xc DW_TAG_member
	.long	.Linfo_string161        # DW_AT_name
	.long	625                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x28a:0xc DW_TAG_member
	.long	.Linfo_string162        # DW_AT_name
	.long	675                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	36                      # Abbrev [36] 0x296:0xc DW_TAG_member
	.long	.Linfo_string163        # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x2a3:0x5 DW_TAG_pointer_type
	.long	245                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x2a8:0xb DW_TAG_typedef
	.long	691                     # DW_AT_type
	.long	.Linfo_string170        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x2b3:0x7 DW_TAG_base_type
	.long	.Linfo_string169        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x2ba:0x7 DW_TAG_base_type
	.long	.Linfo_string172        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x2c1:0x7 DW_TAG_base_type
	.long	.Linfo_string174        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x2c8:0xc DW_TAG_array_type
	.long	222                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x2cd:0x6 DW_TAG_subrange_type
	.long	724                     # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x2d4:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x2db:0x5 DW_TAG_pointer_type
	.long	736                     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x2e0:0x7 DW_TAG_typedef
	.long	.Linfo_string177        # DW_AT_name
	.byte	13                      # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x2e7:0xb DW_TAG_typedef
	.long	691                     # DW_AT_type
	.long	.Linfo_string179        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x2f2:0xb DW_TAG_typedef
	.long	765                     # DW_AT_type
	.long	.Linfo_string186        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x2fd:0x7 DW_TAG_base_type
	.long	.Linfo_string185        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x304:0xc DW_TAG_array_type
	.long	222                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x309:0x6 DW_TAG_subrange_type
	.long	724                     # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin4:
	.long	499                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1ec DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string23         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
	.byte	51                      # Abbrev [51] 0x2a:0x7b DW_TAG_subprogram
	.long	.Linfo_string44         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	165                     # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	52                      # Abbrev [52] 0x36:0xb DW_TAG_formal_parameter
	.long	.Linfo_string45         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	165                     # DW_AT_type
	.byte	52                      # Abbrev [52] 0x41:0xb DW_TAG_formal_parameter
	.long	.Linfo_string46         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	165                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4c:0xb DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x57:0xb DW_TAG_variable
	.long	.Linfo_string48         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x62:0xb DW_TAG_variable
	.long	.Linfo_string33         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x6d:0xb DW_TAG_variable
	.long	.Linfo_string49         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x78:0xb DW_TAG_variable
	.long	.Linfo_string4          # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x83:0xb DW_TAG_variable
	.long	.Linfo_string35         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	165                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x8e:0xb DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x99:0xb DW_TAG_variable
	.long	.Linfo_string50         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0xa5:0xb DW_TAG_typedef
	.long	176                     # DW_AT_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0xb0:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	36                      # Abbrev [36] 0xb4:0xc DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	36                      # Abbrev [36] 0xc0:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	.Lsection_info+115      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xcd:0x111 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string61         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0xe2:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc65           # DW_AT_location
	.long	.Linfo_string105        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0xf1:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	84
	.byte	147
	.byte	4
	.long	.Linfo_string38         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x100:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	81
	.byte	147
	.byte	4
	.long	.Linfo_string106        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x10f:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	82
	.byte	147
	.byte	4
	.long	.Linfo_string140        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x11e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc66           # DW_AT_location
	.long	.Linfo_string141        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	497                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x12d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc67           # DW_AT_location
	.long	.Linfo_string75         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+572      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x13c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string139        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	478                     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x14a:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	17
	.byte	234
	.byte	45
	.byte	129
	.byte	153
	.byte	151
	.byte	113
	.byte	61
	.long	.Linfo_string142        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x15e:0xf DW_TAG_variable
	.long	.Ldebug_loc68           # DW_AT_location
	.long	.Linfo_string143        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x16d:0xb DW_TAG_variable
	.long	.Linfo_string83         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	54                      # Abbrev [54] 0x178:0x65 DW_TAG_inlined_subroutine
	.long	42                      # DW_AT_abstract_origin
	.quad	.Ltmp510                # DW_AT_low_pc
	.long	.Ltmp516-.Ltmp510       # DW_AT_high_pc
	.byte	9                       # DW_AT_call_file
	.byte	185                     # DW_AT_call_line
	.byte	55                      # Abbrev [55] 0x18b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc72           # DW_AT_location
	.long	54                      # DW_AT_abstract_origin
	.byte	55                      # Abbrev [55] 0x194:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc70           # DW_AT_location
	.long	65                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x19d:0x9 DW_TAG_variable
	.long	.Ldebug_loc69           # DW_AT_location
	.long	76                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1a6:0x9 DW_TAG_variable
	.long	.Ldebug_loc71           # DW_AT_location
	.long	87                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1af:0x9 DW_TAG_variable
	.long	.Ldebug_loc73           # DW_AT_location
	.long	98                      # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1b8:0x9 DW_TAG_variable
	.long	.Ldebug_loc74           # DW_AT_location
	.long	109                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1c1:0x9 DW_TAG_variable
	.long	.Ldebug_loc75           # DW_AT_location
	.long	120                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1ca:0x9 DW_TAG_variable
	.long	.Ldebug_loc76           # DW_AT_location
	.long	131                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x1d3:0x9 DW_TAG_variable
	.long	.Ldebug_loc77           # DW_AT_location
	.long	142                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x1de:0xc DW_TAG_array_type
	.long	165                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x1e3:0x6 DW_TAG_subrange_type
	.long	490                     # DW_AT_type
	.byte	26                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x1ea:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x1f1:0x5 DW_TAG_pointer_type
	.long	165                     # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin5:
	.long	626                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x26b DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string24         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string25         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin10 # DW_AT_high_pc
	.byte	46                      # Abbrev [46] 0x2a:0x118 DW_TAG_subprogram
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string62         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+115      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	32                      # Abbrev [32] 0x43:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string107        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc83           # DW_AT_location
	.long	.Linfo_string33         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x5f:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string193        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x73:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string194        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x87:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string195        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x9b:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string196        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	18                      # Abbrev [18] 0xaf:0xf DW_TAG_variable
	.long	.Ldebug_loc84           # DW_AT_location
	.long	.Linfo_string197        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0xbe:0xf DW_TAG_variable
	.long	.Ldebug_loc85           # DW_AT_location
	.long	.Linfo_string198        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0xcd:0xf DW_TAG_variable
	.long	.Ldebug_loc86           # DW_AT_location
	.long	.Linfo_string199        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0xdc:0xf DW_TAG_variable
	.long	.Ldebug_loc87           # DW_AT_location
	.long	.Linfo_string200        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0xeb:0xf DW_TAG_variable
	.long	.Ldebug_loc88           # DW_AT_location
	.long	.Linfo_string201        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0xfa:0xf DW_TAG_variable
	.long	.Ldebug_loc89           # DW_AT_location
	.long	.Linfo_string202        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc90           # DW_AT_location
	.long	.Linfo_string203        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x118:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string204        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x125:0xf DW_TAG_variable
	.long	.Ldebug_loc91           # DW_AT_location
	.long	.Linfo_string205        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x134:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	97
	.long	.Linfo_string37         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x142:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin11          # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string63         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0x157:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc92           # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x166:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string107        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x173:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc93           # DW_AT_location
	.long	.Linfo_string33         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x182:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc94           # DW_AT_location
	.long	.Linfo_string11         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x191:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string193        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x1a5:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string194        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x1b9:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string195        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x1cd:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string196        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	.Lsection_info+1769     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x1e1:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1ed:0xf DW_TAG_variable
	.long	.Ldebug_loc95           # DW_AT_location
	.long	.Linfo_string197        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1fc:0xf DW_TAG_variable
	.long	.Ldebug_loc96           # DW_AT_location
	.long	.Linfo_string198        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x20b:0xf DW_TAG_variable
	.long	.Ldebug_loc97           # DW_AT_location
	.long	.Linfo_string199        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x21a:0xf DW_TAG_variable
	.long	.Ldebug_loc98           # DW_AT_location
	.long	.Linfo_string200        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x229:0xf DW_TAG_variable
	.long	.Ldebug_loc99           # DW_AT_location
	.long	.Linfo_string201        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x238:0xf DW_TAG_variable
	.long	.Ldebug_loc100          # DW_AT_location
	.long	.Linfo_string202        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x247:0xf DW_TAG_variable
	.long	.Ldebug_loc101          # DW_AT_location
	.long	.Linfo_string203        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x256:0xf DW_TAG_variable
	.long	.Ldebug_loc102          # DW_AT_location
	.long	.Linfo_string204        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x265:0xf DW_TAG_variable
	.long	.Ldebug_loc103          # DW_AT_location
	.long	.Linfo_string205        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin6:
	.long	398                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x187 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string26         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string25         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin12          # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12 # DW_AT_high_pc
	.byte	11                      # Abbrev [11] 0x2a:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string12         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	12                      # Abbrev [12] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x3b:0x138 DW_TAG_subprogram
	.quad	.Lfunc_begin12          # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string64         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc104          # DW_AT_location
	.long	.Linfo_string207        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x5f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc105          # DW_AT_location
	.long	.Linfo_string208        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+2867     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x6e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc106          # DW_AT_location
	.long	.Linfo_string105        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x7d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc107          # DW_AT_location
	.long	.Linfo_string38         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x8c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc108          # DW_AT_location
	.long	.Linfo_string106        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x9b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc109          # DW_AT_location
	.long	.Linfo_string73         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xaa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc110          # DW_AT_location
	.long	.Linfo_string52         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	15                      # Abbrev [15] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc111          # DW_AT_location
	.long	.Linfo_string209        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	26                      # Abbrev [26] 0xc8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string210        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	52                      # Abbrev [52] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string75         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	390                     # DW_AT_type
	.byte	26                      # Abbrev [26] 0xde:0xb DW_TAG_formal_parameter
	.long	.Linfo_string216        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	26                      # Abbrev [26] 0xe9:0xb DW_TAG_formal_parameter
	.long	.Linfo_string217        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	26                      # Abbrev [26] 0xf4:0xb DW_TAG_formal_parameter
	.long	.Linfo_string218        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xff:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc117          # DW_AT_location
	.long	.Linfo_string219        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x10e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc116          # DW_AT_location
	.long	.Linfo_string215        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x11d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc115          # DW_AT_location
	.long	.Linfo_string214        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x12c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc114          # DW_AT_location
	.long	.Linfo_string213        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x13b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc113          # DW_AT_location
	.long	.Linfo_string212        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	26                      # Abbrev [26] 0x14a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string211        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+2862     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x155:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string206        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	371                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x163:0xf DW_TAG_variable
	.long	.Ldebug_loc112          # DW_AT_location
	.long	.Linfo_string81         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	37                      # Abbrev [37] 0x173:0xc DW_TAG_array_type
	.long	.Lsection_info+2867     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x178:0x6 DW_TAG_subrange_type
	.long	383                     # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x17f:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	5                       # Abbrev [5] 0x186:0xb DW_TAG_typedef
	.long	42                      # DW_AT_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Lcu_begin7:
	.long	363                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x164 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string27         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string25         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin13 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string28         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	6                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	start
	.byte	37                      # Abbrev [37] 0x3f:0xc DW_TAG_array_type
	.long	.Lsection_info+115      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	75                      # DW_AT_type
	.byte	64                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x52:0x15 DW_TAG_variable
	.long	.Linfo_string29         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	6                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	elapsed
	.byte	14                      # Abbrev [14] 0x67:0x25 DW_TAG_subprogram
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string65         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	32                      # Abbrev [32] 0x7c:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string39         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x8c:0x18 DW_TAG_subprogram
	.long	.Linfo_string51         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+115      # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	21                      # Abbrev [21] 0x98:0xb DW_TAG_variable
	.long	.Linfo_string52         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xa4:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin14          # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string66         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc118          # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	54                      # Abbrev [54] 0xc8:0x1c DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp657                # DW_AT_low_pc
	.long	.Ltmp658-.Ltmp657       # DW_AT_high_pc
	.byte	6                       # DW_AT_call_file
	.byte	36                      # DW_AT_call_line
	.byte	56                      # Abbrev [56] 0xdb:0x8 DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	117
	.byte	0
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xe5:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin15          # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string67         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	15                      # Abbrev [15] 0xfa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc119          # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc121          # DW_AT_location
	.long	.Linfo_string220        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x118:0xf DW_TAG_variable
	.long	.Ldebug_loc122          # DW_AT_location
	.long	.Linfo_string52         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+115      # DW_AT_type
	.byte	54                      # Abbrev [54] 0x127:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp665                # DW_AT_low_pc
	.long	.Ltmp666-.Ltmp665       # DW_AT_high_pc
	.byte	6                       # DW_AT_call_file
	.byte	47                      # DW_AT_call_line
	.byte	30                      # Abbrev [30] 0x13a:0x9 DW_TAG_variable
	.long	.Ldebug_loc120          # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	46                      # Abbrev [46] 0x145:0x29 DW_TAG_subprogram
	.quad	.Lfunc_begin16          # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string68         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+115      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	32                      # Abbrev [32] 0x15e:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string39         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin8:
	.long	167                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xa0 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string30         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string25         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin17          # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17 # DW_AT_high_pc
	.byte	14                      # Abbrev [14] 0x2a:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin17          # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string69         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	57                      # Abbrev [57] 0x3f:0x15 DW_TAG_variable
	.long	.Linfo_string31         # DW_AT_name
	.long	.Lsection_info+1864     # DW_AT_type
	.byte	7                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wtime_.sec
	.byte	15                      # Abbrev [15] 0x54:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc123          # DW_AT_location
	.long	.Linfo_string52         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	40                      # Abbrev [40] 0x63:0xf DW_TAG_variable
	.long	.Ldebug_loc124          # DW_AT_location
	.long	.Linfo_string221        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	115                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	47                      # Abbrev [47] 0x73:0x21 DW_TAG_structure_type
	.long	.Linfo_string226        # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	18                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x7b:0xc DW_TAG_member
	.long	.Linfo_string222        # DW_AT_name
	.long	148                     # DW_AT_type
	.byte	18                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	7                       # Abbrev [7] 0x87:0xc DW_TAG_member
	.long	.Linfo_string224        # DW_AT_name
	.long	159                     # DW_AT_type
	.byte	18                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	44                      # Abbrev [44] 0x94:0xb DW_TAG_typedef
	.long	.Lsection_info+3336     # DW_AT_type
	.long	.Linfo_string223        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	44                      # Abbrev [44] 0x9f:0xb DW_TAG_typedef
	.long	.Lsection_info+3336     # DW_AT_type
	.long	.Linfo_string225        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
.Ldebug_ranges0:
	.quad	.Ltmp87
	.quad	.Ltmp96
	.quad	.Ltmp98
	.quad	.Ltmp106
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp151
	.quad	.Ltmp152
	.quad	.Ltmp154
	.quad	.Ltmp155
	.quad	.Ltmp157
	.quad	.Ltmp160
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end4
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end7
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
.Lcu_macro_begin1:
.Lcu_macro_begin2:
.Lcu_macro_begin3:
.Lcu_macro_begin4:
.Lcu_macro_begin5:
.Lcu_macro_begin6:
.Lcu_macro_begin7:
.Lcu_macro_begin8:
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	578                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"sums"                  # External Name
	.long	223                     # DIE offset
	.asciz	"y"                     # External Name
	.long	176                     # DIE offset
	.asciz	"xnt"                   # External Name
	.long	266                     # DIE offset
	.asciz	"appft"                 # External Name
	.long	129                     # DIE offset
	.asciz	"twiddle"               # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.long	.LpubNames_end1-.LpubNames_begin1 # Length of Public Names Info
.LpubNames_begin1:
	.short	2                       # DWARF Version
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	1223                    # Compilation Unit Length
	.long	913                     # DIE offset
	.asciz	"CalculateChecksum"     # External Name
	.long	767                     # DIE offset
	.asciz	"evolve"                # External Name
	.long	47                      # DIE offset
	.asciz	"ipow46"                # External Name
	.long	505                     # DIE offset
	.asciz	"CompExp"               # External Name
	.long	459                     # DIE offset
	.asciz	"ilog2"                 # External Name
	.long	148                     # DIE offset
	.asciz	"compute_initial_conditions" # External Name
	.long	0                       # End Mark
.LpubNames_end1:
	.long	.LpubNames_end2-.LpubNames_begin2 # Length of Public Names Info
.LpubNames_begin2:
	.short	2                       # DWARF Version
	.long	.Lcu_begin2             # Offset of Compilation Unit Info
	.long	844                     # Compilation Unit Length
	.long	70                      # DIE offset
	.asciz	"plane"                 # External Name
	.long	151                     # DIE offset
	.asciz	"scr"                   # External Name
	.long	42                      # DIE offset
	.asciz	"fftblock"              # External Name
	.long	207                     # DIE offset
	.asciz	"fftXYZ"                # External Name
	.long	477                     # DIE offset
	.asciz	"Swarztrauber"          # External Name
	.long	0                       # End Mark
.LpubNames_end2:
	.long	.LpubNames_end3-.LpubNames_begin3 # Length of Public Names Info
.LpubNames_begin3:
	.short	2                       # DWARF Version
	.long	.Lcu_begin3             # Offset of Compilation Unit Info
	.long	785                     # Compilation Unit Length
	.long	75                      # DIE offset
	.asciz	"main"                  # External Name
	.long	42                      # DIE offset
	.asciz	"timers_enabled"        # External Name
	.long	0                       # End Mark
.LpubNames_end3:
	.long	.LpubNames_end4-.LpubNames_begin4 # Length of Public Names Info
.LpubNames_begin4:
	.short	2                       # DWARF Version
	.long	.Lcu_begin4             # Offset of Compilation Unit Info
	.long	503                     # Compilation Unit Length
	.long	205                     # DIE offset
	.asciz	"verify"                # External Name
	.long	42                      # DIE offset
	.asciz	"dcmplx_div"            # External Name
	.long	0                       # End Mark
.LpubNames_end4:
	.long	.LpubNames_end5-.LpubNames_begin5 # Length of Public Names Info
.LpubNames_begin5:
	.short	2                       # DWARF Version
	.long	.Lcu_begin5             # Offset of Compilation Unit Info
	.long	630                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"randlc"                # External Name
	.long	322                     # DIE offset
	.asciz	"vranlc"                # External Name
	.long	0                       # End Mark
.LpubNames_end5:
	.long	.LpubNames_end6-.LpubNames_begin6 # Length of Public Names Info
.LpubNames_begin6:
	.short	2                       # DWARF Version
	.long	.Lcu_begin6             # Offset of Compilation Unit Info
	.long	402                     # Compilation Unit Length
	.long	59                      # DIE offset
	.asciz	"print_results"         # External Name
	.long	0                       # End Mark
.LpubNames_end6:
	.long	.LpubNames_end7-.LpubNames_begin7 # Length of Public Names Info
.LpubNames_begin7:
	.short	2                       # DWARF Version
	.long	.Lcu_begin7             # Offset of Compilation Unit Info
	.long	367                     # Compilation Unit Length
	.long	164                     # DIE offset
	.asciz	"timer_start"           # External Name
	.long	229                     # DIE offset
	.asciz	"timer_stop"            # External Name
	.long	103                     # DIE offset
	.asciz	"timer_clear"           # External Name
	.long	140                     # DIE offset
	.asciz	"elapsed_time"          # External Name
	.long	325                     # DIE offset
	.asciz	"timer_read"            # External Name
	.long	42                      # DIE offset
	.asciz	"start"                 # External Name
	.long	82                      # DIE offset
	.asciz	"elapsed"               # External Name
	.long	0                       # End Mark
.LpubNames_end7:
	.long	.LpubNames_end8-.LpubNames_begin8 # Length of Public Names Info
.LpubNames_begin8:
	.short	2                       # DWARF Version
	.long	.Lcu_begin8             # Offset of Compilation Unit Info
	.long	171                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"wtime_"                # External Name
	.long	63                      # DIE offset
	.asciz	"sec"                   # External Name
	.long	0                       # End Mark
.LpubNames_end8:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	578                     # Compilation Unit Length
	.long	115                     # DIE offset
	.asciz	"double"                # External Name
	.long	75                      # DIE offset
	.asciz	"dcomplex"              # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.long	.LpubTypes_end1-.LpubTypes_begin1 # Length of Public Types Info
.LpubTypes_begin1:
	.short	2                       # DWARF Version
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	1223                    # Compilation Unit Length
	.long	1110                    # DIE offset
	.asciz	"dcomplex"              # External Name
	.long	0                       # End Mark
.LpubTypes_end1:
	.long	.LpubTypes_end2-.LpubTypes_begin2 # Length of Public Types Info
.LpubTypes_begin2:
	.short	2                       # DWARF Version
	.long	.Lcu_begin2             # Offset of Compilation Unit Info
	.long	844                     # Compilation Unit Length
	.long	63                      # DIE offset
	.asciz	"int"                   # External Name
	.long	104                     # DIE offset
	.asciz	"dcomplex"              # External Name
	.long	0                       # End Mark
.LpubTypes_end2:
	.long	.LpubTypes_end3-.LpubTypes_begin3 # Length of Public Types Info
.LpubTypes_begin3:
	.short	2                       # DWARF Version
	.long	.Lcu_begin3             # Offset of Compilation Unit Info
	.long	785                     # Compilation Unit Length
	.long	234                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	680                     # DIE offset
	.asciz	"__off_t"               # External Name
	.long	698                     # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	754                     # DIE offset
	.asciz	"size_t"                # External Name
	.long	736                     # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	245                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	743                     # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	765                     # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	630                     # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	691                     # DIE offset
	.asciz	"long int"              # External Name
	.long	63                      # DIE offset
	.asciz	"logical"               # External Name
	.long	705                     # DIE offset
	.asciz	"signed char"           # External Name
	.long	222                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end3:
	.long	.LpubTypes_end4-.LpubTypes_begin4 # Length of Public Types Info
.LpubTypes_begin4:
	.short	2                       # DWARF Version
	.long	.Lcu_begin4             # Offset of Compilation Unit Info
	.long	503                     # Compilation Unit Length
	.long	165                     # DIE offset
	.asciz	"dcomplex"              # External Name
	.long	0                       # End Mark
.LpubTypes_end4:
	.long	.LpubTypes_end5-.LpubTypes_begin5 # Length of Public Types Info
.LpubTypes_begin5:
	.short	2                       # DWARF Version
	.long	.Lcu_begin6             # Offset of Compilation Unit Info
	.long	402                     # Compilation Unit Length
	.long	390                     # DIE offset
	.asciz	"logical"               # External Name
	.long	0                       # End Mark
.LpubTypes_end5:
	.long	.LpubTypes_end6-.LpubTypes_begin6 # Length of Public Types Info
.LpubTypes_begin6:
	.short	2                       # DWARF Version
	.long	.Lcu_begin8             # Offset of Compilation Unit Info
	.long	171                     # Compilation Unit Length
	.long	148                     # DIE offset
	.asciz	"__time_t"              # External Name
	.long	115                     # DIE offset
	.asciz	"timeval"               # External Name
	.long	159                     # DIE offset
	.asciz	"__suseconds_t"         # External Name
	.long	0                       # End Mark
.LpubTypes_end6:

	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
