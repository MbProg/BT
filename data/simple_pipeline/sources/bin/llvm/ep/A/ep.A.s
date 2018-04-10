	.text
	.file	"ep/A/ep.A.bc"
	.file	1 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/EP/ep.c"
	.file	2 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/EP/../common/type.h"
	.file	3 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/type.h"
	.file	4 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/c_timers.c"
	.file	5 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/wtime.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4719772409484279808     # double 33554432
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4742906807993761792     # double 1220703125
.LCPI0_5:
	.quad	-4611686018427387904    # double -2
.LCPI0_7:
	.quad	4659360479003734399     # double 3247.83465203474
.LCPI0_8:
	.quad	-4564011557851041409    # double -3247.83465203474
.LCPI0_9:
	.quad	4664372864194573024     # double 6958.4070783822972
.LCPI0_10:
	.quad	-4558999172660202784    # double -6958.4070783822972
.LCPI0_11:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI0_12:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_13:
	.quad	4636737291354636288     # double 100
.LCPI0_14:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.quad	-3135276447761457362    # double -9.9999999999999997E+98
	.quad	-3135276447761457362    # double -9.9999999999999997E+98
.LCPI0_4:
	.quad	-4616189618054758400    # double -1
	.quad	-4616189618054758400    # double -1
.LCPI0_6:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	1 72 0                  # ep.c:72:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	1 81 10 prologue_end discriminator 1 # ep.c:81:10
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
	subq	$248, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 304
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
.Ltmp13:
	.loc	1 86 13                 # ep.c:86:13
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	callq	fopen
.Ltmp14:
	#DEBUG_VALUE: main:fp <- %RAX
	xorl	%r14d, %r14d
	.loc	1 86 39 is_stmt 0       # ep.c:86:39
	testq	%rax, %rax
	je	.LBB0_2
.Ltmp15:
# BB#1:                                 # %if.else
	#DEBUG_VALUE: main:fp <- %RAX
	#DEBUG_VALUE: main:timers_enabled <- 1
	.loc	1 90 5 is_stmt 1        # ep.c:90:5
	movq	%rax, %rdi
	callq	fclose
.Ltmp16:
	movl	$1, %r14d
.Ltmp17:
.LBB0_2:                                # %if.end
	leaq	192(%rsp), %rdi
	.loc	1 100 3 discriminator 1 # ep.c:100:3
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.2, %esi
	movb	$1, %al
	callq	sprintf
.Ltmp18:
	#DEBUG_VALUE: main:j <- 14
	.loc	1 102 15                # ep.c:102:15
	movzbl	206(%rsp), %eax
	cmpl	$46, %eax
	movl	$14, %eax
.Ltmp19:
	#DEBUG_VALUE: main:j <- 13
	je	.LBB0_4
.Ltmp20:
# BB#3:                                 # %select.false
	movl	$15, %eax
.LBB0_4:                                # %select.end
	.loc	1 103 13                # ep.c:103:13
	movb	$0, 192(%rsp,%rax)
	.loc	1 104 3                 # ep.c:104:3
	movl	$.Lstr, %edi
	callq	puts
	leaq	192(%rsp), %rsi
	.loc	1 105 3                 # ep.c:105:3
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
.Ltmp21:
	#DEBUG_VALUE: main:np <- 256
	#DEBUG_VALUE: main:verified <- 0
	.loc	1 124 22                # ep.c:124:22
	leaq	168(%rsp), %rbx
	.loc	1 124 31 is_stmt 0      # ep.c:124:31
	leaq	176(%rsp), %rdx
	leaq	160(%rsp), %rsi
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%edi, %edi
	callq	vranlc
	.loc	1 125 28 is_stmt 1      # ep.c:125:28
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	.loc	1 125 12 is_stmt 0      # ep.c:125:12
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 125 10                # ep.c:125:10
	movsd	%xmm0, 160(%rsp)
.Ltmp22:
	#DEBUG_VALUE: main:i <- 0
	movq	$-1048576, %rax         # imm = 0xFFFFFFFFFFF00000
.Ltmp23:
	.loc	1 127 10 is_stmt 1      # ep.c:127:10
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [-1.000000e+99,-1.000000e+99]
	.p2align	4, 0x90
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, x+1048576(%rax)
	movaps	%xmm0, x+1048592(%rax)
	movaps	%xmm0, x+1048608(%rax)
	movaps	%xmm0, x+1048624(%rax)
	movaps	%xmm0, x+1048640(%rax)
	movaps	%xmm0, x+1048656(%rax)
	movaps	%xmm0, x+1048672(%rax)
	movaps	%xmm0, x+1048688(%rax)
	movaps	%xmm0, x+1048704(%rax)
	movaps	%xmm0, x+1048720(%rax)
	movaps	%xmm0, x+1048736(%rax)
	movaps	%xmm0, x+1048752(%rax)
	movaps	%xmm0, x+1048768(%rax)
	movaps	%xmm0, x+1048784(%rax)
	movaps	%xmm0, x+1048800(%rax)
	movaps	%xmm0, x+1048816(%rax)
.Ltmp24:
	.loc	1 126 3 discriminator 1 # ep.c:126:3
	addq	$256, %rax              # imm = 0x100
	jne	.LBB0_5
.Ltmp25:
# BB#6:                                 # %for.end
	#DEBUG_VALUE: main:Mops <- 0.000000e+00
	.loc	1 131 3                 # ep.c:131:3
	xorl	%edi, %edi
	callq	timer_clear
	movl	$1, %r13d
	.loc	1 132 3                 # ep.c:132:3
	movl	$1, %edi
	callq	timer_clear
	.loc	1 133 3                 # ep.c:133:3
	movl	$2, %edi
	callq	timer_clear
	.loc	1 134 3                 # ep.c:134:3
	xorl	%edi, %edi
	callq	timer_start
	.loc	1 136 6                 # ep.c:136:6
	movabsq	$4742906807993761792, %rbp # imm = 0x41D2309CE5400000
.Ltmp26:
	#DEBUG_VALUE: main:t1 <- 1.220703e+09
	movq	%rbp, 96(%rsp)
	leaq	96(%rsp), %rbx
.Ltmp27:
	#DEBUG_VALUE: main:t1 <- [%RBX+0]
	#DEBUG_VALUE: main:i <- 0
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	.loc	1 137 3                 # ep.c:137:3
	xorl	%edi, %edi
	movl	$x, %edx
	movq	%rbx, %rsi
	callq	vranlc
	.loc	1 143 6                 # ep.c:143:6
	movq	%rbp, 96(%rsp)
.Ltmp28:
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
.Ltmp29:
	.loc	1 136 6                 # ep.c:136:6
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp30:
	.loc	1 146 10                # ep.c:146:10
	callq	randlc
.Ltmp31:
	#DEBUG_VALUE: main:t2 <- %XMM0
	.loc	1 146 8 is_stmt 0       # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
.Ltmp32:
	#DEBUG_VALUE: main:i <- 1
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
.Ltmp33:
	#DEBUG_VALUE: main:t2 <- %XMM0
	#DEBUG_VALUE: main:t1 <- %XMM0
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
.Ltmp34:
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	.loc	1 146 10                # ep.c:146:10
	movq	%rbx, %rdi
	callq	randlc
	.loc	1 146 8                 # ep.c:146:8
	movsd	%xmm0, 104(%rsp)
	.loc	1 146 22                # ep.c:146:22
	movq	96(%rsp), %rax
.Ltmp35:
	.loc	1 156 10 is_stmt 1      # ep.c:156:10
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, q+64(%rip)
	movapd	%xmm0, q+48(%rip)
	movapd	%xmm0, q+32(%rip)
	movapd	%xmm0, q+16(%rip)
	movapd	%xmm0, q(%rip)
	xorpd	%xmm0, %xmm0
.Ltmp36:
	.loc	1 185 9                 # ep.c:185:9
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
	testl	%r14d, %r14d
	movl	%r14d, 156(%rsp)        # 4-byte Spill
	leaq	96(%rsp), %r14
	leaq	104(%rsp), %r12
	je	.LBB0_7
.Ltmp37:
	.p2align	4, 0x90
.LBB0_19:                               # %for.body47.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_25 Depth 2
	.loc	1 168 19                # ep.c:168:19
	leal	-1(%r13), %ebx
.Ltmp38:
	#DEBUG_VALUE: main:kk <- %EBX
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 169 8                 # ep.c:169:8
	movabsq	$4733340128880099328, %rax # imm = 0x41B033C4D7000000
	movq	%rax, 96(%rsp)
	.loc	1 170 8                 # ep.c:170:8
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, 104(%rsp)
	#DEBUG_VALUE: main:i <- 1
	movl	$1, %r15d
.Ltmp39:
	.p2align	4, 0x90
.LBB0_20:                               # %for.body52.us
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 175 15                # ep.c:175:15
	movl	%ebx, %ebp
	shrl	$31, %ebp
	addl	%ebx, %ebp
.Ltmp40:
	.loc	1 176 14                # ep.c:176:14
	movl	%ebp, %eax
	andl	$-2, %eax
	.loc	1 176 20 is_stmt 0      # ep.c:176:20
	cmpl	%ebx, %eax
	je	.LBB0_22
.Ltmp41:
# BB#21:                                # %if.then55.us
                                        #   in Loop: Header=BB0_20 Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 176 44 discriminator 1 # ep.c:176:44
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp42:
	#DEBUG_VALUE: main:t2 <- %XMM0
	#DEBUG_VALUE: main:t1 <- [%R14+0]
	.loc	1 176 32 discriminator 1 # ep.c:176:32
	movq	%r14, %rdi
	callq	randlc
.Ltmp43:
.LBB0_22:                               # %if.end57.us
                                        #   in Loop: Header=BB0_20 Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 177 14 is_stmt 1      # ep.c:177:14
	incl	%ebx
.Ltmp44:
	cmpl	$3, %ebx
	jb	.LBB0_24
.Ltmp45:
# BB#23:                                # %if.end61.us
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 175 15                # ep.c:175:15
	sarl	%ebp
.Ltmp46:
	#DEBUG_VALUE: main:ik <- %EBP
	#DEBUG_VALUE: main:kk <- %EBP
	.loc	1 178 24                # ep.c:178:24
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp47:
	#DEBUG_VALUE: main:t2 <- %XMM0
	#DEBUG_VALUE: main:t2 <- [%R12+0]
	.loc	1 178 12 is_stmt 0      # ep.c:178:12
	movq	%r12, %rdi
	callq	randlc
.Ltmp48:
	.loc	1 174 28 is_stmt 1 discriminator 2 # ep.c:174:28
	incl	%r15d
.Ltmp49:
	#DEBUG_VALUE: main:i <- %R15D
	.loc	1 174 19 is_stmt 0 discriminator 1 # ep.c:174:19
	cmpl	$101, %r15d
	movl	%ebp, %ebx
.Ltmp50:
	#DEBUG_VALUE: main:ik <- %EBX
	#DEBUG_VALUE: main:kk <- %EBX
	jl	.LBB0_20
.Ltmp51:
.LBB0_24:                               # %if.then72.us
                                        #   in Loop: Header=BB0_19 Depth=1
	.loc	1 185 25 is_stmt 1 discriminator 1 # ep.c:185:25
	movl	$2, %edi
	callq	timer_start
.Ltmp52:
	#DEBUG_VALUE: main:t1 <- [%R14+0]
	.loc	1 186 5                 # ep.c:186:5
	movl	$131072, %edi           # imm = 0x20000
	movl	$x, %edx
	movq	%r14, %rsi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	vranlc
.Ltmp53:
	.loc	1 187 25 discriminator 1 # ep.c:187:25
	movl	$2, %edi
	callq	timer_stop
.Ltmp54:
	.loc	1 194 25 discriminator 1 # ep.c:194:25
	movl	$1, %edi
	callq	timer_start
	movq	$-1048576, %r15         # imm = 0xFFFFFFFFFFF00000
.Ltmp55:
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp56:
	.p2align	4, 0x90
.LBB0_25:                               # %for.body77.us
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 197 18                # ep.c:197:18
	movapd	x+1048576(%r15), %xmm3
	.loc	1 197 16 is_stmt 0      # ep.c:197:16
	addpd	%xmm3, %xmm3
	.loc	1 197 25                # ep.c:197:25
	addpd	.LCPI0_4(%rip), %xmm3
	.loc	1 199 15 is_stmt 1      # ep.c:199:15
	movapd	%xmm3, %xmm1
	mulpd	%xmm1, %xmm1
	.loc	1 199 20 is_stmt 0      # ep.c:199:20
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	addsd	%xmm1, %xmm0
.Ltmp57:
	#DEBUG_VALUE: main:t1 <- %XMM0
	.loc	1 199 10                # ep.c:199:10
	movsd	%xmm0, 96(%rsp)
.Ltmp58:
	.loc	1 200 14 is_stmt 1      # ep.c:200:14
	ucomisd	%xmm0, %xmm2
	jb	.LBB0_29
.Ltmp59:
# BB#26:                                # %if.then93.us
                                        #   in Loop: Header=BB0_25 Depth=2
	#DEBUG_VALUE: main:t1 <- %XMM0
	movapd	%xmm3, 128(%rsp)        # 16-byte Spill
.Ltmp60:
	.loc	1 201 28                # ep.c:201:28
	callq	log
.Ltmp61:
	movapd	%xmm0, %xmm1
	.loc	1 201 26 is_stmt 0      # ep.c:201:26
	mulsd	.LCPI0_5(%rip), %xmm1
	.loc	1 201 36                # ep.c:201:36
	divsd	96(%rsp), %xmm1
	.loc	1 201 16 discriminator 1 # ep.c:201:16
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
.Ltmp62:
	.loc	1 73 20 is_stmt 1       # ep.c:73:20
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_28
# BB#27:                                # %call.sqrt
                                        #   in Loop: Header=BB0_25 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB0_28:                               # %if.then93.us.split
                                        #   in Loop: Header=BB0_25 Depth=2
.Ltmp63:
	#DEBUG_VALUE: main:t2 <- %XMM0
	.loc	1 201 14                # ep.c:201:14
	movsd	%xmm0, 104(%rsp)
	.loc	1 202 20                # ep.c:202:20
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
.Ltmp64:
	movapd	128(%rsp), %xmm4        # 16-byte Reload
	mulpd	%xmm0, %xmm4
	.loc	1 204 16                # ep.c:204:16
	movapd	%xmm4, %xmm0
	movapd	.LCPI0_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	movapd	%xmm1, %xmm3
	andpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm4, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cmpltsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	andpd	%xmm4, %xmm0
	andnpd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	.loc	1 204 16 is_stmt 0 discriminator 1 # ep.c:204:16
	andpd	%xmm3, %xmm1
	.loc	1 204 16 discriminator 3 # ep.c:204:16
	cvttsd2si	%xmm1, %eax
.Ltmp65:
	#DEBUG_VALUE: main:l <- %EAX
	.loc	1 205 16 is_stmt 1      # ep.c:205:16
	cltq
.Ltmp66:
	movsd	q(,%rax,8), %xmm0       # xmm0 = mem[0],zero
.Ltmp67:
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp68:
	.loc	1 205 21                # ep.c:205:21
	addsd	%xmm2, %xmm0
	.loc	1 205 14 is_stmt 0      # ep.c:205:14
	movsd	%xmm0, q(,%rax,8)
	.loc	1 206 19 is_stmt 1      # ep.c:206:19
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	addpd	%xmm4, %xmm0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
.Ltmp69:
.LBB0_29:                               # %for.inc115.us
                                        #   in Loop: Header=BB0_25 Depth=2
	.loc	1 196 5 discriminator 1 # ep.c:196:5
	addq	$16, %r15
	jne	.LBB0_25
.Ltmp70:
# BB#30:                                # %if.then119.us
                                        #   in Loop: Header=BB0_19 Depth=1
	.loc	1 211 25 discriminator 1 # ep.c:211:25
	movl	$1, %edi
	callq	timer_stop
.Ltmp71:
	.loc	1 167 25 discriminator 2 # ep.c:167:25
	incl	%r13d
.Ltmp72:
	#DEBUG_VALUE: main:k <- %R13D
	.loc	1 167 3 is_stmt 0 discriminator 1 # ep.c:167:3
	cmpl	$257, %r13d             # imm = 0x101
	jne	.LBB0_19
	jmp	.LBB0_31
.Ltmp73:
	.p2align	4, 0x90
.LBB0_7:                                # %for.body47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	.loc	1 168 19 is_stmt 1      # ep.c:168:19
	leal	-1(%r13), %ebx
.Ltmp74:
	#DEBUG_VALUE: main:kk <- %EBX
	#DEBUG_VALUE: main:t1 <- 2.718282e+08
	.loc	1 169 8                 # ep.c:169:8
	movabsq	$4733340128880099328, %rax # imm = 0x41B033C4D7000000
	movq	%rax, 96(%rsp)
	.loc	1 170 8                 # ep.c:170:8
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, 104(%rsp)
.Ltmp75:
	#DEBUG_VALUE: main:i <- 1
	movl	$1, %ebp
.Ltmp76:
	.p2align	4, 0x90
.LBB0_8:                                # %for.body52
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 175 15                # ep.c:175:15
	movl	%ebx, %r15d
	shrl	$31, %r15d
	addl	%ebx, %r15d
.Ltmp77:
	.loc	1 176 14                # ep.c:176:14
	movl	%r15d, %eax
	andl	$-2, %eax
	.loc	1 176 20 is_stmt 0      # ep.c:176:20
	cmpl	%ebx, %eax
	je	.LBB0_10
.Ltmp78:
# BB#9:                                 # %if.then55
                                        #   in Loop: Header=BB0_8 Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 176 44 discriminator 1 # ep.c:176:44
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp79:
	#DEBUG_VALUE: main:t2 <- %XMM0
	#DEBUG_VALUE: main:t1 <- [%R14+0]
	.loc	1 176 32 discriminator 1 # ep.c:176:32
	movq	%r14, %rdi
	callq	randlc
.Ltmp80:
.LBB0_10:                               # %if.end57
                                        #   in Loop: Header=BB0_8 Depth=2
	#DEBUG_VALUE: main:kk <- %EBX
	.loc	1 177 14 is_stmt 1      # ep.c:177:14
	incl	%ebx
.Ltmp81:
	cmpl	$3, %ebx
	jb	.LBB0_12
.Ltmp82:
# BB#11:                                # %if.end61
                                        #   in Loop: Header=BB0_8 Depth=2
	.loc	1 175 15                # ep.c:175:15
	sarl	%r15d
.Ltmp83:
	#DEBUG_VALUE: main:ik <- %R15D
	#DEBUG_VALUE: main:kk <- %R15D
	.loc	1 178 24                # ep.c:178:24
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp84:
	#DEBUG_VALUE: main:t2 <- %XMM0
	#DEBUG_VALUE: main:t2 <- [%R12+0]
	.loc	1 178 12 is_stmt 0      # ep.c:178:12
	movq	%r12, %rdi
	callq	randlc
.Ltmp85:
	.loc	1 174 28 is_stmt 1 discriminator 2 # ep.c:174:28
	incl	%ebp
.Ltmp86:
	#DEBUG_VALUE: main:i <- %EBP
	.loc	1 174 19 is_stmt 0 discriminator 1 # ep.c:174:19
	cmpl	$101, %ebp
	movl	%r15d, %ebx
.Ltmp87:
	#DEBUG_VALUE: main:ik <- %EBX
	#DEBUG_VALUE: main:kk <- %EBX
	jl	.LBB0_8
.Ltmp88:
.LBB0_12:                               # %if.end70
                                        #   in Loop: Header=BB0_7 Depth=1
	#DEBUG_VALUE: main:t1 <- [%R14+0]
	.loc	1 186 5 is_stmt 1       # ep.c:186:5
	movl	$131072, %edi           # imm = 0x20000
	movl	$x, %edx
	movq	%r14, %rsi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	vranlc
	movq	$-1048576, %rbp         # imm = 0xFFFFFFFFFFF00000
.Ltmp89:
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp90:
	.p2align	4, 0x90
.LBB0_13:                               # %for.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 197 18                # ep.c:197:18
	movapd	x+1048576(%rbp), %xmm3
	.loc	1 197 16 is_stmt 0      # ep.c:197:16
	addpd	%xmm3, %xmm3
	.loc	1 197 25                # ep.c:197:25
	addpd	.LCPI0_4(%rip), %xmm3
	.loc	1 199 15 is_stmt 1      # ep.c:199:15
	movapd	%xmm3, %xmm1
	mulpd	%xmm1, %xmm1
	.loc	1 199 20 is_stmt 0      # ep.c:199:20
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	addsd	%xmm1, %xmm0
.Ltmp91:
	#DEBUG_VALUE: main:t1 <- %XMM0
	.loc	1 199 10                # ep.c:199:10
	movsd	%xmm0, 96(%rsp)
.Ltmp92:
	.loc	1 200 14 is_stmt 1      # ep.c:200:14
	ucomisd	%xmm0, %xmm2
	jb	.LBB0_17
.Ltmp93:
# BB#14:                                # %if.then93
                                        #   in Loop: Header=BB0_13 Depth=2
	#DEBUG_VALUE: main:t1 <- %XMM0
	movapd	%xmm3, 128(%rsp)        # 16-byte Spill
.Ltmp94:
	.loc	1 201 28                # ep.c:201:28
	callq	log
.Ltmp95:
	movapd	%xmm0, %xmm1
	.loc	1 201 26 is_stmt 0      # ep.c:201:26
	mulsd	.LCPI0_5(%rip), %xmm1
	.loc	1 201 36                # ep.c:201:36
	divsd	96(%rsp), %xmm1
	.loc	1 201 16 discriminator 1 # ep.c:201:16
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
.Ltmp96:
	.loc	1 73 20 is_stmt 1       # ep.c:73:20
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_16
# BB#15:                                # %call.sqrt58
                                        #   in Loop: Header=BB0_13 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB0_16:                               # %if.then93.split
                                        #   in Loop: Header=BB0_13 Depth=2
.Ltmp97:
	#DEBUG_VALUE: main:t2 <- %XMM0
	.loc	1 201 14                # ep.c:201:14
	movsd	%xmm0, 104(%rsp)
	.loc	1 202 20                # ep.c:202:20
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
.Ltmp98:
	movapd	128(%rsp), %xmm4        # 16-byte Reload
	mulpd	%xmm0, %xmm4
	.loc	1 204 16                # ep.c:204:16
	movapd	%xmm4, %xmm0
	movapd	.LCPI0_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	movapd	%xmm1, %xmm3
	andpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm4, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cmpltsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	andpd	%xmm4, %xmm0
	andnpd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	.loc	1 204 16 is_stmt 0 discriminator 1 # ep.c:204:16
	andpd	%xmm3, %xmm1
	.loc	1 204 16 discriminator 3 # ep.c:204:16
	cvttsd2si	%xmm1, %eax
.Ltmp99:
	#DEBUG_VALUE: main:l <- %EAX
	.loc	1 205 16 is_stmt 1      # ep.c:205:16
	cltq
.Ltmp100:
	movsd	q(,%rax,8), %xmm0       # xmm0 = mem[0],zero
.Ltmp101:
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp102:
	.loc	1 205 21                # ep.c:205:21
	addsd	%xmm2, %xmm0
	.loc	1 205 14 is_stmt 0      # ep.c:205:14
	movsd	%xmm0, q(,%rax,8)
	.loc	1 206 19 is_stmt 1      # ep.c:206:19
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	addpd	%xmm4, %xmm0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
.Ltmp103:
.LBB0_17:                               # %for.inc115
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 196 5 discriminator 1 # ep.c:196:5
	addq	$16, %rbp
	jne	.LBB0_13
.Ltmp104:
# BB#18:                                # %for.inc121
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 167 25 discriminator 2 # ep.c:167:25
	incl	%r13d
.Ltmp105:
	#DEBUG_VALUE: main:k <- %R13D
	.loc	1 167 3 is_stmt 0 discriminator 1 # ep.c:167:3
	cmpl	$257, %r13d             # imm = 0x101
	jne	.LBB0_7
.Ltmp106:
.LBB0_31:                               # %for.cond124.preheader
	#DEBUG_VALUE: main:k <- %R13D
	.loc	1 215 13 is_stmt 1      # ep.c:215:13
	xorpd	%xmm0, %xmm0
	movsd	q(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
.Ltmp107:
	#DEBUG_VALUE: main:gc <- %XMM1
	addsd	q+8(%rip), %xmm1
.Ltmp108:
	addsd	q+16(%rip), %xmm1
	addsd	q+24(%rip), %xmm1
	addsd	q+32(%rip), %xmm1
	addsd	q+40(%rip), %xmm1
	addsd	q+48(%rip), %xmm1
	addsd	q+56(%rip), %xmm1
	addsd	q+64(%rip), %xmm1
	addsd	q+72(%rip), %xmm1
	movsd	%xmm1, 216(%rsp)        # 8-byte Spill
.Ltmp109:
	.loc	1 218 3                 # ep.c:218:3
	xorl	%edi, %edi
	callq	timer_stop
	.loc	1 219 8                 # ep.c:219:8
	xorl	%edi, %edi
	callq	timer_read
.Ltmp110:
	#DEBUG_VALUE: main:tm <- %XMM0
	#DEBUG_VALUE: main:sy_verify_value <- -6.958407e+03
	#DEBUG_VALUE: main:sx_verify_value <- -3.247835e+03
	#DEBUG_VALUE: main:nit <- 0
	#DEBUG_VALUE: main:verified <- 1
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movapd	%xmm0, %xmm3
.Ltmp111:
	#DEBUG_VALUE: main:tm <- %XMM3
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	112(%rsp), %xmm2        # 16-byte Reload
.Ltmp112:
	.loc	1 249 23                # ep.c:249:23
	addsd	%xmm2, %xmm0
	.loc	1 249 42 is_stmt 0      # ep.c:249:42
	divsd	.LCPI0_8(%rip), %xmm0
	.loc	1 249 14                # ep.c:249:14
	movapd	.LCPI0_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
.Ltmp113:
	#DEBUG_VALUE: main:sx_err <- undef
	.loc	1 250 23 is_stmt 1      # ep.c:250:23
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	%xmm2, 224(%rsp)        # 16-byte Spill
	addsd	.LCPI0_9(%rip), %xmm2
	.loc	1 250 42 is_stmt 0      # ep.c:250:42
	divsd	.LCPI0_10(%rip), %xmm2
	.loc	1 250 14                # ep.c:250:14
	andpd	%xmm1, %xmm2
.Ltmp114:
	#DEBUG_VALUE: main:sy_err <- undef
	.loc	1 251 25 is_stmt 1      # ep.c:251:25
	movsd	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setae	%al
	.loc	1 251 48 is_stmt 0 discriminator 1 # ep.c:251:48
	ucomisd	%xmm2, %xmm1
	setae	%bl
	.loc	1 251 37                # ep.c:251:37
	andb	%al, %bl
.Ltmp115:
	.loc	1 100 3 is_stmt 1 discriminator 1 # ep.c:100:3
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.loc	1 254 24                # ep.c:254:24
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 144(%rsp)        # 8-byte Spill
.Ltmp116:
	#DEBUG_VALUE: main:tm <- [%RSP+128]
	.loc	1 256 3                 # ep.c:256:3
	movl	$.Lstr.22, %edi
	callq	puts
.Ltmp117:
	.loc	1 257 3                 # ep.c:257:3
	movl	$.L.str.6, %edi
	movb	$1, %al
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	1 258 3                 # ep.c:258:3
	movl	$.L.str.7, %edi
	movl	$24, %esi
	xorl	%eax, %eax
	callq	printf
	.loc	1 259 3                 # ep.c:259:3
	movl	$.L.str.8, %edi
	movb	$1, %al
	movsd	216(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	1 260 3                 # ep.c:260:3
	movl	$.L.str.9, %edi
	movb	$2, %al
	movaps	112(%rsp), %xmm0        # 16-byte Reload
	movaps	224(%rsp), %xmm1        # 16-byte Reload
	callq	printf
	.loc	1 261 3                 # ep.c:261:3
	movl	$.Lstr.23, %edi
	callq	puts
.Ltmp118:
	#DEBUG_VALUE: main:i <- 0
	.loc	1 263 31                # ep.c:263:31
	movsd	q(%rip), %xmm0          # xmm0 = mem[0],zero
	.loc	1 263 5 is_stmt 0       # ep.c:263:5
	movl	$.L.str.11, %edi
	xorl	%esi, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+8(%rip), %xmm0        # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$1, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+16(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$2, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+24(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$3, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+32(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$4, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+40(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$5, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+48(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$6, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+56(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$7, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+64(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$8, %esi
	movb	$1, %al
	callq	printf
	.loc	1 263 31                # ep.c:263:31
	movsd	q+72(%rip), %xmm0       # xmm0 = mem[0],zero
	.loc	1 263 5                 # ep.c:263:5
	movl	$.L.str.11, %edi
	movl	$9, %esi
	movb	$1, %al
	callq	printf
.Ltmp119:
	.loc	1 251 37 is_stmt 1 discriminator 2 # ep.c:251:37
	movzbl	%bl, %eax
	movsd	144(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp120:
	.loc	1 254 29                # ep.c:254:29
	divsd	.LCPI0_12(%rip), %xmm1
.Ltmp121:
	#DEBUG_VALUE: main:Mops <- %XMM1
	.loc	1 266 3                 # ep.c:266:3
	movl	%eax, 8(%rsp)
	movq	$.L.str.18, 80(%rsp)
	movq	$.L.str.16, 72(%rsp)
	movq	$.L.str.16, 64(%rsp)
	movq	$.L.str.17, 56(%rsp)
	movq	$.L.str.16, 48(%rsp)
	movq	$.L.str.16, 40(%rsp)
	movq	$.L.str.16, 32(%rsp)
	movq	$.L.str.15, 24(%rsp)
	movq	$.L.str.14, 16(%rsp)
	movq	$.L.str.13, (%rsp)
	movl	$.L.str.12, %edi
	movl	$83, %esi
	movl	$25, %edx
	movl	$0, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp122:
	#DEBUG_VALUE: main:tm <- [%RSP+128]
	callq	print_results
.Ltmp123:
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	je	.LBB0_33
.Ltmp124:
# BB#32:                                # %if.then168
	#DEBUG_VALUE: main:k <- %R13D
	#DEBUG_VALUE: main:Mops <- %XMM1
	#DEBUG_VALUE: main:tm <- 1.000000e+00
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp125:
	.loc	1 273 9                 # ep.c:273:9
	movapd	%xmm1, %xmm2
	cmpnlesd	.LCPI0_14, %xmm2
	andpd	%xmm2, %xmm1
.Ltmp126:
	.loc	1 124 3                 # ep.c:124:3
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp127:
	.loc	1 273 9                 # ep.c:273:9
	andnpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm2
	movsd	%xmm2, 112(%rsp)        # 8-byte Spill
	.loc	1 274 10                # ep.c:274:10
	xorl	%edi, %edi
	callq	timer_read
.Ltmp128:
	#DEBUG_VALUE: main:tt <- %XMM0
	.loc	1 275 57                # ep.c:275:57
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_13(%rip), %xmm1
	.loc	1 275 63 is_stmt 0      # ep.c:275:63
	divsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	.loc	1 275 5                 # ep.c:275:5
	movl	$.L.str.19, %edi
	movb	$2, %al
	callq	printf
	.loc	1 276 10 is_stmt 1      # ep.c:276:10
	movl	$1, %edi
	callq	timer_read
.Ltmp129:
	#DEBUG_VALUE: main:tt <- %XMM0
	.loc	1 277 55                # ep.c:277:55
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_13(%rip), %xmm1
	.loc	1 277 61 is_stmt 0      # ep.c:277:61
	divsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	.loc	1 277 5                 # ep.c:277:5
	movl	$.L.str.20, %edi
	movb	$2, %al
	callq	printf
	.loc	1 278 10 is_stmt 1      # ep.c:278:10
	movl	$2, %edi
	callq	timer_read
.Ltmp130:
	#DEBUG_VALUE: main:tt <- %XMM0
	.loc	1 275 57                # ep.c:275:57
	movsd	.LCPI0_13(%rip), %xmm1  # xmm1 = mem[0],zero
	.loc	1 279 55                # ep.c:279:55
	mulsd	%xmm0, %xmm1
	.loc	1 279 61 is_stmt 0      # ep.c:279:61
	divsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	.loc	1 279 5                 # ep.c:279:5
	movl	$.L.str.21, %edi
	movb	$2, %al
	callq	printf
.Ltmp131:
.LBB0_33:                               # %if.end185
	#DEBUG_VALUE: main:k <- %R13D
	.loc	1 282 3 is_stmt 1       # ep.c:282:3
	xorl	%eax, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
.Ltmp132:
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp133:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	print_results
	.p2align	4, 0x90
	.type	print_results,@function
print_results:                          # @print_results
.Lfunc_begin1:
	.file	6 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/print_results.c"
	.loc	6 10 0                  # print_results.c:10:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp140:
	.cfi_def_cfa_offset 96
.Ltmp141:
	.cfi_offset %rbx, -56
.Ltmp142:
	.cfi_offset %r12, -48
.Ltmp143:
	.cfi_offset %r13, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
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
.Ltmp147:
	#DEBUG_VALUE: print_results:mops <- [%RSP+8]
	movsd	%xmm0, (%rsp)           # 8-byte Spill
.Ltmp148:
	#DEBUG_VALUE: print_results:t <- [%RSP+0]
	movl	%r9d, %r14d
.Ltmp149:
	#DEBUG_VALUE: print_results:niter <- %R14D
	movl	%r8d, %r12d
.Ltmp150:
	#DEBUG_VALUE: print_results:n3 <- %R12D
	movl	%ecx, %r13d
.Ltmp151:
	#DEBUG_VALUE: print_results:n2 <- %R13D
	movl	%edx, %r15d
.Ltmp152:
	#DEBUG_VALUE: print_results:n1 <- %R15D
	movl	%esi, %ebx
.Ltmp153:
	#DEBUG_VALUE: print_results:class <- %EBX
	movq	%rdi, %rbp
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:verified <- undef
.Ltmp154:
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 14 3 prologue_end     # print_results.c:14:3
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
.Ltmp155:
	.loc	6 15 3                  # print_results.c:15:3
	movl	$.L.str.1.4, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
.Ltmp156:
	#DEBUG_VALUE: print_results:class <- %ESI
	callq	printf
.Ltmp157:
	.loc	6 22 20                 # print_results.c:22:20
	movl	%r12d, %eax
	orl	%r13d, %eax
	je	.LBB1_1
.Ltmp158:
# BB#7:                                 # %if.else30
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 36 5                  # print_results.c:36:5
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp159:
	movl	%r13d, %edx
	movl	%r12d, %ecx
	callq	printf
	jmp	.LBB1_8
.Ltmp160:
.LBB1_1:                                # %if.then
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 23 29                 # print_results.c:23:29
	movzbl	(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB1_6
.Ltmp161:
# BB#2:                                 # %land.lhs.true8
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	6 23 10 is_stmt 0 discriminator 1 # print_results.c:23:10
	movzbl	1(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB1_6
.Ltmp162:
# BB#3:                                 # %if.then13
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 24 33 is_stmt 1       # print_results.c:24:33
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%r15d, %edi
	callq	ldexp
	leaq	16(%rsp), %rdi
	.loc	6 24 7 is_stmt 0 discriminator 1 # print_results.c:24:7
	movl	$.L.str.2.5, %esi
.Ltmp163:
	movb	$1, %al
	callq	sprintf
	movl	$15, %eax
.Ltmp164:
	#DEBUG_VALUE: print_results:j <- 14
	.loc	6 26 12 is_stmt 1       # print_results.c:26:12
	movzbl	30(%rsp), %ecx
	cmpl	$46, %ecx
	jne	.LBB1_5
.Ltmp165:
# BB#4:                                 # %if.then21
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 27 17                 # print_results.c:27:17
	movb	$32, 30(%rsp)
	movl	$14, %eax
.Ltmp166:
	#DEBUG_VALUE: print_results:j <- 13
.LBB1_5:                                # %if.end
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 30 17                 # print_results.c:30:17
	movb	$0, 16(%rsp,%rax)
	leaq	16(%rsp), %rsi
	.loc	6 31 7                  # print_results.c:31:7
	movl	$.L.str.3.6, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB1_8
.Ltmp167:
.LBB1_6:                                # %if.else
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	6 33 7                  # print_results.c:33:7
	movl	$.L.str.4.7, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp168:
	callq	printf
.Ltmp169:
.LBB1_8:                                # %if.end32
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:cs7 <- undef
	movq	168(%rsp), %r12
.Ltmp170:
	#DEBUG_VALUE: print_results:cs6 <- %R12
	movq	160(%rsp), %r13
.Ltmp171:
	#DEBUG_VALUE: print_results:cs5 <- %R13
	movq	152(%rsp), %r15
.Ltmp172:
	#DEBUG_VALUE: print_results:cs4 <- %R15
	movq	144(%rsp), %rbp
.Ltmp173:
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	movq	136(%rsp), %rbx
	#DEBUG_VALUE: print_results:npbversion <- undef
	#DEBUG_VALUE: print_results:compiletime <- undef
	#DEBUG_VALUE: print_results:cs1 <- undef
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	.loc	6 39 3                  # print_results.c:39:3
	movl	$.L.str.6.8, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	printf
	.loc	6 40 3                  # print_results.c:40:3
	movl	$.L.str.7.9, %edi
	movb	$1, %al
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	6 41 3                  # print_results.c:41:3
	movl	$.L.str.8.10, %edi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	6 42 3                  # print_results.c:42:3
	movl	$.L.str.9.11, %edi
	xorl	%eax, %eax
	movq	96(%rsp), %rsi
	callq	printf
.Ltmp174:
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str.10, %edi
	.loc	6 43 8                  # print_results.c:43:8
	cmpl	$0, 104(%rsp)
.Ltmp175:
	.loc	6 43 8 is_stmt 0        # print_results.c:43:8
	je	.LBB1_10
.Ltmp176:
# BB#9:                                 # %if.then37
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	6 44 5 is_stmt 1        # print_results.c:44:5
	movl	$.L.str.11.12, %esi
	jmp	.LBB1_11
.Ltmp177:
.LBB1_10:                               # %if.else39
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str.12.13, %esi
.Ltmp178:
.LBB1_11:                               # %if.end41
	#DEBUG_VALUE: print_results:cs6 <- %R12
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:niter <- %R14D
	xorl	%eax, %eax
	callq	printf
	movq	176(%rsp), %r14
.Ltmp179:
	movq	112(%rsp), %rsi
.Ltmp180:
	.loc	6 47 3                  # print_results.c:47:3
	movl	$.L.str.13.14, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	6 48 3                  # print_results.c:48:3
	movl	$.L.str.14.15, %edi
	xorl	%eax, %eax
	movq	120(%rsp), %rsi
	callq	printf
	.loc	6 50 3                  # print_results.c:50:3
	movl	$.L.str.15.16, %edi
	xorl	%eax, %eax
	movq	128(%rsp), %rsi
	callq	printf
	.loc	6 52 3                  # print_results.c:52:3
	movl	$.L.str.16.17, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	.loc	6 53 3                  # print_results.c:53:3
	movl	$.L.str.17.18, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
	.loc	6 54 3                  # print_results.c:54:3
	movl	$.L.str.18.19, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	.loc	6 55 3                  # print_results.c:55:3
	movl	$.L.str.19.20, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	printf
	.loc	6 56 3                  # print_results.c:56:3
	movl	$.L.str.20.21, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	printf
	.loc	6 57 3                  # print_results.c:57:3
	movl	$.L.str.21.22, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	.loc	6 59 3                  # print_results.c:59:3
	movl	$.Lstr.24, %edi
	callq	puts
	.loc	6 65 1                  # print_results.c:65:1
	addq	$40, %rsp
	popq	%rbx
.Ltmp181:
	popq	%r12
.Ltmp182:
	popq	%r13
.Ltmp183:
	popq	%r14
	popq	%r15
.Ltmp184:
	popq	%rbp
.Ltmp185:
	retq
.Ltmp186:
.Lfunc_end1:
	.size	print_results, .Lfunc_end1-print_results
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
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
	.p2align	4, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
.Lfunc_begin2:
	.file	7 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/randdp.c"
	.loc	7 5 0                   # randdp.c:5:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: randlc:x <- %RDI
	#DEBUG_VALUE: randlc:a <- %XMM0
	#DEBUG_VALUE: randlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: randlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: randlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: randlc:t46 <- 7.036874e+13
	.loc	7 47 12 prologue_end    # randdp.c:47:12
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
.Ltmp187:
	#DEBUG_VALUE: randlc:t1 <- %XMM1
	.loc	7 48 8                  # randdp.c:48:8
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm2
.Ltmp188:
	#DEBUG_VALUE: randlc:a1 <- %XMM2
	.loc	7 49 16                 # randdp.c:49:16
	movsd	.LCPI2_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movapd	%xmm2, %xmm1
.Ltmp189:
	mulsd	%xmm4, %xmm1
	.loc	7 49 10 is_stmt 0       # randdp.c:49:10
	subsd	%xmm1, %xmm0
.Ltmp190:
	#DEBUG_VALUE: randlc:a2 <- %XMM0
	.loc	7 56 15 is_stmt 1       # randdp.c:56:15
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	.loc	7 56 12 is_stmt 0       # randdp.c:56:12
	movapd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
.Ltmp191:
	#DEBUG_VALUE: randlc:t1 <- %XMM5
	.loc	7 57 8 is_stmt 1        # randdp.c:57:8
	cvttsd2si	%xmm5, %eax
	xorps	%xmm5, %xmm5
.Ltmp192:
	cvtsi2sdl	%eax, %xmm5
	.loc	7 59 21                 # randdp.c:59:21
	movapd	%xmm0, %xmm6
	mulsd	%xmm5, %xmm6
.Ltmp193:
	#DEBUG_VALUE: randlc:x1 <- %XMM5
	.loc	7 58 17                 # randdp.c:58:17
	mulsd	%xmm4, %xmm5
.Ltmp194:
	.loc	7 58 11 is_stmt 0       # randdp.c:58:11
	subsd	%xmm5, %xmm1
.Ltmp195:
	#DEBUG_VALUE: randlc:x2 <- %XMM1
	.loc	7 59 11 is_stmt 1       # randdp.c:59:11
	mulsd	%xmm1, %xmm2
.Ltmp196:
	.loc	7 59 16 is_stmt 0       # randdp.c:59:16
	addsd	%xmm6, %xmm2
.Ltmp197:
	#DEBUG_VALUE: randlc:t1 <- %XMM2
	.loc	7 60 19 is_stmt 1       # randdp.c:60:19
	mulsd	%xmm2, %xmm3
	.loc	7 60 8 is_stmt 0        # randdp.c:60:8
	cvttsd2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
.Ltmp198:
	#DEBUG_VALUE: randlc:t2 <- %XMM3
	.loc	7 61 16 is_stmt 1       # randdp.c:61:16
	mulsd	%xmm4, %xmm3
.Ltmp199:
	.loc	7 61 10 is_stmt 0       # randdp.c:61:10
	subsd	%xmm3, %xmm2
.Ltmp200:
	#DEBUG_VALUE: randlc:z <- %XMM2
	.loc	7 62 12 is_stmt 1       # randdp.c:62:12
	mulsd	%xmm4, %xmm2
.Ltmp201:
	.loc	7 62 21 is_stmt 0       # randdp.c:62:21
	mulsd	%xmm0, %xmm1
.Ltmp202:
	.loc	7 62 16                 # randdp.c:62:16
	addsd	%xmm2, %xmm1
.Ltmp203:
	#DEBUG_VALUE: randlc:t3 <- %XMM1
	.loc	7 63 19 is_stmt 1       # randdp.c:63:19
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm0
.Ltmp204:
	mulsd	%xmm2, %xmm0
	.loc	7 63 8 is_stmt 0        # randdp.c:63:8
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
.Ltmp205:
	#DEBUG_VALUE: randlc:t4 <- %XMM0
	.loc	7 64 17 is_stmt 1       # randdp.c:64:17
	mulsd	.LCPI2_3(%rip), %xmm0
.Ltmp206:
	.loc	7 64 11 is_stmt 0       # randdp.c:64:11
	addsd	%xmm1, %xmm0
	.loc	7 64 6                  # randdp.c:64:6
	movsd	%xmm0, (%rdi)
	.loc	7 65 11 is_stmt 1       # randdp.c:65:11
	mulsd	%xmm2, %xmm0
.Ltmp207:
	#DEBUG_VALUE: randlc:r <- %XMM0
	.loc	7 67 3                  # randdp.c:67:3
	retq
.Ltmp208:
.Lfunc_end2:
	.size	randlc, .Lfunc_end2-randlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
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
	.p2align	4, 0x90
	.type	vranlc,@function
vranlc:                                 # @vranlc
.Lfunc_begin3:
	.loc	7 72 0                  # randdp.c:72:0
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
	.loc	7 122 3 prologue_end discriminator 1 # randdp.c:122:3
	testl	%edi, %edi
	jle	.LBB3_3
.Ltmp209:
# BB#1:
	#DEBUG_VALUE: vranlc:y <- %RDX
	#DEBUG_VALUE: vranlc:a <- %XMM0
	#DEBUG_VALUE: vranlc:x <- %RSI
	#DEBUG_VALUE: vranlc:n <- %EDI
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	.loc	7 115 12                # randdp.c:115:12
	mulsd	%xmm0, %xmm1
.Ltmp210:
	#DEBUG_VALUE: vranlc:t1 <- %XMM1
	.loc	7 116 8                 # randdp.c:116:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
.Ltmp211:
	cvtsi2sdl	%eax, %xmm1
.Ltmp212:
	#DEBUG_VALUE: vranlc:a1 <- %XMM1
	movsd	.LCPI3_1(%rip), %xmm5   # xmm5 = mem[0],zero
	.loc	7 117 16                # randdp.c:117:16
	mulsd	%xmm1, %xmm5
	.loc	7 117 10 is_stmt 0      # randdp.c:117:10
	addsd	%xmm0, %xmm5
.Ltmp213:
	#DEBUG_VALUE: vranlc:a2 <- %XMM5
	.loc	7 128 14 is_stmt 1      # randdp.c:128:14
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp214:
	.loc	7 130 19                # randdp.c:130:19
	movsd	.LCPI3_2(%rip), %xmm3   # xmm3 = mem[0],zero
	.loc	7 135 21                # randdp.c:135:21
	movsd	.LCPI3_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI3_4(%rip), %xmm8   # xmm8 = mem[0],zero
.Ltmp215:
	.p2align	4, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	7 128 17                # randdp.c:128:17
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	.loc	7 128 14 is_stmt 0      # randdp.c:128:14
	movapd	%xmm6, %xmm7
	mulsd	%xmm0, %xmm7
.Ltmp216:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	7 129 10 is_stmt 1      # randdp.c:129:10
	cvttsd2si	%xmm7, %eax
	xorps	%xmm7, %xmm7
.Ltmp217:
	cvtsi2sdl	%eax, %xmm7
	.loc	7 131 23                # randdp.c:131:23
	movapd	%xmm5, %xmm2
	mulsd	%xmm7, %xmm2
.Ltmp218:
	#DEBUG_VALUE: vranlc:x1 <- %XMM7
	.loc	7 130 19                # randdp.c:130:19
	mulsd	%xmm3, %xmm7
.Ltmp219:
	.loc	7 130 13 is_stmt 0      # randdp.c:130:13
	subsd	%xmm7, %xmm6
.Ltmp220:
	#DEBUG_VALUE: vranlc:x2 <- %XMM6
	.loc	7 131 13 is_stmt 1      # randdp.c:131:13
	movapd	%xmm1, %xmm7
	mulsd	%xmm6, %xmm7
	.loc	7 131 18 is_stmt 0      # randdp.c:131:18
	addsd	%xmm2, %xmm7
.Ltmp221:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	7 132 21 is_stmt 1      # randdp.c:132:21
	movapd	%xmm7, %xmm2
	mulsd	%xmm0, %xmm2
	.loc	7 132 10 is_stmt 0      # randdp.c:132:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp222:
	#DEBUG_VALUE: vranlc:t2 <- %XMM2
	.loc	7 133 18 is_stmt 1      # randdp.c:133:18
	mulsd	%xmm3, %xmm2
.Ltmp223:
	.loc	7 133 12 is_stmt 0      # randdp.c:133:12
	subsd	%xmm2, %xmm7
.Ltmp224:
	#DEBUG_VALUE: vranlc:z <- %XMM7
	.loc	7 134 14 is_stmt 1      # randdp.c:134:14
	mulsd	%xmm3, %xmm7
.Ltmp225:
	.loc	7 134 23 is_stmt 0      # randdp.c:134:23
	mulsd	%xmm5, %xmm6
.Ltmp226:
	.loc	7 134 18                # randdp.c:134:18
	addsd	%xmm7, %xmm6
.Ltmp227:
	#DEBUG_VALUE: vranlc:t3 <- %XMM6
	.loc	7 135 21 is_stmt 1      # randdp.c:135:21
	movapd	%xmm6, %xmm2
	mulsd	%xmm4, %xmm2
	.loc	7 135 10 is_stmt 0      # randdp.c:135:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp228:
	#DEBUG_VALUE: vranlc:t4 <- %XMM2
	.loc	7 136 19 is_stmt 1      # randdp.c:136:19
	mulsd	%xmm8, %xmm2
.Ltmp229:
	.loc	7 136 13 is_stmt 0      # randdp.c:136:13
	addsd	%xmm6, %xmm2
	.loc	7 136 8                 # randdp.c:136:8
	movsd	%xmm2, (%rsi)
	.loc	7 137 16 is_stmt 1      # randdp.c:137:16
	mulsd	%xmm4, %xmm2
	.loc	7 137 10 is_stmt 0      # randdp.c:137:10
	movsd	%xmm2, (%rdx)
.Ltmp230:
	.loc	7 122 3 is_stmt 1 discriminator 1 # randdp.c:122:3
	addq	$8, %rdx
	decl	%edi
	jne	.LBB3_2
.Ltmp231:
.LBB3_3:                                # %for.end
	.loc	7 141 1                 # randdp.c:141:1
	retq
.Ltmp232:
.Lfunc_end3:
	.size	vranlc, .Lfunc_end3-vranlc
	.cfi_endproc

	.globl	timer_clear
	.p2align	4, 0x90
	.type	timer_clear,@function
timer_clear:                            # @timer_clear
.Lfunc_begin4:
	.loc	4 26 0                  # c_timers.c:26:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_clear:n <- %EDI
	.loc	4 27 5 prologue_end     # c_timers.c:27:5
	movslq	%edi, %rax
	.loc	4 27 16 is_stmt 0       # c_timers.c:27:16
	movq	$0, elapsed(,%rax,8)
	.loc	4 28 1 is_stmt 1        # c_timers.c:28:1
	retq
.Ltmp233:
.Lfunc_end4:
	.size	timer_clear, .Lfunc_end4-timer_clear
	.cfi_endproc

	.globl	timer_start
	.p2align	4, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
.Lfunc_begin5:
	.loc	4 35 0                  # c_timers.c:35:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp234:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp235:
	.cfi_def_cfa_offset 32
.Ltmp236:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_start:n <- %EDI
	movl	%edi, %ebx
.Ltmp237:
	#DEBUG_VALUE: timer_start:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp238:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movq	8(%rsp), %rax
.Ltmp239:
	.loc	4 36 5                  # c_timers.c:36:5
	movslq	%ebx, %rcx
	.loc	4 36 14 is_stmt 0       # c_timers.c:36:14
	movq	%rax, start(,%rcx,8)
	.loc	4 37 1 is_stmt 1        # c_timers.c:37:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp240:
	retq
.Ltmp241:
.Lfunc_end5:
	.size	timer_start, .Lfunc_end5-timer_start
	.cfi_endproc

	.globl	timer_stop
	.p2align	4, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
.Lfunc_begin6:
	.loc	4 44 0                  # c_timers.c:44:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp242:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp243:
	.cfi_def_cfa_offset 32
.Ltmp244:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_stop:n <- %EDI
	movl	%edi, %ebx
.Ltmp245:
	#DEBUG_VALUE: timer_stop:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp246:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp247:
	#DEBUG_VALUE: elapsed_time:t <- %XMM0
	#DEBUG_VALUE: timer_stop:now <- %XMM0
	.loc	4 48 15                 # c_timers.c:48:15
	movslq	%ebx, %rax
	.loc	4 48 13 is_stmt 0       # c_timers.c:48:13
	subsd	start(,%rax,8), %xmm0
.Ltmp248:
	#DEBUG_VALUE: timer_stop:t <- %XMM0
	.loc	4 49 16 is_stmt 1       # c_timers.c:49:16
	addsd	elapsed(,%rax,8), %xmm0
.Ltmp249:
	movsd	%xmm0, elapsed(,%rax,8)
	.loc	4 51 1                  # c_timers.c:51:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp250:
	retq
.Ltmp251:
.Lfunc_end6:
	.size	timer_stop, .Lfunc_end6-timer_stop
	.cfi_endproc

	.globl	timer_read
	.p2align	4, 0x90
	.type	timer_read,@function
timer_read:                             # @timer_read
.Lfunc_begin7:
	.loc	4 58 0                  # c_timers.c:58:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_read:n <- %EDI
	.loc	4 59 13 prologue_end    # c_timers.c:59:13
	movslq	%edi, %rax
	movsd	elapsed(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	.loc	4 59 5 is_stmt 0        # c_timers.c:59:5
	retq
.Ltmp252:
.Lfunc_end7:
	.size	timer_read, .Lfunc_end7-timer_read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI8_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	wtime_
	.p2align	4, 0x90
	.type	wtime_,@function
wtime_:                                 # @wtime_
.Lfunc_begin8:
	.loc	5 8 0 is_stmt 1         # ../common/wtime.c:8:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp253:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp254:
	.cfi_def_cfa_offset 32
.Ltmp255:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: wtime_:t <- %RDI
	movq	%rdi, %rbx
.Ltmp256:
	#DEBUG_VALUE: wtime_:t <- %RBX
	leaq	(%rsp), %rdi
.Ltmp257:
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	.loc	5 11 3 prologue_end     # ../common/wtime.c:11:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp258:
	.loc	5 12 7                  # ../common/wtime.c:12:7
	movl	wtime_.sec(%rip), %ecx
	.loc	5 12 25 is_stmt 0 discriminator 1 # ../common/wtime.c:12:25
	movq	(%rsp), %rax
.Ltmp259:
	.loc	5 12 7                  # ../common/wtime.c:12:7
	testl	%ecx, %ecx
	jns	.LBB8_2
.Ltmp260:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	.loc	5 12 20 discriminator 1 # ../common/wtime.c:12:20
	movl	%eax, wtime_.sec(%rip)
.Ltmp261:
	.loc	5 13 21 is_stmt 1       # ../common/wtime.c:13:21
	movl	%eax, %ecx
.Ltmp262:
.LBB8_2:                                # %if.end
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	movslq	%ecx, %rcx
	.loc	5 13 19 is_stmt 0       # ../common/wtime.c:13:19
	subq	%rcx, %rax
	.loc	5 13 8                  # ../common/wtime.c:13:8
	cvtsi2sdq	%rax, %xmm0
	.loc	5 13 35                 # ../common/wtime.c:13:35
	cvtsi2sdq	8(%rsp), %xmm1
	.loc	5 13 34                 # ../common/wtime.c:13:34
	mulsd	.LCPI8_0(%rip), %xmm1
	.loc	5 13 26                 # ../common/wtime.c:13:26
	addsd	%xmm0, %xmm1
	.loc	5 13 6                  # ../common/wtime.c:13:6
	movsd	%xmm1, (%rbx)
	.loc	5 14 1 is_stmt 1        # ../common/wtime.c:14:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp263:
	retq
.Ltmp264:
.Lfunc_end8:
	.size	wtime_, .Lfunc_end8-wtime_
	.cfi_endproc

	.type	.Lmain.dum,@object      # @main.dum
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.dum:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	.Lmain.dum, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timer.flag"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%15.0lf"
	.size	.L.str.2, 8

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark"
	.size	.Lstr, 57

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\n Number of random numbers generated: %15s\n"
	.size	.L.str.4, 44

	.type	x,@object               # @x
	.local	x
	.comm	x,1048576,16
	.type	q,@object               # @q
	.local	q
	.comm	q,80,16
	.type	.Lstr.22,@object        # @str.22
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.22:
	.asciz	"\nEP Benchmark Results:\n"
	.size	.Lstr.22, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"CPU Time =%10.4lf\n"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"N = 2^%5d\n"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"No. Gaussian Pairs = %15.0lf\n"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Sums = %25.15lE %25.15lE\n"
	.size	.L.str.9, 26

	.type	.Lstr.23,@object        # @str.23
.Lstr.23:
	.asciz	"Counts: "
	.size	.Lstr.23, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%3d%15.0lf\n"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"EP"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Random numbers generated"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"3.3.1"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"03 Mar 2016"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(none)"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"-I ../common "
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"randdp"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\nTotal time:     %9.3lf (%6.2lf)\n"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Gaussian pairs: %9.3lf (%6.2lf)\n"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Random numbers: %9.3lf (%6.2lf)\n"
	.size	.L.str.21, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n\n %s Benchmark Completed.\n"
	.size	.L.str.3, 28

	.type	.L.str.1.4,@object      # @.str.1.4
.L.str.1.4:
	.asciz	" Class           =             %12c\n"
	.size	.L.str.1.4, 37

	.type	.L.str.2.5,@object      # @.str.2.5
.L.str.2.5:
	.asciz	"%15.0lf"
	.size	.L.str.2.5, 8

	.type	.L.str.3.6,@object      # @.str.3.6
.L.str.3.6:
	.asciz	" Size            =          %15s\n"
	.size	.L.str.3.6, 34

	.type	.L.str.4.7,@object      # @.str.4.7
.L.str.4.7:
	.asciz	" Size            =             %12d\n"
	.size	.L.str.4.7, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" Size            =           %4dx%4dx%4d\n"
	.size	.L.str.5, 42

	.type	.L.str.6.8,@object      # @.str.6.8
.L.str.6.8:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str.6.8, 37

	.type	.L.str.7.9,@object      # @.str.7.9
.L.str.7.9:
	.asciz	" Time in seconds =             %12.2lf\n"
	.size	.L.str.7.9, 40

	.type	.L.str.8.10,@object     # @.str.8.10
.L.str.8.10:
	.asciz	" Mop/s total     =          %15.2lf\n"
	.size	.L.str.8.10, 37

	.type	.L.str.9.11,@object     # @.str.9.11
.L.str.9.11:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str.9.11, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" Verification    =             %12s\n"
	.size	.L.str.10, 37

	.type	.L.str.11.12,@object    # @.str.11.12
.L.str.11.12:
	.asciz	"SUCCESSFUL"
	.size	.L.str.11.12, 11

	.type	.L.str.12.13,@object    # @.str.12.13
.L.str.12.13:
	.asciz	"UNSUCCESSFUL"
	.size	.L.str.12.13, 13

	.type	.L.str.13.14,@object    # @.str.13.14
.L.str.13.14:
	.asciz	" Version         =             %12s\n"
	.size	.L.str.13.14, 37

	.type	.L.str.14.15,@object    # @.str.14.15
.L.str.14.15:
	.asciz	" Compile date    =             %12s\n"
	.size	.L.str.14.15, 37

	.type	.L.str.15.16,@object    # @.str.15.16
.L.str.15.16:
	.asciz	"\n Compile options:\n    CC           = %s\n"
	.size	.L.str.15.16, 42

	.type	.L.str.16.17,@object    # @.str.16.17
.L.str.16.17:
	.asciz	"    CLINK        = %s\n"
	.size	.L.str.16.17, 23

	.type	.L.str.17.18,@object    # @.str.17.18
.L.str.17.18:
	.asciz	"    C_LIB        = %s\n"
	.size	.L.str.17.18, 23

	.type	.L.str.18.19,@object    # @.str.18.19
.L.str.18.19:
	.asciz	"    C_INC        = %s\n"
	.size	.L.str.18.19, 23

	.type	.L.str.19.20,@object    # @.str.19.20
.L.str.19.20:
	.asciz	"    CFLAGS       = %s\n"
	.size	.L.str.19.20, 23

	.type	.L.str.20.21,@object    # @.str.20.21
.L.str.20.21:
	.asciz	"    CLINKFLAGS   = %s\n"
	.size	.L.str.20.21, 23

	.type	.L.str.21.22,@object    # @.str.21.22
.L.str.21.22:
	.asciz	"    RAND         = %s\n"
	.size	.L.str.21.22, 23

	.type	.Lstr.24,@object        # @str.24
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.24:
	.asciz	"\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n"
	.size	.Lstr.24, 194

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

	.file	8 "/usr/include/libio.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	10 "/home/norouzi/Desktop/software/llvmTemp/build/bin/../lib/clang/3.9.0/include/stddef.h"
	.file	11 "/usr/include/stdio.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.0 (trunk)" # string offset=0
.Linfo_string1:
	.asciz	"ep.c"                  # string offset=28
.Linfo_string2:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/EP" # string offset=33
.Linfo_string3:
	.asciz	"x"                     # string offset=95
.Linfo_string4:
	.asciz	"double"                # string offset=97
.Linfo_string5:
	.asciz	"sizetype"              # string offset=104
.Linfo_string6:
	.asciz	"q"                     # string offset=113
.Linfo_string7:
	.asciz	"false"                 # string offset=115
.Linfo_string8:
	.asciz	"true"                  # string offset=121
.Linfo_string9:
	.asciz	"../common/print_results.c" # string offset=126
.Linfo_string10:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common" # string offset=152
.Linfo_string11:
	.asciz	"../common/randdp.c"    # string offset=218
.Linfo_string12:
	.asciz	"int"                   # string offset=237
.Linfo_string13:
	.asciz	"../common/c_timers.c"  # string offset=241
.Linfo_string14:
	.asciz	"start"                 # string offset=262
.Linfo_string15:
	.asciz	"elapsed"               # string offset=268
.Linfo_string16:
	.asciz	"../common/wtime.c"     # string offset=276
.Linfo_string17:
	.asciz	"sec"                   # string offset=294
.Linfo_string18:
	.asciz	"elapsed_time"          # string offset=298
.Linfo_string19:
	.asciz	"t"                     # string offset=311
.Linfo_string20:
	.asciz	"main"                  # string offset=313
.Linfo_string21:
	.asciz	"print_results"         # string offset=318
.Linfo_string22:
	.asciz	"randlc"                # string offset=332
.Linfo_string23:
	.asciz	"vranlc"                # string offset=339
.Linfo_string24:
	.asciz	"timer_clear"           # string offset=346
.Linfo_string25:
	.asciz	"timer_start"           # string offset=358
.Linfo_string26:
	.asciz	"timer_stop"            # string offset=370
.Linfo_string27:
	.asciz	"timer_read"            # string offset=381
.Linfo_string28:
	.asciz	"wtime_"                # string offset=392
.Linfo_string29:
	.asciz	"dum"                   # string offset=399
.Linfo_string30:
	.asciz	"size"                  # string offset=403
.Linfo_string31:
	.asciz	"char"                  # string offset=408
.Linfo_string32:
	.asciz	"fp"                    # string offset=413
.Linfo_string33:
	.asciz	"_flags"                # string offset=416
.Linfo_string34:
	.asciz	"_IO_read_ptr"          # string offset=423
.Linfo_string35:
	.asciz	"_IO_read_end"          # string offset=436
.Linfo_string36:
	.asciz	"_IO_read_base"         # string offset=449
.Linfo_string37:
	.asciz	"_IO_write_base"        # string offset=463
.Linfo_string38:
	.asciz	"_IO_write_ptr"         # string offset=478
.Linfo_string39:
	.asciz	"_IO_write_end"         # string offset=492
.Linfo_string40:
	.asciz	"_IO_buf_base"          # string offset=506
.Linfo_string41:
	.asciz	"_IO_buf_end"           # string offset=519
.Linfo_string42:
	.asciz	"_IO_save_base"         # string offset=531
.Linfo_string43:
	.asciz	"_IO_backup_base"       # string offset=545
.Linfo_string44:
	.asciz	"_IO_save_end"          # string offset=561
.Linfo_string45:
	.asciz	"_markers"              # string offset=574
.Linfo_string46:
	.asciz	"_next"                 # string offset=583
.Linfo_string47:
	.asciz	"_sbuf"                 # string offset=589
.Linfo_string48:
	.asciz	"_pos"                  # string offset=595
.Linfo_string49:
	.asciz	"_IO_marker"            # string offset=600
.Linfo_string50:
	.asciz	"_chain"                # string offset=611
.Linfo_string51:
	.asciz	"_fileno"               # string offset=618
.Linfo_string52:
	.asciz	"_flags2"               # string offset=626
.Linfo_string53:
	.asciz	"_old_offset"           # string offset=634
.Linfo_string54:
	.asciz	"long int"              # string offset=646
.Linfo_string55:
	.asciz	"__off_t"               # string offset=655
.Linfo_string56:
	.asciz	"_cur_column"           # string offset=663
.Linfo_string57:
	.asciz	"unsigned short"        # string offset=675
.Linfo_string58:
	.asciz	"_vtable_offset"        # string offset=690
.Linfo_string59:
	.asciz	"signed char"           # string offset=705
.Linfo_string60:
	.asciz	"_shortbuf"             # string offset=717
.Linfo_string61:
	.asciz	"_lock"                 # string offset=727
.Linfo_string62:
	.asciz	"_IO_lock_t"            # string offset=733
.Linfo_string63:
	.asciz	"_offset"               # string offset=744
.Linfo_string64:
	.asciz	"__off64_t"             # string offset=752
.Linfo_string65:
	.asciz	"__pad1"                # string offset=762
.Linfo_string66:
	.asciz	"__pad2"                # string offset=769
.Linfo_string67:
	.asciz	"__pad3"                # string offset=776
.Linfo_string68:
	.asciz	"__pad4"                # string offset=783
.Linfo_string69:
	.asciz	"__pad5"                # string offset=790
.Linfo_string70:
	.asciz	"long unsigned int"     # string offset=797
.Linfo_string71:
	.asciz	"size_t"                # string offset=815
.Linfo_string72:
	.asciz	"_mode"                 # string offset=822
.Linfo_string73:
	.asciz	"_unused2"              # string offset=828
.Linfo_string74:
	.asciz	"_IO_FILE"              # string offset=837
.Linfo_string75:
	.asciz	"FILE"                  # string offset=846
.Linfo_string76:
	.asciz	"timers_enabled"        # string offset=851
.Linfo_string77:
	.asciz	"logical"               # string offset=866
.Linfo_string78:
	.asciz	"j"                     # string offset=874
.Linfo_string79:
	.asciz	"np"                    # string offset=876
.Linfo_string80:
	.asciz	"verified"              # string offset=879
.Linfo_string81:
	.asciz	"i"                     # string offset=888
.Linfo_string82:
	.asciz	"Mops"                  # string offset=890
.Linfo_string83:
	.asciz	"t1"                    # string offset=895
.Linfo_string84:
	.asciz	"t2"                    # string offset=898
.Linfo_string85:
	.asciz	"kk"                    # string offset=901
.Linfo_string86:
	.asciz	"ik"                    # string offset=904
.Linfo_string87:
	.asciz	"l"                     # string offset=907
.Linfo_string88:
	.asciz	"k"                     # string offset=909
.Linfo_string89:
	.asciz	"gc"                    # string offset=911
.Linfo_string90:
	.asciz	"tm"                    # string offset=914
.Linfo_string91:
	.asciz	"sy_verify_value"       # string offset=917
.Linfo_string92:
	.asciz	"sx_verify_value"       # string offset=933
.Linfo_string93:
	.asciz	"nit"                   # string offset=949
.Linfo_string94:
	.asciz	"sx_err"                # string offset=953
.Linfo_string95:
	.asciz	"sy_err"                # string offset=960
.Linfo_string96:
	.asciz	"tt"                    # string offset=967
.Linfo_string97:
	.asciz	"t3"                    # string offset=970
.Linfo_string98:
	.asciz	"t4"                    # string offset=973
.Linfo_string99:
	.asciz	"x1"                    # string offset=976
.Linfo_string100:
	.asciz	"x2"                    # string offset=979
.Linfo_string101:
	.asciz	"sx"                    # string offset=982
.Linfo_string102:
	.asciz	"sy"                    # string offset=985
.Linfo_string103:
	.asciz	"an"                    # string offset=988
.Linfo_string104:
	.asciz	"k_offset"              # string offset=991
.Linfo_string105:
	.asciz	"name"                  # string offset=1000
.Linfo_string106:
	.asciz	"class"                 # string offset=1005
.Linfo_string107:
	.asciz	"n1"                    # string offset=1011
.Linfo_string108:
	.asciz	"n2"                    # string offset=1014
.Linfo_string109:
	.asciz	"n3"                    # string offset=1017
.Linfo_string110:
	.asciz	"niter"                 # string offset=1020
.Linfo_string111:
	.asciz	"mops"                  # string offset=1026
.Linfo_string112:
	.asciz	"optype"                # string offset=1031
.Linfo_string113:
	.asciz	"cs7"                   # string offset=1038
.Linfo_string114:
	.asciz	"cs6"                   # string offset=1042
.Linfo_string115:
	.asciz	"cs5"                   # string offset=1046
.Linfo_string116:
	.asciz	"cs4"                   # string offset=1050
.Linfo_string117:
	.asciz	"cs3"                   # string offset=1054
.Linfo_string118:
	.asciz	"npbversion"            # string offset=1058
.Linfo_string119:
	.asciz	"compiletime"           # string offset=1069
.Linfo_string120:
	.asciz	"cs1"                   # string offset=1081
.Linfo_string121:
	.asciz	"cs2"                   # string offset=1085
.Linfo_string122:
	.asciz	"a"                     # string offset=1089
.Linfo_string123:
	.asciz	"r23"                   # string offset=1091
.Linfo_string124:
	.asciz	"r46"                   # string offset=1095
.Linfo_string125:
	.asciz	"t23"                   # string offset=1099
.Linfo_string126:
	.asciz	"t46"                   # string offset=1103
.Linfo_string127:
	.asciz	"a1"                    # string offset=1107
.Linfo_string128:
	.asciz	"a2"                    # string offset=1110
.Linfo_string129:
	.asciz	"z"                     # string offset=1113
.Linfo_string130:
	.asciz	"r"                     # string offset=1115
.Linfo_string131:
	.asciz	"n"                     # string offset=1117
.Linfo_string132:
	.asciz	"y"                     # string offset=1119
.Linfo_string133:
	.asciz	"now"                   # string offset=1121
.Linfo_string134:
	.asciz	"tv"                    # string offset=1125
.Linfo_string135:
	.asciz	"tv_sec"                # string offset=1128
.Linfo_string136:
	.asciz	"__time_t"              # string offset=1135
.Linfo_string137:
	.asciz	"tv_usec"               # string offset=1144
.Linfo_string138:
	.asciz	"__suseconds_t"         # string offset=1152
.Linfo_string139:
	.asciz	"timeval"               # string offset=1166
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	115                     # DW_OP_breg3
	.byte	0                       # 0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	124                     # DW_OP_breg12
	.byte	0                       # 0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	124                     # DW_OP_breg12
	.byte	0                       # 0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	128                     # 128
	.byte	1                       # 
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	128                     # 128
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc13:
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc14:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp154-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp154-.Lfunc_begin1
	.quad	.Ltmp173-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp153-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp153-.Lfunc_begin1
	.quad	.Ltmp156-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp156-.Lfunc_begin1
	.quad	.Ltmp159-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp160-.Lfunc_begin1
	.quad	.Ltmp163-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp167-.Lfunc_begin1
	.quad	.Ltmp168-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp152-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp152-.Lfunc_begin1
	.quad	.Ltmp172-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp151-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp151-.Lfunc_begin1
	.quad	.Ltmp171-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp150-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp150-.Lfunc_begin1
	.quad	.Ltmp170-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc19:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp149-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp149-.Lfunc_begin1
	.quad	.Ltmp179-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp148-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp148-.Lfunc_begin1
	.quad	.Ltmp155-.Lfunc_begin1
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp147-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp147-.Lfunc_begin1
	.quad	.Ltmp155-.Lfunc_begin1
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Ltmp164-.Lfunc_begin1
	.quad	.Ltmp166-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp166-.Lfunc_begin1
	.quad	.Lfunc_end1-.Lfunc_begin1
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc23:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp182-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	92                      # DW_OP_reg12
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp183-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc25:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp184-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc26:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp185-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Lfunc_begin1-.Lfunc_begin1
	.quad	.Ltmp181-.Lfunc_begin1
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc28:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp190-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Ltmp187-.Lfunc_begin2
	.quad	.Ltmp189-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp191-.Lfunc_begin2
	.quad	.Ltmp192-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	.Ltmp197-.Lfunc_begin2
	.quad	.Ltmp200-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Ltmp188-.Lfunc_begin2
	.quad	.Ltmp196-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc31:
	.quad	.Ltmp190-.Lfunc_begin2
	.quad	.Ltmp204-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc32:
	.quad	.Ltmp193-.Lfunc_begin2
	.quad	.Ltmp194-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Ltmp195-.Lfunc_begin2
	.quad	.Ltmp202-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc34:
	.quad	.Ltmp198-.Lfunc_begin2
	.quad	.Ltmp199-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc35:
	.quad	.Ltmp200-.Lfunc_begin2
	.quad	.Ltmp201-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp205-.Lfunc_begin2
	.quad	.Ltmp206-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc37:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp215-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc38:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp214-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc39:
	.quad	.Lfunc_begin3-.Lfunc_begin2
	.quad	.Ltmp215-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Ltmp210-.Lfunc_begin2
	.quad	.Ltmp211-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp216-.Lfunc_begin2
	.quad	.Ltmp217-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	.Ltmp221-.Lfunc_begin2
	.quad	.Ltmp224-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc41:
	.quad	.Ltmp212-.Lfunc_begin2
	.quad	.Ltmp215-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc42:
	.quad	.Ltmp213-.Lfunc_begin2
	.quad	.Ltmp215-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Ltmp218-.Lfunc_begin2
	.quad	.Ltmp219-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc44:
	.quad	.Ltmp220-.Lfunc_begin2
	.quad	.Ltmp226-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc45:
	.quad	.Ltmp222-.Lfunc_begin2
	.quad	.Ltmp223-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Ltmp224-.Lfunc_begin2
	.quad	.Ltmp225-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc47:
	.quad	.Ltmp227-.Lfunc_begin2
	.quad	.Ltmp231-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc48:
	.quad	.Ltmp228-.Lfunc_begin2
	.quad	.Ltmp229-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc49:
	.quad	.Lfunc_begin5-.Lfunc_begin4
	.quad	.Ltmp237-.Lfunc_begin4
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp237-.Lfunc_begin4
	.quad	.Ltmp240-.Lfunc_begin4
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc50:
	.quad	.Lfunc_begin6-.Lfunc_begin4
	.quad	.Ltmp245-.Lfunc_begin4
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp245-.Lfunc_begin4
	.quad	.Ltmp250-.Lfunc_begin4
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc51:
	.quad	.Ltmp246-.Lfunc_begin4
	.quad	.Ltmp247-.Lfunc_begin4
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp247-.Lfunc_begin4
	.quad	.Ltmp248-.Lfunc_begin4
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc52:
	.quad	.Ltmp247-.Lfunc_begin4
	.quad	.Ltmp248-.Lfunc_begin4
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Ltmp248-.Lfunc_begin4
	.quad	.Ltmp249-.Lfunc_begin4
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc54:
	.quad	.Lfunc_begin8-.Lfunc_begin8
	.quad	.Ltmp256-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp256-.Lfunc_begin8
	.quad	.Ltmp263-.Lfunc_begin8
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc55:
	.quad	.Ltmp257-.Lfunc_begin8
	.quad	.Lfunc_end8-.Lfunc_begin8
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
	.byte	35                      # Abbreviation Code
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
	.byte	40                      # Abbreviation Code
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
	.byte	41                      # Abbreviation Code
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
	.byte	42                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
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
	.section	.debug_info,"",@progbits
.Lsection_info:
.Lcu_begin0:
	.long	1188                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x49d DW_TAG_compile_unit
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
	.byte	11                      # Abbrev [11] 0x8f:0x1c5 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	12                      # Abbrev [12] 0xa8:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.long	.Linfo_string29         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	596                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0xb7:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\300\001"
	.long	.Linfo_string30         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	608                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0xc6:0xf DW_TAG_variable
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string32         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	627                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0xd5:0xc DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string76         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1180                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0xe1:0xf DW_TAG_variable
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xf0:0xd DW_TAG_variable
	.ascii	"\200\002"              # DW_AT_const_value
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	13                      # Abbrev [13] 0xfd:0xf DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1180                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x10c:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x11b:0xf DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string82         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x12a:0xf DW_TAG_variable
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x139:0xf DW_TAG_variable
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x148:0xf DW_TAG_variable
	.long	.Ldebug_loc7            # DW_AT_location
	.long	.Linfo_string85         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x157:0xf DW_TAG_variable
	.long	.Ldebug_loc8            # DW_AT_location
	.long	.Linfo_string86         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x166:0xf DW_TAG_variable
	.long	.Ldebug_loc9            # DW_AT_location
	.long	.Linfo_string87         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x175:0xf DW_TAG_variable
	.long	.Ldebug_loc10           # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x184:0xf DW_TAG_variable
	.long	.Ldebug_loc11           # DW_AT_location
	.long	.Linfo_string89         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x193:0xf DW_TAG_variable
	.long	.Ldebug_loc12           # DW_AT_location
	.long	.Linfo_string90         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1a2:0x14 DW_TAG_variable
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
	.byte	17                      # Abbrev [17] 0x1b6:0x14 DW_TAG_variable
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
	.byte	16                      # Abbrev [16] 0x1ca:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string93         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1d6:0xb DW_TAG_variable
	.long	.Linfo_string94         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1e1:0xb DW_TAG_variable
	.long	.Linfo_string95         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1ec:0xf DW_TAG_variable
	.long	.Ldebug_loc13           # DW_AT_location
	.long	.Linfo_string96         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1fb:0xb DW_TAG_variable
	.long	.Linfo_string97         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x206:0xb DW_TAG_variable
	.long	.Linfo_string98         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x211:0xb DW_TAG_variable
	.long	.Linfo_string99         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x21c:0xb DW_TAG_variable
	.long	.Linfo_string100        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x227:0xb DW_TAG_variable
	.long	.Linfo_string101        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x232:0xb DW_TAG_variable
	.long	.Linfo_string102        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x23d:0xb DW_TAG_variable
	.long	.Linfo_string103        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x248:0xb DW_TAG_variable
	.long	.Linfo_string104        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x254:0xc DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x259:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	3                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x260:0xc DW_TAG_array_type
	.long	620                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x265:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x26c:0x7 DW_TAG_base_type
	.long	.Linfo_string31         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	20                      # Abbrev [20] 0x273:0x5 DW_TAG_pointer_type
	.long	632                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x278:0xb DW_TAG_typedef
	.long	643                     # DW_AT_type
	.long	.Linfo_string75         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	22                      # Abbrev [22] 0x283:0x17c DW_TAG_structure_type
	.long	.Linfo_string74         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	23                      # Abbrev [23] 0x28b:0xc DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x297:0xc DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2a3:0xc DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2af:0xc DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2bb:0xc DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x2c7:0xc DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2d3:0xd DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2e0:0xd DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2ed:0xd DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x2fa:0xd DW_TAG_member
	.long	.Linfo_string42         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x307:0xd DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x314:0xd DW_TAG_member
	.long	.Linfo_string44         # DW_AT_name
	.long	1023                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x321:0xd DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	1028                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x32e:0xd DW_TAG_member
	.long	.Linfo_string50         # DW_AT_name
	.long	1078                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x33b:0xd DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x348:0xd DW_TAG_member
	.long	.Linfo_string52         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x355:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	1083                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x362:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	1101                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x36f:0xd DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	1108                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x37c:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	1115                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x389:0xd DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x396:0xd DW_TAG_member
	.long	.Linfo_string63         # DW_AT_name
	.long	1139                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3a3:0xd DW_TAG_member
	.long	.Linfo_string65         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3b0:0xd DW_TAG_member
	.long	.Linfo_string66         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3bd:0xd DW_TAG_member
	.long	.Linfo_string67         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3ca:0xd DW_TAG_member
	.long	.Linfo_string68         # DW_AT_name
	.long	142                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3d7:0xd DW_TAG_member
	.long	.Linfo_string69         # DW_AT_name
	.long	1150                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	26                      # Abbrev [26] 0x3e4:0xd DW_TAG_member
	.long	.Linfo_string72         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	25                      # Abbrev [25] 0x3f1:0xd DW_TAG_member
	.long	.Linfo_string73         # DW_AT_name
	.long	1168                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x3ff:0x5 DW_TAG_pointer_type
	.long	620                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x404:0x5 DW_TAG_pointer_type
	.long	1033                    # DW_AT_type
	.byte	22                      # Abbrev [22] 0x409:0x2d DW_TAG_structure_type
	.long	.Linfo_string49         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	24                      # Abbrev [24] 0x411:0xc DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	1028                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x41d:0xc DW_TAG_member
	.long	.Linfo_string47         # DW_AT_name
	.long	1078                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	23                      # Abbrev [23] 0x429:0xc DW_TAG_member
	.long	.Linfo_string48         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x436:0x5 DW_TAG_pointer_type
	.long	643                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x43b:0xb DW_TAG_typedef
	.long	1094                    # DW_AT_type
	.long	.Linfo_string55         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x446:0x7 DW_TAG_base_type
	.long	.Linfo_string54         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x44d:0x7 DW_TAG_base_type
	.long	.Linfo_string57         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x454:0x7 DW_TAG_base_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x45b:0xc DW_TAG_array_type
	.long	620                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x460:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x467:0x5 DW_TAG_pointer_type
	.long	1132                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x46c:0x7 DW_TAG_typedef
	.long	.Linfo_string62         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.byte	21                      # Abbrev [21] 0x473:0xb DW_TAG_typedef
	.long	1094                    # DW_AT_type
	.long	.Linfo_string64         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	21                      # Abbrev [21] 0x47e:0xb DW_TAG_typedef
	.long	1161                    # DW_AT_type
	.long	.Linfo_string71         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x489:0x7 DW_TAG_base_type
	.long	.Linfo_string70         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x490:0xc DW_TAG_array_type
	.long	620                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x495:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x49c:0xb DW_TAG_typedef
	.long	125                     # DW_AT_type
	.long	.Linfo_string77         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Lcu_begin1:
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
	.long	.Linfo_string21         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc14           # DW_AT_location
	.long	.Linfo_string105        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x5f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc15           # DW_AT_location
	.long	.Linfo_string106        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+620      # DW_AT_type
	.byte	29                      # Abbrev [29] 0x6e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc16           # DW_AT_location
	.long	.Linfo_string107        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x7d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc17           # DW_AT_location
	.long	.Linfo_string108        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x8c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc18           # DW_AT_location
	.long	.Linfo_string109        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x9b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc19           # DW_AT_location
	.long	.Linfo_string110        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xaa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc20           # DW_AT_location
	.long	.Linfo_string19         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	29                      # Abbrev [29] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc21           # DW_AT_location
	.long	.Linfo_string111        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	30                      # Abbrev [30] 0xc8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string112        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string80         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	371                     # DW_AT_type
	.byte	30                      # Abbrev [30] 0xde:0xb DW_TAG_formal_parameter
	.long	.Linfo_string118        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	30                      # Abbrev [30] 0xe9:0xb DW_TAG_formal_parameter
	.long	.Linfo_string119        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	30                      # Abbrev [30] 0xf4:0xb DW_TAG_formal_parameter
	.long	.Linfo_string120        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xff:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc27           # DW_AT_location
	.long	.Linfo_string121        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x10e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc26           # DW_AT_location
	.long	.Linfo_string117        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x11d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc25           # DW_AT_location
	.long	.Linfo_string116        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x12c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc24           # DW_AT_location
	.long	.Linfo_string115        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x13b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc23           # DW_AT_location
	.long	.Linfo_string114        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	30                      # Abbrev [30] 0x14a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string113        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+1023     # DW_AT_type
	.byte	32                      # Abbrev [32] 0x155:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string30         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	.Lsection_info+608      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x163:0xf DW_TAG_variable
	.long	.Ldebug_loc22           # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x173:0xb DW_TAG_typedef
	.long	42                      # DW_AT_type
	.long	.Linfo_string77         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Lcu_begin2:
	.long	643                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x27c DW_TAG_compile_unit
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
	.byte	33                      # Abbrev [33] 0x31:0x118 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string22         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	34                      # Abbrev [34] 0x4a:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string3          # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	636                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x57:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc28           # DW_AT_location
	.long	.Linfo_string122        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	17                      # Abbrev [17] 0x66:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string123        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x7a:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string124        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x8e:0x14 DW_TAG_variable
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
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xa2:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string126        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xb6:0xf DW_TAG_variable
	.long	.Ldebug_loc29           # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xc5:0xf DW_TAG_variable
	.long	.Ldebug_loc30           # DW_AT_location
	.long	.Linfo_string127        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xd4:0xf DW_TAG_variable
	.long	.Ldebug_loc31           # DW_AT_location
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xe3:0xf DW_TAG_variable
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0xf2:0xf DW_TAG_variable
	.long	.Ldebug_loc33           # DW_AT_location
	.long	.Linfo_string100        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x101:0xf DW_TAG_variable
	.long	.Ldebug_loc34           # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x110:0xf DW_TAG_variable
	.long	.Ldebug_loc35           # DW_AT_location
	.long	.Linfo_string129        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	32                      # Abbrev [32] 0x11f:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string97         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x12c:0xf DW_TAG_variable
	.long	.Ldebug_loc36           # DW_AT_location
	.long	.Linfo_string98         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	32                      # Abbrev [32] 0x13b:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	97
	.long	.Linfo_string130        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x149:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string23         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	35                      # Abbrev [35] 0x15e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc37           # DW_AT_location
	.long	.Linfo_string131        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	34                      # Abbrev [34] 0x16d:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string3          # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	636                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x17a:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc38           # DW_AT_location
	.long	.Linfo_string122        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	35                      # Abbrev [35] 0x189:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc39           # DW_AT_location
	.long	.Linfo_string132        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	636                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x198:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string123        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1ac:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string124        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1c0:0x14 DW_TAG_variable
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
	.long	641                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1d4:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string126        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	641                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x1e8:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string81         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x1f4:0xf DW_TAG_variable
	.long	.Ldebug_loc40           # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x203:0xf DW_TAG_variable
	.long	.Ldebug_loc41           # DW_AT_location
	.long	.Linfo_string127        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x212:0xf DW_TAG_variable
	.long	.Ldebug_loc42           # DW_AT_location
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x221:0xf DW_TAG_variable
	.long	.Ldebug_loc43           # DW_AT_location
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x230:0xf DW_TAG_variable
	.long	.Ldebug_loc44           # DW_AT_location
	.long	.Linfo_string100        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x23f:0xf DW_TAG_variable
	.long	.Ldebug_loc45           # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x24e:0xf DW_TAG_variable
	.long	.Ldebug_loc46           # DW_AT_location
	.long	.Linfo_string129        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x25d:0xf DW_TAG_variable
	.long	.Ldebug_loc47           # DW_AT_location
	.long	.Linfo_string97         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x26c:0xf DW_TAG_variable
	.long	.Ldebug_loc48           # DW_AT_location
	.long	.Linfo_string98         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x27c:0x5 DW_TAG_pointer_type
	.long	.Lsection_info+78       # DW_AT_type
	.byte	37                      # Abbrev [37] 0x281:0x5 DW_TAG_const_type
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin3:
	.long	363                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x164 DW_TAG_compile_unit
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
	.long	.Linfo_string24         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	39                      # Abbrev [39] 0x7c:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string131        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x8c:0x18 DW_TAG_subprogram
	.long	.Linfo_string18         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	19                      # Abbrev [19] 0x98:0xb DW_TAG_variable
	.long	.Linfo_string19         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xa4:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string25         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc49           # DW_AT_location
	.long	.Linfo_string131        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	41                      # Abbrev [41] 0xc8:0x1c DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp238                # DW_AT_low_pc
	.long	.Ltmp239-.Ltmp238       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	36                      # DW_AT_call_line
	.byte	42                      # Abbrev [42] 0xdb:0x8 DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	117
	.byte	0
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xe5:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string26         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	29                      # Abbrev [29] 0xfa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc50           # DW_AT_location
	.long	.Linfo_string131        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc52           # DW_AT_location
	.long	.Linfo_string133        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	15                      # Abbrev [15] 0x118:0xf DW_TAG_variable
	.long	.Ldebug_loc53           # DW_AT_location
	.long	.Linfo_string19         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	41                      # Abbrev [41] 0x127:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp246                # DW_AT_low_pc
	.long	.Ltmp247-.Ltmp246       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	47                      # DW_AT_call_line
	.byte	43                      # Abbrev [43] 0x13a:0x9 DW_TAG_variable
	.long	.Ldebug_loc51           # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	33                      # Abbrev [33] 0x145:0x29 DW_TAG_subprogram
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string27         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+78       # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	39                      # Abbrev [39] 0x15e:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string131        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin4:
	.long	167                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xa0 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string16         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string10         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
	.byte	28                      # Abbrev [28] 0x2a:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string28         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	44                      # Abbrev [44] 0x3f:0x15 DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.long	.Lsection_info+1617     # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wtime_.sec
	.byte	29                      # Abbrev [29] 0x54:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc54           # DW_AT_location
	.long	.Linfo_string19         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2211     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x63:0xf DW_TAG_variable
	.long	.Ldebug_loc55           # DW_AT_location
	.long	.Linfo_string134        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	115                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x73:0x21 DW_TAG_structure_type
	.long	.Linfo_string139        # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	13                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	24                      # Abbrev [24] 0x7b:0xc DW_TAG_member
	.long	.Linfo_string135        # DW_AT_name
	.long	148                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	24                      # Abbrev [24] 0x87:0xc DW_TAG_member
	.long	.Linfo_string137        # DW_AT_name
	.long	159                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x94:0xb DW_TAG_typedef
	.long	.Lsection_info+1094     # DW_AT_type
	.long	.Linfo_string136        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x9f:0xb DW_TAG_typedef
	.long	.Lsection_info+1094     # DW_AT_type
	.long	.Linfo_string138        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_macinfo,"",@progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
.Lcu_macro_begin1:
.Lcu_macro_begin2:
.Lcu_macro_begin3:
.Lcu_macro_begin4:
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	1192                    # Compilation Unit Length
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
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	383                     # Compilation Unit Length
	.long	59                      # DIE offset
	.asciz	"print_results"         # External Name
	.long	0                       # End Mark
.LpubNames_end1:
	.long	.LpubNames_end2-.LpubNames_begin2 # Length of Public Names Info
.LpubNames_begin2:
	.short	2                       # DWARF Version
	.long	.Lcu_begin2             # Offset of Compilation Unit Info
	.long	647                     # Compilation Unit Length
	.long	49                      # DIE offset
	.asciz	"randlc"                # External Name
	.long	329                     # DIE offset
	.asciz	"vranlc"                # External Name
	.long	0                       # End Mark
.LpubNames_end2:
	.long	.LpubNames_end3-.LpubNames_begin3 # Length of Public Names Info
.LpubNames_begin3:
	.short	2                       # DWARF Version
	.long	.Lcu_begin3             # Offset of Compilation Unit Info
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
.LpubNames_end3:
	.long	.LpubNames_end4-.LpubNames_begin4 # Length of Public Names Info
.LpubNames_begin4:
	.short	2                       # DWARF Version
	.long	.Lcu_begin4             # Offset of Compilation Unit Info
	.long	171                     # Compilation Unit Length
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
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	1192                    # Compilation Unit Length
	.long	632                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	1180                    # DIE offset
	.asciz	"logical"               # External Name
	.long	1083                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	1101                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	1150                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	1132                    # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	643                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	1139                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	1161                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	1033                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	1094                    # DIE offset
	.asciz	"long int"              # External Name
	.long	78                      # DIE offset
	.asciz	"double"                # External Name
	.long	1108                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	620                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.long	.LpubTypes_end1-.LpubTypes_begin1 # Length of Public Types Info
.LpubTypes_begin1:
	.short	2                       # DWARF Version
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	383                     # Compilation Unit Length
	.long	371                     # DIE offset
	.asciz	"logical"               # External Name
	.long	0                       # End Mark
.LpubTypes_end1:
	.long	.LpubTypes_end2-.LpubTypes_begin2 # Length of Public Types Info
.LpubTypes_begin2:
	.short	2                       # DWARF Version
	.long	.Lcu_begin2             # Offset of Compilation Unit Info
	.long	647                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end2:
	.long	.LpubTypes_end3-.LpubTypes_begin3 # Length of Public Types Info
.LpubTypes_begin3:
	.short	2                       # DWARF Version
	.long	.Lcu_begin4             # Offset of Compilation Unit Info
	.long	171                     # Compilation Unit Length
	.long	148                     # DIE offset
	.asciz	"__time_t"              # External Name
	.long	115                     # DIE offset
	.asciz	"timeval"               # External Name
	.long	159                     # DIE offset
	.asciz	"__suseconds_t"         # External Name
	.long	0                       # End Mark
.LpubTypes_end3:

	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
