	.text
	.file	"ep.S.bc"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.file	1 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/EP/ep.c"
	.file	2 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/EP/../common/type.h"
	.file	3 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/common/../common/type.h"
	.file	4 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/common/c_timers.c"
	.file	5 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/wtime.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4719772409484279808     # double 33554432
.LCPI0_2:
	.quad	4742906807993761792     # double 1220703125
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	-4611686018427387904    # double -2
.LCPI0_7:
	.quad	4659360479003734399     # double 3247.83465203474
.LCPI0_8:
	.quad	-4564011557851041409    # double -3247.83465203474
.LCPI0_9:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI0_10:
	.quad	4664372864194573024     # double 6958.4070783822972
.LCPI0_11:
	.quad	-4558999172660202784    # double -6958.4070783822972
.LCPI0_12:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_13:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	-3135276447761457362    # double -1.000000e+99
	.quad	-3135276447761457362    # double -1.000000e+99
.LCPI0_3:
	.quad	-4616189618054758400    # double -1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
.LCPI0_6:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI0_14:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	1 72 0                  # ep.c:72:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	1 81 10 prologue_end    # ep.c:81:10
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
	subq	$200, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 256
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
	movq	.Lmain.dum+16(%rip), %rax
	movq	%rax, 176(%rsp)
	movaps	.Lmain.dum(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	.loc	1 86 13                 # ep.c:86:13
.Ltmp13:
	movl	$.L.str, %edi
	movl	$.L.str1, %esi
	callq	fopen
.Ltmp14:
	#DEBUG_VALUE: main:fp <- RAX
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	.loc	1 86 7 is_stmt 0        # ep.c:86:7
	testq	%rax, %rax
	je	.LBB0_2
.Ltmp15:
# BB#1:                                 # %if.else
	#DEBUG_VALUE: main:fp <- RAX
	#DEBUG_VALUE: main:timers_enabled <- 1
	.loc	1 90 5 is_stmt 1        # ep.c:90:5
	movq	%rax, %rdi
	callq	fclose
.Ltmp16:
	movl	$1, 92(%rsp)            # 4-byte Folded Spill
.Ltmp17:
.LBB0_2:                                # %if.end
	leaq	144(%rsp), %rcx
	movsd	.LCPI0_0(%rip), %xmm0
	.loc	1 100 3                 # ep.c:100:3
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movl	$.L.str2, %esi
	movb	$1, %al
	movq	%rcx, %rdi
	movsd	.LCPI0_0(%rip), %xmm0
	callq	sprintf
.Ltmp18:
	#DEBUG_VALUE: main:j <- 14
	.loc	1 102 7                 # ep.c:102:7
	movzbl	158(%rsp), %eax
	cmpl	$46, %eax
	movl	$14, %eax
.Ltmp19:
	#DEBUG_VALUE: main:j <- 13
	je	.LBB0_4
.Ltmp20:
# BB#3:                                 # %select.mid
	#DEBUG_VALUE: main:j <- 13
	movl	$15, %eax
.LBB0_4:                                # %select.end
	#DEBUG_VALUE: main:j <- 13
	.loc	1 103 3                 # ep.c:103:3
	movb	$0, 144(%rsp,%rax)
	.loc	1 104 3                 # ep.c:104:3
	movl	$.Lstr, %edi
	callq	puts
	leaq	144(%rsp), %rcx
	.loc	1 105 3                 # ep.c:105:3
	movl	$.L.str4, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.Ltmp21:
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:verified <- 0
	.loc	1 124 22                # ep.c:124:22
	leaq	168(%rsp), %rbx
	movsd	168(%rsp), %xmm0
	.loc	1 124 30 is_stmt 0      # ep.c:124:30
	leaq	176(%rsp), %rcx
	leaq	160(%rsp), %rax
	xorl	%edi, %edi
	.loc	1 124 3                 # ep.c:124:3
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vranlc
	.loc	1 125 28 is_stmt 1      # ep.c:125:28
	movsd	176(%rsp), %xmm0
	.loc	1 125 12 is_stmt 0      # ep.c:125:12
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 125 3                 # ep.c:125:3
	movsd	%xmm0, 160(%rsp)
.Ltmp22:
	#DEBUG_VALUE: main:i <- 0
	movq	$-1048576, %rax         # imm = 0xFFFFFFFFFFF00000
	.loc	1 127 5 is_stmt 1       # ep.c:127:5
.Ltmp23:
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [-1.000000e+99,-1.000000e+99]
	.align	16, 0x90
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 0
	movaps	%xmm0, x+1048576(%rax)
	movaps	%xmm0, x+1048592(%rax)
	movaps	%xmm0, x+1048608(%rax)
	movaps	%xmm0, x+1048624(%rax)
	movaps	%xmm0, x+1048640(%rax)
	movaps	%xmm0, x+1048656(%rax)
	movaps	%xmm0, x+1048672(%rax)
	movaps	%xmm0, x+1048688(%rax)
.Ltmp24:
	.loc	1 126 3                 # ep.c:126:3
	addq	$128, %rax
	jne	.LBB0_5
.Ltmp25:
# BB#6:                                 # %for.end
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	xorl	%edi, %edi
	.loc	1 131 3                 # ep.c:131:3
	callq	timer_clear
	movl	$1, %ebx
	movl	$1, %edi
	.loc	1 132 3                 # ep.c:132:3
	callq	timer_clear
	movl	$2, %edi
	.loc	1 133 3                 # ep.c:133:3
	callq	timer_clear
	xorl	%edi, %edi
	.loc	1 134 3                 # ep.c:134:3
	callq	timer_start
	movabsq	$4742906807993761792, %r15 # imm = 0x41D2309CE5400000
.Ltmp26:
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	.loc	1 136 3                 # ep.c:136:3
	movq	%r15, 192(%rsp)
	leaq	192(%rsp), %r14
.Ltmp27:
	#DEBUG_VALUE: main:t1 <- [R14+0]
	#DEBUG_VALUE: main:i <- 1
	xorl	%edi, %edi
	.loc	1 137 3                 # ep.c:137:3
	movl	$x, %edx
	movq	%r14, %rsi
	movsd	.LCPI0_2(%rip), %xmm0
	callq	vranlc
	.loc	1 143 3                 # ep.c:143:3
	movq	%r15, 192(%rsp)
	.loc	1 146 10                # ep.c:146:10
.Ltmp28:
	movq	%r14, %rdi
	movsd	.LCPI0_2(%rip), %xmm0
	callq	randlc
.Ltmp29:
	#DEBUG_VALUE: main:t2 <- XMM0
	.loc	1 146 5 is_stmt 0       # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
.Ltmp30:
	#DEBUG_VALUE: main:t2 <- XMM0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
.Ltmp31:
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	.loc	1 146 10                # ep.c:146:10
	movq	%r14, %rdi
	callq	randlc
	.loc	1 146 5                 # ep.c:146:5
	movsd	%xmm0, 184(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	192(%rsp), %xmm0
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
	xorpd	%xmm0, %xmm0
.Ltmp32:
	.loc	1 156 5 is_stmt 1       # ep.c:156:5
	movapd	%xmm0, q+64(%rip)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, q+48(%rip)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, q+32(%rip)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, q+16(%rip)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, q(%rip)
.Ltmp33:
	.loc	1 185 9                 # ep.c:185:9
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	je	.LBB0_7
.Ltmp34:
# BB#20:
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	leaq	192(%rsp), %r15
	leaq	184(%rsp), %r12
	.align	16, 0x90
.LBB0_21:                               # %for.body47.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_27 Depth 2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	.loc	1 168 10                # ep.c:168:10
	leal	-1(%rbx), %r14d
.Ltmp35:
	#DEBUG_VALUE: main:kk <- R14D
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	movabsq	$4733340128880099328, %rax # imm = 0x41B033C4D7000000
	.loc	1 169 5                 # ep.c:169:5
	movq	%rax, 192(%rsp)
	.loc	1 170 5                 # ep.c:170:5
	movsd	104(%rsp), %xmm0        # 8-byte Reload
	movsd	%xmm0, 184(%rsp)
	movl	$1, %ebp
.Ltmp36:
	.align	16, 0x90
.LBB0_22:                               # %for.body52.us
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 175 12                # ep.c:175:12
	movl	%r14d, %r13d
	shrl	$31, %r13d
	addl	%r14d, %r13d
	.loc	1 176 12                # ep.c:176:12
.Ltmp37:
	movl	%r13d, %eax
	andl	$-2, %eax
	.loc	1 176 11 is_stmt 0      # ep.c:176:11
	cmpl	%r14d, %eax
	je	.LBB0_24
# BB#23:                                # %if.then55.us
                                        #   in Loop: Header=BB0_22 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 176 44 discriminator 1 # ep.c:176:44
	movsd	184(%rsp), %xmm0
.Ltmp38:
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 176 32                # ep.c:176:32
	movq	%r15, %rdi
	callq	randlc
.Ltmp39:
.LBB0_24:                               # %if.end57.us
                                        #   in Loop: Header=BB0_22 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 177 11 is_stmt 1      # ep.c:177:11
	incl	%r14d
	cmpl	$3, %r14d
	jb	.LBB0_26
.Ltmp40:
# BB#25:                                # %if.end61.us
                                        #   in Loop: Header=BB0_22 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 175 12                # ep.c:175:12
	sarl	%r13d
.Ltmp41:
	#DEBUG_VALUE: main:ik <- R13D
	#DEBUG_VALUE: main:kk <- R13D
	.loc	1 178 24                # ep.c:178:24
	movsd	184(%rsp), %xmm0
.Ltmp42:
	#DEBUG_VALUE: main:t2 <- [R12+0]
	.loc	1 178 12 is_stmt 0      # ep.c:178:12
	movq	%r12, %rdi
	callq	randlc
.Ltmp43:
	.loc	1 174 27 is_stmt 1      # ep.c:174:27
	incl	%ebp
.Ltmp44:
	#DEBUG_VALUE: main:i <- EBP
	.loc	1 174 17 is_stmt 0 discriminator 2 # ep.c:174:17
	cmpl	$101, %ebp
	movl	%r13d, %r14d
.Ltmp45:
	#DEBUG_VALUE: main:ik <- R14D
	#DEBUG_VALUE: main:kk <- R14D
	jl	.LBB0_22
.Ltmp46:
.LBB0_26:                               # %for.cond74.preheader.us
                                        #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	movl	$2, %edi
	.loc	1 185 25 is_stmt 1 discriminator 1 # ep.c:185:25
.Ltmp47:
	callq	timer_start
.Ltmp48:
	#DEBUG_VALUE: main:t1 <- [R15+0]
	movl	$131072, %edi           # imm = 0x20000
.Ltmp49:
	.loc	1 186 5                 # ep.c:186:5
	movl	$x, %edx
	movq	%r15, %rsi
	movsd	.LCPI0_2(%rip), %xmm0
	callq	vranlc
	movl	$2, %edi
	.loc	1 187 25 discriminator 1 # ep.c:187:25
.Ltmp50:
	callq	timer_stop
	movl	$1, %edi
.Ltmp51:
	.loc	1 194 25 discriminator 1 # ep.c:194:25
	callq	timer_start
	movq	$-1048576, %r14         # imm = 0xFFFFFFFFFFF00000
.Ltmp52:
	.align	16, 0x90
.LBB0_27:                               # %for.body77.us
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 197 18                # ep.c:197:18
	movaps	x+1048576(%r14), %xmm0
	.loc	1 197 12 is_stmt 0      # ep.c:197:12
	movaps	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	addpd	%xmm0, %xmm0
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	addpd	.LCPI0_3(%rip), %xmm0
	.loc	1 199 12 is_stmt 1      # ep.c:199:12
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	mulpd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	addsd	%xmm0, %xmm1
.Ltmp53:
	#DEBUG_VALUE: main:t1 <- XMM1
	.loc	1 199 7 is_stmt 0       # ep.c:199:7
	movsd	%xmm1, 192(%rsp)
	movsd	.LCPI0_4(%rip), %xmm0
	.loc	1 200 11 is_stmt 1      # ep.c:200:11
.Ltmp54:
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_31
.Ltmp55:
# BB#28:                                # %if.then93.us
                                        #   in Loop: Header=BB0_27 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- XMM1
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 201 28                # ep.c:201:28
	movaps	%xmm1, %xmm0
	callq	log
	.loc	1 201 21 is_stmt 0      # ep.c:201:21
	mulsd	.LCPI0_5(%rip), %xmm0
	divsd	192(%rsp), %xmm0
	.loc	1 201 16                # ep.c:201:16
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_30
.Ltmp56:
# BB#29:                                # %call.sqrt
                                        #   in Loop: Header=BB0_27 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	callq	sqrt
	movaps	%xmm0, %xmm1
.Ltmp57:
.LBB0_30:                               # %if.then93.us.split
                                        #   in Loop: Header=BB0_27 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	#DEBUG_VALUE: main:t2 <- XMM1
	.loc	1 201 9                 # ep.c:201:9
	movsd	%xmm1, 184(%rsp)
	.loc	1 202 17 is_stmt 1      # ep.c:202:17
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
.Ltmp58:
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	mulpd	%xmm1, %xmm0
	.loc	1 204 16                # ep.c:204:16
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	andpd	.LCPI0_6(%rip), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	128(%rsp), %xmm2        # 16-byte Reload
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cmpltsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	andpd	128(%rsp), %xmm0        # 16-byte Folded Reload
	andnpd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	.loc	1 204 16 is_stmt 0 discriminator 1 # ep.c:204:16
	andpd	.LCPI0_6(%rip), %xmm1
	.loc	1 204 16 discriminator 4 # ep.c:204:16
.Ltmp59:
	cvttsd2si	%xmm1, %eax
.Ltmp60:
	#DEBUG_VALUE: main:l <- EAX
	.loc	1 205 16 is_stmt 1      # ep.c:205:16
	cltq
.Ltmp61:
	movsd	q(,%rax,8), %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	.loc	1 205 9 is_stmt 0       # ep.c:205:9
	movsd	%xmm0, q(,%rax,8)
	.loc	1 206 16 is_stmt 1      # ep.c:206:16
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	addpd	128(%rsp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
.Ltmp62:
.LBB0_31:                               # %for.inc115.us
                                        #   in Loop: Header=BB0_27 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 196 5                 # ep.c:196:5
	addq	$16, %r14
	jne	.LBB0_27
.Ltmp63:
# BB#32:                                # %for.inc121.us
                                        #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	movl	$1, %edi
	.loc	1 211 25 discriminator 1 # ep.c:211:25
.Ltmp64:
	callq	timer_stop
.Ltmp65:
	.loc	1 167 24                # ep.c:167:24
	incl	%ebx
.Ltmp66:
	#DEBUG_VALUE: main:k <- EBX
	.loc	1 167 3 is_stmt 0       # ep.c:167:3
	cmpl	$257, %ebx              # imm = 0x101
	jne	.LBB0_21
	jmp	.LBB0_33
.Ltmp67:
.LBB0_7:
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	leaq	192(%rsp), %r15
	leaq	184(%rsp), %r12
	.align	16, 0x90
.LBB0_8:                                # %for.body47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	.loc	1 168 10 is_stmt 1      # ep.c:168:10
.Ltmp68:
	leal	-1(%rbx), %r14d
.Ltmp69:
	#DEBUG_VALUE: main:kk <- R14D
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	movabsq	$4733340128880099328, %rax # imm = 0x41B033C4D7000000
	.loc	1 169 5                 # ep.c:169:5
	movq	%rax, 192(%rsp)
	.loc	1 170 5                 # ep.c:170:5
	movsd	104(%rsp), %xmm0        # 8-byte Reload
	movsd	%xmm0, 184(%rsp)
	movl	$1, %ebp
.Ltmp70:
	.align	16, 0x90
.LBB0_9:                                # %for.body52
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 175 12                # ep.c:175:12
	movl	%r14d, %r13d
	shrl	$31, %r13d
	addl	%r14d, %r13d
	.loc	1 176 12                # ep.c:176:12
.Ltmp71:
	movl	%r13d, %eax
	andl	$-2, %eax
	.loc	1 176 11 is_stmt 0      # ep.c:176:11
	cmpl	%r14d, %eax
	je	.LBB0_11
# BB#10:                                # %if.then55
                                        #   in Loop: Header=BB0_9 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 176 44 discriminator 1 # ep.c:176:44
	movsd	184(%rsp), %xmm0
.Ltmp72:
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 176 32                # ep.c:176:32
	movq	%r15, %rdi
	callq	randlc
.Ltmp73:
.LBB0_11:                               # %if.end57
                                        #   in Loop: Header=BB0_9 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 177 11 is_stmt 1      # ep.c:177:11
	incl	%r14d
	cmpl	$3, %r14d
	jb	.LBB0_13
.Ltmp74:
# BB#12:                                # %if.end61
                                        #   in Loop: Header=BB0_9 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 175 12                # ep.c:175:12
	sarl	%r13d
.Ltmp75:
	#DEBUG_VALUE: main:ik <- R13D
	#DEBUG_VALUE: main:kk <- R13D
	.loc	1 178 24                # ep.c:178:24
	movsd	184(%rsp), %xmm0
.Ltmp76:
	#DEBUG_VALUE: main:t2 <- [R12+0]
	.loc	1 178 12 is_stmt 0      # ep.c:178:12
	movq	%r12, %rdi
	callq	randlc
.Ltmp77:
	.loc	1 174 27 is_stmt 1      # ep.c:174:27
	incl	%ebp
.Ltmp78:
	#DEBUG_VALUE: main:i <- EBP
	.loc	1 174 17 is_stmt 0 discriminator 2 # ep.c:174:17
	cmpl	$101, %ebp
	movl	%r13d, %r14d
.Ltmp79:
	#DEBUG_VALUE: main:ik <- R14D
	#DEBUG_VALUE: main:kk <- R14D
	jl	.LBB0_9
.Ltmp80:
.LBB0_13:                               # %for.cond74.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	#DEBUG_VALUE: main:t1 <- [R15+0]
	movl	$131072, %edi           # imm = 0x20000
	.loc	1 186 5 is_stmt 1       # ep.c:186:5
	movl	$x, %edx
	movq	%r15, %rsi
	movsd	.LCPI0_2(%rip), %xmm0
	callq	vranlc
	movq	$-1048576, %r14         # imm = 0xFFFFFFFFFFF00000
.Ltmp81:
	.align	16, 0x90
.LBB0_14:                               # %for.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 197 18                # ep.c:197:18
	movaps	x+1048576(%r14), %xmm0
	.loc	1 197 12 is_stmt 0      # ep.c:197:12
	movaps	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	addpd	%xmm0, %xmm0
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	addpd	.LCPI0_3(%rip), %xmm0
	.loc	1 199 12 is_stmt 1      # ep.c:199:12
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	mulpd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	addsd	%xmm0, %xmm1
.Ltmp82:
	#DEBUG_VALUE: main:t1 <- XMM1
	.loc	1 199 7 is_stmt 0       # ep.c:199:7
	movsd	%xmm1, 192(%rsp)
	movsd	.LCPI0_4(%rip), %xmm0
	.loc	1 200 11 is_stmt 1      # ep.c:200:11
.Ltmp83:
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_18
.Ltmp84:
# BB#15:                                # %if.then93
                                        #   in Loop: Header=BB0_14 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- XMM1
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 201 28                # ep.c:201:28
	movaps	%xmm1, %xmm0
	callq	log
	.loc	1 201 21 is_stmt 0      # ep.c:201:21
	mulsd	.LCPI0_5(%rip), %xmm0
	divsd	192(%rsp), %xmm0
	.loc	1 201 16                # ep.c:201:16
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_17
.Ltmp85:
# BB#16:                                # %call.sqrt36
                                        #   in Loop: Header=BB0_14 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	callq	sqrt
	movaps	%xmm0, %xmm1
.Ltmp86:
.LBB0_17:                               # %if.then93.split
                                        #   in Loop: Header=BB0_14 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	#DEBUG_VALUE: main:t2 <- XMM1
	.loc	1 201 9                 # ep.c:201:9
	movsd	%xmm1, 184(%rsp)
	.loc	1 202 17 is_stmt 1      # ep.c:202:17
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
.Ltmp87:
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	mulpd	%xmm1, %xmm0
	.loc	1 204 16                # ep.c:204:16
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	andpd	.LCPI0_6(%rip), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	128(%rsp), %xmm2        # 16-byte Reload
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cmpltsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	andpd	128(%rsp), %xmm0        # 16-byte Folded Reload
	andnpd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	.loc	1 204 16 is_stmt 0 discriminator 1 # ep.c:204:16
	andpd	.LCPI0_6(%rip), %xmm1
	.loc	1 204 16 discriminator 4 # ep.c:204:16
.Ltmp88:
	cvttsd2si	%xmm1, %eax
.Ltmp89:
	#DEBUG_VALUE: main:l <- EAX
	.loc	1 205 16 is_stmt 1      # ep.c:205:16
	cltq
.Ltmp90:
	movsd	q(,%rax,8), %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	.loc	1 205 9 is_stmt 0       # ep.c:205:9
	movsd	%xmm0, q(,%rax,8)
	.loc	1 206 16 is_stmt 1      # ep.c:206:16
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	addpd	128(%rsp), %xmm0        # 16-byte Folded Reload
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
.Ltmp91:
.LBB0_18:                               # %for.inc115
                                        #   in Loop: Header=BB0_14 Depth=2
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 196 5                 # ep.c:196:5
	addq	$16, %r14
	jne	.LBB0_14
.Ltmp92:
# BB#19:                                # %for.inc121
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- [R15+0]
	.loc	1 167 24                # ep.c:167:24
	incl	%ebx
.Ltmp93:
	#DEBUG_VALUE: main:k <- EBX
	.loc	1 167 3 is_stmt 0       # ep.c:167:3
	cmpl	$257, %ebx              # imm = 0x101
	jne	.LBB0_8
.Ltmp94:
.LBB0_33:                               # %for.cond124.preheader
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	xorpd	%xmm0, %xmm0
	.loc	1 215 10 is_stmt 1      # ep.c:215:10
.Ltmp95:
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
.Ltmp96:
	#DEBUG_VALUE: main:gc <- [RSP+128]
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+8(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+16(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+24(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+32(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+40(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+48(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+56(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+64(%rip), %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	addsd	q+72(%rip), %xmm0
.Ltmp97:
	.loc	1 218 3                 # ep.c:218:3
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	timer_stop
.Ltmp98:
	xorl	%edi, %edi
	.loc	1 219 8                 # ep.c:219:8
	callq	timer_read
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
.Ltmp99:
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:tm <- [RSP+104]
	#DEBUG_VALUE: main:verified <- 1
	movsd	.LCPI0_7(%rip), %xmm0
	.loc	1 249 20                # ep.c:249:20
.Ltmp100:
	addsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	.loc	1 249 19 is_stmt 0      # ep.c:249:19
	divsd	.LCPI0_8(%rip), %xmm0
	.loc	1 249 14                # ep.c:249:14
	andpd	.LCPI0_6(%rip), %xmm0
.Ltmp101:
	#DEBUG_VALUE: main:sx_err <- XMM0
	movsd	.LCPI0_9(%rip), %xmm1
	.loc	1 251 18 is_stmt 1      # ep.c:251:18
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_35
.Ltmp102:
# BB#34:                                # %land.rhs
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 1
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	#DEBUG_VALUE: main:gc <- [RSP+128]
	#DEBUG_VALUE: main:tm <- [RSP+104]
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	.loc	1 250 20                # ep.c:250:20
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	addsd	.LCPI0_10(%rip), %xmm0
	.loc	1 250 19 is_stmt 0      # ep.c:250:19
	divsd	.LCPI0_11(%rip), %xmm0
	.loc	1 250 14                # ep.c:250:14
	andpd	.LCPI0_6(%rip), %xmm0
.Ltmp103:
	#DEBUG_VALUE: main:sy_err <- XMM0
	.loc	1 251 41 is_stmt 1 discriminator 1 # ep.c:251:41
	ucomisd	%xmm0, %xmm1
	setae	%bl
.Ltmp104:
.LBB0_35:                               # %land.end
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:verified <- 1
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 1
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	#DEBUG_VALUE: main:gc <- [RSP+128]
	#DEBUG_VALUE: main:tm <- [RSP+104]
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	.loc	1 254 10                # ep.c:254:10
	movsd	96(%rsp), %xmm0         # 8-byte Reload
	divsd	104(%rsp), %xmm0        # 8-byte Folded Reload
	.loc	1 256 3                 # ep.c:256:3
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movl	$.Lstr22, %edi
	callq	puts
.Ltmp105:
	.loc	1 257 3                 # ep.c:257:3
	movl	$.L.str6, %edi
	movb	$1, %al
	movsd	104(%rsp), %xmm0        # 8-byte Reload
	callq	printf
	.loc	1 258 3                 # ep.c:258:3
	movl	$.L.str7, %edi
	movl	$24, %esi
	xorl	%eax, %eax
	callq	printf
	.loc	1 259 3                 # ep.c:259:3
	movl	$.L.str8, %edi
	movb	$1, %al
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	callq	printf
	.loc	1 260 3                 # ep.c:260:3
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movl	$.L.str9, %edi
	movb	$2, %al
	movaps	112(%rsp), %xmm0        # 16-byte Reload
	callq	printf
	.loc	1 261 3                 # ep.c:261:3
	movl	$.Lstr23, %edi
	callq	puts
.Ltmp106:
	#DEBUG_VALUE: main:i <- 0
	.loc	1 263 31                # ep.c:263:31
	movsd	q(%rip), %xmm0
	.loc	1 263 5 is_stmt 0       # ep.c:263:5
	movl	$.L.str11, %edi
	xorl	%esi, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+8(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$1, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+16(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$2, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+24(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$3, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+32(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$4, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+40(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$5, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+48(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$6, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+56(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$7, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+64(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$8, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+72(%rip), %xmm0
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str11, %edi
	movl	$9, %esi
	movb	$1, %al
	callq	printf
.Ltmp107:
	.loc	1 251 17 is_stmt 1 discriminator 2 # ep.c:251:17
	movzbl	%bl, %eax
.Ltmp108:
	#DEBUG_VALUE: main:verified <- EAX
	.loc	1 254 10                # ep.c:254:10
	movsd	96(%rsp), %xmm0         # 8-byte Reload
	divsd	.LCPI0_12(%rip), %xmm0
	.loc	1 266 3                 # ep.c:266:3
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
.Ltmp109:
	#DEBUG_VALUE: main:Mops <- [RSP+96]
	movl	%eax, 8(%rsp)
	movq	$.L.str18, 80(%rsp)
	movq	$.L.str16, 72(%rsp)
	movq	$.L.str16, 64(%rsp)
	movq	$.L.str17, 56(%rsp)
	movq	$.L.str16, 48(%rsp)
	movq	$.L.str16, 40(%rsp)
	movq	$.L.str16, 32(%rsp)
	movq	$.L.str15, 24(%rsp)
	movq	$.L.str14, 16(%rsp)
	movq	$.L.str13, (%rsp)
	movl	$.L.str12, %edi
	movl	$83, %esi
	movl	$25, %edx
	movl	$0, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movsd	104(%rsp), %xmm0        # 8-byte Reload
	movsd	96(%rsp), %xmm1         # 8-byte Reload
	callq	print_results
.Ltmp110:
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	je	.LBB0_37
.Ltmp111:
# BB#36:                                # %if.then168
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:Mops <- [RSP+96]
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	#DEBUG_VALUE: main:gc <- [RSP+128]
	#DEBUG_VALUE: main:tm <- 1.000000e+00
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	xorps	%xmm1, %xmm1
	.loc	1 273 9                 # ep.c:273:9
.Ltmp112:
	movsd	104(%rsp), %xmm0        # 8-byte Reload
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	cmpnlesd	%xmm1, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	104(%rsp), %xmm1        # 8-byte Reload
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	andpd	%xmm0, %xmm1
	movsd	%xmm1, 104(%rsp)        # 8-byte Spill
	movsd	.LCPI0_4(%rip), %xmm1
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	andnpd	%xmm1, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	104(%rsp), %xmm1        # 8-byte Reload
	movsd	128(%rsp), %xmm0        # 8-byte Reload
	orpd	%xmm1, %xmm0
	.loc	1 274 10                # ep.c:274:10
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	xorl	%edi, %edi
	callq	timer_read
.Ltmp113:
	movapd	%xmm0, %xmm2
.Ltmp114:
	#DEBUG_VALUE: main:tt <- XMM2
	movsd	.LCPI0_13(%rip), %xmm0
	.loc	1 275 55                # ep.c:275:55
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movapd	%xmm2, %xmm1
	mulsd	.LCPI0_13(%rip), %xmm1
	divsd	128(%rsp), %xmm1        # 8-byte Folded Reload
	.loc	1 275 5 is_stmt 0       # ep.c:275:5
	movl	$.L.str19, %edi
	movb	$2, %al
	movapd	%xmm2, %xmm0
	callq	printf
	movl	$1, %edi
	.loc	1 276 10 is_stmt 1      # ep.c:276:10
	callq	timer_read
.Ltmp115:
	#DEBUG_VALUE: main:tt <- XMM0
	.loc	1 277 53                # ep.c:277:53
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_13(%rip), %xmm1
	divsd	128(%rsp), %xmm1        # 8-byte Folded Reload
	.loc	1 277 5 is_stmt 0       # ep.c:277:5
	movl	$.L.str20, %edi
	movb	$2, %al
	callq	printf
	movl	$2, %edi
	.loc	1 278 10 is_stmt 1      # ep.c:278:10
	callq	timer_read
.Ltmp116:
	movapd	%xmm0, %xmm1
.Ltmp117:
	#DEBUG_VALUE: main:tt <- XMM1
	.loc	1 279 53                # ep.c:279:53
	movsd	112(%rsp), %xmm0        # 8-byte Reload
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	112(%rsp), %xmm0        # 8-byte Reload
	divsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	.loc	1 279 5 is_stmt 0       # ep.c:279:5
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movl	$.L.str21, %edi
	movb	$2, %al
	movapd	%xmm1, %xmm0
	movsd	112(%rsp), %xmm1        # 8-byte Reload
.Ltmp118:
	callq	printf
.Ltmp119:
.LBB0_37:                               # %if.end185
	#DEBUG_VALUE: main:j <- 13
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:Mops <- [RSP+96]
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	#DEBUG_VALUE: main:gc <- [RSP+128]
	#DEBUG_VALUE: main:tm <- [RSP+104]
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	xorl	%eax, %eax
	.loc	1 282 3 is_stmt 1       # ep.c:282:3
	addq	$200, %rsp
.Ltmp120:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp121:
.Ltmp122:
	.size	main, .Ltmp122-main
.Lfunc_end0:
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	print_results
	.align	16, 0x90
	.type	print_results,@function
print_results:                          # @print_results
.Lfunc_begin1:
	.file	6 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/common/print_results.c"
	.loc	6 10 0                  # print_results.c:10:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 96
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: print_results:name <- RDI
	#DEBUG_VALUE: print_results:class <- ESI
	#DEBUG_VALUE: print_results:n1 <- EDX
	#DEBUG_VALUE: print_results:n2 <- ECX
	#DEBUG_VALUE: print_results:n3 <- R8D
	#DEBUG_VALUE: print_results:niter <- R9D
	#DEBUG_VALUE: print_results:t <- XMM0
	#DEBUG_VALUE: print_results:mops <- XMM1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
.Ltmp136:
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.Ltmp137:
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	movl	%r9d, %ebp
.Ltmp138:
	#DEBUG_VALUE: print_results:niter <- EBP
	movl	%r8d, %ebx
.Ltmp139:
	#DEBUG_VALUE: print_results:n3 <- EBX
	movl	%ecx, %r12d
.Ltmp140:
	#DEBUG_VALUE: print_results:n2 <- R12D
	movl	%edx, %r14d
.Ltmp141:
	#DEBUG_VALUE: print_results:n1 <- R14D
	movl	%esi, %r13d
.Ltmp142:
	#DEBUG_VALUE: print_results:class <- R13D
	movq	%rdi, %r15
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:verified <- undef
.Ltmp143:
	#DEBUG_VALUE: print_results:name <- R15
	.loc	6 14 3 prologue_end     # print_results.c:14:3
	movl	$.L.str3, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
.Ltmp144:
	.loc	6 15 3                  # print_results.c:15:3
	movl	$.L.str110, %edi
	xorl	%eax, %eax
	movl	%r13d, %esi
.Ltmp145:
	#DEBUG_VALUE: print_results:class <- ESI
	callq	printf
	.loc	6 22 8                  # print_results.c:22:8
	movl	%ebx, %eax
	orl	%r12d, %eax
	je	.LBB1_1
.Ltmp146:
# BB#7:                                 # %if.else30
	#DEBUG_VALUE: print_results:n1 <- R14D
	#DEBUG_VALUE: print_results:n2 <- R12D
	#DEBUG_VALUE: print_results:n3 <- EBX
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	.loc	6 36 5                  # print_results.c:36:5
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	callq	printf
.Ltmp147:
	jmp	.LBB1_8
.Ltmp148:
.LBB1_1:                                # %if.then
	#DEBUG_VALUE: print_results:name <- R15
	#DEBUG_VALUE: print_results:n1 <- R14D
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	.loc	6 23 10                 # print_results.c:23:10
	movzbl	(%r15), %eax
	cmpl	$69, %eax
	jne	.LBB1_6
.Ltmp149:
# BB#2:                                 # %land.lhs.true8
	#DEBUG_VALUE: print_results:name <- R15
	#DEBUG_VALUE: print_results:n1 <- R14D
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	movzbl	1(%r15), %eax
	cmpl	$80, %eax
	jne	.LBB1_6
.Ltmp150:
# BB#3:                                 # %if.then13
	#DEBUG_VALUE: print_results:n1 <- R14D
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	movsd	.LCPI1_0(%rip), %xmm0
	.loc	6 24 33                 # print_results.c:24:33
.Ltmp151:
	movl	%r14d, %edi
	callq	ldexp
.Ltmp152:
	leaq	16(%rsp), %rcx
	.loc	6 24 7 is_stmt 0        # print_results.c:24:7
	movl	$.L.str211, %esi
	movb	$1, %al
	movq	%rcx, %rdi
	callq	sprintf
	movl	$15, %eax
.Ltmp153:
	#DEBUG_VALUE: print_results:j <- 14
	.loc	6 26 12 is_stmt 1       # print_results.c:26:12
	movzbl	30(%rsp), %ecx
	cmpl	$46, %ecx
	jne	.LBB1_5
.Ltmp154:
# BB#4:                                 # %if.then21
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:j <- 14
	.loc	6 27 9                  # print_results.c:27:9
	movb	$32, 30(%rsp)
	movl	$14, %eax
.Ltmp155:
	#DEBUG_VALUE: print_results:j <- 13
.LBB1_5:                                # %if.end
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:j <- 14
	.loc	6 30 7                  # print_results.c:30:7
	movb	$0, 16(%rsp,%rax)
	leaq	16(%rsp), %rcx
	.loc	6 31 7                  # print_results.c:31:7
	movl	$.L.str312, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.Ltmp156:
	jmp	.LBB1_8
.Ltmp157:
.LBB1_6:                                # %if.else
	#DEBUG_VALUE: print_results:n1 <- R14D
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	.loc	6 33 7                  # print_results.c:33:7
	movl	$.L.str413, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	printf
.Ltmp158:
.LBB1_8:                                # %if.end32
	#DEBUG_VALUE: print_results:niter <- EBP
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:cs7 <- undef
	#DEBUG_VALUE: print_results:cs6 <- undef
	#DEBUG_VALUE: print_results:cs5 <- undef
	#DEBUG_VALUE: print_results:cs4 <- undef
	movq	144(%rsp), %rbx
	#DEBUG_VALUE: print_results:cs3 <- RBX
	movq	136(%rsp), %r14
	#DEBUG_VALUE: print_results:cs2 <- R14
	movq	128(%rsp), %r15
	#DEBUG_VALUE: print_results:cs1 <- R15
	movq	120(%rsp), %r12
	#DEBUG_VALUE: print_results:compiletime <- R12
	movq	112(%rsp), %r13
	#DEBUG_VALUE: print_results:npbversion <- R13
	.loc	6 39 3                  # print_results.c:39:3
	movl	$.L.str614, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
.Ltmp159:
	.loc	6 40 3                  # print_results.c:40:3
	movl	$.L.str715, %edi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
	callq	printf
	.loc	6 41 3                  # print_results.c:41:3
	movl	$.L.str816, %edi
	movb	$1, %al
	movsd	(%rsp), %xmm0           # 8-byte Reload
	callq	printf
	.loc	6 42 3                  # print_results.c:42:3
	movl	$.L.str917, %edi
	xorl	%eax, %eax
	movq	96(%rsp), %rcx
	movq	%rcx, %rsi
	callq	printf
.Ltmp160:
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:cs7 <- undef
	#DEBUG_VALUE: print_results:cs6 <- undef
	#DEBUG_VALUE: print_results:cs5 <- undef
	#DEBUG_VALUE: print_results:cs4 <- undef
	#DEBUG_VALUE: print_results:cs3 <- RBX
	#DEBUG_VALUE: print_results:cs2 <- R14
	#DEBUG_VALUE: print_results:cs1 <- R15
	#DEBUG_VALUE: print_results:compiletime <- R12
	#DEBUG_VALUE: print_results:npbversion <- R13
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str10, %edi
.Ltmp161:
	.loc	6 43 8                  # print_results.c:43:8
	cmpl	$0, 104(%rsp)
	je	.LBB1_10
.Ltmp162:
# BB#9:                                 # %if.then37
	.loc	6 44 5                  # print_results.c:44:5
	movl	$.L.str1118, %esi
	jmp	.LBB1_11
.LBB1_10:                               # %if.else39
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str1219, %esi
.LBB1_11:                               # %if.end41
	xorl	%eax, %eax
	callq	printf
.Ltmp163:
	#DEBUG_VALUE: print_results:t <- [RSP+8]
	#DEBUG_VALUE: print_results:mops <- [RSP+0]
	#DEBUG_VALUE: print_results:verified <- undef
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:cs7 <- undef
	#DEBUG_VALUE: print_results:cs6 <- undef
	#DEBUG_VALUE: print_results:cs5 <- undef
	#DEBUG_VALUE: print_results:cs4 <- undef
	#DEBUG_VALUE: print_results:cs3 <- RBX
	#DEBUG_VALUE: print_results:cs2 <- R14
	#DEBUG_VALUE: print_results:cs1 <- R15
	#DEBUG_VALUE: print_results:compiletime <- R12
	#DEBUG_VALUE: print_results:npbversion <- R13
	.loc	6 47 3                  # print_results.c:47:3
	movl	$.L.str1320, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	printf
.Ltmp164:
	.loc	6 48 3                  # print_results.c:48:3
	movl	$.L.str1421, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	printf
	.loc	6 50 3                  # print_results.c:50:3
	movl	$.L.str1522, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	.loc	6 52 3                  # print_results.c:52:3
	movl	$.L.str1623, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	.loc	6 53 3                  # print_results.c:53:3
	movl	$.L.str1724, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	.loc	6 54 3                  # print_results.c:54:3
	movl	$.L.str1825, %edi
	xorl	%eax, %eax
	movq	152(%rsp), %rcx
	movq	%rcx, %rsi
	callq	printf
	.loc	6 55 3                  # print_results.c:55:3
	movl	$.L.str1926, %edi
	xorl	%eax, %eax
	movq	160(%rsp), %rcx
	movq	%rcx, %rsi
	callq	printf
	.loc	6 56 3                  # print_results.c:56:3
	movl	$.L.str2027, %edi
	xorl	%eax, %eax
	movq	168(%rsp), %rcx
	movq	%rcx, %rsi
	callq	printf
	.loc	6 57 3                  # print_results.c:57:3
	movl	$.L.str2128, %edi
	xorl	%eax, %eax
	movq	176(%rsp), %rcx
	movq	%rcx, %rsi
	callq	printf
	.loc	6 59 3                  # print_results.c:59:3
	movl	$.Lstr29, %edi
	callq	puts
	.loc	6 65 1                  # print_results.c:65:1
	addq	$40, %rsp
	popq	%rbx
.Ltmp165:
	popq	%r12
.Ltmp166:
	popq	%r13
.Ltmp167:
	popq	%r14
.Ltmp168:
	popq	%r15
.Ltmp169:
	popq	%rbp
	retq
.Ltmp170:
.Ltmp171:
	.size	print_results, .Ltmp171-print_results
.Lfunc_end1:
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI2_1:
	.quad	4710765210229538816     # double 8388608
.LCPI2_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI2_3:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	randlc
	.align	16, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
.Lfunc_begin2:
	.file	7 "/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/common/randdp.c"
	.loc	7 5 0                   # randdp.c:5:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: randlc:x <- RDI
	#DEBUG_VALUE: randlc:a <- XMM0
	movaps	%xmm0, %xmm5
.Ltmp172:
	#DEBUG_VALUE: randlc:a <- XMM5
	movq	%rdi, %rcx
.Ltmp173:
	#DEBUG_VALUE: randlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: randlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: randlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: randlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: randlc:x <- RCX
	movsd	.LCPI2_0(%rip), %xmm1
	.loc	7 47 8 prologue_end     # randdp.c:47:8
.Ltmp174:
                                        # kill: XMM0<def> XMM5<kill>
	mulsd	%xmm1, %xmm0
.Ltmp175:
	#DEBUG_VALUE: randlc:t1 <- XMM0
	.loc	7 48 8                  # randdp.c:48:8
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm2
.Ltmp176:
	#DEBUG_VALUE: randlc:a1 <- XMM2
	movsd	.LCPI2_1(%rip), %xmm6
	.loc	7 49 12                 # randdp.c:49:12
	movaps	%xmm2, %xmm0
.Ltmp177:
	mulsd	%xmm6, %xmm0
	.loc	7 49 8 is_stmt 0        # randdp.c:49:8
	subsd	%xmm0, %xmm5
.Ltmp178:
	#DEBUG_VALUE: randlc:a2 <- XMM5
	.loc	7 56 15 is_stmt 1       # randdp.c:56:15
	movsd	(%rcx), %xmm0
	.loc	7 56 8 is_stmt 0        # randdp.c:56:8
	movaps	%xmm0, %xmm3
	mulsd	%xmm1, %xmm3
.Ltmp179:
	#DEBUG_VALUE: randlc:t1 <- XMM3
	.loc	7 57 8 is_stmt 1        # randdp.c:57:8
	cvttsd2si	%xmm3, %eax
	cvtsi2sdl	%eax, %xmm4
	.loc	7 59 18                 # randdp.c:59:18
	movaps	%xmm5, %xmm3
.Ltmp180:
	mulsd	%xmm4, %xmm3
.Ltmp181:
	#DEBUG_VALUE: randlc:x1 <- XMM4
	.loc	7 58 13                 # randdp.c:58:13
	mulsd	%xmm6, %xmm4
.Ltmp182:
	.loc	7 58 8 is_stmt 0        # randdp.c:58:8
	subsd	%xmm4, %xmm0
.Ltmp183:
	#DEBUG_VALUE: randlc:x2 <- XMM0
	.loc	7 59 8 is_stmt 1        # randdp.c:59:8
	mulsd	%xmm0, %xmm2
.Ltmp184:
	addsd	%xmm3, %xmm2
.Ltmp185:
	#DEBUG_VALUE: randlc:t1 <- XMM2
	.loc	7 60 15                 # randdp.c:60:15
	mulsd	%xmm2, %xmm1
	.loc	7 60 8 is_stmt 0        # randdp.c:60:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
.Ltmp186:
	#DEBUG_VALUE: randlc:t2 <- XMM1
	.loc	7 61 12 is_stmt 1       # randdp.c:61:12
	mulsd	%xmm6, %xmm1
.Ltmp187:
	.loc	7 61 7 is_stmt 0        # randdp.c:61:7
	subsd	%xmm1, %xmm2
.Ltmp188:
	#DEBUG_VALUE: randlc:z <- XMM2
	.loc	7 62 8 is_stmt 1        # randdp.c:62:8
	mulsd	%xmm6, %xmm2
.Ltmp189:
	.loc	7 62 18 is_stmt 0       # randdp.c:62:18
	mulsd	%xmm5, %xmm0
.Ltmp190:
	.loc	7 62 8                  # randdp.c:62:8
	addsd	%xmm2, %xmm0
.Ltmp191:
	#DEBUG_VALUE: randlc:t3 <- XMM0
	movsd	.LCPI2_2(%rip), %xmm2
	.loc	7 63 15 is_stmt 1       # randdp.c:63:15
	movaps	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	.loc	7 63 8 is_stmt 0        # randdp.c:63:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
.Ltmp192:
	#DEBUG_VALUE: randlc:t4 <- XMM1
	.loc	7 64 13 is_stmt 1       # randdp.c:64:13
	mulsd	.LCPI2_3(%rip), %xmm1
.Ltmp193:
	.loc	7 64 8 is_stmt 0        # randdp.c:64:8
	addsd	%xmm0, %xmm1
	.loc	7 64 3                  # randdp.c:64:3
	movsd	%xmm1, (%rcx)
	.loc	7 65 7 is_stmt 1        # randdp.c:65:7
	mulsd	%xmm2, %xmm1
.Ltmp194:
	#DEBUG_VALUE: randlc:r <- XMM1
	.loc	7 67 3                  # randdp.c:67:3
	movaps	%xmm1, %xmm0
.Ltmp195:
	retq
.Ltmp196:
.Ltmp197:
	.size	randlc, .Ltmp197-randlc
.Lfunc_end2:
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI3_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI3_2:
	.quad	4710765210229538816     # double 8388608
.LCPI3_3:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI3_4:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	vranlc
	.align	16, 0x90
	.type	vranlc,@function
vranlc:                                 # @vranlc
.Lfunc_begin3:
	.loc	7 72 0                  # randdp.c:72:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: vranlc:n <- EDI
	#DEBUG_VALUE: vranlc:x <- RSI
	#DEBUG_VALUE: vranlc:a <- XMM0
	#DEBUG_VALUE: vranlc:y <- RDX
	movq	%rdx, %rcx
.Ltmp198:
	#DEBUG_VALUE: vranlc:y <- RCX
	movaps	%xmm0, %xmm1
.Ltmp199:
	#DEBUG_VALUE: vranlc:a <- XMM1
	movl	%edi, %eax
.Ltmp200:
	#DEBUG_VALUE: vranlc:i <- 0
	#DEBUG_VALUE: vranlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: vranlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: vranlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: vranlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: vranlc:n <- EAX
	.loc	7 122 3 prologue_end    # randdp.c:122:3
	testl	%eax, %eax
	jle	.LBB3_3
.Ltmp201:
# BB#1:
	#DEBUG_VALUE: vranlc:n <- EAX
	#DEBUG_VALUE: vranlc:x <- RSI
	#DEBUG_VALUE: vranlc:a <- XMM1
	#DEBUG_VALUE: vranlc:y <- RCX
	#DEBUG_VALUE: vranlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: vranlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: vranlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: vranlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: vranlc:i <- 0
	movsd	.LCPI3_0(%rip), %xmm0
	.loc	7 115 8                 # randdp.c:115:8
	mulsd	%xmm1, %xmm0
.Ltmp202:
	#DEBUG_VALUE: vranlc:t1 <- XMM0
	.loc	7 116 8                 # randdp.c:116:8
	cvttsd2si	%xmm0, %edx
	cvtsi2sdl	%edx, %xmm8
.Ltmp203:
	#DEBUG_VALUE: vranlc:a1 <- XMM8
	movsd	.LCPI3_1(%rip), %xmm7
	.loc	7 117 12                # randdp.c:117:12
	mulsd	%xmm8, %xmm7
	.loc	7 117 8 is_stmt 0       # randdp.c:117:8
	addsd	%xmm1, %xmm7
.Ltmp204:
	#DEBUG_VALUE: vranlc:a2 <- XMM7
	movsd	.LCPI3_0(%rip), %xmm6
	movsd	.LCPI3_2(%rip), %xmm5
	movsd	.LCPI3_3(%rip), %xmm2
	movsd	.LCPI3_4(%rip), %xmm0
.Ltmp205:
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: vranlc:x <- RSI
	#DEBUG_VALUE: vranlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: vranlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: vranlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: vranlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: vranlc:i <- 0
	#DEBUG_VALUE: vranlc:a1 <- XMM8
	#DEBUG_VALUE: vranlc:a2 <- XMM7
	.loc	7 128 17 is_stmt 1      # randdp.c:128:17
	movsd	(%rsi), %xmm3
	.loc	7 128 10 is_stmt 0      # randdp.c:128:10
	movaps	%xmm3, %xmm1
	mulsd	%xmm6, %xmm1
.Ltmp206:
	#DEBUG_VALUE: vranlc:t1 <- XMM1
	.loc	7 129 10 is_stmt 1      # randdp.c:129:10
	cvttsd2si	%xmm1, %edx
	cvtsi2sdl	%edx, %xmm4
	.loc	7 131 20                # randdp.c:131:20
	movaps	%xmm7, %xmm1
.Ltmp207:
	mulsd	%xmm4, %xmm1
.Ltmp208:
	#DEBUG_VALUE: vranlc:x1 <- XMM4
	.loc	7 130 15                # randdp.c:130:15
	mulsd	%xmm5, %xmm4
.Ltmp209:
	.loc	7 130 10 is_stmt 0      # randdp.c:130:10
	subsd	%xmm4, %xmm3
.Ltmp210:
	#DEBUG_VALUE: vranlc:x2 <- XMM3
	.loc	7 131 10 is_stmt 1      # randdp.c:131:10
	movaps	%xmm8, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm1, %xmm4
.Ltmp211:
	#DEBUG_VALUE: vranlc:t1 <- XMM4
	.loc	7 132 17                # randdp.c:132:17
	movaps	%xmm4, %xmm1
	mulsd	%xmm6, %xmm1
	.loc	7 132 10 is_stmt 0      # randdp.c:132:10
	cvttsd2si	%xmm1, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
.Ltmp212:
	#DEBUG_VALUE: vranlc:t2 <- XMM1
	.loc	7 133 14 is_stmt 1      # randdp.c:133:14
	mulsd	%xmm5, %xmm1
.Ltmp213:
	.loc	7 133 9 is_stmt 0       # randdp.c:133:9
	subsd	%xmm1, %xmm4
.Ltmp214:
	#DEBUG_VALUE: vranlc:z <- XMM4
	.loc	7 134 10 is_stmt 1      # randdp.c:134:10
	mulsd	%xmm5, %xmm4
.Ltmp215:
	.loc	7 134 20 is_stmt 0      # randdp.c:134:20
	mulsd	%xmm7, %xmm3
.Ltmp216:
	.loc	7 134 10                # randdp.c:134:10
	addsd	%xmm4, %xmm3
.Ltmp217:
	#DEBUG_VALUE: vranlc:t3 <- XMM3
	.loc	7 135 17 is_stmt 1      # randdp.c:135:17
	movaps	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	.loc	7 135 10 is_stmt 0      # randdp.c:135:10
	cvttsd2si	%xmm1, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
.Ltmp218:
	#DEBUG_VALUE: vranlc:t4 <- XMM1
	.loc	7 136 15 is_stmt 1      # randdp.c:136:15
	mulsd	%xmm0, %xmm1
.Ltmp219:
	.loc	7 136 10 is_stmt 0      # randdp.c:136:10
	addsd	%xmm3, %xmm1
	.loc	7 136 5                 # randdp.c:136:5
	movsd	%xmm1, (%rsi)
	.loc	7 137 12 is_stmt 1      # randdp.c:137:12
	mulsd	%xmm2, %xmm1
	.loc	7 137 5 is_stmt 0       # randdp.c:137:5
	movsd	%xmm1, (%rcx)
.Ltmp220:
	.loc	7 122 3 is_stmt 1       # randdp.c:122:3
	addq	$8, %rcx
	decl	%eax
	jne	.LBB3_2
.Ltmp221:
.LBB3_3:                                # %for.end
	#DEBUG_VALUE: vranlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: vranlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: vranlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: vranlc:t46 <- 7.036874e+13
	#DEBUG_VALUE: vranlc:i <- 0
	.loc	7 140 3                 # randdp.c:140:3
	retq
.Ltmp222:
.Ltmp223:
	.size	vranlc, .Ltmp223-vranlc
.Lfunc_end3:
	.cfi_endproc

	.globl	timer_clear
	.align	16, 0x90
	.type	timer_clear,@function
timer_clear:                            # @timer_clear
.Lfunc_begin4:
	.loc	4 26 0                  # c_timers.c:26:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_clear:n <- EDI
	movl	%edi, %eax
.Ltmp224:
	#DEBUG_VALUE: timer_clear:n <- EAX
	.loc	4 27 5 prologue_end     # c_timers.c:27:5
	cltq
.Ltmp225:
	movq	$0, elapsed(,%rax,8)
	.loc	4 28 1                  # c_timers.c:28:1
	retq
.Ltmp226:
.Ltmp227:
	.size	timer_clear, .Ltmp227-timer_clear
.Lfunc_end4:
	.cfi_endproc

	.globl	timer_start
	.align	16, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
.Lfunc_begin5:
	.loc	4 35 0                  # c_timers.c:35:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp228:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp229:
	.cfi_def_cfa_offset 32
.Ltmp230:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_start:n <- EDI
	movl	%edi, %ebx
.Ltmp231:
	#DEBUG_VALUE: timer_start:n <- EBX
	leaq	8(%rsp), %rax
.Ltmp232:
	#DEBUG_VALUE: elapsed_time:t <- [RAX+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	movq	%rax, %rdi
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0
.Ltmp233:
	.loc	4 36 5                  # c_timers.c:36:5
	movslq	%ebx, %rax
.Ltmp234:
	movsd	%xmm0, start(,%rax,8)
	.loc	4 37 1                  # c_timers.c:37:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp235:
	retq
.Ltmp236:
.Ltmp237:
	.size	timer_start, .Ltmp237-timer_start
.Lfunc_end5:
	.cfi_endproc

	.globl	timer_stop
	.align	16, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
.Lfunc_begin6:
	.loc	4 44 0                  # c_timers.c:44:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp239:
	.cfi_def_cfa_offset 32
.Ltmp240:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_stop:n <- EDI
	movl	%edi, %ebx
.Ltmp241:
	#DEBUG_VALUE: timer_stop:n <- EBX
	leaq	8(%rsp), %rax
.Ltmp242:
	#DEBUG_VALUE: elapsed_time:t <- [RAX+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	movq	%rax, %rdi
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0
.Ltmp243:
	#DEBUG_VALUE: timer_stop:now <- XMM0
	.loc	4 48 15                 # c_timers.c:48:15
	movslq	%ebx, %rax
.Ltmp244:
	.loc	4 48 9 is_stmt 0        # c_timers.c:48:9
	subsd	start(,%rax,8), %xmm0
.Ltmp245:
	#DEBUG_VALUE: timer_stop:t <- XMM0
	.loc	4 49 5 is_stmt 1        # c_timers.c:49:5
	addsd	elapsed(,%rax,8), %xmm0
.Ltmp246:
	movsd	%xmm0, elapsed(,%rax,8)
	.loc	4 51 1                  # c_timers.c:51:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp247:
	retq
.Ltmp248:
.Ltmp249:
	.size	timer_stop, .Ltmp249-timer_stop
.Lfunc_end6:
	.cfi_endproc

	.globl	timer_read
	.align	16, 0x90
	.type	timer_read,@function
timer_read:                             # @timer_read
.Lfunc_begin7:
	.loc	4 58 0                  # c_timers.c:58:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_read:n <- EDI
	movl	%edi, %eax
.Ltmp250:
	#DEBUG_VALUE: timer_read:n <- EAX
	.loc	4 59 13 prologue_end    # c_timers.c:59:13
	cltq
.Ltmp251:
	movsd	elapsed(,%rax,8), %xmm0
	.loc	4 59 5 is_stmt 0        # c_timers.c:59:5
	retq
.Ltmp252:
.Ltmp253:
	.size	timer_read, .Ltmp253-timer_read
.Lfunc_end7:
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	wtime_
	.align	16, 0x90
	.type	wtime_,@function
wtime_:                                 # @wtime_
.Lfunc_begin8:
	.loc	5 8 0 is_stmt 1         # ../common/wtime.c:8:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rax
	xorl	%esi, %esi
	.loc	5 11 3 prologue_end     # ../common/wtime.c:11:3
.Ltmp257:
	movq	%rax, %rdi
	callq	gettimeofday
	.loc	5 12 7                  # ../common/wtime.c:12:7
	cmpl	$0, wtime_.sec(%rip)
	jns	.LBB8_2
# BB#1:                                 # %if.then
	.loc	5 12 22 is_stmt 0 discriminator 1 # ../common/wtime.c:12:22
.Ltmp258:
	movl	-24(%rbp), %eax
	.loc	5 12 16                 # ../common/wtime.c:12:16
	movl	%eax, wtime_.sec(%rip)
.Ltmp259:
.LBB8_2:                                # %if.end
	.loc	5 13 9 is_stmt 1        # ../common/wtime.c:13:9
	movq	-24(%rbp), %rax
	.loc	5 13 21 is_stmt 0       # ../common/wtime.c:13:21
	movslq	wtime_.sec(%rip), %rcx
	.loc	5 13 9                  # ../common/wtime.c:13:9
	subq	%rcx, %rax
	.loc	5 13 8                  # ../common/wtime.c:13:8
	cvtsi2sdq	%rax, %xmm1
	.loc	5 13 35                 # ../common/wtime.c:13:35
	cvtsi2sdq	-16(%rbp), %xmm0
	.loc	5 13 28                 # ../common/wtime.c:13:28
	mulsd	.LCPI8_0(%rip), %xmm0
	.loc	5 13 8                  # ../common/wtime.c:13:8
	addsd	%xmm1, %xmm0
	.loc	5 13 4                  # ../common/wtime.c:13:4
	movq	-8(%rbp), %rax
	.loc	5 13 3                  # ../common/wtime.c:13:3
	movsd	%xmm0, (%rax)
	.loc	5 14 1 is_stmt 1        # ../common/wtime.c:14:1
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp260:
.Ltmp261:
	.size	wtime_, .Ltmp261-wtime_
.Lfunc_end8:
	.cfi_endproc

	.type	.Lmain.dum,@object      # @main.dum
	.section	.rodata,"a",@progbits
	.align	16
.Lmain.dum:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	.Lmain.dum, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timer.flag"
	.size	.L.str, 11

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"r"
	.size	.L.str1, 2

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"%15.0lf"
	.size	.L.str2, 8

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark"
	.size	.Lstr, 57

	.type	.L.str4,@object         # @.str4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str4:
	.asciz	"\n Number of random numbers generated: %15s\n"
	.size	.L.str4, 44

	.type	x,@object               # @x
	.local	x
	.comm	x,1048576,16
	.type	q,@object               # @q
	.local	q
	.comm	q,80,16
	.type	.Lstr22,@object         # @str22
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr22:
	.asciz	"\nEP Benchmark Results:\n"
	.size	.Lstr22, 24

	.type	.L.str6,@object         # @.str6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str6:
	.asciz	"CPU Time =%10.4lf\n"
	.size	.L.str6, 19

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"N = 2^%5d\n"
	.size	.L.str7, 11

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"No. Gaussian Pairs = %15.0lf\n"
	.size	.L.str8, 30

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"Sums = %25.15lE %25.15lE\n"
	.size	.L.str9, 26

	.type	.Lstr23,@object         # @str23
.Lstr23:
	.asciz	"Counts: "
	.size	.Lstr23, 9

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"%3d%15.0lf\n"
	.size	.L.str11, 12

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"EP"
	.size	.L.str12, 3

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"Random numbers generated"
	.size	.L.str13, 25

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"3.3.1"
	.size	.L.str14, 6

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"22 Feb 2016"
	.size	.L.str15, 12

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"(none)"
	.size	.L.str16, 7

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"-I../common"
	.size	.L.str17, 12

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"randdp"
	.size	.L.str18, 7

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	"\nTotal time:     %9.3lf (%6.2lf)\n"
	.size	.L.str19, 34

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"Gaussian pairs: %9.3lf (%6.2lf)\n"
	.size	.L.str20, 33

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"Random numbers: %9.3lf (%6.2lf)\n"
	.size	.L.str21, 33

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"\n\n %s Benchmark Completed.\n"
	.size	.L.str3, 28

	.type	.L.str110,@object       # @.str110
.L.str110:
	.asciz	" Class           =             %12c\n"
	.size	.L.str110, 37

	.type	.L.str211,@object       # @.str211
.L.str211:
	.asciz	"%15.0lf"
	.size	.L.str211, 8

	.type	.L.str312,@object       # @.str312
.L.str312:
	.asciz	" Size            =          %15s\n"
	.size	.L.str312, 34

	.type	.L.str413,@object       # @.str413
.L.str413:
	.asciz	" Size            =             %12d\n"
	.size	.L.str413, 37

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	" Size            =           %4dx%4dx%4d\n"
	.size	.L.str5, 42

	.type	.L.str614,@object       # @.str614
.L.str614:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str614, 37

	.type	.L.str715,@object       # @.str715
.L.str715:
	.asciz	" Time in seconds =             %12.2lf\n"
	.size	.L.str715, 40

	.type	.L.str816,@object       # @.str816
.L.str816:
	.asciz	" Mop/s total     =          %15.2lf\n"
	.size	.L.str816, 37

	.type	.L.str917,@object       # @.str917
.L.str917:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str917, 25

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	" Verification    =             %12s\n"
	.size	.L.str10, 37

	.type	.L.str1118,@object      # @.str1118
.L.str1118:
	.asciz	"SUCCESSFUL"
	.size	.L.str1118, 11

	.type	.L.str1219,@object      # @.str1219
.L.str1219:
	.asciz	"UNSUCCESSFUL"
	.size	.L.str1219, 13

	.type	.L.str1320,@object      # @.str1320
.L.str1320:
	.asciz	" Version         =             %12s\n"
	.size	.L.str1320, 37

	.type	.L.str1421,@object      # @.str1421
.L.str1421:
	.asciz	" Compile date    =             %12s\n"
	.size	.L.str1421, 37

	.type	.L.str1522,@object      # @.str1522
.L.str1522:
	.asciz	"\n Compile options:\n    CC           = %s\n"
	.size	.L.str1522, 42

	.type	.L.str1623,@object      # @.str1623
.L.str1623:
	.asciz	"    CLINK        = %s\n"
	.size	.L.str1623, 23

	.type	.L.str1724,@object      # @.str1724
.L.str1724:
	.asciz	"    C_LIB        = %s\n"
	.size	.L.str1724, 23

	.type	.L.str1825,@object      # @.str1825
.L.str1825:
	.asciz	"    C_INC        = %s\n"
	.size	.L.str1825, 23

	.type	.L.str1926,@object      # @.str1926
.L.str1926:
	.asciz	"    CFLAGS       = %s\n"
	.size	.L.str1926, 23

	.type	.L.str2027,@object      # @.str2027
.L.str2027:
	.asciz	"    CLINKFLAGS   = %s\n"
	.size	.L.str2027, 23

	.type	.L.str2128,@object      # @.str2128
.L.str2128:
	.asciz	"    RAND         = %s\n"
	.size	.L.str2128, 23

	.type	.Lstr29,@object         # @str29
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr29:
	.asciz	"\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n"
	.size	.Lstr29, 194

	.type	elapsed,@object         # @elapsed
	.local	elapsed
	.comm	elapsed,512,16
	.type	start,@object           # @start
	.local	start
	.comm	start,512,16
	.type	wtime_.sec,@object      # @wtime_.sec
	.data
	.align	4
wtime_.sec:
	.long	4294967295              # 0xffffffff
	.size	wtime_.sec, 4

.Ldebug_end1:
	.text
.Ldebug_end2:
	.file	8 "/usr/include/libio.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	10 "/home/norouzi/Desktop/software/dp_clang/bin/../lib/clang/3.6.1/include/stddef.h"
	.file	11 "/usr/include/stdio.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.6.1 (tags/RELEASE_361/final)"
.Linfo_string1:
	.asciz	"ep.c"
.Linfo_string2:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/EP"
.Linfo_string3:
	.asciz	"x"
.Linfo_string4:
	.asciz	"double"
.Linfo_string5:
	.asciz	"sizetype"
.Linfo_string6:
	.asciz	"q"
.Linfo_string7:
	.asciz	"false"
.Linfo_string8:
	.asciz	"true"
.Linfo_string9:
	.asciz	"../common/print_results.c"
.Linfo_string10:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/SNU_NPB-1.0.3 (2)/NPB3.3-SER-C/common"
.Linfo_string11:
	.asciz	"../common/randdp.c"
.Linfo_string12:
	.asciz	"int"
.Linfo_string13:
	.asciz	"../common/c_timers.c"
.Linfo_string14:
	.asciz	"start"
.Linfo_string15:
	.asciz	"elapsed"
.Linfo_string16:
	.asciz	"../common/wtime.c"
.Linfo_string17:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common"
.Linfo_string18:
	.asciz	"sec"
.Linfo_string19:
	.asciz	"elapsed_time"
.Linfo_string20:
	.asciz	"t"
.Linfo_string21:
	.asciz	"main"
.Linfo_string22:
	.asciz	"print_results"
.Linfo_string23:
	.asciz	"randlc"
.Linfo_string24:
	.asciz	"vranlc"
.Linfo_string25:
	.asciz	"timer_clear"
.Linfo_string26:
	.asciz	"timer_start"
.Linfo_string27:
	.asciz	"timer_stop"
.Linfo_string28:
	.asciz	"timer_read"
.Linfo_string29:
	.asciz	"wtime_"
.Linfo_string30:
	.asciz	"dum"
.Linfo_string31:
	.asciz	"size"
.Linfo_string32:
	.asciz	"char"
.Linfo_string33:
	.asciz	"fp"
.Linfo_string34:
	.asciz	"_flags"
.Linfo_string35:
	.asciz	"_IO_read_ptr"
.Linfo_string36:
	.asciz	"_IO_read_end"
.Linfo_string37:
	.asciz	"_IO_read_base"
.Linfo_string38:
	.asciz	"_IO_write_base"
.Linfo_string39:
	.asciz	"_IO_write_ptr"
.Linfo_string40:
	.asciz	"_IO_write_end"
.Linfo_string41:
	.asciz	"_IO_buf_base"
.Linfo_string42:
	.asciz	"_IO_buf_end"
.Linfo_string43:
	.asciz	"_IO_save_base"
.Linfo_string44:
	.asciz	"_IO_backup_base"
.Linfo_string45:
	.asciz	"_IO_save_end"
.Linfo_string46:
	.asciz	"_markers"
.Linfo_string47:
	.asciz	"_next"
.Linfo_string48:
	.asciz	"_sbuf"
.Linfo_string49:
	.asciz	"_pos"
.Linfo_string50:
	.asciz	"_IO_marker"
.Linfo_string51:
	.asciz	"_chain"
.Linfo_string52:
	.asciz	"_fileno"
.Linfo_string53:
	.asciz	"_flags2"
.Linfo_string54:
	.asciz	"_old_offset"
.Linfo_string55:
	.asciz	"long int"
.Linfo_string56:
	.asciz	"__off_t"
.Linfo_string57:
	.asciz	"_cur_column"
.Linfo_string58:
	.asciz	"unsigned short"
.Linfo_string59:
	.asciz	"_vtable_offset"
.Linfo_string60:
	.asciz	"signed char"
.Linfo_string61:
	.asciz	"_shortbuf"
.Linfo_string62:
	.asciz	"_lock"
.Linfo_string63:
	.asciz	"_IO_lock_t"
.Linfo_string64:
	.asciz	"_offset"
.Linfo_string65:
	.asciz	"__off64_t"
.Linfo_string66:
	.asciz	"__pad1"
.Linfo_string67:
	.asciz	"__pad2"
.Linfo_string68:
	.asciz	"__pad3"
.Linfo_string69:
	.asciz	"__pad4"
.Linfo_string70:
	.asciz	"__pad5"
.Linfo_string71:
	.asciz	"long unsigned int"
.Linfo_string72:
	.asciz	"size_t"
.Linfo_string73:
	.asciz	"_mode"
.Linfo_string74:
	.asciz	"_unused2"
.Linfo_string75:
	.asciz	"_IO_FILE"
.Linfo_string76:
	.asciz	"FILE"
.Linfo_string77:
	.asciz	"timers_enabled"
.Linfo_string78:
	.asciz	"logical"
.Linfo_string79:
	.asciz	"j"
.Linfo_string80:
	.asciz	"np"
.Linfo_string81:
	.asciz	"verified"
.Linfo_string82:
	.asciz	"i"
.Linfo_string83:
	.asciz	"Mops"
.Linfo_string84:
	.asciz	"t1"
.Linfo_string85:
	.asciz	"t2"
.Linfo_string86:
	.asciz	"kk"
.Linfo_string87:
	.asciz	"ik"
.Linfo_string88:
	.asciz	"l"
.Linfo_string89:
	.asciz	"k"
.Linfo_string90:
	.asciz	"gc"
.Linfo_string91:
	.asciz	"sy_verify_value"
.Linfo_string92:
	.asciz	"sx_verify_value"
.Linfo_string93:
	.asciz	"nit"
.Linfo_string94:
	.asciz	"tm"
.Linfo_string95:
	.asciz	"sx_err"
.Linfo_string96:
	.asciz	"sy_err"
.Linfo_string97:
	.asciz	"tt"
.Linfo_string98:
	.asciz	"t3"
.Linfo_string99:
	.asciz	"t4"
.Linfo_string100:
	.asciz	"x1"
.Linfo_string101:
	.asciz	"x2"
.Linfo_string102:
	.asciz	"sx"
.Linfo_string103:
	.asciz	"sy"
.Linfo_string104:
	.asciz	"an"
.Linfo_string105:
	.asciz	"k_offset"
.Linfo_string106:
	.asciz	"name"
.Linfo_string107:
	.asciz	"class"
.Linfo_string108:
	.asciz	"n1"
.Linfo_string109:
	.asciz	"n2"
.Linfo_string110:
	.asciz	"n3"
.Linfo_string111:
	.asciz	"niter"
.Linfo_string112:
	.asciz	"mops"
.Linfo_string113:
	.asciz	"optype"
.Linfo_string114:
	.asciz	"cs7"
.Linfo_string115:
	.asciz	"cs6"
.Linfo_string116:
	.asciz	"cs5"
.Linfo_string117:
	.asciz	"cs4"
.Linfo_string118:
	.asciz	"cs3"
.Linfo_string119:
	.asciz	"cs2"
.Linfo_string120:
	.asciz	"cs1"
.Linfo_string121:
	.asciz	"compiletime"
.Linfo_string122:
	.asciz	"npbversion"
.Linfo_string123:
	.asciz	"a"
.Linfo_string124:
	.asciz	"t46"
.Linfo_string125:
	.asciz	"t23"
.Linfo_string126:
	.asciz	"r46"
.Linfo_string127:
	.asciz	"r23"
.Linfo_string128:
	.asciz	"a1"
.Linfo_string129:
	.asciz	"a2"
.Linfo_string130:
	.asciz	"z"
.Linfo_string131:
	.asciz	"r"
.Linfo_string132:
	.asciz	"n"
.Linfo_string133:
	.asciz	"y"
.Linfo_string134:
	.asciz	"now"
.Linfo_string135:
	.asciz	"tv"
.Linfo_string136:
	.asciz	"tv_sec"
.Linfo_string137:
	.asciz	"__time_t"
.Linfo_string138:
	.asciz	"tv_usec"
.Linfo_string139:
	.asciz	"__suseconds_t"
.Linfo_string140:
	.asciz	"timeval"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1196                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x4a5 DW_TAG_compile_unit
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
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	x
	.byte	3                       # Abbrev [3] 0x3f:0xf DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	131072                  # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4e:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x55:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x5c:0x15 DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.long	113                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	q
	.byte	3                       # Abbrev [3] 0x71:0xc DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x76:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x7d:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x81:0x6 DW_TAG_enumerator
	.long	.Linfo_string7          # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	9                       # Abbrev [9] 0x87:0x6 DW_TAG_enumerator
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x8e:0x1 DW_TAG_pointer_type
	.byte	11                      # Abbrev [11] 0x8f:0x1cd DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	12                      # Abbrev [12] 0xa8:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.long	.Linfo_string30         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	604                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0xb7:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220\001"
	.long	.Linfo_string31         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	616                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0xc6:0xf DW_TAG_variable
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string33         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	635                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0xd5:0xc DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1188                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0xe1:0xf DW_TAG_variable
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xf0:0xd DW_TAG_variable
	.ascii	"\200\002"              # DW_AT_const_value
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	13                      # Abbrev [13] 0xfd:0xf DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1188                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x10c:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string82         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x11b:0xf DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x12a:0xf DW_TAG_variable
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x139:0xf DW_TAG_variable
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string85         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x148:0xf DW_TAG_variable
	.long	.Ldebug_loc7            # DW_AT_location
	.long	.Linfo_string86         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x157:0xf DW_TAG_variable
	.long	.Ldebug_loc8            # DW_AT_location
	.long	.Linfo_string87         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x166:0xf DW_TAG_variable
	.long	.Ldebug_loc9            # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x175:0xf DW_TAG_variable
	.long	.Ldebug_loc10           # DW_AT_location
	.long	.Linfo_string89         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x184:0xf DW_TAG_variable
	.long	.Ldebug_loc11           # DW_AT_location
	.long	.Linfo_string90         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x193:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	224
	.byte	242
	.byte	73
	.byte	54
	.byte	104
	.byte	46
	.byte	187
	.byte	192
	.long	.Linfo_string91         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1a7:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	127
	.byte	241
	.byte	130
	.byte	87
	.byte	171
	.byte	95
	.byte	169
	.byte	192
	.long	.Linfo_string92         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x1bb:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string93         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1c7:0xf DW_TAG_variable
	.long	.Ldebug_loc12           # DW_AT_location
	.long	.Linfo_string94         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1d6:0xf DW_TAG_variable
	.long	.Ldebug_loc13           # DW_AT_location
	.long	.Linfo_string95         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1e5:0xf DW_TAG_variable
	.long	.Ldebug_loc14           # DW_AT_location
	.long	.Linfo_string96         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1f4:0xf DW_TAG_variable
	.long	.Ldebug_loc15           # DW_AT_location
	.long	.Linfo_string97         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x203:0xb DW_TAG_variable
	.long	.Linfo_string98         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x20e:0xb DW_TAG_variable
	.long	.Linfo_string99         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x219:0xb DW_TAG_variable
	.long	.Linfo_string100        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x224:0xb DW_TAG_variable
	.long	.Linfo_string101        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x22f:0xb DW_TAG_variable
	.long	.Linfo_string102        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x23a:0xb DW_TAG_variable
	.long	.Linfo_string103        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x245:0xb DW_TAG_variable
	.long	.Linfo_string104        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x250:0xb DW_TAG_variable
	.long	.Linfo_string105        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x25c:0xc DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x261:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	3                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x268:0xc DW_TAG_array_type
	.long	628                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x26d:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x274:0x7 DW_TAG_base_type
	.long	.Linfo_string32         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	20                      # Abbrev [20] 0x27b:0x5 DW_TAG_pointer_type
	.long	640                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x280:0xb DW_TAG_typedef
	.long	651                     # DW_AT_type
	.long	.Linfo_string76         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	22                      # Abbrev [22] 0x28b:0x17c DW_TAG_structure_type
	.long	.Linfo_string75         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	23                      # Abbrev [23] 0x293:0xc DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x29f:0xc DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2cf:0xc DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2db:0xd DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2e8:0xd DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2f5:0xd DW_TAG_member
	.long	.Linfo_string42         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x302:0xd DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x30f:0xd DW_TAG_member
	.long	.Linfo_string44         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x31c:0xd DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x329:0xd DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	1036                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x336:0xd DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	1086                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x343:0xd DW_TAG_member
	.long	.Linfo_string52         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x350:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x35d:0xd DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	1091                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x36a:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	1109                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x377:0xd DW_TAG_member
	.long	.Linfo_string59         # DW_AT_name
	.long	1116                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x384:0xd DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	1123                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x391:0xd DW_TAG_member
	.long	.Linfo_string62         # DW_AT_name
	.long	1135                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x39e:0xd DW_TAG_member
	.long	.Linfo_string64         # DW_AT_name
	.long	1147                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3ab:0xd DW_TAG_member
	.long	.Linfo_string66         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3b8:0xd DW_TAG_member
	.long	.Linfo_string67         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3c5:0xd DW_TAG_member
	.long	.Linfo_string68         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3d2:0xd DW_TAG_member
	.long	.Linfo_string69         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3df:0xd DW_TAG_member
	.long	.Linfo_string70         # DW_AT_name
	.long	1158                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x3ec:0xd DW_TAG_member
	.long	.Linfo_string73         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3f9:0xd DW_TAG_member
	.long	.Linfo_string74         # DW_AT_name
	.long	1176                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x407:0x5 DW_TAG_pointer_type
	.long	628                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x40c:0x5 DW_TAG_pointer_type
	.long	1041                    # DW_AT_type
	.byte	22                      # Abbrev [22] 0x411:0x2d DW_TAG_structure_type
	.long	.Linfo_string50         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	24                      # Abbrev [24] 0x419:0xc DW_TAG_member
	.long	.Linfo_string47         # DW_AT_name
	.long	1036                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x425:0xc DW_TAG_member
	.long	.Linfo_string48         # DW_AT_name
	.long	1086                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	23                      # Abbrev [23] 0x431:0xc DW_TAG_member
	.long	.Linfo_string49         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x43e:0x5 DW_TAG_pointer_type
	.long	651                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x443:0xb DW_TAG_typedef
	.long	1102                    # DW_AT_type
	.long	.Linfo_string56         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x44e:0x7 DW_TAG_base_type
	.long	.Linfo_string55         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x455:0x7 DW_TAG_base_type
	.long	.Linfo_string58         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x45c:0x7 DW_TAG_base_type
	.long	.Linfo_string60         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x463:0xc DW_TAG_array_type
	.long	628                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x468:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x46f:0x5 DW_TAG_pointer_type
	.long	1140                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x474:0x7 DW_TAG_typedef
	.long	.Linfo_string63         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.byte	21                      # Abbrev [21] 0x47b:0xb DW_TAG_typedef
	.long	1102                    # DW_AT_type
	.long	.Linfo_string65         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	21                      # Abbrev [21] 0x486:0xb DW_TAG_typedef
	.long	1169                    # DW_AT_type
	.long	.Linfo_string72         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x491:0x7 DW_TAG_base_type
	.long	.Linfo_string71         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x498:0xc DW_TAG_array_type
	.long	628                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x49d:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x4a4:0xb DW_TAG_typedef
	.long	125                     # DW_AT_type
	.long	.Linfo_string78         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.L.debug_info_begin1:
	.long	379                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x174 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string9          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string10         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	8                       # Abbrev [8] 0x2a:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string7          # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	9                       # Abbrev [9] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x3b:0x138 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string22         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc16           # DW_AT_location
	.long	.Linfo_string106        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x5f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc17           # DW_AT_location
	.long	.Linfo_string107        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+628      # DW_AT_type
	.byte	29                      # Abbrev [29] 0x6e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc18           # DW_AT_location
	.long	.Linfo_string108        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x7d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc19           # DW_AT_location
	.long	.Linfo_string109        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x8c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc20           # DW_AT_location
	.long	.Linfo_string110        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x9b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc21           # DW_AT_location
	.long	.Linfo_string111        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xaa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc22           # DW_AT_location
	.long	.Linfo_string20         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	29                      # Abbrev [29] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc23           # DW_AT_location
	.long	.Linfo_string112        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	30                      # Abbrev [30] 0xc8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string113        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string81         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	371                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xde:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc29           # DW_AT_location
	.long	.Linfo_string122        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xed:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc28           # DW_AT_location
	.long	.Linfo_string121        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xfc:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc27           # DW_AT_location
	.long	.Linfo_string120        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x10b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc26           # DW_AT_location
	.long	.Linfo_string119        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x11a:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc25           # DW_AT_location
	.long	.Linfo_string118        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	30                      # Abbrev [30] 0x129:0xb DW_TAG_formal_parameter
	.long	.Linfo_string117        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	30                      # Abbrev [30] 0x134:0xb DW_TAG_formal_parameter
	.long	.Linfo_string116        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	30                      # Abbrev [30] 0x13f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string115        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	30                      # Abbrev [30] 0x14a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string114        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+1031     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x155:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string31         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	.Lsection_info+616      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x163:0xf DW_TAG_variable
	.long	.Ldebug_loc24           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x173:0xb DW_TAG_typedef
	.long	42                      # DW_AT_type
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.L.debug_info_begin2:
	.long	645                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x27e DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string11         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string10         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin2 # DW_AT_high_pc
	.byte	5                       # Abbrev [5] 0x2a:0x7 DW_TAG_base_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	33                      # Abbrev [33] 0x31:0x11a DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string23         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	34                      # Abbrev [34] 0x4a:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc30           # DW_AT_location
	.long	.Linfo_string3          # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	638                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x59:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc31           # DW_AT_location
	.long	.Linfo_string123        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	17                      # Abbrev [17] 0x68:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string124        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x7c:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string125        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x90:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string126        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xa4:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string127        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xb8:0xf DW_TAG_variable
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xc7:0xf DW_TAG_variable
	.long	.Ldebug_loc33           # DW_AT_location
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	32                      # Abbrev [32] 0xd6:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	102
	.long	.Linfo_string129        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xe3:0xf DW_TAG_variable
	.long	.Ldebug_loc34           # DW_AT_location
	.long	.Linfo_string100        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xf2:0xf DW_TAG_variable
	.long	.Ldebug_loc35           # DW_AT_location
	.long	.Linfo_string101        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x101:0xf DW_TAG_variable
	.long	.Ldebug_loc36           # DW_AT_location
	.long	.Linfo_string85         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x110:0xf DW_TAG_variable
	.long	.Ldebug_loc37           # DW_AT_location
	.long	.Linfo_string130        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x11f:0xf DW_TAG_variable
	.long	.Ldebug_loc38           # DW_AT_location
	.long	.Linfo_string98         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x12e:0xf DW_TAG_variable
	.long	.Ldebug_loc39           # DW_AT_location
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	32                      # Abbrev [32] 0x13d:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string131        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x14b:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string24         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	34                      # Abbrev [34] 0x160:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc40           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	35                      # Abbrev [35] 0x16f:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string3          # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	638                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x17c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc41           # DW_AT_location
	.long	.Linfo_string123        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	34                      # Abbrev [34] 0x18b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc42           # DW_AT_location
	.long	.Linfo_string133        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	638                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x19a:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string82         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1a6:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string124        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1ba:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string125        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1ce:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string126        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1e2:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string127        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	643                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x1f6:0xf DW_TAG_variable
	.long	.Ldebug_loc43           # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x205:0xf DW_TAG_variable
	.long	.Ldebug_loc44           # DW_AT_location
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x214:0xf DW_TAG_variable
	.long	.Ldebug_loc45           # DW_AT_location
	.long	.Linfo_string129        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x223:0xf DW_TAG_variable
	.long	.Ldebug_loc46           # DW_AT_location
	.long	.Linfo_string100        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x232:0xf DW_TAG_variable
	.long	.Ldebug_loc47           # DW_AT_location
	.long	.Linfo_string101        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x241:0xf DW_TAG_variable
	.long	.Ldebug_loc48           # DW_AT_location
	.long	.Linfo_string85         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x250:0xf DW_TAG_variable
	.long	.Ldebug_loc49           # DW_AT_location
	.long	.Linfo_string130        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x25f:0xf DW_TAG_variable
	.long	.Ldebug_loc50           # DW_AT_location
	.long	.Linfo_string98         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x26e:0xf DW_TAG_variable
	.long	.Ldebug_loc51           # DW_AT_location
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x27e:0x5 DW_TAG_pointer_type
	.long	.Lsection_info+78       # DW_AT_type
	.byte	37                      # Abbrev [37] 0x283:0x5 DW_TAG_const_type
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
.L.debug_info_begin3:
	.long	364                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x165 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string13         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string10         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin4 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string14         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	start
	.byte	38                      # Abbrev [38] 0x3f:0xc DW_TAG_array_type
	.long	.Lsection_info+78       # DW_AT_type
	.byte	7                       # Abbrev [7] 0x44:0x6 DW_TAG_subrange_type
	.long	75                      # DW_AT_type
	.byte	64                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x52:0x15 DW_TAG_variable
	.long	.Linfo_string15         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	elapsed
	.byte	28                      # Abbrev [28] 0x67:0x25 DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string25         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0x7c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc52           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	39                      # Abbrev [39] 0x8c:0x18 DW_TAG_subprogram
	.long	.Linfo_string19         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	19                      # Abbrev [19] 0x98:0xb DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xa4:0x42 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string26         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc53           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	40                      # Abbrev [40] 0xc8:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp232                # DW_AT_low_pc
	.long	.Ltmp233-.Ltmp232       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	36                      # DW_AT_call_line
	.byte	41                      # Abbrev [41] 0xdb:0x9 DW_TAG_variable
	.long	.Ldebug_loc54           # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xe6:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string27         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0xfb:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc55           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x10a:0xf DW_TAG_variable
	.long	.Ldebug_loc57           # DW_AT_location
	.long	.Linfo_string134        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x119:0xf DW_TAG_variable
	.long	.Ldebug_loc58           # DW_AT_location
	.long	.Linfo_string20         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	40                      # Abbrev [40] 0x128:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp242                # DW_AT_low_pc
	.long	.Ltmp243-.Ltmp242       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	47                      # DW_AT_call_line
	.byte	41                      # Abbrev [41] 0x13b:0x9 DW_TAG_variable
	.long	.Ldebug_loc56           # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	33                      # Abbrev [33] 0x146:0x29 DW_TAG_subprogram
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string28         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0x15f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc59           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_begin4:
	.long	165                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	42                      # Abbrev [42] 0xb:0x9e DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string16         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string17         # DW_AT_comp_dir
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
	.byte	43                      # Abbrev [43] 0x2a:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	44                      # Abbrev [44] 0x3f:0x15 DW_TAG_variable
	.long	.Linfo_string18         # DW_AT_name
	.long	.Lsection_info+1625     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wtime_.sec
	.byte	45                      # Abbrev [45] 0x54:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string20         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2221     # DW_AT_type
	.byte	12                      # Abbrev [12] 0x62:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string135        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	113                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x71:0x21 DW_TAG_structure_type
	.long	.Linfo_string140        # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	13                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	24                      # Abbrev [24] 0x79:0xc DW_TAG_member
	.long	.Linfo_string136        # DW_AT_name
	.long	146                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x85:0xc DW_TAG_member
	.long	.Linfo_string138        # DW_AT_name
	.long	157                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	46                      # Abbrev [46] 0x92:0xb DW_TAG_typedef
	.long	.Lsection_info+1102     # DW_AT_type
	.long	.Linfo_string137        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	46                      # Abbrev [46] 0x9d:0xb DW_TAG_typedef
	.long	.Lsection_info+1102     # DW_AT_type
	.long	.Linfo_string139        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.section	.debug_abbrev,"",@progbits
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
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
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
	.byte	6                       # Abbreviation Code
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
	.byte	7                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
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
	.byte	9                       # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
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
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
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
	.byte	13                      # Abbreviation Code
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
	.byte	14                      # Abbreviation Code
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
	.byte	15                      # Abbreviation Code
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
	.byte	16                      # Abbreviation Code
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
	.byte	17                      # Abbreviation Code
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
	.byte	18                      # Abbreviation Code
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
	.byte	19                      # Abbreviation Code
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
	.byte	20                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
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
	.byte	22                      # Abbreviation Code
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
	.byte	23                      # Abbreviation Code
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
	.byte	24                      # Abbreviation Code
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
	.byte	25                      # Abbreviation Code
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
	.byte	26                      # Abbreviation Code
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
	.byte	27                      # Abbreviation Code
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
	.byte	28                      # Abbreviation Code
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
	.byte	29                      # Abbreviation Code
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
	.byte	30                      # Abbreviation Code
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
	.byte	31                      # Abbreviation Code
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
	.byte	32                      # Abbreviation Code
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
	.byte	33                      # Abbreviation Code
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
	.byte	34                      # Abbreviation Code
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
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	37                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	38                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	39                      # Abbreviation Code
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
	.byte	40                      # Abbreviation Code
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
	.byte	41                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	42                      # Abbreviation Code
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
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
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
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	44                      # Abbreviation Code
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
	.byte	45                      # Abbreviation Code
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
	.byte	46                      # Abbreviation Code
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
	.byte	0                       # EOM(3)
	.section	.debug_ranges,"",@progbits
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	.Ltmp263-.Ltmp262       # Loc expr size
.Ltmp262:
	.byte	80                      # DW_OP_reg0
.Ltmp263:
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.short	.Ltmp265-.Ltmp264       # Loc expr size
.Ltmp264:
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
.Ltmp265:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	.Ltmp267-.Ltmp266       # Loc expr size
.Ltmp266:
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
.Ltmp267:
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.short	.Ltmp269-.Ltmp268       # Loc expr size
.Ltmp268:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
.Ltmp269:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.short	.Ltmp271-.Ltmp270       # Loc expr size
.Ltmp270:
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
.Ltmp271:
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.short	.Ltmp273-.Ltmp272       # Loc expr size
.Ltmp272:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp273:
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.short	.Ltmp275-.Ltmp274       # Loc expr size
.Ltmp274:
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
.Ltmp275:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.short	.Ltmp277-.Ltmp276       # Loc expr size
.Ltmp276:
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
.Ltmp277:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.short	.Ltmp279-.Ltmp278       # Loc expr size
.Ltmp278:
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp279:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.short	.Ltmp281-.Ltmp280       # Loc expr size
.Ltmp280:
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
.Ltmp281:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	.Ltmp283-.Ltmp282       # Loc expr size
.Ltmp282:
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp283:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.short	.Ltmp285-.Ltmp284       # Loc expr size
.Ltmp284:
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
.Ltmp285:
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	.Ltmp287-.Ltmp286       # Loc expr size
.Ltmp286:
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
.Ltmp287:
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.short	.Ltmp289-.Ltmp288       # Loc expr size
.Ltmp288:
.Ltmp289:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.short	.Ltmp291-.Ltmp290       # Loc expr size
.Ltmp290:
	.byte	119                     # DW_OP_breg7
	.asciz	"\340"                  # 96
.Ltmp291:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.short	.Ltmp293-.Ltmp292       # Loc expr size
.Ltmp292:
	.byte	119                     # DW_OP_breg7
	.asciz	"\340"                  # 96
.Ltmp293:
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.short	.Ltmp295-.Ltmp294       # Loc expr size
.Ltmp294:
	.byte	119                     # DW_OP_breg7
	.asciz	"\340"                  # 96
.Ltmp295:
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.short	.Ltmp297-.Ltmp296       # Loc expr size
.Ltmp296:
.Ltmp297:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.short	.Ltmp299-.Ltmp298       # Loc expr size
.Ltmp298:
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
.Ltmp299:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.short	.Ltmp301-.Ltmp300       # Loc expr size
.Ltmp300:
.Ltmp301:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.short	.Ltmp303-.Ltmp302       # Loc expr size
.Ltmp302:
.Ltmp303:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.short	.Ltmp305-.Ltmp304       # Loc expr size
.Ltmp304:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp305:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.short	.Ltmp307-.Ltmp306       # Loc expr size
.Ltmp306:
.Ltmp307:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.short	.Ltmp309-.Ltmp308       # Loc expr size
.Ltmp308:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp309:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.short	.Ltmp311-.Ltmp310       # Loc expr size
.Ltmp310:
.Ltmp311:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.short	.Ltmp313-.Ltmp312       # Loc expr size
.Ltmp312:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp313:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.short	.Ltmp315-.Ltmp314       # Loc expr size
.Ltmp314:
	.byte	98                      # DW_OP_reg18
.Ltmp315:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.short	.Ltmp317-.Ltmp316       # Loc expr size
.Ltmp316:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp317:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.short	.Ltmp319-.Ltmp318       # Loc expr size
.Ltmp318:
.Ltmp319:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.short	.Ltmp321-.Ltmp320       # Loc expr size
.Ltmp320:
.Ltmp321:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.short	.Ltmp323-.Ltmp322       # Loc expr size
.Ltmp322:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp323:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	.Ltmp325-.Ltmp324       # Loc expr size
.Ltmp324:
.Ltmp325:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.short	.Ltmp327-.Ltmp326       # Loc expr size
.Ltmp326:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp327:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.short	.Ltmp329-.Ltmp328       # Loc expr size
.Ltmp328:
.Ltmp329:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.short	.Ltmp331-.Ltmp330       # Loc expr size
.Ltmp330:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp331:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.short	.Ltmp333-.Ltmp332       # Loc expr size
.Ltmp332:
	.byte	98                      # DW_OP_reg18
.Ltmp333:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.short	.Ltmp335-.Ltmp334       # Loc expr size
.Ltmp334:
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
.Ltmp335:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	.Ltmp337-.Ltmp336       # Loc expr size
.Ltmp336:
.Ltmp337:
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.short	.Ltmp339-.Ltmp338       # Loc expr size
.Ltmp338:
	.byte	97                      # DW_OP_reg17
.Ltmp339:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.short	.Ltmp341-.Ltmp340       # Loc expr size
.Ltmp340:
	.byte	124                     # DW_OP_breg12
	.byte	0                       # 0
.Ltmp341:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.short	.Ltmp343-.Ltmp342       # Loc expr size
.Ltmp342:
	.byte	98                      # DW_OP_reg18
.Ltmp343:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	.Ltmp345-.Ltmp344       # Loc expr size
.Ltmp344:
	.byte	124                     # DW_OP_breg12
	.byte	0                       # 0
.Ltmp345:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.short	.Ltmp347-.Ltmp346       # Loc expr size
.Ltmp346:
	.byte	98                      # DW_OP_reg18
.Ltmp347:
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.short	.Ltmp349-.Ltmp348       # Loc expr size
.Ltmp348:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp349:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.short	.Ltmp351-.Ltmp350       # Loc expr size
.Ltmp350:
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp351:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.short	.Ltmp353-.Ltmp352       # Loc expr size
.Ltmp352:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp353:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.short	.Ltmp355-.Ltmp354       # Loc expr size
.Ltmp354:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp355:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	.Ltmp357-.Ltmp356       # Loc expr size
.Ltmp356:
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp357:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	.Ltmp359-.Ltmp358       # Loc expr size
.Ltmp358:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp359:
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.short	.Ltmp361-.Ltmp360       # Loc expr size
.Ltmp360:
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp361:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.short	.Ltmp363-.Ltmp362       # Loc expr size
.Ltmp362:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp363:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	.Ltmp365-.Ltmp364       # Loc expr size
.Ltmp364:
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp365:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	.Ltmp367-.Ltmp366       # Loc expr size
.Ltmp366:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp367:
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.short	.Ltmp369-.Ltmp368       # Loc expr size
.Ltmp368:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp369:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.short	.Ltmp371-.Ltmp370       # Loc expr size
.Ltmp370:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp371:
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.short	.Ltmp373-.Ltmp372       # Loc expr size
.Ltmp372:
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp373:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.short	.Ltmp375-.Ltmp374       # Loc expr size
.Ltmp374:
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp375:
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.short	.Ltmp377-.Ltmp376       # Loc expr size
.Ltmp376:
	.byte	119                     # DW_OP_breg7
	.ascii	"\200\001"              # 128
.Ltmp377:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.short	.Ltmp379-.Ltmp378       # Loc expr size
.Ltmp378:
	.byte	119                     # DW_OP_breg7
	.ascii	"\200\001"              # 128
.Ltmp379:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.short	.Ltmp381-.Ltmp380       # Loc expr size
.Ltmp380:
	.byte	119                     # DW_OP_breg7
	.ascii	"\200\001"              # 128
.Ltmp381:
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.short	.Ltmp383-.Ltmp382       # Loc expr size
.Ltmp382:
	.byte	119                     # DW_OP_breg7
	.ascii	"\200\001"              # 128
.Ltmp383:
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.short	.Ltmp385-.Ltmp384       # Loc expr size
.Ltmp384:
	.byte	119                     # DW_OP_breg7
	.asciz	"\350"                  # 104
.Ltmp385:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.short	.Ltmp387-.Ltmp386       # Loc expr size
.Ltmp386:
.Ltmp387:
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.short	.Ltmp389-.Ltmp388       # Loc expr size
.Ltmp388:
	.byte	119                     # DW_OP_breg7
	.asciz	"\350"                  # 104
.Ltmp389:
	.quad	0
	.quad	0
.Ldebug_loc13:
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.short	.Ltmp391-.Ltmp390       # Loc expr size
.Ltmp390:
	.byte	97                      # DW_OP_reg17
.Ltmp391:
	.quad	0
	.quad	0
.Ldebug_loc14:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.short	.Ltmp393-.Ltmp392       # Loc expr size
.Ltmp392:
	.byte	97                      # DW_OP_reg17
.Ltmp393:
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.short	.Ltmp395-.Ltmp394       # Loc expr size
.Ltmp394:
	.byte	99                      # DW_OP_reg19
.Ltmp395:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.short	.Ltmp397-.Ltmp396       # Loc expr size
.Ltmp396:
	.byte	97                      # DW_OP_reg17
.Ltmp397:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.short	.Ltmp399-.Ltmp398       # Loc expr size
.Ltmp398:
	.byte	98                      # DW_OP_reg18
.Ltmp399:
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp143-.Lfunc_begin1
	.short	.Ltmp401-.Ltmp400       # Loc expr size
.Ltmp400:
	.byte	85                      # DW_OP_reg5
.Ltmp401:
	.quad	.Ltmp143-.Lfunc_begin1
	.quad	.Ltmp146-.Lfunc_begin1
	.short	.Ltmp403-.Ltmp402       # Loc expr size
.Ltmp402:
	.byte	95                      # DW_OP_reg15
.Ltmp403:
	.quad	.Ltmp148-.Lfunc_begin1
	.quad	.Ltmp150-.Lfunc_begin1
	.short	.Ltmp405-.Ltmp404       # Loc expr size
.Ltmp404:
	.byte	95                      # DW_OP_reg15
.Ltmp405:
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp142-.Lfunc_begin1
	.short	.Ltmp407-.Ltmp406       # Loc expr size
.Ltmp406:
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp407:
	.quad	.Ltmp142-.Lfunc_begin1
	.quad	.Ltmp145-.Lfunc_begin1
	.short	.Ltmp409-.Ltmp408       # Loc expr size
.Ltmp408:
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp409:
	.quad	.Ltmp145-.Lfunc_begin1
	.quad	.Ltmp146-.Lfunc_begin1
	.short	.Ltmp411-.Ltmp410       # Loc expr size
.Ltmp410:
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp411:
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp141-.Lfunc_begin1
	.short	.Ltmp413-.Ltmp412       # Loc expr size
.Ltmp412:
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp413:
	.quad	.Ltmp141-.Lfunc_begin1
	.quad	.Ltmp154-.Lfunc_begin1
	.short	.Ltmp415-.Ltmp414       # Loc expr size
.Ltmp414:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp415:
	.quad	.Ltmp157-.Lfunc_begin1
	.quad	.Ltmp158-.Lfunc_begin1
	.short	.Ltmp417-.Ltmp416       # Loc expr size
.Ltmp416:
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp417:
	.quad	0
	.quad	0
.Ldebug_loc19:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp140-.Lfunc_begin1
	.short	.Ltmp419-.Ltmp418       # Loc expr size
.Ltmp418:
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp419:
	.quad	.Ltmp140-.Lfunc_begin1
	.quad	.Ltmp148-.Lfunc_begin1
	.short	.Ltmp421-.Ltmp420       # Loc expr size
.Ltmp420:
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp421:
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp139-.Lfunc_begin1
	.short	.Ltmp423-.Ltmp422       # Loc expr size
.Ltmp422:
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp423:
	.quad	.Ltmp139-.Lfunc_begin1
	.quad	.Ltmp148-.Lfunc_begin1
	.short	.Ltmp425-.Ltmp424       # Loc expr size
.Ltmp424:
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp425:
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp138-.Lfunc_begin1
	.short	.Ltmp427-.Ltmp426       # Loc expr size
.Ltmp426:
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp427:
	.quad	.Ltmp138-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp429-.Ltmp428       # Loc expr size
.Ltmp428:
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp429:
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp137-.Lfunc_begin1
	.short	.Ltmp431-.Ltmp430       # Loc expr size
.Ltmp430:
	.byte	97                      # DW_OP_reg17
.Ltmp431:
	.quad	.Ltmp137-.Lfunc_begin1
	.quad	.Ltmp144-.Lfunc_begin1
	.short	.Ltmp433-.Ltmp432       # Loc expr size
.Ltmp432:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp433:
	.quad	.Ltmp146-.Lfunc_begin1
	.quad	.Ltmp147-.Lfunc_begin1
	.short	.Ltmp435-.Ltmp434       # Loc expr size
.Ltmp434:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp435:
	.quad	.Ltmp148-.Lfunc_begin1
	.quad	.Ltmp152-.Lfunc_begin1
	.short	.Ltmp437-.Ltmp436       # Loc expr size
.Ltmp436:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp437:
	.quad	.Ltmp154-.Lfunc_begin1
	.quad	.Ltmp156-.Lfunc_begin1
	.short	.Ltmp439-.Ltmp438       # Loc expr size
.Ltmp438:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp439:
	.quad	.Ltmp157-.Lfunc_begin1
	.quad	.Ltmp159-.Lfunc_begin1
	.short	.Ltmp441-.Ltmp440       # Loc expr size
.Ltmp440:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp441:
	.quad	.Ltmp160-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp443-.Ltmp442       # Loc expr size
.Ltmp442:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp443:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp164-.Lfunc_begin1
	.short	.Ltmp445-.Ltmp444       # Loc expr size
.Ltmp444:
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
.Ltmp445:
	.quad	0
	.quad	0
.Ldebug_loc23:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp136-.Lfunc_begin1
	.short	.Ltmp447-.Ltmp446       # Loc expr size
.Ltmp446:
	.byte	98                      # DW_OP_reg18
.Ltmp447:
	.quad	.Ltmp136-.Lfunc_begin1
	.quad	.Ltmp144-.Lfunc_begin1
	.short	.Ltmp449-.Ltmp448       # Loc expr size
.Ltmp448:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp449:
	.quad	.Ltmp146-.Lfunc_begin1
	.quad	.Ltmp147-.Lfunc_begin1
	.short	.Ltmp451-.Ltmp450       # Loc expr size
.Ltmp450:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp451:
	.quad	.Ltmp148-.Lfunc_begin1
	.quad	.Ltmp152-.Lfunc_begin1
	.short	.Ltmp453-.Ltmp452       # Loc expr size
.Ltmp452:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp453:
	.quad	.Ltmp154-.Lfunc_begin1
	.quad	.Ltmp156-.Lfunc_begin1
	.short	.Ltmp455-.Ltmp454       # Loc expr size
.Ltmp454:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp455:
	.quad	.Ltmp157-.Lfunc_begin1
	.quad	.Ltmp159-.Lfunc_begin1
	.short	.Ltmp457-.Ltmp456       # Loc expr size
.Ltmp456:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp457:
	.quad	.Ltmp160-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp459-.Ltmp458       # Loc expr size
.Ltmp458:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp459:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp164-.Lfunc_begin1
	.short	.Ltmp461-.Ltmp460       # Loc expr size
.Ltmp460:
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
.Ltmp461:
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp153-.Lfunc_begin1
	.quad	.Ltmp155-.Lfunc_begin1
	.short	.Ltmp463-.Ltmp462       # Loc expr size
.Ltmp462:
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
.Ltmp463:
	.quad	.Ltmp155-.Lfunc_begin1
	.quad	.Ltmp155-.Lfunc_begin1
	.short	.Ltmp465-.Ltmp464       # Loc expr size
.Ltmp464:
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
.Ltmp465:
	.quad	.Ltmp155-.Lfunc_begin1
	.quad	.Lfunc_end1-.Lfunc_begin1
	.short	.Ltmp467-.Ltmp466       # Loc expr size
.Ltmp466:
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
.Ltmp467:
	.quad	0
	.quad	0
.Ldebug_loc25:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp469-.Ltmp468       # Loc expr size
.Ltmp468:
	.byte	83                      # DW_OP_reg3
.Ltmp469:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp165-.Lfunc_begin1
	.short	.Ltmp471-.Ltmp470       # Loc expr size
.Ltmp470:
	.byte	83                      # DW_OP_reg3
.Ltmp471:
	.quad	0
	.quad	0
.Ldebug_loc26:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp473-.Ltmp472       # Loc expr size
.Ltmp472:
	.byte	94                      # DW_OP_reg14
.Ltmp473:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp168-.Lfunc_begin1
	.short	.Ltmp475-.Ltmp474       # Loc expr size
.Ltmp474:
	.byte	94                      # DW_OP_reg14
.Ltmp475:
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp477-.Ltmp476       # Loc expr size
.Ltmp476:
	.byte	95                      # DW_OP_reg15
.Ltmp477:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp169-.Lfunc_begin1
	.short	.Ltmp479-.Ltmp478       # Loc expr size
.Ltmp478:
	.byte	95                      # DW_OP_reg15
.Ltmp479:
	.quad	0
	.quad	0
.Ldebug_loc28:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp481-.Ltmp480       # Loc expr size
.Ltmp480:
	.byte	92                      # DW_OP_reg12
.Ltmp481:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp166-.Lfunc_begin1
	.short	.Ltmp483-.Ltmp482       # Loc expr size
.Ltmp482:
	.byte	92                      # DW_OP_reg12
.Ltmp483:
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp162-.Lfunc_begin1
	.short	.Ltmp485-.Ltmp484       # Loc expr size
.Ltmp484:
	.byte	93                      # DW_OP_reg13
.Ltmp485:
	.quad	.Ltmp163-.Lfunc_begin1
	.quad	.Ltmp167-.Lfunc_begin1
	.short	.Ltmp487-.Ltmp486       # Loc expr size
.Ltmp486:
	.byte	93                      # DW_OP_reg13
.Ltmp487:
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp173-.Lfunc_begin2
	.short	.Ltmp489-.Ltmp488       # Loc expr size
.Ltmp488:
	.byte	85                      # DW_OP_reg5
.Ltmp489:
	.quad	.Ltmp173-.Lfunc_begin2
	.quad	.Lfunc_end2-.Lfunc_begin2
	.short	.Ltmp491-.Ltmp490       # Loc expr size
.Ltmp490:
	.byte	82                      # DW_OP_reg2
.Ltmp491:
	.quad	0
	.quad	0
.Ldebug_loc31:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp172-.Lfunc_begin2
	.short	.Ltmp493-.Ltmp492       # Loc expr size
.Ltmp492:
	.byte	97                      # DW_OP_reg17
.Ltmp493:
	.quad	.Ltmp172-.Lfunc_begin2
	.quad	.Ltmp178-.Lfunc_begin2
	.short	.Ltmp495-.Ltmp494       # Loc expr size
.Ltmp494:
	.byte	102                     # DW_OP_reg22
.Ltmp495:
	.quad	0
	.quad	0
.Ldebug_loc32:
	.quad	.Ltmp175-.Lfunc_begin2
	.quad	.Ltmp177-.Lfunc_begin2
	.short	.Ltmp497-.Ltmp496       # Loc expr size
.Ltmp496:
	.byte	97                      # DW_OP_reg17
.Ltmp497:
	.quad	.Ltmp179-.Lfunc_begin2
	.quad	.Ltmp180-.Lfunc_begin2
	.short	.Ltmp499-.Ltmp498       # Loc expr size
.Ltmp498:
	.byte	100                     # DW_OP_reg20
.Ltmp499:
	.quad	.Ltmp185-.Lfunc_begin2
	.quad	.Ltmp188-.Lfunc_begin2
	.short	.Ltmp501-.Ltmp500       # Loc expr size
.Ltmp500:
	.byte	99                      # DW_OP_reg19
.Ltmp501:
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Ltmp176-.Lfunc_begin2
	.quad	.Ltmp184-.Lfunc_begin2
	.short	.Ltmp503-.Ltmp502       # Loc expr size
.Ltmp502:
	.byte	99                      # DW_OP_reg19
.Ltmp503:
	.quad	0
	.quad	0
.Ldebug_loc34:
	.quad	.Ltmp181-.Lfunc_begin2
	.quad	.Ltmp182-.Lfunc_begin2
	.short	.Ltmp505-.Ltmp504       # Loc expr size
.Ltmp504:
	.byte	101                     # DW_OP_reg21
.Ltmp505:
	.quad	0
	.quad	0
.Ldebug_loc35:
	.quad	.Ltmp183-.Lfunc_begin2
	.quad	.Ltmp190-.Lfunc_begin2
	.short	.Ltmp507-.Ltmp506       # Loc expr size
.Ltmp506:
	.byte	97                      # DW_OP_reg17
.Ltmp507:
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp186-.Lfunc_begin2
	.quad	.Ltmp187-.Lfunc_begin2
	.short	.Ltmp509-.Ltmp508       # Loc expr size
.Ltmp508:
	.byte	98                      # DW_OP_reg18
.Ltmp509:
	.quad	0
	.quad	0
.Ldebug_loc37:
	.quad	.Ltmp188-.Lfunc_begin2
	.quad	.Ltmp189-.Lfunc_begin2
	.short	.Ltmp511-.Ltmp510       # Loc expr size
.Ltmp510:
	.byte	99                      # DW_OP_reg19
.Ltmp511:
	.quad	0
	.quad	0
.Ldebug_loc38:
	.quad	.Ltmp191-.Lfunc_begin2
	.quad	.Ltmp195-.Lfunc_begin2
	.short	.Ltmp513-.Ltmp512       # Loc expr size
.Ltmp512:
	.byte	97                      # DW_OP_reg17
.Ltmp513:
	.quad	0
	.quad	0
.Ldebug_loc39:
	.quad	.Ltmp192-.Lfunc_begin2
	.quad	.Ltmp193-.Lfunc_begin2
	.short	.Ltmp515-.Ltmp514       # Loc expr size
.Ltmp514:
	.byte	98                      # DW_OP_reg18
.Ltmp515:
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp200-.Lfunc_begin2
	.short	.Ltmp517-.Ltmp516       # Loc expr size
.Ltmp516:
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp517:
	.quad	.Ltmp200-.Lfunc_begin2
	.quad	.Ltmp205-.Lfunc_begin2
	.short	.Ltmp519-.Ltmp518       # Loc expr size
.Ltmp518:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp519:
	.quad	0
	.quad	0
.Ldebug_loc41:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp199-.Lfunc_begin2
	.short	.Ltmp521-.Ltmp520       # Loc expr size
.Ltmp520:
	.byte	97                      # DW_OP_reg17
.Ltmp521:
	.quad	.Ltmp199-.Lfunc_begin2
	.quad	.Ltmp205-.Lfunc_begin2
	.short	.Ltmp523-.Ltmp522       # Loc expr size
.Ltmp522:
	.byte	98                      # DW_OP_reg18
.Ltmp523:
	.quad	0
	.quad	0
.Ldebug_loc42:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp198-.Lfunc_begin2
	.short	.Ltmp525-.Ltmp524       # Loc expr size
.Ltmp524:
	.byte	81                      # DW_OP_reg1
.Ltmp525:
	.quad	.Ltmp198-.Lfunc_begin2
	.quad	.Ltmp205-.Lfunc_begin2
	.short	.Ltmp527-.Ltmp526       # Loc expr size
.Ltmp526:
	.byte	82                      # DW_OP_reg2
.Ltmp527:
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Ltmp202-.Lfunc_begin2
	.quad	.Ltmp205-.Lfunc_begin2
	.short	.Ltmp529-.Ltmp528       # Loc expr size
.Ltmp528:
	.byte	97                      # DW_OP_reg17
.Ltmp529:
	.quad	.Ltmp206-.Lfunc_begin2
	.quad	.Ltmp207-.Lfunc_begin2
	.short	.Ltmp531-.Ltmp530       # Loc expr size
.Ltmp530:
	.byte	98                      # DW_OP_reg18
.Ltmp531:
	.quad	.Ltmp211-.Lfunc_begin2
	.quad	.Ltmp214-.Lfunc_begin2
	.short	.Ltmp533-.Ltmp532       # Loc expr size
.Ltmp532:
	.byte	101                     # DW_OP_reg21
.Ltmp533:
	.quad	0
	.quad	0
.Ldebug_loc44:
	.quad	.Ltmp203-.Lfunc_begin2
	.quad	.Ltmp221-.Lfunc_begin2
	.short	.Ltmp535-.Ltmp534       # Loc expr size
.Ltmp534:
	.byte	105                     # DW_OP_reg25
.Ltmp535:
	.quad	0
	.quad	0
.Ldebug_loc45:
	.quad	.Ltmp204-.Lfunc_begin2
	.quad	.Ltmp221-.Lfunc_begin2
	.short	.Ltmp537-.Ltmp536       # Loc expr size
.Ltmp536:
	.byte	104                     # DW_OP_reg24
.Ltmp537:
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Ltmp208-.Lfunc_begin2
	.quad	.Ltmp209-.Lfunc_begin2
	.short	.Ltmp539-.Ltmp538       # Loc expr size
.Ltmp538:
	.byte	101                     # DW_OP_reg21
.Ltmp539:
	.quad	0
	.quad	0
.Ldebug_loc47:
	.quad	.Ltmp210-.Lfunc_begin2
	.quad	.Ltmp216-.Lfunc_begin2
	.short	.Ltmp541-.Ltmp540       # Loc expr size
.Ltmp540:
	.byte	100                     # DW_OP_reg20
.Ltmp541:
	.quad	0
	.quad	0
.Ldebug_loc48:
	.quad	.Ltmp212-.Lfunc_begin2
	.quad	.Ltmp213-.Lfunc_begin2
	.short	.Ltmp543-.Ltmp542       # Loc expr size
.Ltmp542:
	.byte	98                      # DW_OP_reg18
.Ltmp543:
	.quad	0
	.quad	0
.Ldebug_loc49:
	.quad	.Ltmp214-.Lfunc_begin2
	.quad	.Ltmp215-.Lfunc_begin2
	.short	.Ltmp545-.Ltmp544       # Loc expr size
.Ltmp544:
	.byte	101                     # DW_OP_reg21
.Ltmp545:
	.quad	0
	.quad	0
.Ldebug_loc50:
	.quad	.Ltmp217-.Lfunc_begin2
	.quad	.Ltmp221-.Lfunc_begin2
	.short	.Ltmp547-.Ltmp546       # Loc expr size
.Ltmp546:
	.byte	100                     # DW_OP_reg20
.Ltmp547:
	.quad	0
	.quad	0
.Ldebug_loc51:
	.quad	.Ltmp218-.Lfunc_begin2
	.quad	.Ltmp219-.Lfunc_begin2
	.short	.Ltmp549-.Ltmp548       # Loc expr size
.Ltmp548:
	.byte	98                      # DW_OP_reg18
.Ltmp549:
	.quad	0
	.quad	0
.Ldebug_loc52:
	.quad	.Lfunc_begin4-.Lfunc_begin4
	.quad	.Ltmp224-.Lfunc_begin4
	.short	.Ltmp551-.Ltmp550       # Loc expr size
.Ltmp550:
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp551:
	.quad	.Ltmp224-.Lfunc_begin4
	.quad	.Ltmp225-.Lfunc_begin4
	.short	.Ltmp553-.Ltmp552       # Loc expr size
.Ltmp552:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp553:
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Lfunc_begin5-.Lfunc_begin4
	.quad	.Ltmp231-.Lfunc_begin4
	.short	.Ltmp555-.Ltmp554       # Loc expr size
.Ltmp554:
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp555:
	.quad	.Ltmp231-.Lfunc_begin4
	.quad	.Ltmp235-.Lfunc_begin4
	.short	.Ltmp557-.Ltmp556       # Loc expr size
.Ltmp556:
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp557:
	.quad	0
	.quad	0
.Ldebug_loc54:
	.quad	.Ltmp232-.Lfunc_begin4
	.quad	.Ltmp234-.Lfunc_begin4
	.short	.Ltmp559-.Ltmp558       # Loc expr size
.Ltmp558:
	.byte	112                     # DW_OP_breg0
	.byte	0                       # 0
.Ltmp559:
	.quad	0
	.quad	0
.Ldebug_loc55:
	.quad	.Lfunc_begin6-.Lfunc_begin4
	.quad	.Ltmp241-.Lfunc_begin4
	.short	.Ltmp561-.Ltmp560       # Loc expr size
.Ltmp560:
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp561:
	.quad	.Ltmp241-.Lfunc_begin4
	.quad	.Ltmp247-.Lfunc_begin4
	.short	.Ltmp563-.Ltmp562       # Loc expr size
.Ltmp562:
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp563:
	.quad	0
	.quad	0
.Ldebug_loc56:
	.quad	.Ltmp242-.Lfunc_begin4
	.quad	.Ltmp244-.Lfunc_begin4
	.short	.Ltmp565-.Ltmp564       # Loc expr size
.Ltmp564:
	.byte	112                     # DW_OP_breg0
	.byte	0                       # 0
.Ltmp565:
	.quad	0
	.quad	0
.Ldebug_loc57:
	.quad	.Ltmp243-.Lfunc_begin4
	.quad	.Ltmp245-.Lfunc_begin4
	.short	.Ltmp567-.Ltmp566       # Loc expr size
.Ltmp566:
	.byte	97                      # DW_OP_reg17
.Ltmp567:
	.quad	0
	.quad	0
.Ldebug_loc58:
	.quad	.Ltmp245-.Lfunc_begin4
	.quad	.Ltmp246-.Lfunc_begin4
	.short	.Ltmp569-.Ltmp568       # Loc expr size
.Ltmp568:
	.byte	97                      # DW_OP_reg17
.Ltmp569:
	.quad	0
	.quad	0
.Ldebug_loc59:
	.quad	.Lfunc_begin7-.Lfunc_begin4
	.quad	.Ltmp250-.Lfunc_begin4
	.short	.Ltmp571-.Ltmp570       # Loc expr size
.Ltmp570:
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp571:
	.quad	.Ltmp250-.Lfunc_begin4
	.quad	.Ltmp251-.Lfunc_begin4
	.short	.Ltmp573-.Ltmp572       # Loc expr size
.Ltmp572:
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
.Ltmp573:
	.quad	0
	.quad	0
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
	.long	1200                    # Compilation Unit Length
	.long	92                      # DIE offset
	.asciz	"q"                     # External Name
	.long	143                     # DIE offset
	.asciz	"main"                  # External Name
	.long	42                      # DIE offset
	.asciz	"x"                     # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.long	.LpubNames_end1-.LpubNames_begin1 # Length of Public Names Info
.LpubNames_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
	.long	383                     # Compilation Unit Length
	.long	59                      # DIE offset
	.asciz	"print_results"         # External Name
	.long	0                       # End Mark
.LpubNames_end1:
	.long	.LpubNames_end2-.LpubNames_begin2 # Length of Public Names Info
.LpubNames_begin2:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin2    # Offset of Compilation Unit Info
	.long	649                     # Compilation Unit Length
	.long	49                      # DIE offset
	.asciz	"randlc"                # External Name
	.long	331                     # DIE offset
	.asciz	"vranlc"                # External Name
	.long	0                       # End Mark
.LpubNames_end2:
	.long	.LpubNames_end3-.LpubNames_begin3 # Length of Public Names Info
.LpubNames_begin3:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin3    # Offset of Compilation Unit Info
	.long	368                     # Compilation Unit Length
	.long	164                     # DIE offset
	.asciz	"timer_start"           # External Name
	.long	230                     # DIE offset
	.asciz	"timer_stop"            # External Name
	.long	103                     # DIE offset
	.asciz	"timer_clear"           # External Name
	.long	140                     # DIE offset
	.asciz	"elapsed_time"          # External Name
	.long	326                     # DIE offset
	.asciz	"timer_read"            # External Name
	.long	42                      # DIE offset
	.asciz	"start"                 # External Name
	.long	82                      # DIE offset
	.asciz	"elapsed"               # External Name
	.long	0                       # End Mark
.LpubNames_end3:
	.long	.LpubNames_end4-.LpubNames_begin4 # Length of Public Names Info
.LpubNames_begin4:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin4    # Offset of Compilation Unit Info
	.long	169                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"wtime_"                # External Name
	.long	63                      # DIE offset
	.asciz	"sec"                   # External Name
	.long	0                       # End Mark
.LpubNames_end4:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
	.long	1200                    # Compilation Unit Length
	.long	640                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	1188                    # DIE offset
	.asciz	"logical"               # External Name
	.long	1091                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	1109                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	1158                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	1140                    # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	651                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	1147                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	1169                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	1041                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	1102                    # DIE offset
	.asciz	"long int"              # External Name
	.long	78                      # DIE offset
	.asciz	"double"                # External Name
	.long	1116                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	628                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.long	.LpubTypes_end1-.LpubTypes_begin1 # Length of Public Types Info
.LpubTypes_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
	.long	383                     # Compilation Unit Length
	.long	371                     # DIE offset
	.asciz	"logical"               # External Name
	.long	0                       # End Mark
.LpubTypes_end1:
	.long	.LpubTypes_end2-.LpubTypes_begin2 # Length of Public Types Info
.LpubTypes_begin2:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin2    # Offset of Compilation Unit Info
	.long	649                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end2:
	.long	.LpubTypes_end4-.LpubTypes_begin4 # Length of Public Types Info
.LpubTypes_begin4:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin4    # Offset of Compilation Unit Info
	.long	169                     # Compilation Unit Length
	.long	146                     # DIE offset
	.asciz	"__time_t"              # External Name
	.long	113                     # DIE offset
	.asciz	"timeval"               # External Name
	.long	157                     # DIE offset
	.asciz	"__suseconds_t"         # External Name
	.long	0                       # End Mark
.LpubTypes_end4:

	.ident	"clang version 3.6.1 (tags/RELEASE_361/final)"
	.ident	"clang version 3.6.1 (tags/RELEASE_361/final)"
	.ident	"clang version 3.6.1 (tags/RELEASE_361/final)"
	.ident	"clang version 3.6.1 (tags/RELEASE_361/final)"
	.ident	"clang version 3.6.1 (tags/RELEASE_361/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
