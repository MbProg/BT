	.text
	.file	"cg/A/cg.A.bc"
	.file	1 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/CG/cg.c"
	.file	2 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/CG/../common/type.h"
	.file	3 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/type.h"
	.file	4 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/c_timers.c"
	.file	5 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/wtime.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4742906807993761792     # double 1220703125
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_3:
	.quad	-4597049319638433792    # double -20
.LCPI0_5:
	.quad	4626322717216342016     # double 20
.LCPI0_6:
	.quad	-4597857086659766036    # double -17.130235054029001
.LCPI0_8:
	.quad	4625514950195009772     # double 17.130235054029001
.LCPI0_9:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI0_10:
	.quad	4744063416157601792     # double 1.49646E+9
.LCPI0_11:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_12:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_4:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
.LCPI0_7:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	1 126 0                 # cg.c:126:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	1 141 5 prologue_end    # cg.c:141:5
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
	subq	$360, %rsp              # imm = 0x168
.Ltmp6:
	.cfi_def_cfa_offset 416
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
	#DEBUG_VALUE: main:argc <- %EDI
	#DEBUG_VALUE: main:argv <- %RSI
.Ltmp13:
	#DEBUG_VALUE: main:i <- 0
	xorl	%edi, %edi
.Ltmp14:
	callq	timer_clear
.Ltmp15:
	#DEBUG_VALUE: main:i <- 1
	movl	$1, %edi
	callq	timer_clear
	movl	$2, %edi
	callq	timer_clear
.Ltmp16:
	.loc	1 145 13                # cg.c:145:13
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
.Ltmp17:
	callq	fopen
.Ltmp18:
	#DEBUG_VALUE: main:fp <- %RAX
	.loc	1 145 39 is_stmt 0      # cg.c:145:39
	testq	%rax, %rax
.Ltmp19:
	.loc	1 145 7                 # cg.c:145:7
	je	.LBB0_2
.Ltmp20:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: main:fp <- %RAX
	movb	$1, timeron(%rip)
.Ltmp21:
	.loc	1 150 5 is_stmt 1       # cg.c:150:5
	movq	%rax, %rdi
	callq	fclose
.Ltmp22:
	jmp	.LBB0_3
.Ltmp23:
.LBB0_2:                                # %if.else
	#DEBUG_VALUE: main:fp <- %RAX
	movb	$0, timeron(%rip)
.Ltmp24:
.LBB0_3:                                # %if.end
	xorl	%ebx, %ebx
	.loc	1 155 3                 # cg.c:155:3
	xorl	%edi, %edi
	callq	timer_start
	movb	$1, lastrow(%rip)
	movb	$1, lastcol(%rip)
.Ltmp25:
	#DEBUG_VALUE: main:zeta_verify_value <- 1.713024e+01
	#DEBUG_VALUE: main:Class <- 65
	.loc	1 187 3                 # cg.c:187:3
	movl	$.Lstr, %edi
	callq	puts
	.loc	1 188 3                 # cg.c:188:3
	movl	$14000, %ebp            # imm = 0x36B0
	movl	$.L.str.6, %edi
	movl	$14000, %esi            # imm = 0x36B0
	xorl	%eax, %eax
	callq	printf
	.loc	1 189 3                 # cg.c:189:3
	movl	$.L.str.7, %edi
	movl	$15, %esi
	xorl	%eax, %eax
	callq	printf
	.loc	1 190 3                 # cg.c:190:3
	movl	$10, %edi
	callq	putchar
	movb	$1, naa(%rip)
	movb	$1, nzz(%rip)
	.loc	1 198 11                # cg.c:198:11
	movabsq	$4734050326586327040, %rax # imm = 0x41B2B9B0A1000000
	movq	%rax, tran(%rip)
	.loc	1 199 11                # cg.c:199:11
	movabsq	$4742906807993761792, %rax # imm = 0x41D2309CE5400000
	movq	%rax, amult(%rip)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.loc	1 200 13                # cg.c:200:13
	movl	$tran, %edi
	callq	randlc
	movb	naa(%rip), %al
	andb	$1, %al
	movb	%al, 144(%rsp)          # 1-byte Spill
	cmovnel	%ebp, %ebx
	movb	nzz(%rip), %cl
.Ltmp26:
	#DEBUG_VALUE: makea:lastcol <- 0
	#DEBUG_VALUE: makea:firstcol <- 0
	#DEBUG_VALUE: makea:firstrow <- 0
	movb	lastrow(%rip), %al
.Ltmp27:
	#DEBUG_VALUE: makea:nn1 <- 1
	movb	%al, 95(%rsp)           # 1-byte Spill
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_4:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp28:
	.loc	1 631 13                # cg.c:631:13
	addl	%eax, %eax
.Ltmp29:
	#DEBUG_VALUE: icnvrt:ipwr2 <- %EAX
	#DEBUG_VALUE: makea:nn1 <- %EAX
	.loc	1 632 16 discriminator 1 # cg.c:632:16
	cmpl	%ebx, %eax
	.loc	1 632 3 is_stmt 0 discriminator 1 # cg.c:632:3
	jl	.LBB0_4
.Ltmp30:
# BB#5:                                 # %for.cond.preheader.i
	#DEBUG_VALUE: makea:nn1 <- %EAX
	#DEBUG_VALUE: icnvrt:ipwr2 <- %EAX
	xorl	%edx, %edx
	testb	$1, %cl
	movl	$2016000, %ecx          # imm = 0x1EC300
	cmovel	%edx, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	testb	$1, 95(%rsp)            # 1-byte Folded Reload
	movl	$13999, %ecx            # imm = 0x36AF
	cmovel	%edx, %ecx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
.Ltmp31:
	.loc	1 637 3 is_stmt 1 discriminator 1 # cg.c:637:3
	cmpb	$0, 144(%rsp)           # 1-byte Folded Reload
	je	.LBB0_51
.Ltmp32:
# BB#6:                                 # %for.body.lr.ph.i
	#DEBUG_VALUE: icnvrt:ipwr2 <- %EAX
	#DEBUG_VALUE: makea:nn1 <- %EAX
	.loc	1 873 16                # cg.c:873:16
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movl	$acol, %edx
	xorl	%r13d, %r13d
	movl	$acol+56, %r8d
.Ltmp33:
	.loc	1 889 12                # cg.c:889:12
	movabsq	$4602678819172646912, %r14 # imm = 0x3FE0000000000000
.Ltmp34:
	.p2align	4, 0x90
.LBB0_8:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_10 Depth 3
                                        #         Child Loop BB0_11 Depth 4
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_50 Depth 2
	#DEBUG_VALUE: makea:nzv <- 11
	#DEBUG_VALUE: sprnvc:nz <- 11
	#DEBUG_VALUE: sprnvc:nzv <- 0
	movq	%r8, 168(%rsp)          # 8-byte Spill
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	.loc	1 205 3                 # cg.c:205:3
	movq	%r13, %r12
.Ltmp35:
	.loc	1 840 3 discriminator 1 # cg.c:840:3
	leaq	(%r12,%r12,2), %rax
	shlq	$5, %rax
	leaq	aelt(%rax), %rax
.Ltmp36:
	.loc	1 639 5                 # cg.c:639:5
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_9:                                # %while.body.lr.ph.i.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_10 Depth 3
                                        #         Child Loop BB0_11 Depth 4
.Ltmp37:
	.loc	1 854 5 discriminator 1 # cg.c:854:5
	testq	%rbp, %rbp
	jle	.LBB0_13
.Ltmp38:
.LBB0_10:                               # %while.body.us.us.i.i
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_11 Depth 4
	.loc	1 841 28                # cg.c:841:28
	movsd	amult(%rip), %xmm0      # xmm0 = mem[0],zero
	.loc	1 841 14 is_stmt 0      # cg.c:841:14
	movl	$tran, %edi
	callq	randlc
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
.Ltmp39:
	#DEBUG_VALUE: sprnvc:vecelt <- [%RSP+96]
	.loc	1 846 28 is_stmt 1      # cg.c:846:28
	movsd	amult(%rip), %xmm0      # xmm0 = mem[0],zero
	.loc	1 846 14 is_stmt 0      # cg.c:846:14
	movl	$tran, %edi
	callq	randlc
.Ltmp40:
	#DEBUG_VALUE: icnvrt:x <- %XMM0
	#DEBUG_VALUE: sprnvc:vecloc <- %XMM0
	.loc	1 873 22 is_stmt 1      # cg.c:873:22
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
.Ltmp41:
	.loc	1 873 10 is_stmt 0      # cg.c:873:10
	cvttsd2si	%xmm0, %ecx
.Ltmp42:
	.loc	1 847 29 is_stmt 1      # cg.c:847:29
	leal	1(%rcx), %eax
.Ltmp43:
	#DEBUG_VALUE: sprnvc:i <- %EAX
	.loc	1 848 9                 # cg.c:848:9
	cmpl	%ebx, %ecx
.Ltmp44:
	.loc	1 639 5                 # cg.c:639:5
	movl	$0, %ecx
.Ltmp45:
	.loc	1 848 9                 # cg.c:848:9
	jge	.LBB0_10
.Ltmp46:
	.p2align	4, 0x90
.LBB0_11:                               # %for.body.us.us.i.i
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	1 855 18                # cg.c:855:18
	cmpl	%eax, 208(%rsp,%rcx,4)
.Ltmp47:
	.loc	1 854 5 discriminator 1 # cg.c:854:5
	leaq	1(%rcx), %rcx
	je	.LBB0_10
# BB#12:                                # %for.cond.us.us.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	.loc	1 854 21 is_stmt 0 discriminator 1 # cg.c:854:21
	cmpq	%rbp, %rcx
	jl	.LBB0_11
	jmp	.LBB0_15
.Ltmp48:
	.p2align	4, 0x90
.LBB0_13:                               # %while.body.us6.i.i
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 841 28 is_stmt 1      # cg.c:841:28
	movsd	amult(%rip), %xmm0      # xmm0 = mem[0],zero
	.loc	1 841 14 is_stmt 0      # cg.c:841:14
	movl	$tran, %edi
	callq	randlc
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
.Ltmp49:
	#DEBUG_VALUE: sprnvc:vecelt <- [%RSP+96]
	.loc	1 846 28 is_stmt 1      # cg.c:846:28
	movsd	amult(%rip), %xmm0      # xmm0 = mem[0],zero
	.loc	1 846 14 is_stmt 0      # cg.c:846:14
	movl	$tran, %edi
	callq	randlc
.Ltmp50:
	#DEBUG_VALUE: icnvrt:x <- %XMM0
	#DEBUG_VALUE: sprnvc:vecloc <- %XMM0
	.loc	1 873 22 is_stmt 1      # cg.c:873:22
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
.Ltmp51:
	.loc	1 873 10 is_stmt 0      # cg.c:873:10
	cvttsd2si	%xmm0, %eax
.Ltmp52:
	.loc	1 848 9 is_stmt 1       # cg.c:848:9
	cmpl	%ebx, %eax
	jge	.LBB0_13
# BB#14:                                # %if.end9.loopexit36.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	.loc	1 847 29                # cg.c:847:29
	incl	%eax
.LBB0_15:                               # %if.end9.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	.loc	1 861 12                # cg.c:861:12
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 256(%rsp,%rbp,8)
	.loc	1 862 13                # cg.c:862:13
	movl	%eax, 208(%rsp,%rbp,4)
.Ltmp53:
	.loc	1 840 3 discriminator 1 # cg.c:840:3
	incq	%rbp
	cmpq	$11, %rbp
	jne	.LBB0_9
.Ltmp54:
# BB#16:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: vecset:n <- 0
	#DEBUG_VALUE: vecset:val <- 5.000000e-01
	#DEBUG_VALUE: vecset:set <- 0
	#DEBUG_VALUE: vecset:k <- 0
	.loc	1 637 3 discriminator 1 # cg.c:637:3
	leaq	1(%r12), %r13
.Ltmp55:
	.loc	1 888 9                 # cg.c:888:9
	movq	208(%rsp), %r15
	.loc	1 888 15 is_stmt 0      # cg.c:888:15
	movl	%r15d, %ecx
.Ltmp56:
	.loc	1 888 9                 # cg.c:888:9
	movq	%r15, %rbp
	shrq	$32, %rbp
	xorl	%eax, %eax
	cmpq	%r13, %rcx
	jne	.LBB0_18
# BB#17:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp57:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 256(%rsp)
.Ltmp58:
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp59:
.LBB0_18:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 15                # cg.c:888:15
	cmpq	%r13, %rbp
	jne	.LBB0_20
# BB#19:                                # %if.then.i.1.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp60:
	.loc	1 889 12                # cg.c:889:12
	movq	%r14, 264(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp61:
.LBB0_20:                               # %for.inc.i.1.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	movq	216(%rsp), %rcx
	.loc	1 888 15 is_stmt 0      # cg.c:888:15
	movl	%ecx, %edx
.Ltmp62:
	.loc	1 888 9                 # cg.c:888:9
	shrq	$32, %rcx
	cmpq	%r13, %rdx
	jne	.LBB0_22
# BB#21:                                # %if.then.i.2.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp63:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 272(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp64:
.LBB0_22:                               # %for.inc.i.2.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	cmpq	%r13, %rcx
	jne	.LBB0_24
# BB#23:                                # %if.then.i.3.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp65:
	.loc	1 889 12                # cg.c:889:12
	movq	%r14, 280(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp66:
.LBB0_24:                               # %for.inc.i.3.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	movq	224(%rsp), %rcx
	.loc	1 888 15 is_stmt 0      # cg.c:888:15
	movl	%ecx, %edx
.Ltmp67:
	.loc	1 888 9                 # cg.c:888:9
	shrq	$32, %rcx
	cmpq	%r13, %rdx
	jne	.LBB0_26
# BB#25:                                # %if.then.i.4.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp68:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 288(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp69:
.LBB0_26:                               # %for.inc.i.4.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	cmpq	%r13, %rcx
	jne	.LBB0_28
# BB#27:                                # %if.then.i.5.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp70:
	.loc	1 889 12                # cg.c:889:12
	movq	%r14, 296(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp71:
.LBB0_28:                               # %for.inc.i.5.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	movq	232(%rsp), %rcx
	.loc	1 888 15 is_stmt 0      # cg.c:888:15
	movl	%ecx, %edx
.Ltmp72:
	.loc	1 888 9                 # cg.c:888:9
	shrq	$32, %rcx
	cmpq	%r13, %rdx
	jne	.LBB0_30
# BB#29:                                # %if.then.i.6.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp73:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 304(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp74:
.LBB0_30:                               # %for.inc.i.6.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	cmpq	%r13, %rcx
	jne	.LBB0_32
# BB#31:                                # %if.then.i.7.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp75:
	.loc	1 889 12                # cg.c:889:12
	movq	%r14, 312(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp76:
.LBB0_32:                               # %for.inc.i.7.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	movq	240(%rsp), %rcx
	.loc	1 888 15 is_stmt 0      # cg.c:888:15
	movl	%ecx, %edx
.Ltmp77:
	.loc	1 888 9                 # cg.c:888:9
	shrq	$32, %rcx
	cmpq	%r13, %rdx
	jne	.LBB0_34
# BB#33:                                # %if.then.i.8.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp78:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 320(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp79:
.LBB0_34:                               # %for.inc.i.8.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 9                 # cg.c:888:9
	cmpq	%r13, %rcx
	jne	.LBB0_36
# BB#35:                                # %if.then.i.9.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp80:
	.loc	1 889 12                # cg.c:889:12
	movq	%r14, 328(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$1, %eax
.Ltmp81:
.LBB0_36:                               # %for.inc.i.9.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 888 15                # cg.c:888:15
	movl	248(%rsp), %ecx
.Ltmp82:
	.loc	1 888 9 is_stmt 0       # cg.c:888:9
	cmpq	%r13, %rcx
	jne	.LBB0_38
# BB#37:                                # %for.inc.i.10.thread.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp83:
	.loc	1 889 12 is_stmt 1      # cg.c:889:12
	movq	%r14, 336(%rsp)
	#DEBUG_VALUE: vecset:set <- 1
	movl	$11, %ecx
	movq	136(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB0_40
.Ltmp84:
	.p2align	4, 0x90
.LBB0_38:                               # %for.inc.i.10.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$11, %ecx
.Ltmp85:
	.loc	1 893 11                # cg.c:893:11
	testl	%eax, %eax
	movq	136(%rsp), %rdi         # 8-byte Reload
	jne	.LBB0_40
# BB#39:                                # %if.then5.i.i
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp86:
	.loc	1 894 14                # cg.c:894:14
	movq	%r14, 344(%rsp)
	.loc	1 895 14                # cg.c:895:14
	movl	%r13d, 252(%rsp)
	movl	$12, %ecx
.Ltmp87:
	.p2align	4, 0x90
.LBB0_40:                               # %vecset.exit.i
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: makea:ivelt <- 0
	.loc	1 641 18                # cg.c:641:18
	movl	%ecx, arow(,%r12,4)
.Ltmp88:
	.loc	1 643 5 discriminator 1 # cg.c:643:5
	movl	%ecx, %r14d
	decl	%ecx
	leaq	8(,%rcx,8), %rdx
	leaq	256(%rsp), %rsi
.Ltmp89:
	.loc	1 645 27                # cg.c:645:27
	callq	memcpy
	.loc	1 644 40                # cg.c:644:40
	leal	-1(%r15), %eax
	.loc	1 644 7 is_stmt 0       # cg.c:644:7
	shlq	$4, %r12
	.loc	1 644 27                # cg.c:644:27
	movl	%eax, acol(%r12,%r12,2)
	.loc	1 644 40                # cg.c:644:40
	decl	%ebp
	.loc	1 644 27                # cg.c:644:27
	movl	%ebp, acol+4(%r12,%r12,2)
.Ltmp90:
	.loc	1 643 5 is_stmt 1 discriminator 1 # cg.c:643:5
	leaq	-2(%r14), %rax
	cmpq	$8, %rax
	movl	$2, %esi
	movq	168(%rsp), %r8          # 8-byte Reload
.Ltmp91:
	.loc	1 644 40                # cg.c:644:40
	pcmpeqd	%xmm2, %xmm2
	jb	.LBB0_49
.Ltmp92:
# BB#41:                                # %min.iters.checked
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 643 5 discriminator 1 # cg.c:643:5
	movq	%rax, %rcx
	andq	$8, %rcx
	movq	%rax, %rdx
	andq	$8, %rdx
	movl	$2, %esi
	je	.LBB0_49
.Ltmp93:
# BB#42:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	-8(%rdx), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	btq	$3, %rdi
	movl	$0, %ebp
	jb	.LBB0_44
# BB#43:                                # %vector.body.prol
                                        #   in Loop: Header=BB0_8 Depth=1
.Ltmp94:
	.loc	1 644 29                # cg.c:644:29
	movdqu	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	.loc	1 644 40 is_stmt 0      # cg.c:644:40
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	.loc	1 644 27                # cg.c:644:27
	movdqu	%xmm0, acol+8(%r12,%r12,2)
	movdqu	%xmm1, acol+24(%r12,%r12,2)
	movl	$8, %ebp
.Ltmp95:
.LBB0_44:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_8 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_47
# BB#45:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%rdx, %rsi
	subq	%rbp, %rsi
.Ltmp96:
	.loc	1 637 3 is_stmt 1 discriminator 1 # cg.c:637:3
	leaq	264(%rsp), %rdi
	leaq	(%rdi,%rbp,4), %rdi
	leaq	(%r8,%rbp,4), %rbp
.Ltmp97:
	.p2align	4, 0x90
.LBB0_46:                               # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 644 29                # cg.c:644:29
	movdqu	-48(%rdi), %xmm0
	movdqu	-32(%rdi), %xmm1
	.loc	1 644 40 is_stmt 0      # cg.c:644:40
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	.loc	1 644 27                # cg.c:644:27
	movdqu	%xmm0, -48(%rbp)
	movdqu	%xmm1, -32(%rbp)
	.loc	1 644 29                # cg.c:644:29
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	.loc	1 644 40                # cg.c:644:40
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	.loc	1 644 27                # cg.c:644:27
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm1, (%rbp)
.Ltmp98:
	.loc	1 643 5 is_stmt 1 discriminator 1 # cg.c:643:5
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-16, %rsi
	jne	.LBB0_46
.LBB0_47:                               # %middle.block
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	%rdx, %rax
	movq	176(%rsp), %rdx         # 8-byte Reload
	je	.LBB0_7
# BB#48:                                #   in Loop: Header=BB0_8 Depth=1
	orq	$2, %rcx
	movq	%rcx, %rsi
.Ltmp99:
	.p2align	4, 0x90
.LBB0_49:                               # %for.body7.for.body7_crit_edge.i.for.body7.for.body7_crit_edge.i_crit_edge.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	176(%rsp), %rdx         # 8-byte Reload
.Ltmp100:
	.loc	1 644 29                # cg.c:644:29
	leaq	(%rdx,%rsi,4), %rax
	.p2align	4, 0x90
.LBB0_50:                               # %for.body7.for.body7_crit_edge.i.for.body7.for.body7_crit_edge.i_crit_edge
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	208(%rsp,%rsi,4), %ecx
	.loc	1 644 40 is_stmt 0      # cg.c:644:40
	decl	%ecx
	.loc	1 644 27                # cg.c:644:27
	movl	%ecx, (%rax)
.Ltmp101:
	.loc	1 643 5 is_stmt 1 discriminator 1 # cg.c:643:5
	incq	%rsi
	.loc	1 643 27 is_stmt 0 discriminator 1 # cg.c:643:27
	addq	$4, %rax
	cmpq	%r14, %rsi
	jl	.LBB0_50
.Ltmp102:
.LBB0_7:                                # %for.cond.loopexit.i
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 637 3 is_stmt 1 discriminator 1 # cg.c:637:3
	addq	$48, %r8
	addq	$48, %rdx
	cmpl	%ebx, %r13d
.Ltmp103:
	.loc	1 889 12                # cg.c:889:12
	movabsq	$4602678819172646912, %r14 # imm = 0x3FE0000000000000
	jne	.LBB0_8
.Ltmp104:
.LBB0_51:                               # %for.end22.i
	#DEBUG_VALUE: sparse:nozer <- 0
	#DEBUG_VALUE: sparse:firstrow <- 0
	#DEBUG_VALUE: sparse:rcond <- 1.000000e-01
	#DEBUG_VALUE: sparse:shift <- 2.000000e+01
	#DEBUG_VALUE: sparse:j <- 0
	movq	192(%rsp), %r14         # 8-byte Reload
.Ltmp105:
	.loc	1 691 30                # cg.c:691:30
	leal	1(%r14), %r15d
.Ltmp106:
	.loc	1 697 5                 # cg.c:697:5
	leaq	4(,%r15,4), %rdx
	xorl	%ebp, %ebp
	.loc	1 697 15 is_stmt 0      # cg.c:697:15
	movl	$rowstr, %edi
	xorl	%esi, %esi
	callq	memset
.Ltmp107:
	.loc	1 700 3 is_stmt 1 discriminator 1 # cg.c:700:3
	cmpb	$0, 144(%rsp)           # 1-byte Folded Reload
	je	.LBB0_60
.Ltmp108:
# BB#52:
	.loc	1 653 3                 # cg.c:653:3
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_53:                               # %for.cond5.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
.Ltmp109:
	.loc	1 701 5 discriminator 1 # cg.c:701:5
	movslq	arow(,%r9,4), %rdx
	.loc	1 701 25 is_stmt 0 discriminator 1 # cg.c:701:25
	testq	%rdx, %rdx
	jle	.LBB0_59
# BB#54:                                # %for.body9.lr.ph.i.i
                                        #   in Loop: Header=BB0_53 Depth=1
	.loc	1 701 5 discriminator 1 # cg.c:701:5
	testb	$1, %dl
	movl	$0, %eax
	je	.LBB0_56
.Ltmp110:
# BB#55:                                # %for.body9.i.i.prol
                                        #   in Loop: Header=BB0_53 Depth=1
	.loc	1 702 11 is_stmt 1      # cg.c:702:11
	leaq	(%r9,%r9,2), %rax
	shlq	$4, %rax
	.loc	1 703 19                # cg.c:703:19
	movslq	acol(%rax), %rax
	.loc	1 703 17 is_stmt 0      # cg.c:703:17
	addl	%edx, rowstr+4(,%rax,4)
	movl	$1, %eax
.Ltmp111:
.LBB0_56:                               # %for.body9.lr.ph.i.i.split
                                        #   in Loop: Header=BB0_53 Depth=1
	.loc	1 701 5 is_stmt 1 discriminator 1 # cg.c:701:5
	cmpl	$1, %edx
	je	.LBB0_59
# BB#57:                                # %for.body9.lr.ph.i.i.split.split
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	%rdx, %rsi
	subq	%rax, %rsi
	leaq	(%r8,%rax,4), %rdi
.Ltmp112:
	.loc	1 653 3                 # cg.c:653:3
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_58:                               # %for.body9.i.i
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp113:
	.loc	1 703 19                # cg.c:703:19
	movslq	acol(%rdi,%rax,4), %rcx
	.loc	1 703 17 is_stmt 0      # cg.c:703:17
	addl	%edx, rowstr+4(,%rcx,4)
	.loc	1 703 19                # cg.c:703:19
	movslq	acol+4(%rdi,%rax,4), %rcx
	.loc	1 703 17                # cg.c:703:17
	addl	%edx, rowstr+4(,%rcx,4)
.Ltmp114:
	.loc	1 701 5 is_stmt 1 discriminator 1 # cg.c:701:5
	addq	$2, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_58
.Ltmp115:
.LBB0_59:                               # %for.inc25.i.i
                                        #   in Loop: Header=BB0_53 Depth=1
	.loc	1 700 3 discriminator 1 # cg.c:700:3
	incq	%r9
	addq	$48, %r8
	cmpl	%ebx, %r9d
	jne	.LBB0_53
.Ltmp116:
.LBB0_60:                               # %for.end27.i.i
	.loc	1 707 13                # cg.c:707:13
	movl	$0, rowstr(%rip)
.Ltmp117:
	#DEBUG_VALUE: sparse:j <- 1
	movl	$1, %eax
.Ltmp118:
	.loc	1 708 3 discriminator 1 # cg.c:708:3
	testb	$3, %r15b
	je	.LBB0_64
.Ltmp119:
# BB#61:                                # %for.body32.i.i.prol.preheader
	.loc	1 709 17                # cg.c:709:17
	movl	%r15d, %ecx
	andl	$3, %ecx
	xorl	%edx, %edx
	.loc	1 709 29 is_stmt 0      # cg.c:709:29
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_62:                               # %for.body32.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	.loc	1 709 27                # cg.c:709:27
	addl	rowstr+4(,%rax,4), %ebp
	.loc	1 709 15                # cg.c:709:15
	movl	%ebp, rowstr+4(,%rax,4)
.Ltmp120:
	.loc	1 708 3 is_stmt 1 discriminator 1 # cg.c:708:3
	leaq	1(%rax), %rdx
	cmpl	%edx, %ecx
	jne	.LBB0_62
# BB#63:
	addq	$2, %rax
.LBB0_64:                               # %for.end27.i.i.split
	testb	$1, 95(%rsp)            # 1-byte Folded Reload
	je	.LBB0_67
# BB#65:                                # %for.end27.i.i.split.split
	movl	%r14d, %ecx
	addq	$2, %rcx
.Ltmp121:
	.p2align	4, 0x90
.LBB0_66:                               # %for.body32.i.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 709 27                # cg.c:709:27
	addl	rowstr(,%rax,4), %ebp
	.loc	1 709 15 is_stmt 0      # cg.c:709:15
	movl	%ebp, rowstr(,%rax,4)
	.loc	1 709 27                # cg.c:709:27
	addl	rowstr+4(,%rax,4), %ebp
	.loc	1 709 15                # cg.c:709:15
	movl	%ebp, rowstr+4(,%rax,4)
	.loc	1 709 27                # cg.c:709:27
	addl	rowstr+8(,%rax,4), %ebp
	.loc	1 709 15                # cg.c:709:15
	movl	%ebp, rowstr+8(,%rax,4)
	.loc	1 709 27                # cg.c:709:27
	addl	rowstr+12(,%rax,4), %ebp
	.loc	1 709 15                # cg.c:709:15
	movl	%ebp, rowstr+12(,%rax,4)
.Ltmp122:
	.loc	1 708 3 is_stmt 1 discriminator 1 # cg.c:708:3
	addq	$4, %rax
	cmpl	%eax, %ecx
	jne	.LBB0_66
.Ltmp123:
.LBB0_67:                               # %for.end43.i.i
	.loc	1 711 9                 # cg.c:711:9
	movl	rowstr(,%r15,4), %ebp
	movq	%r15, 160(%rsp)         # 8-byte Spill
	.loc	1 711 23 is_stmt 0      # cg.c:711:23
	decl	%ebp
.Ltmp124:
	#DEBUG_VALUE: sparse:nza <- %EBP
	movl	152(%rsp), %r15d        # 4-byte Reload
.Ltmp125:
	.loc	1 717 11 is_stmt 1      # cg.c:717:11
	cmpl	%r15d, %ebp
.Ltmp126:
	.loc	1 717 7 is_stmt 0       # cg.c:717:7
	jg	.LBB0_196
.Ltmp127:
# BB#68:                                # %for.cond49.preheader.i.i
	#DEBUG_VALUE: sparse:nza <- %EBP
	.loc	1 727 14 is_stmt 1      # cg.c:727:14
	movl	%r14d, %r14d
	movq	%r14, 152(%rsp)         # 8-byte Spill
	leaq	4(,%r14,4), %rdx
	xorl	%r15d, %r15d
.Ltmp128:
	.loc	1 731 14                # cg.c:731:14
	movl	$iv, %edi
	xorl	%esi, %esi
	callq	memset
.Ltmp129:
	.loc	1 727 14                # cg.c:727:14
	movl	rowstr(%rip), %ebp
.Ltmp130:
	incq	%r14
	.p2align	4, 0x90
.LBB0_69:                               # %for.body51.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp131:
	#DEBUG_VALUE: sparse:k <- %EBP
	.loc	1 727 29 is_stmt 0 discriminator 1 # cg.c:727:29
	movl	rowstr+4(,%r15,4), %r12d
.Ltmp132:
	.loc	1 726 3 is_stmt 1 discriminator 1 # cg.c:726:3
	incq	%r15
.Ltmp133:
	.loc	1 727 5 discriminator 1 # cg.c:727:5
	cmpl	%r12d, %ebp
	jge	.LBB0_71
.Ltmp134:
# BB#70:                                # %for.body59.lr.ph.i.i
                                        #   in Loop: Header=BB0_69 Depth=1
	#DEBUG_VALUE: sparse:k <- %EBP
	movslq	%ebp, %r13
	leaq	a(,%r13,8), %rdi
	leal	1(%rbp), %eax
	cmpl	%eax, %r12d
	cmovgel	%r12d, %eax
	notl	%ebp
.Ltmp135:
	addl	%eax, %ebp
	leaq	8(,%rbp,8), %rdx
.Ltmp136:
	.loc	1 728 12                # cg.c:728:12
	xorl	%esi, %esi
	callq	memset
.Ltmp137:
	.loc	1 727 5 discriminator 1 # cg.c:727:5
	leaq	colidx(,%r13,4), %rdi
	leaq	4(,%rbp,4), %rdx
.Ltmp138:
	.loc	1 729 17                # cg.c:729:17
	movl	$255, %esi
	callq	memset
.Ltmp139:
.LBB0_71:                               # %for.end66.i.i
                                        #   in Loop: Header=BB0_69 Depth=1
	.loc	1 726 3 discriminator 1 # cg.c:726:3
	cmpl	%r15d, %r14d
.Ltmp140:
	.loc	1 727 14                # cg.c:727:14
	movl	%r12d, %ebp
	jne	.LBB0_69
.Ltmp141:
# BB#72:                                # %for.end71.i.i
	#DEBUG_VALUE: sparse:size <- 1.000000e+00
	.loc	1 738 29                # cg.c:738:29
	cvtsi2sdl	%ebx, %xmm0
	.loc	1 738 27 is_stmt 0      # cg.c:738:27
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	.loc	1 738 11                # cg.c:738:11
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
.Ltmp142:
	#DEBUG_VALUE: sparse:i <- 0
	#DEBUG_VALUE: sparse:ratio <- %XMM0
	.loc	1 740 3 is_stmt 1 discriminator 1 # cg.c:740:3
	cmpb	$0, 144(%rsp)           # 1-byte Folded Reload
	je	.LBB0_85
.Ltmp143:
# BB#73:                                # %for.cond77.preheader.preheader.i.i
	#DEBUG_VALUE: sparse:ratio <- %XMM0
	.loc	1 741 25 discriminator 1 # cg.c:741:25
	movl	%ebx, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
.Ltmp144:
	.loc	1 738 27                # cg.c:738:27
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	.loc	1 738 11 is_stmt 0      # cg.c:738:11
	movsd	.LCPI0_2(%rip), %xmm5   # xmm5 = mem[0],zero
.Ltmp145:
	.p2align	4, 0x90
.LBB0_74:                               # %for.cond77.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_123 Depth 4
                                        #       Child Loop BB0_103 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_114 Depth 4
	.loc	1 745 29 is_stmt 1 discriminator 1 # cg.c:745:29
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movslq	arow(,%rax,4), %rdx
	.loc	1 745 31 is_stmt 0 discriminator 1 # cg.c:745:31
	testq	%rdx, %rdx
	jle	.LBB0_129
.Ltmp146:
# BB#75:                                # %for.body96.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_74 Depth=1
	.loc	1 653 3 is_stmt 1       # cg.c:653:3
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_76:                               # %for.body96.lr.ph.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_123 Depth 4
                                        #       Child Loop BB0_103 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_114 Depth 4
.Ltmp147:
	.loc	1 744 22                # cg.c:744:22
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,2), %r10
	.loc	1 742 11                # cg.c:742:11
	movq	%r10, %r11
	shlq	$4, %r11
.Ltmp148:
	.loc	1 758 33 discriminator 1 # cg.c:758:33
	movslq	acol(%r11,%rcx,4), %rax
.Ltmp149:
	.loc	1 753 28 discriminator 1 # cg.c:753:28
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%eax, %ebp
.Ltmp150:
	#DEBUG_VALUE: sparse:nzrow <- 0
	.loc	1 746 16                # cg.c:746:16
	movslq	rowstr(,%rax,4), %r8
.Ltmp151:
	.loc	1 758 31 discriminator 1 # cg.c:758:31
	movslq	rowstr+4(,%rax,4), %r12
	.loc	1 758 9 is_stmt 0 discriminator 1 # cg.c:758:9
	cmpl	%r12d, %r8d
	jge	.LBB0_84
.Ltmp152:
# BB#77:                                # %for.body96.us.preheader.i.i
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 744 22 is_stmt 1      # cg.c:744:22
	shlq	$5, %r10
	movq	168(%rsp), %rax         # 8-byte Reload
	movsd	aelt(%r10,%rax,8), %xmm3 # xmm3 = mem[0],zero
	.loc	1 744 20 is_stmt 0      # cg.c:744:20
	mulsd	%xmm2, %xmm3
.Ltmp153:
	#DEBUG_VALUE: sparse:scale <- %XMM3
	.loc	1 763 34 is_stmt 1      # cg.c:763:34
	leal	-2(%r12), %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
.Ltmp154:
	.loc	1 753 28 discriminator 1 # cg.c:753:28
	cmpq	%rax, %rbp
.Ltmp155:
	.loc	1 764 19                # cg.c:764:19
	movslq	%ecx, %r13
	jne	.LBB0_78
.Ltmp156:
# BB#102:                               # %for.body96.us.i.us.i.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	#DEBUG_VALUE: sparse:scale <- %XMM3
	.loc	1 746 16                # cg.c:746:16
	leaq	colidx(,%r8,4), %r9
	incq	%r13
	movq	%r13, 176(%rsp)         # 8-byte Spill
.Ltmp157:
	.loc	1 653 3                 # cg.c:653:3
	xorl	%r14d, %r14d
.Ltmp158:
	.p2align	4, 0x90
.LBB0_103:                              # %for.body96.us.i.us.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_114 Depth 4
	.loc	1 746 16                # cg.c:746:16
	movl	acol(%r11,%r14,4), %r13d
.Ltmp159:
	#DEBUG_VALUE: sparse:jcol <- %R13D
	movsd	aelt(%r10,%r14,8), %xmm4 # xmm4 = mem[0],zero
	.loc	1 747 29                # cg.c:747:29
	mulsd	%xmm3, %xmm4
.Ltmp160:
	#DEBUG_VALUE: sparse:va <- %XMM4
	.loc	1 753 18                # cg.c:753:18
	cmpl	%ebp, %r13d
.Ltmp161:
	#DEBUG_VALUE: sparse:cont40 <- 0
	jne	.LBB0_105
.Ltmp162:
# BB#104:                               #   in Loop: Header=BB0_103 Depth=3
	#DEBUG_VALUE: sparse:va <- %XMM4
	#DEBUG_VALUE: sparse:jcol <- %R13D
	.loc	1 754 19                # cg.c:754:19
	addsd	%xmm5, %xmm4
.Ltmp163:
	.loc	1 754 27 is_stmt 0      # cg.c:754:27
	addsd	%xmm1, %xmm4
.Ltmp164:
	#DEBUG_VALUE: sparse:va <- %XMM4
.LBB0_105:                              # %for.body96.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	#DEBUG_VALUE: sparse:jcol <- %R13D
	#DEBUG_VALUE: sparse:va <- %XMM4
	.loc	1 653 3 is_stmt 1       # cg.c:653:3
	movq	%r9, %rcx
	movq	%r8, %rax
.Ltmp165:
	.p2align	4, 0x90
.LBB0_106:                              # %for.body122.us.i.us.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_103 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	1 759 15                # cg.c:759:15
	movl	(%rcx), %esi
	.loc	1 759 25 is_stmt 0      # cg.c:759:25
	cmpl	%r13d, %esi
.Ltmp166:
	.loc	1 759 15                # cg.c:759:15
	jg	.LBB0_112
# BB#107:                               # %if.else.us.i.us.i
                                        #   in Loop: Header=BB0_106 Depth=4
.Ltmp167:
	.loc	1 773 32 is_stmt 1      # cg.c:773:32
	cmpl	$-1, %esi
.Ltmp168:
	.loc	1 773 22 is_stmt 0      # cg.c:773:22
	je	.LBB0_111
# BB#108:                               # %if.else165.us.i.us.i
                                        #   in Loop: Header=BB0_106 Depth=4
.Ltmp169:
	.loc	1 777 32 is_stmt 1      # cg.c:777:32
	cmpl	%r13d, %esi
.Ltmp170:
	.loc	1 777 22 is_stmt 0      # cg.c:777:22
	je	.LBB0_110
.Ltmp171:
# BB#109:                               # %for.inc179.us.i.us.i
                                        #   in Loop: Header=BB0_106 Depth=4
	.loc	1 758 9 is_stmt 1 discriminator 1 # cg.c:758:9
	incq	%rax
	.loc	1 758 31 is_stmt 0 discriminator 1 # cg.c:758:31
	addq	$4, %rcx
	cmpq	%r12, %rax
	jl	.LBB0_106
	jmp	.LBB0_84
.Ltmp172:
	.p2align	4, 0x90
.LBB0_112:                              # %if.then127.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 763 41 is_stmt 1 discriminator 1 # cg.c:763:41
	cmpl	%eax, 96(%rsp)          # 4-byte Folded Reload
	jl	.LBB0_117
.Ltmp173:
# BB#113:                               # %for.body135.us.preheader.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 764 19                # cg.c:764:19
	movslq	%eax, %rsi
.Ltmp174:
	.loc	1 653 3                 # cg.c:653:3
	movq	176(%rsp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_114:                              # %for.body135.us.i.us.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_103 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp175:
	.loc	1 766 32                # cg.c:766:32
	movl	colidx-4(,%rbx,4), %edi
.Ltmp176:
	.loc	1 764 19                # cg.c:764:19
	testl	%edi, %edi
	js	.LBB0_116
# BB#115:                               # %if.then140.us.i.us.i
                                        #   in Loop: Header=BB0_114 Depth=4
.Ltmp177:
	.loc	1 765 28                # cg.c:765:28
	movq	a-8(,%rbx,8), %r15
	.loc	1 765 26 is_stmt 0      # cg.c:765:26
	movq	%r15, a(,%rbx,8)
	.loc	1 766 30 is_stmt 1      # cg.c:766:30
	movl	%edi, colidx(,%rbx,4)
.Ltmp178:
.LBB0_116:                              # %for.inc152.us.i.us.i
                                        #   in Loop: Header=BB0_114 Depth=4
	.loc	1 763 41 discriminator 1 # cg.c:763:41
	decq	%rbx
	cmpq	%rsi, %rbx
	jg	.LBB0_114
.Ltmp179:
.LBB0_117:                              # %for.end153.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 769 23                # cg.c:769:23
	movl	%r13d, (%rcx)
	.loc	1 770 19                # cg.c:770:19
	movq	$0, a(,%rax,8)
.Ltmp180:
	#DEBUG_VALUE: sparse:cont40 <- 1
	jmp	.LBB0_118
.Ltmp181:
	.p2align	4, 0x90
.LBB0_111:                              # %if.then162.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	#DEBUG_VALUE: sparse:cont40 <- 1
	.loc	1 774 23                # cg.c:774:23
	movl	%r13d, (%rcx)
	jmp	.LBB0_118
.Ltmp182:
	.p2align	4, 0x90
.LBB0_110:                              # %if.then170.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 781 22                # cg.c:781:22
	movq	112(%rsp), %rcx         # 8-byte Reload
	incl	iv(,%rcx,4)
.Ltmp183:
	#DEBUG_VALUE: sparse:cont40 <- 1
.LBB0_118:                              # %if.end186.us.i.us.i
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 790 21                # cg.c:790:21
	addsd	a(,%rax,8), %xmm4
	.loc	1 790 14 is_stmt 0      # cg.c:790:14
	movsd	%xmm4, a(,%rax,8)
.Ltmp184:
	.loc	1 745 7 is_stmt 1 discriminator 1 # cg.c:745:7
	incq	%r14
	.loc	1 745 29 is_stmt 0 discriminator 1 # cg.c:745:29
	cmpq	%rdx, %r14
	jl	.LBB0_103
	jmp	.LBB0_128
.Ltmp185:
	.p2align	4, 0x90
.LBB0_78:                               # %for.body96.us.i.i.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	#DEBUG_VALUE: sparse:scale <- %XMM3
	.loc	1 746 16 is_stmt 1      # cg.c:746:16
	leaq	colidx(,%r8,4), %r14
	incq	%r13
.Ltmp186:
	.loc	1 653 3                 # cg.c:653:3
	xorl	%r9d, %r9d
.Ltmp187:
	.p2align	4, 0x90
.LBB0_79:                               # %for.body96.us.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_123 Depth 4
	.loc	1 746 16                # cg.c:746:16
	movl	acol(%r11,%r9,4), %ecx
.Ltmp188:
	#DEBUG_VALUE: sparse:jcol <- %ECX
	movsd	aelt(%r10,%r9,8), %xmm4 # xmm4 = mem[0],zero
	.loc	1 747 29                # cg.c:747:29
	mulsd	%xmm3, %xmm4
.Ltmp189:
	#DEBUG_VALUE: sparse:cont40 <- 0
	#DEBUG_VALUE: sparse:va <- %XMM4
	.loc	1 653 3                 # cg.c:653:3
	movq	%r14, %rsi
	movq	%r8, %rax
.Ltmp190:
	.p2align	4, 0x90
.LBB0_80:                               # %for.body122.us.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	.loc	1 759 15                # cg.c:759:15
	movl	(%rsi), %edi
	.loc	1 759 25 is_stmt 0      # cg.c:759:25
	cmpl	%ecx, %edi
.Ltmp191:
	.loc	1 759 15                # cg.c:759:15
	jg	.LBB0_121
# BB#81:                                # %if.else.us.i.i
                                        #   in Loop: Header=BB0_80 Depth=4
.Ltmp192:
	.loc	1 773 32 is_stmt 1      # cg.c:773:32
	cmpl	$-1, %edi
.Ltmp193:
	.loc	1 773 22 is_stmt 0      # cg.c:773:22
	je	.LBB0_120
# BB#82:                                # %if.else165.us.i.i
                                        #   in Loop: Header=BB0_80 Depth=4
.Ltmp194:
	.loc	1 777 32 is_stmt 1      # cg.c:777:32
	cmpl	%ecx, %edi
.Ltmp195:
	.loc	1 777 22 is_stmt 0      # cg.c:777:22
	je	.LBB0_119
.Ltmp196:
# BB#83:                                # %for.inc179.us.i.i
                                        #   in Loop: Header=BB0_80 Depth=4
	.loc	1 758 9 is_stmt 1 discriminator 1 # cg.c:758:9
	incq	%rax
	.loc	1 758 31 is_stmt 0 discriminator 1 # cg.c:758:31
	addq	$4, %rsi
	cmpq	%r12, %rax
	jl	.LBB0_80
	jmp	.LBB0_84
.Ltmp197:
	.p2align	4, 0x90
.LBB0_121:                              # %if.then127.us.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	movq	%rdx, %r15
.Ltmp198:
	.loc	1 763 41 is_stmt 1 discriminator 1 # cg.c:763:41
	cmpl	%eax, 96(%rsp)          # 4-byte Folded Reload
	jl	.LBB0_126
.Ltmp199:
# BB#122:                               # %for.body135.us.preheader.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 764 19                # cg.c:764:19
	movslq	%eax, %rbx
.Ltmp200:
	.loc	1 653 3                 # cg.c:653:3
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_123:                              # %for.body135.us.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp201:
	.loc	1 766 32                # cg.c:766:32
	movl	colidx-4(,%rdi,4), %ebp
.Ltmp202:
	.loc	1 764 19                # cg.c:764:19
	testl	%ebp, %ebp
	js	.LBB0_125
# BB#124:                               # %if.then140.us.i.i
                                        #   in Loop: Header=BB0_123 Depth=4
.Ltmp203:
	.loc	1 765 28                # cg.c:765:28
	movq	a-8(,%rdi,8), %rdx
	.loc	1 765 26 is_stmt 0      # cg.c:765:26
	movq	%rdx, a(,%rdi,8)
	.loc	1 766 30 is_stmt 1      # cg.c:766:30
	movl	%ebp, colidx(,%rdi,4)
.Ltmp204:
.LBB0_125:                              # %for.inc152.us.i.i
                                        #   in Loop: Header=BB0_123 Depth=4
	.loc	1 763 41 discriminator 1 # cg.c:763:41
	decq	%rdi
	cmpq	%rbx, %rdi
	jg	.LBB0_123
.Ltmp205:
.LBB0_126:                              # %for.end153.us.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 769 23                # cg.c:769:23
	movl	%ecx, (%rsi)
	.loc	1 770 19                # cg.c:770:19
	movq	$0, a(,%rax,8)
.Ltmp206:
	#DEBUG_VALUE: sparse:cont40 <- 1
	movq	%r15, %rdx
	jmp	.LBB0_127
.Ltmp207:
	.p2align	4, 0x90
.LBB0_120:                              # %if.then162.us.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	#DEBUG_VALUE: sparse:cont40 <- 1
	.loc	1 774 23                # cg.c:774:23
	movl	%ecx, (%rsi)
	jmp	.LBB0_127
.Ltmp208:
	.p2align	4, 0x90
.LBB0_119:                              # %if.then170.us.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 781 22                # cg.c:781:22
	movq	112(%rsp), %rcx         # 8-byte Reload
	incl	iv(,%rcx,4)
.Ltmp209:
	#DEBUG_VALUE: sparse:cont40 <- 1
.LBB0_127:                              # %if.end186.us.i.i
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 790 21                # cg.c:790:21
	addsd	a(,%rax,8), %xmm4
	.loc	1 790 14 is_stmt 0      # cg.c:790:14
	movsd	%xmm4, a(,%rax,8)
.Ltmp210:
	.loc	1 745 7 is_stmt 1 discriminator 1 # cg.c:745:7
	incq	%r9
	.loc	1 745 29 is_stmt 0 discriminator 1 # cg.c:745:29
	cmpq	%rdx, %r9
	jl	.LBB0_79
.Ltmp211:
.LBB0_128:                              # %for.inc195.i.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
.Ltmp212:
	.loc	1 741 5 is_stmt 1 discriminator 1 # cg.c:741:5
	incq	%rcx
	.loc	1 741 23 is_stmt 0 discriminator 1 # cg.c:741:23
	cmpq	%rdx, %rcx
	movq	136(%rsp), %rax         # 8-byte Reload
	jl	.LBB0_76
.Ltmp213:
.LBB0_129:                              # %for.end197.i.i
                                        #   in Loop: Header=BB0_74 Depth=1
	.loc	1 793 17 is_stmt 1      # cg.c:793:17
	mulsd	%xmm0, %xmm2
.Ltmp214:
	#DEBUG_VALUE: sparse:size <- %XMM2
	.loc	1 740 3 discriminator 1 # cg.c:740:3
	incq	%rax
	.loc	1 740 17 is_stmt 0 discriminator 1 # cg.c:740:17
	cmpq	144(%rsp), %rax         # 8-byte Folded Reload
	jl	.LBB0_74
.Ltmp215:
.LBB0_85:                               # %for.cond202.preheader.i.i
	.loc	1 799 3 is_stmt 1 discriminator 1 # cg.c:799:3
	testb	$1, 95(%rsp)            # 1-byte Folded Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	je	.LBB0_94
.Ltmp216:
# BB#86:                                # %for.body205.preheader.i.i
	.loc	1 800 27                # cg.c:800:27
	movq	iv(%rip), %rcx
	.loc	1 800 16 is_stmt 0      # cg.c:800:16
	movq	%rcx, %rax
	shrq	$32, %rax
	.loc	1 800 25                # cg.c:800:25
	addl	%ecx, %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv+4(%rip)
.Ltmp217:
	.loc	1 799 3 is_stmt 1 discriminator 1 # cg.c:799:3
	cmpl	$2, %r8d
	je	.LBB0_94
.Ltmp218:
# BB#87:                                # %for.body205.i.for.body205.i_crit_edge.i.preheader
	movq	192(%rsp), %rcx         # 8-byte Reload
.Ltmp219:
	.loc	1 800 16                # cg.c:800:16
	leal	3(%rcx), %esi
	leal	-2(%rcx), %edx
	movl	$2, %ecx
	testb	$3, %sil
	je	.LBB0_91
# BB#88:                                # %for.body205.i.for.body205.i_crit_edge.i.prol.preheader
	andl	$3, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_89:                               # %for.body205.i.for.body205.i_crit_edge.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	.loc	1 800 25 is_stmt 0      # cg.c:800:25
	addl	iv+8(,%rcx,4), %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv+8(,%rcx,4)
.Ltmp220:
	.loc	1 799 3 is_stmt 1 discriminator 1 # cg.c:799:3
	leaq	1(%rcx), %rdi
	cmpl	%edi, %esi
	jne	.LBB0_89
# BB#90:
	addq	$3, %rcx
.Ltmp221:
.LBB0_91:                               # %for.body205.i.for.body205.i_crit_edge.i.preheader.split
	.loc	1 800 16                # cg.c:800:16
	cmpl	$3, %edx
	jb	.LBB0_94
# BB#92:                                # %for.body205.i.for.body205.i_crit_edge.i.preheader.split.split
	movq	152(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	.p2align	4, 0x90
.LBB0_93:                               # %for.body205.i.for.body205.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 800 25 is_stmt 0      # cg.c:800:25
	addl	iv(,%rcx,4), %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv(,%rcx,4)
	.loc	1 800 25                # cg.c:800:25
	addl	iv+4(,%rcx,4), %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv+4(,%rcx,4)
	.loc	1 800 25                # cg.c:800:25
	addl	iv+8(,%rcx,4), %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv+8(,%rcx,4)
	.loc	1 800 25                # cg.c:800:25
	addl	iv+12(,%rcx,4), %eax
	.loc	1 800 14                # cg.c:800:14
	movl	%eax, iv+12(,%rcx,4)
.Ltmp222:
	.loc	1 799 3 is_stmt 1 discriminator 1 # cg.c:799:3
	addq	$4, %rcx
	cmpl	%ecx, %edx
	jne	.LBB0_93
.Ltmp223:
.LBB0_94:                               # %for.cond217.preheader.i.i
	.loc	1 805 12                # cg.c:805:12
	movq	rowstr(%rip), %r10
.Ltmp224:
	.loc	1 804 11                # cg.c:804:11
	movq	%r10, %rax
	shrq	$32, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	.p2align	4, 0x90
.LBB0_95:                               # %for.body220.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_181 Depth 2
                                        #     Child Loop BB0_186 Depth 2
                                        #     Child Loop BB0_189 Depth 2
.Ltmp225:
	.loc	1 805 12                # cg.c:805:12
	movl	%r10d, %eax
.Ltmp226:
	.loc	1 804 9                 # cg.c:804:9
	testq	%r12, %r12
.Ltmp227:
	.loc	1 653 3                 # cg.c:653:3
	movl	$0, %ecx
	jle	.LBB0_97
# BB#96:                                # %if.then223.i.i
                                        #   in Loop: Header=BB0_95 Depth=1
.Ltmp228:
	#DEBUG_VALUE: sparse:nza <- %EAX
	.loc	1 805 22                # cg.c:805:22
	movl	%eax, %ecx
	subl	iv-4(,%r12,4), %ecx
.Ltmp229:
	#DEBUG_VALUE: sparse:j1 <- %ECX
.LBB0_97:                               # %if.end231.i.i
                                        #   in Loop: Header=BB0_95 Depth=1
	.loc	1 809 10                # cg.c:809:10
	movl	rowstr+4(,%r12,4), %r10d
	.loc	1 809 24 is_stmt 0      # cg.c:809:24
	movl	iv(,%r12,4), %r15d
.Ltmp230:
	.loc	1 803 3 is_stmt 1 discriminator 1 # cg.c:803:3
	incq	%r12
.Ltmp231:
	.loc	1 809 22                # cg.c:809:22
	movl	%r10d, %r14d
	subl	%r15d, %r14d
.Ltmp232:
	#DEBUG_VALUE: sparse:j2 <- %R14D
	.loc	1 811 5 discriminator 1 # cg.c:811:5
	cmpl	%r14d, %ecx
.Ltmp233:
	#DEBUG_VALUE: sparse:k <- %ECX
	jge	.LBB0_130
.Ltmp234:
# BB#98:                                # %for.body243.preheader.i.i
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:k <- %ECX
	#DEBUG_VALUE: sparse:j2 <- %R14D
	.loc	1 812 14                # cg.c:812:14
	movslq	%ecx, %rbp
	movslq	%eax, %rbx
	leal	-1(%r10), %eax
	subl	%ecx, %eax
	subl	%r15d, %eax
	leaq	1(%rax), %r11
	cmpq	$4, %r11
	jb	.LBB0_184
.Ltmp235:
# BB#99:                                # %min.iters.checked501
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	#DEBUG_VALUE: sparse:k <- %ECX
	movq	%r11, %rcx
.Ltmp236:
	andq	%rdi, %rcx
	je	.LBB0_184
.Ltmp237:
# BB#100:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	a(,%rbp,8), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	(%rbp,%rax), %rdx
	leaq	a(,%rdx,8), %r13
	leaq	a(,%rbx,8), %rcx
	leaq	(%rbx,%rax), %r8
	leaq	a(,%r8,8), %r9
	leaq	colidx(,%rbp,4), %rdi
	leaq	colidx(,%rdx,4), %rsi
	leaq	colidx(,%rbx,4), %rdx
	leaq	colidx(,%r8,4), %r8
	cmpq	%r9, 96(%rsp)           # 8-byte Folded Reload
	setbe	%r9b
	cmpq	%r13, %rcx
	setbe	%r13b
	cmpq	%r8, %rdi
	setbe	%cl
	cmpq	%rsi, %rdx
	setbe	%dl
	testb	%r13b, %r9b
	jne	.LBB0_101
.Ltmp238:
# BB#175:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	andb	%dl, %cl
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	jne	.LBB0_176
.Ltmp239:
# BB#177:                               # %vector.body497.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	.loc	1 653 3                 # cg.c:653:3
	incq	%rax
	andq	%rdi, %rax
	addq	$-4, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	btq	$2, %rax
	movl	$0, %r9d
	jb	.LBB0_179
.Ltmp240:
# BB#178:                               # %vector.body497.prol
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	.loc	1 812 14                # cg.c:812:14
	movups	a(,%rbx,8), %xmm0
	movupd	a+16(,%rbx,8), %xmm1
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movups	%xmm0, a(,%rbp,8)
	movupd	%xmm1, a+16(,%rbp,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movupd	colidx(,%rbx,4), %xmm0
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movupd	%xmm0, colidx(,%rbp,4)
	movl	$4, %r9d
.Ltmp241:
.LBB0_179:                              # %vector.body497.preheader.split
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	.loc	1 653 3 is_stmt 1       # cg.c:653:3
	testq	%rcx, %rcx
	je	.LBB0_182
.Ltmp242:
# BB#180:                               # %vector.body497.preheader.split.split
                                        #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	movq	112(%rsp), %r8          # 8-byte Reload
	subq	%r9, %r8
	leaq	(%r9,%rbp), %r13
	addq	%rbx, %r9
	xorl	%edx, %edx
.Ltmp243:
	.p2align	4, 0x90
.LBB0_181:                              # %vector.body497
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 812 14                # cg.c:812:14
	leaq	(,%r9,8), %rsi
	movups	a(%rsi,%rdx,8), %xmm0
	movups	a+16(%rsi,%rdx,8), %xmm1
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	leaq	(,%r13,8), %rdi
	movups	%xmm0, a(%rdi,%rdx,8)
	movups	%xmm1, a+16(%rdi,%rdx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	leaq	(,%r9,4), %rax
	movups	colidx(%rax,%rdx,4), %xmm0
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	leaq	(,%r13,4), %rcx
	movups	%xmm0, colidx(%rcx,%rdx,4)
	.loc	1 812 14 is_stmt 1      # cg.c:812:14
	movups	a+32(%rsi,%rdx,8), %xmm0
	movupd	a+48(%rsi,%rdx,8), %xmm1
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movups	%xmm0, a+32(%rdi,%rdx,8)
	movupd	%xmm1, a+48(%rdi,%rdx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movupd	colidx+16(%rax,%rdx,4), %xmm0
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movupd	%xmm0, colidx+16(%rcx,%rdx,4)
	.loc	1 812 14 is_stmt 1      # cg.c:812:14
	addq	$8, %rdx
	cmpq	%rdx, %r8
	jne	.LBB0_181
.LBB0_182:                              # %middle.block498
                                        #   in Loop: Header=BB0_95 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, %r11
	movq	160(%rsp), %r8          # 8-byte Reload
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	je	.LBB0_130
# BB#183:                               #   in Loop: Header=BB0_95 Depth=1
	addq	%rax, %rbx
	addq	%rax, %rbp
	jmp	.LBB0_184
.LBB0_101:                              #   in Loop: Header=BB0_95 Depth=1
.Ltmp244:
	#DEBUG_VALUE: sparse:j2 <- %R14D
	movq	160(%rsp), %r8          # 8-byte Reload
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	jmp	.LBB0_184
.Ltmp245:
.LBB0_176:                              #   in Loop: Header=BB0_95 Depth=1
	#DEBUG_VALUE: sparse:j2 <- %R14D
	movq	160(%rsp), %r8          # 8-byte Reload
.Ltmp246:
	.p2align	4, 0x90
.LBB0_184:                              # %for.body243.i.i.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	leal	1(%r10), %eax
	subl	%r15d, %eax
	leal	1(%rbp), %edx
	subl	%edx, %eax
	movl	%r14d, %ecx
	subl	%edx, %ecx
	andl	$3, %eax
	je	.LBB0_187
# BB#185:                               # %for.body243.i.i.prol.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	negl	%eax
	.p2align	4, 0x90
.LBB0_186:                              # %for.body243.i.i.prol
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	a(,%rbx,8), %rdx
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movq	%rdx, a(,%rbp,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movl	colidx(,%rbx,4), %edx
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movl	%edx, colidx(,%rbp,4)
.Ltmp247:
	.loc	1 811 5 is_stmt 1 discriminator 1 # cg.c:811:5
	incq	%rbp
	incq	%rbx
	incl	%eax
	jne	.LBB0_186
.Ltmp248:
.LBB0_187:                              # %for.body243.i.i.preheader.split
                                        #   in Loop: Header=BB0_95 Depth=1
	.loc	1 812 14                # cg.c:812:14
	cmpl	$3, %ecx
	jb	.LBB0_130
# BB#188:                               # %for.body243.i.i.preheader.split.split
                                        #   in Loop: Header=BB0_95 Depth=1
	leaq	colidx+12(,%rbx,4), %rax
	leaq	a+24(,%rbx,8), %rcx
	subl	%ebp, %r14d
	leaq	colidx+12(,%rbp,4), %rsi
	leaq	a+24(,%rbp,8), %rbp
.Ltmp249:
	.loc	1 653 3                 # cg.c:653:3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_189:                              # %for.body243.i.i
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp250:
	.loc	1 812 14                # cg.c:812:14
	movq	-24(%rcx,%rbx,8), %rdx
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movq	%rdx, -24(%rbp,%rbx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movl	-12(%rax,%rbx,4), %edx
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movl	%edx, -12(%rsi,%rbx,4)
	.loc	1 812 14 is_stmt 1      # cg.c:812:14
	movq	-16(%rcx,%rbx,8), %rdx
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movq	%rdx, -16(%rbp,%rbx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movl	-8(%rax,%rbx,4), %edx
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movl	%edx, -8(%rsi,%rbx,4)
	.loc	1 812 14 is_stmt 1      # cg.c:812:14
	movq	-8(%rcx,%rbx,8), %rdx
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movq	%rdx, -8(%rbp,%rbx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movl	-4(%rax,%rbx,4), %edx
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movl	%edx, -4(%rsi,%rbx,4)
	.loc	1 812 14 is_stmt 1      # cg.c:812:14
	movq	(%rcx,%rbx,8), %rdx
	.loc	1 812 12 is_stmt 0      # cg.c:812:12
	movq	%rdx, (%rbp,%rbx,8)
	.loc	1 813 19 is_stmt 1      # cg.c:813:19
	movl	(%rax,%rbx,4), %edx
	.loc	1 813 17 is_stmt 0      # cg.c:813:17
	movl	%edx, (%rsi,%rbx,4)
.Ltmp251:
	.loc	1 811 5 is_stmt 1 discriminator 1 # cg.c:811:5
	addq	$4, %rbx
	cmpl	%ebx, %r14d
	jne	.LBB0_189
.Ltmp252:
.LBB0_130:                              # %for.cond217.loopexit.i.i
                                        #   in Loop: Header=BB0_95 Depth=1
	.loc	1 803 3 discriminator 1 # cg.c:803:3
	cmpl	%r8d, %r12d
	jne	.LBB0_95
.Ltmp253:
# BB#131:                               # %for.body263.i.i.preheader
	movq	176(%rsp), %rax         # 8-byte Reload
.Ltmp254:
	.loc	1 818 27                # cg.c:818:27
	subl	iv(%rip), %eax
	.loc	1 818 15 is_stmt 0      # cg.c:818:15
	movl	%eax, rowstr+4(%rip)
.Ltmp255:
	.loc	1 817 3 is_stmt 1 discriminator 1 # cg.c:817:3
	testb	$1, 95(%rsp)            # 1-byte Folded Reload
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_135
# BB#132:                               # %for.body263.i.i.for.body263.i.i_crit_edge.lr.ph
	decl	%ebx
	incq	%rbx
	movl	$2, %ecx
	cmpq	$7, %rbx
	jbe	.LBB0_133
# BB#168:                               # %min.iters.checked552
	addq	$-4, %rdi
	movq	%rbx, %rax
	andq	%rdi, %rax
	andq	%rbx, %rdi
	movl	$2, %ecx
	je	.LBB0_133
.Ltmp256:
# BB#169:                               # %vector.body548.preheader
	leaq	-8(%rdi), %rsi
	movq	%rsi, %rdx
	shrq	$3, %rdx
	xorl	%ecx, %ecx
	btq	$3, %rsi
	jb	.LBB0_171
# BB#170:                               # %vector.body548.prol
.Ltmp257:
	.loc	1 818 17                # cg.c:818:17
	movdqu	rowstr+8(%rip), %xmm0
	movdqu	rowstr+24(%rip), %xmm1
	.loc	1 818 29 is_stmt 0      # cg.c:818:29
	movdqu	iv+4(%rip), %xmm2
	movdqu	iv+20(%rip), %xmm3
	.loc	1 818 27                # cg.c:818:27
	psubd	%xmm2, %xmm0
	psubd	%xmm3, %xmm1
	.loc	1 818 15                # cg.c:818:15
	movdqu	%xmm0, rowstr+8(%rip)
	movdqu	%xmm1, rowstr+24(%rip)
	movl	$8, %ecx
.LBB0_171:                              # %vector.body548.preheader.split
	testq	%rdx, %rdx
	je	.LBB0_173
	.p2align	4, 0x90
.LBB0_172:                              # %vector.body548
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 818 17                # cg.c:818:17
	movdqu	rowstr+8(,%rcx,4), %xmm0
	movdqu	rowstr+24(,%rcx,4), %xmm1
	.loc	1 818 29                # cg.c:818:29
	movdqu	iv+4(,%rcx,4), %xmm2
	movdqu	iv+20(,%rcx,4), %xmm3
	.loc	1 818 27                # cg.c:818:27
	psubd	%xmm2, %xmm0
	psubd	%xmm3, %xmm1
	.loc	1 818 15                # cg.c:818:15
	movdqu	%xmm0, rowstr+8(,%rcx,4)
	movdqu	%xmm1, rowstr+24(,%rcx,4)
	.loc	1 818 17                # cg.c:818:17
	movdqu	rowstr+40(,%rcx,4), %xmm0
	movdqu	rowstr+56(,%rcx,4), %xmm1
	.loc	1 818 29                # cg.c:818:29
	movdqu	iv+36(,%rcx,4), %xmm2
	movdqu	iv+52(,%rcx,4), %xmm3
	.loc	1 818 27                # cg.c:818:27
	psubd	%xmm2, %xmm0
	psubd	%xmm3, %xmm1
	.loc	1 818 15                # cg.c:818:15
	movdqu	%xmm0, rowstr+40(,%rcx,4)
	movdqu	%xmm1, rowstr+56(,%rcx,4)
.Ltmp258:
	.loc	1 817 3 is_stmt 1 discriminator 1 # cg.c:817:3
	addq	$16, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB0_172
.LBB0_173:                              # %middle.block549
	cmpq	%rdi, %rbx
	je	.LBB0_135
# BB#174:
	orq	$2, %rax
	movq	%rax, %rcx
.Ltmp259:
.LBB0_133:                              # %for.body263.i.i.for.body263.i.i_crit_edge.preheader
	.loc	1 818 17                # cg.c:818:17
	addq	$2, %rbp
	.p2align	4, 0x90
.LBB0_134:                              # %for.body263.i.i.for.body263.i.i_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 818 29 is_stmt 0      # cg.c:818:29
	movl	iv-4(,%rcx,4), %eax
	.loc	1 818 15                # cg.c:818:15
	subl	%eax, rowstr(,%rcx,4)
.Ltmp260:
	.loc	1 817 3 is_stmt 1 discriminator 1 # cg.c:817:3
	incq	%rcx
	cmpl	%ecx, %ebp
	jne	.LBB0_134
.Ltmp261:
.LBB0_135:                              # %makea.exit
	#DEBUG_VALUE: main:j <- 0
	movq	$-112000, %rax          # imm = 0xFFFFFFFFFFFE4A80
.Ltmp262:
	.loc	1 230 10                # cg.c:230:10
	movapd	.LCPI0_4(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	.p2align	4, 0x90
.LBB0_136:                              # %vector.body573
                                        # =>This Inner Loop Header: Depth=1
	movapd	%xmm0, x+112000(%rax)
	movapd	%xmm0, x+112016(%rax)
	movapd	%xmm0, x+112032(%rax)
	movapd	%xmm0, x+112048(%rax)
	movapd	%xmm0, x+112064(%rax)
	movapd	%xmm0, x+112080(%rax)
	movapd	%xmm0, x+112096(%rax)
	movapd	%xmm0, x+112112(%rax)
	movapd	%xmm0, x+112128(%rax)
	movapd	%xmm0, x+112144(%rax)
	movapd	%xmm0, x+112160(%rax)
	movapd	%xmm0, x+112176(%rax)
	movapd	%xmm0, x+112192(%rax)
	movapd	%xmm0, x+112208(%rax)
	.loc	1 230 5 is_stmt 0       # cg.c:230:5
	addq	$224, %rax
	jne	.LBB0_136
# BB#137:                               # %for.body33
	.loc	1 230 10                # cg.c:230:10
	movabsq	$4607182418800017408, %r14 # imm = 0x3FF0000000000000
	movq	%r14, x+112000(%rip)
	movb	lastcol(%rip), %al
	andb	$1, %al
	movl	$112000, %eax           # imm = 0x1B580
.Ltmp263:
	.loc	1 232 3 is_stmt 1 discriminator 1 # cg.c:232:3
	movl	$8, %ebx
	cmovneq	%rax, %rbx
	xorl	%ebp, %ebp
.Ltmp264:
	.loc	1 233 10                # cg.c:233:10
	movl	$q, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	.loc	1 234 10                # cg.c:234:10
	movl	$z, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	.loc	1 235 10                # cg.c:235:10
	movl	$r, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	.loc	1 236 10                # cg.c:236:10
	movl	$p, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	leaq	200(%rsp), %rdi
.Ltmp265:
	#DEBUG_VALUE: main:rnorm <- [%RDI+0]
	.loc	1 250 5                 # cg.c:250:5
	callq	conj_grad
.Ltmp266:
	#DEBUG_VALUE: main:norm_temp2 <- 0.000000e+00
	#DEBUG_VALUE: main:norm_temp1 <- 0.000000e+00
	#DEBUG_VALUE: main:j <- 0
	movb	lastcol(%rip), %al
	andb	$1, %al
.Ltmp267:
	.loc	1 260 5 discriminator 1 # cg.c:260:5
	movl	$14000, %ecx            # imm = 0x36B0
	movl	$1, %eax
	cmovneq	%rcx, %rax
	xorpd	%xmm0, %xmm0
.Ltmp268:
	.p2align	4, 0x90
.LBB0_138:                              # %for.body62
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 261 40                # cg.c:261:40
	movsd	z(,%rbp,8), %xmm1       # xmm1 = mem[0],zero
	.loc	1 262 38                # cg.c:262:38
	mulsd	%xmm1, %xmm1
	.loc	1 262 31 is_stmt 0      # cg.c:262:31
	addsd	%xmm1, %xmm0
.Ltmp269:
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	.loc	1 260 5 is_stmt 1 discriminator 1 # cg.c:260:5
	incq	%rbp
	.loc	1 260 19 is_stmt 0 discriminator 1 # cg.c:260:19
	cmpq	%rax, %rbp
	.loc	1 260 5 discriminator 1 # cg.c:260:5
	jl	.LBB0_138
.Ltmp270:
# BB#139:                               # %for.end76
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	.loc	1 265 24 is_stmt 1      # cg.c:265:24
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	.loc	1 265 22 is_stmt 0      # cg.c:265:22
	ucomisd	%xmm1, %xmm1
.Ltmp271:
	.loc	1 230 10 is_stmt 1      # cg.c:230:10
	movaps	.LCPI0_4(%rip), %xmm4   # xmm4 = [1.000000e+00,1.000000e+00]
	jnp	.LBB0_141
.Ltmp272:
# BB#140:                               # %call.sqrt
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	.loc	1 265 22                # cg.c:265:22
	callq	sqrt
.Ltmp273:
	.loc	1 230 10                # cg.c:230:10
	movaps	.LCPI0_4(%rip), %xmm4   # xmm4 = [1.000000e+00,1.000000e+00]
.Ltmp274:
	.loc	1 265 22                # cg.c:265:22
	movapd	%xmm0, %xmm1
.Ltmp275:
.LBB0_141:                              # %for.end76.split
	.loc	1 738 27                # cg.c:738:27
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp276:
	.loc	1 265 22                # cg.c:265:22
	divsd	%xmm1, %xmm0
.Ltmp277:
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	#DEBUG_VALUE: main:j <- 0
	movb	lastcol(%rip), %al
	xorl	%edx, %edx
	andb	$1, %al
.Ltmp278:
	.loc	1 270 5 discriminator 1 # cg.c:270:5
	movl	$14000, %ecx            # imm = 0x36B0
	movl	$1, %eax
	cmovneq	%rcx, %rax
	je	.LBB0_146
.Ltmp279:
# BB#142:                               # %min.iters.checked591
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$14000, %rcx            # imm = 0x36B0
	je	.LBB0_146
.Ltmp280:
# BB#143:                               # %vector.ph595.split
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	movapd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	xorl	%edx, %edx
.Ltmp281:
	.p2align	4, 0x90
.LBB0_144:                              # %vector.body586
                                        # =>This Inner Loop Header: Depth=1
	movapd	z(,%rdx,8), %xmm2
.Ltmp282:
	.loc	1 271 25                # cg.c:271:25
	mulpd	%xmm1, %xmm2
	movapd	z+16(,%rdx,8), %xmm3
	mulpd	%xmm1, %xmm3
	.loc	1 271 12 is_stmt 0      # cg.c:271:12
	movapd	%xmm2, x(,%rdx,8)
	movapd	%xmm3, x+16(,%rdx,8)
	movapd	z+32(,%rdx,8), %xmm2
	.loc	1 271 25                # cg.c:271:25
	mulpd	%xmm1, %xmm2
	movapd	z+48(,%rdx,8), %xmm3
	mulpd	%xmm1, %xmm3
	.loc	1 271 12                # cg.c:271:12
	movapd	%xmm2, x+32(,%rdx,8)
	movapd	%xmm3, x+48(,%rdx,8)
.Ltmp283:
	.loc	1 270 5 is_stmt 1 discriminator 1 # cg.c:270:5
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_144
# BB#145:                               # %middle.block587
	movq	$-112000, %rsi          # imm = 0xFFFFFFFFFFFE4A80
	cmpq	%rcx, %rax
	movq	%rcx, %rdx
	je	.LBB0_147
	.p2align	4, 0x90
.LBB0_146:                              # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	movsd	z(,%rdx,8), %xmm1       # xmm1 = mem[0],zero
.Ltmp284:
	.loc	1 271 25                # cg.c:271:25
	mulsd	%xmm0, %xmm1
	.loc	1 271 12 is_stmt 0      # cg.c:271:12
	movsd	%xmm1, x(,%rdx,8)
.Ltmp285:
	.loc	1 270 5 is_stmt 1 discriminator 1 # cg.c:270:5
	incq	%rdx
	movq	$-112000, %rsi          # imm = 0xFFFFFFFFFFFE4A80
	.loc	1 270 19 is_stmt 0 discriminator 1 # cg.c:270:19
	cmpq	%rax, %rdx
	.loc	1 270 5 discriminator 1 # cg.c:270:5
	jl	.LBB0_146
.Ltmp286:
	.p2align	4, 0x90
.LBB0_147:                              # %vector.body610
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 280 10 is_stmt 1      # cg.c:280:10
	movaps	%xmm4, x+112000(%rsi)
	movaps	%xmm4, x+112016(%rsi)
	movaps	%xmm4, x+112032(%rsi)
	movaps	%xmm4, x+112048(%rsi)
	movaps	%xmm4, x+112064(%rsi)
	movaps	%xmm4, x+112080(%rsi)
	movaps	%xmm4, x+112096(%rsi)
	movaps	%xmm4, x+112112(%rsi)
	movaps	%xmm4, x+112128(%rsi)
	movaps	%xmm4, x+112144(%rsi)
	movaps	%xmm4, x+112160(%rsi)
	movaps	%xmm4, x+112176(%rsi)
	movaps	%xmm4, x+112192(%rsi)
	movaps	%xmm4, x+112208(%rsi)
	.loc	1 280 5 is_stmt 0       # cg.c:280:5
	addq	$224, %rsi
	jne	.LBB0_147
# BB#148:                               # %for.body96
	.loc	1 280 10                # cg.c:280:10
	movq	%r14, x+112000(%rip)
.Ltmp287:
	#DEBUG_VALUE: main:zeta <- 0.000000e+00
	.loc	1 285 3 is_stmt 1       # cg.c:285:3
	xorl	%edi, %edi
	callq	timer_stop
	.loc	1 287 53                # cg.c:287:53
	xorl	%edi, %edi
	callq	timer_read
	.loc	1 287 3 is_stmt 0 discriminator 1 # cg.c:287:3
	movl	$.L.str.9, %edi
	movb	$1, %al
	callq	printf
	movl	$1, %ebx
	.loc	1 289 3 is_stmt 1       # cg.c:289:3
	movl	$1, %edi
	callq	timer_start
.Ltmp288:
	#DEBUG_VALUE: main:it <- 1
	leaq	200(%rsp), %r14
.Ltmp289:
	.loc	1 312 5 discriminator 1 # cg.c:312:5
	movl	$14000, %ebp            # imm = 0x36B0
.Ltmp290:
	.p2align	4, 0x90
.LBB0_149:                              # %for.body106
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
                                        #     Child Loop BB0_162 Depth 2
                                        #     Child Loop BB0_164 Depth 2
	.loc	1 300 9                 # cg.c:300:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_151
# BB#150:                               # %if.then107
                                        #   in Loop: Header=BB0_149 Depth=1
.Ltmp291:
	.loc	1 300 18 is_stmt 0 discriminator 1 # cg.c:300:18
	movl	$2, %edi
	callq	timer_start
.Ltmp292:
.LBB0_151:                              # %if.end108
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:rnorm <- [%R14+0]
	.loc	1 301 5 is_stmt 1       # cg.c:301:5
	movq	%r14, %rdi
	callq	conj_grad
	.loc	1 302 9                 # cg.c:302:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_153
.Ltmp293:
# BB#152:                               # %if.then110
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:rnorm <- [%R14+0]
	.loc	1 302 18 is_stmt 0 discriminator 1 # cg.c:302:18
	movl	$2, %edi
	callq	timer_stop
.Ltmp294:
.LBB0_153:                              # %for.cond112.preheader
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:rnorm <- [%R14+0]
	movb	lastcol(%rip), %al
	andb	$1, %al
.Ltmp295:
	.loc	1 312 5 is_stmt 1 discriminator 1 # cg.c:312:5
	movl	$1, %eax
	cmovneq	%rbp, %rax
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
.Ltmp296:
	.p2align	4, 0x90
.LBB0_154:                              # %for.body116
                                        #   Parent Loop BB0_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 314 37                # cg.c:314:37
	movsd	z(,%rcx,8), %xmm0       # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movhpd	x(,%rcx,8), %xmm1       # xmm1 = xmm1[0],mem[0]
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	.loc	1 314 31 is_stmt 0      # cg.c:314:31
	addpd	%xmm0, %xmm2
.Ltmp297:
	.loc	1 312 5 is_stmt 1 discriminator 1 # cg.c:312:5
	incq	%rcx
	.loc	1 312 19 is_stmt 0 discriminator 1 # cg.c:312:19
	cmpq	%rax, %rcx
	.loc	1 312 5 discriminator 1 # cg.c:312:5
	jl	.LBB0_154
.Ltmp298:
# BB#155:                               # %for.end131
                                        #   in Loop: Header=BB0_149 Depth=1
	.loc	1 317 24 is_stmt 1      # cg.c:317:24
	sqrtsd	%xmm2, %xmm3
	.loc	1 317 22 is_stmt 0      # cg.c:317:22
	ucomisd	%xmm3, %xmm3
	jnp	.LBB0_157
# BB#156:                               # %call.sqrt462
                                        #   in Loop: Header=BB0_149 Depth=1
	movapd	%xmm2, %xmm0
	movapd	%xmm2, 96(%rsp)         # 16-byte Spill
	callq	sqrt
	movapd	96(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm0, %xmm3
.LBB0_157:                              # %for.end131.split
                                        #   in Loop: Header=BB0_149 Depth=1
	.loc	1 319 24 is_stmt 1      # cg.c:319:24
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
.Ltmp299:
	.loc	1 738 27                # cg.c:738:27
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp300:
	.loc	1 319 24                # cg.c:319:24
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	.loc	1 319 18 is_stmt 0      # cg.c:319:18
	addsd	.LCPI0_5(%rip), %xmm1
.Ltmp301:
	#DEBUG_VALUE: main:zeta <- %XMM1
	.loc	1 320 9 is_stmt 1       # cg.c:320:9
	cmpl	$1, %ebx
	jne	.LBB0_159
.Ltmp302:
# BB#158:                               # %if.then137
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:zeta <- %XMM1
	.loc	1 321 7                 # cg.c:321:7
	movl	$.Lstr.40, %edi
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	%xmm3, 112(%rsp)        # 8-byte Spill
	callq	puts
	movsd	112(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp303:
.LBB0_159:                              # %if.end139
                                        #   in Loop: Header=BB0_149 Depth=1
	.loc	1 738 27                # cg.c:738:27
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp304:
	.loc	1 317 22                # cg.c:317:22
	divsd	%xmm3, %xmm0
.Ltmp305:
	#DEBUG_VALUE: main:norm_temp2 <- %XMM0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
.Ltmp306:
	#DEBUG_VALUE: main:norm_temp2 <- [%RSP+112]
	.loc	1 322 50                # cg.c:322:50
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp307:
	#DEBUG_VALUE: main:rnorm <- %XMM0
	.loc	1 322 5 is_stmt 0       # cg.c:322:5
	movl	$.L.str.11, %edi
	movb	$2, %al
	movl	%ebx, %esi
	callq	printf
.Ltmp308:
	movaps	112(%rsp), %xmm3        # 16-byte Reload
.Ltmp309:
	#DEBUG_VALUE: main:norm_temp2 <- %XMM3
	#DEBUG_VALUE: main:j <- 0
	movb	lastcol(%rip), %al
	andb	$1, %al
.Ltmp310:
	.loc	1 327 5 is_stmt 1 discriminator 1 # cg.c:327:5
	movl	$1, %eax
	cmovneq	%rbp, %rax
	movl	$0, %edx
	je	.LBB0_164
.Ltmp311:
# BB#160:                               # %min.iters.checked628
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:norm_temp2 <- %XMM3
	#DEBUG_VALUE: main:rnorm <- %XMM0
	movq	%rax, %rcx
	andq	$14000, %rcx            # imm = 0x36B0
	movl	$0, %edx
	je	.LBB0_164
.Ltmp312:
# BB#161:                               # %vector.ph632.split
                                        #   in Loop: Header=BB0_149 Depth=1
	#DEBUG_VALUE: main:rnorm <- %XMM0
	#DEBUG_VALUE: main:norm_temp2 <- %XMM3
	movaps	%xmm3, %xmm0
.Ltmp313:
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	xorl	%edx, %edx
.Ltmp314:
	.p2align	4, 0x90
.LBB0_162:                              # %vector.body623
                                        #   Parent Loop BB0_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	z(,%rdx,8), %xmm1
.Ltmp315:
	.loc	1 328 25                # cg.c:328:25
	mulpd	%xmm0, %xmm1
	movapd	z+16(,%rdx,8), %xmm2
	mulpd	%xmm0, %xmm2
	.loc	1 328 12 is_stmt 0      # cg.c:328:12
	movapd	%xmm1, x(,%rdx,8)
	movapd	%xmm2, x+16(,%rdx,8)
	movapd	z+32(,%rdx,8), %xmm1
	.loc	1 328 25                # cg.c:328:25
	mulpd	%xmm0, %xmm1
	movapd	z+48(,%rdx,8), %xmm2
	mulpd	%xmm0, %xmm2
	.loc	1 328 12                # cg.c:328:12
	movapd	%xmm1, x+32(,%rdx,8)
	movapd	%xmm2, x+48(,%rdx,8)
.Ltmp316:
	.loc	1 327 5 is_stmt 1 discriminator 1 # cg.c:327:5
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_162
# BB#163:                               # %middle.block624
                                        #   in Loop: Header=BB0_149 Depth=1
	cmpq	%rcx, %rax
	movq	%rcx, %rdx
	je	.LBB0_165
	.p2align	4, 0x90
.LBB0_164:                              # %for.body145
                                        #   Parent Loop BB0_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	z(,%rdx,8), %xmm0       # xmm0 = mem[0],zero
.Ltmp317:
	.loc	1 328 25                # cg.c:328:25
	mulsd	%xmm3, %xmm0
	.loc	1 328 12 is_stmt 0      # cg.c:328:12
	movsd	%xmm0, x(,%rdx,8)
.Ltmp318:
	.loc	1 327 5 is_stmt 1 discriminator 1 # cg.c:327:5
	incq	%rdx
	.loc	1 327 19 is_stmt 0 discriminator 1 # cg.c:327:19
	cmpq	%rax, %rdx
	.loc	1 327 5 discriminator 1 # cg.c:327:5
	jl	.LBB0_164
.Ltmp319:
.LBB0_165:                              # %for.inc154
                                        #   in Loop: Header=BB0_149 Depth=1
	.loc	1 296 31 is_stmt 1 discriminator 2 # cg.c:296:31
	incl	%ebx
.Ltmp320:
	#DEBUG_VALUE: main:it <- %EBX
	.loc	1 296 3 is_stmt 0 discriminator 1 # cg.c:296:3
	cmpl	$16, %ebx
	jne	.LBB0_149
.Ltmp321:
# BB#166:                               # %for.end156
	#DEBUG_VALUE: main:it <- %EBX
	.loc	1 332 3 is_stmt 1       # cg.c:332:3
	movl	$1, %ebx
.Ltmp322:
	movl	$1, %edi
	callq	timer_stop
	.loc	1 338 7                 # cg.c:338:7
	movl	$1, %edi
	callq	timer_read
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
.Ltmp323:
	#DEBUG_VALUE: main:t <- [%RSP+112]
	.loc	1 340 3                 # cg.c:340:3
	movl	$.Lstr.36, %edi
	callq	puts
.Ltmp324:
	#DEBUG_VALUE: main:epsilon <- 1.000000e-10
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
.Ltmp325:
	.loc	1 344 21                # cg.c:344:21
	addsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	.loc	1 344 11 is_stmt 0      # cg.c:344:11
	andpd	.LCPI0_7(%rip), %xmm1
	.loc	1 344 42                # cg.c:344:42
	divsd	.LCPI0_8(%rip), %xmm1
.Ltmp326:
	#DEBUG_VALUE: main:err <- %XMM1
	.loc	1 345 13 is_stmt 1      # cg.c:345:13
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_167
.Ltmp327:
# BB#190:                               # %if.else171
	#DEBUG_VALUE: main:err <- %XMM1
	#DEBUG_VALUE: main:verified <- 0
	.loc	1 352 7                 # cg.c:352:7
	movl	$.Lstr.37, %edi
	callq	puts
	.loc	1 353 7                 # cg.c:353:7
	movl	$.L.str.17, %edi
	movb	$1, %al
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	1 354 7                 # cg.c:354:7
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.18, %edi
	movb	$1, %al
	callq	printf
	xorl	%ebx, %ebx
	jmp	.LBB0_191
.Ltmp328:
.LBB0_167:                              # %if.then167
	#DEBUG_VALUE: main:err <- %XMM1
	#DEBUG_VALUE: main:verified <- 1
	.loc	1 347 7                 # cg.c:347:7
	movl	$.Lstr.39, %edi
	movapd	%xmm1, 176(%rsp)        # 16-byte Spill
	callq	puts
	.loc	1 348 7                 # cg.c:348:7
	movl	$.L.str.14, %edi
	movb	$1, %al
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	1 349 7                 # cg.c:349:7
	movl	$.L.str.15, %edi
	movb	$1, %al
	movapd	176(%rsp), %xmm0        # 16-byte Reload
	callq	printf
.Ltmp329:
.LBB0_191:                              # %if.end179
	#DEBUG_VALUE: main:err <- %XMM1
	xorpd	%xmm1, %xmm1
.Ltmp330:
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.loc	1 362 7                 # cg.c:362:7
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_192
	jnp	.LBB0_193
.LBB0_192:                              # %if.then182
.Ltmp331:
	.loc	1 366 29                # cg.c:366:29
	movsd	.LCPI0_10(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	.loc	1 366 33 is_stmt 0      # cg.c:366:33
	divsd	.LCPI0_11(%rip), %xmm1
.Ltmp332:
	#DEBUG_VALUE: main:mflops <- %XMM1
.LBB0_193:                              # %if.end186
	.loc	1 371 3 is_stmt 1       # cg.c:371:3
	movl	%ebx, 8(%rsp)
	movq	$.L.str.27, 80(%rsp)
	movq	$.L.str.25, 72(%rsp)
	movq	$.L.str.25, 64(%rsp)
	movq	$.L.str.26, 56(%rsp)
	movq	$.L.str.25, 48(%rsp)
	movq	$.L.str.25, 40(%rsp)
	movq	$.L.str.25, 32(%rsp)
	movq	$.L.str.24, 24(%rsp)
	movq	$.L.str.23, 16(%rsp)
	movq	$.L.str.22, (%rsp)
	movl	$.L.str.21, %edi
	movl	$65, %esi
	movl	$14000, %edx            # imm = 0x36B0
	movl	$0, %ecx
	xorl	%r8d, %r8d
	movl	$15, %r9d
	callq	print_results
	movb	timeron(%rip), %al
	andb	$1, %al
	je	.LBB0_195
# BB#194:                               # %for.inc221.2
.Ltmp333:
	.loc	1 381 12                # cg.c:381:12
	movl	$1, %edi
	callq	timer_read
.Ltmp334:
	#DEBUG_VALUE: main:tmax <- %XMM0
	.loc	1 382 14                # cg.c:382:14
	xorpd	%xmm1, %xmm1
.Ltmp335:
	#DEBUG_VALUE: main:tmax <- 1.000000e+00
	.loc	1 382 9 is_stmt 0       # cg.c:382:9
	movapd	%xmm0, %xmm2
	cmpeqsd	%xmm1, %xmm2
.Ltmp336:
	.loc	1 738 27 is_stmt 1      # cg.c:738:27
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
.Ltmp337:
	.loc	1 382 9                 # cg.c:382:9
	andpd	%xmm2, %xmm1
	andnpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm2
	movsd	%xmm2, 96(%rsp)         # 8-byte Spill
	.loc	1 383 5                 # cg.c:383:5
	movl	$.Lstr.38, %edi
	callq	puts
.Ltmp338:
	#DEBUG_VALUE: main:i <- 0
	.loc	1 385 11                # cg.c:385:11
	xorl	%edi, %edi
	callq	timer_read
.Ltmp339:
	#DEBUG_VALUE: main:t <- %XMM0
	.loc	1 387 9                 # cg.c:387:9
	movl	$.L.str.29, %edi
	movl	$.L.str.2, %esi
	movb	$1, %al
	callq	printf
.Ltmp340:
	.loc	1 385 11                # cg.c:385:11
	movl	$1, %edi
	callq	timer_read
.Ltmp341:
	.loc	1 389 60                # cg.c:389:60
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_12(%rip), %xmm1
	.loc	1 389 66 is_stmt 0      # cg.c:389:66
	divsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	.loc	1 389 9                 # cg.c:389:9
	movl	$.L.str.30, %edi
	movl	$.L.str.3, %esi
	movb	$2, %al
	callq	printf
.Ltmp342:
	.loc	1 385 11 is_stmt 1      # cg.c:385:11
	movl	$2, %edi
	callq	timer_read
.Ltmp343:
	.loc	1 389 60                # cg.c:389:60
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_12(%rip), %xmm1
	.loc	1 389 66 is_stmt 0      # cg.c:389:66
	divsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	.loc	1 389 9                 # cg.c:389:9
	movl	$.L.str.30, %edi
	movl	$.L.str.4, %esi
	movb	$2, %al
	callq	printf
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.Ltmp344:
	.loc	1 391 20 is_stmt 1      # cg.c:391:20
	movapd	%xmm1, %xmm0
	subsd	112(%rsp), %xmm0        # 8-byte Folded Reload
.Ltmp345:
	.loc	1 389 60                # cg.c:389:60
	movsd	.LCPI0_12(%rip), %xmm2  # xmm2 = mem[0],zero
.Ltmp346:
	.loc	1 392 64                # cg.c:392:64
	mulsd	%xmm0, %xmm2
	.loc	1 392 70 is_stmt 0      # cg.c:392:70
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	.loc	1 392 11                # cg.c:392:11
	movl	$.L.str.31, %edi
	movl	$.L.str.32, %esi
	movb	$2, %al
	callq	printf
.Ltmp347:
.LBB0_195:                              # %if.end224
	.loc	1 399 1 is_stmt 1       # cg.c:399:1
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_84:                               # %if.then184.i.i
.Ltmp348:
	.loc	1 787 11                # cg.c:787:11
	movl	$.L.str.35, %edi
	xorl	%eax, %eax
	movq	136(%rsp), %rsi         # 8-byte Reload
	callq	printf
	.loc	1 788 11                # cg.c:788:11
	movl	$1, %edi
	callq	exit
.Ltmp349:
.LBB0_196:                              # %if.then.i5.i
	#DEBUG_VALUE: sparse:nza <- %EBP
	.loc	1 718 5                 # cg.c:718:5
	movl	$.Lstr.41, %edi
	callq	puts
	.loc	1 719 5                 # cg.c:719:5
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	printf
	.loc	1 720 5                 # cg.c:720:5
	movl	$1, %edi
	callq	exit
.Ltmp350:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.p2align	4, 0x90
	.type	conj_grad,@function
conj_grad:                              # @conj_grad
.Lfunc_begin1:
	.loc	1 415 0                 # cg.c:415:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp352:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp353:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp354:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp355:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp356:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp357:
	.cfi_def_cfa_offset 80
.Ltmp358:
	.cfi_offset %rbx, -56
.Ltmp359:
	.cfi_offset %r12, -48
.Ltmp360:
	.cfi_offset %r13, -40
.Ltmp361:
	.cfi_offset %r14, -32
.Ltmp362:
	.cfi_offset %r15, -24
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
.Ltmp364:
	#DEBUG_VALUE: conj_grad:j <- 0
	#DEBUG_VALUE: conj_grad:rho <- 0.000000e+00
	#DEBUG_VALUE: conj_grad:cgitmax <- 25
	movb	naa(%rip), %al
	andb	$1, %al
.Ltmp365:
	.loc	1 425 3 prologue_end discriminator 1 # cg.c:425:3
	movl	$112008, %eax           # imm = 0x1B588
	movl	$8, %ebx
	cmovneq	%rax, %rbx
	xorl	%ebp, %ebp
.Ltmp366:
	.loc	1 426 10                # cg.c:426:10
	movl	$q, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	.loc	1 427 10                # cg.c:427:10
	movl	$z, %edi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	.loc	1 428 10                # cg.c:428:10
	movl	$r, %edi
	movl	$x, %esi
	movq	%rbx, %rdx
	callq	memcpy
	.loc	1 429 10                # cg.c:429:10
	movl	$p, %edi
	movl	$x, %esi
	movq	%rbx, %rdx
	callq	memcpy
	movb	lastcol(%rip), %r9b
	andb	$1, %r9b
.Ltmp367:
	.loc	1 436 3 discriminator 1 # cg.c:436:3
	movl	$14000, %ecx            # imm = 0x36B0
	movl	$1, %eax
	cmovneq	%rcx, %rax
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB1_1:                                # %for.body14
                                        # =>This Inner Loop Header: Depth=1
.Ltmp368:
	.loc	1 437 17                # cg.c:437:17
	movsd	r(,%rbp,8), %xmm0       # xmm0 = mem[0],zero
	.loc	1 437 21 is_stmt 0      # cg.c:437:21
	mulsd	%xmm0, %xmm0
	.loc	1 437 15                # cg.c:437:15
	addsd	%xmm0, %xmm2
.Ltmp369:
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	.loc	1 436 3 is_stmt 1 discriminator 1 # cg.c:436:3
	incq	%rbp
	.loc	1 436 17 is_stmt 0 discriminator 1 # cg.c:436:17
	cmpq	%rax, %rbp
	.loc	1 436 3 discriminator 1 # cg.c:436:3
	jl	.LBB1_1
.Ltmp370:
# BB#2:                                 # %for.cond23.preheader
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	movb	lastrow(%rip), %cl
	andb	$1, %cl
.Ltmp371:
	.loc	1 445 3 is_stmt 1 discriminator 1 # cg.c:445:3
	movl	$14000, %ecx            # imm = 0x36B0
	movl	$1, %r12d
	movl	$1, %r13d
	cmovneq	%rcx, %r13
.Ltmp372:
	.loc	1 460 16                # cg.c:460:16
	movl	rowstr(%rip), %r11d
.Ltmp373:
	.loc	1 445 3 discriminator 1 # cg.c:445:3
	testb	%r9b, %r9b
	cmovneq	%rcx, %r12
.Ltmp374:
	.loc	1 527 5 discriminator 1 # cg.c:527:5
	movq	%r12, 8(%rsp)           # 8-byte Spill
	andl	$14000, %r12d           # imm = 0x36B0
	movl	$1, %r15d
	xorl	%r10d, %r10d
.Ltmp375:
	.loc	1 461 19                # cg.c:461:19
	xorpd	%xmm0, %xmm0
.Ltmp376:
	.p2align	4, 0x90
.LBB1_3:                                # %for.cond26.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_24 Depth 2
	movapd	%xmm2, %xmm1
	.loc	1 460 16                # cg.c:460:16
	movl	%r11d, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_4:                                # %for.body30
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
	movq	%rbx, %rdx
	movl	%esi, %edi
.Ltmp377:
	.loc	1 458 5 discriminator 1 # cg.c:458:5
	leaq	1(%rdx), %rbx
.Ltmp378:
	#DEBUG_VALUE: conj_grad:sum <- 0.000000e+00
	.loc	1 460 31 discriminator 1 # cg.c:460:31
	movl	rowstr+4(,%rdx,4), %esi
	xorpd	%xmm2, %xmm2
.Ltmp379:
	#DEBUG_VALUE: conj_grad:k <- %EDI
	.loc	1 460 7 is_stmt 0 discriminator 1 # cg.c:460:7
	cmpl	%esi, %edi
	xorpd	%xmm3, %xmm3
	jge	.LBB1_10
.Ltmp380:
# BB#5:                                 # %for.body38.lr.ph
                                        #   in Loop: Header=BB1_4 Depth=2
	#DEBUG_VALUE: conj_grad:k <- %EDI
	movslq	%esi, %rbp
	movslq	%edi, %rcx
	movl	%esi, %r8d
	subl	%edi, %r8d
	leaq	-1(%rbp), %r14
	xorpd	%xmm3, %xmm3
	testb	$1, %r8b
	jne	.LBB1_7
.Ltmp381:
# BB#6:                                 #   in Loop: Header=BB1_4 Depth=2
	#DEBUG_VALUE: conj_grad:k <- %EDI
	movq	%rcx, %rdi
.Ltmp382:
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_7:                                # %for.body38.prol
                                        #   in Loop: Header=BB1_4 Depth=2
.Ltmp383:
	#DEBUG_VALUE: conj_grad:k <- %EDI
	.loc	1 461 21 is_stmt 1      # cg.c:461:21
	movsd	a(,%rcx,8), %xmm3       # xmm3 = mem[0],zero
	.loc	1 461 26 is_stmt 0      # cg.c:461:26
	movslq	colidx(,%rcx,4), %rdi
.Ltmp384:
	.loc	1 461 25                # cg.c:461:25
	mulsd	p(,%rdi,8), %xmm3
	.loc	1 461 19                # cg.c:461:19
	addsd	%xmm0, %xmm3
.Ltmp385:
	#DEBUG_VALUE: conj_grad:sum <- %XMM3
	.loc	1 460 7 is_stmt 1 discriminator 1 # cg.c:460:7
	leaq	1(%rcx), %rdi
.Ltmp386:
.LBB1_8:                                # %for.body38.lr.ph.split
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpq	%rcx, %r14
	je	.LBB1_10
	.p2align	4, 0x90
.LBB1_9:                                # %for.body38
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp387:
	.loc	1 461 21                # cg.c:461:21
	movsd	a(,%rdi,8), %xmm4       # xmm4 = mem[0],zero
	.loc	1 461 26 is_stmt 0      # cg.c:461:26
	movslq	colidx(,%rdi,4), %rcx
	.loc	1 461 25                # cg.c:461:25
	mulsd	p(,%rcx,8), %xmm4
	.loc	1 461 19                # cg.c:461:19
	addsd	%xmm3, %xmm4
.Ltmp388:
	#DEBUG_VALUE: conj_grad:sum <- %XMM4
	.loc	1 461 21                # cg.c:461:21
	movsd	a+8(,%rdi,8), %xmm3     # xmm3 = mem[0],zero
	.loc	1 461 26                # cg.c:461:26
	movslq	colidx+4(,%rdi,4), %rcx
	.loc	1 461 25                # cg.c:461:25
	mulsd	p(,%rcx,8), %xmm3
	.loc	1 461 19                # cg.c:461:19
	addsd	%xmm4, %xmm3
.Ltmp389:
	.loc	1 460 7 is_stmt 1 discriminator 1 # cg.c:460:7
	addq	$2, %rdi
	.loc	1 460 29 is_stmt 0 discriminator 1 # cg.c:460:29
	cmpq	%rbp, %rdi
	.loc	1 460 7 discriminator 1 # cg.c:460:7
	jl	.LBB1_9
.Ltmp390:
.LBB1_10:                               # %for.end49
                                        #   in Loop: Header=BB1_4 Depth=2
	.loc	1 463 12 is_stmt 1      # cg.c:463:12
	movsd	%xmm3, q(,%rdx,8)
.Ltmp391:
	.loc	1 458 19 discriminator 1 # cg.c:458:19
	cmpq	%r13, %rbx
	movl	$0, %ecx
	jl	.LBB1_4
.Ltmp392:
	.p2align	4, 0x90
.LBB1_11:                               # %for.body59
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 509 15                # cg.c:509:15
	movsd	p(,%rcx,8), %xmm3       # xmm3 = mem[0],zero
	.loc	1 509 19 is_stmt 0      # cg.c:509:19
	mulsd	q(,%rcx,8), %xmm3
	.loc	1 509 13                # cg.c:509:13
	addsd	%xmm3, %xmm2
.Ltmp393:
	#DEBUG_VALUE: conj_grad:d <- %XMM2
	.loc	1 508 5 is_stmt 1 discriminator 1 # cg.c:508:5
	incq	%rcx
	.loc	1 508 19 is_stmt 0 discriminator 1 # cg.c:508:19
	cmpq	%rax, %rcx
	.loc	1 508 5 discriminator 1 # cg.c:508:5
	jl	.LBB1_11
.Ltmp394:
# BB#12:                                # %for.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:d <- %XMM2
	.loc	1 515 17 is_stmt 1      # cg.c:515:17
	movapd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
.Ltmp395:
	#DEBUG_VALUE: conj_grad:alpha <- %XMM3
	#DEBUG_VALUE: conj_grad:j <- 0
	#DEBUG_VALUE: conj_grad:rho <- 0.000000e+00
	.loc	1 527 5 discriminator 1 # cg.c:527:5
	testb	%r9b, %r9b
	movl	$0, %edx
	je	.LBB1_17
.Ltmp396:
# BB#13:                                # %min.iters.checked80
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:d <- %XMM2
	#DEBUG_VALUE: conj_grad:alpha <- %XMM3
	testq	%r12, %r12
	movl	$0, %edx
	je	.LBB1_17
.Ltmp397:
# BB#14:                                # %vector.ph84.split
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:alpha <- %XMM3
	#DEBUG_VALUE: conj_grad:d <- %XMM2
	movapd	%xmm3, %xmm2
.Ltmp398:
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	xorl	%edx, %edx
.Ltmp399:
	.p2align	4, 0x90
.LBB1_15:                               # %vector.body75
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	p(,%rdx,8), %xmm4
.Ltmp400:
	.loc	1 528 26                # cg.c:528:26
	mulpd	%xmm2, %xmm4
	.loc	1 528 19 is_stmt 0      # cg.c:528:19
	addpd	z(,%rdx,8), %xmm4
	.loc	1 528 12                # cg.c:528:12
	movapd	%xmm4, z(,%rdx,8)
	.loc	1 529 14 is_stmt 1      # cg.c:529:14
	movapd	r(,%rdx,8), %xmm4
	movapd	q(,%rdx,8), %xmm5
	.loc	1 529 26 is_stmt 0      # cg.c:529:26
	mulpd	%xmm2, %xmm5
	.loc	1 529 19                # cg.c:529:19
	subpd	%xmm5, %xmm4
	.loc	1 529 12                # cg.c:529:12
	movapd	%xmm4, r(,%rdx,8)
	movapd	p+16(,%rdx,8), %xmm4
	.loc	1 528 26 is_stmt 1      # cg.c:528:26
	mulpd	%xmm2, %xmm4
	.loc	1 528 19 is_stmt 0      # cg.c:528:19
	addpd	z+16(,%rdx,8), %xmm4
	.loc	1 528 12                # cg.c:528:12
	movapd	%xmm4, z+16(,%rdx,8)
	.loc	1 529 14 is_stmt 1      # cg.c:529:14
	movapd	r+16(,%rdx,8), %xmm4
	movapd	q+16(,%rdx,8), %xmm5
	.loc	1 529 26 is_stmt 0      # cg.c:529:26
	mulpd	%xmm2, %xmm5
	.loc	1 529 19                # cg.c:529:19
	subpd	%xmm5, %xmm4
	.loc	1 529 12                # cg.c:529:12
	movapd	%xmm4, r+16(,%rdx,8)
.Ltmp401:
	.loc	1 527 5 is_stmt 1 discriminator 1 # cg.c:527:5
	addq	$4, %rdx
	cmpq	%rdx, %r12
	jne	.LBB1_15
# BB#16:                                # %middle.block76
                                        #   in Loop: Header=BB1_3 Depth=1
	xorpd	%xmm2, %xmm2
	cmpq	%r12, 8(%rsp)           # 8-byte Folded Reload
	movq	%r12, %rdx
	movl	$0, %ecx
	je	.LBB1_18
	.p2align	4, 0x90
.LBB1_17:                               # %for.body73
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	p(,%rdx,8), %xmm2       # xmm2 = mem[0],zero
.Ltmp402:
	.loc	1 528 26                # cg.c:528:26
	mulsd	%xmm3, %xmm2
	.loc	1 528 19 is_stmt 0      # cg.c:528:19
	addsd	z(,%rdx,8), %xmm2
	.loc	1 528 12                # cg.c:528:12
	movsd	%xmm2, z(,%rdx,8)
	.loc	1 529 14 is_stmt 1      # cg.c:529:14
	movsd	r(,%rdx,8), %xmm2       # xmm2 = mem[0],zero
	movsd	q(,%rdx,8), %xmm4       # xmm4 = mem[0],zero
	.loc	1 529 26 is_stmt 0      # cg.c:529:26
	mulsd	%xmm3, %xmm4
	.loc	1 529 19                # cg.c:529:19
	subsd	%xmm4, %xmm2
	.loc	1 529 12                # cg.c:529:12
	movsd	%xmm2, r(,%rdx,8)
.Ltmp403:
	.loc	1 527 5 is_stmt 1 discriminator 1 # cg.c:527:5
	incq	%rdx
	xorpd	%xmm2, %xmm2
	.loc	1 527 19 is_stmt 0 discriminator 1 # cg.c:527:19
	cmpq	%rax, %rdx
	movl	$0, %ecx
	.loc	1 527 5 discriminator 1 # cg.c:527:5
	jl	.LBB1_17
.Ltmp404:
	.p2align	4, 0x90
.LBB1_18:                               # %for.body97
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 537 19 is_stmt 1      # cg.c:537:19
	movsd	r(,%rcx,8), %xmm3       # xmm3 = mem[0],zero
	.loc	1 537 23 is_stmt 0      # cg.c:537:23
	mulsd	%xmm3, %xmm3
	.loc	1 537 17                # cg.c:537:17
	addsd	%xmm3, %xmm2
.Ltmp405:
	#DEBUG_VALUE: conj_grad:rho0 <- %XMM2
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	.loc	1 536 5 is_stmt 1 discriminator 1 # cg.c:536:5
	incq	%rcx
	.loc	1 536 19 is_stmt 0 discriminator 1 # cg.c:536:19
	cmpq	%rax, %rcx
	.loc	1 536 5 discriminator 1 # cg.c:536:5
	jl	.LBB1_18
.Ltmp406:
# BB#19:                                # %for.end106
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	#DEBUG_VALUE: conj_grad:rho0 <- %XMM2
	.loc	1 543 16 is_stmt 1      # cg.c:543:16
	movapd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
.Ltmp407:
	#DEBUG_VALUE: conj_grad:beta <- %XMM3
	#DEBUG_VALUE: conj_grad:j <- 0
	.loc	1 548 5 discriminator 1 # cg.c:548:5
	testb	%r9b, %r9b
	movl	$0, %ecx
	je	.LBB1_24
.Ltmp408:
# BB#20:                                # %min.iters.checked
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:rho0 <- %XMM2
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	#DEBUG_VALUE: conj_grad:beta <- %XMM3
	testq	%r12, %r12
	movl	$0, %ecx
	je	.LBB1_24
.Ltmp409:
# BB#21:                                # %vector.ph.split
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: conj_grad:beta <- %XMM3
	#DEBUG_VALUE: conj_grad:rho <- %XMM2
	#DEBUG_VALUE: conj_grad:rho0 <- %XMM2
	movapd	%xmm3, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	xorl	%edx, %edx
.Ltmp410:
	.p2align	4, 0x90
.LBB1_22:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	p(,%rdx,8), %xmm4
.Ltmp411:
	.loc	1 549 25                # cg.c:549:25
	mulpd	%xmm1, %xmm4
	movapd	p+16(,%rdx,8), %xmm5
	mulpd	%xmm1, %xmm5
	.loc	1 549 19 is_stmt 0      # cg.c:549:19
	addpd	r(,%rdx,8), %xmm4
	addpd	r+16(,%rdx,8), %xmm5
	.loc	1 549 12                # cg.c:549:12
	movapd	%xmm4, p(,%rdx,8)
	movapd	%xmm5, p+16(,%rdx,8)
	movapd	p+32(,%rdx,8), %xmm4
	.loc	1 549 25                # cg.c:549:25
	mulpd	%xmm1, %xmm4
	movapd	p+48(,%rdx,8), %xmm5
	mulpd	%xmm1, %xmm5
	.loc	1 549 19                # cg.c:549:19
	addpd	r+32(,%rdx,8), %xmm4
	addpd	r+48(,%rdx,8), %xmm5
	.loc	1 549 12                # cg.c:549:12
	movapd	%xmm4, p+32(,%rdx,8)
	movapd	%xmm5, p+48(,%rdx,8)
.Ltmp412:
	.loc	1 548 5 is_stmt 1 discriminator 1 # cg.c:548:5
	addq	$8, %rdx
	cmpq	%rdx, %r12
	jne	.LBB1_22
# BB#23:                                # %middle.block
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	%r12, 8(%rsp)           # 8-byte Folded Reload
	movq	%r12, %rcx
	je	.LBB1_25
	.p2align	4, 0x90
.LBB1_24:                               # %for.body112
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	p(,%rcx,8), %xmm1       # xmm1 = mem[0],zero
.Ltmp413:
	.loc	1 549 25                # cg.c:549:25
	mulsd	%xmm3, %xmm1
	.loc	1 549 19 is_stmt 0      # cg.c:549:19
	addsd	r(,%rcx,8), %xmm1
	.loc	1 549 12                # cg.c:549:12
	movsd	%xmm1, p(,%rcx,8)
.Ltmp414:
	.loc	1 548 5 is_stmt 1 discriminator 1 # cg.c:548:5
	incq	%rcx
	.loc	1 548 19 is_stmt 0 discriminator 1 # cg.c:548:19
	cmpq	%rax, %rcx
	.loc	1 548 5 discriminator 1 # cg.c:548:5
	jl	.LBB1_24
.Ltmp415:
.LBB1_25:                               # %for.inc124
                                        #   in Loop: Header=BB1_3 Depth=1
	.loc	1 445 39 is_stmt 1 discriminator 2 # cg.c:445:39
	incl	%r15d
.Ltmp416:
	#DEBUG_VALUE: conj_grad:cgit <- %R15D
	.loc	1 445 3 is_stmt 0 discriminator 1 # cg.c:445:3
	cmpl	$26, %r15d
	jne	.LBB1_3
.Ltmp417:
# BB#26:
	#DEBUG_VALUE: conj_grad:cgit <- %R15D
	.loc	1 562 13 is_stmt 1      # cg.c:562:13
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
.Ltmp418:
	.p2align	4, 0x90
.LBB1_27:                               # %for.body131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_32 Depth 2
	movq	%r10, %rdx
	.loc	1 561 14                # cg.c:561:14
	movl	%r11d, %ebp
.Ltmp419:
	.loc	1 559 3 discriminator 1 # cg.c:559:3
	leaq	1(%rdx), %r10
.Ltmp420:
	#DEBUG_VALUE: conj_grad:d <- 0.000000e+00
	.loc	1 561 29 discriminator 1 # cg.c:561:29
	movl	rowstr+4(,%rdx,4), %r11d
.Ltmp421:
	#DEBUG_VALUE: conj_grad:k <- %EBP
	.loc	1 561 5 is_stmt 0 discriminator 1 # cg.c:561:5
	cmpl	%r11d, %ebp
	xorpd	%xmm1, %xmm1
	jge	.LBB1_33
.Ltmp422:
# BB#28:                                # %for.body139.lr.ph
                                        #   in Loop: Header=BB1_27 Depth=1
	#DEBUG_VALUE: conj_grad:k <- %EBP
	movslq	%r11d, %rsi
	movslq	%ebp, %rcx
	movl	%r11d, %ebx
	subl	%ebp, %ebx
	leaq	-1(%rsi), %r8
	xorpd	%xmm1, %xmm1
	testb	$1, %bl
	jne	.LBB1_30
.Ltmp423:
# BB#29:                                #   in Loop: Header=BB1_27 Depth=1
	#DEBUG_VALUE: conj_grad:k <- %EBP
	movq	%rcx, %rbp
.Ltmp424:
	jmp	.LBB1_31
	.p2align	4, 0x90
.LBB1_30:                               # %for.body139.prol
                                        #   in Loop: Header=BB1_27 Depth=1
.Ltmp425:
	#DEBUG_VALUE: conj_grad:k <- %EBP
	.loc	1 562 15 is_stmt 1      # cg.c:562:15
	movsd	a(,%rcx,8), %xmm1       # xmm1 = mem[0],zero
	.loc	1 562 20 is_stmt 0      # cg.c:562:20
	movslq	colidx(,%rcx,4), %rbp
.Ltmp426:
	.loc	1 562 19                # cg.c:562:19
	mulsd	z(,%rbp,8), %xmm1
	.loc	1 562 13                # cg.c:562:13
	addsd	%xmm0, %xmm1
.Ltmp427:
	#DEBUG_VALUE: conj_grad:d <- %XMM1
	.loc	1 561 5 is_stmt 1 discriminator 1 # cg.c:561:5
	leaq	1(%rcx), %rbp
.Ltmp428:
.LBB1_31:                               # %for.body139.lr.ph.split
                                        #   in Loop: Header=BB1_27 Depth=1
	cmpq	%rcx, %r8
	je	.LBB1_33
	.p2align	4, 0x90
.LBB1_32:                               # %for.body139
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp429:
	.loc	1 562 15                # cg.c:562:15
	movsd	a(,%rbp,8), %xmm2       # xmm2 = mem[0],zero
	.loc	1 562 20 is_stmt 0      # cg.c:562:20
	movslq	colidx(,%rbp,4), %rcx
	.loc	1 562 19                # cg.c:562:19
	mulsd	z(,%rcx,8), %xmm2
	.loc	1 562 13                # cg.c:562:13
	addsd	%xmm1, %xmm2
.Ltmp430:
	#DEBUG_VALUE: conj_grad:d <- %XMM2
	.loc	1 562 15                # cg.c:562:15
	movsd	a+8(,%rbp,8), %xmm1     # xmm1 = mem[0],zero
	.loc	1 562 20                # cg.c:562:20
	movslq	colidx+4(,%rbp,4), %rcx
	.loc	1 562 19                # cg.c:562:19
	mulsd	z(,%rcx,8), %xmm1
	.loc	1 562 13                # cg.c:562:13
	addsd	%xmm2, %xmm1
.Ltmp431:
	.loc	1 561 5 is_stmt 1 discriminator 1 # cg.c:561:5
	addq	$2, %rbp
	.loc	1 561 27 is_stmt 0 discriminator 1 # cg.c:561:27
	cmpq	%rsi, %rbp
	.loc	1 561 5 discriminator 1 # cg.c:561:5
	jl	.LBB1_32
.Ltmp432:
.LBB1_33:                               # %for.end150
                                        #   in Loop: Header=BB1_27 Depth=1
	.loc	1 564 10 is_stmt 1      # cg.c:564:10
	movsd	%xmm1, r(,%rdx,8)
.Ltmp433:
	.loc	1 559 17 discriminator 1 # cg.c:559:17
	cmpq	%r13, %r10
	jl	.LBB1_27
.Ltmp434:
# BB#34:
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_35:                               # %for.body160
                                        # =>This Inner Loop Header: Depth=1
.Ltmp435:
	.loc	1 571 11                # cg.c:571:11
	movsd	x(,%rdi,8), %xmm1       # xmm1 = mem[0],zero
	.loc	1 571 16 is_stmt 0      # cg.c:571:16
	subsd	r(,%rdi,8), %xmm1
.Ltmp436:
	#DEBUG_VALUE: conj_grad:d <- %XMM1
	.loc	1 572 18 is_stmt 1      # cg.c:572:18
	mulsd	%xmm1, %xmm1
.Ltmp437:
	.loc	1 572 15 is_stmt 0      # cg.c:572:15
	addsd	%xmm1, %xmm0
.Ltmp438:
	#DEBUG_VALUE: conj_grad:sum <- %XMM0
	.loc	1 570 3 is_stmt 1 discriminator 1 # cg.c:570:3
	incq	%rdi
	.loc	1 570 17 is_stmt 0 discriminator 1 # cg.c:570:17
	cmpq	%rax, %rdi
	.loc	1 570 3 discriminator 1 # cg.c:570:3
	jl	.LBB1_35
.Ltmp439:
# BB#36:                                # %for.end170
	#DEBUG_VALUE: conj_grad:sum <- %XMM0
	.loc	1 575 12 is_stmt 1      # cg.c:575:12
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	.loc	1 575 10 is_stmt 0      # cg.c:575:10
	ucomisd	%xmm1, %xmm1
	jnp	.LBB1_38
.Ltmp440:
# BB#37:                                # %call.sqrt
	#DEBUG_VALUE: conj_grad:sum <- %XMM0
	callq	sqrt
.Ltmp441:
	movapd	%xmm0, %xmm1
.LBB1_38:                               # %for.end170.split
	movq	16(%rsp), %rax          # 8-byte Reload
	movsd	%xmm1, (%rax)
	.loc	1 576 1 is_stmt 1       # cg.c:576:1
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp442:
.Lfunc_end1:
	.size	conj_grad, .Lfunc_end1-conj_grad
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	print_results
	.p2align	4, 0x90
	.type	print_results,@function
print_results:                          # @print_results
.Lfunc_begin2:
	.file	6 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/print_results.c"
	.loc	6 10 0                  # print_results.c:10:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp443:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp444:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp445:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp446:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp447:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp448:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp449:
	.cfi_def_cfa_offset 96
.Ltmp450:
	.cfi_offset %rbx, -56
.Ltmp451:
	.cfi_offset %r12, -48
.Ltmp452:
	.cfi_offset %r13, -40
.Ltmp453:
	.cfi_offset %r14, -32
.Ltmp454:
	.cfi_offset %r15, -24
.Ltmp455:
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
.Ltmp456:
	#DEBUG_VALUE: print_results:mops <- [%RSP+8]
	movsd	%xmm0, (%rsp)           # 8-byte Spill
.Ltmp457:
	#DEBUG_VALUE: print_results:t <- [%RSP+0]
	movl	%r9d, %r14d
.Ltmp458:
	#DEBUG_VALUE: print_results:niter <- %R14D
	movl	%r8d, %r12d
.Ltmp459:
	#DEBUG_VALUE: print_results:n3 <- %R12D
	movl	%ecx, %r13d
.Ltmp460:
	#DEBUG_VALUE: print_results:n2 <- %R13D
	movl	%edx, %r15d
.Ltmp461:
	#DEBUG_VALUE: print_results:n1 <- %R15D
	movl	%esi, %ebx
.Ltmp462:
	#DEBUG_VALUE: print_results:class <- %EBX
	movq	%rdi, %rbp
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:verified <- undef
.Ltmp463:
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 14 3 prologue_end     # print_results.c:14:3
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
.Ltmp464:
	.loc	6 15 3                  # print_results.c:15:3
	movl	$.L.str.1.6, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
.Ltmp465:
	#DEBUG_VALUE: print_results:class <- %ESI
	callq	printf
.Ltmp466:
	.loc	6 22 20                 # print_results.c:22:20
	movl	%r12d, %eax
	orl	%r13d, %eax
	je	.LBB2_1
.Ltmp467:
# BB#7:                                 # %if.else30
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 36 5                  # print_results.c:36:5
	movl	$.L.str.5.10, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp468:
	movl	%r13d, %edx
	movl	%r12d, %ecx
	callq	printf
	jmp	.LBB2_8
.Ltmp469:
.LBB2_1:                                # %if.then
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 23 29                 # print_results.c:23:29
	movzbl	(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB2_6
.Ltmp470:
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
	jne	.LBB2_6
.Ltmp471:
# BB#3:                                 # %if.then13
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	6 24 33 is_stmt 1       # print_results.c:24:33
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%r15d, %edi
	callq	ldexp
	leaq	16(%rsp), %rdi
	.loc	6 24 7 is_stmt 0 discriminator 1 # print_results.c:24:7
	movl	$.L.str.2.7, %esi
.Ltmp472:
	movb	$1, %al
	callq	sprintf
	movl	$15, %eax
.Ltmp473:
	#DEBUG_VALUE: print_results:j <- 14
	.loc	6 26 12 is_stmt 1       # print_results.c:26:12
	movzbl	30(%rsp), %ecx
	cmpl	$46, %ecx
	jne	.LBB2_5
.Ltmp474:
# BB#4:                                 # %if.then21
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 27 17                 # print_results.c:27:17
	movb	$32, 30(%rsp)
	movl	$14, %eax
.Ltmp475:
	#DEBUG_VALUE: print_results:j <- 13
.LBB2_5:                                # %if.end
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	6 30 17                 # print_results.c:30:17
	movb	$0, 16(%rsp,%rax)
	leaq	16(%rsp), %rsi
	.loc	6 31 7                  # print_results.c:31:7
	movl	$.L.str.3.8, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB2_8
.Ltmp476:
.LBB2_6:                                # %if.else
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	6 33 7                  # print_results.c:33:7
	movl	$.L.str.4.9, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp477:
	callq	printf
.Ltmp478:
.LBB2_8:                                # %if.end32
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:cs7 <- undef
	movq	168(%rsp), %r12
.Ltmp479:
	#DEBUG_VALUE: print_results:cs6 <- %R12
	movq	160(%rsp), %r13
.Ltmp480:
	#DEBUG_VALUE: print_results:cs5 <- %R13
	movq	152(%rsp), %r15
.Ltmp481:
	#DEBUG_VALUE: print_results:cs4 <- %R15
	movq	144(%rsp), %rbp
.Ltmp482:
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	movq	136(%rsp), %rbx
	#DEBUG_VALUE: print_results:npbversion <- undef
	#DEBUG_VALUE: print_results:compiletime <- undef
	#DEBUG_VALUE: print_results:cs1 <- undef
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	.loc	6 39 3                  # print_results.c:39:3
	movl	$.L.str.6.11, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	printf
	.loc	6 40 3                  # print_results.c:40:3
	movl	$.L.str.7.12, %edi
	movb	$1, %al
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	6 41 3                  # print_results.c:41:3
	movl	$.L.str.8, %edi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	6 42 3                  # print_results.c:42:3
	movl	$.L.str.9.13, %edi
	xorl	%eax, %eax
	movq	96(%rsp), %rsi
	callq	printf
.Ltmp483:
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str.10, %edi
	.loc	6 43 8                  # print_results.c:43:8
	cmpl	$0, 104(%rsp)
.Ltmp484:
	.loc	6 43 8 is_stmt 0        # print_results.c:43:8
	je	.LBB2_10
.Ltmp485:
# BB#9:                                 # %if.then37
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	6 44 5 is_stmt 1        # print_results.c:44:5
	movl	$.L.str.11.14, %esi
	jmp	.LBB2_11
.Ltmp486:
.LBB2_10:                               # %if.else39
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	6 46 5                  # print_results.c:46:5
	movl	$.L.str.12, %esi
.Ltmp487:
.LBB2_11:                               # %if.end41
	#DEBUG_VALUE: print_results:cs6 <- %R12
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:niter <- %R14D
	xorl	%eax, %eax
	callq	printf
	movq	176(%rsp), %r14
.Ltmp488:
	movq	112(%rsp), %rsi
.Ltmp489:
	.loc	6 47 3                  # print_results.c:47:3
	movl	$.L.str.13, %edi
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
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	.loc	6 53 3                  # print_results.c:53:3
	movl	$.L.str.17.17, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
	.loc	6 54 3                  # print_results.c:54:3
	movl	$.L.str.18.18, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	.loc	6 55 3                  # print_results.c:55:3
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	printf
	.loc	6 56 3                  # print_results.c:56:3
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	printf
	.loc	6 57 3                  # print_results.c:57:3
	movl	$.L.str.21.19, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	.loc	6 59 3                  # print_results.c:59:3
	movl	$.Lstr.20, %edi
	callq	puts
	.loc	6 65 1                  # print_results.c:65:1
	addq	$40, %rsp
	popq	%rbx
.Ltmp490:
	popq	%r12
.Ltmp491:
	popq	%r13
.Ltmp492:
	popq	%r14
	popq	%r15
.Ltmp493:
	popq	%rbp
.Ltmp494:
	retq
.Ltmp495:
.Lfunc_end2:
	.size	print_results, .Lfunc_end2-print_results
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI3_1:
	.quad	4710765210229538816     # double 8388608
.LCPI3_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI3_3:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	randlc
	.p2align	4, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
.Lfunc_begin3:
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
	movsd	.LCPI3_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
.Ltmp496:
	#DEBUG_VALUE: randlc:t1 <- %XMM1
	.loc	7 48 8                  # randdp.c:48:8
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm2
.Ltmp497:
	#DEBUG_VALUE: randlc:a1 <- %XMM2
	.loc	7 49 16                 # randdp.c:49:16
	movsd	.LCPI3_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movapd	%xmm2, %xmm1
.Ltmp498:
	mulsd	%xmm4, %xmm1
	.loc	7 49 10 is_stmt 0       # randdp.c:49:10
	subsd	%xmm1, %xmm0
.Ltmp499:
	#DEBUG_VALUE: randlc:a2 <- %XMM0
	.loc	7 56 15 is_stmt 1       # randdp.c:56:15
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	.loc	7 56 12 is_stmt 0       # randdp.c:56:12
	movapd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
.Ltmp500:
	#DEBUG_VALUE: randlc:t1 <- %XMM5
	.loc	7 57 8 is_stmt 1        # randdp.c:57:8
	cvttsd2si	%xmm5, %eax
	xorps	%xmm5, %xmm5
.Ltmp501:
	cvtsi2sdl	%eax, %xmm5
	.loc	7 59 21                 # randdp.c:59:21
	movapd	%xmm0, %xmm6
	mulsd	%xmm5, %xmm6
.Ltmp502:
	#DEBUG_VALUE: randlc:x1 <- %XMM5
	.loc	7 58 17                 # randdp.c:58:17
	mulsd	%xmm4, %xmm5
.Ltmp503:
	.loc	7 58 11 is_stmt 0       # randdp.c:58:11
	subsd	%xmm5, %xmm1
.Ltmp504:
	#DEBUG_VALUE: randlc:x2 <- %XMM1
	.loc	7 59 11 is_stmt 1       # randdp.c:59:11
	mulsd	%xmm1, %xmm2
.Ltmp505:
	.loc	7 59 16 is_stmt 0       # randdp.c:59:16
	addsd	%xmm6, %xmm2
.Ltmp506:
	#DEBUG_VALUE: randlc:t1 <- %XMM2
	.loc	7 60 19 is_stmt 1       # randdp.c:60:19
	mulsd	%xmm2, %xmm3
	.loc	7 60 8 is_stmt 0        # randdp.c:60:8
	cvttsd2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
.Ltmp507:
	#DEBUG_VALUE: randlc:t2 <- %XMM3
	.loc	7 61 16 is_stmt 1       # randdp.c:61:16
	mulsd	%xmm4, %xmm3
.Ltmp508:
	.loc	7 61 10 is_stmt 0       # randdp.c:61:10
	subsd	%xmm3, %xmm2
.Ltmp509:
	#DEBUG_VALUE: randlc:z <- %XMM2
	.loc	7 62 12 is_stmt 1       # randdp.c:62:12
	mulsd	%xmm4, %xmm2
.Ltmp510:
	.loc	7 62 21 is_stmt 0       # randdp.c:62:21
	mulsd	%xmm0, %xmm1
.Ltmp511:
	.loc	7 62 16                 # randdp.c:62:16
	addsd	%xmm2, %xmm1
.Ltmp512:
	#DEBUG_VALUE: randlc:t3 <- %XMM1
	.loc	7 63 19 is_stmt 1       # randdp.c:63:19
	movsd	.LCPI3_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm0
.Ltmp513:
	mulsd	%xmm2, %xmm0
	.loc	7 63 8 is_stmt 0        # randdp.c:63:8
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
.Ltmp514:
	#DEBUG_VALUE: randlc:t4 <- %XMM0
	.loc	7 64 17 is_stmt 1       # randdp.c:64:17
	mulsd	.LCPI3_3(%rip), %xmm0
.Ltmp515:
	.loc	7 64 11 is_stmt 0       # randdp.c:64:11
	addsd	%xmm1, %xmm0
	.loc	7 64 6                  # randdp.c:64:6
	movsd	%xmm0, (%rdi)
	.loc	7 65 11 is_stmt 1       # randdp.c:65:11
	mulsd	%xmm2, %xmm0
.Ltmp516:
	#DEBUG_VALUE: randlc:r <- %XMM0
	.loc	7 67 3                  # randdp.c:67:3
	retq
.Ltmp517:
.Lfunc_end3:
	.size	randlc, .Lfunc_end3-randlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI4_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI4_2:
	.quad	4710765210229538816     # double 8388608
.LCPI4_3:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI4_4:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	vranlc
	.p2align	4, 0x90
	.type	vranlc,@function
vranlc:                                 # @vranlc
.Lfunc_begin4:
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
	jle	.LBB4_3
.Ltmp518:
# BB#1:
	#DEBUG_VALUE: vranlc:y <- %RDX
	#DEBUG_VALUE: vranlc:a <- %XMM0
	#DEBUG_VALUE: vranlc:x <- %RSI
	#DEBUG_VALUE: vranlc:n <- %EDI
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	.loc	7 115 12                # randdp.c:115:12
	mulsd	%xmm0, %xmm1
.Ltmp519:
	#DEBUG_VALUE: vranlc:t1 <- %XMM1
	.loc	7 116 8                 # randdp.c:116:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
.Ltmp520:
	cvtsi2sdl	%eax, %xmm1
.Ltmp521:
	#DEBUG_VALUE: vranlc:a1 <- %XMM1
	movsd	.LCPI4_1(%rip), %xmm5   # xmm5 = mem[0],zero
	.loc	7 117 16                # randdp.c:117:16
	mulsd	%xmm1, %xmm5
	.loc	7 117 10 is_stmt 0      # randdp.c:117:10
	addsd	%xmm0, %xmm5
.Ltmp522:
	#DEBUG_VALUE: vranlc:a2 <- %XMM5
	.loc	7 128 14 is_stmt 1      # randdp.c:128:14
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp523:
	.loc	7 130 19                # randdp.c:130:19
	movsd	.LCPI4_2(%rip), %xmm3   # xmm3 = mem[0],zero
	.loc	7 135 21                # randdp.c:135:21
	movsd	.LCPI4_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI4_4(%rip), %xmm8   # xmm8 = mem[0],zero
.Ltmp524:
	.p2align	4, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	7 128 17                # randdp.c:128:17
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	.loc	7 128 14 is_stmt 0      # randdp.c:128:14
	movapd	%xmm6, %xmm7
	mulsd	%xmm0, %xmm7
.Ltmp525:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	7 129 10 is_stmt 1      # randdp.c:129:10
	cvttsd2si	%xmm7, %eax
	xorps	%xmm7, %xmm7
.Ltmp526:
	cvtsi2sdl	%eax, %xmm7
	.loc	7 131 23                # randdp.c:131:23
	movapd	%xmm5, %xmm2
	mulsd	%xmm7, %xmm2
.Ltmp527:
	#DEBUG_VALUE: vranlc:x1 <- %XMM7
	.loc	7 130 19                # randdp.c:130:19
	mulsd	%xmm3, %xmm7
.Ltmp528:
	.loc	7 130 13 is_stmt 0      # randdp.c:130:13
	subsd	%xmm7, %xmm6
.Ltmp529:
	#DEBUG_VALUE: vranlc:x2 <- %XMM6
	.loc	7 131 13 is_stmt 1      # randdp.c:131:13
	movapd	%xmm1, %xmm7
	mulsd	%xmm6, %xmm7
	.loc	7 131 18 is_stmt 0      # randdp.c:131:18
	addsd	%xmm2, %xmm7
.Ltmp530:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	7 132 21 is_stmt 1      # randdp.c:132:21
	movapd	%xmm7, %xmm2
	mulsd	%xmm0, %xmm2
	.loc	7 132 10 is_stmt 0      # randdp.c:132:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp531:
	#DEBUG_VALUE: vranlc:t2 <- %XMM2
	.loc	7 133 18 is_stmt 1      # randdp.c:133:18
	mulsd	%xmm3, %xmm2
.Ltmp532:
	.loc	7 133 12 is_stmt 0      # randdp.c:133:12
	subsd	%xmm2, %xmm7
.Ltmp533:
	#DEBUG_VALUE: vranlc:z <- %XMM7
	.loc	7 134 14 is_stmt 1      # randdp.c:134:14
	mulsd	%xmm3, %xmm7
.Ltmp534:
	.loc	7 134 23 is_stmt 0      # randdp.c:134:23
	mulsd	%xmm5, %xmm6
.Ltmp535:
	.loc	7 134 18                # randdp.c:134:18
	addsd	%xmm7, %xmm6
.Ltmp536:
	#DEBUG_VALUE: vranlc:t3 <- %XMM6
	.loc	7 135 21 is_stmt 1      # randdp.c:135:21
	movapd	%xmm6, %xmm2
	mulsd	%xmm4, %xmm2
	.loc	7 135 10 is_stmt 0      # randdp.c:135:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp537:
	#DEBUG_VALUE: vranlc:t4 <- %XMM2
	.loc	7 136 19 is_stmt 1      # randdp.c:136:19
	mulsd	%xmm8, %xmm2
.Ltmp538:
	.loc	7 136 13 is_stmt 0      # randdp.c:136:13
	addsd	%xmm6, %xmm2
	.loc	7 136 8                 # randdp.c:136:8
	movsd	%xmm2, (%rsi)
	.loc	7 137 16 is_stmt 1      # randdp.c:137:16
	mulsd	%xmm4, %xmm2
	.loc	7 137 10 is_stmt 0      # randdp.c:137:10
	movsd	%xmm2, (%rdx)
.Ltmp539:
	.loc	7 122 3 is_stmt 1 discriminator 1 # randdp.c:122:3
	addq	$8, %rdx
	decl	%edi
	jne	.LBB4_2
.Ltmp540:
.LBB4_3:                                # %for.end
	.loc	7 141 1                 # randdp.c:141:1
	retq
.Ltmp541:
.Lfunc_end4:
	.size	vranlc, .Lfunc_end4-vranlc
	.cfi_endproc

	.globl	timer_clear
	.p2align	4, 0x90
	.type	timer_clear,@function
timer_clear:                            # @timer_clear
.Lfunc_begin5:
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
.Ltmp542:
.Lfunc_end5:
	.size	timer_clear, .Lfunc_end5-timer_clear
	.cfi_endproc

	.globl	timer_start
	.p2align	4, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
.Lfunc_begin6:
	.loc	4 35 0                  # c_timers.c:35:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp543:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp544:
	.cfi_def_cfa_offset 32
.Ltmp545:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_start:n <- %EDI
	movl	%edi, %ebx
.Ltmp546:
	#DEBUG_VALUE: timer_start:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp547:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movq	8(%rsp), %rax
.Ltmp548:
	.loc	4 36 5                  # c_timers.c:36:5
	movslq	%ebx, %rcx
	.loc	4 36 14 is_stmt 0       # c_timers.c:36:14
	movq	%rax, start(,%rcx,8)
	.loc	4 37 1 is_stmt 1        # c_timers.c:37:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp549:
	retq
.Ltmp550:
.Lfunc_end6:
	.size	timer_start, .Lfunc_end6-timer_start
	.cfi_endproc

	.globl	timer_stop
	.p2align	4, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
.Lfunc_begin7:
	.loc	4 44 0                  # c_timers.c:44:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp551:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp552:
	.cfi_def_cfa_offset 32
.Ltmp553:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_stop:n <- %EDI
	movl	%edi, %ebx
.Ltmp554:
	#DEBUG_VALUE: timer_stop:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp555:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	4 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	4 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp556:
	#DEBUG_VALUE: elapsed_time:t <- %XMM0
	#DEBUG_VALUE: timer_stop:now <- %XMM0
	.loc	4 48 15                 # c_timers.c:48:15
	movslq	%ebx, %rax
	.loc	4 48 13 is_stmt 0       # c_timers.c:48:13
	subsd	start(,%rax,8), %xmm0
.Ltmp557:
	#DEBUG_VALUE: timer_stop:t <- %XMM0
	.loc	4 49 16 is_stmt 1       # c_timers.c:49:16
	addsd	elapsed(,%rax,8), %xmm0
.Ltmp558:
	movsd	%xmm0, elapsed(,%rax,8)
	.loc	4 51 1                  # c_timers.c:51:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp559:
	retq
.Ltmp560:
.Lfunc_end7:
	.size	timer_stop, .Lfunc_end7-timer_stop
	.cfi_endproc

	.globl	timer_read
	.p2align	4, 0x90
	.type	timer_read,@function
timer_read:                             # @timer_read
.Lfunc_begin8:
	.loc	4 58 0                  # c_timers.c:58:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_read:n <- %EDI
	.loc	4 59 13 prologue_end    # c_timers.c:59:13
	movslq	%edi, %rax
	movsd	elapsed(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	.loc	4 59 5 is_stmt 0        # c_timers.c:59:5
	retq
.Ltmp561:
.Lfunc_end8:
	.size	timer_read, .Lfunc_end8-timer_read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	wtime_
	.p2align	4, 0x90
	.type	wtime_,@function
wtime_:                                 # @wtime_
.Lfunc_begin9:
	.loc	5 8 0 is_stmt 1         # ../common/wtime.c:8:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp562:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp563:
	.cfi_def_cfa_offset 32
.Ltmp564:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: wtime_:t <- %RDI
	movq	%rdi, %rbx
.Ltmp565:
	#DEBUG_VALUE: wtime_:t <- %RBX
	leaq	(%rsp), %rdi
.Ltmp566:
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	.loc	5 11 3 prologue_end     # ../common/wtime.c:11:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp567:
	.loc	5 12 7                  # ../common/wtime.c:12:7
	movl	wtime_.sec(%rip), %ecx
	.loc	5 12 25 is_stmt 0 discriminator 1 # ../common/wtime.c:12:25
	movq	(%rsp), %rax
.Ltmp568:
	.loc	5 12 7                  # ../common/wtime.c:12:7
	testl	%ecx, %ecx
	jns	.LBB9_2
.Ltmp569:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	.loc	5 12 20 discriminator 1 # ../common/wtime.c:12:20
	movl	%eax, wtime_.sec(%rip)
.Ltmp570:
	.loc	5 13 21 is_stmt 1       # ../common/wtime.c:13:21
	movl	%eax, %ecx
.Ltmp571:
.LBB9_2:                                # %if.end
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
	mulsd	.LCPI9_0(%rip), %xmm1
	.loc	5 13 26                 # ../common/wtime.c:13:26
	addsd	%xmm0, %xmm1
	.loc	5 13 6                  # ../common/wtime.c:13:6
	movsd	%xmm1, (%rbx)
	.loc	5 14 1 is_stmt 1        # ../common/wtime.c:14:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp572:
	retq
.Ltmp573:
.Lfunc_end9:
	.size	wtime_, .Lfunc_end9-wtime_
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timer.flag"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	timeron,@object         # @timeron
	.local	timeron
	.comm	timeron,1,4
	.type	lastrow,@object         # @lastrow
	.local	lastrow
	.comm	lastrow,1,4
	.type	lastcol,@object         # @lastcol
	.local	lastcol
	.comm	lastcol,1,4
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER-C) - CG Benchmark\n"
	.size	.Lstr, 58

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	" Size: %11d\n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" Iterations: %5d\n"
	.size	.L.str.7, 18

	.type	naa,@object             # @naa
	.local	naa
	.comm	naa,1,4
	.type	nzz,@object             # @nzz
	.local	nzz
	.comm	nzz,1,4
	.type	tran,@object            # @tran
	.local	tran
	.comm	tran,8,8
	.type	amult,@object           # @amult
	.local	amult
	.comm	amult,8,8
	.type	acol,@object            # @acol
	.local	acol
	.comm	acol,672000,16
	.type	aelt,@object            # @aelt
	.local	aelt
	.comm	aelt,1344000,16
	.type	arow,@object            # @arow
	.local	arow
	.comm	arow,56000,16
	.type	rowstr,@object          # @rowstr
	.local	rowstr
	.comm	rowstr,56004,16
	.type	iv,@object              # @iv
	.local	iv
	.comm	iv,56000,16
	.type	.Lstr.41,@object        # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.41:
	.asciz	"Space for matrix elements exceeded in sparse"
	.size	.Lstr.41, 45

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"nza, nzmax = %d, %d\n"
	.size	.L.str.34, 21

	.type	a,@object               # @a
	.local	a
	.comm	a,16128000,16
	.type	colidx,@object          # @colidx
	.local	colidx
	.comm	colidx,8064000,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"internal error in sparse: i=%d\n"
	.size	.L.str.35, 32

	.type	x,@object               # @x
	.local	x
	.comm	x,112016,16
	.type	q,@object               # @q
	.local	q
	.comm	q,112016,16
	.type	z,@object               # @z
	.local	z
	.comm	z,112016,16
	.type	r,@object               # @r
	.local	r
	.comm	r,112016,16
	.type	p,@object               # @p
	.local	p
	.comm	p,112016,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" Initialization time = %15.3f seconds\n"
	.size	.L.str.9, 39

	.type	.Lstr.40,@object        # @str.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.40:
	.asciz	"\n   iteration           ||r||                 zeta"
	.size	.Lstr.40, 51

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"    %5d       %20.14E%20.13f\n"
	.size	.L.str.11, 30

	.type	.Lstr.36,@object        # @str.36
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.36:
	.asciz	" Benchmark completed"
	.size	.Lstr.36, 21

	.type	.Lstr.39,@object        # @str.39
	.p2align	4
.Lstr.39:
	.asciz	" VERIFICATION SUCCESSFUL"
	.size	.Lstr.39, 25

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	" Zeta is    %20.13E\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" Error is   %20.13E\n"
	.size	.L.str.15, 21

	.type	.Lstr.37,@object        # @str.37
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.37:
	.asciz	" VERIFICATION FAILED"
	.size	.Lstr.37, 21

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	" Zeta                %20.13E\n"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" The correct zeta is %20.13E\n"
	.size	.L.str.18, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"CG"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"          floating point"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"3.3.1"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"03 Mar 2016"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"(none)"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"-I ../common "
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"randdp"
	.size	.L.str.27, 7

	.type	.Lstr.38,@object        # @str.38
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.38:
	.asciz	"  SECTION   Time (secs)"
	.size	.Lstr.38, 24

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"  %8s:%9.3f\n"
	.size	.L.str.29, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"init"
	.size	.L.str.2, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"  %8s:%9.3f  (%6.2f%%)\n"
	.size	.L.str.30, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"benchmk"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"conjgd"
	.size	.L.str.4, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"    --> %8s:%9.3f  (%6.2f%%)\n"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"rest"
	.size	.L.str.32, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n\n %s Benchmark Completed.\n"
	.size	.L.str.5, 28

	.type	.L.str.1.6,@object      # @.str.1.6
.L.str.1.6:
	.asciz	" Class           =             %12c\n"
	.size	.L.str.1.6, 37

	.type	.L.str.2.7,@object      # @.str.2.7
.L.str.2.7:
	.asciz	"%15.0lf"
	.size	.L.str.2.7, 8

	.type	.L.str.3.8,@object      # @.str.3.8
.L.str.3.8:
	.asciz	" Size            =          %15s\n"
	.size	.L.str.3.8, 34

	.type	.L.str.4.9,@object      # @.str.4.9
.L.str.4.9:
	.asciz	" Size            =             %12d\n"
	.size	.L.str.4.9, 37

	.type	.L.str.5.10,@object     # @.str.5.10
.L.str.5.10:
	.asciz	" Size            =           %4dx%4dx%4d\n"
	.size	.L.str.5.10, 42

	.type	.L.str.6.11,@object     # @.str.6.11
.L.str.6.11:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str.6.11, 37

	.type	.L.str.7.12,@object     # @.str.7.12
.L.str.7.12:
	.asciz	" Time in seconds =             %12.2lf\n"
	.size	.L.str.7.12, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" Mop/s total     =          %15.2lf\n"
	.size	.L.str.8, 37

	.type	.L.str.9.13,@object     # @.str.9.13
.L.str.9.13:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str.9.13, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" Verification    =             %12s\n"
	.size	.L.str.10, 37

	.type	.L.str.11.14,@object    # @.str.11.14
.L.str.11.14:
	.asciz	"SUCCESSFUL"
	.size	.L.str.11.14, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"UNSUCCESSFUL"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" Version         =             %12s\n"
	.size	.L.str.13, 37

	.type	.L.str.14.15,@object    # @.str.14.15
.L.str.14.15:
	.asciz	" Compile date    =             %12s\n"
	.size	.L.str.14.15, 37

	.type	.L.str.15.16,@object    # @.str.15.16
.L.str.15.16:
	.asciz	"\n Compile options:\n    CC           = %s\n"
	.size	.L.str.15.16, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"    CLINK        = %s\n"
	.size	.L.str.16, 23

	.type	.L.str.17.17,@object    # @.str.17.17
.L.str.17.17:
	.asciz	"    C_LIB        = %s\n"
	.size	.L.str.17.17, 23

	.type	.L.str.18.18,@object    # @.str.18.18
.L.str.18.18:
	.asciz	"    C_INC        = %s\n"
	.size	.L.str.18.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"    CFLAGS       = %s\n"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"    CLINKFLAGS   = %s\n"
	.size	.L.str.20, 23

	.type	.L.str.21.19,@object    # @.str.21.19
.L.str.21.19:
	.asciz	"    RAND         = %s\n"
	.size	.L.str.21.19, 23

	.type	.Lstr.20,@object        # @str.20
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.20:
	.asciz	"\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n"
	.size	.Lstr.20, 194

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
	.asciz	"cg.c"                  # string offset=28
.Linfo_string2:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/CG" # string offset=33
.Linfo_string3:
	.asciz	"colidx"                # string offset=95
.Linfo_string4:
	.asciz	"int"                   # string offset=102
.Linfo_string5:
	.asciz	"sizetype"              # string offset=106
.Linfo_string6:
	.asciz	"rowstr"                # string offset=115
.Linfo_string7:
	.asciz	"iv"                    # string offset=122
.Linfo_string8:
	.asciz	"arow"                  # string offset=125
.Linfo_string9:
	.asciz	"acol"                  # string offset=130
.Linfo_string10:
	.asciz	"aelt"                  # string offset=135
.Linfo_string11:
	.asciz	"double"                # string offset=140
.Linfo_string12:
	.asciz	"a"                     # string offset=147
.Linfo_string13:
	.asciz	"x"                     # string offset=149
.Linfo_string14:
	.asciz	"z"                     # string offset=151
.Linfo_string15:
	.asciz	"p"                     # string offset=153
.Linfo_string16:
	.asciz	"q"                     # string offset=155
.Linfo_string17:
	.asciz	"r"                     # string offset=157
.Linfo_string18:
	.asciz	"naa"                   # string offset=159
.Linfo_string19:
	.asciz	"nzz"                   # string offset=163
.Linfo_string20:
	.asciz	"firstrow"              # string offset=167
.Linfo_string21:
	.asciz	"lastrow"               # string offset=176
.Linfo_string22:
	.asciz	"firstcol"              # string offset=184
.Linfo_string23:
	.asciz	"lastcol"               # string offset=193
.Linfo_string24:
	.asciz	"amult"                 # string offset=201
.Linfo_string25:
	.asciz	"tran"                  # string offset=207
.Linfo_string26:
	.asciz	"timeron"               # string offset=212
.Linfo_string27:
	.asciz	"false"                 # string offset=220
.Linfo_string28:
	.asciz	"true"                  # string offset=226
.Linfo_string29:
	.asciz	"logical"               # string offset=231
.Linfo_string30:
	.asciz	"../common/print_results.c" # string offset=239
.Linfo_string31:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common" # string offset=265
.Linfo_string32:
	.asciz	"../common/randdp.c"    # string offset=331
.Linfo_string33:
	.asciz	"../common/c_timers.c"  # string offset=350
.Linfo_string34:
	.asciz	"start"                 # string offset=371
.Linfo_string35:
	.asciz	"elapsed"               # string offset=377
.Linfo_string36:
	.asciz	"../common/wtime.c"     # string offset=385
.Linfo_string37:
	.asciz	"sec"                   # string offset=403
.Linfo_string38:
	.asciz	"makea"                 # string offset=407
.Linfo_string39:
	.asciz	"n"                     # string offset=413
.Linfo_string40:
	.asciz	"nz"                    # string offset=415
.Linfo_string41:
	.asciz	"ivc"                   # string offset=418
.Linfo_string42:
	.asciz	"vc"                    # string offset=422
.Linfo_string43:
	.asciz	"nn1"                   # string offset=425
.Linfo_string44:
	.asciz	"nzv"                   # string offset=429
.Linfo_string45:
	.asciz	"ivelt"                 # string offset=433
.Linfo_string46:
	.asciz	"iouter"                # string offset=439
.Linfo_string47:
	.asciz	"icnvrt"                # string offset=446
.Linfo_string48:
	.asciz	"ipwr2"                 # string offset=453
.Linfo_string49:
	.asciz	"sprnvc"                # string offset=459
.Linfo_string50:
	.asciz	"v"                     # string offset=466
.Linfo_string51:
	.asciz	"vecelt"                # string offset=468
.Linfo_string52:
	.asciz	"vecloc"                # string offset=475
.Linfo_string53:
	.asciz	"i"                     # string offset=482
.Linfo_string54:
	.asciz	"ii"                    # string offset=484
.Linfo_string55:
	.asciz	"was_gen"               # string offset=487
.Linfo_string56:
	.asciz	"vecset"                # string offset=495
.Linfo_string57:
	.asciz	"val"                   # string offset=502
.Linfo_string58:
	.asciz	"set"                   # string offset=506
.Linfo_string59:
	.asciz	"k"                     # string offset=510
.Linfo_string60:
	.asciz	"sparse"                # string offset=512
.Linfo_string61:
	.asciz	"nozer"                 # string offset=519
.Linfo_string62:
	.asciz	"nzloc"                 # string offset=525
.Linfo_string63:
	.asciz	"rcond"                 # string offset=531
.Linfo_string64:
	.asciz	"shift"                 # string offset=537
.Linfo_string65:
	.asciz	"j"                     # string offset=543
.Linfo_string66:
	.asciz	"nza"                   # string offset=545
.Linfo_string67:
	.asciz	"size"                  # string offset=549
.Linfo_string68:
	.asciz	"ratio"                 # string offset=554
.Linfo_string69:
	.asciz	"nzrow"                 # string offset=560
.Linfo_string70:
	.asciz	"scale"                 # string offset=566
.Linfo_string71:
	.asciz	"jcol"                  # string offset=572
.Linfo_string72:
	.asciz	"va"                    # string offset=577
.Linfo_string73:
	.asciz	"cont40"                # string offset=580
.Linfo_string74:
	.asciz	"j1"                    # string offset=587
.Linfo_string75:
	.asciz	"j2"                    # string offset=590
.Linfo_string76:
	.asciz	"nrows"                 # string offset=593
.Linfo_string77:
	.asciz	"kk"                    # string offset=599
.Linfo_string78:
	.asciz	"elapsed_time"          # string offset=602
.Linfo_string79:
	.asciz	"t"                     # string offset=615
.Linfo_string80:
	.asciz	"main"                  # string offset=617
.Linfo_string81:
	.asciz	"conj_grad"             # string offset=622
.Linfo_string82:
	.asciz	"print_results"         # string offset=632
.Linfo_string83:
	.asciz	"randlc"                # string offset=646
.Linfo_string84:
	.asciz	"vranlc"                # string offset=653
.Linfo_string85:
	.asciz	"timer_clear"           # string offset=660
.Linfo_string86:
	.asciz	"timer_start"           # string offset=672
.Linfo_string87:
	.asciz	"timer_stop"            # string offset=684
.Linfo_string88:
	.asciz	"timer_read"            # string offset=695
.Linfo_string89:
	.asciz	"wtime_"                # string offset=706
.Linfo_string90:
	.asciz	"argc"                  # string offset=713
.Linfo_string91:
	.asciz	"argv"                  # string offset=718
.Linfo_string92:
	.asciz	"char"                  # string offset=723
.Linfo_string93:
	.asciz	"fp"                    # string offset=728
.Linfo_string94:
	.asciz	"_flags"                # string offset=731
.Linfo_string95:
	.asciz	"_IO_read_ptr"          # string offset=738
.Linfo_string96:
	.asciz	"_IO_read_end"          # string offset=751
.Linfo_string97:
	.asciz	"_IO_read_base"         # string offset=764
.Linfo_string98:
	.asciz	"_IO_write_base"        # string offset=778
.Linfo_string99:
	.asciz	"_IO_write_ptr"         # string offset=793
.Linfo_string100:
	.asciz	"_IO_write_end"         # string offset=807
.Linfo_string101:
	.asciz	"_IO_buf_base"          # string offset=821
.Linfo_string102:
	.asciz	"_IO_buf_end"           # string offset=834
.Linfo_string103:
	.asciz	"_IO_save_base"         # string offset=846
.Linfo_string104:
	.asciz	"_IO_backup_base"       # string offset=860
.Linfo_string105:
	.asciz	"_IO_save_end"          # string offset=876
.Linfo_string106:
	.asciz	"_markers"              # string offset=889
.Linfo_string107:
	.asciz	"_next"                 # string offset=898
.Linfo_string108:
	.asciz	"_sbuf"                 # string offset=904
.Linfo_string109:
	.asciz	"_pos"                  # string offset=910
.Linfo_string110:
	.asciz	"_IO_marker"            # string offset=915
.Linfo_string111:
	.asciz	"_chain"                # string offset=926
.Linfo_string112:
	.asciz	"_fileno"               # string offset=933
.Linfo_string113:
	.asciz	"_flags2"               # string offset=941
.Linfo_string114:
	.asciz	"_old_offset"           # string offset=949
.Linfo_string115:
	.asciz	"long int"              # string offset=961
.Linfo_string116:
	.asciz	"__off_t"               # string offset=970
.Linfo_string117:
	.asciz	"_cur_column"           # string offset=978
.Linfo_string118:
	.asciz	"unsigned short"        # string offset=990
.Linfo_string119:
	.asciz	"_vtable_offset"        # string offset=1005
.Linfo_string120:
	.asciz	"signed char"           # string offset=1020
.Linfo_string121:
	.asciz	"_shortbuf"             # string offset=1032
.Linfo_string122:
	.asciz	"_lock"                 # string offset=1042
.Linfo_string123:
	.asciz	"_IO_lock_t"            # string offset=1048
.Linfo_string124:
	.asciz	"_offset"               # string offset=1059
.Linfo_string125:
	.asciz	"__off64_t"             # string offset=1067
.Linfo_string126:
	.asciz	"__pad1"                # string offset=1077
.Linfo_string127:
	.asciz	"__pad2"                # string offset=1084
.Linfo_string128:
	.asciz	"__pad3"                # string offset=1091
.Linfo_string129:
	.asciz	"__pad4"                # string offset=1098
.Linfo_string130:
	.asciz	"__pad5"                # string offset=1105
.Linfo_string131:
	.asciz	"long unsigned int"     # string offset=1112
.Linfo_string132:
	.asciz	"size_t"                # string offset=1130
.Linfo_string133:
	.asciz	"_mode"                 # string offset=1137
.Linfo_string134:
	.asciz	"_unused2"              # string offset=1143
.Linfo_string135:
	.asciz	"_IO_FILE"              # string offset=1152
.Linfo_string136:
	.asciz	"FILE"                  # string offset=1161
.Linfo_string137:
	.asciz	"zeta_verify_value"     # string offset=1166
.Linfo_string138:
	.asciz	"Class"                 # string offset=1184
.Linfo_string139:
	.asciz	"rnorm"                 # string offset=1190
.Linfo_string140:
	.asciz	"norm_temp2"            # string offset=1196
.Linfo_string141:
	.asciz	"norm_temp1"            # string offset=1207
.Linfo_string142:
	.asciz	"zeta"                  # string offset=1218
.Linfo_string143:
	.asciz	"it"                    # string offset=1223
.Linfo_string144:
	.asciz	"epsilon"               # string offset=1226
.Linfo_string145:
	.asciz	"err"                   # string offset=1234
.Linfo_string146:
	.asciz	"verified"              # string offset=1238
.Linfo_string147:
	.asciz	"mflops"                # string offset=1247
.Linfo_string148:
	.asciz	"tmax"                  # string offset=1254
.Linfo_string149:
	.asciz	"t_names"               # string offset=1259
.Linfo_string150:
	.asciz	"rho"                   # string offset=1267
.Linfo_string151:
	.asciz	"cgitmax"               # string offset=1271
.Linfo_string152:
	.asciz	"sum"                   # string offset=1279
.Linfo_string153:
	.asciz	"d"                     # string offset=1283
.Linfo_string154:
	.asciz	"alpha"                 # string offset=1285
.Linfo_string155:
	.asciz	"rho0"                  # string offset=1291
.Linfo_string156:
	.asciz	"beta"                  # string offset=1296
.Linfo_string157:
	.asciz	"cgit"                  # string offset=1301
.Linfo_string158:
	.asciz	"name"                  # string offset=1306
.Linfo_string159:
	.asciz	"class"                 # string offset=1311
.Linfo_string160:
	.asciz	"n1"                    # string offset=1317
.Linfo_string161:
	.asciz	"n2"                    # string offset=1320
.Linfo_string162:
	.asciz	"n3"                    # string offset=1323
.Linfo_string163:
	.asciz	"niter"                 # string offset=1326
.Linfo_string164:
	.asciz	"mops"                  # string offset=1332
.Linfo_string165:
	.asciz	"optype"                # string offset=1337
.Linfo_string166:
	.asciz	"cs7"                   # string offset=1344
.Linfo_string167:
	.asciz	"cs6"                   # string offset=1348
.Linfo_string168:
	.asciz	"cs5"                   # string offset=1352
.Linfo_string169:
	.asciz	"cs4"                   # string offset=1356
.Linfo_string170:
	.asciz	"cs3"                   # string offset=1360
.Linfo_string171:
	.asciz	"npbversion"            # string offset=1364
.Linfo_string172:
	.asciz	"compiletime"           # string offset=1375
.Linfo_string173:
	.asciz	"cs1"                   # string offset=1387
.Linfo_string174:
	.asciz	"cs2"                   # string offset=1391
.Linfo_string175:
	.asciz	"r23"                   # string offset=1395
.Linfo_string176:
	.asciz	"r46"                   # string offset=1399
.Linfo_string177:
	.asciz	"t23"                   # string offset=1403
.Linfo_string178:
	.asciz	"t46"                   # string offset=1407
.Linfo_string179:
	.asciz	"t1"                    # string offset=1411
.Linfo_string180:
	.asciz	"a1"                    # string offset=1414
.Linfo_string181:
	.asciz	"a2"                    # string offset=1417
.Linfo_string182:
	.asciz	"x1"                    # string offset=1420
.Linfo_string183:
	.asciz	"x2"                    # string offset=1423
.Linfo_string184:
	.asciz	"t2"                    # string offset=1426
.Linfo_string185:
	.asciz	"t3"                    # string offset=1429
.Linfo_string186:
	.asciz	"t4"                    # string offset=1432
.Linfo_string187:
	.asciz	"y"                     # string offset=1435
.Linfo_string188:
	.asciz	"now"                   # string offset=1437
.Linfo_string189:
	.asciz	"tv"                    # string offset=1441
.Linfo_string190:
	.asciz	"tv_sec"                # string offset=1444
.Linfo_string191:
	.asciz	"__time_t"              # string offset=1451
.Linfo_string192:
	.asciz	"tv_usec"               # string offset=1460
.Linfo_string193:
	.asciz	"__suseconds_t"         # string offset=1468
.Linfo_string194:
	.asciz	"timeval"               # string offset=1482
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	224                     # 96
	.byte	0                       # 
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	224                     # 96
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc13:
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc14:
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	0
	.quad	0
.Ldebug_loc19:
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc23:
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc25:
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc26:
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc28:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc31:
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc32:
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	101                     # DW_OP_reg21
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc34:
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc35:
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc37:
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc38:
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc39:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp463-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp463-.Lfunc_begin2
	.quad	.Ltmp482-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp462-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp462-.Lfunc_begin2
	.quad	.Ltmp465-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp465-.Lfunc_begin2
	.quad	.Ltmp468-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp469-.Lfunc_begin2
	.quad	.Ltmp472-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp476-.Lfunc_begin2
	.quad	.Ltmp477-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc41:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp461-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp461-.Lfunc_begin2
	.quad	.Ltmp481-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc42:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp460-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp460-.Lfunc_begin2
	.quad	.Ltmp480-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp459-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp459-.Lfunc_begin2
	.quad	.Ltmp479-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc44:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp458-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp458-.Lfunc_begin2
	.quad	.Ltmp488-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc45:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp457-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp457-.Lfunc_begin2
	.quad	.Ltmp464-.Lfunc_begin2
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp456-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp456-.Lfunc_begin2
	.quad	.Ltmp464-.Lfunc_begin2
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc47:
	.quad	.Ltmp473-.Lfunc_begin2
	.quad	.Ltmp475-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp475-.Lfunc_begin2
	.quad	.Lfunc_end2-.Lfunc_begin2
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc48:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp491-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	92                      # DW_OP_reg12
	.quad	0
	.quad	0
.Ldebug_loc49:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp492-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc50:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp493-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc51:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp494-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc52:
	.quad	.Lfunc_begin2-.Lfunc_begin2
	.quad	.Ltmp490-.Lfunc_begin2
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Lfunc_begin3-.Lfunc_begin3
	.quad	.Ltmp499-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc54:
	.quad	.Ltmp496-.Lfunc_begin3
	.quad	.Ltmp498-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp500-.Lfunc_begin3
	.quad	.Ltmp501-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	.Ltmp506-.Lfunc_begin3
	.quad	.Ltmp509-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc55:
	.quad	.Ltmp497-.Lfunc_begin3
	.quad	.Ltmp505-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc56:
	.quad	.Ltmp499-.Lfunc_begin3
	.quad	.Ltmp513-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc57:
	.quad	.Ltmp502-.Lfunc_begin3
	.quad	.Ltmp503-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc58:
	.quad	.Ltmp504-.Lfunc_begin3
	.quad	.Ltmp511-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc59:
	.quad	.Ltmp507-.Lfunc_begin3
	.quad	.Ltmp508-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc60:
	.quad	.Ltmp509-.Lfunc_begin3
	.quad	.Ltmp510-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc61:
	.quad	.Ltmp514-.Lfunc_begin3
	.quad	.Ltmp515-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc62:
	.quad	.Lfunc_begin4-.Lfunc_begin3
	.quad	.Ltmp524-.Lfunc_begin3
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc63:
	.quad	.Lfunc_begin4-.Lfunc_begin3
	.quad	.Ltmp523-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc64:
	.quad	.Lfunc_begin4-.Lfunc_begin3
	.quad	.Ltmp524-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc65:
	.quad	.Ltmp519-.Lfunc_begin3
	.quad	.Ltmp520-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp525-.Lfunc_begin3
	.quad	.Ltmp526-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	.Ltmp530-.Lfunc_begin3
	.quad	.Ltmp533-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc66:
	.quad	.Ltmp521-.Lfunc_begin3
	.quad	.Ltmp524-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc67:
	.quad	.Ltmp522-.Lfunc_begin3
	.quad	.Ltmp524-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc68:
	.quad	.Ltmp527-.Lfunc_begin3
	.quad	.Ltmp528-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc69:
	.quad	.Ltmp529-.Lfunc_begin3
	.quad	.Ltmp535-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc70:
	.quad	.Ltmp531-.Lfunc_begin3
	.quad	.Ltmp532-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc71:
	.quad	.Ltmp533-.Lfunc_begin3
	.quad	.Ltmp534-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc72:
	.quad	.Ltmp536-.Lfunc_begin3
	.quad	.Ltmp540-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc73:
	.quad	.Ltmp537-.Lfunc_begin3
	.quad	.Ltmp538-.Lfunc_begin3
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc74:
	.quad	.Lfunc_begin6-.Lfunc_begin5
	.quad	.Ltmp546-.Lfunc_begin5
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp546-.Lfunc_begin5
	.quad	.Ltmp549-.Lfunc_begin5
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc75:
	.quad	.Lfunc_begin7-.Lfunc_begin5
	.quad	.Ltmp554-.Lfunc_begin5
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp554-.Lfunc_begin5
	.quad	.Ltmp559-.Lfunc_begin5
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc76:
	.quad	.Ltmp555-.Lfunc_begin5
	.quad	.Ltmp556-.Lfunc_begin5
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp556-.Lfunc_begin5
	.quad	.Ltmp557-.Lfunc_begin5
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc77:
	.quad	.Ltmp556-.Lfunc_begin5
	.quad	.Ltmp557-.Lfunc_begin5
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc78:
	.quad	.Ltmp557-.Lfunc_begin5
	.quad	.Ltmp558-.Lfunc_begin5
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc79:
	.quad	.Lfunc_begin9-.Lfunc_begin9
	.quad	.Ltmp565-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp565-.Lfunc_begin9
	.quad	.Ltmp572-.Lfunc_begin9
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc80:
	.quad	.Ltmp566-.Lfunc_begin9
	.quad	.Lfunc_end9-.Lfunc_begin9
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
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
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
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
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
	.byte	11                      # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
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
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	32                      # DW_AT_inline
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
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
	.byte	19                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
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
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
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
	.byte	22                      # Abbreviation Code
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
	.byte	23                      # Abbreviation Code
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
	.byte	24                      # Abbreviation Code
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
	.byte	25                      # Abbreviation Code
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
	.byte	26                      # Abbreviation Code
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
	.byte	27                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	31                      # Abbreviation Code
	.byte	29                      # DW_TAG_inlined_subroutine
	.byte	1                       # DW_CHILDREN_yes
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	88                      # DW_AT_call_file
	.byte	11                      # DW_FORM_data1
	.byte	89                      # DW_AT_call_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	32                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
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
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	35                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	36                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	37                      # Abbreviation Code
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
	.byte	38                      # Abbreviation Code
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
	.byte	39                      # Abbreviation Code
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
	.byte	40                      # Abbreviation Code
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
	.byte	41                      # Abbreviation Code
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
	.byte	42                      # Abbreviation Code
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
	.byte	43                      # Abbreviation Code
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
	.byte	44                      # Abbreviation Code
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
	.byte	45                      # Abbreviation Code
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
	.byte	46                      # Abbreviation Code
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
	.byte	47                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	48                      # Abbreviation Code
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
	.byte	49                      # Abbreviation Code
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
	.byte	50                      # Abbreviation Code
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
	.byte	51                      # Abbreviation Code
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
	.byte	52                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	53                      # Abbreviation Code
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
	.byte	54                      # Abbreviation Code
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
	.byte	55                      # Abbreviation Code
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
	.byte	56                      # Abbreviation Code
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
	.byte	57                      # Abbreviation Code
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
	.long	3041                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xbda DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	colidx
	.byte	3                       # Abbrev [3] 0x3f:0xf DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	2016000                 # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4e:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x55:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x5c:0x15 DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.long	113                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	rowstr
	.byte	3                       # Abbrev [3] 0x71:0xd DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x76:0x7 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.short	14001                   # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x7e:0x15 DW_TAG_variable
	.long	.Linfo_string7          # DW_AT_name
	.long	147                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	iv
	.byte	3                       # Abbrev [3] 0x93:0xd DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x98:0x7 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.short	14000                   # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xa0:0x15 DW_TAG_variable
	.long	.Linfo_string8          # DW_AT_name
	.long	147                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	arow
	.byte	2                       # Abbrev [2] 0xb5:0x15 DW_TAG_variable
	.long	.Linfo_string9          # DW_AT_name
	.long	202                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	acol
	.byte	3                       # Abbrev [3] 0xca:0xf DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0xcf:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	168000                  # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xd9:0x15 DW_TAG_variable
	.long	.Linfo_string10         # DW_AT_name
	.long	238                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	aelt
	.byte	3                       # Abbrev [3] 0xee:0xf DW_TAG_array_type
	.long	253                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xf3:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	168000                  # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0xfd:0x7 DW_TAG_base_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x104:0x15 DW_TAG_variable
	.long	.Linfo_string12         # DW_AT_name
	.long	281                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	a
	.byte	3                       # Abbrev [3] 0x119:0xf DW_TAG_array_type
	.long	253                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x11e:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	2016000                 # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x128:0x15 DW_TAG_variable
	.long	.Linfo_string13         # DW_AT_name
	.long	317                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	x
	.byte	3                       # Abbrev [3] 0x13d:0xd DW_TAG_array_type
	.long	253                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x142:0x7 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.short	14002                   # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x14a:0x15 DW_TAG_variable
	.long	.Linfo_string14         # DW_AT_name
	.long	317                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	z
	.byte	2                       # Abbrev [2] 0x15f:0x15 DW_TAG_variable
	.long	.Linfo_string15         # DW_AT_name
	.long	317                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	p
	.byte	2                       # Abbrev [2] 0x174:0x15 DW_TAG_variable
	.long	.Linfo_string16         # DW_AT_name
	.long	317                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	q
	.byte	2                       # Abbrev [2] 0x189:0x15 DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.long	317                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	r
	.byte	8                       # Abbrev [8] 0x19e:0xb DW_TAG_variable
	.long	.Linfo_string18         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1a9:0xb DW_TAG_variable
	.long	.Linfo_string19         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1b4:0xb DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1bf:0xb DW_TAG_variable
	.long	.Linfo_string21         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1ca:0xb DW_TAG_variable
	.long	.Linfo_string22         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1d5:0xb DW_TAG_variable
	.long	.Linfo_string23         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	2                       # Abbrev [2] 0x1e0:0x15 DW_TAG_variable
	.long	.Linfo_string24         # DW_AT_name
	.long	253                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	amult
	.byte	2                       # Abbrev [2] 0x1f5:0x15 DW_TAG_variable
	.long	.Linfo_string25         # DW_AT_name
	.long	253                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	tran
	.byte	8                       # Abbrev [8] 0x20a:0xb DW_TAG_variable
	.long	.Linfo_string26         # DW_AT_name
	.long	533                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x215:0xb DW_TAG_typedef
	.long	544                     # DW_AT_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x220:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x224:0x6 DW_TAG_enumerator
	.long	.Linfo_string27         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x22a:0x6 DW_TAG_enumerator
	.long	.Linfo_string28         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x231:0x1 DW_TAG_pointer_type
	.byte	13                      # Abbrev [13] 0x232:0x5 DW_TAG_pointer_type
	.long	567                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x237:0xc DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x23c:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	12                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x243:0x5 DW_TAG_pointer_type
	.long	584                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x248:0xc DW_TAG_array_type
	.long	253                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x24d:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	12                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x254:0xee DW_TAG_subprogram
	.long	.Linfo_string38         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x25d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string39         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x269:0xc DW_TAG_formal_parameter
	.long	.Linfo_string40         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	605                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x275:0xc DW_TAG_formal_parameter
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x281:0xc DW_TAG_formal_parameter
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	607                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x28d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	608                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x299:0xc DW_TAG_formal_parameter
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	609                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2a5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	610                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2b1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	611                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2bd:0xc DW_TAG_formal_parameter
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	612                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2c9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	613                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2d5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	614                     # DW_AT_decl_line
	.long	562                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2e1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	615                     # DW_AT_decl_line
	.long	579                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2ed:0xc DW_TAG_formal_parameter
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	616                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x2f9:0xc DW_TAG_variable
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	619                     # DW_AT_decl_line
	.long	567                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x305:0xc DW_TAG_variable
	.long	.Linfo_string42         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	620                     # DW_AT_decl_line
	.long	584                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x311:0xc DW_TAG_variable
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	618                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x31d:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	618                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x329:0xc DW_TAG_variable
	.long	.Linfo_string45         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	618                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x335:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	618                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x342:0x5 DW_TAG_pointer_type
	.long	253                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x347:0x5 DW_TAG_pointer_type
	.long	78                      # DW_AT_type
	.byte	18                      # Abbrev [18] 0x34c:0x26 DW_TAG_subprogram
	.long	.Linfo_string47         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	871                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	78                      # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x359:0xc DW_TAG_formal_parameter
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	871                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x365:0xc DW_TAG_formal_parameter
	.long	.Linfo_string48         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	871                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x372:0x90 DW_TAG_subprogram
	.long	.Linfo_string49         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x37b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string39         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x387:0xc DW_TAG_formal_parameter
	.long	.Linfo_string40         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x393:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x39f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string50         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x3ab:0xc DW_TAG_formal_parameter
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	833                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x3b7:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	835                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x3c3:0xc DW_TAG_variable
	.long	.Linfo_string51         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x3cf:0xc DW_TAG_variable
	.long	.Linfo_string52         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x3db:0xc DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	835                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x3e7:0xc DW_TAG_variable
	.long	.Linfo_string54         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	835                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x3f3:0xe DW_TAG_lexical_block
	.byte	17                      # Abbrev [17] 0x3f4:0xc DW_TAG_variable
	.long	.Linfo_string55         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	853                     # DW_AT_decl_line
	.long	533                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x402:0x6a DW_TAG_subprogram
	.long	.Linfo_string56         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x40b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string39         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x417:0xc DW_TAG_formal_parameter
	.long	.Linfo_string50         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x423:0xc DW_TAG_formal_parameter
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x42f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x43b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x447:0xc DW_TAG_formal_parameter
	.long	.Linfo_string57         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	881                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x453:0xc DW_TAG_variable
	.long	.Linfo_string58         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	884                     # DW_AT_decl_line
	.long	533                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x45f:0xc DW_TAG_variable
	.long	.Linfo_string59         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	883                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x46c:0x166 DW_TAG_subprogram
	.long	.Linfo_string60         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	663                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x475:0xc DW_TAG_formal_parameter
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	663                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x481:0xc DW_TAG_formal_parameter
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	664                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x48d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	665                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x499:0xc DW_TAG_formal_parameter
	.long	.Linfo_string39         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	666                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4a5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string40         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	667                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4b1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string61         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	668                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4bd:0xc DW_TAG_formal_parameter
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	669                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4c9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	670                     # DW_AT_decl_line
	.long	562                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4d5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	671                     # DW_AT_decl_line
	.long	579                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4e1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	672                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4ed:0xc DW_TAG_formal_parameter
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	673                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4f9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string62         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	674                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x505:0xc DW_TAG_formal_parameter
	.long	.Linfo_string63         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	675                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x511:0xc DW_TAG_formal_parameter
	.long	.Linfo_string64         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	676                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x51d:0xc DW_TAG_variable
	.long	.Linfo_string65         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x529:0xc DW_TAG_variable
	.long	.Linfo_string66         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x535:0xc DW_TAG_variable
	.long	.Linfo_string59         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x541:0xc DW_TAG_variable
	.long	.Linfo_string67         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x54d:0xc DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x559:0xc DW_TAG_variable
	.long	.Linfo_string68         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x565:0xc DW_TAG_variable
	.long	.Linfo_string69         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x571:0xc DW_TAG_variable
	.long	.Linfo_string70         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x57d:0xc DW_TAG_variable
	.long	.Linfo_string71         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x589:0xc DW_TAG_variable
	.long	.Linfo_string72         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x595:0xc DW_TAG_variable
	.long	.Linfo_string73         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	686                     # DW_AT_decl_line
	.long	533                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x5a1:0xc DW_TAG_variable
	.long	.Linfo_string74         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x5ad:0xc DW_TAG_variable
	.long	.Linfo_string75         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x5b9:0xc DW_TAG_variable
	.long	.Linfo_string76         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	678                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x5c5:0xc DW_TAG_variable
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x5d2:0x2b4 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	78                      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	21                      # Abbrev [21] 0x5eb:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string90         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x5fa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string91         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	2467                    # DW_AT_type
	.byte	22                      # Abbrev [22] 0x609:0xf DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x618:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string93         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	2484                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x627:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	236
	.byte	216
	.byte	161
	.byte	21
	.byte	87
	.byte	33
	.byte	49
	.byte	64
	.long	.Linfo_string137        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	24                      # Abbrev [24] 0x63b:0xd DW_TAG_variable
	.asciz	"\301"                  # DW_AT_const_value
	.long	.Linfo_string138        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	2477                    # DW_AT_type
	.byte	24                      # Abbrev [24] 0x648:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string65         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x654:0xf DW_TAG_variable
	.long	.Ldebug_loc22           # DW_AT_location
	.long	.Linfo_string139        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x663:0xf DW_TAG_variable
	.long	.Ldebug_loc23           # DW_AT_location
	.long	.Linfo_string140        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x672:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	.Linfo_string141        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x686:0xf DW_TAG_variable
	.long	.Ldebug_loc24           # DW_AT_location
	.long	.Linfo_string142        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	129                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x695:0xf DW_TAG_variable
	.long	.Ldebug_loc25           # DW_AT_location
	.long	.Linfo_string143        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x6a4:0xf DW_TAG_variable
	.long	.Ldebug_loc26           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x6b3:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	187
	.byte	189
	.byte	215
	.byte	217
	.byte	223
	.byte	124
	.byte	219
	.byte	61
	.long	.Linfo_string144        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x6c7:0xf DW_TAG_variable
	.long	.Ldebug_loc27           # DW_AT_location
	.long	.Linfo_string145        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x6d6:0xf DW_TAG_variable
	.long	.Ldebug_loc28           # DW_AT_location
	.long	.Linfo_string146        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	533                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x6e5:0xf DW_TAG_variable
	.long	.Ldebug_loc29           # DW_AT_location
	.long	.Linfo_string147        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x6f4:0xf DW_TAG_variable
	.long	.Ldebug_loc30           # DW_AT_location
	.long	.Linfo_string148        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	25                      # Abbrev [25] 0x703:0xb DW_TAG_variable
	.long	.Linfo_string59         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	25                      # Abbrev [25] 0x70e:0xb DW_TAG_variable
	.long	.Linfo_string149        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	138                     # DW_AT_decl_line
	.long	3032                    # DW_AT_type
	.byte	26                      # Abbrev [26] 0x719:0x16c DW_TAG_inlined_subroutine
	.long	596                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	1                       # DW_AT_call_file
	.byte	205                     # DW_AT_call_line
	.byte	27                      # Abbrev [27] 0x724:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	665                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x72a:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	689                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x730:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	701                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x736:0x9 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320\001"
	.long	761                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x73f:0x9 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\200\002"
	.long	773                     # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x748:0x9 DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	785                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x751:0x6 DW_TAG_variable
	.byte	11                      # DW_AT_const_value
	.long	797                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x757:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	809                     # DW_AT_abstract_origin
	.byte	31                      # Abbrev [31] 0x75d:0x53 DW_TAG_inlined_subroutine
	.long	882                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	1                       # DW_AT_call_file
	.short	639                     # DW_AT_call_line
	.byte	27                      # Abbrev [27] 0x769:0x6 DW_TAG_formal_parameter
	.byte	11                      # DW_AT_const_value
	.long	903                     # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x76f:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	951                     # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x775:0x9 DW_TAG_variable
	.long	.Ldebug_loc6            # DW_AT_location
	.long	963                     # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x77e:0x9 DW_TAG_variable
	.long	.Ldebug_loc8            # DW_AT_location
	.long	975                     # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x787:0x9 DW_TAG_variable
	.long	.Ldebug_loc9            # DW_AT_location
	.long	987                     # DW_AT_abstract_origin
	.byte	31                      # Abbrev [31] 0x790:0x1f DW_TAG_inlined_subroutine
	.long	844                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	1                       # DW_AT_call_file
	.short	847                     # DW_AT_call_line
	.byte	32                      # Abbrev [32] 0x79c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            # DW_AT_location
	.long	857                     # DW_AT_abstract_origin
	.byte	32                      # Abbrev [32] 0x7a5:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc5            # DW_AT_location
	.long	869                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x7b0:0x30 DW_TAG_inlined_subroutine
	.long	1026                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges3         # DW_AT_ranges
	.byte	1                       # DW_AT_call_file
	.short	640                     # DW_AT_call_line
	.byte	27                      # Abbrev [27] 0x7bc:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	1035                    # DW_AT_abstract_origin
	.byte	33                      # Abbrev [33] 0x7c2:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
	.byte	63
	.long	1095                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x7d0:0x9 DW_TAG_variable
	.long	.Ldebug_loc10           # DW_AT_location
	.long	1107                    # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x7d9:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	1119                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x7e0:0xa4 DW_TAG_inlined_subroutine
	.long	1132                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges4         # DW_AT_ranges
	.byte	1                       # DW_AT_call_file
	.short	653                     # DW_AT_call_line
	.byte	27                      # Abbrev [27] 0x7ec:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	1201                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x7f2:0x6 DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	1249                    # DW_AT_abstract_origin
	.byte	33                      # Abbrev [33] 0x7f8:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	154
	.byte	153
	.byte	153
	.byte	153
	.byte	153
	.byte	153
	.byte	185
	.byte	63
	.long	1285                    # DW_AT_abstract_origin
	.byte	33                      # Abbrev [33] 0x806:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	52
	.byte	64
	.long	1297                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x814:0x9 DW_TAG_variable
	.long	.Ldebug_loc11           # DW_AT_location
	.long	1309                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x81d:0x9 DW_TAG_variable
	.long	.Ldebug_loc12           # DW_AT_location
	.long	1321                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x826:0x9 DW_TAG_variable
	.long	.Ldebug_loc13           # DW_AT_location
	.long	1333                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x82f:0x9 DW_TAG_variable
	.long	.Ldebug_loc14           # DW_AT_location
	.long	1345                    # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x838:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	1357                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x83e:0x9 DW_TAG_variable
	.long	.Ldebug_loc15           # DW_AT_location
	.long	1369                    # DW_AT_abstract_origin
	.byte	30                      # Abbrev [30] 0x847:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	1381                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x84d:0x9 DW_TAG_variable
	.long	.Ldebug_loc16           # DW_AT_location
	.long	1393                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x856:0x9 DW_TAG_variable
	.long	.Ldebug_loc17           # DW_AT_location
	.long	1405                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x85f:0x9 DW_TAG_variable
	.long	.Ldebug_loc18           # DW_AT_location
	.long	1417                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x868:0x9 DW_TAG_variable
	.long	.Ldebug_loc19           # DW_AT_location
	.long	1429                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x871:0x9 DW_TAG_variable
	.long	.Ldebug_loc20           # DW_AT_location
	.long	1441                    # DW_AT_abstract_origin
	.byte	29                      # Abbrev [29] 0x87a:0x9 DW_TAG_variable
	.long	.Ldebug_loc21           # DW_AT_location
	.long	1453                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	34                      # Abbrev [34] 0x886:0x11d DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	406                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0x89c:0xc DW_TAG_formal_parameter
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	406                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8a8:0xc DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	407                     # DW_AT_decl_line
	.long	839                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8b4:0xc DW_TAG_formal_parameter
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	408                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8c0:0xc DW_TAG_formal_parameter
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	409                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8cc:0xc DW_TAG_formal_parameter
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	410                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8d8:0xc DW_TAG_formal_parameter
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	411                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8e4:0xc DW_TAG_formal_parameter
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	412                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8f0:0xc DW_TAG_formal_parameter
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	413                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x8fc:0xc DW_TAG_formal_parameter
	.long	.Linfo_string139        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	414                     # DW_AT_decl_line
	.long	834                     # DW_AT_type
	.byte	35                      # Abbrev [35] 0x908:0xd DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string65         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x915:0x10 DW_TAG_variable
	.long	.Ldebug_loc31           # DW_AT_location
	.long	.Linfo_string150        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	35                      # Abbrev [35] 0x925:0xd DW_TAG_variable
	.byte	25                      # DW_AT_const_value
	.long	.Linfo_string151        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x932:0x10 DW_TAG_variable
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string152        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	36                      # Abbrev [36] 0x942:0x10 DW_TAG_variable
	.long	.Ldebug_loc33           # DW_AT_location
	.long	.Linfo_string59         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x952:0x10 DW_TAG_variable
	.long	.Ldebug_loc34           # DW_AT_location
	.long	.Linfo_string153        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	36                      # Abbrev [36] 0x962:0x10 DW_TAG_variable
	.long	.Ldebug_loc35           # DW_AT_location
	.long	.Linfo_string154        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	36                      # Abbrev [36] 0x972:0x10 DW_TAG_variable
	.long	.Ldebug_loc36           # DW_AT_location
	.long	.Linfo_string155        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	36                      # Abbrev [36] 0x982:0x10 DW_TAG_variable
	.long	.Ldebug_loc37           # DW_AT_location
	.long	.Linfo_string156        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	418                     # DW_AT_decl_line
	.long	253                     # DW_AT_type
	.byte	36                      # Abbrev [36] 0x992:0x10 DW_TAG_variable
	.long	.Ldebug_loc38           # DW_AT_location
	.long	.Linfo_string157        # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x9a3:0x5 DW_TAG_pointer_type
	.long	2472                    # DW_AT_type
	.byte	13                      # Abbrev [13] 0x9a8:0x5 DW_TAG_pointer_type
	.long	2477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9ad:0x7 DW_TAG_base_type
	.long	.Linfo_string92         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	13                      # Abbrev [13] 0x9b4:0x5 DW_TAG_pointer_type
	.long	2489                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9b9:0xb DW_TAG_typedef
	.long	2500                    # DW_AT_type
	.long	.Linfo_string136        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	37                      # Abbrev [37] 0x9c4:0x17c DW_TAG_structure_type
	.long	.Linfo_string135        # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	38                      # Abbrev [38] 0x9cc:0xc DW_TAG_member
	.long	.Linfo_string94         # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0x9d8:0xc DW_TAG_member
	.long	.Linfo_string95         # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0x9e4:0xc DW_TAG_member
	.long	.Linfo_string96         # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0x9f0:0xc DW_TAG_member
	.long	.Linfo_string97         # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0x9fc:0xc DW_TAG_member
	.long	.Linfo_string98         # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0xa08:0xc DW_TAG_member
	.long	.Linfo_string99         # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa14:0xd DW_TAG_member
	.long	.Linfo_string100        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa21:0xd DW_TAG_member
	.long	.Linfo_string101        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa2e:0xd DW_TAG_member
	.long	.Linfo_string102        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa3b:0xd DW_TAG_member
	.long	.Linfo_string103        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa48:0xd DW_TAG_member
	.long	.Linfo_string104        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa55:0xd DW_TAG_member
	.long	.Linfo_string105        # DW_AT_name
	.long	2472                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa62:0xd DW_TAG_member
	.long	.Linfo_string106        # DW_AT_name
	.long	2880                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa6f:0xd DW_TAG_member
	.long	.Linfo_string111        # DW_AT_name
	.long	2930                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa7c:0xd DW_TAG_member
	.long	.Linfo_string112        # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa89:0xd DW_TAG_member
	.long	.Linfo_string113        # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xa96:0xd DW_TAG_member
	.long	.Linfo_string114        # DW_AT_name
	.long	2935                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xaa3:0xd DW_TAG_member
	.long	.Linfo_string117        # DW_AT_name
	.long	2953                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xab0:0xd DW_TAG_member
	.long	.Linfo_string119        # DW_AT_name
	.long	2960                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xabd:0xd DW_TAG_member
	.long	.Linfo_string121        # DW_AT_name
	.long	2967                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xaca:0xd DW_TAG_member
	.long	.Linfo_string122        # DW_AT_name
	.long	2979                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xad7:0xd DW_TAG_member
	.long	.Linfo_string124        # DW_AT_name
	.long	2991                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xae4:0xd DW_TAG_member
	.long	.Linfo_string126        # DW_AT_name
	.long	561                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xaf1:0xd DW_TAG_member
	.long	.Linfo_string127        # DW_AT_name
	.long	561                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xafe:0xd DW_TAG_member
	.long	.Linfo_string128        # DW_AT_name
	.long	561                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xb0b:0xd DW_TAG_member
	.long	.Linfo_string129        # DW_AT_name
	.long	561                     # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xb18:0xd DW_TAG_member
	.long	.Linfo_string130        # DW_AT_name
	.long	3002                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xb25:0xd DW_TAG_member
	.long	.Linfo_string133        # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	39                      # Abbrev [39] 0xb32:0xd DW_TAG_member
	.long	.Linfo_string134        # DW_AT_name
	.long	3020                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0xb40:0x5 DW_TAG_pointer_type
	.long	2885                    # DW_AT_type
	.byte	37                      # Abbrev [37] 0xb45:0x2d DW_TAG_structure_type
	.long	.Linfo_string110        # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	8                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	38                      # Abbrev [38] 0xb4d:0xc DW_TAG_member
	.long	.Linfo_string107        # DW_AT_name
	.long	2880                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0xb59:0xc DW_TAG_member
	.long	.Linfo_string108        # DW_AT_name
	.long	2930                    # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0xb65:0xc DW_TAG_member
	.long	.Linfo_string109        # DW_AT_name
	.long	78                      # DW_AT_type
	.byte	8                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0xb72:0x5 DW_TAG_pointer_type
	.long	2500                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb77:0xb DW_TAG_typedef
	.long	2946                    # DW_AT_type
	.long	.Linfo_string116        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xb82:0x7 DW_TAG_base_type
	.long	.Linfo_string115        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0xb89:0x7 DW_TAG_base_type
	.long	.Linfo_string118        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0xb90:0x7 DW_TAG_base_type
	.long	.Linfo_string120        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xb97:0xc DW_TAG_array_type
	.long	2477                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0xb9c:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0xba3:0x5 DW_TAG_pointer_type
	.long	2984                    # DW_AT_type
	.byte	40                      # Abbrev [40] 0xba8:0x7 DW_TAG_typedef
	.long	.Linfo_string123        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0xbaf:0xb DW_TAG_typedef
	.long	2946                    # DW_AT_type
	.long	.Linfo_string125        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0xbba:0xb DW_TAG_typedef
	.long	3013                    # DW_AT_type
	.long	.Linfo_string132        # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xbc5:0x7 DW_TAG_base_type
	.long	.Linfo_string131        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xbcc:0xc DW_TAG_array_type
	.long	2477                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0xbd1:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0xbd8:0xc DW_TAG_array_type
	.long	2472                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0xbdd:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	3                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin1:
	.long	398                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x187 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string30         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string31         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x2a:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string27         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string28         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0x3b:0x138 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string82         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	42                      # Abbrev [42] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc39           # DW_AT_location
	.long	.Linfo_string158        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x5f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc40           # DW_AT_location
	.long	.Linfo_string159        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+2477     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x6e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc41           # DW_AT_location
	.long	.Linfo_string160        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	42                      # Abbrev [42] 0x7d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc42           # DW_AT_location
	.long	.Linfo_string161        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	42                      # Abbrev [42] 0x8c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc43           # DW_AT_location
	.long	.Linfo_string162        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	42                      # Abbrev [42] 0x9b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc44           # DW_AT_location
	.long	.Linfo_string163        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	42                      # Abbrev [42] 0xaa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc45           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	42                      # Abbrev [42] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc46           # DW_AT_location
	.long	.Linfo_string164        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	43                      # Abbrev [43] 0xc8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string165        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	44                      # Abbrev [44] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string146        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	390                     # DW_AT_type
	.byte	43                      # Abbrev [43] 0xde:0xb DW_TAG_formal_parameter
	.long	.Linfo_string171        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	43                      # Abbrev [43] 0xe9:0xb DW_TAG_formal_parameter
	.long	.Linfo_string172        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	43                      # Abbrev [43] 0xf4:0xb DW_TAG_formal_parameter
	.long	.Linfo_string173        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0xff:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc52           # DW_AT_location
	.long	.Linfo_string174        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x10e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc51           # DW_AT_location
	.long	.Linfo_string170        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x11d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc50           # DW_AT_location
	.long	.Linfo_string169        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x12c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc49           # DW_AT_location
	.long	.Linfo_string168        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	42                      # Abbrev [42] 0x13b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc48           # DW_AT_location
	.long	.Linfo_string167        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	43                      # Abbrev [43] 0x14a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string166        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+2472     # DW_AT_type
	.byte	45                      # Abbrev [45] 0x155:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string67         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	371                     # DW_AT_type
	.byte	46                      # Abbrev [46] 0x163:0xf DW_TAG_variable
	.long	.Ldebug_loc47           # DW_AT_location
	.long	.Linfo_string65         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	47                      # Abbrev [47] 0x173:0xc DW_TAG_array_type
	.long	.Lsection_info+2477     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x178:0x6 DW_TAG_subrange_type
	.long	383                     # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x17f:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	9                       # Abbrev [9] 0x186:0xb DW_TAG_typedef
	.long	42                      # DW_AT_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Lcu_begin2:
	.long	631                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x270 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string32         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string31         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin3 # DW_AT_high_pc
	.byte	48                      # Abbrev [48] 0x2a:0x118 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string83         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+253      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	49                      # Abbrev [49] 0x43:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string13         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+834      # DW_AT_type
	.byte	42                      # Abbrev [42] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc53           # DW_AT_location
	.long	.Linfo_string12         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	23                      # Abbrev [23] 0x5f:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string175        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x73:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string176        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x87:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string177        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x9b:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string178        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	46                      # Abbrev [46] 0xaf:0xf DW_TAG_variable
	.long	.Ldebug_loc54           # DW_AT_location
	.long	.Linfo_string179        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0xbe:0xf DW_TAG_variable
	.long	.Ldebug_loc55           # DW_AT_location
	.long	.Linfo_string180        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0xcd:0xf DW_TAG_variable
	.long	.Ldebug_loc56           # DW_AT_location
	.long	.Linfo_string181        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0xdc:0xf DW_TAG_variable
	.long	.Ldebug_loc57           # DW_AT_location
	.long	.Linfo_string182        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0xeb:0xf DW_TAG_variable
	.long	.Ldebug_loc58           # DW_AT_location
	.long	.Linfo_string183        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0xfa:0xf DW_TAG_variable
	.long	.Ldebug_loc59           # DW_AT_location
	.long	.Linfo_string184        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc60           # DW_AT_location
	.long	.Linfo_string14         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x118:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string185        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x125:0xf DW_TAG_variable
	.long	.Ldebug_loc61           # DW_AT_location
	.long	.Linfo_string186        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x134:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	97
	.long	.Linfo_string17         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0x142:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	42                      # Abbrev [42] 0x157:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc62           # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	49                      # Abbrev [49] 0x166:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string13         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+834      # DW_AT_type
	.byte	42                      # Abbrev [42] 0x173:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc63           # DW_AT_location
	.long	.Linfo_string12         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	42                      # Abbrev [42] 0x182:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc64           # DW_AT_location
	.long	.Linfo_string187        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+834      # DW_AT_type
	.byte	23                      # Abbrev [23] 0x191:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string175        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x1a5:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string176        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x1b9:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string177        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x1cd:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string178        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	629                     # DW_AT_type
	.byte	51                      # Abbrev [51] 0x1e1:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string53         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1ed:0xf DW_TAG_variable
	.long	.Ldebug_loc65           # DW_AT_location
	.long	.Linfo_string179        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1fc:0xf DW_TAG_variable
	.long	.Ldebug_loc66           # DW_AT_location
	.long	.Linfo_string180        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x20b:0xf DW_TAG_variable
	.long	.Ldebug_loc67           # DW_AT_location
	.long	.Linfo_string181        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x21a:0xf DW_TAG_variable
	.long	.Ldebug_loc68           # DW_AT_location
	.long	.Linfo_string182        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x229:0xf DW_TAG_variable
	.long	.Ldebug_loc69           # DW_AT_location
	.long	.Linfo_string183        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x238:0xf DW_TAG_variable
	.long	.Ldebug_loc70           # DW_AT_location
	.long	.Linfo_string184        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x247:0xf DW_TAG_variable
	.long	.Ldebug_loc71           # DW_AT_location
	.long	.Linfo_string14         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x256:0xf DW_TAG_variable
	.long	.Ldebug_loc72           # DW_AT_location
	.long	.Linfo_string185        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x265:0xf DW_TAG_variable
	.long	.Ldebug_loc73           # DW_AT_location
	.long	.Linfo_string186        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	52                      # Abbrev [52] 0x275:0x5 DW_TAG_const_type
	.long	.Lsection_info+253      # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin3:
	.long	363                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x164 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string33         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string31         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin5 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string34         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	start
	.byte	47                      # Abbrev [47] 0x3f:0xc DW_TAG_array_type
	.long	.Lsection_info+253      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x44:0x6 DW_TAG_subrange_type
	.long	75                      # DW_AT_type
	.byte	64                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x52:0x15 DW_TAG_variable
	.long	.Linfo_string35         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	elapsed
	.byte	41                      # Abbrev [41] 0x67:0x25 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string85         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	49                      # Abbrev [49] 0x7c:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string39         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	53                      # Abbrev [53] 0x8c:0x18 DW_TAG_subprogram
	.long	.Linfo_string78         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+253      # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	54                      # Abbrev [54] 0x98:0xb DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0xa4:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string86         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	42                      # Abbrev [42] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc74           # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	55                      # Abbrev [55] 0xc8:0x1c DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp547                # DW_AT_low_pc
	.long	.Ltmp548-.Ltmp547       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	36                      # DW_AT_call_line
	.byte	28                      # Abbrev [28] 0xdb:0x8 DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	117
	.byte	0
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0xe5:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string87         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	42                      # Abbrev [42] 0xfa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc75           # DW_AT_location
	.long	.Linfo_string39         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
	.byte	46                      # Abbrev [46] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc77           # DW_AT_location
	.long	.Linfo_string188        # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	46                      # Abbrev [46] 0x118:0xf DW_TAG_variable
	.long	.Ldebug_loc78           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+253      # DW_AT_type
	.byte	55                      # Abbrev [55] 0x127:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp555                # DW_AT_low_pc
	.long	.Ltmp556-.Ltmp555       # DW_AT_high_pc
	.byte	4                       # DW_AT_call_file
	.byte	47                      # DW_AT_call_line
	.byte	29                      # Abbrev [29] 0x13a:0x9 DW_TAG_variable
	.long	.Ldebug_loc76           # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	48                      # Abbrev [48] 0x145:0x29 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string88         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+253      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	49                      # Abbrev [49] 0x15e:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string39         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	.Lsection_info+78       # DW_AT_type
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
	.long	.Linfo_string36         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string31         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
	.byte	41                      # Abbrev [41] 0x2a:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string89         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	56                      # Abbrev [56] 0x3f:0x15 DW_TAG_variable
	.long	.Linfo_string37         # DW_AT_name
	.long	.Lsection_info+78       # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wtime_.sec
	.byte	42                      # Abbrev [42] 0x54:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc79           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+834      # DW_AT_type
	.byte	22                      # Abbrev [22] 0x63:0xf DW_TAG_variable
	.long	.Ldebug_loc80           # DW_AT_location
	.long	.Linfo_string189        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	115                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	37                      # Abbrev [37] 0x73:0x21 DW_TAG_structure_type
	.long	.Linfo_string194        # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	13                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	38                      # Abbrev [38] 0x7b:0xc DW_TAG_member
	.long	.Linfo_string190        # DW_AT_name
	.long	148                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	38                      # Abbrev [38] 0x87:0xc DW_TAG_member
	.long	.Linfo_string192        # DW_AT_name
	.long	159                     # DW_AT_type
	.byte	13                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x94:0xb DW_TAG_typedef
	.long	.Lsection_info+2946     # DW_AT_type
	.long	.Linfo_string191        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	57                      # Abbrev [57] 0x9f:0xb DW_TAG_typedef
	.long	.Lsection_info+2946     # DW_AT_type
	.long	.Linfo_string193        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
.Ldebug_ranges0:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
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
	.long	3045                    # Compilation Unit Length
	.long	596                     # DIE offset
	.asciz	"makea"                 # External Name
	.long	480                     # DIE offset
	.asciz	"amult"                 # External Name
	.long	217                     # DIE offset
	.asciz	"aelt"                  # External Name
	.long	458                     # DIE offset
	.asciz	"firstcol"              # External Name
	.long	2182                    # DIE offset
	.asciz	"conj_grad"             # External Name
	.long	1026                    # DIE offset
	.asciz	"vecset"                # External Name
	.long	447                     # DIE offset
	.asciz	"lastrow"               # External Name
	.long	414                     # DIE offset
	.asciz	"naa"                   # External Name
	.long	92                      # DIE offset
	.asciz	"rowstr"                # External Name
	.long	501                     # DIE offset
	.asciz	"tran"                  # External Name
	.long	522                     # DIE offset
	.asciz	"timeron"               # External Name
	.long	181                     # DIE offset
	.asciz	"acol"                  # External Name
	.long	436                     # DIE offset
	.asciz	"firstrow"              # External Name
	.long	260                     # DIE offset
	.asciz	"a"                     # External Name
	.long	425                     # DIE offset
	.asciz	"nzz"                   # External Name
	.long	42                      # DIE offset
	.asciz	"colidx"                # External Name
	.long	1490                    # DIE offset
	.asciz	"main"                  # External Name
	.long	1132                    # DIE offset
	.asciz	"sparse"                # External Name
	.long	351                     # DIE offset
	.asciz	"p"                     # External Name
	.long	372                     # DIE offset
	.asciz	"q"                     # External Name
	.long	393                     # DIE offset
	.asciz	"r"                     # External Name
	.long	469                     # DIE offset
	.asciz	"lastcol"               # External Name
	.long	844                     # DIE offset
	.asciz	"icnvrt"                # External Name
	.long	296                     # DIE offset
	.asciz	"x"                     # External Name
	.long	160                     # DIE offset
	.asciz	"arow"                  # External Name
	.long	330                     # DIE offset
	.asciz	"z"                     # External Name
	.long	882                     # DIE offset
	.asciz	"sprnvc"                # External Name
	.long	126                     # DIE offset
	.asciz	"iv"                    # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.long	.LpubNames_end1-.LpubNames_begin1 # Length of Public Names Info
.LpubNames_begin1:
	.short	2                       # DWARF Version
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	402                     # Compilation Unit Length
	.long	59                      # DIE offset
	.asciz	"print_results"         # External Name
	.long	0                       # End Mark
.LpubNames_end1:
	.long	.LpubNames_end2-.LpubNames_begin2 # Length of Public Names Info
.LpubNames_begin2:
	.short	2                       # DWARF Version
	.long	.Lcu_begin2             # Offset of Compilation Unit Info
	.long	635                     # Compilation Unit Length
	.long	42                      # DIE offset
	.asciz	"randlc"                # External Name
	.long	322                     # DIE offset
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
	.long	3045                    # Compilation Unit Length
	.long	2489                    # DIE offset
	.asciz	"FILE"                  # External Name
	.long	3013                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	78                      # DIE offset
	.asciz	"int"                   # External Name
	.long	2935                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	2953                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	3002                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	2984                    # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	2500                    # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	2991                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	2885                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	2960                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	2946                    # DIE offset
	.asciz	"long int"              # External Name
	.long	253                     # DIE offset
	.asciz	"double"                # External Name
	.long	533                     # DIE offset
	.asciz	"logical"               # External Name
	.long	2477                    # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.long	.LpubTypes_end1-.LpubTypes_begin1 # Length of Public Types Info
.LpubTypes_begin1:
	.short	2                       # DWARF Version
	.long	.Lcu_begin1             # Offset of Compilation Unit Info
	.long	402                     # Compilation Unit Length
	.long	390                     # DIE offset
	.asciz	"logical"               # External Name
	.long	0                       # End Mark
.LpubTypes_end1:
	.long	.LpubTypes_end2-.LpubTypes_begin2 # Length of Public Types Info
.LpubTypes_begin2:
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
.LpubTypes_end2:

	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.ident	"clang version 3.9.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
