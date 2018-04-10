	.text
	.file	"mg/A/mg.A.bc"
	.file	1 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/MG/./globals.h"
	.file	2 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/MG/../common/type.h"
	.file	3 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/MG/mg.c"
	.file	4 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/type.h"
	.file	5 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/c_timers.c"
	.file	6 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/../common/wtime.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	-4610184818551597739    # double -2.6666666666666665
.LCPI0_3:
	.quad	-4642989727312717253    # double -0.016393442622950821
.LCPI0_5:
	.quad	-4643211215818981376    # double -0.015625
.LCPI0_6:
	.quad	4542957617782330299     # double 5.3077070057340002E-5
.LCPI0_7:
	.quad	4460185030189797595     # double 1.5832750604399999E-10
.LCPI0_8:
	.quad	4513493083252444227     # double 5.70673228574E-7
.LCPI0_9:
	.quad	4521109751604444092     # double 1.8005644013550001E-6
.LCPI0_10:
	.quad	4522856047640670078     # double 2.4333653090689998E-6
.LCPI0_11:
	.quad	4529249300748922777     # double 6.4673293753389998E-6
.LCPI0_12:
	.quad	4455868063219174314     # double 8.157592357404E-11
.LCPI0_14:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI0_15:
	.quad	4633359591634108416     # double 58
.LCPI0_16:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_17:
	.quad	4607182418800017408     # double 1
.LCPI0_18:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.quad	4595172819793696085     # double 0.16666666666666666
	.quad	4590669220166325589     # double 0.083333333333333329
.LCPI0_2:
	.quad	-4627845993560893801    # double -0.17647058823529413
	.quad	4584391475231203080     # double 0.030303030303030304
.LCPI0_4:
	.quad	-4622945017495814144    # double -0.375
	.quad	4584664420663164928     # double 0.03125
.LCPI0_13:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	3 87 0                  # mg.c:87:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	3 107 5 prologue_end    # mg.c:107:5
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
	subq	$408, %rsp              # imm = 0x198
.Ltmp6:
	.cfi_def_cfa_offset 464
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
.Ltmp13:
	#DEBUG_VALUE: main:i <- 0
	xorl	%edi, %edi
	callq	timer_clear
.Ltmp14:
	#DEBUG_VALUE: main:i <- 1
	movl	$1, %edi
	callq	timer_clear
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
.Ltmp15:
	.loc	3 110 3                 # mg.c:110:3
	xorl	%edi, %edi
	callq	timer_start
.Ltmp16:
	.loc	3 116 13                # mg.c:116:13
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	callq	fopen
.Ltmp17:
	#DEBUG_VALUE: main:fp <- %RAX
	.loc	3 116 39 is_stmt 0      # mg.c:116:39
	testq	%rax, %rax
.Ltmp18:
	.loc	3 116 7                 # mg.c:116:7
	je	.LBB0_2
.Ltmp19:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: main:fp <- %RAX
	movb	$1, timeron(%rip)
.Ltmp20:
	.loc	3 118 21 is_stmt 1      # mg.c:118:21
	movl	$.L.str.3, %ecx
	movd	%rcx, %xmm0
	movl	$.L.str.2, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 320(%rsp)
	.loc	3 120 21                # mg.c:120:21
	movl	$.L.str.5, %ecx
	movd	%rcx, %xmm0
	movl	$.L.str.4, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 336(%rsp)
	.loc	3 122 22                # mg.c:122:22
	movq	$.L.str.6, 352(%rsp)
	.loc	3 123 22                # mg.c:123:22
	movl	$.L.str.8, %ecx
	movd	%rcx, %xmm0
	movl	$.L.str.7, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 368(%rsp)
	.loc	3 125 22                # mg.c:125:22
	movl	$.L.str.10, %ecx
	movd	%rcx, %xmm0
	movl	$.L.str.9, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 384(%rsp)
	.loc	3 127 5                 # mg.c:127:5
	movq	%rax, %rdi
	callq	fclose
.Ltmp21:
	jmp	.LBB0_3
.Ltmp22:
.LBB0_2:                                # %if.else
	#DEBUG_VALUE: main:fp <- %RAX
	movb	$0, timeron(%rip)
.Ltmp23:
.LBB0_3:                                # %if.end
	.loc	3 132 3                 # mg.c:132:3
	movl	$.Lstr, %edi
	callq	puts
.Ltmp24:
	.loc	3 134 13                # mg.c:134:13
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, %rbx
.Ltmp25:
	#DEBUG_VALUE: main:fp <- %RBX
	.loc	3 134 37 is_stmt 0      # mg.c:134:37
	testq	%rbx, %rbx
.Ltmp26:
	.loc	3 134 7                 # mg.c:134:7
	je	.LBB0_181
.Ltmp27:
# BB#4:                                 # %if.then14
	#DEBUG_VALUE: main:fp <- %RBX
	.loc	3 136 5 is_stmt 1       # mg.c:136:5
	movl	$.Lstr.62, %edi
	callq	puts
	.loc	3 137 14                # mg.c:137:14
	movl	$.L.str.14, %esi
	movl	$lt, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
.Ltmp28:
	#DEBUG_VALUE: result <- 0
	.p2align	4, 0x90
.LBB0_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	3 138 12 discriminator 1 # mg.c:138:12
	movq	%rbx, %rdi
	callq	fgetc
	.loc	3 138 5 is_stmt 0 discriminator 1 # mg.c:138:5
	cmpl	$10, %eax
	jne	.LBB0_5
# BB#6:                                 # %while.end
	.loc	3 139 36 is_stmt 1      # mg.c:139:36
	movslq	lt(%rip), %rax
	leaq	nx(,%rax,4), %rdx
	.loc	3 139 45 is_stmt 0      # mg.c:139:45
	leaq	ny(,%rax,4), %rcx
	.loc	3 139 54                # mg.c:139:54
	leaq	nz(,%rax,4), %r8
	.loc	3 139 14                # mg.c:139:14
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	#DEBUG_VALUE: result <- 0
	.p2align	4, 0x90
.LBB0_7:                                # %while.cond25
                                        # =>This Inner Loop Header: Depth=1
	.loc	3 140 12 is_stmt 1 discriminator 1 # mg.c:140:12
	movq	%rbx, %rdi
	callq	fgetc
	.loc	3 140 5 is_stmt 0 discriminator 1 # mg.c:140:5
	cmpl	$10, %eax
	jne	.LBB0_7
# BB#8:                                 # %while.end29
	leaq	108(%rsp), %rdx
.Ltmp29:
	#DEBUG_VALUE: main:nit <- [%RDX+0]
	.loc	3 141 14 is_stmt 1      # mg.c:141:14
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	#DEBUG_VALUE: result <- 0
.Ltmp30:
	.p2align	4, 0x90
.LBB0_9:                                # %while.cond31
                                        # =>This Inner Loop Header: Depth=1
	.loc	3 142 12 discriminator 1 # mg.c:142:12
	movq	%rbx, %rdi
	callq	fgetc
	.loc	3 142 22 is_stmt 0 discriminator 1 # mg.c:142:22
	cmpl	$10, %eax
	.loc	3 142 5 discriminator 1 # mg.c:142:5
	jne	.LBB0_9
# BB#10:                                # %if.end62
.Ltmp31:
	.loc	3 144 16 is_stmt 1      # mg.c:144:16
	movl	$.L.str.16, %esi
	movl	$debug_vec, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	#DEBUG_VALUE: result <- 0
	movl	$.L.str.16, %esi
	movl	$debug_vec+4, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+8, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+12, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+16, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+20, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+24, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
	movl	$.L.str.16, %esi
	movl	$debug_vec+28, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_fscanf
.Ltmp32:
	.loc	3 146 5                 # mg.c:146:5
	movq	%rbx, %rdi
	callq	fclose
.Ltmp33:
	.loc	3 159 9                 # mg.c:159:9
	movslq	lt(%rip), %rdx
	.loc	3 159 19 is_stmt 0      # mg.c:159:19
	movl	ny(,%rdx,4), %eax
	.loc	3 159 27                # mg.c:159:27
	cmpl	%eax, nx(,%rdx,4)
	jne	.LBB0_12
	jmp	.LBB0_11
.Ltmp34:
.LBB0_181:                              # %if.end62.thread
	#DEBUG_VALUE: main:fp <- %RBX
	.loc	3 148 5 is_stmt 1       # mg.c:148:5
	movl	$.Lstr.55, %edi
	callq	puts
	.loc	3 149 8                 # mg.c:149:8
	movl	$8, lt(%rip)
.Ltmp35:
	#DEBUG_VALUE: main:nit <- 4
	.loc	3 150 9                 # mg.c:150:9
	movl	$4, 108(%rsp)
	.loc	3 151 12                # mg.c:151:12
	movl	$256, nx+32(%rip)       # imm = 0x100
	.loc	3 152 12                # mg.c:152:12
	movl	$256, ny+32(%rip)       # imm = 0x100
	.loc	3 153 12                # mg.c:153:12
	movl	$256, nz+32(%rip)       # imm = 0x100
.Ltmp36:
	#DEBUG_VALUE: main:i <- 0
	.loc	3 155 20                # mg.c:155:20
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, debug_vec+16(%rip)
	movdqa	%xmm0, debug_vec(%rip)
	movl	$256, %eax              # imm = 0x100
	movl	$8, %edx
.Ltmp37:
.LBB0_11:                               # %lor.lhs.false
	.loc	3 159 9                 # mg.c:159:9
	movslq	%edx, %rcx
	.loc	3 159 38 is_stmt 0 discriminator 1 # mg.c:159:38
	cmpl	nz(,%rcx,4), %eax
	jne	.LBB0_12
# BB#13:                                # %if.else74
.Ltmp38:
	.loc	3 161 31 is_stmt 1 discriminator 2 # mg.c:161:31
	movl	108(%rsp), %ecx
.Ltmp39:
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 161 28 is_stmt 0 discriminator 1 # mg.c:161:28
	cmpl	$32, %eax
	jne	.LBB0_16
.Ltmp40:
# BB#14:                                # %if.else74
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$4, %ecx
	jne	.LBB0_16
.Ltmp41:
# BB#15:                                # %if.then79
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp42:
	.loc	3 162 11 is_stmt 1      # mg.c:162:11
	movb	$83, Class(%rip)
	jmp	.LBB0_22
.Ltmp43:
.LBB0_16:                               # %if.else80
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 163 29 discriminator 1 # mg.c:163:29
	cmpl	$128, %eax
	jne	.LBB0_19
.Ltmp44:
# BB#17:                                # %if.else80
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$4, %ecx
	jne	.LBB0_19
.Ltmp45:
# BB#18:                                # %if.then86
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp46:
	.loc	3 164 11                # mg.c:164:11
	movb	$87, Class(%rip)
	jmp	.LBB0_22
.Ltmp47:
.LBB0_19:                               # %if.else87
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 165 29 discriminator 1 # mg.c:165:29
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB0_23
.Ltmp48:
# BB#20:                                # %if.else87
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$4, %ecx
	jne	.LBB0_23
.Ltmp49:
# BB#21:                                # %if.then93
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp50:
	.loc	3 166 11                # mg.c:166:11
	movb	$65, Class(%rip)
.Ltmp51:
.LBB0_22:                               # %if.then145
	#DEBUG_VALUE: main:nit <- %ECX
	leaq	288(%rsp), %rax
	.loc	3 192 8                 # mg.c:192:8
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 288(%rsp)
	.loc	3 194 8                 # mg.c:194:8
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.666667e-01,8.333333e-02]
	movaps	%xmm0, 304(%rsp)
.Ltmp52:
	.loc	3 201 10                # mg.c:201:10
	movaps	.LCPI0_4(%rip), %xmm0   # xmm0 = [-3.750000e-01,3.125000e-02]
	movaps	%xmm0, 256(%rsp)
	.loc	3 203 10                # mg.c:203:10
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_36
.Ltmp53:
.LBB0_23:                               # %if.else94
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 167 29 discriminator 1 # mg.c:167:29
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB0_26
.Ltmp54:
# BB#24:                                # %if.else94
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$20, %ecx
	jne	.LBB0_26
.Ltmp55:
# BB#25:                                # %if.then100
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp56:
	.loc	3 168 11                # mg.c:168:11
	movb	$66, Class(%rip)
	jmp	.LBB0_35
.Ltmp57:
.LBB0_26:                               # %if.else101
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 169 29 discriminator 1 # mg.c:169:29
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB0_29
.Ltmp58:
# BB#27:                                # %if.else101
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$20, %ecx
	jne	.LBB0_29
.Ltmp59:
# BB#28:                                # %if.then107
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp60:
	.loc	3 170 11                # mg.c:170:11
	movb	$67, Class(%rip)
	jmp	.LBB0_35
.Ltmp61:
.LBB0_29:                               # %if.else108
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 171 30 discriminator 1 # mg.c:171:30
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_32
.Ltmp62:
# BB#30:                                # %if.else108
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$50, %ecx
	jne	.LBB0_32
.Ltmp63:
# BB#31:                                # %if.then114
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp64:
	.loc	3 172 11                # mg.c:172:11
	movb	$68, Class(%rip)
	jmp	.LBB0_35
.Ltmp65:
.LBB0_32:                               # %if.else115
	#DEBUG_VALUE: main:nit <- %ECX
	.loc	3 173 30 discriminator 1 # mg.c:173:30
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB0_12
.Ltmp66:
# BB#33:                                # %if.else115
	#DEBUG_VALUE: main:nit <- %ECX
	cmpl	$50, %ecx
	jne	.LBB0_12
.Ltmp67:
# BB#34:                                # %if.then121
	#DEBUG_VALUE: main:nit <- %ECX
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp68:
	.loc	3 174 11                # mg.c:174:11
	movb	$69, Class(%rip)
	jmp	.LBB0_35
.Ltmp69:
.LBB0_12:                               # %if.then73
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.Ltmp70:
	.loc	3 160 11                # mg.c:160:11
	movb	$85, Class(%rip)
.Ltmp71:
.LBB0_35:                               # %if.else150
	leaq	288(%rsp), %rax
	.loc	3 192 8                 # mg.c:192:8
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 288(%rsp)
	.loc	3 194 8                 # mg.c:194:8
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.666667e-01,8.333333e-02]
	movaps	%xmm0, 304(%rsp)
.Ltmp72:
	.loc	3 209 10                # mg.c:209:10
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [-1.764706e-01,3.030303e-02]
	movaps	%xmm0, 256(%rsp)
	.loc	3 211 10                # mg.c:211:10
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB0_36:                               # %if.end155
	movapd	%xmm0, 272(%rsp)
	movb	$1, lb(%rip)
	leaq	180(%rsp), %rdi
.Ltmp73:
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	leaq	176(%rsp), %rsi
.Ltmp74:
	#DEBUG_VALUE: main:n2 <- [%RSI+0]
	leaq	172(%rsp), %rdx
.Ltmp75:
	#DEBUG_VALUE: main:n3 <- [%RDX+0]
	.loc	3 217 3                 # mg.c:217:3
	callq	setup
	.loc	3 235 27                # mg.c:235:27
	movl	176(%rsp), %eax
.Ltmp76:
	#DEBUG_VALUE: zero3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: main:n2 <- [%RSP+112]
	.loc	3 235 31 is_stmt 0      # mg.c:235:31
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	172(%rsp), %eax
.Ltmp77:
	#DEBUG_VALUE: zero3:n3 <- %EAX
	#DEBUG_VALUE: norm2u3:n3 <- %EAX
	#DEBUG_VALUE: norm2u3:n3 <- %EAX
	#DEBUG_VALUE: main:n3 <- %EAX
	.loc	3 1218 3 is_stmt 1      # mg.c:1218:3
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	180(%rsp), %ecx
.Ltmp78:
	#DEBUG_VALUE: zero3:i3 <- 0
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	testl	%eax, %eax
.Ltmp79:
	#DEBUG_VALUE: zero3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: main:n3 <- [%RSP+144]
	jle	.LBB0_46
.Ltmp80:
# BB#37:                                # %if.end155
	#DEBUG_VALUE: main:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+144]
	#DEBUG_VALUE: main:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+112]
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	movq	112(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_46
.Ltmp81:
# BB#38:                                # %for.cond4.preheader.lr.ph.us.preheader.i
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: main:n2 <- [%RSP+112]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: main:n3 <- [%RSP+144]
	movq	96(%rsp), %rcx          # 8-byte Reload
.Ltmp82:
	.loc	3 1225 9                # mg.c:1225:9
	leal	-1(%rcx), %eax
.Ltmp83:
	.loc	3 1224 7 discriminator 1 # mg.c:1224:7
	testl	%ecx, %ecx
	jle	.LBB0_46
.Ltmp84:
# BB#39:                                # %for.cond4.preheader.lr.ph.us.i.us.preheader
	#DEBUG_VALUE: main:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+144]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+144]
	#DEBUG_VALUE: main:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n2 <- [%RSP+112]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+112]
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	.loc	3 1225 9                # mg.c:1225:9
	leaq	8(,%rax,8), %rbx
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %ecx
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	movl	%eax, %r14d
	andl	$3, %r14d
	movq	%r14, 232(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	96(%rsp), %r13          # 8-byte Reload
	imulq	%r13, %rcx
	shlq	$3, %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	(,%r13,8), %r15
	movq	%r15, 152(%rsp)         # 8-byte Spill
	shlq	$5, %r13
	movl	$u, %ecx
	movl	$3, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.Ltmp85:
	.loc	3 218 3                 # mg.c:218:3
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
.Ltmp86:
	.p2align	4, 0x90
.LBB0_40:                               # %for.cond4.preheader.lr.ph.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_44 Depth 2
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	testl	%r14d, %r14d
	movq	%rcx, %rbp
	movl	$0, %r12d
	je	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # %for.body6.lr.ph.us.us.i.us.prol
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp87:
	.loc	3 1225 23               # mg.c:1225:23
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memset
.Ltmp88:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	incq	%r12
	addq	%r15, %rbp
	cmpl	%r12d, %r14d
	jne	.LBB0_41
.Ltmp89:
.LBB0_42:                               # %for.cond4.preheader.lr.ph.us.i.us.split
                                        #   in Loop: Header=BB0_40 Depth=1
	cmpl	$3, 168(%rsp)           # 4-byte Folded Reload
	jb	.LBB0_45
# BB#43:                                # %for.cond4.preheader.lr.ph.us.i.us.split.split
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	subl	%r12d, %ebp
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rcx
	movq	152(%rsp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %rcx
	imulq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %r14
	imulq	%rax, %r14
	addq	192(%rsp), %r12         # 8-byte Folded Reload
	imulq	%rax, %r12
	.loc	3 218 3                 # mg.c:218:3
	movl	$u, %r15d
	.p2align	4, 0x90
.LBB0_44:                               # %for.body6.lr.ph.us.us.i.us
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp90:
	.loc	3 1225 23               # mg.c:1225:23
	leaq	(%r15,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	leaq	(%r15,%r14), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
.Ltmp91:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	addq	%r13, %r15
	addl	$-4, %ebp
	jne	.LBB0_44
.Ltmp92:
.LBB0_45:                               # %for.cond1.for.inc14_crit_edge.us.i.loopexit.us
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	240(%rsp), %rdx         # 8-byte Reload
.Ltmp93:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	incq	%rdx
	movq	248(%rsp), %rcx         # 8-byte Reload
	addq	224(%rsp), %rcx         # 8-byte Folded Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	addq	%rax, 216(%rsp)         # 8-byte Folded Spill
	addq	%rax, 208(%rsp)         # 8-byte Folded Spill
	addq	%rax, 200(%rsp)         # 8-byte Folded Spill
	addq	%rax, 192(%rsp)         # 8-byte Folded Spill
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %edx
	movq	232(%rsp), %r14         # 8-byte Reload
	movq	152(%rsp), %r15         # 8-byte Reload
	jne	.LBB0_40
.Ltmp94:
.LBB0_46:                               # %zero3.exit
	.loc	3 219 24                # mg.c:219:24
	movslq	lt(%rip), %rax
	movl	nx(,%rax,4), %ecx
	.loc	3 219 32 is_stmt 0      # mg.c:219:32
	movl	ny(,%rax,4), %r8d
	.loc	3 219 3                 # mg.c:219:3
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	callq	zran3
	.loc	3 221 40 is_stmt 1      # mg.c:221:40
	movslq	lt(%rip), %rax
	movl	nx(,%rax,4), %ebp
.Ltmp95:
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 221 48 is_stmt 0      # mg.c:221:48
	movl	ny(,%rax,4), %ebx
.Ltmp96:
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	.loc	3 221 56                # mg.c:221:56
	movl	nz(,%rax,4), %r14d
.Ltmp97:
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	.loc	3 847 7 is_stmt 1       # mg.c:847:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_48
.Ltmp98:
# BB#47:                                # %if.then.i458
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 847 16 is_stmt 0 discriminator 1 # mg.c:847:16
	movl	$8, %edi
	callq	timer_start
.Ltmp99:
.LBB0_48:                               # %if.end.i466
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 848 12 is_stmt 1      # mg.c:848:12
	cvtsi2sdl	%ebp, %xmm0
	.loc	3 848 15 is_stmt 0      # mg.c:848:15
	cvtsi2sdl	%ebx, %xmm2
	.loc	3 848 14                # mg.c:848:14
	mulsd	%xmm0, %xmm2
	.loc	3 848 18                # mg.c:848:18
	cvtsi2sdl	%r14d, %xmm1
	.loc	3 848 17                # mg.c:848:17
	mulsd	%xmm2, %xmm1
.Ltmp100:
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:i3 <- 1
	#DEBUG_VALUE: norm2u3:s <- 0.000000e+00
	.loc	3 852 23 is_stmt 1 discriminator 1 # mg.c:852:23
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	xorpd	%xmm0, %xmm0
	.loc	3 852 3 is_stmt 0 discriminator 1 # mg.c:852:3
	cmpl	$2, %eax
	jl	.LBB0_61
.Ltmp101:
# BB#49:                                # %for.cond6.preheader.lr.ph.i471
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	.loc	3 853 25 is_stmt 1 discriminator 1 # mg.c:853:25
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %r12d
	.loc	3 853 5 is_stmt 0 discriminator 1 # mg.c:853:5
	cmpl	$2, %r12d
	jl	.LBB0_61
.Ltmp102:
# BB#50:                                # %for.cond6.preheader.lr.ph.i471
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 854 27 is_stmt 1 discriminator 1 # mg.c:854:27
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_61
.Ltmp103:
# BB#51:                                # %for.cond11.preheader.lr.ph.us.i475.us.preheader
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	movq	96(%rsp), %rsi          # 8-byte Reload
.Ltmp104:
	.loc	3 855 21                # mg.c:855:21
	leal	2(%rsi), %ecx
	leal	-3(%rsi), %r13d
.Ltmp105:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	andl	$3, %ecx
	movq	112(%rsp), %rdx         # 8-byte Reload
.Ltmp106:
	.loc	3 855 21                # mg.c:855:21
	leaq	8(,%rdx,8), %rax
	imulq	%rsi, %rax
	leaq	v+8(%rax), %r9
	movq	%rdx, %r8
	imulq	%rsi, %r8
	shlq	$3, %r8
	leaq	(,%rsi,8), %rbp
.Ltmp107:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	leal	-1(%rsi), %r15d
.Ltmp108:
	.loc	3 855 21                # mg.c:855:21
	leaq	v+16(%rax), %r10
	xorpd	%xmm0, %xmm0
	movl	$1, %r11d
.Ltmp109:
	.p2align	4, 0x90
.LBB0_52:                               # %for.cond11.preheader.lr.ph.us.i475.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_53 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	.loc	3 221 3                 # mg.c:221:3
	movq	%r10, %rdi
	movq	%r9, %rsi
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_53:                               # %for.body15.lr.ph.us.us.i484.us
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	testl	%ecx, %ecx
	movq	%rsi, %rax
	movl	$0, %edx
	movl	$1, %r14d
	je	.LBB0_56
	.p2align	4, 0x90
.LBB0_54:                               # %for.body15.us.us.i496.us.prol
                                        #   Parent Loop BB0_52 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %r14
.Ltmp110:
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp111:
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	leaq	1(%r14), %rdx
	addq	$8, %rax
	cmpl	%edx, %ecx
	jne	.LBB0_54
.Ltmp112:
# BB#55:                                #   in Loop: Header=BB0_53 Depth=2
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	addq	$2, %r14
.Ltmp113:
.LBB0_56:                               # %for.body15.lr.ph.us.us.i484.us.split
                                        #   in Loop: Header=BB0_53 Depth=2
	cmpl	$3, %r13d
	jb	.LBB0_59
# BB#57:                                # %for.body15.lr.ph.us.us.i484.us.split.split
                                        #   in Loop: Header=BB0_53 Depth=2
	movl	%r15d, %eax
	subl	%r14d, %eax
	leaq	(%rdi,%r14,8), %rdx
.Ltmp114:
	.p2align	4, 0x90
.LBB0_58:                               # %for.body15.us.us.i496.us
                                        #   Parent Loop BB0_52 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 855 21                # mg.c:855:21
	movsd	-16(%rdx), %xmm2        # xmm2 = mem[0],zero
	movsd	-8(%rdx), %xmm3         # xmm3 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm0, %xmm2
.Ltmp115:
	#DEBUG_VALUE: norm2u3:s <- %XMM2
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm3, %xmm3
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm3
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
.Ltmp116:
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm3, %xmm2
	.loc	3 855 21                # mg.c:855:21
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm0, %xmm0
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp117:
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	addq	$32, %rdx
	addl	$-4, %eax
	jne	.LBB0_58
.Ltmp118:
.LBB0_59:                               # %for.cond11.for.inc31_crit_edge.us.us.i488.us
                                        #   in Loop: Header=BB0_53 Depth=2
	.loc	3 853 5 discriminator 1 # mg.c:853:5
	incq	%rbx
	addq	%rbp, %rsi
	addq	%rbp, %rdi
	cmpl	%r12d, %ebx
	jne	.LBB0_53
.Ltmp119:
# BB#60:                                # %for.cond6.for.inc34_crit_edge.us.i480.loopexit.us
                                        #   in Loop: Header=BB0_52 Depth=1
	.loc	3 852 3 discriminator 1 # mg.c:852:3
	incq	%r11
	addq	%r8, %r9
	addq	%r8, %r10
	cmpl	88(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB0_52
.Ltmp120:
.LBB0_61:                               # %for.end36.i506
	.loc	3 862 18                # mg.c:862:18
	divsd	%xmm1, %xmm0
	.loc	3 862 11 is_stmt 0      # mg.c:862:11
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
.Ltmp121:
	.loc	3 221 3 is_stmt 1       # mg.c:221:3
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_63
# BB#62:                                # %call.sqrt
	callq	sqrt
.LBB0_63:                               # %for.end36.i506.split
.Ltmp122:
	.loc	3 863 7                 # mg.c:863:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	184(%rsp), %rbp         # 8-byte Reload
	jne	.LBB0_65
# BB#64:                                # %if.then39.i507
.Ltmp123:
	.loc	3 863 16 is_stmt 0 discriminator 1 # mg.c:863:16
	movl	$8, %edi
	callq	timer_stop
.Ltmp124:
.LBB0_65:                               # %norm2u3.exit508
	.loc	3 223 46 is_stmt 1      # mg.c:223:46
	movslq	lt(%rip), %rax
	movl	nx(,%rax,4), %esi
	.loc	3 223 54 is_stmt 0      # mg.c:223:54
	movl	ny(,%rax,4), %edx
	.loc	3 223 62                # mg.c:223:62
	movl	nz(,%rax,4), %ecx
	.loc	3 223 70                # mg.c:223:70
	movsbl	Class(%rip), %r8d
	.loc	3 223 3                 # mg.c:223:3
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	3 224 32 is_stmt 1      # mg.c:224:32
	movl	108(%rsp), %esi
.Ltmp125:
	#DEBUG_VALUE: main:nit <- %ESI
	.loc	3 224 3 is_stmt 0       # mg.c:224:3
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	3 225 3 is_stmt 1       # mg.c:225:3
	movl	$10, %edi
	callq	putchar
	.loc	3 227 3                 # mg.c:227:3
	movl	%ebx, 8(%rsp)
	movq	%rbp, (%rsp)
.Ltmp126:
	#DEBUG_VALUE: norm2u3:or <- %RDX
	#DEBUG_VALUE: norm2u3:or <- %RSI
	#DEBUG_VALUE: zero3:oz <- %RDI
	movl	$u, %edi
.Ltmp127:
	movl	$v, %esi
.Ltmp128:
	movl	$r, %edx
.Ltmp129:
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	resid
	.loc	3 228 40                # mg.c:228:40
	movslq	lt(%rip), %rax
	movl	nx(,%rax,4), %ebp
.Ltmp130:
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 228 48 is_stmt 0      # mg.c:228:48
	movl	ny(,%rax,4), %ebx
.Ltmp131:
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	.loc	3 228 56                # mg.c:228:56
	movl	nz(,%rax,4), %r14d
.Ltmp132:
	.loc	3 847 7 is_stmt 1       # mg.c:847:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
.Ltmp133:
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	jne	.LBB0_67
.Ltmp134:
# BB#66:                                # %if.then.i510
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 847 16 is_stmt 0 discriminator 1 # mg.c:847:16
	movl	$8, %edi
	callq	timer_start
.Ltmp135:
.LBB0_67:                               # %if.end.i518
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 848 12 is_stmt 1      # mg.c:848:12
	cvtsi2sdl	%ebp, %xmm0
	.loc	3 848 15 is_stmt 0      # mg.c:848:15
	cvtsi2sdl	%ebx, %xmm2
	.loc	3 848 14                # mg.c:848:14
	mulsd	%xmm0, %xmm2
	.loc	3 848 18                # mg.c:848:18
	cvtsi2sdl	%r14d, %xmm1
	.loc	3 848 17                # mg.c:848:17
	mulsd	%xmm2, %xmm1
.Ltmp136:
	#DEBUG_VALUE: norm2u3:s <- 0.000000e+00
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	xorpd	%xmm0, %xmm0
.Ltmp137:
	#DEBUG_VALUE: norm2u3:i3 <- 1
	.loc	3 852 3 is_stmt 1 discriminator 1 # mg.c:852:3
	cmpl	$2, 88(%rsp)            # 4-byte Folded Reload
	jl	.LBB0_80
.Ltmp138:
# BB#68:                                # %for.cond6.preheader.lr.ph.i523
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	.loc	3 853 25 discriminator 1 # mg.c:853:25
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %r12d
	.loc	3 853 5 is_stmt 0 discriminator 1 # mg.c:853:5
	cmpl	$2, %r12d
	jl	.LBB0_80
.Ltmp139:
# BB#69:                                # %for.cond6.preheader.lr.ph.i523
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 854 27 is_stmt 1 discriminator 1 # mg.c:854:27
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_80
.Ltmp140:
# BB#70:                                # %for.cond11.preheader.lr.ph.us.i527.us.preheader
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	movq	96(%rsp), %rsi          # 8-byte Reload
.Ltmp141:
	.loc	3 855 21                # mg.c:855:21
	leal	2(%rsi), %ecx
	leal	-3(%rsi), %r13d
.Ltmp142:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	andl	$3, %ecx
	movq	112(%rsp), %rdx         # 8-byte Reload
.Ltmp143:
	.loc	3 855 21                # mg.c:855:21
	leaq	8(,%rdx,8), %rax
	imulq	%rsi, %rax
	leaq	r+8(%rax), %r9
	movq	%rdx, %r8
	imulq	%rsi, %r8
	shlq	$3, %r8
	leaq	(,%rsi,8), %r14
.Ltmp144:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	leal	-1(%rsi), %r15d
.Ltmp145:
	.loc	3 855 21                # mg.c:855:21
	leaq	r+16(%rax), %r10
	xorpd	%xmm0, %xmm0
	movl	$1, %r11d
.Ltmp146:
	.p2align	4, 0x90
.LBB0_71:                               # %for.cond11.preheader.lr.ph.us.i527.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	3 228 3                 # mg.c:228:3
	movq	%r10, %rdi
	movq	%r9, %rsi
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_72:                               # %for.body15.lr.ph.us.us.i536.us
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	testl	%ecx, %ecx
	movq	%rsi, %rax
	movl	$0, %edx
	movl	$1, %ebp
	je	.LBB0_75
	.p2align	4, 0x90
.LBB0_73:                               # %for.body15.us.us.i548.us.prol
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rbp
.Ltmp147:
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp148:
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	leaq	1(%rbp), %rdx
	addq	$8, %rax
	cmpl	%edx, %ecx
	jne	.LBB0_73
.Ltmp149:
# BB#74:                                #   in Loop: Header=BB0_72 Depth=2
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	addq	$2, %rbp
.Ltmp150:
.LBB0_75:                               # %for.body15.lr.ph.us.us.i536.us.split
                                        #   in Loop: Header=BB0_72 Depth=2
	cmpl	$3, %r13d
	jb	.LBB0_78
# BB#76:                                # %for.body15.lr.ph.us.us.i536.us.split.split
                                        #   in Loop: Header=BB0_72 Depth=2
	movl	%r15d, %eax
	subl	%ebp, %eax
	leaq	(%rdi,%rbp,8), %rdx
.Ltmp151:
	.p2align	4, 0x90
.LBB0_77:                               # %for.body15.us.us.i548.us
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 855 21                # mg.c:855:21
	movsd	-16(%rdx), %xmm2        # xmm2 = mem[0],zero
	movsd	-8(%rdx), %xmm3         # xmm3 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm0, %xmm2
.Ltmp152:
	#DEBUG_VALUE: norm2u3:s <- %XMM2
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm3, %xmm3
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm3
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
.Ltmp153:
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm3, %xmm2
	.loc	3 855 21                # mg.c:855:21
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm0, %xmm0
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp154:
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	addq	$32, %rdx
	addl	$-4, %eax
	jne	.LBB0_77
.Ltmp155:
.LBB0_78:                               # %for.cond11.for.inc31_crit_edge.us.us.i540.us
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	3 853 5 discriminator 1 # mg.c:853:5
	incq	%rbx
	addq	%r14, %rsi
	addq	%r14, %rdi
	cmpl	%r12d, %ebx
	jne	.LBB0_72
.Ltmp156:
# BB#79:                                # %for.cond6.for.inc34_crit_edge.us.i532.loopexit.us
                                        #   in Loop: Header=BB0_71 Depth=1
	.loc	3 852 3 discriminator 1 # mg.c:852:3
	incq	%r11
	addq	%r8, %r9
	addq	%r8, %r10
	cmpl	88(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB0_71
.Ltmp157:
.LBB0_80:                               # %for.end36.i558
	.loc	3 862 18                # mg.c:862:18
	divsd	%xmm1, %xmm0
	.loc	3 862 11 is_stmt 0      # mg.c:862:11
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
.Ltmp158:
	.loc	3 228 3 is_stmt 1       # mg.c:228:3
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_82
# BB#81:                                # %call.sqrt185
	callq	sqrt
.LBB0_82:                               # %for.end36.i558.split
.Ltmp159:
	.loc	3 863 7                 # mg.c:863:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	184(%rsp), %rbp         # 8-byte Reload
	jne	.LBB0_84
# BB#83:                                # %if.then39.i559
.Ltmp160:
	.loc	3 863 16 is_stmt 0 discriminator 1 # mg.c:863:16
	movl	$8, %edi
	callq	timer_stop
.Ltmp161:
.LBB0_84:                               # %norm2u3.exit560
	leaq	256(%rsp), %rsi
	.loc	3 235 3 is_stmt 1       # mg.c:235:3
	movq	%rbp, %rdi
	movq	96(%rsp), %r12          # 8-byte Reload
	movl	%r12d, %edx
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %ecx
	movq	144(%rsp), %r15         # 8-byte Reload
	movl	%r15d, %r8d
	callq	mg3P
	.loc	3 236 3                 # mg.c:236:3
	movl	%r14d, 8(%rsp)
	movq	%rbp, (%rsp)
.Ltmp162:
	#DEBUG_VALUE: zero3:oz <- %RDI
	movl	$u, %edi
.Ltmp163:
	movl	$v, %esi
	movl	$r, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	movl	%r15d, %r9d
	callq	resid
	leaq	180(%rsp), %rdi
.Ltmp164:
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	leaq	176(%rsp), %rsi
.Ltmp165:
	#DEBUG_VALUE: main:n2 <- [%RSI+0]
	leaq	172(%rsp), %rdx
.Ltmp166:
	#DEBUG_VALUE: main:n3 <- [%RDX+0]
	.loc	3 237 3                 # mg.c:237:3
	callq	setup
	.loc	3 271 18                # mg.c:271:18
	movl	176(%rsp), %ebp
.Ltmp167:
	#DEBUG_VALUE: zero3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: main:n2 <- %EBP
	.loc	3 271 22 is_stmt 0      # mg.c:271:22
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movl	172(%rsp), %ecx
.Ltmp168:
	#DEBUG_VALUE: zero3:n3 <- %ECX
	#DEBUG_VALUE: norm2u3:n3 <- %ECX
	#DEBUG_VALUE: norm2u3:n3 <- %ECX
	#DEBUG_VALUE: main:n3 <- %ECX
	.loc	3 1218 3 is_stmt 1      # mg.c:1218:3
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	180(%rsp), %eax
.Ltmp169:
	#DEBUG_VALUE: zero3:i3 <- 0
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	movq	%rax, 96(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
.Ltmp170:
	#DEBUG_VALUE: zero3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: main:n3 <- [%RSP+112]
	jle	.LBB0_94
.Ltmp171:
# BB#85:                                # %norm2u3.exit560
	#DEBUG_VALUE: main:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+112]
	#DEBUG_VALUE: main:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: zero3:n2 <- %EBP
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	testl	%ebp, %ebp
	jle	.LBB0_94
.Ltmp172:
# BB#86:                                # %for.cond4.preheader.lr.ph.us.preheader.i565
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	#DEBUG_VALUE: zero3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: main:n2 <- %EBP
	#DEBUG_VALUE: zero3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: main:n3 <- [%RSP+112]
	movq	96(%rsp), %rcx          # 8-byte Reload
.Ltmp173:
	.loc	3 1225 9                # mg.c:1225:9
	leal	-1(%rcx), %eax
.Ltmp174:
	.loc	3 1224 7 discriminator 1 # mg.c:1224:7
	testl	%ecx, %ecx
	jle	.LBB0_94
.Ltmp175:
# BB#87:                                # %for.cond4.preheader.lr.ph.us.i567.us.preheader
	#DEBUG_VALUE: main:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: norm2u3:n3 <- [%RSP+112]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+112]
	#DEBUG_VALUE: main:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBP
	#DEBUG_VALUE: zero3:n2 <- %EBP
	#DEBUG_VALUE: main:n1 <- [%RDI+0]
	.loc	3 1225 9                # mg.c:1225:9
	leaq	8(,%rax,8), %rbx
	leal	-1(%rbp), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movl	%ebp, %r15d
	andl	$3, %r15d
	movq	%r15, 232(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rbp
.Ltmp176:
	shlq	$3, %rbp
	movq	%rbp, 224(%rsp)         # 8-byte Spill
	leaq	(,%rax,8), %r12
	movq	%r12, 216(%rsp)         # 8-byte Spill
	shlq	$5, %rax
	movq	%rax, %r13
	movl	$u, %ecx
	movl	$3, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.Ltmp177:
	.loc	3 238 3                 # mg.c:238:3
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
.Ltmp178:
	.p2align	4, 0x90
.LBB0_88:                               # %for.cond4.preheader.lr.ph.us.i567.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_92 Depth 2
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	movq	%rcx, %rbp
	movl	$0, %r14d
	je	.LBB0_90
	.p2align	4, 0x90
.LBB0_89:                               # %for.body6.lr.ph.us.us.i577.us.prol
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp179:
	.loc	3 1225 23               # mg.c:1225:23
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memset
.Ltmp180:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	incq	%r14
	addq	%r12, %rbp
	cmpl	%r14d, %r15d
	jne	.LBB0_89
.Ltmp181:
.LBB0_90:                               # %for.cond4.preheader.lr.ph.us.i567.us.split
                                        #   in Loop: Header=BB0_88 Depth=1
	cmpl	$3, 168(%rsp)           # 4-byte Folded Reload
	movq	%r13, %r15
	jb	.LBB0_93
# BB#91:                                # %for.cond4.preheader.lr.ph.us.i567.us.split.split
                                        #   in Loop: Header=BB0_88 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	subl	%r14d, %ebp
	movq	208(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rcx
	movq	216(%rsp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%r14,%rcx), %rcx
	imulq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rcx         # 8-byte Reload
	leaq	(%r14,%rcx), %r12
	imulq	%rax, %r12
	addq	144(%rsp), %r14         # 8-byte Folded Reload
	imulq	%rax, %r14
	.loc	3 238 3                 # mg.c:238:3
	movl	$u, %r13d
	.p2align	4, 0x90
.LBB0_92:                               # %for.body6.lr.ph.us.us.i577.us
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp182:
	.loc	3 1225 23               # mg.c:1225:23
	leaq	(%r13,%r14), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	leaq	(%r13,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
.Ltmp183:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	addq	%r15, %r13
	addl	$-4, %ebp
	jne	.LBB0_92
.Ltmp184:
.LBB0_93:                               # %for.cond1.for.inc14_crit_edge.us.i571.loopexit.us
                                        #   in Loop: Header=BB0_88 Depth=1
	movq	%r15, %r13
	movq	240(%rsp), %rdx         # 8-byte Reload
.Ltmp185:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	incq	%rdx
	movq	248(%rsp), %rcx         # 8-byte Reload
	addq	224(%rsp), %rcx         # 8-byte Folded Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
	addq	%rbp, 208(%rsp)         # 8-byte Folded Spill
	addq	%rbp, 200(%rsp)         # 8-byte Folded Spill
	addq	%rbp, 192(%rsp)         # 8-byte Folded Spill
	addq	%rbp, 144(%rsp)         # 8-byte Folded Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %edx
	movq	232(%rsp), %r15         # 8-byte Reload
	movq	216(%rsp), %r12         # 8-byte Reload
	jne	.LBB0_88
.Ltmp186:
.LBB0_94:                               # %zero3.exit578
	.loc	3 239 24                # mg.c:239:24
	movslq	lt(%rip), %rax
	movl	nx(,%rax,4), %ecx
	.loc	3 239 32 is_stmt 0      # mg.c:239:32
	movl	ny(,%rax,4), %r8d
	movq	96(%rsp), %r12          # 8-byte Reload
	.loc	3 239 3                 # mg.c:239:3
	movl	%r12d, %edi
	movl	%ebp, %esi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	zran3
	.loc	3 241 3 is_stmt 1       # mg.c:241:3
	xorl	%edi, %edi
	callq	timer_stop
	.loc	3 242 11                # mg.c:242:11
	xorl	%edi, %edi
	callq	timer_read
.Ltmp187:
	#DEBUG_VALUE: main:tinit <- %XMM0
	.loc	3 244 3                 # mg.c:244:3
	movl	$.L.str.21, %edi
	movb	$1, %al
	callq	printf
.Ltmp188:
	#DEBUG_VALUE: main:i <- 1
	.loc	3 247 5                 # mg.c:247:5
	movl	$1, %edi
	callq	timer_clear
.Ltmp189:
	#DEBUG_VALUE: main:i <- 2
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
.Ltmp190:
	.loc	3 250 3                 # mg.c:250:3
	movl	$1, %edi
	callq	timer_start
	.loc	3 252 7                 # mg.c:252:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_96
.Ltmp191:
# BB#95:                                # %if.then198
	#DEBUG_VALUE: main:tinit <- %XMM0
	.loc	3 252 16 is_stmt 0 discriminator 1 # mg.c:252:16
	movl	$5, %edi
	callq	timer_start
.Ltmp192:
.LBB0_96:                               # %if.end199
	#DEBUG_VALUE: main:tinit <- %XMM0
	movq	136(%rsp), %rax         # 8-byte Reload
	.loc	3 253 3 is_stmt 1       # mg.c:253:3
	movl	%eax, 8(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$u, %edi
	movl	$v, %esi
	movl	$r, %edx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	resid
	.loc	3 254 7                 # mg.c:254:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_97
.Ltmp193:
# BB#98:                                # %if.then202
	#DEBUG_VALUE: main:tinit <- %XMM0
	.loc	3 254 16 is_stmt 0 discriminator 1 # mg.c:254:16
	movl	$5, %edi
	callq	timer_stop
.Ltmp194:
	.loc	3 255 3 is_stmt 1       # mg.c:255:3
	movb	timeron(%rip), %al
	jmp	.LBB0_99
.Ltmp195:
.LBB0_97:
	#DEBUG_VALUE: main:tinit <- %XMM0
	xorl	%eax, %eax
.Ltmp196:
.LBB0_99:                               # %if.end203
	#DEBUG_VALUE: main:tinit <- %XMM0
	.loc	3 255 40 is_stmt 0      # mg.c:255:40
	movslq	lt(%rip), %rcx
	movl	nx(,%rcx,4), %r15d
.Ltmp197:
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	.loc	3 255 48                # mg.c:255:48
	movl	ny(,%rcx,4), %ebx
.Ltmp198:
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	.loc	3 255 56                # mg.c:255:56
	movl	nz(,%rcx,4), %r14d
.Ltmp199:
	.loc	3 847 7 is_stmt 1       # mg.c:847:7
	testb	$1, %al
	je	.LBB0_101
.Ltmp200:
# BB#100:                               # %if.then.i580
	#DEBUG_VALUE: main:tinit <- %XMM0
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	.loc	3 847 16 is_stmt 0 discriminator 1 # mg.c:847:16
	movl	$8, %edi
	callq	timer_start
.Ltmp201:
.LBB0_101:                              # %if.end.i588
	#DEBUG_VALUE: main:tinit <- %XMM0
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	.loc	3 848 12 is_stmt 1      # mg.c:848:12
	cvtsi2sdl	%r15d, %xmm0
.Ltmp202:
	.loc	3 848 15 is_stmt 0      # mg.c:848:15
	cvtsi2sdl	%ebx, %xmm2
	.loc	3 848 14                # mg.c:848:14
	mulsd	%xmm0, %xmm2
	.loc	3 848 18                # mg.c:848:18
	cvtsi2sdl	%r14d, %xmm1
	.loc	3 848 17                # mg.c:848:17
	mulsd	%xmm2, %xmm1
.Ltmp203:
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:i3 <- 1
	#DEBUG_VALUE: norm2u3:s <- 0.000000e+00
	.loc	3 852 23 is_stmt 1 discriminator 1 # mg.c:852:23
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	xorpd	%xmm0, %xmm0
	.loc	3 852 3 is_stmt 0 discriminator 1 # mg.c:852:3
	cmpl	$2, %eax
	jl	.LBB0_102
.Ltmp204:
# BB#103:                               # %for.cond6.preheader.lr.ph.i593
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	.loc	3 853 25 is_stmt 1 discriminator 1 # mg.c:853:25
	leal	-1(%rbp), %r14d
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	.loc	3 853 5 is_stmt 0 discriminator 1 # mg.c:853:5
	cmpl	$2, %r14d
	jl	.LBB0_115
.Ltmp205:
# BB#104:                               # %for.cond6.preheader.lr.ph.i593
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	.loc	3 854 27 is_stmt 1 discriminator 1 # mg.c:854:27
	leal	-1(%r12), %eax
	cmpl	$2, %eax
	jl	.LBB0_115
.Ltmp206:
# BB#105:                               # %for.cond11.preheader.lr.ph.us.i597.us.preheader
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	movq	96(%rsp), %rsi          # 8-byte Reload
.Ltmp207:
	.loc	3 855 21                # mg.c:855:21
	leal	2(%rsi), %ecx
	leal	-3(%rsi), %r13d
.Ltmp208:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	andl	$3, %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
.Ltmp209:
	.loc	3 855 21                # mg.c:855:21
	leaq	8(,%rdx,8), %rax
	imulq	%rsi, %rax
	leaq	r+8(%rax), %r9
	movq	%rdx, %r8
	imulq	%rsi, %r8
	shlq	$3, %r8
	leaq	(,%rsi,8), %rbp
.Ltmp210:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	leal	-1(%rsi), %r12d
.Ltmp211:
	.loc	3 855 21                # mg.c:855:21
	leaq	r+16(%rax), %r10
	xorpd	%xmm0, %xmm0
	movl	$1, %r11d
.Ltmp212:
	.p2align	4, 0x90
.LBB0_106:                              # %for.cond11.preheader.lr.ph.us.i597.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_107 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	.loc	3 255 3                 # mg.c:255:3
	movq	%r10, %rdi
	movq	%r9, %rsi
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_107:                              # %for.body15.lr.ph.us.us.i606.us
                                        #   Parent Loop BB0_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	testl	%ecx, %ecx
	movq	%rsi, %rax
	movl	$0, %edx
	movl	$1, %r15d
	je	.LBB0_110
	.p2align	4, 0x90
.LBB0_108:                              # %for.body15.us.us.i618.us.prol
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %r15
.Ltmp213:
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp214:
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	leaq	1(%r15), %rdx
	addq	$8, %rax
	cmpl	%edx, %ecx
	jne	.LBB0_108
.Ltmp215:
# BB#109:                               #   in Loop: Header=BB0_107 Depth=2
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	addq	$2, %r15
.Ltmp216:
.LBB0_110:                              # %for.body15.lr.ph.us.us.i606.us.split
                                        #   in Loop: Header=BB0_107 Depth=2
	cmpl	$3, %r13d
	jb	.LBB0_113
# BB#111:                               # %for.body15.lr.ph.us.us.i606.us.split.split
                                        #   in Loop: Header=BB0_107 Depth=2
	movl	%r12d, %eax
	subl	%r15d, %eax
	leaq	(%rdi,%r15,8), %rdx
.Ltmp217:
	.p2align	4, 0x90
.LBB0_112:                              # %for.body15.us.us.i618.us
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 855 21                # mg.c:855:21
	movsd	-16(%rdx), %xmm2        # xmm2 = mem[0],zero
	movsd	-8(%rdx), %xmm3         # xmm3 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm0, %xmm2
.Ltmp218:
	#DEBUG_VALUE: norm2u3:s <- %XMM2
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm3, %xmm3
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm3
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
.Ltmp219:
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm3, %xmm2
	.loc	3 855 21                # mg.c:855:21
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm0, %xmm0
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp220:
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	addq	$32, %rdx
	addl	$-4, %eax
	jne	.LBB0_112
.Ltmp221:
.LBB0_113:                              # %for.cond11.for.inc31_crit_edge.us.us.i610.us
                                        #   in Loop: Header=BB0_107 Depth=2
	.loc	3 853 5 discriminator 1 # mg.c:853:5
	incq	%rbx
	addq	%rbp, %rsi
	addq	%rbp, %rdi
	cmpl	%r14d, %ebx
	jne	.LBB0_107
.Ltmp222:
# BB#114:                               # %for.cond6.for.inc34_crit_edge.us.i602.loopexit.us
                                        #   in Loop: Header=BB0_106 Depth=1
	.loc	3 852 3 discriminator 1 # mg.c:852:3
	incq	%r11
	addq	%r8, %r9
	addq	%r8, %r10
	cmpl	88(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB0_106
	jmp	.LBB0_115
.Ltmp223:
.LBB0_102:
	#DEBUG_VALUE: norm2u3:nx <- %R15D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	movq	%rbp, 152(%rsp)         # 8-byte Spill
.Ltmp224:
.LBB0_115:                              # %for.end36.i628
	.loc	3 862 18                # mg.c:862:18
	divsd	%xmm1, %xmm0
	.loc	3 862 11 is_stmt 0      # mg.c:862:11
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
.Ltmp225:
	.loc	3 255 3 is_stmt 1       # mg.c:255:3
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_117
# BB#116:                               # %call.sqrt186
	callq	sqrt
.LBB0_117:                              # %for.end36.i628.split
.Ltmp226:
	.loc	3 863 7                 # mg.c:863:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movq	136(%rsp), %r15         # 8-byte Reload
	movq	184(%rsp), %rbx         # 8-byte Reload
	movq	152(%rsp), %r12         # 8-byte Reload
	movq	96(%rsp), %r13          # 8-byte Reload
	jne	.LBB0_119
# BB#118:                               # %if.then39.i629
.Ltmp227:
	.loc	3 863 16 is_stmt 0 discriminator 1 # mg.c:863:16
	movl	$8, %edi
	callq	timer_stop
.Ltmp228:
.LBB0_119:                              # %for.cond210.preheader
	.loc	3 259 22 is_stmt 1 discriminator 1 # mg.c:259:22
	movl	108(%rsp), %eax
.Ltmp229:
	#DEBUG_VALUE: main:nit <- %EAX
	.loc	3 259 19 is_stmt 0 discriminator 1 # mg.c:259:19
	testl	%eax, %eax
	jle	.LBB0_133
.Ltmp230:
# BB#120:
	#DEBUG_VALUE: main:nit <- %EAX
	xorl	%ecx, %ecx
	leaq	256(%rsp), %r14
.Ltmp231:
	.p2align	4, 0x90
.LBB0_121:                              # %for.body213
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:nit <- %EAX
	.loc	3 260 13 is_stmt 1      # mg.c:260:13
	leal	1(%rcx), %ebp
	.loc	3 260 42 is_stmt 0 discriminator 2 # mg.c:260:42
	movslq	%ebp, %rdx
	imulq	$1717986919, %rdx, %rsi # imm = 0x66666667
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$33, %rsi
	addl	%edi, %esi
	leal	(%rsi,%rsi,4), %esi
	.loc	3 260 47 discriminator 2 # mg.c:260:47
	cmpl	%esi, %edx
	je	.LBB0_124
.Ltmp232:
# BB#122:                               # %for.body213
                                        #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:nit <- %EAX
	testl	%ecx, %ecx
	je	.LBB0_124
.Ltmp233:
# BB#123:                               # %for.body213
                                        #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:nit <- %EAX
	cmpl	%eax, %ebp
	jne	.LBB0_125
.Ltmp234:
.LBB0_124:                              # %if.then222
                                        #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:nit <- %EAX
	.loc	3 261 7 is_stmt 1       # mg.c:261:7
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
.Ltmp235:
	movl	%ebp, %esi
	callq	printf
.Ltmp236:
.LBB0_125:                              # %if.end224
                                        #   in Loop: Header=BB0_121 Depth=1
	.loc	3 263 9                 # mg.c:263:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_127
# BB#126:                               # %if.then226
                                        #   in Loop: Header=BB0_121 Depth=1
.Ltmp237:
	.loc	3 263 18 is_stmt 0 discriminator 1 # mg.c:263:18
	movl	$2, %edi
	callq	timer_start
.Ltmp238:
.LBB0_127:                              # %if.end227
                                        #   in Loop: Header=BB0_121 Depth=1
	.loc	3 264 5 is_stmt 1       # mg.c:264:5
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	112(%rsp), %r8          # 8-byte Reload
	callq	mg3P
	.loc	3 265 9                 # mg.c:265:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_130
# BB#128:                               # %if.end232
                                        #   in Loop: Header=BB0_121 Depth=1
.Ltmp239:
	.loc	3 265 18 is_stmt 0 discriminator 1 # mg.c:265:18
	movl	$2, %edi
	callq	timer_stop
.Ltmp240:
	.loc	3 266 9 is_stmt 1       # mg.c:266:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_130
# BB#129:                               # %if.then234
                                        #   in Loop: Header=BB0_121 Depth=1
.Ltmp241:
	.loc	3 266 18 is_stmt 0 discriminator 1 # mg.c:266:18
	movl	$5, %edi
	callq	timer_start
.Ltmp242:
.LBB0_130:                              # %if.end235
                                        #   in Loop: Header=BB0_121 Depth=1
	.loc	3 267 5 is_stmt 1       # mg.c:267:5
	movl	%r15d, 8(%rsp)
	movq	%rbx, (%rsp)
.Ltmp243:
	#DEBUG_VALUE: norm2u3:or <- %RDX
	movl	$u, %edi
	movl	$v, %esi
	movl	$r, %edx
.Ltmp244:
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	resid
	.loc	3 268 9                 # mg.c:268:9
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_132
# BB#131:                               # %if.then238
                                        #   in Loop: Header=BB0_121 Depth=1
.Ltmp245:
	.loc	3 268 18 is_stmt 0 discriminator 1 # mg.c:268:18
	movl	$5, %edi
	callq	timer_stop
.Ltmp246:
.LBB0_132:                              # %for.inc240
                                        #   in Loop: Header=BB0_121 Depth=1
	.loc	3 259 22 is_stmt 1 discriminator 1 # mg.c:259:22
	movl	108(%rsp), %eax
.Ltmp247:
	#DEBUG_VALUE: main:nit <- %EAX
	.loc	3 259 19 is_stmt 0 discriminator 1 # mg.c:259:19
	cmpl	%eax, %ebp
	movl	%ebp, %ecx
	jl	.LBB0_121
.Ltmp248:
.LBB0_133:                              # %for.end242
	#DEBUG_VALUE: main:nit <- %EAX
	.loc	3 271 40 is_stmt 1      # mg.c:271:40
	movslq	lt(%rip), %rax
.Ltmp249:
	movl	nx(,%rax,4), %ebp
.Ltmp250:
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 271 48 is_stmt 0      # mg.c:271:48
	movl	ny(,%rax,4), %ebx
.Ltmp251:
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	.loc	3 271 56                # mg.c:271:56
	movl	nz(,%rax,4), %r14d
.Ltmp252:
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	.loc	3 847 7 is_stmt 1       # mg.c:847:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_135
.Ltmp253:
# BB#134:                               # %if.then.i
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 847 16 is_stmt 0 discriminator 1 # mg.c:847:16
	movl	$8, %edi
	callq	timer_start
.Ltmp254:
.LBB0_135:                              # %if.end.i
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 848 12 is_stmt 1      # mg.c:848:12
	cvtsi2sdl	%ebp, %xmm0
	.loc	3 848 15 is_stmt 0      # mg.c:848:15
	cvtsi2sdl	%ebx, %xmm2
	.loc	3 848 14                # mg.c:848:14
	mulsd	%xmm0, %xmm2
	.loc	3 848 18                # mg.c:848:18
	cvtsi2sdl	%r14d, %xmm1
	.loc	3 848 17                # mg.c:848:17
	mulsd	%xmm2, %xmm1
.Ltmp255:
	#DEBUG_VALUE: norm2u3:s <- 0.000000e+00
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	xorpd	%xmm0, %xmm0
.Ltmp256:
	#DEBUG_VALUE: norm2u3:i3 <- 1
	.loc	3 852 3 is_stmt 1 discriminator 1 # mg.c:852:3
	cmpl	$2, 88(%rsp)            # 4-byte Folded Reload
	jl	.LBB0_148
.Ltmp257:
# BB#136:                               # %for.cond6.preheader.lr.ph.i
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nz <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	.loc	3 853 25 discriminator 1 # mg.c:853:25
	leal	-1(%r12), %r14d
.Ltmp258:
	.loc	3 853 5 is_stmt 0 discriminator 1 # mg.c:853:5
	cmpl	$2, %r14d
	jl	.LBB0_148
.Ltmp259:
# BB#137:                               # %for.cond6.preheader.lr.ph.i
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	.loc	3 854 27 is_stmt 1 discriminator 1 # mg.c:854:27
	leal	-1(%r13), %eax
	cmpl	$2, %eax
	jl	.LBB0_148
.Ltmp260:
# BB#138:                               # %for.cond11.preheader.lr.ph.us.i.us.preheader
	#DEBUG_VALUE: norm2u3:nx <- %EBP
	#DEBUG_VALUE: norm2u3:ny <- %EBX
	#DEBUG_VALUE: norm2u3:dn <- %XMM1
	movl	%r13d, %eax
.Ltmp261:
	.loc	3 855 21                # mg.c:855:21
	leal	2(%rax), %ecx
	leal	-3(%rax), %r15d
.Ltmp262:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	andl	$3, %ecx
.Ltmp263:
	.loc	3 855 21                # mg.c:855:21
	leaq	8(,%r12,8), %rdx
	imulq	%r13, %rdx
	leaq	r+8(%rdx), %r8
	imulq	%r13, %r12
	shlq	$3, %r12
	shlq	$3, %r13
.Ltmp264:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	leal	-1(%rax), %r11d
.Ltmp265:
	.loc	3 855 21                # mg.c:855:21
	leaq	r+16(%rdx), %r9
	xorpd	%xmm0, %xmm0
	movl	$1, %r10d
.Ltmp266:
	.p2align	4, 0x90
.LBB0_139:                              # %for.cond11.preheader.lr.ph.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	3 271 3                 # mg.c:271:3
	movq	%r9, %rbp
	movq	%r8, %rsi
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_140:                              # %for.body15.lr.ph.us.us.i.us
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	testl	%ecx, %ecx
	movq	%rsi, %rdi
	movl	$0, %eax
	movl	$1, %edx
	je	.LBB0_143
	.p2align	4, 0x90
.LBB0_141:                              # %for.body15.us.us.i.us.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
.Ltmp267:
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp268:
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	leaq	1(%rdx), %rax
	addq	$8, %rdi
	cmpl	%eax, %ecx
	jne	.LBB0_141
.Ltmp269:
# BB#142:                               #   in Loop: Header=BB0_140 Depth=2
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	addq	$2, %rdx
.Ltmp270:
.LBB0_143:                              # %for.body15.lr.ph.us.us.i.us.split
                                        #   in Loop: Header=BB0_140 Depth=2
	cmpl	$3, %r15d
	jb	.LBB0_146
# BB#144:                               # %for.body15.lr.ph.us.us.i.us.split.split
                                        #   in Loop: Header=BB0_140 Depth=2
	movl	%r11d, %edi
	subl	%edx, %edi
	leaq	(%rbp,%rdx,8), %rax
.Ltmp271:
	.p2align	4, 0x90
.LBB0_145:                              # %for.body15.us.us.i.us
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 855 21                # mg.c:855:21
	movsd	-16(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	-8(%rax), %xmm3         # xmm3 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm0, %xmm2
.Ltmp272:
	#DEBUG_VALUE: norm2u3:s <- %XMM2
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm3, %xmm3
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm3
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
.Ltmp273:
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm2, %xmm2
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm3, %xmm2
	.loc	3 855 21                # mg.c:855:21
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	.loc	3 855 17                # mg.c:855:17
	mulsd	%xmm0, %xmm0
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm2, %xmm0
.Ltmp274:
	.loc	3 854 7 is_stmt 1 discriminator 1 # mg.c:854:7
	addq	$32, %rax
	addl	$-4, %edi
	jne	.LBB0_145
.Ltmp275:
.LBB0_146:                              # %for.cond11.for.inc31_crit_edge.us.us.i.us
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	3 853 5 discriminator 1 # mg.c:853:5
	incq	%rbx
	addq	%r13, %rsi
	addq	%r13, %rbp
	cmpl	%r14d, %ebx
	jne	.LBB0_140
.Ltmp276:
# BB#147:                               # %for.cond6.for.inc34_crit_edge.us.i.loopexit.us
                                        #   in Loop: Header=BB0_139 Depth=1
	.loc	3 852 3 discriminator 1 # mg.c:852:3
	incq	%r10
	addq	%r12, %r8
	addq	%r12, %r9
	cmpl	88(%rsp), %r10d         # 4-byte Folded Reload
	jne	.LBB0_139
.Ltmp277:
.LBB0_148:                              # %for.end36.i
	.loc	3 862 18                # mg.c:862:18
	divsd	%xmm1, %xmm0
	.loc	3 862 11 is_stmt 0      # mg.c:862:11
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
.Ltmp278:
	.loc	3 271 3 is_stmt 1       # mg.c:271:3
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_150
# BB#149:                               # %call.sqrt187
	callq	sqrt
	movapd	%xmm0, %xmm1
.LBB0_150:                              # %for.end36.i.split
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
.Ltmp279:
	.loc	3 863 7                 # mg.c:863:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_152
# BB#151:                               # %if.then39.i
.Ltmp280:
	.loc	3 863 16 is_stmt 0 discriminator 1 # mg.c:863:16
	movl	$8, %edi
	callq	timer_stop
.Ltmp281:
.LBB0_152:                              # %norm2u3.exit
	.loc	3 273 3 is_stmt 1       # mg.c:273:3
	movl	$1, %edi
	callq	timer_stop
	.loc	3 275 7                 # mg.c:275:7
	movl	$1, %edi
	callq	timer_read
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
.Ltmp282:
	#DEBUG_VALUE: main:verify_value <- 0.000000e+00
	#DEBUG_VALUE: main:verified <- 0
	#DEBUG_VALUE: main:t <- [%RSP+160]
	.loc	3 280 3                 # mg.c:280:3
	movl	$.Lstr.56, %edi
	callq	puts
.Ltmp283:
	.loc	3 283 7                 # mg.c:283:7
	movsbl	Class(%rip), %eax
.Ltmp284:
	#DEBUG_VALUE: main:epsilon <- 1.000000e-08
	cmpl	$82, %eax
	jg	.LBB0_155
# BB#153:                               # %norm2u3.exit
	movb	%al, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$3, %ecx
	ja	.LBB0_164
# BB#154:                               # %norm2u3.exit
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_160:                              # %if.then268
	movsd	.LCPI0_10(%rip), %xmm2  # xmm2 = mem[0],zero
.Ltmp285:
	#DEBUG_VALUE: main:verify_value <- 2.433365e-06
	jmp	.LBB0_167
.LBB0_155:                              # %norm2u3.exit
	movzbl	%al, %ecx
	cmpl	$83, %ecx
	je	.LBB0_156
# BB#157:                               # %norm2u3.exit
	cmpl	$85, %ecx
	je	.LBB0_170
# BB#158:                               # %norm2u3.exit
	cmpl	$87, %ecx
	jne	.LBB0_164
# BB#159:                               # %if.then263
	movsd	.LCPI0_11(%rip), %xmm2  # xmm2 = mem[0],zero
.Ltmp286:
	#DEBUG_VALUE: main:verify_value <- 6.467329e-06
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_167
.LBB0_161:                              # %if.then273
	movsd	.LCPI0_9(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp287:
	#DEBUG_VALUE: main:verify_value <- 1.800564e-06
	jmp	.LBB0_167
.LBB0_162:                              # %if.then278
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp288:
	#DEBUG_VALUE: main:verify_value <- 5.706732e-07
	jmp	.LBB0_167
.LBB0_163:                              # %if.then283
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp289:
	#DEBUG_VALUE: main:verify_value <- 1.583275e-10
	jmp	.LBB0_167
.LBB0_156:
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_167
.LBB0_170:                              # %if.else308
	#DEBUG_VALUE: main:verified <- 0
.Ltmp290:
	.loc	3 315 5                 # mg.c:315:5
	movl	$.Lstr.57, %edi
	callq	puts
	.loc	3 316 5                 # mg.c:316:5
	movl	$.Lstr.58, %edi
	callq	puts
.Ltmp291:
	#DEBUG_VALUE: main:rnm2 <- [%RSP+88]
	.loc	3 317 5                 # mg.c:317:5
	movl	$.L.str.25, %edi
	movb	$1, %al
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_171
.Ltmp292:
.LBB0_164:                              # %if.else284
	#DEBUG_VALUE: main:verify_value <- 8.157592e-11
	.loc	3 296 22 discriminator 1 # mg.c:296:22
	movzbl	%al, %eax
	cmpl	$69, %eax
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_165
# BB#166:                               # %if.else284
	.loc	3 296 16 is_stmt 0 discriminator 1 # mg.c:296:16
	xorpd	%xmm2, %xmm2
	jmp	.LBB0_167
.LBB0_165:
	movsd	.LCPI0_12(%rip), %xmm2  # xmm2 = mem[0],zero
.Ltmp293:
.LBB0_167:                              # %if.end295
	.loc	3 300 22 is_stmt 1      # mg.c:300:22
	movapd	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	.loc	3 300 11 is_stmt 0      # mg.c:300:11
	andpd	.LCPI0_13(%rip), %xmm3
	.loc	3 300 39                # mg.c:300:39
	divsd	%xmm2, %xmm3
.Ltmp294:
	#DEBUG_VALUE: main:err <- %XMM3
	.loc	3 302 13 is_stmt 1      # mg.c:302:13
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jae	.LBB0_168
.Ltmp295:
# BB#169:                               # %if.else303
	#DEBUG_VALUE: main:err <- %XMM3
	#DEBUG_VALUE: main:verified <- 0
	.loc	3 309 7                 # mg.c:309:7
	movl	$.Lstr.60, %edi
	movsd	%xmm2, 112(%rsp)        # 8-byte Spill
	callq	puts
	.loc	3 310 7                 # mg.c:310:7
	movl	$.L.str.28, %edi
	movb	$1, %al
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	3 311 7                 # mg.c:311:7
	movl	$.L.str.29, %edi
	movb	$1, %al
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp296:
.LBB0_171:                              # %if.end312
	.loc	3 317 5                 # mg.c:317:5
	callq	printf
	xorl	%eax, %eax
	jmp	.LBB0_172
.Ltmp297:
.LBB0_168:                              # %if.then299
	#DEBUG_VALUE: main:err <- %XMM3
	#DEBUG_VALUE: main:verified <- 1
	.loc	3 304 7                 # mg.c:304:7
	movl	$.Lstr.61, %edi
	movapd	%xmm3, 112(%rsp)        # 16-byte Spill
	callq	puts
	.loc	3 305 7                 # mg.c:305:7
	movl	$.L.str.25, %edi
	movb	$1, %al
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	3 306 7                 # mg.c:306:7
	movl	$.L.str.26, %edi
	movb	$1, %al
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	callq	printf
	movl	$1, %eax
.Ltmp298:
.LBB0_172:                              # %if.end312
	.loc	3 320 14                # mg.c:320:14
	movslq	lt(%rip), %rsi
	movl	nx(,%rsi,4), %edx
.Ltmp299:
	.loc	3 322 9                 # mg.c:322:9
	xorpd	%xmm1, %xmm1
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp300:
	.loc	3 322 7 is_stmt 0       # mg.c:322:7
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_174
	jp	.LBB0_174
	jmp	.LBB0_173
.LBB0_174:                              # %if.then326
	.loc	3 320 14 is_stmt 1      # mg.c:320:14
	cvtsi2sdl	%edx, %xmm2
	.loc	3 320 23 is_stmt 0      # mg.c:320:23
	movl	ny(,%rsi,4), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	.loc	3 320 21                # mg.c:320:21
	mulsd	%xmm2, %xmm1
	.loc	3 320 32                # mg.c:320:32
	movl	nz(,%rsi,4), %r8d
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r8d, %xmm2
	.loc	3 320 30                # mg.c:320:30
	mulsd	%xmm1, %xmm2
.Ltmp301:
	#DEBUG_VALUE: main:nn <- %XMM2
	.loc	3 323 21 is_stmt 1      # mg.c:323:21
	movl	108(%rsp), %r9d
.Ltmp302:
	#DEBUG_VALUE: main:nit <- %R9D
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r9d, %xmm1
	.loc	3 323 19 is_stmt 0      # mg.c:323:19
	mulsd	.LCPI0_15(%rip), %xmm1
	.loc	3 323 25                # mg.c:323:25
	mulsd	%xmm2, %xmm1
	.loc	3 323 30                # mg.c:323:30
	mulsd	.LCPI0_16(%rip), %xmm1
	.loc	3 323 39                # mg.c:323:39
	divsd	%xmm0, %xmm1
.Ltmp303:
	#DEBUG_VALUE: main:mflops <- %XMM1
	jmp	.LBB0_175
.Ltmp304:
.LBB0_173:                              # %if.end312.if.end333_crit_edge
	.loc	3 328 38 is_stmt 1      # mg.c:328:38
	movl	ny(,%rsi,4), %ecx
	.loc	3 328 46 is_stmt 0      # mg.c:328:46
	movl	nz(,%rsi,4), %r8d
	.loc	3 329 17 is_stmt 1      # mg.c:329:17
	movl	108(%rsp), %r9d
.LBB0_175:                              # %if.end333
	.loc	3 328 3                 # mg.c:328:3
	movsbl	Class(%rip), %esi
	movl	%eax, 8(%rsp)
	movq	$.L.str.38, 80(%rsp)
	movq	$.L.str.36, 72(%rsp)
	movq	$.L.str.36, 64(%rsp)
	movq	$.L.str.37, 56(%rsp)
	movq	$.L.str.36, 48(%rsp)
	movq	$.L.str.36, 40(%rsp)
	movq	$.L.str.36, 32(%rsp)
	movq	$.L.str.35, 24(%rsp)
	movq	$.L.str.34, 16(%rsp)
	movq	$.L.str.33, (%rsp)
.Ltmp305:
	#DEBUG_VALUE: main:nit <- %R9D
	movl	$.L.str.32, %edi
	callq	print_results
	.loc	3 337 7                 # mg.c:337:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB0_180
.Ltmp306:
# BB#176:                               # %if.then341
	#DEBUG_VALUE: main:nit <- %R9D
	.loc	3 338 12                # mg.c:338:12
	movl	$1, %edi
	callq	timer_read
.Ltmp307:
	#DEBUG_VALUE: main:tmax <- %XMM0
	.loc	3 339 14                # mg.c:339:14
	xorpd	%xmm1, %xmm1
.Ltmp308:
	#DEBUG_VALUE: main:tmax <- 1.000000e+00
	.loc	3 339 9 is_stmt 0       # mg.c:339:9
	movapd	%xmm0, %xmm2
	cmpeqsd	%xmm1, %xmm2
	movsd	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero
	andpd	%xmm2, %xmm1
	andnpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm2
	movsd	%xmm2, 88(%rsp)         # 8-byte Spill
	.loc	3 341 5 is_stmt 1       # mg.c:341:5
	movl	$.Lstr.59, %edi
	callq	puts
	movl	$1, %ebx
.Ltmp309:
	#DEBUG_VALUE: main:i <- 1
	jmp	.LBB0_177
.Ltmp310:
	.p2align	4, 0x90
.LBB0_178:                              # %for.inc368.thread
                                        #   in Loop: Header=BB0_177 Depth=1
	#DEBUG_VALUE: main:t <- %XMM0
	.loc	3 345 13                # mg.c:345:13
	movl	$4, %edi
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	callq	timer_read
.Ltmp311:
	.loc	3 345 33 is_stmt 0      # mg.c:345:33
	subsd	160(%rsp), %xmm0        # 8-byte Folded Reload
.Ltmp312:
	#DEBUG_VALUE: main:t <- %XMM0
	.loc	3 346 66 is_stmt 1      # mg.c:346:66
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_18(%rip), %xmm1
	.loc	3 346 71 is_stmt 0      # mg.c:346:71
	divsd	88(%rsp), %xmm1         # 8-byte Folded Reload
	.loc	3 346 9                 # mg.c:346:9
	movl	$.L.str.40, %edi
	movl	$.L.str.41, %esi
	movb	$2, %al
	callq	printf
	movl	$6, %ebx
.Ltmp313:
.LBB0_177:                              # %for.body351
                                        # =>This Inner Loop Header: Depth=1
	.loc	3 343 11 is_stmt 1      # mg.c:343:11
	movl	%ebx, %edi
	callq	timer_read
.Ltmp314:
	#DEBUG_VALUE: main:t <- %XMM0
	.loc	3 344 11                # mg.c:344:11
	cmpq	$5, %rbx
	je	.LBB0_178
.Ltmp315:
# BB#179:                               # %for.inc368
                                        #   in Loop: Header=BB0_177 Depth=1
	#DEBUG_VALUE: main:t <- %XMM0
	.loc	3 348 45                # mg.c:348:45
	movq	320(%rsp,%rbx,8), %rsi
	.loc	3 348 61 is_stmt 0      # mg.c:348:61
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_18(%rip), %xmm1
	.loc	3 348 66                # mg.c:348:66
	divsd	88(%rsp), %xmm1         # 8-byte Folded Reload
	.loc	3 348 9                 # mg.c:348:9
	movl	$.L.str.42, %edi
	movb	$2, %al
	callq	printf
.Ltmp316:
	.loc	3 342 5 is_stmt 1 discriminator 1 # mg.c:342:5
	incq	%rbx
	cmpq	$10, %rbx
	jne	.LBB0_177
.Ltmp317:
.LBB0_180:                              # %if.end371
	.loc	3 353 3                 # mg.c:353:3
	xorl	%eax, %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp318:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_160
	.quad	.LBB0_161
	.quad	.LBB0_162
	.quad	.LBB0_163

	.text
	.p2align	4, 0x90
	.type	setup,@function
setup:                                  # @setup
.Lfunc_begin1:
	.loc	3 358 0                 # mg.c:358:0
	.cfi_startproc
# BB#0:                                 # %entry
	.loc	3 364 15 prologue_end   # mg.c:364:15
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp320:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp321:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp322:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp323:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp324:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp325:
	.cfi_def_cfa_offset 256
.Ltmp326:
	.cfi_offset %rbx, -56
.Ltmp327:
	.cfi_offset %r12, -48
.Ltmp328:
	.cfi_offset %r13, -40
.Ltmp329:
	.cfi_offset %r14, -32
.Ltmp330:
	.cfi_offset %r15, -24
.Ltmp331:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: setup:n1 <- %RDI
	#DEBUG_VALUE: setup:n2 <- %RSI
	#DEBUG_VALUE: setup:n3 <- %RDX
	movslq	lt(%rip), %r15
	.loc	3 388 7                 # mg.c:388:7
	cmpq	$2, %r15
	.loc	3 364 15                # mg.c:364:15
	movl	nx(,%r15,4), %eax
	.loc	3 364 3 is_stmt 0       # mg.c:364:3
	leaq	(%r15,%r15,2), %r8
	.loc	3 364 13                # mg.c:364:13
	movl	%eax, 80(%rsp,%r8,4)
	.loc	3 365 15 is_stmt 1      # mg.c:365:15
	movl	ny(,%r15,4), %r11d
	.loc	3 365 13 is_stmt 0      # mg.c:365:13
	movl	%r11d, 84(%rsp,%r8,4)
	.loc	3 366 15 is_stmt 1      # mg.c:366:15
	movl	nz(,%r15,4), %r9d
	.loc	3 366 13 is_stmt 0      # mg.c:366:13
	movl	%r9d, 88(%rsp,%r8,4)
	jl	.LBB1_3
.Ltmp332:
# BB#1:                                 # %for.cond14.preheader.preheader
	#DEBUG_VALUE: setup:n3 <- %RDX
	#DEBUG_VALUE: setup:n2 <- %RSI
	#DEBUG_VALUE: setup:n1 <- %RDI
	.loc	3 367 3 is_stmt 1 discriminator 1 # mg.c:367:3
	leaq	76(%rsp,%r8,4), %rcx
	movq	%r15, %r10
.Ltmp333:
	.p2align	4, 0x90
.LBB1_2:                                # %for.cond14.preheader
                                        # =>This Inner Loop Header: Depth=1
	decq	%r10
.Ltmp334:
	.loc	3 369 30                # mg.c:369:30
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	.loc	3 369 17 is_stmt 0      # mg.c:369:17
	movl	%ebp, -8(%rcx)
	.loc	3 369 30                # mg.c:369:30
	movl	%r11d, %ebx
	shrl	$31, %ebx
	addl	%r11d, %ebx
	sarl	%ebx
	.loc	3 369 17                # mg.c:369:17
	movl	%ebx, -4(%rcx)
	.loc	3 369 30                # mg.c:369:30
	movl	%r9d, %eax
	shrl	$31, %eax
	addl	%r9d, %eax
	sarl	%eax
	.loc	3 369 17                # mg.c:369:17
	movl	%eax, (%rcx)
.Ltmp335:
	.loc	3 367 20 is_stmt 1 discriminator 1 # mg.c:367:20
	addq	$-12, %rcx
	cmpq	$1, %r10
.Ltmp336:
	.loc	3 369 19                # mg.c:369:19
	movl	%eax, %r9d
	movl	%ebx, %r11d
	movl	%ebp, %eax
.Ltmp337:
	.loc	3 367 3 discriminator 1 # mg.c:367:3
	jg	.LBB1_2
.Ltmp338:
.LBB1_3:                                # %for.end26
	.loc	3 364 3                 # mg.c:364:3
	leaq	80(%rsp,%r8,4), %r11
	.loc	3 365 3                 # mg.c:365:3
	leaq	84(%rsp,%r8,4), %r9
	.loc	3 366 3                 # mg.c:366:3
	leaq	88(%rsp,%r8,4), %r10
.Ltmp339:
	.loc	3 372 3 discriminator 1 # mg.c:372:3
	testl	%r15d, %r15d
	jle	.LBB1_9
# BB#4:                                 # %for.body29.preheader
.Ltmp340:
	.loc	3 373 13                # mg.c:373:13
	leaq	1(%r15), %rbx
	movq	%r10, %rcx
	.p2align	4, 0x90
.LBB1_5:                                # %for.body29
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rcx), %eax
	.loc	3 373 11 is_stmt 0      # mg.c:373:11
	movl	%eax, nx-4(,%rbx,4)
	.loc	3 374 13 is_stmt 1      # mg.c:374:13
	movl	-4(%rcx), %eax
	.loc	3 374 11 is_stmt 0      # mg.c:374:11
	movl	%eax, ny-4(,%rbx,4)
	.loc	3 375 13 is_stmt 1      # mg.c:375:13
	movl	(%rcx), %eax
	.loc	3 375 11 is_stmt 0      # mg.c:375:11
	movl	%eax, nz-4(,%rbx,4)
.Ltmp341:
	.loc	3 372 18 is_stmt 1 discriminator 1 # mg.c:372:18
	decq	%rbx
	addq	$-12, %rcx
	cmpq	$1, %rbx
	.loc	3 372 3 is_stmt 0 discriminator 1 # mg.c:372:3
	jg	.LBB1_5
.Ltmp342:
# BB#6:                                 # %for.end47
	.loc	3 378 3 is_stmt 1 discriminator 1 # mg.c:378:3
	testl	%r15d, %r15d
	jle	.LBB1_9
# BB#7:                                 # %for.cond51.preheader.preheader
.Ltmp343:
	.loc	3 380 23                # mg.c:380:23
	leaq	1(%r15), %rcx
	leaq	88(%rsp,%r8,4), %rax
	.p2align	4, 0x90
.LBB1_8:                                # %for.cond51.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rax), %r8d
	movl	-4(%rax), %ebx
	.loc	3 380 21 is_stmt 0      # mg.c:380:21
	addl	$2, %r8d
	addl	$2, %ebx
	.loc	3 380 23                # mg.c:380:23
	movl	(%rax), %ebp
	.loc	3 380 21                # mg.c:380:21
	addl	$2, %ebp
.Ltmp344:
	.loc	3 383 11 is_stmt 1      # mg.c:383:11
	movl	%r8d, m1-4(,%rcx,4)
	.loc	3 384 11                # mg.c:384:11
	movl	%ebx, m2-4(,%rcx,4)
	.loc	3 385 11                # mg.c:385:11
	movl	%ebp, m3-4(,%rcx,4)
.Ltmp345:
	.loc	3 378 18 discriminator 1 # mg.c:378:18
	decq	%rcx
	addq	$-12, %rax
	cmpq	$1, %rcx
	.loc	3 378 3 is_stmt 0 discriminator 1 # mg.c:378:3
	jg	.LBB1_8
.Ltmp346:
.LBB1_9:                                # %for.end83
	movb	$1, is1(%rip)
.Ltmp347:
	.loc	3 408 14 is_stmt 1      # mg.c:408:14
	movl	(%r11), %r13d
.Ltmp348:
	.loc	3 390 11                # mg.c:390:11
	leal	1(%r13), %eax
	.loc	3 390 7 is_stmt 0       # mg.c:390:7
	movl	%eax, ie1(%rip)
	.loc	3 391 17 is_stmt 1      # mg.c:391:17
	leal	2(%r13), %eax
	.loc	3 391 7 is_stmt 0       # mg.c:391:7
	movl	%eax, (%rdi)
	movq	%rdi, 72(%rsp)          # 8-byte Spill
.Ltmp349:
	.loc	3 408 23 is_stmt 1      # mg.c:408:23
	movl	(%r9), %r12d
.Ltmp350:
	.loc	3 392 11                # mg.c:392:11
	leal	2(%r12), %eax
	.loc	3 392 24 is_stmt 0      # mg.c:392:24
	movslq	lt(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	.loc	3 392 22                # mg.c:392:22
	subl	84(%rsp,%rcx,4), %eax
	.loc	3 392 7                 # mg.c:392:7
	movl	%eax, is2(%rip)
	.loc	3 393 11 is_stmt 1      # mg.c:393:11
	leal	1(%r12), %ecx
	.loc	3 393 7 is_stmt 0       # mg.c:393:7
	movl	%ecx, ie2(%rip)
	.loc	3 394 11 is_stmt 1      # mg.c:394:11
	movl	$4, %ecx
	movl	$4, %edi
	subl	%eax, %edi
	.loc	3 394 17 is_stmt 0      # mg.c:394:17
	addl	%r12d, %edi
	.loc	3 394 7                 # mg.c:394:7
	movl	%edi, (%rsi)
	movq	%rsi, %rbp
.Ltmp351:
	.loc	3 408 32 is_stmt 1      # mg.c:408:32
	movl	(%r10), %r14d
.Ltmp352:
	.loc	3 395 11                # mg.c:395:11
	leal	2(%r14), %eax
	.loc	3 395 24 is_stmt 0      # mg.c:395:24
	movslq	lt(%rip), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	.loc	3 395 22                # mg.c:395:22
	subl	88(%rsp,%rsi,4), %eax
	.loc	3 395 7                 # mg.c:395:7
	movl	%eax, is3(%rip)
	.loc	3 396 11 is_stmt 1      # mg.c:396:11
	leal	1(%r14), %esi
	.loc	3 396 7 is_stmt 0       # mg.c:396:7
	movl	%esi, ie3(%rip)
	.loc	3 397 11 is_stmt 1      # mg.c:397:11
	subl	%eax, %ecx
	.loc	3 397 17 is_stmt 0      # mg.c:397:17
	addl	%r14d, %ecx
	.loc	3 397 7                 # mg.c:397:7
	movl	%ecx, (%rdx)
	movq	%rdx, %rbx
	.loc	3 399 3 is_stmt 1       # mg.c:399:3
	movslq	lt(%rip), %rdx
	.loc	3 399 6 is_stmt 0       # mg.c:399:6
	cmpq	$2, %rdx
	.loc	3 399 10                # mg.c:399:10
	movl	$0, ir(,%rdx,4)
	jl	.LBB1_15
# BB#10:                                # %for.body131.preheader
	xorl	%eax, %eax
.Ltmp353:
	.loc	3 400 3 is_stmt 1 discriminator 1 # mg.c:400:3
	testb	$1, %dl
	movq	%rdx, %rcx
	jne	.LBB1_12
# BB#11:                                # %for.body131.prol
	leaq	-1(%rdx), %rcx
.Ltmp354:
	.loc	3 401 33                # mg.c:401:33
	movl	m2(,%rdx,4), %eax
	.loc	3 401 32 is_stmt 0      # mg.c:401:32
	imull	m1(,%rdx,4), %eax
	.loc	3 401 40                # mg.c:401:40
	imull	m3(,%rdx,4), %eax
	.loc	3 401 11                # mg.c:401:11
	movl	%eax, ir-4(,%rdx,4)
.Ltmp355:
.LBB1_12:                               # %for.body131.preheader.split
	.loc	3 400 3 is_stmt 1 discriminator 1 # mg.c:400:3
	cmpl	$2, %edx
	je	.LBB1_15
# BB#13:                                # %for.body131.preheader.split.split
	leaq	(,%rcx,4), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_14:                               # %for.body131
                                        # =>This Inner Loop Header: Depth=1
.Ltmp356:
	.loc	3 401 33                # mg.c:401:33
	movl	m2(%rdx,%rsi,4), %edi
	.loc	3 401 32 is_stmt 0      # mg.c:401:32
	imull	m1(%rdx,%rsi,4), %edi
	.loc	3 401 40                # mg.c:401:40
	imull	m3(%rdx,%rsi,4), %edi
	.loc	3 401 20                # mg.c:401:20
	addl	%eax, %edi
	.loc	3 401 11                # mg.c:401:11
	movl	%edi, ir-4(%rdx,%rsi,4)
	.loc	3 401 33                # mg.c:401:33
	movl	m2-4(%rdx,%rsi,4), %eax
	.loc	3 401 32                # mg.c:401:32
	imull	m1-4(%rdx,%rsi,4), %eax
	.loc	3 401 40                # mg.c:401:40
	imull	m3-4(%rdx,%rsi,4), %eax
	.loc	3 401 20                # mg.c:401:20
	addl	%edi, %eax
	.loc	3 401 11                # mg.c:401:11
	movl	%eax, ir-8(%rdx,%rsi,4)
.Ltmp357:
	.loc	3 400 20 is_stmt 1 discriminator 1 # mg.c:400:20
	leaq	-2(%rcx,%rsi), %rdi
	addq	$-2, %rsi
	cmpq	$1, %rdi
	.loc	3 400 3 is_stmt 0 discriminator 1 # mg.c:400:3
	jg	.LBB1_14
.Ltmp358:
.LBB1_15:                               # %for.end151
	.loc	3 404 7 is_stmt 1       # mg.c:404:7
	cmpl	$0, debug_vec+4(%rip)
	jle	.LBB1_17
# BB#16:                                # %if.then
.Ltmp359:
	.loc	3 405 5                 # mg.c:405:5
	movl	$.Lstr.63, %edi
	callq	puts
	.loc	3 406 5                 # mg.c:406:5
	movl	$.Lstr.64, %edi
	callq	puts
	.loc	3 408 11                # mg.c:408:11
	movl	lt(%rip), %edx
	.loc	3 408 41 is_stmt 0      # mg.c:408:41
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r8d
	.loc	3 408 45                # mg.c:408:45
	movl	(%rbp), %r9d
	.loc	3 408 49                # mg.c:408:49
	movl	(%rbx), %r10d
	movzbl	is1(%rip), %edi
	andl	$1, %edi
	addl	%edi, %edi
	.loc	3 408 57                # mg.c:408:57
	movl	is2(%rip), %ebx
	.loc	3 408 61                # mg.c:408:61
	movl	is3(%rip), %eax
	.loc	3 408 65                # mg.c:408:65
	movl	ie1(%rip), %ebp
	.loc	3 408 69                # mg.c:408:69
	movl	ie2(%rip), %ecx
	.loc	3 408 73                # mg.c:408:73
	movl	ie3(%rip), %esi
	.loc	3 407 5 is_stmt 1       # mg.c:407:5
	movl	%esi, 64(%rsp)
	movl	%ecx, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	%eax, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%edi, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	movl	%r14d, %r9d
	callq	printf
.Ltmp360:
.LBB1_17:                               # %if.end
	.loc	3 410 1                 # mg.c:410:1
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp361:
.Lfunc_end1:
	.size	setup, .Lfunc_end1-setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4742906807993761792     # double 1220703125
	.text
	.p2align	4, 0x90
	.type	zran3,@function
zran3:                                  # @zran3
.Lfunc_begin2:
	.loc	3 919 0                 # mg.c:919:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp363:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp364:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp365:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp366:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp367:
	.cfi_def_cfa_offset 56
	subq	$936, %rsp              # imm = 0x3A8
.Ltmp368:
	.cfi_def_cfa_offset 992
.Ltmp369:
	.cfi_offset %rbx, -56
.Ltmp370:
	.cfi_offset %r12, -48
.Ltmp371:
	.cfi_offset %r13, -40
.Ltmp372:
	.cfi_offset %r14, -32
.Ltmp373:
	.cfi_offset %r15, -24
.Ltmp374:
	.cfi_offset %rbp, -16
	movl	%r8d, 148(%rsp)         # 4-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	#DEBUG_VALUE: zran3:k <- 0
.Ltmp375:
	.loc	3 920 3 prologue_end    # mg.c:920:3
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%edi, %r12d
.Ltmp376:
	#DEBUG_VALUE: power:a <- 1.220703e+09
	#DEBUG_VALUE: zran3:x <- 3.141593e+08
	#DEBUG_VALUE: zran3:a <- 1.220703e+09
	#DEBUG_VALUE: zran3:mm <- 10
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.Ltmp377:
	#DEBUG_VALUE: power:power <- 1.000000e+00
	.loc	3 1144 9                # mg.c:1144:9
	movq	%rax, 32(%rsp)
	.loc	3 1146 6                # mg.c:1146:6
	movabsq	$4742906807993761792, %rax # imm = 0x41D2309CE5400000
.Ltmp378:
	#DEBUG_VALUE: power:aj <- 1.220703e+09
	movq	%rax, 8(%rsp)
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp379:
	.loc	3 1148 13 discriminator 1 # mg.c:1148:13
	testl	%r13d, %r13d
.Ltmp380:
	.loc	3 1154 10               # mg.c:1154:10
	movapd	%xmm0, %xmm1
	je	.LBB2_6
.Ltmp381:
# BB#1:
	leaq	32(%rsp), %r14
	leaq	8(%rsp), %r15
	.loc	3 936 8                 # mg.c:936:8
	movl	%r13d, %ebp
	.p2align	4, 0x90
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp382:
	.loc	3 1149 13               # mg.c:1149:13
	movl	%ebp, %ebx
	shrl	$31, %ebx
	addl	%ebp, %ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
.Ltmp383:
	.loc	3 1149 9 is_stmt 0      # mg.c:1149:9
	cmpl	$1, %ecx
	jne	.LBB2_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
.Ltmp384:
	.loc	3 1149 48 discriminator 1 # mg.c:1149:48
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp385:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:power <- [%R14+0]
	.loc	3 1149 33 discriminator 1 # mg.c:1149:33
	movq	%r14, %rdi
	callq	randlc
.Ltmp386:
.LBB2_4:                                # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	.loc	3 1150 26 is_stmt 1     # mg.c:1150:26
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp387:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1150 14 is_stmt 0     # mg.c:1150:14
	movq	%r15, %rdi
	callq	randlc
	.loc	3 1151 12 is_stmt 1     # mg.c:1151:12
	sarl	%ebx
.Ltmp388:
	#DEBUG_VALUE: power:nj <- %EBX
	.loc	3 1148 13 discriminator 1 # mg.c:1148:13
	incl	%ebp
	.loc	3 1148 3 is_stmt 0 discriminator 1 # mg.c:1148:3
	cmpl	$2, %ebp
.Ltmp389:
	.loc	3 936 8 is_stmt 1       # mg.c:936:8
	movl	%ebx, %ebp
.Ltmp390:
	#DEBUG_VALUE: power:nj <- %EBP
	ja	.LBB2_2
.Ltmp391:
# BB#5:                                 # %while.end.loopexit.i
	#DEBUG_VALUE: power:nj <- %EBP
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1154 10               # mg.c:1154:10
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp392:
.LBB2_6:                                # %power.exit
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	.loc	3 937 19                # mg.c:937:19
	movl	148(%rsp), %ebp         # 4-byte Reload
	imull	%r13d, %ebp
.Ltmp393:
	#DEBUG_VALUE: power:power <- 1.000000e+00
	#DEBUG_VALUE: power:a <- 1.220703e+09
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.Ltmp394:
	.loc	3 1144 9                # mg.c:1144:9
	movq	%rax, 32(%rsp)
.Ltmp395:
	#DEBUG_VALUE: power:aj <- 1.220703e+09
	.loc	3 1146 6                # mg.c:1146:6
	movabsq	$4742906807993761792, %rax # imm = 0x41D2309CE5400000
.Ltmp396:
	.loc	3 1146 6 is_stmt 0      # mg.c:1146:6
	movq	%rax, 8(%rsp)
.Ltmp397:
	.loc	3 1148 13 is_stmt 1 discriminator 1 # mg.c:1148:13
	testl	%ebp, %ebp
	je	.LBB2_12
.Ltmp398:
# BB#7:
	leaq	32(%rsp), %r14
	leaq	8(%rsp), %r15
	.p2align	4, 0x90
.LBB2_8:                                # %while.body.i7
                                        # =>This Inner Loop Header: Depth=1
.Ltmp399:
	.loc	3 1149 13               # mg.c:1149:13
	movl	%ebp, %ebx
	shrl	$31, %ebx
	addl	%ebp, %ebx
	movl	%ebx, %eax
	andl	$-2, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
.Ltmp400:
	.loc	3 1149 9 is_stmt 0      # mg.c:1149:9
	cmpl	$1, %ecx
	jne	.LBB2_10
# BB#9:                                 # %if.then.i9
                                        #   in Loop: Header=BB2_8 Depth=1
.Ltmp401:
	.loc	3 1149 48 discriminator 1 # mg.c:1149:48
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp402:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:power <- [%R14+0]
	.loc	3 1149 33 discriminator 1 # mg.c:1149:33
	movq	%r14, %rdi
	callq	randlc
.Ltmp403:
.LBB2_10:                               # %if.end.i13
                                        #   in Loop: Header=BB2_8 Depth=1
	.loc	3 1150 26 is_stmt 1     # mg.c:1150:26
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp404:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1150 14 is_stmt 0     # mg.c:1150:14
	movq	%r15, %rdi
	callq	randlc
	.loc	3 1151 12 is_stmt 1     # mg.c:1151:12
	sarl	%ebx
.Ltmp405:
	#DEBUG_VALUE: power:nj <- %EBX
	.loc	3 1148 13 discriminator 1 # mg.c:1148:13
	incl	%ebp
	.loc	3 1148 3 is_stmt 0 discriminator 1 # mg.c:1148:3
	cmpl	$2, %ebp
.Ltmp406:
	.loc	3 937 8 is_stmt 1       # mg.c:937:8
	movl	%ebx, %ebp
.Ltmp407:
	#DEBUG_VALUE: power:nj <- %EBP
	ja	.LBB2_8
.Ltmp408:
# BB#11:                                # %while.end.loopexit.i15
	#DEBUG_VALUE: power:nj <- %EBP
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1154 10               # mg.c:1154:10
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
.Ltmp409:
.LBB2_12:                               # %power.exit16
	#DEBUG_VALUE: zero3:i3 <- 0
	#DEBUG_VALUE: zero3:n3 <- [%RSP+56]
	movl	%r13d, 176(%rsp)        # 4-byte Spill
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
.Ltmp410:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_22
.Ltmp411:
# BB#13:                                # %power.exit16
	#DEBUG_VALUE: zero3:n3 <- [%RSP+56]
	movq	16(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_22
.Ltmp412:
# BB#14:                                # %for.cond4.preheader.lr.ph.us.preheader.i
	#DEBUG_VALUE: zero3:n3 <- [%RSP+56]
	movq	104(%rsp), %rcx         # 8-byte Reload
.Ltmp413:
	.loc	3 1225 9                # mg.c:1225:9
	leal	-1(%rcx), %eax
.Ltmp414:
	.loc	3 1224 7 discriminator 1 # mg.c:1224:7
	testl	%ecx, %ecx
.Ltmp415:
	#DEBUG_VALUE: zero3:n1 <- [%RSP+104]
	#DEBUG_VALUE: zero3:n1 <- %ECX
	jle	.LBB2_22
.Ltmp416:
# BB#15:                                # %for.cond4.preheader.lr.ph.us.i.us.preheader
	#DEBUG_VALUE: zero3:n3 <- [%RSP+56]
	#DEBUG_VALUE: zero3:n1 <- %ECX
	.loc	3 1225 9                # mg.c:1225:9
	leaq	8(,%rax,8), %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
.Ltmp417:
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movl	%eax, %r15d
	andl	$3, %r15d
	movq	%r15, 200(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	72(%rsp), %r13          # 8-byte Reload
	imulq	%r13, %rcx
	shlq	$3, %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	(,%r13,8), %r12
	movq	%r12, 96(%rsp)          # 8-byte Spill
	shlq	$5, %r13
	movl	$v, %ecx
	movl	$3, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.Ltmp418:
	.loc	3 939 3                 # mg.c:939:3
	movq	%rax, 152(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
.Ltmp419:
	.p2align	4, 0x90
.LBB2_16:                               # %for.cond4.preheader.lr.ph.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_20 Depth 2
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	movq	%rcx, %rbx
	movl	$0, %r14d
	je	.LBB2_18
	.p2align	4, 0x90
.LBB2_17:                               # %for.body6.lr.ph.us.us.i.us.prol
                                        #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp420:
	.loc	3 1225 23               # mg.c:1225:23
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
.Ltmp421:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	incq	%r14
	addq	%r12, %rbx
	cmpl	%r14d, %r15d
	jne	.LBB2_17
.Ltmp422:
.LBB2_18:                               # %for.cond4.preheader.lr.ph.us.i.us.split
                                        #   in Loop: Header=BB2_16 Depth=1
	cmpl	$3, 180(%rsp)           # 4-byte Folded Reload
	jb	.LBB2_21
# BB#19:                                # %for.cond4.preheader.lr.ph.us.i.us.split.split
                                        #   in Loop: Header=BB2_16 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	subl	%r14d, %ebx
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%r14,%rcx), %rcx
	imulq	%rax, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%r14,%rcx), %r15
	imulq	%rax, %r15
	addq	152(%rsp), %r14         # 8-byte Folded Reload
	imulq	%rax, %r14
	.loc	3 939 3                 # mg.c:939:3
	movl	$v, %r12d
	.p2align	4, 0x90
.LBB2_20:                               # %for.body6.lr.ph.us.us.i.us
                                        #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp423:
	.loc	3 1225 23               # mg.c:1225:23
	leaq	(%r12,%r14), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leaq	(%r12,%r15), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
.Ltmp424:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	addq	%r13, %r12
	addl	$-4, %ebx
	jne	.LBB2_20
.Ltmp425:
.LBB2_21:                               # %for.cond1.for.inc14_crit_edge.us.i.loopexit.us
                                        #   in Loop: Header=BB2_16 Depth=1
	movq	48(%rsp), %rdx          # 8-byte Reload
.Ltmp426:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	incq	%rdx
	movq	120(%rsp), %rcx         # 8-byte Reload
	addq	192(%rsp), %rcx         # 8-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	%rax, 88(%rsp)          # 8-byte Folded Spill
	addq	%rax, 40(%rsp)          # 8-byte Folded Spill
	addq	%rax, 160(%rsp)         # 8-byte Folded Spill
	addq	%rax, 152(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edx
	movq	200(%rsp), %r15         # 8-byte Reload
	movq	96(%rsp), %r12          # 8-byte Reload
	jne	.LBB2_16
.Ltmp427:
.LBB2_22:                               # %zero3.exit
	.loc	3 941 10                # mg.c:941:10
	movzbl	is1(%rip), %eax
	andl	$1, %eax
	.loc	3 941 17 is_stmt 0      # mg.c:941:17
	movl	is2(%rip), %r14d
	.loc	3 941 27                # mg.c:941:27
	movl	is3(%rip), %r15d
	.loc	3 941 30                # mg.c:941:30
	leal	-2(%r15), %ecx
	.loc	3 941 25                # mg.c:941:25
	imull	148(%rsp), %ecx         # 4-byte Folded Reload
	.loc	3 941 22                # mg.c:941:22
	leal	-2(%r14,%rcx), %ecx
	.loc	3 941 15                # mg.c:941:15
	imull	176(%rsp), %ecx         # 4-byte Folded Reload
	leal	(%rcx,%rax,2), %ebx
.Ltmp428:
	#DEBUG_VALUE: power:a <- 1.220703e+09
	.loc	3 1148 13 is_stmt 1 discriminator 1 # mg.c:1148:13
	addl	$-2, %ebx
.Ltmp429:
	#DEBUG_VALUE: power:power <- 1.000000e+00
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
.Ltmp430:
	.loc	3 1144 9                # mg.c:1144:9
	movq	%rcx, 32(%rsp)
.Ltmp431:
	#DEBUG_VALUE: power:aj <- 1.220703e+09
	.loc	3 1146 6                # mg.c:1146:6
	movabsq	$4742906807993761792, %rcx # imm = 0x41D2309CE5400000
.Ltmp432:
	.loc	3 1146 6 is_stmt 0      # mg.c:1146:6
	movq	%rcx, 8(%rsp)
	je	.LBB2_23
# BB#24:
	leaq	32(%rsp), %r14
	leaq	8(%rsp), %r15
	.p2align	4, 0x90
.LBB2_25:                               # %while.body.i23
                                        # =>This Inner Loop Header: Depth=1
.Ltmp433:
	.loc	3 1149 13 is_stmt 1     # mg.c:1149:13
	movl	%ebx, %ebp
	shrl	$31, %ebp
	addl	%ebx, %ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
.Ltmp434:
	.loc	3 1149 9 is_stmt 0      # mg.c:1149:9
	cmpl	$1, %ecx
	jne	.LBB2_27
# BB#26:                                # %if.then.i25
                                        #   in Loop: Header=BB2_25 Depth=1
.Ltmp435:
	.loc	3 1149 48 discriminator 1 # mg.c:1149:48
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp436:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:power <- [%R14+0]
	.loc	3 1149 33 discriminator 1 # mg.c:1149:33
	movq	%r14, %rdi
	callq	randlc
.Ltmp437:
.LBB2_27:                               # %if.end.i29
                                        #   in Loop: Header=BB2_25 Depth=1
	.loc	3 1150 26 is_stmt 1     # mg.c:1150:26
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp438:
	#DEBUG_VALUE: power:aj <- %XMM0
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1150 14 is_stmt 0     # mg.c:1150:14
	movq	%r15, %rdi
	callq	randlc
	.loc	3 1151 12 is_stmt 1     # mg.c:1151:12
	sarl	%ebp
.Ltmp439:
	#DEBUG_VALUE: power:nj <- %EBP
	.loc	3 1148 13 discriminator 1 # mg.c:1148:13
	incl	%ebx
	.loc	3 1148 3 is_stmt 0 discriminator 1 # mg.c:1148:3
	cmpl	$2, %ebx
.Ltmp440:
	.loc	3 943 8 is_stmt 1       # mg.c:943:8
	movl	%ebp, %ebx
.Ltmp441:
	#DEBUG_VALUE: power:nj <- %EBX
	ja	.LBB2_25
.Ltmp442:
# BB#28:                                # %while.end.loopexit.i31
	#DEBUG_VALUE: power:nj <- %EBX
	#DEBUG_VALUE: power:aj <- [%R15+0]
	.loc	3 1154 10               # mg.c:1154:10
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	is1(%rip), %al
.Ltmp443:
	.loc	3 946 14                # mg.c:946:14
	movl	is2(%rip), %r14d
	.loc	3 947 14                # mg.c:947:14
	movl	is3(%rip), %r15d
.Ltmp444:
	jmp	.LBB2_29
.Ltmp445:
.LBB2_23:
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB2_29:                               # %power.exit32
	.loc	3 944 8                 # mg.c:944:8
	movl	ie1(%rip), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	testb	$1, %al
	movl	$-2, %ebx
	cmovel	%ecx, %ebx
	.loc	3 946 8                 # mg.c:946:8
	movl	ie2(%rip), %r13d
	.loc	3 947 8                 # mg.c:947:8
	movl	ie3(%rip), %ebp
	.loc	3 947 12 is_stmt 0      # mg.c:947:12
	leal	2(%rbp), %r12d
	.loc	3 947 18                # mg.c:947:18
	subl	%r15d, %r12d
.Ltmp446:
	#DEBUG_VALUE: zran3:x0 <- 3.141593e+08
	#DEBUG_VALUE: zran3:e3 <- %R12D
	.loc	3 948 6 is_stmt 1       # mg.c:948:6
	movl	%r12d, 120(%rsp)        # 4-byte Spill
	movabsq	$4734050326586327040, %rax # imm = 0x41B2B9B0A1000000
	movq	%rax, 136(%rsp)
.Ltmp447:
	#DEBUG_VALUE: power:power <- %XMM0
	leaq	136(%rsp), %rdi
.Ltmp448:
	#DEBUG_VALUE: zran3:x0 <- [%RDI+0]
	.loc	3 949 12                # mg.c:949:12
	callq	randlc
.Ltmp449:
	.loc	3 951 19 discriminator 1 # mg.c:951:19
	cmpl	$1, %r12d
.Ltmp450:
	#DEBUG_VALUE: zran3:i3 <- 1
	#DEBUG_VALUE: zran3:e3 <- [%RSP+120]
	jle	.LBB2_30
.Ltmp451:
# BB#64:                                # %for.body.lr.ph
	#DEBUG_VALUE: zran3:e3 <- [%RSP+120]
	#DEBUG_VALUE: zran3:x0 <- [%RDI+0]
	.loc	3 946 12                # mg.c:946:12
	leal	2(%r13), %eax
	.loc	3 946 18 is_stmt 0      # mg.c:946:18
	subl	%r14d, %eax
.Ltmp452:
	#DEBUG_VALUE: zran3:e2 <- %EAX
	.loc	3 953 21 is_stmt 1 discriminator 1 # mg.c:953:21
	movl	%eax, 48(%rsp)          # 4-byte Spill
	cmpl	$1, %eax
.Ltmp453:
	#DEBUG_VALUE: zran3:e2 <- [%RSP+48]
	jle	.LBB2_65
.Ltmp454:
# BB#67:                                # %for.body.us.preheader
	#DEBUG_VALUE: zran3:x0 <- [%RDI+0]
	#DEBUG_VALUE: zran3:e3 <- [%RSP+120]
	#DEBUG_VALUE: zran3:e2 <- [%RSP+48]
	.loc	3 944 18                # mg.c:944:18
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax,%rbx), %r12d
.Ltmp455:
	#DEBUG_VALUE: zran3:d1 <- %R12D
	movq	80(%rsp), %rax          # 8-byte Reload
.Ltmp456:
	.loc	3 955 28                # mg.c:955:28
	movq	%rax, %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	imulq	%rcx, %rdx
.Ltmp457:
	.loc	3 952 10                # mg.c:952:10
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	subl	%r14d, %r13d
	movq	%r13, 96(%rsp)          # 8-byte Spill
	leaq	16(,%rax,8), %rax
	imulq	%rcx, %rax
	leaq	v+8(%rax), %r15
	leaq	(,%rdx,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	(,%rcx,8), %rbx
	movl	$1, %edx
	leaq	184(%rsp), %r13
.Ltmp458:
	.loc	3 955 7                 # mg.c:955:7
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	168(%rsp), %rbp
.Ltmp459:
	.p2align	4, 0x90
.LBB2_68:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_69 Depth 2
	.loc	3 952 10                # mg.c:952:10
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax
.Ltmp460:
	#DEBUG_VALUE: zran3:i2 <- 1
	.loc	3 952 8 is_stmt 0       # mg.c:952:8
	movq	%rax, 168(%rsp)
.Ltmp461:
	.loc	3 955 28 is_stmt 1      # mg.c:955:28
	movq	88(%rsp), %rcx          # 8-byte Reload
	imulq	%rdx, %rcx
	.loc	3 954 10                # mg.c:954:10
	movq	%rax, 184(%rsp)
	.loc	3 955 28                # mg.c:955:28
	leaq	v+8(%rbx,%rcx,8), %rdx
.Ltmp462:
	#DEBUG_VALUE: zran3:xx <- [%R13+0]
	.loc	3 955 7 is_stmt 0       # mg.c:955:7
	movl	%r12d, %edi
	movq	%r13, %rsi
	callq	vranlc
.Ltmp463:
	#DEBUG_VALUE: zran3:x1 <- [%RBP+0]
	#DEBUG_VALUE: power:power <- [%RSP+24]
	.loc	3 956 16 is_stmt 1      # mg.c:956:16
	movq	%rbp, %rdi
.Ltmp464:
	#DEBUG_VALUE: power:power <- undef
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp465:
	#DEBUG_VALUE: power:power <- [%RSP+24]
	callq	randlc
.Ltmp466:
	cmpl	$2, 48(%rsp)            # 4-byte Folded Reload
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r14d
	je	.LBB2_70
.Ltmp467:
	.p2align	4, 0x90
.LBB2_69:                               # %for.body20.us.for.body20.us_crit_edge
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: zran3:x1 <- [%RBP+0]
	#DEBUG_VALUE: zran3:xx <- [%R13+0]
	.loc	3 954 12                # mg.c:954:12
	movq	168(%rsp), %rax
	.loc	3 954 10 is_stmt 0      # mg.c:954:10
	movq	%rax, 184(%rsp)
	#DEBUG_VALUE: zran3:xx <- [%R13+0]
	.loc	3 955 7 is_stmt 1       # mg.c:955:7
	movl	%r12d, %edi
	movq	%r13, %rsi
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r15, %rdx
	callq	vranlc
	#DEBUG_VALUE: zran3:x1 <- [%RBP+0]
	.loc	3 956 16                # mg.c:956:16
	movq	%rbp, %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	randlc
.Ltmp468:
	.loc	3 953 5 discriminator 1 # mg.c:953:5
	addq	%rbx, %r15
	decl	%r14d
	jne	.LBB2_69
.Ltmp469:
.LBB2_70:                               # %for.cond18.for.end_crit_edge.us
                                        #   in Loop: Header=BB2_68 Depth=1
	#DEBUG_VALUE: zran3:x1 <- [%RBP+0]
	#DEBUG_VALUE: zran3:xx <- [%R13+0]
	#DEBUG_VALUE: zran3:x0 <- undef
	leaq	136(%rsp), %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.loc	3 958 14                # mg.c:958:14
	callq	randlc
	movq	64(%rsp), %rdx          # 8-byte Reload
.Ltmp470:
	.loc	3 951 3 discriminator 1 # mg.c:951:3
	incq	%rdx
	movq	128(%rsp), %r15         # 8-byte Reload
	addq	40(%rsp), %r15          # 8-byte Folded Reload
	cmpl	120(%rsp), %edx         # 4-byte Folded Reload
.Ltmp471:
	.loc	3 955 7                 # mg.c:955:7
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jne	.LBB2_68
	jmp	.LBB2_30
.Ltmp472:
.LBB2_65:                               # %for.body.preheader
	#DEBUG_VALUE: zran3:x0 <- [%RDI+0]
	#DEBUG_VALUE: zran3:e3 <- [%RSP+120]
	#DEBUG_VALUE: zran3:e2 <- [%RSP+48]
	.loc	3 952 10                # mg.c:952:10
	incl	%ebp
	subl	%r15d, %ebp
	leaq	136(%rsp), %rbx
.Ltmp473:
	.p2align	4, 0x90
.LBB2_66:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%rsp), %rax
	.loc	3 952 8 is_stmt 0       # mg.c:952:8
	movq	%rax, 168(%rsp)
	#DEBUG_VALUE: zran3:i2 <- 1
.Ltmp474:
	#DEBUG_VALUE: zran3:x0 <- [%RBX+0]
	#DEBUG_VALUE: power:power <- [%RSP+112]
	.loc	3 958 14 is_stmt 1      # mg.c:958:14
	movq	%rbx, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	randlc
.Ltmp475:
	.loc	3 951 3 discriminator 1 # mg.c:951:3
	decl	%ebp
	jne	.LBB2_66
.Ltmp476:
.LBB2_30:                               # %for.body31.preheader
	.loc	3 975 14                # mg.c:975:14
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 752(%rsp)
	movapd	%xmm0, 736(%rsp)
	movapd	%xmm0, 720(%rsp)
	movapd	%xmm0, 704(%rsp)
	movapd	%xmm0, 688(%rsp)
	.loc	3 976 14                # mg.c:976:14
	movapd	%xmm0, 672(%rsp)
	movapd	%xmm0, 656(%rsp)
	movapd	%xmm0, 640(%rsp)
	movapd	%xmm0, 624(%rsp)
	movapd	%xmm0, 608(%rsp)
	.loc	3 977 14                # mg.c:977:14
	movapd	%xmm0, 592(%rsp)
	movapd	%xmm0, 576(%rsp)
	movapd	%xmm0, 560(%rsp)
	movapd	%xmm0, 544(%rsp)
	movapd	%xmm0, 528(%rsp)
	.loc	3 974 15                # mg.c:974:15
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 768(%rsp)
	movapd	%xmm0, 784(%rsp)
	movapd	%xmm0, 800(%rsp)
	movapd	%xmm0, 816(%rsp)
	movapd	%xmm0, 832(%rsp)
	movapd	%xmm0, 848(%rsp)
	movapd	%xmm0, 864(%rsp)
	movapd	%xmm0, 880(%rsp)
	movapd	%xmm0, 896(%rsp)
	movapd	%xmm0, 912(%rsp)
.Ltmp477:
	.loc	3 980 23 discriminator 1 # mg.c:980:23
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %r9d
	.loc	3 980 19 is_stmt 0 discriminator 1 # mg.c:980:19
	cmpl	$1, %r9d
	movq	72(%rsp), %r13          # 8-byte Reload
	jle	.LBB2_47
# BB#31:                                # %for.cond63.preheader.lr.ph
.Ltmp478:
	.loc	3 981 25 is_stmt 1 discriminator 1 # mg.c:981:25
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %r10d
.Ltmp479:
	.loc	3 982 27 discriminator 1 # mg.c:982:27
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %r12d
.Ltmp480:
	.loc	3 983 13                # mg.c:983:13
	movq	80(%rsp), %r8           # 8-byte Reload
	imulq	%r13, %r8
.Ltmp481:
	.loc	3 980 3 discriminator 1 # mg.c:980:3
	leaq	792(%rsp), %r14
	leaq	784(%rsp), %r15
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB2_32:                               # %for.cond63.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_38 Depth 4
                                        #         Child Loop BB2_42 Depth 4
.Ltmp482:
	.loc	3 981 5 discriminator 1 # mg.c:981:5
	cmpl	$2, %r10d
	jl	.LBB2_46
# BB#33:                                # %for.cond67.preheader.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
.Ltmp483:
	.loc	3 982 7 discriminator 1 # mg.c:982:7
	cmpl	$2, %r12d
	jl	.LBB2_46
# BB#34:                                # %for.body70.lr.ph.us.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
.Ltmp484:
	.loc	3 983 13                # mg.c:983:13
	movq	%r8, %rax
	imulq	%rbx, %rax
	leaq	v(,%rax,8), %r11
	movl	$1, %eax
	.p2align	4, 0x90
.LBB2_35:                               # %for.body70.lr.ph.us
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_36 Depth 3
                                        #         Child Loop BB2_38 Depth 4
                                        #         Child Loop BB2_42 Depth 4
	movq	%rax, %rcx
	imulq	%r13, %rcx
	leaq	(%r11,%rcx,8), %rcx
	movl	$1, %esi
.Ltmp485:
	.p2align	4, 0x90
.LBB2_36:                               # %for.body70.us
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_38 Depth 4
                                        #         Child Loop BB2_42 Depth 4
	.loc	3 990 13                # mg.c:990:13
	movsd	(%rcx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
.Ltmp486:
	.loc	3 983 13                # mg.c:983:13
	ucomisd	776(%rsp), %xmm1
	jbe	.LBB2_40
# BB#37:                                # %if.then.us
                                        #   in Loop: Header=BB2_36 Depth=3
.Ltmp487:
	.loc	3 984 21                # mg.c:984:21
	movsd	%xmm1, 776(%rsp)
	.loc	3 985 20                # mg.c:985:20
	movl	%esi, 692(%rsp)
	.loc	3 986 20                # mg.c:986:20
	movl	%eax, 612(%rsp)
	.loc	3 987 20                # mg.c:987:20
	movl	%ebx, 532(%rsp)
.Ltmp488:
	#DEBUG_VALUE: bubble:i <- 0
	#DEBUG_VALUE: bubble:m <- 10
	.loc	3 988 11                # mg.c:988:11
	movq	%r14, %rdi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_38:                               # %for.body.i.us
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        #       Parent Loop BB2_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp489:
	.loc	3 1169 25               # mg.c:1169:25
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
.Ltmp490:
	#DEBUG_VALUE: bubble:temp <- %XMM2
	.loc	3 1169 11 is_stmt 0     # mg.c:1169:11
	ucomisd	%xmm2, %xmm1
	jbe	.LBB2_40
.Ltmp491:
# BB#39:                                # %if.then9.i.us
                                        #   in Loop: Header=BB2_38 Depth=4
	#DEBUG_VALUE: bubble:temp <- %XMM2
	.loc	3 1171 23 is_stmt 1     # mg.c:1171:23
	movsd	%xmm1, (%rdi)
	.loc	3 1172 21               # mg.c:1172:21
	movsd	%xmm2, -16(%rdi)
	.loc	3 1174 18               # mg.c:1174:18
	movl	700(%rsp,%rbp,8), %edx
.Ltmp492:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1175 22               # mg.c:1175:22
	movl	%esi, 700(%rsp,%rbp,8)
	.loc	3 1176 20               # mg.c:1176:20
	movl	%edx, 692(%rsp,%rbp,8)
	.loc	3 1178 18               # mg.c:1178:18
	movl	620(%rsp,%rbp,8), %edx
.Ltmp493:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1179 22               # mg.c:1179:22
	movl	%eax, 620(%rsp,%rbp,8)
	.loc	3 1180 20               # mg.c:1180:20
	movl	%edx, 612(%rsp,%rbp,8)
	.loc	3 1182 18               # mg.c:1182:18
	movl	540(%rsp,%rbp,8), %edx
.Ltmp494:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1183 22               # mg.c:1183:22
	movl	%ebx, 540(%rsp,%rbp,8)
	.loc	3 1184 20               # mg.c:1184:20
	movl	%edx, 532(%rsp,%rbp,8)
.Ltmp495:
	.loc	3 1168 5 discriminator 1 # mg.c:1168:5
	incq	%rbp
	.loc	3 1168 19 is_stmt 0 discriminator 1 # mg.c:1168:19
	addq	$16, %rdi
	cmpq	$9, %rbp
	jl	.LBB2_38
.Ltmp496:
.LBB2_40:                               # %if.end.us
                                        #   in Loop: Header=BB2_36 Depth=3
	.loc	3 990 29 is_stmt 1      # mg.c:990:29
	movsd	768(%rsp), %xmm2        # xmm2 = mem[0],zero
.Ltmp497:
	.loc	3 990 13 is_stmt 0      # mg.c:990:13
	ucomisd	%xmm1, %xmm2
	jbe	.LBB2_44
# BB#41:                                # %if.then106.us
                                        #   in Loop: Header=BB2_36 Depth=3
.Ltmp498:
	.loc	3 991 21 is_stmt 1      # mg.c:991:21
	movsd	%xmm1, 768(%rsp)
	.loc	3 992 20                # mg.c:992:20
	movl	%esi, 688(%rsp)
	.loc	3 993 20                # mg.c:993:20
	movl	%eax, 608(%rsp)
	.loc	3 994 20                # mg.c:994:20
	movl	%ebx, 528(%rsp)
.Ltmp499:
	#DEBUG_VALUE: bubble:i <- 0
	#DEBUG_VALUE: bubble:m <- 10
	.loc	3 995 11                # mg.c:995:11
	movq	%r15, %rdi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_42:                               # %for.body86.i.us
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        #       Parent Loop BB2_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp500:
	.loc	3 1191 25               # mg.c:1191:25
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
.Ltmp501:
	#DEBUG_VALUE: bubble:temp <- %XMM2
	.loc	3 1191 11 is_stmt 0     # mg.c:1191:11
	ucomisd	%xmm1, %xmm2
	jbe	.LBB2_44
.Ltmp502:
# BB#43:                                # %if.then97.i.us
                                        #   in Loop: Header=BB2_42 Depth=4
	#DEBUG_VALUE: bubble:temp <- %XMM2
	.loc	3 1194 23 is_stmt 1     # mg.c:1194:23
	movsd	%xmm1, (%rdi)
	.loc	3 1195 21               # mg.c:1195:21
	movsd	%xmm2, -16(%rdi)
	.loc	3 1197 18               # mg.c:1197:18
	movl	696(%rsp,%rbp,8), %edx
.Ltmp503:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1198 22               # mg.c:1198:22
	movl	%esi, 696(%rsp,%rbp,8)
	.loc	3 1199 20               # mg.c:1199:20
	movl	%edx, 688(%rsp,%rbp,8)
	.loc	3 1201 18               # mg.c:1201:18
	movl	616(%rsp,%rbp,8), %edx
.Ltmp504:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1202 22               # mg.c:1202:22
	movl	%eax, 616(%rsp,%rbp,8)
	.loc	3 1203 20               # mg.c:1203:20
	movl	%edx, 608(%rsp,%rbp,8)
	.loc	3 1205 18               # mg.c:1205:18
	movl	536(%rsp,%rbp,8), %edx
.Ltmp505:
	#DEBUG_VALUE: bubble:j_temp <- %EDX
	.loc	3 1206 22               # mg.c:1206:22
	movl	%ebx, 536(%rsp,%rbp,8)
	.loc	3 1207 20               # mg.c:1207:20
	movl	%edx, 528(%rsp,%rbp,8)
.Ltmp506:
	.loc	3 1190 5 discriminator 1 # mg.c:1190:5
	incq	%rbp
	.loc	3 1190 19 is_stmt 0 discriminator 1 # mg.c:1190:19
	addq	$16, %rdi
	cmpq	$9, %rbp
	jl	.LBB2_42
.Ltmp507:
.LBB2_44:                               # %for.inc126.us
                                        #   in Loop: Header=BB2_36 Depth=3
	.loc	3 982 7 is_stmt 1 discriminator 1 # mg.c:982:7
	incq	%rsi
	cmpl	%r12d, %esi
	jne	.LBB2_36
.Ltmp508:
# BB#45:                                # %for.cond67.for.inc129_crit_edge.us
                                        #   in Loop: Header=BB2_35 Depth=2
	.loc	3 981 5 discriminator 1 # mg.c:981:5
	incq	%rax
	cmpl	%r10d, %eax
	jne	.LBB2_35
.Ltmp509:
.LBB2_46:                               # %for.inc132
                                        #   in Loop: Header=BB2_32 Depth=1
	.loc	3 980 3 discriminator 1 # mg.c:980:3
	incq	%rbx
	cmpl	%r9d, %ebx
	jne	.LBB2_32
.Ltmp510:
.LBB2_47:                               # %for.cond135.preheader
	.loc	3 1011 25               # mg.c:1011:25
	movzbl	is1(%rip), %eax
	andl	$1, %eax
	leal	-2(%rax,%rax), %r8d
	.loc	3 1012 21               # mg.c:1012:21
	movl	is2(%rip), %r9d
	.loc	3 1012 25 is_stmt 0     # mg.c:1012:25
	addl	$-2, %r9d
	.loc	3 1013 21 is_stmt 1     # mg.c:1013:21
	movl	is3(%rip), %r10d
	.loc	3 1013 25 is_stmt 0     # mg.c:1013:25
	addl	$-2, %r10d
	movl	$9, %r11d
	movl	$10, %esi
.Ltmp511:
	.loc	3 1009 14 is_stmt 1     # mg.c:1009:14
	xorpd	%xmm1, %xmm1
	movl	$9, %ebp
	.p2align	4, 0x90
.LBB2_48:                               # %for.body137
                                        # =>This Inner Loop Header: Depth=1
.Ltmp512:
	#DEBUG_VALUE: zran3:best <- 0.000000e+00
	.loc	3 1009 16 is_stmt 0     # mg.c:1009:16
	movslq	%ebp, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movsd	776(%rsp,%rcx), %xmm2   # xmm2 = mem[0],zero
.Ltmp513:
	.loc	3 1010 19 is_stmt 1     # mg.c:1010:19
	movl	$0, 204(%rsp,%rsi,8)
	xorl	%ebx, %ebx
.Ltmp514:
	.loc	3 1009 9                # mg.c:1009:9
	ucomisd	%xmm1, %xmm2
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %edi
	jbe	.LBB2_50
# BB#49:                                # %if.then142
                                        #   in Loop: Header=BB2_48 Depth=1
	movl	692(%rsp,%rax,8), %ecx
.Ltmp515:
	.loc	3 1011 29               # mg.c:1011:29
	addl	%r8d, %ecx
	movl	612(%rsp,%rax,8), %edx
	.loc	3 1012 29               # mg.c:1012:29
	addl	%r9d, %edx
	movl	532(%rsp,%rax,8), %edi
	.loc	3 1013 29               # mg.c:1013:29
	addl	%r10d, %edi
	.loc	3 1014 14               # mg.c:1014:14
	decl	%eax
.Ltmp516:
	#DEBUG_VALUE: zran3:i1 <- %EAX
	movl	%eax, %ebp
.Ltmp517:
.LBB2_50:                               # %if.end191
                                        #   in Loop: Header=BB2_48 Depth=1
	.loc	3 1017 19               # mg.c:1017:19
	movl	%ecx, 284(%rsp,%rsi,8)
	.loc	3 1018 19               # mg.c:1018:19
	movl	%edx, 364(%rsp,%rsi,8)
.Ltmp518:
	#DEBUG_VALUE: zran3:best <- 1.000000e+00
	.loc	3 1019 19               # mg.c:1019:19
	movl	%edi, 444(%rsp,%rsi,8)
.Ltmp519:
	.loc	3 1023 16               # mg.c:1023:16
	movslq	%r11d, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
.Ltmp520:
	.loc	3 1023 9 is_stmt 0      # mg.c:1023:9
	ucomisd	768(%rsp,%rcx), %xmm0
.Ltmp521:
	.loc	3 1024 19 is_stmt 1     # mg.c:1024:19
	movl	$0, 200(%rsp,%rsi,8)
	movl	$0, %ecx
	movl	$0, %edx
	jbe	.LBB2_52
# BB#51:                                # %if.then196
                                        #   in Loop: Header=BB2_48 Depth=1
	movl	688(%rsp,%rax,8), %ebx
	.loc	3 1025 29               # mg.c:1025:29
	addl	%r8d, %ebx
	movl	608(%rsp,%rax,8), %ecx
	.loc	3 1026 29               # mg.c:1026:29
	addl	%r9d, %ecx
	movl	528(%rsp,%rax,8), %edx
	.loc	3 1027 29               # mg.c:1027:29
	addl	%r10d, %edx
	.loc	3 1028 14               # mg.c:1028:14
	decl	%eax
.Ltmp522:
	#DEBUG_VALUE: zran3:i0 <- %EAX
	movl	%eax, %r11d
.Ltmp523:
.LBB2_52:                               # %for.inc247
                                        #   in Loop: Header=BB2_48 Depth=1
	.loc	3 1025 19               # mg.c:1025:19
	movl	%ebx, 280(%rsp,%rsi,8)
	.loc	3 1026 19               # mg.c:1026:19
	movl	%ecx, 360(%rsp,%rsi,8)
	.loc	3 1027 19               # mg.c:1027:19
	movl	%edx, 440(%rsp,%rsi,8)
.Ltmp524:
	.loc	3 1007 22 discriminator 1 # mg.c:1007:22
	decq	%rsi
	jg	.LBB2_48
.Ltmp525:
# BB#53:                                # %for.cond249.preheader
	.loc	3 1087 3 discriminator 1 # mg.c:1087:3
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_63
# BB#54:                                # %for.cond252.preheader.lr.ph
.Ltmp526:
	.loc	3 1088 5 discriminator 1 # mg.c:1088:5
	movq	16(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_63
# BB#55:                                # %for.cond255.preheader.lr.ph.us.preheader
.Ltmp527:
	.loc	3 1090 9                # mg.c:1090:9
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	leaq	8(,%rax,8), %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	andl	$3, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	72(%rsp), %r15          # 8-byte Reload
	imulq	%r15, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	(,%rcx,8), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	(,%r15,8), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	shlq	$5, %r15
	movl	$v, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
.Ltmp528:
	.p2align	4, 0x90
.LBB2_56:                               # %for.cond255.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_58 Depth 2
                                        #     Child Loop BB2_61 Depth 2
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	.loc	3 1089 7 discriminator 1 # mg.c:1089:7
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_62
# BB#57:                                # %for.body257.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB2_56 Depth=1
	movq	%r15, %r13
	movq	152(%rsp), %r15         # 8-byte Reload
	testl	%r15d, %r15d
	movq	48(%rsp), %rbx          # 8-byte Reload
	movl	$0, %r14d
	movq	40(%rsp), %r12          # 8-byte Reload
	je	.LBB2_59
	.p2align	4, 0x90
.LBB2_58:                               # %for.body257.lr.ph.us.us.prol
                                        #   Parent Loop BB2_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp529:
	.loc	3 1090 23               # mg.c:1090:23
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
.Ltmp530:
	.loc	3 1088 5 discriminator 1 # mg.c:1088:5
	incq	%r14
	addq	%r12, %rbx
	cmpl	%r14d, %r15d
	jne	.LBB2_58
.LBB2_59:                               # %for.body257.lr.ph.us.us.preheader.split
                                        #   in Loop: Header=BB2_56 Depth=1
	cmpl	$3, 160(%rsp)           # 4-byte Folded Reload
	movq	%r13, %r15
	jb	.LBB2_62
# BB#60:                                # %for.body257.lr.ph.us.us.preheader.split.split
                                        #   in Loop: Header=BB2_56 Depth=1
.Ltmp531:
	.loc	3 1090 9                # mg.c:1090:9
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	subl	%r14d, %ebx
	leaq	3(%r14), %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leaq	2(%r14), %rsi
	imulq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	72(%rsp), %r12          # 8-byte Reload
	imulq	%r14, %r12
	addq	24(%rsp), %r12          # 8-byte Folded Reload
	shlq	$3, %r12
	incq	%r14
	imulq	%rax, %r14
	addq	%rdx, %r14
	movl	$v, %r13d
	.p2align	4, 0x90
.LBB2_61:                               # %for.body257.lr.ph.us.us
                                        #   Parent Loop BB2_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	3 1090 23 is_stmt 0     # mg.c:1090:23
	leaq	(%r13,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leaq	(%r13,%r14), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
.Ltmp532:
	.loc	3 1088 5 is_stmt 1 discriminator 1 # mg.c:1088:5
	addq	%r15, %r13
	addl	$-4, %ebx
	jne	.LBB2_61
.Ltmp533:
.LBB2_62:                               # %for.cond252.for.inc270_crit_edge.us
                                        #   in Loop: Header=BB2_56 Depth=1
	movq	120(%rsp), %rdx         # 8-byte Reload
	.loc	3 1087 3 discriminator 1 # mg.c:1087:3
	incq	%rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	addq	%rax, 112(%rsp)         # 8-byte Folded Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edx
	jne	.LBB2_56
.Ltmp534:
.LBB2_63:                               # %for.cond273.preheader
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
.Ltmp535:
	.loc	3 1095 5                # mg.c:1095:5
	imulq	%rdi, %rbp
	movslq	360(%rsp), %rcx
	movslq	440(%rsp), %rax
	movslq	520(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rax
	shlq	$3, %rax
	leaq	(%rax,%rdx,8), %rdx
.Ltmp536:
	#DEBUG_VALUE: zero3:oz <- %RDI
	.loc	3 1095 46 is_stmt 0     # mg.c:1095:46
	movabsq	$-4616189618054758400, %rax # imm = 0xBFF0000000000000
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	352(%rsp), %rcx
	movslq	432(%rsp), %rdx
	movslq	512(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	344(%rsp), %rcx
	movslq	424(%rsp), %rdx
	movslq	504(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	336(%rsp), %rcx
	movslq	416(%rsp), %rdx
	movslq	496(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	328(%rsp), %rcx
	movslq	408(%rsp), %rdx
	movslq	488(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	320(%rsp), %rcx
	movslq	400(%rsp), %rdx
	movslq	480(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	312(%rsp), %rcx
	movslq	392(%rsp), %rdx
	movslq	472(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	304(%rsp), %rcx
	movslq	384(%rsp), %rdx
	movslq	464(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	296(%rsp), %rcx
	movslq	376(%rsp), %rdx
	movslq	456(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
	.loc	3 1095 5                # mg.c:1095:5
	movslq	288(%rsp), %rcx
	movslq	368(%rsp), %rdx
	movslq	448(%rsp), %rsi
	imulq	%rbp, %rsi
	imulq	%rdi, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rsi,8), %rdx
	.loc	3 1095 46               # mg.c:1095:46
	movq	%rax, v(%rdx,%rcx,8)
.Ltmp537:
	.loc	3 1098 5 is_stmt 1      # mg.c:1098:5
	movslq	364(%rsp), %rax
	movslq	444(%rsp), %rcx
	movslq	524(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	movabsq	$4607182418800017408, %rsi # imm = 0x3FF0000000000000
	.loc	3 1098 46 is_stmt 0     # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	356(%rsp), %rax
	movslq	436(%rsp), %rcx
	movslq	516(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	348(%rsp), %rax
	movslq	428(%rsp), %rcx
	movslq	508(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	340(%rsp), %rax
	movslq	420(%rsp), %rcx
	movslq	500(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	332(%rsp), %rax
	movslq	412(%rsp), %rcx
	movslq	492(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	324(%rsp), %rax
	movslq	404(%rsp), %rcx
	movslq	484(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	316(%rsp), %rax
	movslq	396(%rsp), %rcx
	movslq	476(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	308(%rsp), %rax
	movslq	388(%rsp), %rcx
	movslq	468(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	300(%rsp), %rax
	movslq	380(%rsp), %rcx
	movslq	460(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
	.loc	3 1098 5                # mg.c:1098:5
	movslq	292(%rsp), %rax
	movslq	372(%rsp), %rcx
	movslq	452(%rsp), %rdx
	imulq	%rbp, %rdx
	imulq	%rdi, %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	.loc	3 1098 46               # mg.c:1098:46
	movq	%rsi, v(%rcx,%rax,8)
.Ltmp538:
	.loc	3 1100 3 is_stmt 1      # mg.c:1100:3
	movl	$v, %edi
.Ltmp539:
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	comm3
	.loc	3 1105 1                # mg.c:1105:1
	addq	$936, %rsp              # imm = 0x3A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp540:
.Lfunc_end2:
	.size	zran3, .Lfunc_end2-zran3
	.cfi_endproc

	.p2align	4, 0x90
	.type	comm3,@function
comm3:                                  # @comm3
.Lfunc_begin3:
	.loc	3 883 0                 # mg.c:883:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp541:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp542:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp543:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp544:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp545:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp546:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp547:
	.cfi_def_cfa_offset 288
.Ltmp548:
	.cfi_offset %rbx, -56
.Ltmp549:
	.cfi_offset %r12, -48
.Ltmp550:
	.cfi_offset %r13, -40
.Ltmp551:
	.cfi_offset %r14, -32
.Ltmp552:
	.cfi_offset %r15, -24
.Ltmp553:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	#DEBUG_VALUE: comm3:kk <- 0
.Ltmp554:
	.loc	3 884 3 prologue_end    # mg.c:884:3
	movl	%edx, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	.loc	3 888 7                 # mg.c:888:7
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
.Ltmp555:
	.loc	3 888 16 is_stmt 0 discriminator 1 # mg.c:888:16
	movl	$9, %edi
	callq	timer_start
.Ltmp556:
.LBB3_2:                                # %for.cond.preheader
	.loc	3 889 23 is_stmt 1 discriminator 1 # mg.c:889:23
	leal	-1(%rbx), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	.loc	3 889 3 is_stmt 0 discriminator 1 # mg.c:889:3
	cmpl	$2, %eax
	jl	.LBB3_39
# BB#3:                                 # %for.cond1.preheader.lr.ph
.Ltmp557:
	.loc	3 890 25 is_stmt 1 discriminator 1 # mg.c:890:25
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
.Ltmp558:
	.loc	3 892 19                # mg.c:892:19
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %edx
.Ltmp559:
	.loc	3 890 5 discriminator 1 # mg.c:890:5
	cmpl	$2, %ecx
	jl	.LBB3_13
# BB#4:                                 # %for.body4.lr.ph.us.preheader
.Ltmp560:
	.loc	3 891 37                # mg.c:891:37
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %eax
	.loc	3 891 25 is_stmt 0      # mg.c:891:25
	movslq	%eax, %rsi
	.loc	3 892 7 is_stmt 1       # mg.c:892:7
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movslq	%edx, %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	.loc	3 891 25                # mg.c:891:25
	leal	2(%rax), %ebp
	leal	-3(%rax), %eax
.Ltmp561:
	.loc	3 890 5 discriminator 1 # mg.c:890:5
	movl	%eax, 136(%rsp)         # 4-byte Spill
	andl	$3, %ebp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rdx         # 8-byte Reload
.Ltmp562:
	.loc	3 891 25                # mg.c:891:25
	leaq	8(,%rdx,8), %rcx
	movq	104(%rsp), %r14         # 8-byte Reload
	imulq	%r14, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	addq	%r8, %rcx
	imulq	%r14, %rdx
	leaq	(,%r14,8), %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	(,%rdi,8), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	(%r8,%rdx,8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	shlq	$3, %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	shlq	$5, %r14
	leaq	(,%rsi,8), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$1, %eax
	.p2align	4, 0x90
.LBB3_5:                                # %for.body4.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #     Child Loop BB3_10 Depth 2
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testl	%ebp, %ebp
	movq	%rcx, %rax
	movl	$0, %ecx
	movl	$1, %r11d
	je	.LBB3_8
	.p2align	4, 0x90
.LBB3_6:                                # %for.body4.us.prol
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r11
	movq	(%rax,%rsi,8), %rcx
	.loc	3 891 23 is_stmt 0      # mg.c:891:23
	movq	%rcx, (%rax)
	.loc	3 892 25 is_stmt 1      # mg.c:892:25
	movq	8(%rax), %rcx
	.loc	3 892 23 is_stmt 0      # mg.c:892:23
	movq	%rcx, (%rax,%rdi,8)
.Ltmp563:
	.loc	3 890 5 is_stmt 1 discriminator 1 # mg.c:890:5
	leaq	1(%r11), %rcx
	addq	%rbx, %rax
	cmpl	%ecx, %ebp
	jne	.LBB3_6
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	addq	$2, %r11
.LBB3_8:                                # %for.body4.lr.ph.us.split
                                        #   in Loop: Header=BB3_5 Depth=1
	cmpl	$3, 136(%rsp)           # 4-byte Folded Reload
	jb	.LBB3_11
# BB#9:                                 # %for.body4.lr.ph.us.split.split
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	72(%rsp), %r15d         # 4-byte Reload
	subl	%r11d, %r15d
	leaq	3(%r11), %r10
	movq	16(%rsp), %rdx          # 8-byte Reload
	imulq	%rdx, %r10
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r10), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%r10), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	2(%r11), %r8
	imulq	%rdx, %r8
	leaq	(%rsi,%r8), %r13
	leaq	(%rbp,%r8), %rbx
	movq	%rdx, %rcx
	imulq	%r11, %rcx
	leaq	(%rsi,%rcx), %r9
	leaq	(%rbp,%rcx), %rax
	incq	%r11
	imulq	%rdx, %r11
	leaq	(%rsi,%r11), %rsi
	leaq	(%rbp,%r11), %rdi
	movq	88(%rsp), %rbp          # 8-byte Reload
	.p2align	4, 0x90
.LBB3_10:                               # %for.body4.us
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp564:
	.loc	3 891 25                # mg.c:891:25
	movq	(%rax,%rbp), %rdx
	.loc	3 891 23 is_stmt 0      # mg.c:891:23
	movq	%rdx, (%rcx,%rbp)
	.loc	3 892 25 is_stmt 1      # mg.c:892:25
	movq	8(%rcx,%rbp), %rdx
	.loc	3 892 23 is_stmt 0      # mg.c:892:23
	movq	%rdx, (%r9,%rbp)
	.loc	3 891 25 is_stmt 1      # mg.c:891:25
	movq	(%rdi,%rbp), %rdx
	.loc	3 891 23 is_stmt 0      # mg.c:891:23
	movq	%rdx, (%r11,%rbp)
	.loc	3 892 25 is_stmt 1      # mg.c:892:25
	movq	8(%r11,%rbp), %rdx
	.loc	3 892 23 is_stmt 0      # mg.c:892:23
	movq	%rdx, (%rsi,%rbp)
	.loc	3 891 25 is_stmt 1      # mg.c:891:25
	movq	(%rbx,%rbp), %rdx
	.loc	3 891 23 is_stmt 0      # mg.c:891:23
	movq	%rdx, (%r8,%rbp)
	.loc	3 892 25 is_stmt 1      # mg.c:892:25
	movq	8(%r8,%rbp), %rdx
	.loc	3 892 23 is_stmt 0      # mg.c:892:23
	movq	%rdx, (%r13,%rbp)
	.loc	3 891 25 is_stmt 1      # mg.c:891:25
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx,%rbp), %rdx
	.loc	3 891 23 is_stmt 0      # mg.c:891:23
	movq	%rdx, (%r10,%rbp)
	.loc	3 892 25 is_stmt 1      # mg.c:892:25
	movq	8(%r10,%rbp), %rdx
	.loc	3 892 23 is_stmt 0      # mg.c:892:23
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%rdx, (%r12,%rbp)
.Ltmp565:
	.loc	3 890 5 is_stmt 1 discriminator 1 # mg.c:890:5
	addq	%r14, %rbp
	addl	$-4, %r15d
	jne	.LBB3_10
.Ltmp566:
.LBB3_11:                               # %for.cond1.for.inc27_crit_edge.us
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	.loc	3 889 3 discriminator 1 # mg.c:889:3
	incq	%rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rsi, 88(%rsp)          # 8-byte Folded Spill
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	jne	.LBB3_5
.Ltmp567:
# BB#12:                                # %for.cond30.preheader
	.loc	3 896 3 discriminator 1 # mg.c:896:3
	cmpl	$2, 64(%rsp)            # 4-byte Folded Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	jl	.LBB3_39
.LBB3_13:                               # %for.cond34.preheader.lr.ph
.Ltmp568:
	.loc	3 897 5 discriminator 1 # mg.c:897:5
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB3_39
# BB#14:                                # %for.body36.lr.ph.us.preheader
.Ltmp569:
	.loc	3 898 33                # mg.c:898:33
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %eax
	.loc	3 898 25 is_stmt 0      # mg.c:898:25
	cltq
	movq	176(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rsi
	imulq	%rsi, %rdi
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	leaq	(,%rbp,8), %r8
	leaq	(%r8,%rax,8), %rbx
	imulq	%rsi, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	.loc	3 899 7 is_stmt 1       # mg.c:899:7
	movslq	72(%rsp), %rcx          # 4-byte Folded Reload
	.loc	3 898 25                # mg.c:898:25
	movl	%edx, %eax
	leaq	(,%rdi,8), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	(,%rax,8), %rdx
	leaq	(%rdx,%rdi,8), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	(%r8,%rcx,8), %rdx
	.loc	3 899 7                 # mg.c:899:7
	imulq	%rsi, %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	.loc	3 898 25                # mg.c:898:25
	imulq	%rsi, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rax,8), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	imulq	%rsi, %rbx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rax,8), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	8(,%rbp,8), %rcx
	imulq	%rsi, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rax,8), %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	incq	%rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	-4(%rsi), %rax
	shrq	$2, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	48(%rax,%rbx), %rsi
	leaq	(%rax,%rdi,8), %r12
	movq	%rsi, %rdi
	leaq	(%rax,%rcx), %rsi
	leaq	(%rax,%rdx), %r8
	leaq	(%rax,%rbx), %r9
	movl	$1, %r15d
	xorl	%r10d, %r10d
.Ltmp570:
	.p2align	4, 0x90
.LBB3_15:                               # %for.body36.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
                                        #     Child Loop BB3_18 Depth 2
                                        #     Child Loop BB3_22 Depth 2
	.loc	3 897 5 discriminator 1 # mg.c:897:5
	cmpq	$3, 40(%rsp)            # 8-byte Folded Reload
	movl	$0, %r14d
	jbe	.LBB3_16
# BB#23:                                # %min.iters.checked
                                        #   in Loop: Header=BB3_15 Depth=1
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %r14d
	je	.LBB3_16
# BB#24:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
.Ltmp571:
	.loc	3 898 25                # mg.c:898:25
	movq	%rax, %rcx
	imulq	%r10, %rcx
	leaq	(%rax,%rcx), %rdx
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rdx
	movq	128(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx), %rdi
	addq	%rax, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rbp
	addq	%rax, %rbp
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx), %r14
	addq	%rax, %r14
	movq	136(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx), %r11
	addq	%rax, %r11
	movq	112(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx), %rbx
	addq	%rax, %rbx
	movq	96(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rsi
	addq	%rax, %rsi
	addq	184(%rsp), %rcx         # 8-byte Folded Reload
	addq	%rax, %rcx
.Ltmp572:
	.loc	3 897 5 discriminator 1 # mg.c:897:5
	cmpq	%r14, %rdx
	setbe	88(%rsp)                # 1-byte Folded Spill
	cmpq	%rdi, %rbp
	setbe	152(%rsp)               # 1-byte Folded Spill
	cmpq	%rbx, %rdx
	setbe	%al
	cmpq	%rdi, %r11
	setbe	144(%rsp)               # 1-byte Folded Spill
	cmpq	%rcx, %rdx
	setbe	%dl
	cmpq	%rdi, %rsi
	setbe	%dil
	cmpq	%rbx, %rbp
	setbe	%bl
	cmpq	%r14, %r11
	setbe	%r11b
	cmpq	%rcx, %rbp
	setbe	%r13b
	cmpq	%r14, %rsi
	setbe	%bpl
	movb	152(%rsp), %cl          # 1-byte Reload
	testb	88(%rsp), %cl           # 1-byte Folded Reload
	jne	.LBB3_25
# BB#26:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=1
	andb	144(%rsp), %al          # 1-byte Folded Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	jne	.LBB3_27
# BB#28:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=1
	andb	%dil, %dl
	jne	.LBB3_27
# BB#29:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=1
	andb	%r11b, %bl
	movq	8(%rsp), %rdi           # 8-byte Reload
	jne	.LBB3_30
# BB#31:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_15 Depth=1
	andb	%bpl, %r13b
	movl	$0, %r14d
	jne	.LBB3_16
# BB#32:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	%rsi, %r11
.Ltmp573:
	.loc	3 898 25                # mg.c:898:25
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB3_34
# BB#33:                                # %vector.body.prol
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	imulq	%r15, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	200(%rsp), %rcx         # 8-byte Reload
	movups	(%rax,%rcx,8), %xmm0
	movups	16(%rax,%rcx,8), %xmm1
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movq	104(%rsp), %rcx         # 8-byte Reload
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movups	(%rax,%rcx,8), %xmm0
	movups	16(%rax,%rcx,8), %xmm1
	movq	192(%rsp), %rcx         # 8-byte Reload
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movups	%xmm0, (%rax,%rcx,8)
	movups	%xmm1, 16(%rax,%rcx,8)
	movl	$4, %eax
.LBB3_34:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB3_15 Depth=1
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	je	.LBB3_37
# BB#35:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB3_15 Depth=1
	.loc	3 898 25 is_stmt 1      # mg.c:898:25
	movq	16(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	leaq	(%rdi,%rax,8), %rdx
	leaq	(%r12,%rax,8), %rbp
	leaq	(%r11,%rax,8), %rbx
	leaq	(%r8,%rax,8), %rax
.Ltmp574:
	.loc	3 897 5 discriminator 1 # mg.c:897:5
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_36:                               # %vector.body
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp575:
	.loc	3 898 25                # mg.c:898:25
	movups	-48(%rdx,%rsi,8), %xmm0
	movups	-32(%rdx,%rsi,8), %xmm1
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movups	%xmm0, (%rbp,%rsi,8)
	movups	%xmm1, 16(%rbp,%rsi,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movups	(%rbx,%rsi,8), %xmm0
	movups	16(%rbx,%rsi,8), %xmm1
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movups	%xmm0, (%rax,%rsi,8)
	movups	%xmm1, 16(%rax,%rsi,8)
	.loc	3 898 25 is_stmt 1      # mg.c:898:25
	movups	-16(%rdx,%rsi,8), %xmm0
	movups	(%rdx,%rsi,8), %xmm1
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movups	%xmm0, 32(%rbp,%rsi,8)
	movups	%xmm1, 48(%rbp,%rsi,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movups	32(%rbx,%rsi,8), %xmm0
	movups	48(%rbx,%rsi,8), %xmm1
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movups	%xmm0, 32(%rax,%rsi,8)
	movups	%xmm1, 48(%rax,%rsi,8)
.Ltmp576:
	.loc	3 897 5 is_stmt 1 discriminator 1 # mg.c:897:5
	addq	$8, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB3_36
.LBB3_37:                               # %middle.block
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 40(%rsp)          # 8-byte Folded Reload
	movq	%rax, %r14
	movq	%r11, %rsi
	jne	.LBB3_16
	jmp	.LBB3_38
.LBB3_30:                               #   in Loop: Header=BB3_15 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB3_16
.LBB3_27:                               #   in Loop: Header=BB3_15 Depth=1
	xorl	%r14d, %r14d
	movq	8(%rsp), %rdi           # 8-byte Reload
	jmp	.LBB3_16
.LBB3_25:                               #   in Loop: Header=BB3_15 Depth=1
	xorl	%r14d, %r14d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	.p2align	4, 0x90
.LBB3_16:                               # %for.body36.us.preheader
                                        #   in Loop: Header=BB3_15 Depth=1
.Ltmp577:
	.loc	3 898 25                # mg.c:898:25
	movl	%r14d, %eax
	orl	$1, %eax
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r11d
	subl	%eax, %r11d
	testb	$3, %dl
	je	.LBB3_20
# BB#17:                                # %for.body36.us.prol.preheader
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%r10, %r13
	movq	%rdi, %r10
	leaq	(%r8,%r14,8), %rax
	movq	%rsi, %r15
	leaq	(%r15,%r14,8), %rsi
	leaq	(%r12,%r14,8), %rbx
	leaq	(%r9,%r14,8), %rdi
	andl	$3, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_18:                               # %for.body36.us.prol
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	movq	(%rdi,%rbp,8), %rcx
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movq	%rcx, (%rbx,%rbp,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movq	(%rsi,%rbp,8), %rcx
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movq	%rcx, (%rax,%rbp,8)
.Ltmp578:
	.loc	3 897 5 is_stmt 1 discriminator 1 # mg.c:897:5
	leaq	1(%rbp), %rcx
	cmpl	%ecx, %edx
	jne	.LBB3_18
# BB#19:                                #   in Loop: Header=BB3_15 Depth=1
	leaq	1(%r14,%rbp), %r14
	movq	%r10, %rdi
	movq	%r13, %r10
	movq	%r15, %rsi
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB3_20:                               # %for.body36.us.preheader.split
                                        #   in Loop: Header=BB3_15 Depth=1
.Ltmp579:
	.loc	3 898 25                # mg.c:898:25
	cmpl	$3, %r11d
	jb	.LBB3_38
# BB#21:                                # %for.body36.us.preheader.split.split
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
	subl	%r14d, %ebp
	leaq	(%r8,%r14,8), %rbx
	leaq	(%rsi,%r14,8), %rdx
	leaq	(%r12,%r14,8), %r11
	leaq	(%r9,%r14,8), %rcx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_22:                               # %for.body36.us
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%r14,8), %rax
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movq	%rax, (%r11,%r14,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movq	(%rdx,%r14,8), %rax
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movq	%rax, (%rbx,%r14,8)
	.loc	3 898 25 is_stmt 1      # mg.c:898:25
	movq	8(%rcx,%r14,8), %rax
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movq	%rax, 8(%r11,%r14,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movq	8(%rdx,%r14,8), %rax
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movq	%rax, 8(%rbx,%r14,8)
	.loc	3 898 25 is_stmt 1      # mg.c:898:25
	movq	16(%rcx,%r14,8), %rax
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movq	%rax, 16(%r11,%r14,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movq	16(%rdx,%r14,8), %rax
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movq	%rax, 16(%rbx,%r14,8)
	.loc	3 898 25 is_stmt 1      # mg.c:898:25
	movq	24(%rcx,%r14,8), %rax
	.loc	3 898 23 is_stmt 0      # mg.c:898:23
	movq	%rax, 24(%r11,%r14,8)
	.loc	3 899 25 is_stmt 1      # mg.c:899:25
	movq	24(%rdx,%r14,8), %rax
	.loc	3 899 23 is_stmt 0      # mg.c:899:23
	movq	%rax, 24(%rbx,%r14,8)
.Ltmp580:
	.loc	3 897 5 is_stmt 1 discriminator 1 # mg.c:897:5
	addq	$4, %r14
	cmpl	%r14d, %ebp
	jne	.LBB3_22
.Ltmp581:
.LBB3_38:                               # %for.cond34.for.inc64_crit_edge.us
                                        #   in Loop: Header=BB3_15 Depth=1
	.loc	3 896 3 discriminator 1 # mg.c:896:3
	incq	%r15
	incq	%r10
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rdi
	addq	%rax, %r12
	addq	%rax, %rsi
	addq	%rax, %r8
	addq	%rax, %r9
	cmpl	64(%rsp), %r15d         # 4-byte Folded Reload
	jne	.LBB3_15
.Ltmp582:
.LBB3_39:                               # %for.cond67.preheader
	movq	48(%rsp), %r12          # 8-byte Reload
.Ltmp583:
	.loc	3 903 3 discriminator 1 # mg.c:903:3
	testl	%r12d, %r12d
	jle	.LBB3_66
# BB#40:                                # %for.cond70.preheader.lr.ph
.Ltmp584:
	.loc	3 904 5 discriminator 1 # mg.c:904:5
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB3_66
# BB#41:                                # %for.body72.lr.ph.us.preheader
	movq	216(%rsp), %rax         # 8-byte Reload
.Ltmp585:
	.loc	3 905 29                # mg.c:905:29
	addl	$-2, %eax
	.loc	3 905 25 is_stmt 0      # mg.c:905:25
	movslq	%eax, %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%rax, %r10
	movq	%r10, %rbp
	movq	104(%rsp), %rsi         # 8-byte Reload
	imulq	%rsi, %rbp
	movq	%rcx, %rax
	imulq	%rbp, %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rbp,8), %rax
	.loc	3 906 7 is_stmt 0       # mg.c:906:7
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movslq	64(%rsp), %rbx          # 4-byte Folded Reload
	movq	%rbx, %rax
	imulq	%rbp, %rax
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %r8
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	leal	-1(%r8), %eax
	leaq	1(%rax), %r9
	movq	%r9, 8(%rsp)            # 8-byte Spill
	shlq	$3, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	imulq	%r10, %rbx
	imulq	%rsi, %rbx
	leaq	(%rax,%rbx,8), %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	imulq	%r10, %rcx
	imulq	%rsi, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	leaq	(%rax,%rbp,8), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	shlq	$3, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%r9, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	-4(%rdi), %rax
	shrq	$2, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	48(%rdx,%rcx,8), %r15
	leaq	(,%rcx,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rbx,8), %r9
	leaq	(,%rbx,8), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	(,%rsi,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	1(%r8), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	xorl	%r11d, %r11d
	movq	%rdx, %r8
.Ltmp586:
	.p2align	4, 0x90
.LBB3_42:                               # %for.body72.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_63 Depth 2
                                        #     Child Loop BB3_45 Depth 2
                                        #     Child Loop BB3_49 Depth 2
	.loc	3 904 5 discriminator 1 # mg.c:904:5
	cmpq	$3, 8(%rsp)             # 8-byte Folded Reload
	movl	$0, %r13d
	jbe	.LBB3_43
# BB#50:                                # %min.iters.checked72
                                        #   in Loop: Header=BB3_42 Depth=1
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %r13d
	je	.LBB3_43
# BB#51:                                # %vector.memcheck105
                                        #   in Loop: Header=BB3_42 Depth=1
.Ltmp587:
	.loc	3 905 25                # mg.c:905:25
	movq	64(%rsp), %rcx          # 8-byte Reload
	imulq	%r11, %rcx
	movq	56(%rsp), %r10          # 8-byte Reload
	leaq	(%r10,%rcx), %r12
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	addq	%r10, %rsi
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	addq	%r10, %rdi
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	addq	%r10, %rbx
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	addq	%r10, %rbp
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	addq	%r10, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx), %r14
	addq	%r10, %r14
	addq	128(%rsp), %rcx         # 8-byte Folded Reload
	addq	%r10, %rcx
.Ltmp588:
	.loc	3 904 5 discriminator 1 # mg.c:904:5
	cmpq	%rbx, %r12
	setbe	88(%rsp)                # 1-byte Folded Spill
	cmpq	%rsi, %rdi
	setbe	%r13b
	cmpq	%rax, %r12
	setbe	%r10b
	cmpq	%rsi, %rbp
	setbe	152(%rsp)               # 1-byte Folded Spill
	cmpq	%rcx, %r12
	setbe	%dl
	cmpq	%rsi, %r14
	setbe	%r12b
	cmpq	%rax, %rdi
	setbe	%sil
	cmpq	%rbx, %rbp
	setbe	%al
	cmpq	%rcx, %rdi
	setbe	%cl
	cmpq	%rbx, %r14
	setbe	%dil
	testb	88(%rsp), %r13b         # 1-byte Folded Reload
	jne	.LBB3_52
# BB#53:                                # %vector.memcheck105
                                        #   in Loop: Header=BB3_42 Depth=1
	andb	152(%rsp), %r10b        # 1-byte Folded Reload
	jne	.LBB3_52
# BB#54:                                # %vector.memcheck105
                                        #   in Loop: Header=BB3_42 Depth=1
	andb	%r12b, %dl
	movq	48(%rsp), %r12          # 8-byte Reload
	jne	.LBB3_55
# BB#56:                                # %vector.memcheck105
                                        #   in Loop: Header=BB3_42 Depth=1
	andb	%al, %sil
	jne	.LBB3_57
# BB#58:                                # %vector.memcheck105
                                        #   in Loop: Header=BB3_42 Depth=1
	andb	%dil, %cl
	movl	$0, %r13d
	jne	.LBB3_43
# BB#59:                                # %vector.body68.preheader
                                        #   in Loop: Header=BB3_42 Depth=1
.Ltmp589:
	.loc	3 905 25                # mg.c:905:25
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB3_61
# BB#60:                                # %vector.body68.prol
                                        #   in Loop: Header=BB3_42 Depth=1
	movq	%r11, %rax
	imulq	104(%rsp), %rax         # 8-byte Folded Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movups	(%rcx,%rax,8), %xmm0
	movups	16(%rcx,%rax,8), %xmm1
	movq	56(%rsp), %rcx          # 8-byte Reload
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movups	%xmm0, (%rcx,%rax,8)
	movups	%xmm1, 16(%rcx,%rax,8)
	movq	184(%rsp), %rcx         # 8-byte Reload
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movups	(%rcx,%rax,8), %xmm0
	movups	16(%rcx,%rax,8), %xmm1
	movq	168(%rsp), %rcx         # 8-byte Reload
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movups	%xmm0, (%rcx,%rax,8)
	movups	%xmm1, 16(%rcx,%rax,8)
	movl	$4, %eax
.LBB3_61:                               # %vector.body68.preheader.split
                                        #   in Loop: Header=BB3_42 Depth=1
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB3_64
# BB#62:                                # %vector.body68.preheader.split.split
                                        #   in Loop: Header=BB3_42 Depth=1
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	movq	16(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	leaq	(%r15,%rax,8), %rdi
	leaq	(%r8,%rax,8), %rbp
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rbp,%rdx), %rsi
	leaq	(%r9,%rax,8), %rdx
.Ltmp590:
	.loc	3 904 5 discriminator 1 # mg.c:904:5
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_63:                               # %vector.body68
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp591:
	.loc	3 905 25                # mg.c:905:25
	movups	-48(%rdi,%rax,8), %xmm0
	movups	-32(%rdi,%rax,8), %xmm1
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movups	%xmm0, (%rbp,%rax,8)
	movups	%xmm1, 16(%rbp,%rax,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movups	(%rsi,%rax,8), %xmm0
	movups	16(%rsi,%rax,8), %xmm1
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movups	%xmm0, (%rdx,%rax,8)
	movups	%xmm1, 16(%rdx,%rax,8)
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	movups	-16(%rdi,%rax,8), %xmm0
	movups	(%rdi,%rax,8), %xmm1
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movups	%xmm0, 32(%rbp,%rax,8)
	movups	%xmm1, 48(%rbp,%rax,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movups	32(%rsi,%rax,8), %xmm0
	movups	48(%rsi,%rax,8), %xmm1
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movups	%xmm0, 32(%rdx,%rax,8)
	movups	%xmm1, 48(%rdx,%rax,8)
.Ltmp592:
	.loc	3 904 5 is_stmt 1 discriminator 1 # mg.c:904:5
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB3_63
.LBB3_64:                               # %middle.block69
                                        #   in Loop: Header=BB3_42 Depth=1
	movq	16(%rsp), %r13          # 8-byte Reload
	cmpq	%r13, 8(%rsp)           # 8-byte Folded Reload
	jne	.LBB3_43
	jmp	.LBB3_65
.LBB3_57:                               #   in Loop: Header=BB3_42 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB3_43
.LBB3_52:                               #   in Loop: Header=BB3_42 Depth=1
	xorl	%r13d, %r13d
	movq	48(%rsp), %r12          # 8-byte Reload
	jmp	.LBB3_43
.LBB3_55:                               #   in Loop: Header=BB3_42 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_43:                               # %for.body72.us.preheader
                                        #   in Loop: Header=BB3_42 Depth=1
.Ltmp593:
	.loc	3 905 25                # mg.c:905:25
	movl	%r13d, %eax
	orl	$1, %eax
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %ebp
	subl	%eax, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r10d
	subl	%eax, %r10d
	testb	$3, %bpl
	je	.LBB3_47
# BB#44:                                # %for.body72.us.prol.preheader
                                        #   in Loop: Header=BB3_42 Depth=1
	leaq	(%r9,%r13,8), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%r8,%rcx), %rcx
	leaq	(%rcx,%r13,8), %rdx
	leaq	(%r8,%r13,8), %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%r8,%rcx), %rcx
	leaq	(%rcx,%r13,8), %rbx
	andl	$3, %ebp
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_45:                               # %for.body72.us.prol
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdi
	movq	(%rbx,%rdi,8), %rcx
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movq	%rcx, (%rsi,%rdi,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	(%rdx,%rdi,8), %rcx
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movq	%rcx, (%rax,%rdi,8)
.Ltmp594:
	.loc	3 904 5 is_stmt 1 discriminator 1 # mg.c:904:5
	leaq	1(%rdi), %rcx
	cmpl	%ecx, %ebp
	jne	.LBB3_45
# BB#46:                                #   in Loop: Header=BB3_42 Depth=1
	leaq	1(%r13,%rdi), %r13
.LBB3_47:                               # %for.body72.us.preheader.split
                                        #   in Loop: Header=BB3_42 Depth=1
.Ltmp595:
	.loc	3 905 25                # mg.c:905:25
	cmpl	$3, %r10d
	jb	.LBB3_65
# BB#48:                                # %for.body72.us.preheader.split.split
                                        #   in Loop: Header=BB3_42 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	subl	%r13d, %edi
	leaq	(%r9,%r13,8), %rbp
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%r8,%rax), %rax
	leaq	(%rax,%r13,8), %r14
	leaq	(%r8,%r13,8), %r10
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%r8,%rax), %rax
	leaq	(%rax,%r13,8), %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_49:                               # %for.body72.us
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rsi,8), %rax
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movq	%rax, (%r10,%rsi,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	(%r14,%rsi,8), %rax
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movq	%rax, (%rbp,%rsi,8)
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	movq	8(%rcx,%rsi,8), %rax
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movq	%rax, 8(%r10,%rsi,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	8(%r14,%rsi,8), %rax
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movq	%rax, 8(%rbp,%rsi,8)
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	movq	16(%rcx,%rsi,8), %rax
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movq	%rax, 16(%r10,%rsi,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	16(%r14,%rsi,8), %rax
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movq	%rax, 16(%rbp,%rsi,8)
	.loc	3 905 25 is_stmt 1      # mg.c:905:25
	movq	24(%rcx,%rsi,8), %rax
	.loc	3 905 23 is_stmt 0      # mg.c:905:23
	movq	%rax, 24(%r10,%rsi,8)
	.loc	3 906 25 is_stmt 1      # mg.c:906:25
	movq	24(%r14,%rsi,8), %rax
	.loc	3 906 23 is_stmt 0      # mg.c:906:23
	movq	%rax, 24(%rbp,%rsi,8)
.Ltmp596:
	.loc	3 904 5 is_stmt 1 discriminator 1 # mg.c:904:5
	addq	$4, %rsi
	cmpl	%esi, %edi
	jne	.LBB3_49
.Ltmp597:
.LBB3_65:                               # %for.cond70.for.inc100_crit_edge.us
                                        #   in Loop: Header=BB3_42 Depth=1
	.loc	3 903 3 discriminator 1 # mg.c:903:3
	incq	%r11
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r15
	addq	%rax, %r8
	addq	%rax, %r9
	cmpl	%r12d, %r11d
	jne	.LBB3_42
.Ltmp598:
.LBB3_66:                               # %for.end102
	.loc	3 909 7                 # mg.c:909:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB3_67
# BB#68:                                # %if.then104
.Ltmp599:
	.loc	3 909 16 is_stmt 0 discriminator 1 # mg.c:909:16
	movl	$9, %edi
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	timer_stop              # TAILCALL
.Ltmp600:
.LBB3_67:                               # %if.end105
	.loc	3 910 1 is_stmt 1       # mg.c:910:1
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp601:
.Lfunc_end3:
	.size	comm3, .Lfunc_end3-comm3
	.cfi_endproc

	.p2align	4, 0x90
	.type	resid,@function
resid:                                  # @resid
.Lfunc_begin4:
	.loc	3 541 0                 # mg.c:541:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp602:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp603:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp604:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp605:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp606:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp607:
	.cfi_def_cfa_offset 56
	subq	$4392, %rsp             # imm = 0x1128
.Ltmp608:
	.cfi_def_cfa_offset 4448
.Ltmp609:
	.cfi_offset %rbx, -56
.Ltmp610:
	.cfi_offset %r12, -48
.Ltmp611:
	.cfi_offset %r13, -40
.Ltmp612:
	.cfi_offset %r14, -32
.Ltmp613:
	.cfi_offset %r15, -24
.Ltmp614:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: resid:ou <- %RDI
	#DEBUG_VALUE: resid:ov <- %RSI
	#DEBUG_VALUE: resid:or <- %RDX
	#DEBUG_VALUE: resid:n1 <- %ECX
	#DEBUG_VALUE: resid:n2 <- %R8D
	#DEBUG_VALUE: resid:n3 <- %R9D
	movl	%r9d, %ebx
.Ltmp615:
	#DEBUG_VALUE: resid:n3 <- %EBX
	movl	%r8d, %ebp
.Ltmp616:
	#DEBUG_VALUE: resid:n2 <- %EBP
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	%ecx, %r13d
.Ltmp617:
	#DEBUG_VALUE: resid:n1 <- %R13D
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%rdx, %r10
.Ltmp618:
	#DEBUG_VALUE: resid:or <- %R10
	movq	%r10, 200(%rsp)         # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
.Ltmp619:
	#DEBUG_VALUE: resid:ov <- [%RSP+8]
	movq	%rdi, 24(%rsp)          # 8-byte Spill
.Ltmp620:
	#DEBUG_VALUE: resid:ou <- [%RSP+24]
	.loc	3 542 3 prologue_end    # mg.c:542:3
	movl	%ebp, %r14d
	movl	%r13d, %r15d
	.loc	3 549 7                 # mg.c:549:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB4_2
.Ltmp621:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: resid:ou <- [%RSP+24]
	#DEBUG_VALUE: resid:ov <- [%RSP+8]
	#DEBUG_VALUE: resid:or <- %R10
	#DEBUG_VALUE: resid:n1 <- %R13D
	#DEBUG_VALUE: resid:n2 <- %EBP
	#DEBUG_VALUE: resid:n3 <- %EBX
	.loc	3 549 16 is_stmt 0 discriminator 1 # mg.c:549:16
	movl	$4, %edi
	movq	%r10, %r12
	callq	timer_start
.Ltmp622:
	movq	%r12, %r10
.Ltmp623:
.LBB4_2:                                # %for.cond.preheader
	#DEBUG_VALUE: resid:n1 <- %R13D
	#DEBUG_VALUE: resid:n2 <- %EBP
	#DEBUG_VALUE: resid:n3 <- %EBX
	.loc	3 550 23 is_stmt 1 discriminator 1 # mg.c:550:23
	leal	-1(%rbx), %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	.loc	3 550 3 is_stmt 0 discriminator 1 # mg.c:550:3
	cmpl	$2, %ecx
	jl	.LBB4_25
.Ltmp624:
# BB#3:                                 # %for.cond1.preheader.lr.ph
	#DEBUG_VALUE: resid:n3 <- %EBX
	#DEBUG_VALUE: resid:n2 <- %EBP
	#DEBUG_VALUE: resid:n1 <- %R13D
	movq	4448(%rsp), %r9
	#DEBUG_VALUE: resid:a <- %R9
.Ltmp625:
	.loc	3 551 25 is_stmt 1 discriminator 1 # mg.c:551:25
	leal	-1(%rbp), %eax
.Ltmp626:
	.loc	3 558 27 discriminator 1 # mg.c:558:27
	movl	%eax, (%rsp)            # 4-byte Spill
	leal	-1(%r13), %eax
.Ltmp627:
	.loc	3 550 3 discriminator 1 # mg.c:550:3
	movq	%rax, 96(%rsp)          # 8-byte Spill
	incq	%rax
.Ltmp628:
	.loc	3 552 7 discriminator 1 # mg.c:552:7
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	andq	%rax, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
.Ltmp629:
	.loc	3 550 3 discriminator 1 # mg.c:550:3
	addq	$8, 8(%rsp)             # 8-byte Folded Spill
	movq	%r15, 48(%rsp)          # 8-byte Spill
	leaq	(,%r15,8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	8(%r10), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leal	-2(%r13), %r12d
	movq	%r12, 208(%rsp)         # 8-byte Spill
.Ltmp630:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	leaq	(,%r14,8), %rax
.Ltmp631:
	.loc	3 553 26                # mg.c:553:26
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	%r15, %r14
	shlq	$3, %r14
	movq	%r14, 192(%rsp)         # 8-byte Spill
	movl	$1, %r8d
.Ltmp632:
	.p2align	4, 0x90
.LBB4_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #       Child Loop BB4_21 Depth 3
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	cmpl	$1, (%rsp)              # 4-byte Folded Reload
	jle	.LBB4_5
# BB#6:                                 # %for.cond5.preheader.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	.loc	3 554 40                # mg.c:554:40
	leaq	1(%r8), %rsi
.Ltmp633:
	.loc	3 552 7 discriminator 1 # mg.c:552:7
	testl	%r13d, %r13d
	jle	.LBB4_19
# BB#7:                                 # %for.body7.lr.ph.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp634:
	.loc	3 554 22                # mg.c:554:22
	leaq	-1(%r8), %rdi
	movq	192(%rsp), %rax         # 8-byte Reload
	.loc	3 553 26                # mg.c:553:26
	movq	%rax, %rcx
	imulq	%r8, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	imulq	%rdx, %r8
	leaq	16(%r8), %rbp
	movq	48(%rsp), %rcx          # 8-byte Reload
	imulq	%rcx, %rbp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rdx, %rbp
	imulq	%rdi, %rbp
	leaq	8(%rbp), %rbx
	imulq	%rcx, %rbx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	imulq	%rsi, %rdx
	leaq	8(%rdx), %rbx
	imulq	%rcx, %rbx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	imulq	%rax, %rdi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	addq	$16, %rbp
	imulq	%rcx, %rbp
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	imulq	%rsi, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	addq	$16, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	addq	$8, %r8
	imulq	%rcx, %r8
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%r8), %rcx
	addq	$8, %r8
	movq	%r10, %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %ebx
.Ltmp635:
	.p2align	4, 0x90
.LBB4_8:                                # %for.body7.lr.ph.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	movq	%rdi, 224(%rsp)         # 8-byte Spill
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	.loc	3 552 7 discriminator 1 # mg.c:552:7
	cmpq	$1, 80(%rsp)            # 8-byte Folded Reload
	movl	$0, %r15d
	jbe	.LBB4_9
# BB#13:                                # %min.iters.checked
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	$0, %r15d
	leaq	240(%rsp), %rsi
	leaq	2320(%rsp), %rbp
	movq	16(%rsp), %rdx          # 8-byte Reload
	je	.LBB4_9
	.p2align	4, 0x90
.LBB4_14:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp636:
	.loc	3 553 18                # mg.c:553:18
	movq	152(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm0
	.loc	3 553 36 is_stmt 0      # mg.c:553:36
	movq	144(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm1
	.loc	3 553 34                # mg.c:553:34
	addpd	%xmm0, %xmm1
	.loc	3 554 18 is_stmt 1      # mg.c:554:18
	movq	128(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm0
	.loc	3 554 16 is_stmt 0      # mg.c:554:16
	addpd	%xmm1, %xmm0
	.loc	3 554 36                # mg.c:554:36
	movq	112(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm1
	.loc	3 554 34                # mg.c:554:34
	addpd	%xmm0, %xmm1
	.loc	3 553 16 is_stmt 1      # mg.c:553:16
	movapd	%xmm1, (%rbp)
	.loc	3 555 18                # mg.c:555:18
	movq	160(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm0
	.loc	3 555 38 is_stmt 0      # mg.c:555:38
	movq	136(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm1
	.loc	3 555 36                # mg.c:555:36
	addpd	%xmm0, %xmm1
	.loc	3 556 18 is_stmt 1      # mg.c:556:18
	movq	104(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm0
	.loc	3 556 16 is_stmt 0      # mg.c:556:16
	addpd	%xmm1, %xmm0
	.loc	3 556 38                # mg.c:556:38
	movq	120(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rdx), %xmm1
	.loc	3 556 36                # mg.c:556:36
	addpd	%xmm0, %xmm1
	.loc	3 555 16 is_stmt 1      # mg.c:555:16
	movapd	%xmm1, (%rsi)
.Ltmp637:
	.loc	3 552 7 discriminator 1 # mg.c:552:7
	addq	$16, %rdx
	addq	$16, %rbp
	addq	$16, %rsi
	addq	$-2, %rax
	jne	.LBB4_14
# BB#15:                                # %middle.block
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	64(%rsp), %r15          # 8-byte Reload
	cmpq	%r15, 80(%rsp)          # 8-byte Folded Reload
	je	.LBB4_16
	.p2align	4, 0x90
.LBB4_9:                                # %for.body7.us.preheader
                                        #   in Loop: Header=BB4_8 Depth=2
.Ltmp638:
	.loc	3 553 18                # mg.c:553:18
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	16(%rsp), %r11          # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %r10
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %r13
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %rbp
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %rbx
	leaq	2320(%rsp,%r15,8), %rdx
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %rdi
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %rcx
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %rax
	leaq	(%rax,%r15,8), %rax
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	(%r11,%rsi), %rsi
	leaq	(%rsi,%r15,8), %r11
	leaq	240(%rsp,%r15,8), %r12
	movq	72(%rsp), %r14          # 8-byte Reload
	subl	%r15d, %r14d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_10:                               # %for.body7.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%r10,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	.loc	3 553 34 is_stmt 0      # mg.c:553:34
	addsd	(%r13,%rsi,8), %xmm0
	.loc	3 554 16 is_stmt 1      # mg.c:554:16
	addsd	(%rbp,%rsi,8), %xmm0
	.loc	3 554 34 is_stmt 0      # mg.c:554:34
	addsd	(%rbx,%rsi,8), %xmm0
	.loc	3 553 16 is_stmt 1      # mg.c:553:16
	movsd	%xmm0, (%rdx,%rsi,8)
	.loc	3 555 18                # mg.c:555:18
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	.loc	3 555 36 is_stmt 0      # mg.c:555:36
	addsd	(%rcx,%rsi,8), %xmm0
	.loc	3 556 16 is_stmt 1      # mg.c:556:16
	addsd	(%rax,%rsi,8), %xmm0
	.loc	3 556 36 is_stmt 0      # mg.c:556:36
	addsd	(%r11,%rsi,8), %xmm0
	.loc	3 555 16 is_stmt 1      # mg.c:555:16
	movsd	%xmm0, (%r12,%rsi,8)
.Ltmp639:
	.loc	3 552 7 discriminator 1 # mg.c:552:7
	incq	%rsi
	cmpl	%esi, %r14d
	jne	.LBB4_10
.Ltmp640:
.LBB4_16:                               # %for.cond5.for.cond75.preheader_crit_edge.us
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	216(%rsp), %rbx         # 8-byte Reload
	.loc	3 551 5 discriminator 1 # mg.c:551:5
	incq	%rbx
.Ltmp641:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movq	208(%rsp), %r12         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	jl	.LBB4_11
# BB#17:                                # %for.body78.lr.ph.us
                                        #   in Loop: Header=BB4_8 Depth=2
.Ltmp642:
	.loc	3 567 34                # mg.c:567:34
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp643:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %rax
.Ltmp644:
	.loc	3 567 34                # mg.c:567:34
	movq	%rdi, %rsi
	movq	%rcx, %rbp
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB4_18:                               # %for.body78.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 559 25                # mg.c:559:25
	movsd	(%rbp), %xmm1           # xmm1 = mem[0],zero
	.loc	3 560 25                # mg.c:560:25
	movsd	(%r9), %xmm2            # xmm2 = mem[0],zero
	.loc	3 560 30 is_stmt 0      # mg.c:560:30
	mulsd	(%rax,%r10,8), %xmm2
	.loc	3 560 23                # mg.c:560:23
	subsd	%xmm2, %xmm1
	.loc	3 567 41 is_stmt 1      # mg.c:567:41
	addsd	2320(%rsp,%r10,8), %xmm0
	.loc	3 567 52 is_stmt 0      # mg.c:567:52
	addsd	2336(%rsp,%r10,8), %xmm0
	.loc	3 567 30                # mg.c:567:30
	mulsd	16(%r9), %xmm0
	.loc	3 567 23                # mg.c:567:23
	subsd	%xmm0, %xmm1
	.loc	3 568 45 is_stmt 1      # mg.c:568:45
	movsd	256(%rsp,%r10,8), %xmm0 # xmm0 = mem[0],zero
	movsd	240(%rsp,%r10,8), %xmm2 # xmm2 = mem[0],zero
	.loc	3 568 43 is_stmt 0      # mg.c:568:43
	addsd	%xmm0, %xmm2
	.loc	3 568 30                # mg.c:568:30
	mulsd	24(%r9), %xmm2
	.loc	3 568 23                # mg.c:568:23
	subsd	%xmm2, %xmm1
	.loc	3 559 23 is_stmt 1      # mg.c:559:23
	movsd	%xmm1, (%r8,%rsi)
.Ltmp645:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	incq	%r10
	addq	$8, %rbp
	addq	$8, %rsi
	cmpl	%r10d, %r12d
	jne	.LBB4_18
.Ltmp646:
.LBB4_11:                               # %for.inc125.us
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	.loc	3 551 5 discriminator 1 # mg.c:551:5
	addq	%rax, 16(%rsp)          # 8-byte Folded Spill
	addq	%rax, %rcx
	addq	%rax, %rdi
	cmpl	(%rsp), %ebx            # 4-byte Folded Reload
	jne	.LBB4_8
.Ltmp647:
# BB#12:                                #   in Loop: Header=BB4_4 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	200(%rsp), %r10         # 8-byte Reload
	movl	4(%rsp), %ecx           # 4-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_5:                                # %for.cond1.preheader.for.inc128_crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	.loc	3 550 3 discriminator 1 # mg.c:550:3
	incq	%r8
	jmp	.LBB4_24
.LBB4_19:                               # %for.cond75.preheader.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
.Ltmp648:
	.loc	3 567 34                # mg.c:567:34
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp649:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	imulq	40(%rsp), %r8           # 8-byte Folded Reload
	addq	$8, %r8
	imulq	48(%rsp), %r8           # 8-byte Folded Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	184(%rsp), %r11         # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB4_20:                               # %for.cond75.preheader
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_21 Depth 3
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
.Ltmp650:
	.loc	3 567 34                # mg.c:567:34
	movl	%r12d, %ebp
.Ltmp651:
	.loc	3 550 3 discriminator 1 # mg.c:550:3
	leaq	256(%rsp), %rbx
	leaq	2336(%rsp), %rax
.Ltmp652:
	.loc	3 567 34                # mg.c:567:34
	movq	%rcx, %rdx
	movq	%r11, %rdi
	movq	%r15, %rsi
	movapd	%xmm0, %xmm1
	jl	.LBB4_22
	.p2align	4, 0x90
.LBB4_21:                               # %for.body78
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 559 25                # mg.c:559:25
	movsd	(%r8,%rsi), %xmm2       # xmm2 = mem[0],zero
	.loc	3 560 25                # mg.c:560:25
	movsd	(%r9), %xmm3            # xmm3 = mem[0],zero
	.loc	3 560 30 is_stmt 0      # mg.c:560:30
	mulsd	(%r8,%rdi), %xmm3
	.loc	3 560 23                # mg.c:560:23
	subsd	%xmm3, %xmm2
	.loc	3 567 41 is_stmt 1      # mg.c:567:41
	addsd	-16(%rax), %xmm1
	.loc	3 567 52 is_stmt 0      # mg.c:567:52
	addsd	(%rax), %xmm1
	.loc	3 567 30                # mg.c:567:30
	mulsd	16(%r9), %xmm1
	.loc	3 567 23                # mg.c:567:23
	subsd	%xmm1, %xmm2
	.loc	3 568 45 is_stmt 1      # mg.c:568:45
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	-16(%rbx), %xmm3        # xmm3 = mem[0],zero
	.loc	3 568 43 is_stmt 0      # mg.c:568:43
	addsd	%xmm1, %xmm3
	.loc	3 568 30                # mg.c:568:30
	mulsd	24(%r9), %xmm3
	.loc	3 568 23                # mg.c:568:23
	subsd	%xmm3, %xmm2
	.loc	3 559 23 is_stmt 1      # mg.c:559:23
	movsd	%xmm2, (%r8,%rdx)
.Ltmp653:
	.loc	3 558 7 discriminator 1 # mg.c:558:7
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %rdx
	addq	$8, %rax
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB4_21
.Ltmp654:
.LBB4_22:                               # %for.inc125
                                        #   in Loop: Header=BB4_20 Depth=2
	.loc	3 551 5 discriminator 1 # mg.c:551:5
	incq	%r14
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r15
	addq	%rax, %r11
	addq	%rax, %rcx
	cmpl	(%rsp), %r14d           # 4-byte Folded Reload
	jne	.LBB4_20
.Ltmp655:
# BB#23:                                #   in Loop: Header=BB4_4 Depth=1
	movl	4(%rsp), %ecx           # 4-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	.p2align	4, 0x90
.LBB4_24:                               # %for.inc128
                                        #   in Loop: Header=BB4_4 Depth=1
	.loc	3 550 3 discriminator 1 # mg.c:550:3
	cmpl	%ecx, %r8d
	jne	.LBB4_4
.Ltmp656:
.LBB4_25:                               # %for.end130
	.loc	3 572 7                 # mg.c:572:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB4_27
# BB#26:                                # %if.then132
.Ltmp657:
	.loc	3 572 16 is_stmt 0 discriminator 1 # mg.c:572:16
	movl	$4, %edi
	movq	%r10, %rbx
	callq	timer_stop
	movq	%rbx, %r10
.Ltmp658:
.LBB4_27:                               # %if.end133
	movl	4456(%rsp), %r14d
	#DEBUG_VALUE: resid:k <- %R14D
	.loc	3 577 3 is_stmt 1       # mg.c:577:3
	movq	%r10, %rdi
	movl	%r13d, %esi
	movl	%ebp, %edx
	movq	168(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %ecx
	movq	%r10, %r15
	callq	comm3
	.loc	3 579 7                 # mg.c:579:7
	cmpl	$0, debug_vec(%rip)
	jle	.LBB4_29
.Ltmp659:
# BB#28:                                # %if.then135
	#DEBUG_VALUE: resid:k <- %R14D
	.loc	3 580 5                 # mg.c:580:5
	movl	$.L.str.54, %r8d
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	movl	%r14d, %r9d
	callq	rep_nrm
.Ltmp660:
.LBB4_29:                               # %if.end136
	#DEBUG_VALUE: resid:k <- %R14D
	movq	%r15, %rdi
	movq	%rbx, %rcx
.Ltmp661:
	.loc	3 583 20                # mg.c:583:20
	cmpl	%r14d, debug_vec+8(%rip)
	jl	.LBB4_31
.Ltmp662:
# BB#30:                                # %if.then138
	#DEBUG_VALUE: resid:k <- %R14D
	.loc	3 584 5                 # mg.c:584:5
	movl	%r13d, %esi
	movl	%ebp, %edx
	callq	showall
.Ltmp663:
.LBB4_31:                               # %if.end139
	#DEBUG_VALUE: resid:k <- %R14D
	.loc	3 586 1                 # mg.c:586:1
	addq	$4392, %rsp             # imm = 0x1128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
.Ltmp664:
	popq	%r15
	popq	%rbp
	retq
.Ltmp665:
.Lfunc_end4:
	.size	resid, .Lfunc_end4-resid
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI5_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.p2align	4, 0x90
	.type	rep_nrm,@function
rep_nrm:                                # @rep_nrm
.Lfunc_begin5:
	.loc	3 871 0                 # mg.c:871:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp666:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp667:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp668:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp669:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp670:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp671:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp672:
	.cfi_def_cfa_offset 112
.Ltmp673:
	.cfi_offset %rbx, -56
.Ltmp674:
	.cfi_offset %r12, -48
.Ltmp675:
	.cfi_offset %r13, -40
.Ltmp676:
	.cfi_offset %r14, -32
.Ltmp677:
	.cfi_offset %r15, -24
.Ltmp678:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: rep_nrm:u <- %RDI
	#DEBUG_VALUE: rep_nrm:n1 <- %ESI
	#DEBUG_VALUE: rep_nrm:n2 <- %EDX
	#DEBUG_VALUE: rep_nrm:n3 <- %ECX
	#DEBUG_VALUE: rep_nrm:title <- %R8
	#DEBUG_VALUE: rep_nrm:kk <- %R9D
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
.Ltmp679:
	#DEBUG_VALUE: rep_nrm:title <- [%RSP+48]
	movl	%ecx, %r12d
.Ltmp680:
	#DEBUG_VALUE: rep_nrm:n3 <- %R12D
	movl	%edx, %ebx
.Ltmp681:
	#DEBUG_VALUE: rep_nrm:n2 <- %EBX
	movl	%esi, %ebp
.Ltmp682:
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	movq	%rdi, (%rsp)            # 8-byte Spill
.Ltmp683:
	#DEBUG_VALUE: norm2u3:n2 <- %EBX
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: rep_nrm:u <- [%RSP+0]
	.loc	3 874 40 prologue_end   # mg.c:874:40
	movslq	%r9d, %rax
.Ltmp684:
	#DEBUG_VALUE: rep_nrm:kk <- [%RSP+12]
	movl	nx(,%rax,4), %r13d
.Ltmp685:
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	.loc	3 874 48 is_stmt 0      # mg.c:874:48
	movl	ny(,%rax,4), %r14d
.Ltmp686:
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	.loc	3 874 56                # mg.c:874:56
	movl	nz(,%rax,4), %ecx
.Ltmp687:
	#DEBUG_VALUE: norm2u3:nz <- %ECX
	.loc	3 840 3 is_stmt 1       # mg.c:840:3
	movl	%ebx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ebp, %r15d
	.loc	3 847 7                 # mg.c:847:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB5_2
.Ltmp688:
# BB#1:                                 # %if.then.i
	#DEBUG_VALUE: norm2u3:nz <- %ECX
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: rep_nrm:kk <- [%RSP+12]
	#DEBUG_VALUE: rep_nrm:u <- [%RSP+0]
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	#DEBUG_VALUE: rep_nrm:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n3 <- %R12D
	#DEBUG_VALUE: rep_nrm:title <- [%RSP+48]
	.loc	3 847 16 is_stmt 0 discriminator 1 # mg.c:847:16
	movl	$8, %edi
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	callq	timer_start
.Ltmp689:
	movl	40(%rsp), %ecx          # 4-byte Reload
.Ltmp690:
.LBB5_2:                                # %if.end.i
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	#DEBUG_VALUE: rep_nrm:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n3 <- %R12D
	.loc	3 848 12 is_stmt 1      # mg.c:848:12
	cvtsi2sdl	%r13d, %xmm0
	.loc	3 848 15 is_stmt 0      # mg.c:848:15
	cvtsi2sdl	%r14d, %xmm2
	.loc	3 848 14                # mg.c:848:14
	mulsd	%xmm0, %xmm2
	.loc	3 848 18                # mg.c:848:18
	cvtsi2sdl	%ecx, %xmm8
	.loc	3 848 17                # mg.c:848:17
	mulsd	%xmm2, %xmm8
.Ltmp691:
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	#DEBUG_VALUE: norm2u3:i3 <- 1
	#DEBUG_VALUE: norm2u3:s <- 0.000000e+00
	.loc	3 852 23 is_stmt 1 discriminator 1 # mg.c:852:23
	decl	%r12d
.Ltmp692:
	xorpd	%xmm1, %xmm1
	.loc	3 852 3 is_stmt 0 discriminator 1 # mg.c:852:3
	cmpl	$2, %r12d
	jl	.LBB5_3
.Ltmp693:
# BB#4:                                 # %for.cond6.preheader.lr.ph.i
	#DEBUG_VALUE: rep_nrm:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBX
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	.loc	3 853 25 is_stmt 1 discriminator 1 # mg.c:853:25
	decl	%ebx
.Ltmp694:
	.loc	3 853 5 is_stmt 0 discriminator 1 # mg.c:853:5
	cmpl	$2, %ebx
	jl	.LBB5_5
.Ltmp695:
# BB#6:                                 # %for.cond6.preheader.lr.ph.i
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	.loc	3 854 27 is_stmt 1 discriminator 1 # mg.c:854:27
	leal	-1(%rbp), %r14d
.Ltmp696:
	cmpl	$2, %r14d
.Ltmp697:
	.loc	3 874 3                 # mg.c:874:3
	xorpd	%xmm0, %xmm0
	jl	.LBB5_17
.Ltmp698:
# BB#7:                                 # %for.cond11.preheader.lr.ph.us.i.us.preheader
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	movl	%ebp, %ecx
	andl	$1, %ecx
	movq	16(%rsp), %rsi          # 8-byte Reload
.Ltmp699:
	.loc	3 855 21                # mg.c:855:21
	leaq	8(,%rsi,8), %rax
	imulq	%r15, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	imulq	%r15, %rax
	movq	(%rsp), %rdx            # 8-byte Reload
	leaq	8(%rax,%rdx), %r9
	leaq	(,%rsi,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	(,%r15,8), %rdi
	xorpd	%xmm1, %xmm1
	movl	$1, %r10d
	.loc	3 856 13                # mg.c:856:13
	movapd	.LCPI5_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	movapd	.LCPI5_0(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
.Ltmp700:
	.loc	3 874 3                 # mg.c:874:3
	xorpd	%xmm4, %xmm4
	xorpd	%xmm0, %xmm0
.Ltmp701:
	.p2align	4, 0x90
.LBB5_8:                                # %for.cond11.preheader.lr.ph.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #       Child Loop BB5_14 Depth 3
	.loc	3 855 21                # mg.c:855:21
	movq	16(%rsp), %rax          # 8-byte Reload
	imulq	%r10, %rax
	movq	(%rsp), %rdx            # 8-byte Reload
	leaq	(%rdx,%rax,8), %rdx
	movq	%r9, %r8
.Ltmp702:
	.loc	3 874 3                 # mg.c:874:3
	movl	$1, %eax
	.p2align	4, 0x90
.LBB5_9:                                # %for.body15.lr.ph.us.us.i.us
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_14 Depth 3
	testl	%ecx, %ecx
	jne	.LBB5_11
# BB#10:                                #   in Loop: Header=BB5_9 Depth=2
	movapd	%xmm1, %xmm6
	movapd	%xmm4, %xmm5
	movl	$1, %r13d
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %for.body15.us.us.i.us.prol
                                        #   in Loop: Header=BB5_9 Depth=2
.Ltmp703:
	.loc	3 855 21                # mg.c:855:21
	movq	%rax, %rsi
	imulq	%r15, %rsi
	movsd	8(%rdx,%rsi,8), %xmm5   # xmm5 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	movapd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm6
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm6, %xmm0
.Ltmp704:
	#DEBUG_VALUE: norm2u3:s <- %XMM0
	.loc	3 856 13 is_stmt 1      # mg.c:856:13
	andpd	%xmm3, %xmm5
.Ltmp705:
	#DEBUG_VALUE: norm2u3:a <- undef
	.loc	3 857 13                # mg.c:857:13
	movapd	%xmm4, %xmm6
	cmpltsd	%xmm5, %xmm6
	movapd	%xmm6, %xmm7
	andpd	%xmm5, %xmm7
	andnpd	%xmm1, %xmm6
	orpd	%xmm7, %xmm6
	maxsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	movapd	%xmm6, %xmm1
	movl	$2, %r13d
.Ltmp706:
.LBB5_12:                               # %for.body15.lr.ph.us.us.i.us.split
                                        #   in Loop: Header=BB5_9 Depth=2
	cmpl	$3, %ebp
	je	.LBB5_15
# BB#13:                                # %for.body15.lr.ph.us.us.i.us.split.split
                                        #   in Loop: Header=BB5_9 Depth=2
.Ltmp707:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	movl	%r14d, %r11d
	subl	%r13d, %r11d
	movq	%r8, %rsi
	movapd	%xmm6, %xmm1
.Ltmp708:
	.loc	3 857 17                # mg.c:857:17
	movapd	%xmm5, %xmm4
.Ltmp709:
	.p2align	4, 0x90
.LBB5_14:                               # %for.body15.us.us.i.us
                                        #   Parent Loop BB5_8 Depth=1
                                        #     Parent Loop BB5_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 855 21                # mg.c:855:21
	movsd	-8(%rsi,%r13,8), %xmm5  # xmm5 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	movapd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm6
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm0, %xmm6
.Ltmp710:
	#DEBUG_VALUE: norm2u3:s <- %XMM6
	.loc	3 856 13 is_stmt 1      # mg.c:856:13
	andpd	%xmm2, %xmm5
	#DEBUG_VALUE: norm2u3:a <- undef
	.loc	3 857 13                # mg.c:857:13
	movapd	%xmm4, %xmm7
	cmpltsd	%xmm5, %xmm7
	movapd	%xmm7, %xmm0
	andpd	%xmm5, %xmm0
	andnpd	%xmm1, %xmm7
	orpd	%xmm0, %xmm7
	maxsd	%xmm4, %xmm5
	.loc	3 855 21                # mg.c:855:21
	movsd	(%rsi,%r13,8), %xmm4    # xmm4 = mem[0],zero
	.loc	3 855 17 is_stmt 0      # mg.c:855:17
	movapd	%xmm4, %xmm0
	mulsd	%xmm0, %xmm0
	.loc	3 855 15                # mg.c:855:15
	addsd	%xmm6, %xmm0
	.loc	3 856 13 is_stmt 1      # mg.c:856:13
	andpd	%xmm2, %xmm4
	.loc	3 857 13                # mg.c:857:13
	movapd	%xmm5, %xmm1
	cmpltsd	%xmm4, %xmm1
	movapd	%xmm1, %xmm6
.Ltmp711:
	andnpd	%xmm7, %xmm6
	andpd	%xmm4, %xmm1
	orpd	%xmm6, %xmm1
	maxsd	%xmm5, %xmm4
.Ltmp712:
	.loc	3 854 7 discriminator 1 # mg.c:854:7
	addq	$16, %rsi
	addl	$-2, %r11d
	jne	.LBB5_14
.Ltmp713:
.LBB5_15:                               # %for.cond11.for.inc31_crit_edge.us.us.i.us
                                        #   in Loop: Header=BB5_9 Depth=2
	.loc	3 853 5 discriminator 1 # mg.c:853:5
	incq	%rax
	addq	%rdi, %r8
	cmpl	%ebx, %eax
	jne	.LBB5_9
.Ltmp714:
# BB#16:                                # %for.cond6.for.inc34_crit_edge.us.i.loopexit.us
                                        #   in Loop: Header=BB5_8 Depth=1
	.loc	3 852 3 discriminator 1 # mg.c:852:3
	incq	%r10
	addq	40(%rsp), %r9           # 8-byte Folded Reload
	cmpl	%r12d, %r10d
	jne	.LBB5_8
	jmp	.LBB5_17
.Ltmp715:
.LBB5_3:
	#DEBUG_VALUE: rep_nrm:n2 <- %EBX
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:n2 <- %EBX
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	.loc	3 874 3                 # mg.c:874:3
	xorpd	%xmm0, %xmm0
	jmp	.LBB5_17
.Ltmp716:
.LBB5_5:
	#DEBUG_VALUE: norm2u3:dn <- %XMM8
	#DEBUG_VALUE: norm2u3:ny <- %R14D
	#DEBUG_VALUE: norm2u3:nx <- %R13D
	#DEBUG_VALUE: norm2u3:n1 <- %EBP
	#DEBUG_VALUE: rep_nrm:n1 <- %EBP
	xorpd	%xmm0, %xmm0
.Ltmp717:
.LBB5_17:                               # %for.end36.i
	.loc	3 862 18                # mg.c:862:18
	divsd	%xmm8, %xmm0
	.loc	3 862 11 is_stmt 0      # mg.c:862:11
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm0, %xmm2
.Ltmp718:
	.loc	3 874 3 is_stmt 1       # mg.c:874:3
	ucomisd	%xmm2, %xmm2
	jnp	.LBB5_19
# BB#18:                                # %call.sqrt
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	callq	sqrt
	movapd	16(%rsp), %xmm1         # 16-byte Reload
	movapd	%xmm0, %xmm2
.LBB5_19:                               # %for.end36.i.split
.Ltmp719:
	.loc	3 863 7                 # mg.c:863:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB5_21
# BB#20:                                # %if.then39.i
.Ltmp720:
	.loc	3 863 16 is_stmt 0 discriminator 1 # mg.c:863:16
	movl	$8, %edi
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	callq	timer_stop
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	16(%rsp), %xmm1         # 16-byte Reload
.Ltmp721:
.LBB5_21:                               # %norm2u3.exit
	#DEBUG_VALUE: rep_nrm:rnm2 <- %XMM2
	#DEBUG_VALUE: rep_nrm:rnmu <- %XMM1
	.loc	3 875 3 is_stmt 1       # mg.c:875:3
	movl	$.L.str.47, %edi
	movb	$2, %al
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movapd	%xmm2, %xmm0
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	printf                  # TAILCALL
.Ltmp722:
.Lfunc_end5:
	.size	rep_nrm, .Lfunc_end5-rep_nrm
	.cfi_endproc

	.p2align	4, 0x90
	.type	showall,@function
showall:                                # @showall
.Lfunc_begin6:
	.loc	3 1109 0                # mg.c:1109:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp723:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp724:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp725:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp726:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp727:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp728:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp729:
	.cfi_def_cfa_offset 112
.Ltmp730:
	.cfi_offset %rbx, -56
.Ltmp731:
	.cfi_offset %r12, -48
.Ltmp732:
	.cfi_offset %r13, -40
.Ltmp733:
	.cfi_offset %r14, -32
.Ltmp734:
	.cfi_offset %r15, -24
.Ltmp735:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: showall:oz <- %RDI
	#DEBUG_VALUE: showall:n1 <- %ESI
	#DEBUG_VALUE: showall:n2 <- %EDX
	#DEBUG_VALUE: showall:n3 <- %ECX
	movl	%edx, %ebx
.Ltmp736:
	#DEBUG_VALUE: showall:n2 <- %EBX
	movq	%rdi, %r13
.Ltmp737:
	#DEBUG_VALUE: showall:oz <- %R13
	.loc	3 1110 3 prologue_end   # mg.c:1110:3
	movl	%esi, %ebp
	.loc	3 1115 8                # mg.c:1115:8
	cmpl	$19, %esi
	movl	$18, %r15d
	cmovgel	%r15d, %esi
.Ltmp738:
	#DEBUG_VALUE: showall:m1 <- %ESI
	movl	%esi, %r14d
.Ltmp739:
	#DEBUG_VALUE: showall:m1 <- %R14D
	.loc	3 1116 8                # mg.c:1116:8
	cmpl	$15, %ebx
	movl	$14, %eax
	cmovll	%ebx, %eax
.Ltmp740:
	#DEBUG_VALUE: showall:m2 <- %EAX
	movl	%eax, 8(%rsp)           # 4-byte Spill
.Ltmp741:
	#DEBUG_VALUE: showall:m2 <- [%RSP+8]
	.loc	3 1117 8                # mg.c:1117:8
	cmpl	$19, %ecx
	cmovll	%ecx, %r15d
.Ltmp742:
	#DEBUG_VALUE: showall:m3 <- %R15D
	.loc	3 1119 3                # mg.c:1119:3
	movl	$.Lstr.66, %edi
	callq	puts
.Ltmp743:
	#DEBUG_VALUE: showall:i3 <- 0
	.loc	3 1120 3 discriminator 1 # mg.c:1120:3
	testl	%r15d, %r15d
	jle	.LBB6_4
.Ltmp744:
# BB#1:                                 # %for.cond12.preheader.lr.ph
	#DEBUG_VALUE: showall:m3 <- %R15D
	#DEBUG_VALUE: showall:m1 <- %R14D
	#DEBUG_VALUE: showall:oz <- %R13
	#DEBUG_VALUE: showall:n2 <- %EBX
	#DEBUG_VALUE: showall:n3 <- %ECX
	.loc	3 1110 3                # mg.c:1110:3
	movl	%ebx, %eax
.Ltmp745:
	.loc	3 1121 5 discriminator 1 # mg.c:1121:5
	testl	%r14d, %r14d
	jle	.LBB6_2
.Ltmp746:
# BB#5:                                 # %for.cond15.preheader.lr.ph.us.preheader
	#DEBUG_VALUE: showall:n3 <- %ECX
	#DEBUG_VALUE: showall:n2 <- %EBX
	#DEBUG_VALUE: showall:oz <- %R13
	#DEBUG_VALUE: showall:m1 <- %R14D
	#DEBUG_VALUE: showall:m3 <- %R15D
	.loc	3 1123 25               # mg.c:1123:25
	movslq	8(%rsp), %rbx           # 4-byte Folded Reload
.Ltmp747:
	movslq	%r14d, %rcx
.Ltmp748:
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	movslq	%r15d, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	imulq	%rbp, %rax
	shlq	$3, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	shlq	$3, %rbp
	xorl	%ecx, %ecx
.Ltmp749:
	.p2align	4, 0x90
.LBB6_6:                                # %for.cond15.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_11 Depth 3
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	movl	$0, %r14d
	movl	$0, %r15d
	jle	.LBB6_7
	.p2align	4, 0x90
.LBB6_10:                               # %for.body17.lr.ph.us.us
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
	movq	%r13, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB6_11:                               # %for.body17.us.us
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	.loc	3 1123 9 is_stmt 0      # mg.c:1123:9
	movl	$.L.str.49, %edi
	movb	$1, %al
	callq	printf
.Ltmp750:
	.loc	3 1122 7 is_stmt 1 discriminator 1 # mg.c:1122:7
	incq	%r12
	.loc	3 1122 23 is_stmt 0 discriminator 1 # mg.c:1122:23
	addq	%rbp, %r14
	cmpq	%rbx, %r12
	jl	.LBB6_11
.Ltmp751:
# BB#9:                                 # %for.cond15.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB6_10 Depth=2
	.loc	3 1125 7 is_stmt 1      # mg.c:1125:7
	movl	$10, %edi
	callq	putchar
.Ltmp752:
	.loc	3 1121 5 discriminator 1 # mg.c:1121:5
	incq	%r15
	addq	$8, %r13
	.loc	3 1121 21 is_stmt 0 discriminator 1 # mg.c:1121:21
	cmpq	48(%rsp), %r15          # 8-byte Folded Reload
	jl	.LBB6_10
	jmp	.LBB6_8
	.p2align	4, 0x90
.LBB6_7:                                # %for.cond15.preheader.us72
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp753:
	.loc	3 1125 7 is_stmt 1      # mg.c:1125:7
	movl	$10, %edi
	callq	putchar
.Ltmp754:
	.loc	3 1121 29 discriminator 2 # mg.c:1121:29
	incl	%r14d
.Ltmp755:
	#DEBUG_VALUE: showall:i1 <- %R14D
	.loc	3 1121 21 is_stmt 0 discriminator 1 # mg.c:1121:21
	cmpl	12(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB6_7
.Ltmp756:
.LBB6_8:                                # %for.cond12.for.end26_crit_edge.us
                                        #   in Loop: Header=BB6_6 Depth=1
	.loc	3 1127 5 is_stmt 1      # mg.c:1127:5
	movl	$.Lstr.67, %edi
	callq	puts
	movq	32(%rsp), %rcx          # 8-byte Reload
.Ltmp757:
	.loc	3 1120 3 discriminator 1 # mg.c:1120:3
	incq	%rcx
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r13
	.loc	3 1120 19 is_stmt 0 discriminator 1 # mg.c:1120:19
	cmpq	16(%rsp), %rcx          # 8-byte Folded Reload
	jl	.LBB6_6
	jmp	.LBB6_4
.LBB6_2:
.Ltmp758:
	#DEBUG_VALUE: showall:n3 <- %ECX
	#DEBUG_VALUE: showall:n2 <- %EBX
	#DEBUG_VALUE: showall:oz <- %R13
	#DEBUG_VALUE: showall:m1 <- %R14D
	#DEBUG_VALUE: showall:m3 <- %R15D
	xorl	%ebx, %ebx
.Ltmp759:
	.p2align	4, 0x90
.LBB6_3:                                # %for.end26
                                        # =>This Inner Loop Header: Depth=1
	.loc	3 1127 5 is_stmt 1      # mg.c:1127:5
	movl	$.Lstr.67, %edi
	callq	puts
.Ltmp760:
	.loc	3 1120 27 discriminator 2 # mg.c:1120:27
	incl	%ebx
.Ltmp761:
	#DEBUG_VALUE: showall:i3 <- %EBX
	.loc	3 1120 19 is_stmt 0 discriminator 1 # mg.c:1120:19
	cmpl	%r15d, %ebx
	.loc	3 1120 3 discriminator 1 # mg.c:1120:3
	jl	.LBB6_3
.Ltmp762:
.LBB6_4:                                # %for.end30
	.loc	3 1129 3 is_stmt 1      # mg.c:1129:3
	movl	$.Lstr.66, %edi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	puts                    # TAILCALL
.Ltmp763:
.Lfunc_end6:
	.size	showall, .Lfunc_end6-showall
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4598175219545276416     # double 0.25
.LCPI7_2:
	.quad	4593671619917905920     # double 0.125
.LCPI7_3:
	.quad	4589168020290535424     # double 0.0625
	.text
	.p2align	4, 0x90
	.type	mg3P,@function
mg3P:                                   # @mg3P
.Lfunc_begin7:
	.loc	3 418 0                 # mg.c:418:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp764:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp765:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp766:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp767:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp768:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp769:
	.cfi_def_cfa_offset 56
	subq	$4408, %rsp             # imm = 0x1138
.Ltmp770:
	.cfi_def_cfa_offset 4464
.Ltmp771:
	.cfi_offset %rbx, -56
.Ltmp772:
	.cfi_offset %r12, -48
.Ltmp773:
	.cfi_offset %r13, -40
.Ltmp774:
	.cfi_offset %r14, -32
.Ltmp775:
	.cfi_offset %r15, -24
.Ltmp776:
	.cfi_offset %rbp, -16
	movl	%r8d, 204(%rsp)         # 4-byte Spill
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	movq	%rdi, 208(%rsp)         # 8-byte Spill
.Ltmp777:
	.loc	3 425 3 prologue_end discriminator 1 # mg.c:425:3
	movslq	lt(%rip), %rbx
	.loc	3 425 23 is_stmt 0 discriminator 1 # mg.c:425:23
	movzbl	lb(%rip), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	incl	%ecx
	.loc	3 425 18 discriminator 1 # mg.c:425:18
	cmpl	%ecx, %ebx
	jl	.LBB7_22
# BB#1:                                 # %for.body.lr.ph
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm7   # xmm7 = mem[0],zero
	.p2align	4, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_11 Depth 3
                                        #         Child Loop BB7_12 Depth 4
                                        #       Child Loop BB7_47 Depth 3
                                        #         Child Loop BB7_48 Depth 4
                                        #         Child Loop BB7_51 Depth 4
.Ltmp778:
	.loc	3 427 12 is_stmt 1      # mg.c:427:12
	movslq	ir(,%rbx,4), %r15
	.loc	3 427 36 is_stmt 0      # mg.c:427:36
	movl	m3(,%rbx,4), %edx
.Ltmp779:
	#DEBUG_VALUE: rprj3:m3k <- %EDX
	.loc	3 428 12 is_stmt 1      # mg.c:428:12
	movslq	ir-4(,%rbx,4), %rax
	.loc	3 428 36 is_stmt 0      # mg.c:428:36
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movl	m3-4(,%rbx,4), %r13d
.Ltmp780:
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	.loc	3 601 3 is_stmt 1       # mg.c:601:3
	movl	m2(,%rbx,4), %ecx
	movl	m1(,%rbx,4), %r14d
	.loc	3 602 3                 # mg.c:602:3
	movl	m2-4(,%rbx,4), %r12d
	movl	m1-4(,%rbx,4), %ebp
	.loc	3 608 7                 # mg.c:608:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB7_4
.Ltmp781:
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	#DEBUG_VALUE: rprj3:m3k <- %EDX
	.loc	3 608 16 is_stmt 0 discriminator 1 # mg.c:608:16
	movl	$6, %edi
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	%edx, 64(%rsp)          # 4-byte Spill
	callq	timer_start
	movl	64(%rsp), %edx          # 4-byte Reload
.Ltmp782:
	movq	112(%rsp), %rcx         # 8-byte Reload
	movsd	.LCPI7_3(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
.Ltmp783:
.LBB7_4:                                # %if.end.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movq	%r12, 224(%rsp)         # 8-byte Spill
	movq	%rbx, 248(%rsp)         # 8-byte Spill
.Ltmp784:
	.loc	3 609 11 is_stmt 1      # mg.c:609:11
	cmpl	$3, %r14d
	sete	%al
.Ltmp785:
	.loc	3 615 11                # mg.c:615:11
	cmpl	$3, %ecx
	sete	%cl
.Ltmp786:
	#DEBUG_VALUE: rprj3:d2 <- 1
	movl	$2, 172(%rsp)           # 4-byte Folded Spill
.Ltmp787:
	.loc	3 621 11                # mg.c:621:11
	cmpl	$3, %edx
	movq	%r14, %r11
	movq	%r11, 104(%rsp)         # 8-byte Spill
	je	.LBB7_6
.Ltmp788:
# BB#5:                                 # %select.false
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	movl	$1, 172(%rsp)           # 4-byte Folded Spill
.Ltmp789:
.LBB7_6:                                # %select.end
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	#DEBUG_VALUE: rprj3:j3 <- 1
	.loc	3 627 24 discriminator 1 # mg.c:627:24
	leal	-1(%r13), %edx
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movq	%r13, 240(%rsp)         # 8-byte Spill
	.loc	3 627 3 is_stmt 0 discriminator 1 # mg.c:627:3
	cmpl	$2, %edx
	jl	.LBB7_15
.Ltmp790:
# BB#7:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:m3j <- %R13D
	.loc	3 611 3 is_stmt 1       # mg.c:611:3
	movzbl	%al, %eax
.Ltmp791:
	.loc	3 615 7                 # mg.c:615:7
	movzbl	%cl, %ecx
.Ltmp792:
	.loc	3 427 12                # mg.c:427:12
	leaq	r(,%r15,8), %rdx
.Ltmp793:
	#DEBUG_VALUE: rprj3:r <- [%RSP+232]
	.loc	3 611 3                 # mg.c:611:3
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	incl	%eax
.Ltmp794:
	.loc	3 615 7                 # mg.c:615:7
	incl	%ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movq	224(%rsp), %rcx         # 8-byte Reload
.Ltmp795:
	.loc	3 629 26 discriminator 1 # mg.c:629:26
	leal	-1(%rcx), %edx
	movl	%edx, 120(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rdx         # 8-byte Reload
.Ltmp796:
	.loc	3 640 28 discriminator 1 # mg.c:640:28
	leal	-1(%rdx), %esi
.Ltmp797:
	.loc	3 642 14                # mg.c:642:14
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movq	112(%rsp), %rsi         # 8-byte Reload
	imulq	%r11, %rsi
.Ltmp798:
	.loc	3 627 3 discriminator 1 # mg.c:627:3
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	leal	-2(%rdx), %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	leaq	(,%rcx,8), %rdi
	leaq	8(,%rcx,8), %rcx
	imulq	%rdx, %rcx
	movq	216(%rsp), %rsi         # 8-byte Reload
	leaq	r+8(%rcx,%rsi,8), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	imulq	%rdx, %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	leaq	(,%rdx,8), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	$4, %ecx
	subl	%eax, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	$2, %ecx
	subl	%eax, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
.Ltmp799:
	.loc	3 427 5                 # mg.c:427:5
	movl	$1, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.Ltmp800:
	.p2align	4, 0x90
.LBB7_8:                                # %for.body.i
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
                                        #         Child Loop BB7_12 Depth 4
                                        #       Child Loop BB7_47 Depth 3
                                        #         Child Loop BB7_48 Depth 4
                                        #         Child Loop BB7_51 Depth 4
	#DEBUG_VALUE: rprj3:j2 <- 1
	.loc	3 629 5 discriminator 1 # mg.c:629:5
	cmpl	$2, 120(%rsp)           # 4-byte Folded Reload
	jl	.LBB7_14
.Ltmp801:
# BB#9:                                 # %for.body16.lr.ph.i
                                        #   in Loop: Header=BB7_8 Depth=2
	.loc	3 628 11                # mg.c:628:11
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	.loc	3 628 14 is_stmt 0      # mg.c:628:14
	subl	172(%rsp), %eax         # 4-byte Folded Reload
.Ltmp802:
	.loc	3 642 14 is_stmt 1      # mg.c:642:14
	cltq
	movq	%rax, %rcx
	movq	112(%rsp), %rsi         # 8-byte Reload
	imulq	%rsi, %rcx
	.loc	3 642 40 is_stmt 0      # mg.c:642:40
	leal	2(%rax), %edx
	.loc	3 642 36                # mg.c:642:36
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	.loc	3 644 18 is_stmt 1      # mg.c:644:18
	incl	%eax
	.loc	3 644 14 is_stmt 0      # mg.c:644:14
	cltq
	imulq	%rsi, %rax
	movq	184(%rsp), %rsi         # 8-byte Reload
	cmpl	$1, %esi
	movq	232(%rsp), %rsi         # 8-byte Reload
	.loc	3 642 14 is_stmt 1      # mg.c:642:14
	leaq	(%rsi,%rcx,8), %rcx
	.loc	3 642 36 is_stmt 0      # mg.c:642:36
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdx,8), %rcx
	.loc	3 644 14 is_stmt 1      # mg.c:644:14
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	(%rsi,%rax,8), %rax
.Ltmp803:
	.loc	3 427 5                 # mg.c:427:5
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	$1, %r10d
	jle	.LBB7_10
	.p2align	4, 0x90
.LBB7_47:                               # %for.body16.us.i
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_48 Depth 4
                                        #         Child Loop BB7_51 Depth 4
.Ltmp804:
	.loc	3 630 13                # mg.c:630:13
	leal	(%r10,%r10), %eax
	.loc	3 630 16 is_stmt 0      # mg.c:630:16
	subl	96(%rsp), %eax          # 4-byte Folded Reload
.Ltmp805:
	#DEBUG_VALUE: rprj3:j1 <- 1
	.loc	3 634 18 is_stmt 1      # mg.c:634:18
	cltq
	movq	%rax, %rdx
	imulq	%r11, %rdx
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx,8), %r9
	.loc	3 634 48 is_stmt 0      # mg.c:634:48
	leal	2(%rax), %ecx
	.loc	3 634 38                # mg.c:634:38
	movslq	%ecx, %rdi
	imulq	%r11, %rdi
	leaq	(%rsi,%rdi,8), %r12
	.loc	3 635 28 is_stmt 1      # mg.c:635:28
	incl	%eax
	.loc	3 635 18 is_stmt 0      # mg.c:635:18
	movslq	%eax, %r15
	imulq	%r11, %r15
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r15,8), %rcx
	movq	32(%rsp), %rbx          # 8-byte Reload
	.loc	3 635 38                # mg.c:635:38
	leaq	(%rbx,%r15,8), %r14
	.loc	3 636 18 is_stmt 1      # mg.c:636:18
	leaq	(%rax,%rdx,8), %r8
	.loc	3 636 38 is_stmt 0      # mg.c:636:38
	leaq	(%rbx,%rdx,8), %rdx
	.loc	3 637 18 is_stmt 1      # mg.c:637:18
	leaq	(%rax,%rdi,8), %rsi
	.loc	3 637 38 is_stmt 0      # mg.c:637:38
	leaq	(%rbx,%rdi,8), %rdi
.Ltmp806:
	.loc	3 427 5 is_stmt 1       # mg.c:427:5
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	movl	128(%rsp), %eax         # 4-byte Reload
	.p2align	4, 0x90
.LBB7_48:                               # %for.body21.us.i
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        #       Parent Loop BB7_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp807:
	.loc	3 634 18                # mg.c:634:18
	movslq	%ebx, %rbx
	movsd	(%r9,%rbx,8), %xmm0     # xmm0 = mem[0],zero
	.loc	3 634 36 is_stmt 0      # mg.c:634:36
	addsd	(%r12,%rbx,8), %xmm0
	.loc	3 635 16 is_stmt 1      # mg.c:635:16
	addsd	(%rcx,%rbx,8), %xmm0
	.loc	3 635 36 is_stmt 0      # mg.c:635:36
	addsd	(%r14,%rbx,8), %xmm0
	.loc	3 634 16 is_stmt 1      # mg.c:634:16
	movsd	%xmm0, 2336(%rsp,%rbx,8)
	.loc	3 636 18                # mg.c:636:18
	movsd	(%r8,%rbx,8), %xmm0     # xmm0 = mem[0],zero
	.loc	3 636 36 is_stmt 0      # mg.c:636:36
	addsd	(%rdx,%rbx,8), %xmm0
	.loc	3 637 16 is_stmt 1      # mg.c:637:16
	addsd	(%rsi,%rbx,8), %xmm0
	.loc	3 637 36 is_stmt 0      # mg.c:637:36
	addsd	(%rdi,%rbx,8), %xmm0
	.loc	3 636 16 is_stmt 1      # mg.c:636:16
	movsd	%xmm0, 256(%rsp,%rbx,8)
.Ltmp808:
	.loc	3 632 7 discriminator 1 # mg.c:632:7
	addl	$2, %ebx
	decl	%eax
	jne	.LBB7_48
.Ltmp809:
# BB#49:                                # %for.cond19.for.cond89.preheader_crit_edge.us.i
                                        #   in Loop: Header=BB7_47 Depth=3
	.loc	3 640 7 discriminator 1 # mg.c:640:7
	cmpl	$2, 128(%rsp)           # 4-byte Folded Reload
	movq	%rbp, %r11
	jl	.LBB7_46
.Ltmp810:
# BB#50:                                # %for.body92.lr.ph.us.i
                                        #   in Loop: Header=BB7_47 Depth=3
	.loc	3 647 23                # mg.c:647:23
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r15,8), %rax
.Ltmp811:
	.loc	3 427 5                 # mg.c:427:5
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	%r11, %r13
	movl	80(%rsp), %r15d         # 4-byte Reload
	.p2align	4, 0x90
.LBB7_51:                               # %for.body92.us.i
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        #       Parent Loop BB7_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp812:
	.loc	3 642 14                # mg.c:642:14
	leal	-1(%rbx), %ebp
	movslq	%ebp, %rbp
	movsd	(%r8,%rbp,8), %xmm0     # xmm0 = mem[0],zero
	.loc	3 642 34 is_stmt 0      # mg.c:642:34
	addsd	(%rdx,%rbp,8), %xmm0
	.loc	3 643 12 is_stmt 1      # mg.c:643:12
	addsd	(%rsi,%rbp,8), %xmm0
	.loc	3 643 34 is_stmt 0      # mg.c:643:34
	addsd	(%rdi,%rbp,8), %xmm0
.Ltmp813:
	#DEBUG_VALUE: rprj3:y2 <- %XMM0
	.loc	3 644 14 is_stmt 1      # mg.c:644:14
	movsd	(%r9,%rbp,8), %xmm1     # xmm1 = mem[0],zero
	.loc	3 644 34 is_stmt 0      # mg.c:644:34
	addsd	(%r12,%rbp,8), %xmm1
	.loc	3 645 12 is_stmt 1      # mg.c:645:12
	addsd	(%rcx,%rbp,8), %xmm1
	.loc	3 645 34 is_stmt 0      # mg.c:645:34
	addsd	(%r14,%rbp,8), %xmm1
.Ltmp814:
	#DEBUG_VALUE: rprj3:x2 <- %XMM1
	movsd	(%rax,%rbp,8), %xmm2    # xmm2 = mem[0],zero
	.loc	3 647 21 is_stmt 1      # mg.c:647:21
	mulsd	%xmm4, %xmm2
	.loc	3 648 25                # mg.c:648:25
	leal	-2(%rbx), %ebp
	movslq	%ebp, %rbp
	movsd	(%rax,%rbp,8), %xmm3    # xmm3 = mem[0],zero
	.loc	3 648 45 is_stmt 0      # mg.c:648:45
	movslq	%ebx, %rbx
	.loc	3 648 43                # mg.c:648:43
	addsd	(%rax,%rbx,8), %xmm3
	.loc	3 648 65                # mg.c:648:65
	addsd	%xmm1, %xmm3
	.loc	3 648 22                # mg.c:648:22
	mulsd	%xmm5, %xmm3
	.loc	3 648 15                # mg.c:648:15
	addsd	%xmm2, %xmm3
	.loc	3 649 26 is_stmt 1      # mg.c:649:26
	movsd	2336(%rsp,%rbp,8), %xmm1 # xmm1 = mem[0],zero
.Ltmp815:
	.loc	3 649 33 is_stmt 0      # mg.c:649:33
	addsd	2336(%rsp,%rbx,8), %xmm1
	.loc	3 649 44                # mg.c:649:44
	addsd	%xmm0, %xmm1
	.loc	3 649 23                # mg.c:649:23
	mulsd	%xmm6, %xmm1
	.loc	3 649 15                # mg.c:649:15
	addsd	%xmm3, %xmm1
	.loc	3 650 27 is_stmt 1      # mg.c:650:27
	movsd	256(%rsp,%rbp,8), %xmm0 # xmm0 = mem[0],zero
.Ltmp816:
	.loc	3 650 34 is_stmt 0      # mg.c:650:34
	addsd	256(%rsp,%rbx,8), %xmm0
	.loc	3 650 24                # mg.c:650:24
	mulsd	%xmm7, %xmm0
	.loc	3 650 15                # mg.c:650:15
	addsd	%xmm1, %xmm0
	.loc	3 646 23 is_stmt 1      # mg.c:646:23
	movsd	%xmm0, (%r13)
.Ltmp817:
	.loc	3 640 7 discriminator 1 # mg.c:640:7
	addq	$8, %r13
	addl	$2, %ebx
	decl	%r15d
	jne	.LBB7_51
.Ltmp818:
.LBB7_46:                               # %for.inc224.us.i
                                        #   in Loop: Header=BB7_47 Depth=3
	.loc	3 629 5 discriminator 1 # mg.c:629:5
	incq	%r10
	addq	88(%rsp), %r11          # 8-byte Folded Reload
	movq	%r11, %rbp
	cmpl	120(%rsp), %r10d        # 4-byte Folded Reload
	movq	104(%rsp), %r11         # 8-byte Reload
	jne	.LBB7_47
	jmp	.LBB7_14
.Ltmp819:
	.p2align	4, 0x90
.LBB7_10:                               # %for.body16.i.preheader
                                        #   in Loop: Header=BB7_8 Depth=2
	.loc	3 640 7 discriminator 1 # mg.c:640:7
	cmpl	$2, 128(%rsp)           # 4-byte Folded Reload
.Ltmp820:
	.loc	3 427 5                 # mg.c:427:5
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	$1, %eax
	jl	.LBB7_14
	.p2align	4, 0x90
.LBB7_11:                               # %for.body16.i.us
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_12 Depth 4
.Ltmp821:
	.loc	3 630 13                # mg.c:630:13
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	leal	(%rax,%rax), %eax
	.loc	3 630 16 is_stmt 0      # mg.c:630:16
	subl	96(%rsp), %eax          # 4-byte Folded Reload
	#DEBUG_VALUE: rprj3:j1 <- 1
.Ltmp822:
	.loc	3 642 14 is_stmt 1      # mg.c:642:14
	cltq
	movq	%rax, %rcx
	imulq	%r11, %rcx
	movq	136(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %r14
	movq	32(%rsp), %rdi          # 8-byte Reload
	.loc	3 642 36 is_stmt 0      # mg.c:642:36
	leaq	(%rdi,%rcx,8), %r12
	.loc	3 643 24 is_stmt 1      # mg.c:643:24
	leal	2(%rax), %edx
	.loc	3 643 14 is_stmt 0      # mg.c:643:14
	movslq	%edx, %rdx
	imulq	%r11, %rdx
	leaq	(%rsi,%rdx,8), %r10
	.loc	3 643 36                # mg.c:643:36
	leaq	(%rdi,%rdx,8), %r13
	movq	64(%rsp), %rbp          # 8-byte Reload
	.loc	3 644 14 is_stmt 1      # mg.c:644:14
	leaq	(%rbp,%rcx,8), %r15
	.loc	3 644 36 is_stmt 0      # mg.c:644:36
	leaq	(%rbp,%rdx,8), %r8
	.loc	3 645 24 is_stmt 1      # mg.c:645:24
	incl	%eax
	.loc	3 645 14 is_stmt 0      # mg.c:645:14
	cltq
	imulq	%r11, %rax
	leaq	(%rsi,%rax,8), %rcx
	.loc	3 645 36                # mg.c:645:36
	leaq	(%rdi,%rax,8), %rdx
	.loc	3 647 23 is_stmt 1      # mg.c:647:23
	leaq	(%rbp,%rax,8), %rsi
.Ltmp823:
	.loc	3 427 5                 # mg.c:427:5
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, %edi
	movq	%rbx, %rax
	movl	80(%rsp), %ebx          # 4-byte Reload
	.p2align	4, 0x90
.LBB7_12:                               # %for.body92.i.us
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        #       Parent Loop BB7_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp824:
	.loc	3 642 14                # mg.c:642:14
	leal	-1(%rdi), %r9d
	movslq	%r9d, %rbp
	movsd	(%r14,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	.loc	3 642 34 is_stmt 0      # mg.c:642:34
	addsd	(%r12,%rbp,8), %xmm0
	.loc	3 643 12 is_stmt 1      # mg.c:643:12
	addsd	(%r10,%rbp,8), %xmm0
	.loc	3 643 34 is_stmt 0      # mg.c:643:34
	addsd	(%r13,%rbp,8), %xmm0
.Ltmp825:
	#DEBUG_VALUE: rprj3:y2 <- %XMM0
	.loc	3 644 14 is_stmt 1      # mg.c:644:14
	movsd	(%r15,%rbp,8), %xmm1    # xmm1 = mem[0],zero
	.loc	3 644 34 is_stmt 0      # mg.c:644:34
	addsd	(%r8,%rbp,8), %xmm1
	.loc	3 645 12 is_stmt 1      # mg.c:645:12
	addsd	(%rcx,%rbp,8), %xmm1
	.loc	3 645 34 is_stmt 0      # mg.c:645:34
	addsd	(%rdx,%rbp,8), %xmm1
.Ltmp826:
	#DEBUG_VALUE: rprj3:x2 <- %XMM1
	movsd	(%rsi,%rbp,8), %xmm2    # xmm2 = mem[0],zero
	.loc	3 647 21 is_stmt 1      # mg.c:647:21
	mulsd	%xmm4, %xmm2
	.loc	3 648 25                # mg.c:648:25
	leal	-2(%rdi), %ebp
	movslq	%ebp, %rbp
	movsd	(%rsi,%rbp,8), %xmm3    # xmm3 = mem[0],zero
	.loc	3 648 45 is_stmt 0      # mg.c:648:45
	movslq	%edi, %rdi
	.loc	3 648 43                # mg.c:648:43
	addsd	(%rsi,%rdi,8), %xmm3
	.loc	3 648 65                # mg.c:648:65
	addsd	%xmm1, %xmm3
	.loc	3 648 22                # mg.c:648:22
	mulsd	%xmm5, %xmm3
	.loc	3 648 15                # mg.c:648:15
	addsd	%xmm2, %xmm3
	.loc	3 649 26 is_stmt 1      # mg.c:649:26
	movsd	2336(%rsp,%rbp,8), %xmm1 # xmm1 = mem[0],zero
.Ltmp827:
	.loc	3 649 33 is_stmt 0      # mg.c:649:33
	addsd	2336(%rsp,%rdi,8), %xmm1
	.loc	3 649 44                # mg.c:649:44
	addsd	%xmm0, %xmm1
	.loc	3 649 23                # mg.c:649:23
	mulsd	%xmm6, %xmm1
	.loc	3 649 15                # mg.c:649:15
	addsd	%xmm3, %xmm1
	.loc	3 650 27 is_stmt 1      # mg.c:650:27
	movsd	256(%rsp,%rbp,8), %xmm0 # xmm0 = mem[0],zero
.Ltmp828:
	.loc	3 650 34 is_stmt 0      # mg.c:650:34
	addsd	256(%rsp,%rdi,8), %xmm0
	.loc	3 650 24                # mg.c:650:24
	mulsd	%xmm7, %xmm0
	.loc	3 650 15                # mg.c:650:15
	addsd	%xmm1, %xmm0
	.loc	3 646 23 is_stmt 1      # mg.c:646:23
	movsd	%xmm0, (%rax)
.Ltmp829:
	.loc	3 640 7 discriminator 1 # mg.c:640:7
	addq	$8, %rax
	addl	$2, %edi
	decl	%ebx
	jne	.LBB7_12
.Ltmp830:
# BB#13:                                # %for.inc224.i.loopexit.us
                                        #   in Loop: Header=BB7_11 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
.Ltmp831:
	.loc	3 629 5 discriminator 1 # mg.c:629:5
	incq	%rax
	movq	160(%rsp), %rbx         # 8-byte Reload
	addq	88(%rsp), %rbx          # 8-byte Folded Reload
	cmpl	120(%rsp), %eax         # 4-byte Folded Reload
	movq	104(%rsp), %r11         # 8-byte Reload
	jne	.LBB7_11
.Ltmp832:
	.p2align	4, 0x90
.LBB7_14:                               # %for.inc227.i
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
.Ltmp833:
	.loc	3 627 3 discriminator 1 # mg.c:627:3
	incq	%rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpl	56(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB7_8
.Ltmp834:
.LBB7_15:                               # %for.end229.i
                                        #   in Loop: Header=BB7_2 Depth=1
	.loc	3 428 12                # mg.c:428:12
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	r(,%rax,8), %r15
.Ltmp835:
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 654 7                 # mg.c:654:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB7_17
.Ltmp836:
# BB#16:                                # %if.then231.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 654 16 is_stmt 0 discriminator 1 # mg.c:654:16
	movl	$6, %edi
	callq	timer_stop
.Ltmp837:
.LBB7_17:                               # %if.end232.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	movq	248(%rsp), %r12         # 8-byte Reload
	.loc	3 425 3 is_stmt 1 discriminator 1 # mg.c:425:3
	leaq	-1(%r12), %r14
.Ltmp838:
	.loc	3 657 3                 # mg.c:657:3
	movq	%r15, %rdi
	movq	184(%rsp), %r13         # 8-byte Reload
	movl	%r13d, %esi
	movq	224(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	movq	240(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %ecx
	callq	comm3
	.loc	3 659 7                 # mg.c:659:7
	cmpl	$0, debug_vec(%rip)
	jle	.LBB7_19
.Ltmp839:
# BB#18:                                # %if.then235.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 660 5                 # mg.c:660:5
	movl	$.L.str.46, %r8d
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r9d
	callq	rep_nrm
.Ltmp840:
.LBB7_19:                               # %if.end237.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 663 20                # mg.c:663:20
	movslq	debug_vec+16(%rip), %rax
	cmpq	%r12, %rax
	jl	.LBB7_21
.Ltmp841:
# BB#20:                                # %if.then239.i
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 664 5                 # mg.c:664:5
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	callq	showall
.Ltmp842:
.LBB7_21:                               # %rprj3.exit
                                        #   in Loop: Header=BB7_2 Depth=1
	#DEBUG_VALUE: rprj3:s <- %R15
	.loc	3 425 18 discriminator 1 # mg.c:425:18
	movzbl	lb(%rip), %eax
	andl	$1, %eax
	movq	%rax, %rcx
	incq	%rcx
	cmpq	%rcx, %r12
	movq	%r14, %rbx
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm7   # xmm7 = mem[0],zero
	jg	.LBB7_2
.Ltmp843:
.LBB7_22:                               # %for.end
	.loc	3 435 12                # mg.c:435:12
	movzbl	%al, %eax
	.loc	3 435 10 is_stmt 0      # mg.c:435:10
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movslq	ir(,%rax,4), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	u(,%rcx,8), %rcx
	.loc	3 436 38 is_stmt 1      # mg.c:436:38
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	m2(,%rax,4), %ecx
.Ltmp844:
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	.loc	3 436 45 is_stmt 0      # mg.c:436:45
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	m3(,%rax,4), %ecx
.Ltmp845:
	#DEBUG_VALUE: zero3:n3 <- %ECX
	.loc	3 1218 3 is_stmt 1      # mg.c:1218:3
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	m1(,%rax,4), %eax
.Ltmp846:
	#DEBUG_VALUE: zero3:i3 <- 0
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
.Ltmp847:
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	jle	.LBB7_32
.Ltmp848:
# BB#23:                                # %for.end
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_32
.Ltmp849:
# BB#24:                                # %for.cond4.preheader.lr.ph.us.preheader.i
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	movq	40(%rsp), %rcx          # 8-byte Reload
.Ltmp850:
	.loc	3 1225 9                # mg.c:1225:9
	leal	-1(%rcx), %eax
.Ltmp851:
	.loc	3 1224 7 discriminator 1 # mg.c:1224:7
	testl	%ecx, %ecx
	jle	.LBB7_32
.Ltmp852:
# BB#25:                                # %for.cond4.preheader.lr.ph.us.i.us.preheader
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	.loc	3 1225 9                # mg.c:1225:9
	leaq	8(,%rax,8), %r13
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%eax, %ebx
	andl	$3, %ebx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	40(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rcx
	shlq	$3, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	(,%rax,8), %rbp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	shlq	$5, %rax
	movq	%rax, %r14
	movl	$3, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.Ltmp853:
	.loc	3 435 3                 # mg.c:435:3
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r12          # 8-byte Reload
	xorl	%edx, %edx
.Ltmp854:
	.p2align	4, 0x90
.LBB7_26:                               # %for.cond4.preheader.lr.ph.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_30 Depth 2
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%r12, 120(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	movl	$0, %r15d
	je	.LBB7_28
	.p2align	4, 0x90
.LBB7_27:                               # %for.body6.lr.ph.us.us.i.us.prol
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp855:
	.loc	3 1225 23               # mg.c:1225:23
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
.Ltmp856:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	incq	%r15
	addq	%rbp, %r12
	cmpl	%r15d, %ebx
	jne	.LBB7_27
.Ltmp857:
.LBB7_28:                               # %for.cond4.preheader.lr.ph.us.i.us.split
                                        #   in Loop: Header=BB7_26 Depth=1
	cmpl	$3, 52(%rsp)            # 4-byte Folded Reload
	movq	%r14, %r12
	jb	.LBB7_31
# BB#29:                                # %for.cond4.preheader.lr.ph.us.i.us.split.split
                                        #   in Loop: Header=BB7_26 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	subl	%r15d, %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	imulq	%rdx, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax,8), %r14
	addq	80(%rsp), %r15          # 8-byte Folded Reload
	imulq	%rdx, %r15
	leaq	(%rcx,%r15,8), %r15
	.loc	3 435 3                 # mg.c:435:3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB7_30:                               # %for.body6.lr.ph.us.us.i.us
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp858:
	.loc	3 1225 23               # mg.c:1225:23
	leaq	(%r15,%rbx), %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	leaq	(%r14,%rbx), %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx), %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
.Ltmp859:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	addq	%r12, %rbx
	addl	$-4, %ebp
	jne	.LBB7_30
.Ltmp860:
.LBB7_31:                               # %for.cond1.for.inc14_crit_edge.us.i.loopexit.us
                                        #   in Loop: Header=BB7_26 Depth=1
	movq	%r12, %r14
	movq	136(%rsp), %rdx         # 8-byte Reload
.Ltmp861:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	incq	%rdx
	movq	120(%rsp), %r12         # 8-byte Reload
	addq	152(%rsp), %r12         # 8-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, 104(%rsp)         # 8-byte Folded Spill
	addq	%rax, 96(%rsp)          # 8-byte Folded Spill
	addq	%rax, 88(%rsp)          # 8-byte Folded Spill
	addq	%rax, 80(%rsp)          # 8-byte Folded Spill
	cmpl	28(%rsp), %edx          # 4-byte Folded Reload
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	jne	.LBB7_26
.Ltmp862:
.LBB7_32:                               # %zero3.exit
	.loc	3 436 10                # mg.c:436:10
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	r(,%rax,8), %rdi
	.loc	3 436 3 is_stmt 0       # mg.c:436:3
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	176(%rsp), %r9          # 8-byte Reload
	callq	psinv
.Ltmp863:
	.loc	3 438 14 is_stmt 1      # mg.c:438:14
	movzbl	lb(%rip), %ecx
	andl	$1, %ecx
	incl	%ecx
.Ltmp864:
	#DEBUG_VALUE: mg3P:k <- %ECX
	.loc	3 438 23 is_stmt 0 discriminator 1 # mg.c:438:23
	movl	lt(%rip), %eax
	.loc	3 438 3 discriminator 1 # mg.c:438:3
	cmpl	%eax, %ecx
	jge	.LBB7_45
.Ltmp865:
# BB#33:                                # %for.body47.preheader
	#DEBUG_VALUE: mg3P:k <- %ECX
	.loc	3 439 11 is_stmt 1      # mg.c:439:11
	movl	%ecx, %ebx
.Ltmp866:
	.p2align	4, 0x90
.LBB7_34:                               # %for.body47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
                                        #       Child Loop BB7_39 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	.loc	3 444 12                # mg.c:444:12
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movslq	ir(,%rbx,4), %rax
	leaq	u(,%rax,8), %rax
	.loc	3 445 62                # mg.c:445:62
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	m2(,%rbx,4), %eax
.Ltmp867:
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	.loc	3 445 69 is_stmt 0      # mg.c:445:69
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	m3(,%rbx,4), %ecx
.Ltmp868:
	#DEBUG_VALUE: zero3:n3 <- %ECX
	.loc	3 1218 3 is_stmt 1      # mg.c:1218:3
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	m1(,%rbx,4), %eax
.Ltmp869:
	#DEBUG_VALUE: zero3:i3 <- 0
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
.Ltmp870:
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	jle	.LBB7_44
.Ltmp871:
# BB#35:                                # %for.body47
                                        #   in Loop: Header=BB7_34 Depth=1
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_44
.Ltmp872:
# BB#36:                                # %for.cond4.preheader.lr.ph.us.preheader.i7
                                        #   in Loop: Header=BB7_34 Depth=1
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	movq	40(%rsp), %rcx          # 8-byte Reload
.Ltmp873:
	.loc	3 1225 9                # mg.c:1225:9
	leal	-1(%rcx), %eax
.Ltmp874:
	.loc	3 1224 7 discriminator 1 # mg.c:1224:7
	testl	%ecx, %ecx
	jle	.LBB7_44
.Ltmp875:
# BB#37:                                # %for.cond4.preheader.lr.ph.us.i9.us.preheader
                                        #   in Loop: Header=BB7_34 Depth=1
	#DEBUG_VALUE: zero3:n3 <- [%RSP+28]
	#DEBUG_VALUE: zero3:n2 <- [%RSP+32]
	.loc	3 1225 9                # mg.c:1225:9
	leaq	8(,%rax,8), %rbp
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
	andl	$3, %r15d
	movq	%r15, 160(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	40(%rsp), %rax          # 8-byte Reload
	imulq	%rax, %rcx
	shlq	$3, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	(,%rax,8), %r12
	movq	%r12, 72(%rsp)          # 8-byte Spill
	shlq	$5, %rax
	movq	%rax, %r13
.Ltmp876:
	.loc	3 444 5                 # mg.c:444:5
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$3, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	xorl	%edx, %edx
.Ltmp877:
	.p2align	4, 0x90
.LBB7_38:                               # %for.cond4.preheader.lr.ph.us.i9.us
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_39 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	movq	%rcx, %rbx
	movl	$0, %r14d
	je	.LBB7_40
	.p2align	4, 0x90
.LBB7_39:                               # %for.body6.lr.ph.us.us.i19.us.prol
                                        #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp878:
	.loc	3 1225 23               # mg.c:1225:23
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
.Ltmp879:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	incq	%r14
	addq	%r12, %rbx
	cmpl	%r14d, %r15d
	jne	.LBB7_39
.Ltmp880:
.LBB7_40:                               # %for.cond4.preheader.lr.ph.us.i9.us.split
                                        #   in Loop: Header=BB7_38 Depth=2
	cmpl	$3, 52(%rsp)            # 4-byte Folded Reload
	movq	%r13, %r15
	jb	.LBB7_43
# BB#41:                                # %for.cond4.preheader.lr.ph.us.i9.us.split.split
                                        #   in Loop: Header=BB7_38 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	subl	%r14d, %ebx
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	imulq	%rdx, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax,8), %r13
	addq	104(%rsp), %r14         # 8-byte Folded Reload
	imulq	%rdx, %r14
	leaq	(%rcx,%r14,8), %r14
	.loc	3 444 5                 # mg.c:444:5
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB7_42:                               # %for.body6.lr.ph.us.us.i19.us
                                        #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp881:
	.loc	3 1225 23               # mg.c:1225:23
	leaq	(%r14,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leaq	(%r13,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
.Ltmp882:
	.loc	3 1223 5 discriminator 1 # mg.c:1223:5
	addq	%r15, %r12
	addl	$-4, %ebx
	jne	.LBB7_42
.Ltmp883:
.LBB7_43:                               # %for.cond1.for.inc14_crit_edge.us.i13.loopexit.us
                                        #   in Loop: Header=BB7_38 Depth=2
	movq	%r15, %r13
	movq	136(%rsp), %rdx         # 8-byte Reload
.Ltmp884:
	.loc	3 1222 3 discriminator 1 # mg.c:1222:3
	incq	%rdx
	movq	120(%rsp), %rcx         # 8-byte Reload
	addq	152(%rsp), %rcx         # 8-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, 80(%rsp)          # 8-byte Folded Spill
	addq	%rax, 88(%rsp)          # 8-byte Folded Spill
	addq	%rax, 96(%rsp)          # 8-byte Folded Spill
	addq	%rax, 104(%rsp)         # 8-byte Folded Spill
	cmpl	28(%rsp), %edx          # 4-byte Folded Reload
	movq	160(%rsp), %r15         # 8-byte Reload
	movq	72(%rsp), %r12          # 8-byte Reload
	jne	.LBB7_38
.Ltmp885:
.LBB7_44:                               # %zero3.exit20
                                        #   in Loop: Header=BB7_34 Depth=1
	movq	144(%rsp), %rbx         # 8-byte Reload
	.loc	3 445 13                # mg.c:445:13
	movslq	ir-4(,%rbx,4), %rax
	leaq	u(,%rax,8), %rdi
	.loc	3 445 23 is_stmt 0      # mg.c:445:23
	movl	m1-4(,%rbx,4), %esi
	.loc	3 445 30                # mg.c:445:30
	movl	m2-4(,%rbx,4), %edx
	.loc	3 445 37                # mg.c:445:37
	movl	m3-4(,%rbx,4), %ecx
	.loc	3 445 5                 # mg.c:445:5
	movl	%ebx, 16(%rsp)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	interp
	.loc	3 450 12 is_stmt 1      # mg.c:450:12
	movslq	ir(,%rbx,4), %rax
	leaq	u(,%rax,8), %rdi
	.loc	3 450 23 is_stmt 0      # mg.c:450:23
	leaq	r(,%rax,8), %rsi
	.loc	3 450 44                # mg.c:450:44
	movl	m1(,%rbx,4), %ecx
	.loc	3 450 51                # mg.c:450:51
	movl	m2(,%rbx,4), %r8d
	.loc	3 450 58                # mg.c:450:58
	movl	m3(,%rbx,4), %r9d
	.loc	3 450 5                 # mg.c:450:5
	movl	%ebx, 8(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rsi, %rdx
	callq	resid
	.loc	3 455 12 is_stmt 1      # mg.c:455:12
	movslq	ir(,%rbx,4), %rax
	leaq	r(,%rax,8), %rdi
	.loc	3 455 23 is_stmt 0      # mg.c:455:23
	leaq	u(,%rax,8), %rsi
	.loc	3 455 33                # mg.c:455:33
	movl	m1(,%rbx,4), %edx
	.loc	3 455 40                # mg.c:455:40
	movl	m2(,%rbx,4), %ecx
	.loc	3 455 47                # mg.c:455:47
	movl	m3(,%rbx,4), %r8d
	.loc	3 455 5                 # mg.c:455:5
	movl	%ebx, (%rsp)
	movq	176(%rsp), %r9          # 8-byte Reload
	callq	psinv
.Ltmp886:
	.loc	3 438 3 is_stmt 1 discriminator 1 # mg.c:438:3
	incq	%rbx
	.loc	3 438 20 is_stmt 0 discriminator 1 # mg.c:438:20
	movslq	lt(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB7_34
.Ltmp887:
.LBB7_45:                               # %for.end112
	.loc	3 460 13 is_stmt 1      # mg.c:460:13
	movslq	%eax, %rbx
	.loc	3 460 11 is_stmt 0      # mg.c:460:11
	movslq	ir-4(,%rbx,4), %rax
	leaq	u(,%rax,8), %rdi
	.loc	3 460 21                # mg.c:460:21
	movl	m1-4(,%rbx,4), %esi
	.loc	3 460 28                # mg.c:460:28
	movl	m2-4(,%rbx,4), %edx
	.loc	3 460 35                # mg.c:460:35
	movl	m3-4(,%rbx,4), %ecx
	.loc	3 460 3                 # mg.c:460:3
	movl	%ebx, 16(%rsp)
	movl	204(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	200(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	$u, %r8d
	movl	196(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %r9d
	callq	interp
	.loc	3 461 3 is_stmt 1       # mg.c:461:3
	movl	%ebx, 8(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$u, %edi
	movl	$v, %esi
	movl	$r, %edx
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	resid
	.loc	3 462 3                 # mg.c:462:3
	movl	%ebx, (%rsp)
	movl	$r, %edi
	movl	$u, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	176(%rsp), %r9          # 8-byte Reload
	callq	psinv
	.loc	3 463 1                 # mg.c:463:1
	addq	$4408, %rsp             # imm = 0x1138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp888:
.Lfunc_end7:
	.size	mg3P, .Lfunc_end7-mg3P
	.cfi_endproc

	.p2align	4, 0x90
	.type	psinv,@function
psinv:                                  # @psinv
.Lfunc_begin8:
	.loc	3 479 0                 # mg.c:479:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp889:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp890:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp891:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp892:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp893:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp894:
	.cfi_def_cfa_offset 56
	subq	$4392, %rsp             # imm = 0x1128
.Ltmp895:
	.cfi_def_cfa_offset 4448
.Ltmp896:
	.cfi_offset %rbx, -56
.Ltmp897:
	.cfi_offset %r12, -48
.Ltmp898:
	.cfi_offset %r13, -40
.Ltmp899:
	.cfi_offset %r14, -32
.Ltmp900:
	.cfi_offset %r15, -24
.Ltmp901:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: psinv:or <- %RDI
	#DEBUG_VALUE: psinv:ou <- %RSI
	#DEBUG_VALUE: psinv:n1 <- %EDX
	#DEBUG_VALUE: psinv:n2 <- %ECX
	#DEBUG_VALUE: psinv:n3 <- %R8D
	#DEBUG_VALUE: psinv:c <- %R9
	movq	%r9, %rbx
.Ltmp902:
	#DEBUG_VALUE: psinv:c <- %RBX
	movl	%r8d, %ebp
.Ltmp903:
	#DEBUG_VALUE: psinv:n3 <- %EBP
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, %r15d
.Ltmp904:
	#DEBUG_VALUE: psinv:n1 <- %R15D
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
.Ltmp905:
	#DEBUG_VALUE: psinv:ou <- %R13
	movq	%r13, 200(%rsp)         # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
.Ltmp906:
	#DEBUG_VALUE: psinv:or <- [%RSP+32]
	.loc	3 480 3 prologue_end    # mg.c:480:3
	movl	%ecx, %r14d
.Ltmp907:
	#DEBUG_VALUE: psinv:n2 <- [%RSP+24]
	movl	%r15d, %r12d
	.loc	3 487 7                 # mg.c:487:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB8_2
.Ltmp908:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: psinv:n2 <- [%RSP+24]
	#DEBUG_VALUE: psinv:or <- [%RSP+32]
	#DEBUG_VALUE: psinv:ou <- %R13
	#DEBUG_VALUE: psinv:n1 <- %R15D
	#DEBUG_VALUE: psinv:n3 <- %EBP
	#DEBUG_VALUE: psinv:c <- %RBX
	.loc	3 487 16 is_stmt 0 discriminator 1 # mg.c:487:16
	movl	$3, %edi
	callq	timer_start
.Ltmp909:
.LBB8_2:                                # %for.cond.preheader
	#DEBUG_VALUE: psinv:ou <- %R13
	#DEBUG_VALUE: psinv:n1 <- %R15D
	#DEBUG_VALUE: psinv:n3 <- %EBP
	#DEBUG_VALUE: psinv:c <- %RBX
	.loc	3 488 23 is_stmt 1 discriminator 1 # mg.c:488:23
	leal	-1(%rbp), %r8d
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	.loc	3 488 3 is_stmt 0 discriminator 1 # mg.c:488:3
	cmpl	$2, %r8d
	jl	.LBB8_24
.Ltmp910:
# BB#3:                                 # %for.cond1.preheader.lr.ph
	#DEBUG_VALUE: psinv:c <- %RBX
	#DEBUG_VALUE: psinv:n3 <- %EBP
	#DEBUG_VALUE: psinv:n1 <- %R15D
	#DEBUG_VALUE: psinv:ou <- %R13
	.loc	3 489 25 is_stmt 1 discriminator 1 # mg.c:489:25
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
.Ltmp911:
	.loc	3 496 27 discriminator 1 # mg.c:496:27
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leal	-1(%r15), %eax
.Ltmp912:
	.loc	3 488 3 discriminator 1 # mg.c:488:3
	movq	%rax, 96(%rsp)          # 8-byte Spill
	incq	%rax
.Ltmp913:
	.loc	3 490 7 discriminator 1 # mg.c:490:7
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movabsq	$8589934590, %rcx       # imm = 0x1FFFFFFFE
	andq	%rax, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
.Ltmp914:
	.loc	3 488 3 discriminator 1 # mg.c:488:3
	leaq	8(%r13), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	leaq	(,%r12,8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leal	-2(%r15), %r9d
	movq	%r9, 216(%rsp)          # 8-byte Spill
.Ltmp915:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	leaq	(,%r14,8), %rax
.Ltmp916:
	.loc	3 491 26                # mg.c:491:26
	movq	%rax, 48(%rsp)          # 8-byte Spill
	imulq	%r12, %r14
	shlq	$3, %r14
	movq	%r14, 192(%rsp)         # 8-byte Spill
	movl	$1, %r12d
.Ltmp917:
	.p2align	4, 0x90
.LBB8_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
                                        #       Child Loop BB8_21 Depth 3
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_10 Depth 3
                                        #       Child Loop BB8_18 Depth 3
	cmpl	$1, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB8_5
# BB#6:                                 # %for.cond5.preheader.lr.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	.loc	3 492 40                # mg.c:492:40
	leaq	1(%r12), %r10
.Ltmp918:
	.loc	3 490 7 discriminator 1 # mg.c:490:7
	testl	%r15d, %r15d
	jle	.LBB8_19
# BB#7:                                 # %for.body7.lr.ph.us.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
.Ltmp919:
	.loc	3 492 22                # mg.c:492:22
	leaq	-1(%r12), %rsi
	movq	192(%rsp), %rax         # 8-byte Reload
	.loc	3 491 26                # mg.c:491:26
	movq	%rax, %rcx
	imulq	%r12, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rdx          # 8-byte Reload
	imulq	%rdx, %r12
	leaq	16(%r12), %rdi
	movq	56(%rsp), %rcx          # 8-byte Reload
	imulq	%rcx, %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	%rdx, %rdi
	imulq	%rsi, %rdi
	leaq	8(%rdi), %rbp
	imulq	%rcx, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	imulq	%r10, %rdx
	leaq	8(%rdx), %rbp
	imulq	%rcx, %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	imulq	%rax, %rsi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	addq	$16, %rdi
	imulq	%rcx, %rdi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	imulq	%r10, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r10, 208(%rsp)         # 8-byte Spill
	addq	$16, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	addq	$8, %r12
	imulq	%rcx, %r12
	addq	$8, %r12
	movq	%r13, %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %edi
.Ltmp920:
	.p2align	4, 0x90
.LBB8_8:                                # %for.body7.lr.ph.us
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_10 Depth 3
                                        #       Child Loop BB8_18 Depth 3
	movq	%rdi, 224(%rsp)         # 8-byte Spill
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	.loc	3 490 7 discriminator 1 # mg.c:490:7
	cmpq	$1, 80(%rsp)            # 8-byte Folded Reload
	movl	$0, %r14d
	jbe	.LBB8_9
# BB#13:                                # %min.iters.checked
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	$0, %r14d
	movq	%rax, %rcx
	leaq	2320(%rsp), %rdx
	leaq	240(%rsp), %rbp
	movq	16(%rsp), %rdi          # 8-byte Reload
	je	.LBB8_9
	.p2align	4, 0x90
.LBB8_14:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp921:
	.loc	3 491 18                # mg.c:491:18
	movq	152(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm0
	.loc	3 491 36 is_stmt 0      # mg.c:491:36
	movq	144(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm1
	.loc	3 491 34                # mg.c:491:34
	addpd	%xmm0, %xmm1
	.loc	3 492 18 is_stmt 1      # mg.c:492:18
	movq	128(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm0
	.loc	3 492 16 is_stmt 0      # mg.c:492:16
	addpd	%xmm1, %xmm0
	.loc	3 492 36                # mg.c:492:36
	movq	112(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm1
	.loc	3 492 34                # mg.c:492:34
	addpd	%xmm0, %xmm1
	.loc	3 491 16 is_stmt 1      # mg.c:491:16
	movapd	%xmm1, (%rbp)
	.loc	3 493 18                # mg.c:493:18
	movq	160(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm0
	.loc	3 493 38 is_stmt 0      # mg.c:493:38
	movq	136(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm1
	.loc	3 493 36                # mg.c:493:36
	addpd	%xmm0, %xmm1
	.loc	3 494 18 is_stmt 1      # mg.c:494:18
	movq	104(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm0
	.loc	3 494 16 is_stmt 0      # mg.c:494:16
	addpd	%xmm1, %xmm0
	.loc	3 494 38                # mg.c:494:38
	movq	120(%rsp), %rax         # 8-byte Reload
	movupd	(%rax,%rdi), %xmm1
	.loc	3 494 36                # mg.c:494:36
	addpd	%xmm0, %xmm1
	.loc	3 493 16 is_stmt 1      # mg.c:493:16
	movapd	%xmm1, (%rdx)
.Ltmp922:
	.loc	3 490 7 discriminator 1 # mg.c:490:7
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$16, %rdx
	addq	$-2, %rcx
	jne	.LBB8_14
# BB#15:                                # %middle.block
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	64(%rsp), %r14          # 8-byte Reload
	cmpq	%r14, 80(%rsp)          # 8-byte Folded Reload
	je	.LBB8_16
	.p2align	4, 0x90
.LBB8_9:                                # %for.body7.us.preheader
                                        #   in Loop: Header=BB8_8 Depth=2
.Ltmp923:
	.loc	3 491 18                # mg.c:491:18
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %rbp
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %rcx
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %rdx
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %r10
	leaq	240(%rsp,%r14,8), %rdi
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %r15
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %r9
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %r8
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rax
	leaq	(%rax,%r14,8), %r13
	leaq	2320(%rsp,%r14,8), %rsi
	movq	72(%rsp), %r11          # 8-byte Reload
	subl	%r14d, %r11d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_10:                               # %for.body7.us
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%rbp,%rax,8), %xmm0    # xmm0 = mem[0],zero
	.loc	3 491 34 is_stmt 0      # mg.c:491:34
	addsd	(%rcx,%rax,8), %xmm0
	.loc	3 492 16 is_stmt 1      # mg.c:492:16
	addsd	(%rdx,%rax,8), %xmm0
	.loc	3 492 34 is_stmt 0      # mg.c:492:34
	addsd	(%r10,%rax,8), %xmm0
	.loc	3 491 16 is_stmt 1      # mg.c:491:16
	movsd	%xmm0, (%rdi,%rax,8)
	.loc	3 493 18                # mg.c:493:18
	movsd	(%r15,%rax,8), %xmm0    # xmm0 = mem[0],zero
	.loc	3 493 36 is_stmt 0      # mg.c:493:36
	addsd	(%r9,%rax,8), %xmm0
	.loc	3 494 16 is_stmt 1      # mg.c:494:16
	addsd	(%r8,%rax,8), %xmm0
	.loc	3 494 36 is_stmt 0      # mg.c:494:36
	addsd	(%r13,%rax,8), %xmm0
	.loc	3 493 16 is_stmt 1      # mg.c:493:16
	movsd	%xmm0, (%rsi,%rax,8)
.Ltmp924:
	.loc	3 490 7 discriminator 1 # mg.c:490:7
	incq	%rax
	cmpl	%eax, %r11d
	jne	.LBB8_10
.Ltmp925:
.LBB8_16:                               # %for.cond5.for.cond75.preheader_crit_edge.us
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	224(%rsp), %rdi         # 8-byte Reload
	.loc	3 489 5 discriminator 1 # mg.c:489:5
	incq	%rdi
.Ltmp926:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	232(%rsp), %rsi         # 8-byte Reload
	jl	.LBB8_11
# BB#17:                                # %for.body78.lr.ph.us
                                        #   in Loop: Header=BB8_8 Depth=2
.Ltmp927:
	.loc	3 500 34                # mg.c:500:34
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp928:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12), %rcx
.Ltmp929:
	.loc	3 500 34                # mg.c:500:34
	movq	%rsi, %rdx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB8_18:                               # %for.body78.us
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 498 25                # mg.c:498:25
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	.loc	3 498 30 is_stmt 0      # mg.c:498:30
	mulsd	(%rcx,%rbp,8), %xmm1
	.loc	3 498 23                # mg.c:498:23
	addsd	(%r12,%rdx), %xmm1
	.loc	3 499 34 is_stmt 1      # mg.c:499:34
	movsd	-8(%rcx,%rbp,8), %xmm2  # xmm2 = mem[0],zero
	.loc	3 499 50 is_stmt 0      # mg.c:499:50
	addsd	8(%rcx,%rbp,8), %xmm2
	.loc	3 500 32 is_stmt 1      # mg.c:500:32
	addsd	%xmm0, %xmm2
	.loc	3 499 30                # mg.c:499:30
	mulsd	8(%rbx), %xmm2
	.loc	3 499 23 is_stmt 0      # mg.c:499:23
	addsd	%xmm1, %xmm2
	.loc	3 501 34 is_stmt 1      # mg.c:501:34
	movsd	2328(%rsp,%rbp,8), %xmm1 # xmm1 = mem[0],zero
	.loc	3 501 41 is_stmt 0      # mg.c:501:41
	addsd	240(%rsp,%rbp,8), %xmm1
	.loc	3 501 54                # mg.c:501:54
	movsd	256(%rsp,%rbp,8), %xmm0 # xmm0 = mem[0],zero
	.loc	3 501 52                # mg.c:501:52
	addsd	%xmm0, %xmm1
	.loc	3 501 30                # mg.c:501:30
	mulsd	16(%rbx), %xmm1
	.loc	3 501 23                # mg.c:501:23
	addsd	%xmm2, %xmm1
	.loc	3 497 23 is_stmt 1      # mg.c:497:23
	movsd	%xmm1, (%r12,%rdx)
.Ltmp930:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	incq	%rbp
	addq	$8, %rdx
	cmpl	%ebp, %r9d
	jne	.LBB8_18
.Ltmp931:
.LBB8_11:                               # %for.inc136.us
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	.loc	3 489 5 discriminator 1 # mg.c:489:5
	addq	%rax, 16(%rsp)          # 8-byte Folded Spill
	addq	%rax, %rsi
	cmpl	12(%rsp), %edi          # 4-byte Folded Reload
	jne	.LBB8_8
.Ltmp932:
# BB#12:                                #   in Loop: Header=BB8_4 Depth=1
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	200(%rsp), %r13         # 8-byte Reload
	movl	44(%rsp), %r8d          # 4-byte Reload
	movq	208(%rsp), %r10         # 8-byte Reload
	jmp	.LBB8_23
	.p2align	4, 0x90
.LBB8_5:                                # %for.cond1.preheader.for.inc139_crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	.loc	3 488 3 discriminator 1 # mg.c:488:3
	incq	%r12
	movq	%r12, %r10
	jmp	.LBB8_23
.LBB8_19:                               # %for.cond75.preheader.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
.Ltmp933:
	.loc	3 500 34                # mg.c:500:34
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
.Ltmp934:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	imulq	48(%rsp), %r12          # 8-byte Folded Reload
	addq	$8, %r12
	imulq	56(%rsp), %r12          # 8-byte Folded Reload
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rbp
	addq	176(%rsp), %r12         # 8-byte Folded Reload
	movl	$1, %edx
	.p2align	4, 0x90
.LBB8_20:                               # %for.cond75.preheader
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_21 Depth 3
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
.Ltmp935:
	.loc	3 500 34                # mg.c:500:34
	movl	$0, %esi
	movq	%r12, %rdi
	movq	%rbp, %rcx
	movapd	%xmm0, %xmm1
	jl	.LBB8_22
	.p2align	4, 0x90
.LBB8_21:                               # %for.body78
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 498 25                # mg.c:498:25
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	.loc	3 498 30 is_stmt 0      # mg.c:498:30
	mulsd	-8(%rdi), %xmm2
	.loc	3 498 23                # mg.c:498:23
	addsd	(%rcx), %xmm2
	.loc	3 499 34 is_stmt 1      # mg.c:499:34
	movsd	-16(%rdi), %xmm3        # xmm3 = mem[0],zero
	.loc	3 499 50 is_stmt 0      # mg.c:499:50
	addsd	(%rdi), %xmm3
	.loc	3 500 32 is_stmt 1      # mg.c:500:32
	addsd	%xmm1, %xmm3
	.loc	3 499 30                # mg.c:499:30
	mulsd	8(%rbx), %xmm3
	.loc	3 499 23 is_stmt 0      # mg.c:499:23
	addsd	%xmm2, %xmm3
	.loc	3 501 34 is_stmt 1      # mg.c:501:34
	movsd	2328(%rsp,%rsi,8), %xmm2 # xmm2 = mem[0],zero
	.loc	3 501 41 is_stmt 0      # mg.c:501:41
	addsd	240(%rsp,%rsi,8), %xmm2
	.loc	3 501 54                # mg.c:501:54
	movsd	256(%rsp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	.loc	3 501 52                # mg.c:501:52
	addsd	%xmm1, %xmm2
	.loc	3 501 30                # mg.c:501:30
	mulsd	16(%rbx), %xmm2
	.loc	3 501 23                # mg.c:501:23
	addsd	%xmm3, %xmm2
	.loc	3 497 23 is_stmt 1      # mg.c:497:23
	movsd	%xmm2, (%rcx)
.Ltmp936:
	.loc	3 496 7 discriminator 1 # mg.c:496:7
	addq	$8, %rcx
	addq	$8, %rdi
	incq	%rsi
	cmpl	%esi, %r9d
	jne	.LBB8_21
.Ltmp937:
.LBB8_22:                               # %for.inc136
                                        #   in Loop: Header=BB8_20 Depth=2
	.loc	3 489 5 discriminator 1 # mg.c:489:5
	incq	%rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rbp
	addq	%rax, %r12
	cmpl	12(%rsp), %edx          # 4-byte Folded Reload
	jne	.LBB8_20
.Ltmp938:
	.p2align	4, 0x90
.LBB8_23:                               # %for.inc139
                                        #   in Loop: Header=BB8_4 Depth=1
	.loc	3 488 3 discriminator 1 # mg.c:488:3
	cmpl	%r8d, %r10d
	movq	%r10, %r12
	jne	.LBB8_4
.Ltmp939:
.LBB8_24:                               # %for.end141
	.loc	3 510 7                 # mg.c:510:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB8_26
# BB#25:                                # %if.then143
.Ltmp940:
	.loc	3 510 16 is_stmt 0 discriminator 1 # mg.c:510:16
	movl	$3, %edi
	callq	timer_stop
.Ltmp941:
.LBB8_26:                               # %if.end144
	movl	4448(%rsp), %r14d
	#DEBUG_VALUE: psinv:k <- %R14D
	.loc	3 515 3 is_stmt 1       # mg.c:515:3
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %edx
	movq	168(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %ecx
	callq	comm3
	.loc	3 517 7                 # mg.c:517:7
	cmpl	$0, debug_vec(%rip)
	jle	.LBB8_28
.Ltmp942:
# BB#27:                                # %if.then146
	#DEBUG_VALUE: psinv:k <- %R14D
	.loc	3 518 5                 # mg.c:518:5
	movl	$.L.str.51, %r8d
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r9d
	callq	rep_nrm
.Ltmp943:
.LBB8_28:                               # %if.end147
	#DEBUG_VALUE: psinv:k <- %R14D
	.loc	3 521 20                # mg.c:521:20
	cmpl	%r14d, debug_vec+12(%rip)
	jl	.LBB8_30
.Ltmp944:
# BB#29:                                # %if.then149
	#DEBUG_VALUE: psinv:k <- %R14D
	.loc	3 522 5                 # mg.c:522:5
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	callq	showall
.Ltmp945:
.LBB8_30:                               # %if.end150
	#DEBUG_VALUE: psinv:k <- %R14D
	.loc	3 524 1                 # mg.c:524:1
	addq	$4392, %rsp             # imm = 0x1128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
.Ltmp946:
	popq	%r15
	popq	%rbp
	retq
.Ltmp947:
.Lfunc_end8:
	.size	psinv, .Lfunc_end8-psinv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4598175219545276416     # double 0.25
.LCPI9_2:
	.quad	4593671619917905920     # double 0.125
	.text
	.p2align	4, 0x90
	.type	interp,@function
interp:                                 # @interp
.Lfunc_begin9:
	.loc	3 681 0                 # mg.c:681:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp948:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp949:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp950:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp951:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp952:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp953:
	.cfi_def_cfa_offset 56
	subq	$6600, %rsp             # imm = 0x19C8
.Ltmp954:
	.cfi_def_cfa_offset 6656
.Ltmp955:
	.cfi_offset %rbx, -56
.Ltmp956:
	.cfi_offset %r12, -48
.Ltmp957:
	.cfi_offset %r13, -40
.Ltmp958:
	.cfi_offset %r14, -32
.Ltmp959:
	.cfi_offset %r15, -24
.Ltmp960:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: interp:oz <- %RDI
	#DEBUG_VALUE: interp:mm1 <- %ESI
	#DEBUG_VALUE: interp:mm2 <- %EDX
	#DEBUG_VALUE: interp:mm3 <- %ECX
	#DEBUG_VALUE: interp:ou <- %R8
	#DEBUG_VALUE: interp:n1 <- %R9D
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r8, 128(%rsp)          # 8-byte Spill
.Ltmp961:
	#DEBUG_VALUE: interp:ou <- [%RSP+128]
	#DEBUG_VALUE: interp:mm3 <- [%RSP+120]
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movl	%edx, %r12d
.Ltmp962:
	#DEBUG_VALUE: interp:mm2 <- %R12D
	movq	%r12, 344(%rsp)         # 8-byte Spill
	movl	%esi, %r15d
.Ltmp963:
	#DEBUG_VALUE: interp:mm1 <- %R15D
	movq	%r15, 296(%rsp)         # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	#DEBUG_VALUE: interp:n2 <- undef
.Ltmp964:
	#DEBUG_VALUE: interp:oz <- [%RSP+48]
	.loc	3 682 3 prologue_end    # mg.c:682:3
	movl	%r12d, %eax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movl	%r15d, %r14d
	.loc	3 683 3                 # mg.c:683:3
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movl	%r9d, %eax
	.loc	3 693 7                 # mg.c:693:7
	movq	%rax, 8(%rsp)           # 8-byte Spill
.Ltmp965:
	#DEBUG_VALUE: interp:n1 <- [%RSP+76]
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB9_2
.Ltmp966:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: interp:n1 <- [%RSP+76]
	#DEBUG_VALUE: interp:oz <- [%RSP+48]
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:mm2 <- %R12D
	#DEBUG_VALUE: interp:mm3 <- [%RSP+120]
	#DEBUG_VALUE: interp:ou <- [%RSP+128]
	.loc	3 693 16 is_stmt 0 discriminator 1 # mg.c:693:16
	movl	$7, %edi
	callq	timer_start
.Ltmp967:
.LBB9_2:                                # %if.end
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:mm2 <- %R12D
	movl	6664(%rsp), %edx
	#DEBUG_VALUE: interp:n3 <- %EDX
.Ltmp968:
	.loc	3 694 15 is_stmt 1      # mg.c:694:15
	cmpl	$3, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB9_48
.Ltmp969:
# BB#3:                                 # %if.end
	#DEBUG_VALUE: interp:mm2 <- %R12D
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:n3 <- %EDX
	movl	6656(%rsp), %eax
	cmpl	$3, %eax
	je	.LBB9_48
.Ltmp970:
# BB#4:                                 # %if.end
	#DEBUG_VALUE: interp:n3 <- %EDX
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:mm2 <- %R12D
	cmpl	$3, %edx
	je	.LBB9_48
.Ltmp971:
# BB#5:                                 # %for.cond.preheader
	#DEBUG_VALUE: interp:mm2 <- %R12D
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:n3 <- %EDX
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB9_98
.Ltmp972:
# BB#6:                                 # %for.cond6.preheader.lr.ph
	#DEBUG_VALUE: interp:n3 <- %EDX
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:mm2 <- %R12D
	.loc	3 695 26 is_stmt 0 discriminator 1 # mg.c:695:26
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %esi
.Ltmp973:
	.loc	3 696 28 is_stmt 1 discriminator 1 # mg.c:696:28
	movl	%esi, 36(%rsp)          # 4-byte Spill
	leal	-1(%r12), %eax
.Ltmp974:
	.loc	3 703 30 discriminator 1 # mg.c:703:30
	movl	%eax, 264(%rsp)         # 4-byte Spill
	leal	-1(%r15), %edi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movl	6656(%rsp), %ecx
	movq	%rcx, %r8
.Ltmp975:
	.loc	3 722 37                # mg.c:722:37
	movq	%r8, %rax
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdx
.Ltmp976:
	.loc	3 705 33                # mg.c:705:33
	movq	%rdx, %rbp
	imulq	%r14, %rbp
.Ltmp977:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	leaq	1(%rdi), %rax
.Ltmp978:
	.loc	3 697 9 discriminator 1 # mg.c:697:9
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movabsq	$8589934590, %rcx       # imm = 0x1FFFFFFFE
.Ltmp979:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	andq	%rax, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	-2(%rcx), %rax
	shrq	%rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	leal	-2(%r15), %ecx
.Ltmp980:
	.loc	3 698 20                # mg.c:698:20
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	andl	$1, %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
.Ltmp981:
	.loc	3 709 9 discriminator 1 # mg.c:709:9
	movl	%edi, %eax
	andl	$1, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
.Ltmp982:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %rax
.Ltmp983:
	.loc	3 696 7 discriminator 1 # mg.c:696:7
	movq	%rax, 216(%rsp)         # 8-byte Spill
	shlq	$3, %rdx
	movq	%rdx, 304(%rsp)         # 8-byte Spill
.Ltmp984:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	(,%r14,8), %r13
.Ltmp985:
	.loc	3 696 7 discriminator 1 # mg.c:696:7
	leaq	(,%rbp,8), %rax
.Ltmp986:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp987:
	.loc	3 723 42                # mg.c:723:42
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	128(%rsp), %rax         # 8-byte Reload
.Ltmp988:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	8(%rax), %rcx
.Ltmp989:
	.loc	3 696 7 discriminator 1 # mg.c:696:7
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	(,%r8,8), %rcx
.Ltmp990:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leaq	16(%rax), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
.Ltmp991:
	.p2align	4, 0x90
.LBB9_7:                                # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_19 Depth 3
                                        #       Child Loop BB9_13 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_30 Depth 3
                                        #       Child Loop BB9_37 Depth 3
                                        #       Child Loop BB9_44 Depth 3
	cmpl	$1, %r12d
	jle	.LBB9_8
# BB#9:                                 # %for.cond10.preheader.lr.ph
                                        #   in Loop: Header=BB9_7 Depth=1
.Ltmp992:
	.loc	3 722 40                # mg.c:722:40
	leal	(%r11,%r11), %eax
	.loc	3 722 43 is_stmt 0      # mg.c:722:43
	leal	1(%r11,%r11), %ecx
	.loc	3 722 37                # mg.c:722:37
	movslq	%ecx, %r8
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	imulq	%r8, %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
.Ltmp993:
	.loc	3 710 35 is_stmt 1      # mg.c:710:35
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movslq	%eax, %r9
	movq	%rsi, %rax
	imulq	%r9, %rax
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rdx         # 8-byte Reload
.Ltmp994:
	.loc	3 705 33                # mg.c:705:33
	movq	%rdx, %rax
	imulq	%r11, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
.Ltmp995:
	.loc	3 699 24                # mg.c:699:24
	movq	%rax, 272(%rsp)         # 8-byte Spill
	leaq	1(%r11), %rbp
	.loc	3 699 20 is_stmt 0      # mg.c:699:20
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rbp, %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	304(%rsp), %r10         # 8-byte Reload
.Ltmp996:
	.loc	3 696 7 is_stmt 1 discriminator 1 # mg.c:696:7
	movq	%r10, %rdi
	imulq	%r11, %rdi
	addq	$8, %rdi
	imulq	%r14, %rdi
	movq	216(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rdi), %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rsi         # 8-byte Reload
	imulq	%rsi, %r11
	leaq	(%rdx,%r11), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	imulq	%rbp, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	imulq	%rbp, %r10
	addq	$8, %r10
	imulq	%r14, %r10
	leaq	(%rdx,%r10), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	addq	%rcx, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	addq	%rcx, %r11
	addq	%rcx, %rsi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	addq	%rcx, %r10
	movq	200(%rsp), %rax         # 8-byte Reload
	imulq	%rax, %r9
	movq	%r9, 248(%rsp)          # 8-byte Spill
	leaq	8(%r9), %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	imulq	%rax, %r8
	movq	%r8, 256(%rsp)          # 8-byte Spill
	leaq	8(%r8), %rax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_10:                               # %for.cond10.preheader
                                        #   Parent Loop BB9_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_19 Depth 3
                                        #       Child Loop BB9_13 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_30 Depth 3
                                        #       Child Loop BB9_37 Depth 3
                                        #       Child Loop BB9_44 Depth 3
.Ltmp997:
	.loc	3 697 9 discriminator 1 # mg.c:697:9
	testl	%r15d, %r15d
	jle	.LBB9_21
# BB#11:                                # %for.body12.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpq	$1, 56(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	jbe	.LBB9_12
# BB#14:                                # %min.iters.checked
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	je	.LBB9_12
# BB#15:                                # %vector.body.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
.Ltmp998:
	.loc	3 698 20                # mg.c:698:20
	cmpq	$0, 232(%rsp)           # 8-byte Folded Reload
	movl	$0, %ebx
	jne	.LBB9_17
# BB#16:                                # %vector.body.prol
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 698 28 is_stmt 0      # mg.c:698:28
	leaq	1(%r12), %rax
	movq	144(%rsp), %rdx         # 8-byte Reload
	.loc	3 698 20                # mg.c:698:20
	imulq	%rdx, %rax
	.loc	3 698 38                # mg.c:698:38
	movq	%r12, %rcx
	imulq	%rdx, %rcx
	movq	272(%rsp), %rdx         # 8-byte Reload
	.loc	3 698 20                # mg.c:698:20
	movupd	(%rdx,%rax,8), %xmm3
	.loc	3 698 38                # mg.c:698:38
	movupd	(%rdx,%rcx,8), %xmm4
	.loc	3 698 36                # mg.c:698:36
	addpd	%xmm4, %xmm3
	.loc	3 698 18                # mg.c:698:18
	movapd	%xmm3, 4528(%rsp)
	movq	152(%rsp), %rdx         # 8-byte Reload
	.loc	3 699 20 is_stmt 1      # mg.c:699:20
	movupd	(%rdx,%rcx,8), %xmm5
	.loc	3 699 36 is_stmt 0      # mg.c:699:36
	addpd	%xmm5, %xmm4
	.loc	3 699 18                # mg.c:699:18
	movapd	%xmm4, 2448(%rsp)
	.loc	3 700 20 is_stmt 1      # mg.c:700:20
	movupd	(%rdx,%rax,8), %xmm4
	.loc	3 700 38 is_stmt 0      # mg.c:700:38
	addpd	%xmm5, %xmm4
	.loc	3 700 56                # mg.c:700:56
	addpd	%xmm3, %xmm4
	.loc	3 700 18                # mg.c:700:18
	movapd	%xmm4, 368(%rsp)
	movl	$2, %ebx
.LBB9_17:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpq	$0, 280(%rsp)           # 8-byte Folded Reload
	je	.LBB9_20
# BB#18:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 698 20 is_stmt 1      # mg.c:698:20
	movq	136(%rsp), %r9          # 8-byte Reload
	subq	%rbx, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %r14
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rsi
.Ltmp999:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	4544(%rsp), %rax
.Ltmp1000:
	.loc	3 698 20                # mg.c:698:20
	leaq	(%rax,%rbx,8), %rdx
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rdi
.Ltmp1001:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	2464(%rsp), %rax
.Ltmp1002:
	.loc	3 698 20                # mg.c:698:20
	leaq	(%rax,%rbx,8), %rcx
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
.Ltmp1003:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	384(%rsp), %rbp
.Ltmp1004:
	.loc	3 698 20                # mg.c:698:20
	leaq	(%rbp,%rbx,8), %rbp
.Ltmp1005:
	.loc	3 697 9 discriminator 1 # mg.c:697:9
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_19:                               # %vector.body
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1006:
	.loc	3 698 20                # mg.c:698:20
	movupd	-16(%r14,%rbx,8), %xmm3
	.loc	3 698 38 is_stmt 0      # mg.c:698:38
	movupd	-16(%rsi,%rbx,8), %xmm4
	.loc	3 698 36                # mg.c:698:36
	addpd	%xmm4, %xmm3
	.loc	3 698 18                # mg.c:698:18
	movapd	%xmm3, -16(%rdx,%rbx,8)
	.loc	3 699 20 is_stmt 1      # mg.c:699:20
	movupd	-16(%rdi,%rbx,8), %xmm5
	.loc	3 699 36 is_stmt 0      # mg.c:699:36
	addpd	%xmm5, %xmm4
	.loc	3 699 18                # mg.c:699:18
	movapd	%xmm4, -16(%rcx,%rbx,8)
	.loc	3 700 20 is_stmt 1      # mg.c:700:20
	movupd	-16(%rax,%rbx,8), %xmm4
	.loc	3 700 38 is_stmt 0      # mg.c:700:38
	addpd	%xmm5, %xmm4
	.loc	3 700 56                # mg.c:700:56
	addpd	%xmm3, %xmm4
	.loc	3 700 18                # mg.c:700:18
	movapd	%xmm4, -16(%rbp,%rbx,8)
	.loc	3 698 20 is_stmt 1      # mg.c:698:20
	movupd	(%r14,%rbx,8), %xmm3
	.loc	3 698 38 is_stmt 0      # mg.c:698:38
	movupd	(%rsi,%rbx,8), %xmm4
	.loc	3 698 36                # mg.c:698:36
	addpd	%xmm4, %xmm3
	.loc	3 698 18                # mg.c:698:18
	movapd	%xmm3, (%rdx,%rbx,8)
	.loc	3 699 20 is_stmt 1      # mg.c:699:20
	movupd	(%rdi,%rbx,8), %xmm5
	.loc	3 699 36 is_stmt 0      # mg.c:699:36
	addpd	%xmm5, %xmm4
	.loc	3 699 18                # mg.c:699:18
	movapd	%xmm4, (%rcx,%rbx,8)
	.loc	3 700 20 is_stmt 1      # mg.c:700:20
	movupd	(%rax,%rbx,8), %xmm4
	.loc	3 700 38 is_stmt 0      # mg.c:700:38
	addpd	%xmm5, %xmm4
	.loc	3 700 56                # mg.c:700:56
	addpd	%xmm3, %xmm4
	.loc	3 700 18                # mg.c:700:18
	movapd	%xmm4, (%rbp,%rbx,8)
.Ltmp1007:
	.loc	3 697 9 is_stmt 1 discriminator 1 # mg.c:697:9
	addq	$4, %rbx
	cmpq	%rbx, %r9
	jne	.LBB9_19
.LBB9_20:                               # %middle.block
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, 56(%rsp)          # 8-byte Folded Reload
	movq	%rax, %rcx
	je	.LBB9_21
	.p2align	4, 0x90
.LBB9_12:                               # %for.body12.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
.Ltmp1008:
	.loc	3 698 20                # mg.c:698:20
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,8), %r9
	leaq	(%r11,%rcx,8), %r14
	leaq	4528(%rsp,%rcx,8), %rdx
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,8), %rsi
	leaq	2448(%rsp,%rcx,8), %rdi
	leaq	(%r10,%rcx,8), %rbp
	leaq	368(%rsp,%rcx,8), %rbx
	movl	%r15d, %eax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_13:                               # %for.body12
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 698 38 is_stmt 0      # mg.c:698:38
	movsd	(%r14,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movsd	(%r9,%rcx,8), %xmm4     # xmm4 = mem[0],zero
	.loc	3 698 36                # mg.c:698:36
	addsd	%xmm3, %xmm4
	.loc	3 698 18                # mg.c:698:18
	movsd	%xmm4, (%rdx,%rcx,8)
	.loc	3 699 20 is_stmt 1      # mg.c:699:20
	movsd	(%rsi,%rcx,8), %xmm5    # xmm5 = mem[0],zero
	.loc	3 699 36 is_stmt 0      # mg.c:699:36
	addsd	%xmm5, %xmm3
	.loc	3 699 18                # mg.c:699:18
	movsd	%xmm3, (%rdi,%rcx,8)
	.loc	3 700 38 is_stmt 1      # mg.c:700:38
	addsd	(%rbp,%rcx,8), %xmm5
	.loc	3 700 56 is_stmt 0      # mg.c:700:56
	addsd	%xmm4, %xmm5
	.loc	3 700 18                # mg.c:700:18
	movsd	%xmm5, (%rbx,%rcx,8)
.Ltmp1009:
	.loc	3 697 9 is_stmt 1 discriminator 1 # mg.c:697:9
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB9_13
.Ltmp1010:
.LBB9_21:                               # %for.cond63.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$1, %r15d
	movq	%r15, %rdx
	jle	.LBB9_45
# BB#22:                                #   in Loop: Header=BB9_10 Depth=2
	movslq	%r8d, %rax
	movq	248(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rcx
	movq	288(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax,8), %r15
	movq	256(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax,8), %r14
	movq	240(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax,8), %rbp
	movq	8(%rsp), %rax           # 8-byte Reload
	imulq	%rax, %rcx
	imulq	%rax, %r15
	imulq	%rax, %r14
	imulq	%rax, %rbp
	addq	192(%rsp), %rcx         # 8-byte Folded Reload
	movl	$1, %eax
	movq	144(%rsp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_23:                               # %for.body66
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1011:
	.loc	3 704 33                # mg.c:704:33
	movsd	-8(%rcx), %xmm3         # xmm3 = mem[0],zero
	.loc	3 705 31                # mg.c:705:31
	addsd	-8(%r11,%rax,8), %xmm3
	.loc	3 704 31                # mg.c:704:31
	movsd	%xmm3, -8(%rcx)
	.loc	3 707 42                # mg.c:707:42
	movsd	(%r11,%rax,8), %xmm3    # xmm3 = mem[0],zero
	.loc	3 707 58 is_stmt 0      # mg.c:707:58
	addsd	-8(%r11,%rax,8), %xmm3
	.loc	3 707 39                # mg.c:707:39
	mulsd	%xmm0, %xmm3
	.loc	3 707 33                # mg.c:707:33
	addsd	(%rcx), %xmm3
	.loc	3 706 33 is_stmt 1      # mg.c:706:33
	movsd	%xmm3, (%rcx)
.Ltmp1012:
	.loc	3 703 9 discriminator 1 # mg.c:703:9
	incq	%rax
	addq	$16, %rcx
	cmpl	%eax, %esi
	jne	.LBB9_23
.Ltmp1013:
# BB#24:                                # %for.cond130.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 709 9 discriminator 1 # mg.c:709:9
	cmpl	$2, %edx
	jl	.LBB9_45
# BB#25:                                # %for.body133.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
.Ltmp1014:
	.loc	3 711 41                # mg.c:711:41
	movsd	4528(%rsp), %xmm3       # xmm3 = mem[0],zero
	jne	.LBB9_27
# BB#26:                                #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_28
.LBB9_27:                               # %for.body133.prol
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 710 47                # mg.c:710:47
	leal	1(%r12,%r12), %eax
	.loc	3 710 35 is_stmt 0      # mg.c:710:35
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	328(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rax,8), %xmm4
	.loc	3 713 54 is_stmt 1      # mg.c:713:54
	movsd	4536(%rsp), %xmm5       # xmm5 = mem[0],zero
	.loc	3 713 52 is_stmt 0      # mg.c:713:52
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 711 39 is_stmt 1      # mg.c:711:39
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	movhpd	.LCPI9_1(%rip), %xmm3   # xmm3 = xmm3[0],mem[0]
	mulpd	%xmm7, %xmm3
	.loc	3 711 33 is_stmt 0      # mg.c:711:33
	addpd	%xmm4, %xmm3
	.loc	3 710 33 is_stmt 1      # mg.c:710:33
	movupd	%xmm3, (%rcx,%rax,8)
	movapd	%xmm5, %xmm3
	movl	$1, %eax
.Ltmp1015:
.LBB9_28:                               # %for.body133.lr.ph.split
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 184(%rsp)           # 4-byte Folded Reload
	je	.LBB9_31
# BB#29:                                # %for.body133.lr.ph.split.split
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 709 9 discriminator 1 # mg.c:709:9
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebx
	subl	%eax, %ebx
.Ltmp1016:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	4544(%rsp), %rcx
.Ltmp1017:
	.loc	3 709 9 discriminator 1 # mg.c:709:9
	leaq	(%rcx,%rax,8), %r9
	shlq	$4, %rax
	addq	%rax, %rbp
	addq	160(%rsp), %rbp         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB9_30:                               # %for.body133
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1018:
	.loc	3 710 35                # mg.c:710:35
	movupd	-16(%rbp), %xmm4
	.loc	3 713 54                # mg.c:713:54
	movsd	-8(%r9), %xmm5          # xmm5 = mem[0],zero
	.loc	3 713 52 is_stmt 0      # mg.c:713:52
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 711 39 is_stmt 1      # mg.c:711:39
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	mulpd	%xmm7, %xmm3
	.loc	3 711 33 is_stmt 0      # mg.c:711:33
	addpd	%xmm4, %xmm3
	.loc	3 710 33 is_stmt 1      # mg.c:710:33
	movupd	%xmm3, -16(%rbp)
	.loc	3 710 35 is_stmt 0      # mg.c:710:35
	movupd	(%rbp), %xmm4
	.loc	3 713 54 is_stmt 1      # mg.c:713:54
	movsd	(%r9), %xmm3            # xmm3 = mem[0],zero
	.loc	3 713 52 is_stmt 0      # mg.c:713:52
	movapd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
	.loc	3 711 39 is_stmt 1      # mg.c:711:39
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0]
	mulpd	%xmm7, %xmm5
	.loc	3 711 33 is_stmt 0      # mg.c:711:33
	addpd	%xmm4, %xmm5
	.loc	3 710 33 is_stmt 1      # mg.c:710:33
	movupd	%xmm5, (%rbp)
.Ltmp1019:
	.loc	3 709 9 discriminator 1 # mg.c:709:9
	addq	$16, %r9
	addq	$32, %rbp
	addl	$-2, %ebx
	jne	.LBB9_30
.Ltmp1020:
.LBB9_31:                               # %for.cond191.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 715 9 discriminator 1 # mg.c:715:9
	cmpl	$2, %edx
	jl	.LBB9_45
# BB#32:                                # %for.body194.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
.Ltmp1021:
	.loc	3 717 43                # mg.c:717:43
	movsd	2448(%rsp), %xmm3       # xmm3 = mem[0],zero
	jne	.LBB9_34
# BB#33:                                #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_35
.LBB9_34:                               # %for.body194.prol
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 716 46                # mg.c:716:46
	leal	(%r12,%r12), %eax
	.loc	3 716 35 is_stmt 0      # mg.c:716:35
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rax,8), %xmm4
	.loc	3 719 54 is_stmt 1      # mg.c:719:54
	movsd	2456(%rsp), %xmm5       # xmm5 = mem[0],zero
	.loc	3 719 52 is_stmt 0      # mg.c:719:52
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 717 41 is_stmt 1      # mg.c:717:41
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	movhpd	.LCPI9_1(%rip), %xmm3   # xmm3 = xmm3[0],mem[0]
	mulpd	%xmm7, %xmm3
	.loc	3 717 35 is_stmt 0      # mg.c:717:35
	addpd	%xmm4, %xmm3
	.loc	3 716 33 is_stmt 1      # mg.c:716:33
	movupd	%xmm3, (%rcx,%rax,8)
	movapd	%xmm5, %xmm3
	movl	$1, %eax
.Ltmp1022:
.LBB9_35:                               # %for.body194.lr.ph.split
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 184(%rsp)           # 4-byte Folded Reload
	je	.LBB9_38
# BB#36:                                # %for.body194.lr.ph.split.split
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 715 9 discriminator 1 # mg.c:715:9
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebx
	subl	%eax, %ebx
.Ltmp1023:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	2464(%rsp), %rcx
.Ltmp1024:
	.loc	3 715 9 discriminator 1 # mg.c:715:9
	leaq	(%rcx,%rax,8), %rbp
	shlq	$4, %rax
	addq	%rax, %r14
	addq	160(%rsp), %r14         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB9_37:                               # %for.body194
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1025:
	.loc	3 716 35                # mg.c:716:35
	movupd	-16(%r14), %xmm4
	.loc	3 719 54                # mg.c:719:54
	movsd	-8(%rbp), %xmm5         # xmm5 = mem[0],zero
	.loc	3 719 52 is_stmt 0      # mg.c:719:52
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 717 41 is_stmt 1      # mg.c:717:41
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	mulpd	%xmm7, %xmm3
	.loc	3 717 35 is_stmt 0      # mg.c:717:35
	addpd	%xmm4, %xmm3
	.loc	3 716 33 is_stmt 1      # mg.c:716:33
	movupd	%xmm3, -16(%r14)
	.loc	3 716 35 is_stmt 0      # mg.c:716:35
	movupd	(%r14), %xmm4
	.loc	3 719 54 is_stmt 1      # mg.c:719:54
	movsd	(%rbp), %xmm3           # xmm3 = mem[0],zero
	.loc	3 719 52 is_stmt 0      # mg.c:719:52
	movapd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
	.loc	3 717 41 is_stmt 1      # mg.c:717:41
	movapd	%xmm0, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0]
	mulpd	%xmm7, %xmm5
	.loc	3 717 35 is_stmt 0      # mg.c:717:35
	addpd	%xmm4, %xmm5
	.loc	3 716 33 is_stmt 1      # mg.c:716:33
	movupd	%xmm5, (%r14)
.Ltmp1026:
	.loc	3 715 9 discriminator 1 # mg.c:715:9
	addq	$16, %rbp
	addq	$32, %r14
	addl	$-2, %ebx
	jne	.LBB9_37
.Ltmp1027:
.LBB9_38:                               # %for.cond252.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 721 9 discriminator 1 # mg.c:721:9
	cmpl	$2, %edx
	jl	.LBB9_45
# BB#39:                                # %for.body255.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
.Ltmp1028:
	.loc	3 723 44                # mg.c:723:44
	movsd	368(%rsp), %xmm3        # xmm3 = mem[0],zero
	jne	.LBB9_41
# BB#40:                                #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_42
.LBB9_41:                               # %for.body255.prol
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 722 51                # mg.c:722:51
	leal	1(%r12,%r12), %eax
	.loc	3 722 37 is_stmt 0      # mg.c:722:37
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	movupd	(%rcx,%rax,8), %xmm4
	.loc	3 725 57 is_stmt 1      # mg.c:725:57
	movsd	376(%rsp), %xmm5        # xmm5 = mem[0],zero
	.loc	3 725 55 is_stmt 0      # mg.c:725:55
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 723 42 is_stmt 1      # mg.c:723:42
	movapd	%xmm1, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	movhpd	.LCPI9_2(%rip), %xmm3   # xmm3 = xmm3[0],mem[0]
	mulpd	%xmm7, %xmm3
	.loc	3 723 35 is_stmt 0      # mg.c:723:35
	addpd	%xmm4, %xmm3
	.loc	3 722 35 is_stmt 1      # mg.c:722:35
	movupd	%xmm3, (%rcx,%rax,8)
	movapd	%xmm5, %xmm3
	movl	$1, %eax
.Ltmp1029:
.LBB9_42:                               # %for.body255.lr.ph.split
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	$0, 184(%rsp)           # 4-byte Folded Reload
	je	.LBB9_45
# BB#43:                                # %for.body255.lr.ph.split.split
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 721 9 discriminator 1 # mg.c:721:9
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebx
	subl	%eax, %ebx
.Ltmp1030:
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	leaq	384(%rsp), %rcx
.Ltmp1031:
	.loc	3 721 9 discriminator 1 # mg.c:721:9
	leaq	(%rcx,%rax,8), %rbp
	shlq	$4, %rax
	addq	%rax, %r15
	addq	160(%rsp), %r15         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB9_44:                               # %for.body255
                                        #   Parent Loop BB9_7 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1032:
	.loc	3 722 37                # mg.c:722:37
	movupd	-16(%r15), %xmm4
	.loc	3 725 57                # mg.c:725:57
	movsd	-8(%rbp), %xmm5         # xmm5 = mem[0],zero
	.loc	3 725 55 is_stmt 0      # mg.c:725:55
	movapd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	.loc	3 723 42 is_stmt 1      # mg.c:723:42
	movapd	%xmm1, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0]
	mulpd	%xmm7, %xmm3
	.loc	3 723 35 is_stmt 0      # mg.c:723:35
	addpd	%xmm4, %xmm3
	.loc	3 722 35 is_stmt 1      # mg.c:722:35
	movupd	%xmm3, -16(%r15)
	.loc	3 722 37 is_stmt 0      # mg.c:722:37
	movupd	(%r15), %xmm4
	.loc	3 725 57 is_stmt 1      # mg.c:725:57
	movsd	(%rbp), %xmm3           # xmm3 = mem[0],zero
	.loc	3 725 55 is_stmt 0      # mg.c:725:55
	movapd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
	.loc	3 723 42 is_stmt 1      # mg.c:723:42
	movapd	%xmm1, %xmm7
	unpcklpd	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
	unpcklpd	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0]
	mulpd	%xmm7, %xmm5
	.loc	3 723 35 is_stmt 0      # mg.c:723:35
	addpd	%xmm4, %xmm5
	.loc	3 722 35 is_stmt 1      # mg.c:722:35
	movupd	%xmm5, (%r15)
.Ltmp1033:
	.loc	3 721 9 discriminator 1 # mg.c:721:9
	addq	$16, %rbp
	addq	$32, %r15
	addl	$-2, %ebx
	jne	.LBB9_44
.Ltmp1034:
	.p2align	4, 0x90
.LBB9_45:                               # %for.inc317
                                        #   in Loop: Header=BB9_10 Depth=2
	.loc	3 696 7 discriminator 1 # mg.c:696:7
	incq	%r12
	addq	%r13, 40(%rsp)          # 8-byte Folded Spill
	addq	%r13, 24(%rsp)          # 8-byte Folded Spill
	addq	%r13, 96(%rsp)          # 8-byte Folded Spill
	addq	%r13, 88(%rsp)          # 8-byte Folded Spill
	addq	%r13, 16(%rsp)          # 8-byte Folded Spill
	addq	%r13, %r11
	addq	%r13, 64(%rsp)          # 8-byte Folded Spill
	addq	%r13, %r10
	addl	$2, %r8d
	cmpl	264(%rsp), %r12d        # 4-byte Folded Reload
	movq	%rdx, %r15
	jne	.LBB9_10
.Ltmp1035:
# BB#46:                                #   in Loop: Header=BB9_7 Depth=1
	movq	344(%rsp), %r12         # 8-byte Reload
	movq	144(%rsp), %r14         # 8-byte Reload
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	80(%rsp), %r11          # 8-byte Reload
	jmp	.LBB9_47
	.p2align	4, 0x90
.LBB9_8:                                # %for.cond6.preheader.for.inc320_crit_edge
                                        #   in Loop: Header=BB9_7 Depth=1
	.loc	3 695 5 discriminator 1 # mg.c:695:5
	incq	%r11
.LBB9_47:                               # %for.inc320
                                        #   in Loop: Header=BB9_7 Depth=1
	cmpl	%esi, %r11d
	jne	.LBB9_7
	jmp	.LBB9_98
.Ltmp1036:
.LBB9_48:                               # %if.else
	#DEBUG_VALUE: interp:mm2 <- %R12D
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:n3 <- %EDX
	xorl	%esi, %esi
	cmpl	$3, 76(%rsp)            # 4-byte Folded Reload
	sete	%al
.Ltmp1037:
	.loc	3 733 5                 # mg.c:733:5
	movzbl	%al, %ecx
	movl	$-1, %eax
	movl	$0, %r13d
	cmovel	%eax, %r13d
	movq	%r13, 64(%rsp)          # 8-byte Spill
	incl	%ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	6656(%rsp), %ecx
	cmpl	$3, %ecx
	sete	%cl
.Ltmp1038:
	#DEBUG_VALUE: interp:t2 <- 0
	#DEBUG_VALUE: interp:d2 <- 1
	.loc	3 738 9                 # mg.c:738:9
	movzbl	%cl, %ecx
	movl	$0, %edi
	cmovel	%eax, %edi
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	incl	%ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	cmpl	$3, %edx
	sete	%cl
.Ltmp1039:
	.loc	3 749 5                 # mg.c:749:5
	movzbl	%cl, %ebp
	cmovel	%eax, %esi
	movq	%rsi, 336(%rsp)         # 8-byte Spill
	incl	%ebp
.Ltmp1040:
	#DEBUG_VALUE: interp:i3 <- %EBP
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebp
	jge	.LBB9_78
.Ltmp1041:
# BB#49:                                # %for.cond339.preheader.lr.ph
	#DEBUG_VALUE: interp:n3 <- %EDX
	#DEBUG_VALUE: interp:mm1 <- %R15D
	#DEBUG_VALUE: interp:mm2 <- %R12D
	#DEBUG_VALUE: interp:i3 <- %EBP
	movl	36(%rsp), %edx          # 4-byte Reload
.Ltmp1042:
	.loc	3 763 30                # mg.c:763:30
	movl	%edx, %eax
	notl	%eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	6656(%rsp), %eax
	.loc	3 763 13 is_stmt 0      # mg.c:763:13
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %r10
	.loc	3 764 22 is_stmt 1      # mg.c:764:22
	movq	%r10, %r8
	movq	144(%rsp), %rsi         # 8-byte Reload
	imulq	%rsi, %r8
	movq	%r8, 312(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rdi          # 8-byte Reload
.Ltmp1043:
	.loc	3 758 41                # mg.c:758:41
	movl	%edi, %eax
	notl	%eax
.Ltmp1044:
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	%edx, %r9d
	movq	%r9, 352(%rsp)          # 8-byte Spill
	movl	%ebp, %ebx
.Ltmp1045:
	.loc	3 763 19                # mg.c:763:19
	notl	%ebp
.Ltmp1046:
	movq	%rbp, 200(%rsp)         # 8-byte Spill
.Ltmp1047:
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	leal	-1(%r15), %ebp
	movl	%ebp, 248(%rsp)         # 4-byte Spill
	movl	%r15d, %edx
	subl	%edi, %edx
	movl	%ebp, %ecx
	subl	%edi, %ecx
	movl	%ecx, 264(%rsp)         # 4-byte Spill
.Ltmp1048:
	.loc	3 756 9 discriminator 1 # mg.c:756:9
	andl	$1, %edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
.Ltmp1049:
	.loc	3 758 44                # mg.c:758:44
	leal	(%rax,%rdi,2), %eax
	.loc	3 758 13 is_stmt 0      # mg.c:758:13
	cltq
.Ltmp1050:
	.loc	3 763 38 is_stmt 1      # mg.c:763:38
	movq	%rax, 176(%rsp)         # 8-byte Spill
	andl	$1, %ebp
	movl	%ebp, 168(%rsp)         # 4-byte Spill
.Ltmp1051:
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	leaq	-1(%rbx), %rax
	imulq	%r10, %rax
	leaq	(,%r9,8), %rcx
	leaq	-8(%rcx,%rax,8), %rcx
	imulq	%rsi, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rcx,%rdx), %rbp
	movq	%rbp, 224(%rsp)         # 8-byte Spill
	leaq	-8(%rcx,%rdx), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	8(,%rax,8), %rcx
	imulq	%rsi, %rcx
	imulq	%rsi, %rax
	leaq	8(%rcx,%rdx), %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	leaq	-8(%rcx,%rdx), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	8(%rdx,%rax,8), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	leaq	-8(%rdx,%rax,8), %rax
.Ltmp1052:
	.loc	3 756 9 discriminator 1 # mg.c:756:9
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	$1, %eax
.Ltmp1053:
	.loc	3 768 9 discriminator 1 # mg.c:768:9
	subl	%edi, %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
.Ltmp1054:
	.loc	3 764 19                # mg.c:764:19
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
.Ltmp1055:
	.loc	3 775 30                # mg.c:775:30
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
.Ltmp1056:
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	%edi, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-2(%r15), %ecx
.Ltmp1057:
	.loc	3 756 9 discriminator 1 # mg.c:756:9
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	leaq	1(%rax), %rax
	.loc	3 756 38 is_stmt 0 discriminator 2 # mg.c:756:38
	movq	%rax, 280(%rsp)         # 8-byte Spill
	leal	1(%rdi), %eax
.Ltmp1058:
	#DEBUG_VALUE: interp:i1 <- [%RSP+232]
	.loc	3 763 44 is_stmt 1      # mg.c:763:44
	movl	%eax, 232(%rsp)         # 4-byte Spill
	leal	1(%r13), %eax
	.loc	3 763 13 is_stmt 0      # mg.c:763:13
	movl	%eax, 288(%rsp)         # 4-byte Spill
	cltq
.Ltmp1059:
	.loc	3 754 5 is_stmt 1 discriminator 1 # mg.c:754:5
	movq	%rax, 272(%rsp)         # 8-byte Spill
	leaq	(,%r8,8), %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	leaq	(,%rsi,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%r13), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
.Ltmp1060:
	.p2align	4, 0x90
.LBB9_50:                               # %for.cond339.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_52 Depth 2
                                        #       Child Loop BB9_57 Depth 3
                                        #     Child Loop BB9_68 Depth 2
                                        #       Child Loop BB9_72 Depth 3
                                        #       Child Loop BB9_66 Depth 3
                                        #     Child Loop BB9_62 Depth 2
                                        #       Child Loop BB9_64 Depth 3
                                        #     Child Loop BB9_107 Depth 2
                                        #       Child Loop BB9_111 Depth 3
                                        #       Child Loop BB9_105 Depth 3
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%r15, %r14
.Ltmp1061:
	.loc	3 755 7 discriminator 1 # mg.c:755:7
	cmpl	%r12d, 36(%rsp)         # 4-byte Folded Reload
	jge	.LBB9_59
# BB#51:                                # %for.cond343.preheader.lr.ph
                                        #   in Loop: Header=BB9_50 Depth=1
.Ltmp1062:
	.loc	3 763 22                # mg.c:763:22
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	.loc	3 763 13 is_stmt 0      # mg.c:763:13
	cltq
	imulq	320(%rsp), %rax         # 8-byte Folded Reload
	.loc	3 764 26 is_stmt 1      # mg.c:764:26
	decq	%rcx
	.loc	3 764 22 is_stmt 0      # mg.c:764:22
	imulq	312(%rsp), %rcx         # 8-byte Folded Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%r14d, %edx
	.loc	3 763 13 is_stmt 1      # mg.c:763:13
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	.loc	3 764 22                # mg.c:764:22
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %r9
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	352(%rsp), %r10         # 8-byte Reload
	movq	%r10, %r8
	movq	%rdx, %r11
	jge	.LBB9_52
.Ltmp1063:
	.p2align	4, 0x90
.LBB9_68:                               # %for.body346.lr.ph.us
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_72 Depth 3
                                        #       Child Loop BB9_66 Depth 3
	.loc	3 758 33                # mg.c:758:33
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r8,2), %eax
	.loc	3 758 13 is_stmt 0      # mg.c:758:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	.loc	3 759 25 is_stmt 1      # mg.c:759:25
	leaq	-1(%r8), %rsi
	.loc	3 759 15 is_stmt 0      # mg.c:759:15
	imulq	144(%rsp), %rsi         # 8-byte Folded Reload
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	.loc	3 758 13 is_stmt 1      # mg.c:758:13
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdx
	.loc	3 759 15                # mg.c:759:15
	movq	192(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB9_70
# BB#69:                                # %for.body346.us.prol
                                        #   in Loop: Header=BB9_68 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	.loc	3 758 13                # mg.c:758:13
	movsd	(%rdx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	.loc	3 759 13                # mg.c:759:13
	movq	24(%rsp), %rdi          # 8-byte Reload
	addsd	-8(%rsi,%rdi,8), %xmm2
	.loc	3 757 46                # mg.c:757:46
	movsd	%xmm2, (%rdx,%rax,8)
	movq	280(%rsp), %rbp         # 8-byte Reload
	movl	232(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
.Ltmp1064:
.LBB9_70:                               # %for.body346.lr.ph.us.split
                                        #   in Loop: Header=BB9_68 Depth=2
	cmpl	$0, 264(%rsp)           # 4-byte Folded Reload
	je	.LBB9_73
# BB#71:                                # %for.body346.lr.ph.us.split.split
                                        #   in Loop: Header=BB9_68 Depth=2
	.loc	3 756 9 discriminator 1 # mg.c:756:9
	movl	%r14d, %edi
	subl	%ebp, %edi
	leaq	(%r15,%rbp,8), %rbp
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx,2), %ebx
	.p2align	4, 0x90
.LBB9_72:                               # %for.body346.us
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1065:
	.loc	3 758 13                # mg.c:758:13
	movslq	%ebx, %rbx
	movsd	(%rdx,%rbx,8), %xmm2    # xmm2 = mem[0],zero
	.loc	3 759 13                # mg.c:759:13
	addsd	(%rbp), %xmm2
	.loc	3 757 46                # mg.c:757:46
	movsd	%xmm2, (%rdx,%rbx,8)
	.loc	3 758 13                # mg.c:758:13
	leal	2(%rbx), %eax
	cltq
	movsd	(%rdx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	.loc	3 759 13                # mg.c:759:13
	addsd	8(%rbp), %xmm2
	.loc	3 757 46                # mg.c:757:46
	movsd	%xmm2, (%rdx,%rax,8)
.Ltmp1066:
	.loc	3 756 9 discriminator 1 # mg.c:756:9
	addq	$16, %rbp
	addl	$4, %ebx
	addl	$-2, %edi
	jne	.LBB9_72
.Ltmp1067:
.LBB9_73:                               # %for.cond343.for.cond390.preheader_crit_edge.us
                                        #   in Loop: Header=BB9_68 Depth=2
	.loc	3 761 9 discriminator 1 # mg.c:761:9
	cmpl	$2, %r14d
	movq	96(%rsp), %rcx          # 8-byte Reload
	jl	.LBB9_67
# BB#74:                                # %for.body393.us.preheader
                                        #   in Loop: Header=BB9_68 Depth=2
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	movl	$1, %edi
	je	.LBB9_76
# BB#75:                                # %for.body393.us.prol
                                        #   in Loop: Header=BB9_68 Depth=2
.Ltmp1068:
	.loc	3 764 22                # mg.c:764:22
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	.loc	3 764 40 is_stmt 0      # mg.c:764:40
	addsd	(%rsi), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	movq	272(%rsp), %rax         # 8-byte Reload
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rdx,%rax,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rdx,%rax,8)
	movl	$2, %edi
.LBB9_76:                               # %for.body393.us.preheader.split
                                        #   in Loop: Header=BB9_68 Depth=2
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	je	.LBB9_67
# BB#77:                                # %for.body393.us.preheader.split.split
                                        #   in Loop: Header=BB9_68 Depth=2
	.loc	3 763 38                # mg.c:763:38
	movl	%r14d, %esi
	subl	%edi, %esi
	leaq	(%r9,%rdi,8), %rbp
	leaq	2(%rdi,%rdi), %rbx
	.p2align	4, 0x90
.LBB9_66:                               # %for.body393.us
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 763 13 is_stmt 0      # mg.c:763:13
	leaq	(%rcx,%rbx), %rdi
	leal	-2(%rdi), %eax
	cltq
	.loc	3 764 22 is_stmt 1      # mg.c:764:22
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	.loc	3 764 40 is_stmt 0      # mg.c:764:40
	addsd	-16(%rbp), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rdx,%rax,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rdx,%rax,8)
	.loc	3 763 13                # mg.c:763:13
	movslq	%edi, %rax
	.loc	3 764 22                # mg.c:764:22
	movsd	(%rbp), %xmm2           # xmm2 = mem[0],zero
	.loc	3 764 40 is_stmt 0      # mg.c:764:40
	addsd	-8(%rbp), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rdx,%rax,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rdx,%rax,8)
.Ltmp1069:
	.loc	3 761 9 discriminator 1 # mg.c:761:9
	addq	$16, %rbp
	addq	$4, %rbx
	addl	$-2, %esi
	jne	.LBB9_66
.Ltmp1070:
.LBB9_67:                               # %for.inc447.us
                                        #   in Loop: Header=BB9_68 Depth=2
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	.loc	3 755 7 discriminator 1 # mg.c:755:7
	incq	%r8
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r15
	addq	%rax, %r9
	cmpl	%r12d, %r8d
	jne	.LBB9_68
	jmp	.LBB9_59
	.p2align	4, 0x90
.LBB9_52:                               # %for.cond390.preheader
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_57 Depth 3
.Ltmp1071:
	.loc	3 761 9 discriminator 1 # mg.c:761:9
	cmpl	$2, %r14d
	movq	96(%rsp), %rsi          # 8-byte Reload
	jl	.LBB9_58
# BB#53:                                # %for.body393.lr.ph
                                        #   in Loop: Header=BB9_52 Depth=2
.Ltmp1072:
	.loc	3 763 33                # mg.c:763:33
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r10,2), %eax
	.loc	3 763 13 is_stmt 0      # mg.c:763:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rcx
	movl	$1, %edi
	je	.LBB9_55
# BB#54:                                # %for.body393.prol
                                        #   in Loop: Header=BB9_52 Depth=2
	.loc	3 764 32 is_stmt 1      # mg.c:764:32
	leaq	-1(%r10), %rax
	.loc	3 764 22 is_stmt 0      # mg.c:764:22
	imulq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
	movsd	8(%rdx,%rax,8), %xmm2   # xmm2 = mem[0],zero
	.loc	3 764 40                # mg.c:764:40
	addsd	(%rdx,%rax,8), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	movq	272(%rsp), %rax         # 8-byte Reload
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rcx,%rax,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rcx,%rax,8)
	movl	$2, %edi
.Ltmp1073:
.LBB9_55:                               # %for.body393.lr.ph.split
                                        #   in Loop: Header=BB9_52 Depth=2
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	je	.LBB9_58
# BB#56:                                # %for.body393.lr.ph.split.split
                                        #   in Loop: Header=BB9_52 Depth=2
	.loc	3 761 9 discriminator 1 # mg.c:761:9
	movl	%r14d, %ebp
	subl	%edi, %ebp
	leaq	(%r11,%rdi,8), %rbx
	leaq	2(%rdi,%rdi), %rdi
	.p2align	4, 0x90
.LBB9_57:                               # %for.body393
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1074:
	.loc	3 763 13                # mg.c:763:13
	leaq	(%rsi,%rdi), %rax
	leal	-2(%rax), %edx
	movslq	%edx, %rdx
	.loc	3 764 22                # mg.c:764:22
	movsd	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	.loc	3 764 40 is_stmt 0      # mg.c:764:40
	addsd	-16(%rbx), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rcx,%rdx,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rcx,%rdx,8)
	.loc	3 763 13                # mg.c:763:13
	cltq
	.loc	3 764 22                # mg.c:764:22
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	.loc	3 764 40 is_stmt 0      # mg.c:764:40
	addsd	-8(%rbx), %xmm2
	.loc	3 764 19                # mg.c:764:19
	mulsd	%xmm0, %xmm2
	.loc	3 764 13                # mg.c:764:13
	addsd	(%rcx,%rax,8), %xmm2
	.loc	3 762 46 is_stmt 1      # mg.c:762:46
	movsd	%xmm2, (%rcx,%rax,8)
.Ltmp1075:
	.loc	3 761 9 discriminator 1 # mg.c:761:9
	addq	$16, %rbx
	addq	$4, %rdi
	addl	$-2, %ebp
	jne	.LBB9_57
.Ltmp1076:
.LBB9_58:                               # %for.inc447
                                        #   in Loop: Header=BB9_52 Depth=2
	.loc	3 755 7 discriminator 1 # mg.c:755:7
	incq	%r10
	addq	40(%rsp), %r11          # 8-byte Folded Reload
	cmpl	%r12d, %r10d
	jne	.LBB9_52
.Ltmp1077:
.LBB9_59:                               # %for.cond450.preheader
                                        #   in Loop: Header=BB9_50 Depth=1
	.loc	3 767 7 discriminator 1 # mg.c:767:7
	cmpl	$2, %r12d
	movq	%r14, %r15
	jl	.LBB9_114
# BB#60:                                # %for.cond454.preheader.lr.ph
                                        #   in Loop: Header=BB9_50 Depth=1
.Ltmp1078:
	.loc	3 775 22                # mg.c:775:22
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	leal	(%rax,%rdx,2), %eax
	.loc	3 775 13 is_stmt 0      # mg.c:775:13
	cltq
	imulq	320(%rsp), %rax         # 8-byte Folded Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpl	%r15d, %ecx
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jge	.LBB9_61
# BB#106:                               #   in Loop: Header=BB9_50 Depth=1
	.loc	3 776 27 is_stmt 1      # mg.c:776:27
	leaq	-1(%rdx), %rax
	.loc	3 776 23 is_stmt 0      # mg.c:776:23
	imulq	312(%rsp), %rax         # 8-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	movq	208(%rsp), %r11         # 8-byte Reload
	movq	216(%rsp), %rdx         # 8-byte Reload
	movl	$1, %esi
.Ltmp1079:
	.p2align	4, 0x90
.LBB9_107:                              # %for.body457.lr.ph.us
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_111 Depth 3
                                        #       Child Loop BB9_105 Depth 3
	movq	%r15, %rdi
.Ltmp1080:
	.loc	3 770 33 is_stmt 1      # mg.c:770:33
	movq	240(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rsi,2), %eax
	.loc	3 770 13 is_stmt 0      # mg.c:770:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rbp
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	je	.LBB9_109
# BB#108:                               # %for.body457.us.prol
                                        #   in Loop: Header=BB9_107 Depth=2
	.loc	3 771 22 is_stmt 1      # mg.c:771:22
	movq	%rsi, %rax
	movq	144(%rsp), %rbx         # 8-byte Reload
	imulq	%rbx, %rax
	.loc	3 771 52 is_stmt 0      # mg.c:771:52
	leaq	-1(%rsi), %rcx
	.loc	3 771 42                # mg.c:771:42
	imulq	%rbx, %rcx
	movq	192(%rsp), %rbx         # 8-byte Reload
	.loc	3 771 22                # mg.c:771:22
	leaq	(%rbx,%rax,8), %rax
	.loc	3 771 42                # mg.c:771:42
	leaq	(%rbx,%rcx,8), %rcx
	movq	24(%rsp), %rbx          # 8-byte Reload
	.loc	3 771 22                # mg.c:771:22
	movsd	-8(%rax,%rbx,8), %xmm2  # xmm2 = mem[0],zero
	.loc	3 771 40                # mg.c:771:40
	addsd	-8(%rcx,%rbx,8), %xmm2
	.loc	3 771 19                # mg.c:771:19
	mulsd	%xmm0, %xmm2
	movq	176(%rsp), %rax         # 8-byte Reload
	.loc	3 771 13                # mg.c:771:13
	addsd	(%rbp,%rax,8), %xmm2
	.loc	3 769 46 is_stmt 1      # mg.c:769:46
	movsd	%xmm2, (%rbp,%rax,8)
	movq	280(%rsp), %rcx         # 8-byte Reload
	movl	232(%rsp), %eax         # 4-byte Reload
.Ltmp1081:
.LBB9_109:                              # %for.body457.lr.ph.us.split
                                        #   in Loop: Header=BB9_107 Depth=2
	cmpl	$0, 264(%rsp)           # 4-byte Folded Reload
	je	.LBB9_112
# BB#110:                               # %for.body457.lr.ph.us.split.split
                                        #   in Loop: Header=BB9_107 Depth=2
	.loc	3 768 9 discriminator 1 # mg.c:768:9
	movl	%edi, %ebx
	subl	%ecx, %ebx
	leaq	(%rdx,%rcx,8), %r10
	leaq	(%r11,%rcx,8), %r12
	movq	328(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax,2), %r13d
	movq	184(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax,2), %r8d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB9_111:                              # %for.body457.us
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1082:
	.loc	3 770 13                # mg.c:770:13
	leal	(%r8,%r15), %eax
	cltq
	.loc	3 771 22                # mg.c:771:22
	movsd	(%r10,%r15,4), %xmm2    # xmm2 = mem[0],zero
	.loc	3 771 40 is_stmt 0      # mg.c:771:40
	addsd	(%r12,%r15,4), %xmm2
	.loc	3 771 19                # mg.c:771:19
	mulsd	%xmm0, %xmm2
	.loc	3 771 13                # mg.c:771:13
	addsd	(%rbp,%rax,8), %xmm2
	.loc	3 769 46 is_stmt 1      # mg.c:769:46
	movsd	%xmm2, (%rbp,%rax,8)
	.loc	3 770 13                # mg.c:770:13
	leal	(%r13,%r15), %eax
	cltq
	.loc	3 771 22                # mg.c:771:22
	movsd	8(%r10,%r15,4), %xmm2   # xmm2 = mem[0],zero
	.loc	3 771 40 is_stmt 0      # mg.c:771:40
	addsd	8(%r12,%r15,4), %xmm2
	.loc	3 771 19                # mg.c:771:19
	mulsd	%xmm0, %xmm2
	.loc	3 771 13                # mg.c:771:13
	addsd	(%rbp,%rax,8), %xmm2
	.loc	3 769 46 is_stmt 1      # mg.c:769:46
	movsd	%xmm2, (%rbp,%rax,8)
.Ltmp1083:
	.loc	3 768 9 discriminator 1 # mg.c:768:9
	addq	$4, %r15
	addl	$-2, %ebx
	jne	.LBB9_111
.Ltmp1084:
.LBB9_112:                              # %for.cond454.for.cond511.preheader_crit_edge.us
                                        #   in Loop: Header=BB9_107 Depth=2
	movq	%rdi, %r15
	cmpl	$1, %r15d
	movl	248(%rsp), %ebx         # 4-byte Reload
	movl	288(%rsp), %eax         # 4-byte Reload
	movq	%r14, %rdi
	movq	%r9, %rcx
	jle	.LBB9_113
	.p2align	4, 0x90
.LBB9_105:                              # %for.body514.us
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1085:
	.loc	3 775 13                # mg.c:775:13
	cltq
	.loc	3 776 23                # mg.c:776:23
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	.loc	3 776 39 is_stmt 0      # mg.c:776:39
	addsd	(%rdi), %xmm2
	.loc	3 777 21 is_stmt 1      # mg.c:777:21
	addsd	-8(%rcx), %xmm2
	.loc	3 777 41 is_stmt 0      # mg.c:777:41
	addsd	-8(%rdi), %xmm2
	.loc	3 776 20 is_stmt 1      # mg.c:776:20
	mulsd	%xmm1, %xmm2
	.loc	3 776 13 is_stmt 0      # mg.c:776:13
	addsd	(%rbp,%rax,8), %xmm2
	.loc	3 774 46 is_stmt 1      # mg.c:774:46
	movsd	%xmm2, (%rbp,%rax,8)
.Ltmp1086:
	.loc	3 773 9 discriminator 1 # mg.c:773:9
	addq	$8, %rcx
	addq	$8, %rdi
	addl	$2, %eax
	decl	%ebx
	jne	.LBB9_105
.Ltmp1087:
.LBB9_113:                              # %for.inc585.us
                                        #   in Loop: Header=BB9_107 Depth=2
	.loc	3 767 7 discriminator 1 # mg.c:767:7
	incq	%rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rdx
	addq	%rax, %r11
	addq	%rax, %r9
	addq	%rax, %r14
	movq	344(%rsp), %r12         # 8-byte Reload
	cmpl	%r12d, %esi
	movq	64(%rsp), %r13          # 8-byte Reload
	jne	.LBB9_107
	jmp	.LBB9_114
	.p2align	4, 0x90
.LBB9_61:                               #   in Loop: Header=BB9_50 Depth=1
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	$1, %edx
	.p2align	4, 0x90
.LBB9_62:                               # %for.cond511.preheader
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_64 Depth 3
.Ltmp1088:
	.loc	3 773 9 discriminator 1 # mg.c:773:9
	cmpl	$2, %r15d
	jl	.LBB9_65
# BB#63:                                # %for.body514.lr.ph
                                        #   in Loop: Header=BB9_62 Depth=2
.Ltmp1089:
	.loc	3 775 33                # mg.c:775:33
	movq	240(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdx,2), %eax
	.loc	3 775 13 is_stmt 0      # mg.c:775:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rsi
	movl	248(%rsp), %edi         # 4-byte Reload
	movl	288(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	movq	%r8, %rax
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB9_64:                               # %for.body514
                                        #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebp, %rbp
	.loc	3 776 23 is_stmt 1      # mg.c:776:23
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	.loc	3 776 39 is_stmt 0      # mg.c:776:39
	addsd	(%rax), %xmm2
	.loc	3 777 21 is_stmt 1      # mg.c:777:21
	addsd	-8(%rcx), %xmm2
	.loc	3 777 41 is_stmt 0      # mg.c:777:41
	addsd	-8(%rax), %xmm2
	.loc	3 776 20 is_stmt 1      # mg.c:776:20
	mulsd	%xmm1, %xmm2
	.loc	3 776 13 is_stmt 0      # mg.c:776:13
	addsd	(%rsi,%rbp,8), %xmm2
	.loc	3 774 46 is_stmt 1      # mg.c:774:46
	movsd	%xmm2, (%rsi,%rbp,8)
.Ltmp1090:
	.loc	3 773 9 discriminator 1 # mg.c:773:9
	addq	$8, %rcx
	addq	$8, %rax
	addl	$2, %ebp
	decl	%edi
	jne	.LBB9_64
.Ltmp1091:
.LBB9_65:                               # %for.inc585
                                        #   in Loop: Header=BB9_62 Depth=2
	.loc	3 767 7 discriminator 1 # mg.c:767:7
	incq	%rdx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rbx
	addq	%rax, %r8
	cmpl	%r12d, %edx
	jne	.LBB9_62
.Ltmp1092:
.LBB9_114:                              # %for.inc588
                                        #   in Loop: Header=BB9_50 Depth=1
	movq	152(%rsp), %rbx         # 8-byte Reload
	.loc	3 754 5 discriminator 1 # mg.c:754:5
	incq	%rbx
	movq	360(%rsp), %rax         # 8-byte Reload
	addq	%rax, 224(%rsp)         # 8-byte Folded Spill
	addq	%rax, 80(%rsp)          # 8-byte Folded Spill
	addq	%rax, 112(%rsp)         # 8-byte Folded Spill
	addq	%rax, 104(%rsp)         # 8-byte Folded Spill
	addq	%rax, 216(%rsp)         # 8-byte Folded Spill
	addq	%rax, 208(%rsp)         # 8-byte Folded Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB9_50
.Ltmp1093:
.LBB9_78:                               # %for.cond591.preheader
	movq	%r13, 64(%rsp)          # 8-byte Spill
.Ltmp1094:
	.loc	3 782 5 discriminator 1 # mg.c:782:5
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	jl	.LBB9_98
# BB#79:                                # %for.cond595.preheader.lr.ph
	movl	36(%rsp), %edx          # 4-byte Reload
.Ltmp1095:
	.loc	3 791 30                # mg.c:791:30
	movl	%edx, %eax
	notl	%eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	.loc	3 791 19 is_stmt 0      # mg.c:791:19
	movq	336(%rsp), %rax         # 8-byte Reload
	decl	%eax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	6656(%rsp), %eax
	.loc	3 791 13                # mg.c:791:13
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rcx         # 8-byte Reload
	.loc	3 792 23 is_stmt 1      # mg.c:792:23
	movq	%rcx, %r8
	imulq	%rdi, %r8
	movq	%r8, 352(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rbx          # 8-byte Reload
.Ltmp1096:
	.loc	3 786 41                # mg.c:786:41
	movl	%ebx, %esi
	notl	%esi
.Ltmp1097:
	.loc	3 805 30                # mg.c:805:30
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	decl	%eax
.Ltmp1098:
	.loc	3 782 5 discriminator 1 # mg.c:782:5
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	%edx, %edx
	movq	%rdx, 312(%rsp)         # 8-byte Spill
	movl	%ebx, %r10d
	movq	%r10, 240(%rsp)         # 8-byte Spill
	movl	%r15d, %eax
	subl	%ebx, %eax
.Ltmp1099:
	.loc	3 784 9 discriminator 1 # mg.c:784:9
	andl	$1, %eax
	movl	%eax, 288(%rsp)         # 4-byte Spill
.Ltmp1100:
	.loc	3 786 44                # mg.c:786:44
	leal	(%rsi,%rbx,2), %eax
	.loc	3 786 13 is_stmt 0      # mg.c:786:13
	cltq
.Ltmp1101:
	.loc	3 782 5 is_stmt 1 discriminator 1 # mg.c:782:5
	movq	%rax, 232(%rsp)         # 8-byte Spill
	leaq	(,%rcx,8), %rax
	leaq	-8(%rax,%rdx,8), %rax
	imulq	%rdi, %rax
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	8(%rax,%rsi), %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	leaq	8(,%rcx,8), %rcx
	imulq	%rdi, %rcx
	decq	%rdx
	imulq	%rdi, %rdx
	leaq	8(%rsi,%rdx,8), %rbp
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rbp          # 8-byte Reload
	incl	%ebp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	leaq	-8(%rax,%rsi), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	-8(%rsi,%rdx,8), %rax
.Ltmp1102:
	.loc	3 784 9 discriminator 1 # mg.c:784:9
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	$1, %eax
	subl	%ebx, %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
.Ltmp1103:
	.loc	3 782 5 discriminator 1 # mg.c:782:5
	leaq	8(%rcx,%rsi), %r11
	addq	%rsi, %rcx
	leaq	-8(%rcx,%r10,8), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r8,8), %rax
	leaq	-8(%rax,%r10,8), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdi,8), %rax
	leaq	-8(%rax,%r10,8), %r13
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp1104:
	.loc	3 787 19                # mg.c:787:19
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
.Ltmp1105:
	.loc	3 782 5 discriminator 1 # mg.c:782:5
	leal	-1(%r15), %eax
.Ltmp1106:
	.loc	3 784 9 discriminator 1 # mg.c:784:9
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leaq	1(%r10), %rax
	.loc	3 784 38 is_stmt 0 discriminator 2 # mg.c:784:38
	movq	%rax, 272(%rsp)         # 8-byte Spill
	leal	1(%rbx), %eax
.Ltmp1107:
	#DEBUG_VALUE: interp:i1 <- [%RSP+152]
	.loc	3 782 5 is_stmt 1 discriminator 1 # mg.c:782:5
	movl	%eax, 152(%rsp)         # 4-byte Spill
	leaq	(,%r8,8), %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	leaq	(,%rdi,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	8(%rsi,%r8,8), %r14
	leaq	8(%rsi,%rdi,8), %r9
	leaq	-8(%rsi,%r10,8), %r8
	leal	-1(%rbx), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	leaq	8(%rsi), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
.Ltmp1108:
	.p2align	4, 0x90
.LBB9_80:                               # %for.cond595.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_121 Depth 2
                                        #       Child Loop BB9_123 Depth 3
                                        #     Child Loop BB9_83 Depth 2
                                        #       Child Loop BB9_87 Depth 3
                                        #       Child Loop BB9_89 Depth 3
                                        #     Child Loop BB9_93 Depth 2
                                        #       Child Loop BB9_95 Depth 3
                                        #     Child Loop BB9_117 Depth 2
                                        #       Child Loop BB9_118 Depth 3
                                        #       Child Loop BB9_115 Depth 3
	.loc	3 783 7 discriminator 1 # mg.c:783:7
	cmpl	%r12d, 36(%rsp)         # 4-byte Folded Reload
	jge	.LBB9_91
# BB#81:                                # %for.cond599.preheader.lr.ph
                                        #   in Loop: Header=BB9_80 Depth=1
.Ltmp1109:
	.loc	3 791 22                # mg.c:791:22
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	.loc	3 791 13 is_stmt 0      # mg.c:791:13
	cltq
	imulq	320(%rsp), %rax         # 8-byte Folded Reload
	movq	296(%rsp), %rcx         # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, %edx
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	312(%rsp), %rbp         # 8-byte Reload
	jge	.LBB9_121
# BB#82:                                #   in Loop: Header=BB9_80 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	movq	352(%rsp), %rdx         # 8-byte Reload
	.loc	3 792 23 is_stmt 1      # mg.c:792:23
	imulq	%rdx, %rax
	.loc	3 793 27                # mg.c:793:27
	decq	%rcx
	.loc	3 793 23 is_stmt 0      # mg.c:793:23
	imulq	%rdx, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	.loc	3 792 23 is_stmt 1      # mg.c:792:23
	leaq	(%rdx,%rax,8), %rax
	.loc	3 793 23                # mg.c:793:23
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rcx,8), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	104(%rsp), %r10         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	312(%rsp), %rdi         # 8-byte Reload
.Ltmp1110:
	.p2align	4, 0x90
.LBB9_83:                               # %for.body602.lr.ph.us
                                        #   Parent Loop BB9_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_87 Depth 3
                                        #       Child Loop BB9_89 Depth 3
	movq	%rsi, 96(%rsp)          # 8-byte Spill
.Ltmp1111:
	.loc	3 786 33                # mg.c:786:33
	movq	248(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdi,2), %eax
	.loc	3 786 13 is_stmt 0      # mg.c:786:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	cmpl	$0, 288(%rsp)           # 4-byte Folded Reload
	movq	264(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rbp
	movq	240(%rsp), %rcx         # 8-byte Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	je	.LBB9_85
# BB#84:                                # %for.body602.us.prol
                                        #   in Loop: Header=BB9_83 Depth=2
	.loc	3 787 30 is_stmt 1      # mg.c:787:30
	leaq	-1(%rdi), %rax
	.loc	3 787 22 is_stmt 0      # mg.c:787:22
	imulq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rcx
	.loc	3 787 42                # mg.c:787:42
	movq	160(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	movq	240(%rsp), %rdx         # 8-byte Reload
	.loc	3 787 22                # mg.c:787:22
	movsd	-8(%rcx,%rdx,8), %xmm3  # xmm3 = mem[0],zero
	.loc	3 787 40                # mg.c:787:40
	addsd	-8(%rax,%rdx,8), %xmm3
	.loc	3 787 19                # mg.c:787:19
	mulsd	%xmm1, %xmm3
	movq	232(%rsp), %rax         # 8-byte Reload
	.loc	3 787 13                # mg.c:787:13
	addsd	(%rbp,%rax,8), %xmm3
	.loc	3 785 46 is_stmt 1      # mg.c:785:46
	movsd	%xmm3, (%rbp,%rax,8)
	movq	272(%rsp), %rcx         # 8-byte Reload
	movl	152(%rsp), %eax         # 4-byte Reload
.Ltmp1112:
.LBB9_85:                               # %for.body602.lr.ph.us.split
                                        #   in Loop: Header=BB9_83 Depth=2
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, 24(%rsp)          # 4-byte Folded Reload
	je	.LBB9_88
# BB#86:                                # %for.body602.lr.ph.us.split.split
                                        #   in Loop: Header=BB9_83 Depth=2
	.loc	3 784 9 discriminator 1 # mg.c:784:9
	movq	296(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %ebx
	subl	%ecx, %ebx
	movq	136(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %r12
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rdx
	movq	328(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax,2), %ecx
	movq	280(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%rax,2), %r15d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_87:                               # %for.body602.us
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1113:
	.loc	3 786 13                # mg.c:786:13
	leal	(%r15,%rdi), %eax
	cltq
	.loc	3 787 22                # mg.c:787:22
	movsd	(%r12,%rdi,4), %xmm3    # xmm3 = mem[0],zero
	.loc	3 787 40 is_stmt 0      # mg.c:787:40
	addsd	(%rdx,%rdi,4), %xmm3
	.loc	3 787 19                # mg.c:787:19
	mulsd	%xmm1, %xmm3
	.loc	3 787 13                # mg.c:787:13
	addsd	(%rbp,%rax,8), %xmm3
	.loc	3 785 46 is_stmt 1      # mg.c:785:46
	movsd	%xmm3, (%rbp,%rax,8)
	.loc	3 786 13                # mg.c:786:13
	leal	(%rcx,%rdi), %eax
	cltq
	.loc	3 787 22                # mg.c:787:22
	movsd	8(%r12,%rdi,4), %xmm3   # xmm3 = mem[0],zero
	.loc	3 787 40 is_stmt 0      # mg.c:787:40
	addsd	8(%rdx,%rdi,4), %xmm3
	.loc	3 787 19                # mg.c:787:19
	mulsd	%xmm1, %xmm3
	.loc	3 787 13                # mg.c:787:13
	addsd	(%rbp,%rax,8), %xmm3
	.loc	3 785 46 is_stmt 1      # mg.c:785:46
	movsd	%xmm3, (%rbp,%rax,8)
.Ltmp1114:
	.loc	3 784 9 discriminator 1 # mg.c:784:9
	addq	$4, %rdi
	addl	$-2, %ebx
	jne	.LBB9_87
.Ltmp1115:
.LBB9_88:                               # %for.cond599.for.cond656.preheader_crit_edge.us
                                        #   in Loop: Header=BB9_83 Depth=2
	movq	296(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	movl	24(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%r10, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rbx
	jle	.LBB9_90
	.p2align	4, 0x90
.LBB9_89:                               # %for.body659.us
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp1116:
	.loc	3 791 13                # mg.c:791:13
	movslq	%edx, %rdx
	.loc	3 792 23                # mg.c:792:23
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	.loc	3 792 41 is_stmt 0      # mg.c:792:41
	addsd	-8(%rbx), %xmm3
	.loc	3 793 21 is_stmt 1      # mg.c:793:21
	addsd	(%rdi), %xmm3
	.loc	3 793 41 is_stmt 0      # mg.c:793:41
	addsd	-8(%rdi), %xmm3
	.loc	3 792 20 is_stmt 1      # mg.c:792:20
	mulsd	%xmm0, %xmm3
	.loc	3 792 13 is_stmt 0      # mg.c:792:13
	addsd	(%rbp,%rdx,8), %xmm3
	.loc	3 790 46 is_stmt 1      # mg.c:790:46
	movsd	%xmm3, (%rbp,%rdx,8)
.Ltmp1117:
	.loc	3 789 9 discriminator 1 # mg.c:789:9
	addq	$8, %rbx
	addq	$8, %rdi
	addl	$2, %edx
	decl	%ecx
	jne	.LBB9_89
.Ltmp1118:
.LBB9_90:                               # %for.inc730.us
                                        #   in Loop: Header=BB9_83 Depth=2
	movq	88(%rsp), %rdi          # 8-byte Reload
	.loc	3 783 7 discriminator 1 # mg.c:783:7
	incq	%rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 136(%rsp)         # 8-byte Folded Spill
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	%rax, %rsi
	addq	%rax, %r10
	movq	344(%rsp), %r12         # 8-byte Reload
	cmpl	%r12d, %edi
	jne	.LBB9_83
	jmp	.LBB9_91
	.p2align	4, 0x90
.LBB9_121:                              # %for.cond656.preheader
                                        #   Parent Loop BB9_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_123 Depth 3
.Ltmp1119:
	.loc	3 789 9 discriminator 1 # mg.c:789:9
	movq	296(%rsp), %rcx         # 8-byte Reload
	cmpl	$2, %ecx
	jl	.LBB9_124
# BB#122:                               # %for.body659.lr.ph
                                        #   in Loop: Header=BB9_121 Depth=2
.Ltmp1120:
	.loc	3 791 33                # mg.c:791:33
	movq	248(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rbp,2), %ecx
	.loc	3 791 13 is_stmt 0      # mg.c:791:13
	movslq	%ecx, %rcx
	imulq	8(%rsp), %rcx           # 8-byte Folded Reload
	movq	264(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rsi
	movl	24(%rsp), %edi          # 4-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%r15, %rcx
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB9_123:                              # %for.body659
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebx, %rbx
	.loc	3 792 23 is_stmt 1      # mg.c:792:23
	movsd	(%rdx), %xmm3           # xmm3 = mem[0],zero
	.loc	3 792 41 is_stmt 0      # mg.c:792:41
	addsd	-8(%rdx), %xmm3
	.loc	3 793 21 is_stmt 1      # mg.c:793:21
	addsd	(%rcx), %xmm3
	.loc	3 793 41 is_stmt 0      # mg.c:793:41
	addsd	-8(%rcx), %xmm3
	.loc	3 792 20 is_stmt 1      # mg.c:792:20
	mulsd	%xmm0, %xmm3
	.loc	3 792 13 is_stmt 0      # mg.c:792:13
	addsd	(%rsi,%rbx,8), %xmm3
	.loc	3 790 46 is_stmt 1      # mg.c:790:46
	movsd	%xmm3, (%rsi,%rbx,8)
.Ltmp1121:
	.loc	3 789 9 discriminator 1 # mg.c:789:9
	addq	$8, %rdx
	addq	$8, %rcx
	addl	$2, %ebx
	decl	%edi
	jne	.LBB9_123
.Ltmp1122:
.LBB9_124:                              # %for.inc730
                                        #   in Loop: Header=BB9_121 Depth=2
	.loc	3 783 7 discriminator 1 # mg.c:783:7
	incq	%rbp
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, %rax
	addq	%rcx, %r15
	cmpl	%r12d, %ebp
	jne	.LBB9_121
.Ltmp1123:
.LBB9_91:                               # %for.cond733.preheader
                                        #   in Loop: Header=BB9_80 Depth=1
	.loc	3 796 7 discriminator 1 # mg.c:796:7
	cmpl	$2, %r12d
	movq	296(%rsp), %r15         # 8-byte Reload
	jl	.LBB9_97
# BB#92:                                # %for.cond737.preheader.lr.ph
                                        #   in Loop: Header=BB9_80 Depth=1
.Ltmp1124:
	.loc	3 805 22                # mg.c:805:22
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	.loc	3 805 13 is_stmt 0      # mg.c:805:13
	cltq
	imulq	320(%rsp), %rax         # 8-byte Folded Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpl	%r15d, %ecx
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdx
	movl	$1, %ecx
	movq	%rax, %rbp
	movl	$1, %ebx
	jge	.LBB9_93
.Ltmp1125:
	.p2align	4, 0x90
.LBB9_117:                              # %for.body740.lr.ph.us
                                        #   Parent Loop BB9_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_118 Depth 3
                                        #       Child Loop BB9_115 Depth 3
	.loc	3 799 33 is_stmt 1      # mg.c:799:33
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	.loc	3 799 13 is_stmt 0      # mg.c:799:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %rcx
	movl	176(%rsp), %eax         # 4-byte Reload
	movq	%rdx, %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	192(%rsp), %rbp         # 8-byte Reload
	movq	184(%rsp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_118:                              # %for.body740.us
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cltq
	.loc	3 800 23 is_stmt 1      # mg.c:800:23
	movsd	(%rbp,%rsi), %xmm3      # xmm3 = mem[0],zero
	.loc	3 800 41 is_stmt 0      # mg.c:800:41
	addsd	(%rbx,%rsi), %xmm3
	.loc	3 801 21 is_stmt 1      # mg.c:801:21
	addsd	(%r13,%rsi), %xmm3
	.loc	3 801 41 is_stmt 0      # mg.c:801:41
	addsd	(%r8,%rsi), %xmm3
	.loc	3 800 20 is_stmt 1      # mg.c:800:20
	mulsd	%xmm0, %xmm3
	.loc	3 800 13 is_stmt 0      # mg.c:800:13
	addsd	(%rcx,%rax,8), %xmm3
	.loc	3 798 46 is_stmt 1      # mg.c:798:46
	movsd	%xmm3, (%rcx,%rax,8)
.Ltmp1126:
	.loc	3 797 38 discriminator 2 # mg.c:797:38
	incl	%edi
.Ltmp1127:
	#DEBUG_VALUE: interp:i1 <- %EDI
	.loc	3 797 9 is_stmt 0 discriminator 1 # mg.c:797:9
	addq	$8, %rsi
	addl	$2, %eax
	cmpl	%edi, %r15d
	jne	.LBB9_118
.Ltmp1128:
# BB#119:                               # %for.cond737.for.cond811.preheader_crit_edge.us
                                        #   in Loop: Header=BB9_117 Depth=2
	#DEBUG_VALUE: interp:i1 <- %EDI
	.loc	3 803 9 is_stmt 1 discriminator 1 # mg.c:803:9
	cmpl	$2, %r15d
	movq	64(%rsp), %r10          # 8-byte Reload
	jl	.LBB9_116
.Ltmp1129:
# BB#120:                               # %for.body814.us.preheader
                                        #   in Loop: Header=BB9_117 Depth=2
	#DEBUG_VALUE: interp:i1 <- %EDI
	.loc	3 805 38                # mg.c:805:38
	leaq	(%r11,%rdx), %rbx
	leaq	(%r14,%rdx), %rbp
	leaq	(%r9,%rdx), %rsi
	movq	224(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
.Ltmp1130:
	movl	24(%rsp), %r15d         # 4-byte Reload
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_115:                              # %for.body814.us
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	3 805 13 is_stmt 0      # mg.c:805:13
	leal	(%r10,%r12), %eax
	cltq
	.loc	3 806 24 is_stmt 1      # mg.c:806:24
	movsd	(%rbx,%r12,4), %xmm3    # xmm3 = mem[0],zero
	.loc	3 806 42 is_stmt 0      # mg.c:806:42
	addsd	(%rbp,%r12,4), %xmm3
	.loc	3 807 22 is_stmt 1      # mg.c:807:22
	addsd	-8(%rbx,%r12,4), %xmm3
	.loc	3 807 42 is_stmt 0      # mg.c:807:42
	addsd	-8(%rbp,%r12,4), %xmm3
	.loc	3 808 22 is_stmt 1      # mg.c:808:22
	addsd	(%rsi,%r12,4), %xmm3
	.loc	3 808 42 is_stmt 0      # mg.c:808:42
	addsd	(%rdi,%r12,4), %xmm3
	.loc	3 809 22 is_stmt 1      # mg.c:809:22
	addsd	-8(%rsi,%r12,4), %xmm3
	.loc	3 809 42 is_stmt 0      # mg.c:809:42
	addsd	-8(%rdi,%r12,4), %xmm3
	.loc	3 806 21 is_stmt 1      # mg.c:806:21
	mulsd	%xmm2, %xmm3
	.loc	3 806 13 is_stmt 0      # mg.c:806:13
	addsd	(%rcx,%rax,8), %xmm3
	.loc	3 804 46 is_stmt 1      # mg.c:804:46
	movsd	%xmm3, (%rcx,%rax,8)
.Ltmp1131:
	.loc	3 803 9 discriminator 1 # mg.c:803:9
	addq	$2, %r12
	decl	%r15d
	jne	.LBB9_115
.Ltmp1132:
.LBB9_116:                              # %for.inc917.us
                                        #   in Loop: Header=BB9_117 Depth=2
	movq	96(%rsp), %rcx          # 8-byte Reload
	.loc	3 796 7 discriminator 1 # mg.c:796:7
	incq	%rcx
	addq	40(%rsp), %rdx          # 8-byte Folded Reload
	movq	344(%rsp), %r12         # 8-byte Reload
	cmpl	%r12d, %ecx
	movq	296(%rsp), %r15         # 8-byte Reload
	jne	.LBB9_117
	jmp	.LBB9_97
	.p2align	4, 0x90
.LBB9_93:                               # %for.cond811.preheader
                                        #   Parent Loop BB9_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_95 Depth 3
.Ltmp1133:
	.loc	3 803 9 discriminator 1 # mg.c:803:9
	cmpl	$2, %r15d
	movq	48(%rsp), %rax          # 8-byte Reload
	jl	.LBB9_96
# BB#94:                                # %for.body814.lr.ph
                                        #   in Loop: Header=BB9_93 Depth=2
	movq	%rax, %rcx
.Ltmp1134:
	.loc	3 805 33                # mg.c:805:33
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx,2), %eax
	.loc	3 805 13 is_stmt 0      # mg.c:805:13
	cltq
	imulq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax,8), %rdx
	movq	%rcx, %rax
	movl	24(%rsp), %esi          # 4-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rcx
	.p2align	4, 0x90
.LBB9_95:                               # %for.body814
                                        #   Parent Loop BB9_80 Depth=1
                                        #     Parent Loop BB9_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rdi
	.loc	3 806 24 is_stmt 1      # mg.c:806:24
	movsd	(%r11,%rcx), %xmm3      # xmm3 = mem[0],zero
	.loc	3 806 42 is_stmt 0      # mg.c:806:42
	addsd	(%r14,%rcx), %xmm3
	.loc	3 807 22 is_stmt 1      # mg.c:807:22
	addsd	-8(%r11,%rcx), %xmm3
	.loc	3 807 42 is_stmt 0      # mg.c:807:42
	addsd	-8(%r14,%rcx), %xmm3
	.loc	3 808 22 is_stmt 1      # mg.c:808:22
	addsd	(%r9,%rcx), %xmm3
	.loc	3 808 42 is_stmt 0      # mg.c:808:42
	addsd	8(%rax,%rcx), %xmm3
	.loc	3 809 22 is_stmt 1      # mg.c:809:22
	addsd	-8(%r9,%rcx), %xmm3
	.loc	3 809 42 is_stmt 0      # mg.c:809:42
	addsd	(%rax,%rcx), %xmm3
	.loc	3 806 21 is_stmt 1      # mg.c:806:21
	mulsd	%xmm2, %xmm3
	.loc	3 806 13 is_stmt 0      # mg.c:806:13
	addsd	(%rdx,%rdi,8), %xmm3
	.loc	3 804 46 is_stmt 1      # mg.c:804:46
	movsd	%xmm3, (%rdx,%rdi,8)
.Ltmp1135:
	.loc	3 803 9 discriminator 1 # mg.c:803:9
	addq	$8, %rcx
	addl	$2, %edi
	decl	%esi
	jne	.LBB9_95
.Ltmp1136:
.LBB9_96:                               # %for.inc917
                                        #   in Loop: Header=BB9_93 Depth=2
	.loc	3 796 7 discriminator 1 # mg.c:796:7
	incq	%rbx
	addq	40(%rsp), %rbp          # 8-byte Folded Reload
	cmpl	%r12d, %ebx
	jne	.LBB9_93
.Ltmp1137:
.LBB9_97:                               # %for.inc920
                                        #   in Loop: Header=BB9_80 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	.loc	3 782 5 discriminator 1 # mg.c:782:5
	incq	%rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	addq	%rax, 112(%rsp)         # 8-byte Folded Spill
	addq	%rax, 104(%rsp)         # 8-byte Folded Spill
	addq	%rax, 208(%rsp)         # 8-byte Folded Spill
	addq	%rax, 200(%rsp)         # 8-byte Folded Spill
	addq	%rax, 216(%rsp)         # 8-byte Folded Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_80
.Ltmp1138:
.LBB9_98:                               # %if.end923
	movq	%r15, %rbx
	.loc	3 815 7                 # mg.c:815:7
	movzbl	timeron(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB9_100
# BB#99:                                # %if.then925
.Ltmp1139:
	.loc	3 815 16 is_stmt 0 discriminator 1 # mg.c:815:16
	movl	$7, %edi
	callq	timer_stop
.Ltmp1140:
.LBB9_100:                              # %if.end926
	movl	6672(%rsp), %r15d
	#DEBUG_VALUE: interp:k <- %R15D
	.loc	3 817 7 is_stmt 1       # mg.c:817:7
	cmpl	$0, debug_vec(%rip)
	movl	6664(%rsp), %ebp
	jle	.LBB9_102
.Ltmp1141:
# BB#101:                               # %if.then928
	#DEBUG_VALUE: interp:k <- %R15D
	.loc	3 818 44                # mg.c:818:44
	leal	-1(%r15), %r9d
	.loc	3 818 5 is_stmt 0       # mg.c:818:5
	movl	$.L.str.52, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	movl	%r12d, %edx
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	rep_nrm
	.loc	3 819 5 is_stmt 1       # mg.c:819:5
	movl	$.L.str.53, %r8d
	movq	128(%rsp), %rdi         # 8-byte Reload
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	6656(%rsp), %edx
	movl	%ebp, %ecx
	movl	%r15d, %r9d
	callq	rep_nrm
.Ltmp1142:
.LBB9_102:                              # %if.end930
	#DEBUG_VALUE: interp:k <- %R15D
	.loc	3 822 20                # mg.c:822:20
	cmpl	%r15d, debug_vec+20(%rip)
	movq	48(%rsp), %rdi          # 8-byte Reload
	jl	.LBB9_104
.Ltmp1143:
# BB#103:                               # %if.then932
	#DEBUG_VALUE: interp:k <- %R15D
	.loc	3 823 5                 # mg.c:823:5
	movl	%ebx, %esi
	movl	%r12d, %edx
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	showall
	.loc	3 824 5                 # mg.c:824:5
	movq	128(%rsp), %rdi         # 8-byte Reload
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	6656(%rsp), %edx
	movl	%ebp, %ecx
	callq	showall
.Ltmp1144:
.LBB9_104:                              # %if.end933
	#DEBUG_VALUE: interp:k <- %R15D
	.loc	3 826 1                 # mg.c:826:1
	addq	$6600, %rsp             # imm = 0x19C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
.Ltmp1145:
	popq	%rbp
	retq
.Ltmp1146:
.Lfunc_end9:
	.size	interp, .Lfunc_end9-interp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	print_results
	.p2align	4, 0x90
	.type	print_results,@function
print_results:                          # @print_results
.Lfunc_begin10:
	.file	7 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/print_results.c"
	.loc	7 10 0                  # print_results.c:10:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1147:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1148:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1149:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1150:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1151:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1152:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp1153:
	.cfi_def_cfa_offset 96
.Ltmp1154:
	.cfi_offset %rbx, -56
.Ltmp1155:
	.cfi_offset %r12, -48
.Ltmp1156:
	.cfi_offset %r13, -40
.Ltmp1157:
	.cfi_offset %r14, -32
.Ltmp1158:
	.cfi_offset %r15, -24
.Ltmp1159:
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
.Ltmp1160:
	#DEBUG_VALUE: print_results:mops <- [%RSP+8]
	movsd	%xmm0, (%rsp)           # 8-byte Spill
.Ltmp1161:
	#DEBUG_VALUE: print_results:t <- [%RSP+0]
	movl	%r9d, %r14d
.Ltmp1162:
	#DEBUG_VALUE: print_results:niter <- %R14D
	movl	%r8d, %r12d
.Ltmp1163:
	#DEBUG_VALUE: print_results:n3 <- %R12D
	movl	%ecx, %r13d
.Ltmp1164:
	#DEBUG_VALUE: print_results:n2 <- %R13D
	movl	%edx, %r15d
.Ltmp1165:
	#DEBUG_VALUE: print_results:n1 <- %R15D
	movl	%esi, %ebx
.Ltmp1166:
	#DEBUG_VALUE: print_results:class <- %EBX
	movq	%rdi, %rbp
	#DEBUG_VALUE: print_results:optype <- undef
	#DEBUG_VALUE: print_results:verified <- undef
.Ltmp1167:
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	7 14 3 prologue_end     # print_results.c:14:3
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
.Ltmp1168:
	.loc	7 15 3                  # print_results.c:15:3
	movl	$.L.str.1.12, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
.Ltmp1169:
	#DEBUG_VALUE: print_results:class <- %ESI
	callq	printf
.Ltmp1170:
	.loc	7 22 20                 # print_results.c:22:20
	movl	%r12d, %eax
	orl	%r13d, %eax
	je	.LBB10_1
.Ltmp1171:
# BB#7:                                 # %if.else30
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	7 36 5                  # print_results.c:36:5
	movl	$.L.str.5.16, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp1172:
	movl	%r13d, %edx
	movl	%r12d, %ecx
	callq	printf
	jmp	.LBB10_8
.Ltmp1173:
.LBB10_1:                               # %if.then
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	7 23 29                 # print_results.c:23:29
	movzbl	(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB10_6
.Ltmp1174:
# BB#2:                                 # %land.lhs.true8
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	7 23 10 is_stmt 0 discriminator 1 # print_results.c:23:10
	movzbl	1(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB10_6
.Ltmp1175:
# BB#3:                                 # %if.then13
	#DEBUG_VALUE: print_results:class <- %ESI
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:niter <- %R14D
	.loc	7 24 33 is_stmt 1       # print_results.c:24:33
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	%r15d, %edi
	callq	ldexp
	leaq	16(%rsp), %rdi
	.loc	7 24 7 is_stmt 0 discriminator 1 # print_results.c:24:7
	movl	$.L.str.2.13, %esi
.Ltmp1176:
	movb	$1, %al
	callq	sprintf
	movl	$15, %eax
.Ltmp1177:
	#DEBUG_VALUE: print_results:j <- 14
	.loc	7 26 12 is_stmt 1       # print_results.c:26:12
	movzbl	30(%rsp), %ecx
	cmpl	$46, %ecx
	jne	.LBB10_5
.Ltmp1178:
# BB#4:                                 # %if.then21
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	7 27 17                 # print_results.c:27:17
	movb	$32, 30(%rsp)
	movl	$14, %eax
.Ltmp1179:
	#DEBUG_VALUE: print_results:j <- 13
.LBB10_5:                               # %if.end
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	.loc	7 30 17                 # print_results.c:30:17
	movb	$0, 16(%rsp,%rax)
	leaq	16(%rsp), %rsi
	.loc	7 31 7                  # print_results.c:31:7
	movl	$.L.str.3.14, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB10_8
.Ltmp1180:
.LBB10_6:                               # %if.else
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:class <- %ESI
	.loc	7 33 7                  # print_results.c:33:7
	movl	$.L.str.4.15, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
.Ltmp1181:
	callq	printf
.Ltmp1182:
.LBB10_8:                               # %if.end32
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:n3 <- %R12D
	#DEBUG_VALUE: print_results:n2 <- %R13D
	#DEBUG_VALUE: print_results:n1 <- %R15D
	#DEBUG_VALUE: print_results:name <- %RBP
	#DEBUG_VALUE: print_results:cs7 <- undef
	movq	168(%rsp), %r12
.Ltmp1183:
	#DEBUG_VALUE: print_results:cs6 <- %R12
	movq	160(%rsp), %r13
.Ltmp1184:
	#DEBUG_VALUE: print_results:cs5 <- %R13
	movq	152(%rsp), %r15
.Ltmp1185:
	#DEBUG_VALUE: print_results:cs4 <- %R15
	movq	144(%rsp), %rbp
.Ltmp1186:
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	movq	136(%rsp), %rbx
	#DEBUG_VALUE: print_results:npbversion <- undef
	#DEBUG_VALUE: print_results:compiletime <- undef
	#DEBUG_VALUE: print_results:cs1 <- undef
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	.loc	7 39 3                  # print_results.c:39:3
	movl	$.L.str.6.17, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	printf
	.loc	7 40 3                  # print_results.c:40:3
	movl	$.L.str.7.18, %edi
	movb	$1, %al
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	7 41 3                  # print_results.c:41:3
	movl	$.L.str.8.19, %edi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printf
	.loc	7 42 3                  # print_results.c:42:3
	movl	$.L.str.9.20, %edi
	xorl	%eax, %eax
	movq	96(%rsp), %rsi
	callq	printf
.Ltmp1187:
	.loc	7 46 5                  # print_results.c:46:5
	movl	$.L.str.10.21, %edi
	.loc	7 43 8                  # print_results.c:43:8
	cmpl	$0, 104(%rsp)
.Ltmp1188:
	.loc	7 43 8 is_stmt 0        # print_results.c:43:8
	je	.LBB10_10
.Ltmp1189:
# BB#9:                                 # %if.then37
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	7 44 5 is_stmt 1        # print_results.c:44:5
	movl	$.L.str.11.22, %esi
	jmp	.LBB10_11
.Ltmp1190:
.LBB10_10:                              # %if.else39
	#DEBUG_VALUE: print_results:niter <- %R14D
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs6 <- %R12
	.loc	7 46 5                  # print_results.c:46:5
	movl	$.L.str.12.23, %esi
.Ltmp1191:
.LBB10_11:                              # %if.end41
	#DEBUG_VALUE: print_results:cs6 <- %R12
	#DEBUG_VALUE: print_results:cs5 <- %R13
	#DEBUG_VALUE: print_results:cs4 <- %R15
	#DEBUG_VALUE: print_results:cs3 <- %RBP
	#DEBUG_VALUE: print_results:cs2 <- %RBX
	#DEBUG_VALUE: print_results:niter <- %R14D
	xorl	%eax, %eax
	callq	printf
	movq	176(%rsp), %r14
.Ltmp1192:
	movq	112(%rsp), %rsi
.Ltmp1193:
	.loc	7 47 3                  # print_results.c:47:3
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	7 48 3                  # print_results.c:48:3
	movl	$.L.str.14.24, %edi
	xorl	%eax, %eax
	movq	120(%rsp), %rsi
	callq	printf
	.loc	7 50 3                  # print_results.c:50:3
	movl	$.L.str.15.25, %edi
	xorl	%eax, %eax
	movq	128(%rsp), %rsi
	callq	printf
	.loc	7 52 3                  # print_results.c:52:3
	movl	$.L.str.16.26, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	.loc	7 53 3                  # print_results.c:53:3
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	printf
	.loc	7 54 3                  # print_results.c:54:3
	movl	$.L.str.18.27, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	.loc	7 55 3                  # print_results.c:55:3
	movl	$.L.str.19.28, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	printf
	.loc	7 56 3                  # print_results.c:56:3
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	printf
	.loc	7 57 3                  # print_results.c:57:3
	movl	$.L.str.21.29, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	.loc	7 59 3                  # print_results.c:59:3
	movl	$.Lstr.30, %edi
	callq	puts
	.loc	7 65 1                  # print_results.c:65:1
	addq	$40, %rsp
	popq	%rbx
.Ltmp1194:
	popq	%r12
.Ltmp1195:
	popq	%r13
.Ltmp1196:
	popq	%r14
	popq	%r15
.Ltmp1197:
	popq	%rbp
.Ltmp1198:
	retq
.Ltmp1199:
.Lfunc_end10:
	.size	print_results, .Lfunc_end10-print_results
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI11_1:
	.quad	4710765210229538816     # double 8388608
.LCPI11_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI11_3:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	randlc
	.p2align	4, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
.Lfunc_begin11:
	.file	8 "/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common/randdp.c"
	.loc	8 5 0                   # randdp.c:5:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: randlc:x <- %RDI
	#DEBUG_VALUE: randlc:a <- %XMM0
	#DEBUG_VALUE: randlc:r23 <- 1.192093e-07
	#DEBUG_VALUE: randlc:r46 <- 1.421085e-14
	#DEBUG_VALUE: randlc:t23 <- 8.388608e+06
	#DEBUG_VALUE: randlc:t46 <- 7.036874e+13
	.loc	8 47 12 prologue_end    # randdp.c:47:12
	movsd	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
.Ltmp1200:
	#DEBUG_VALUE: randlc:t1 <- %XMM1
	.loc	8 48 8                  # randdp.c:48:8
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm2
.Ltmp1201:
	#DEBUG_VALUE: randlc:a1 <- %XMM2
	.loc	8 49 16                 # randdp.c:49:16
	movsd	.LCPI11_1(%rip), %xmm4  # xmm4 = mem[0],zero
	movapd	%xmm2, %xmm1
.Ltmp1202:
	mulsd	%xmm4, %xmm1
	.loc	8 49 10 is_stmt 0       # randdp.c:49:10
	subsd	%xmm1, %xmm0
.Ltmp1203:
	#DEBUG_VALUE: randlc:a2 <- %XMM0
	.loc	8 56 15 is_stmt 1       # randdp.c:56:15
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	.loc	8 56 12 is_stmt 0       # randdp.c:56:12
	movapd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
.Ltmp1204:
	#DEBUG_VALUE: randlc:t1 <- %XMM5
	.loc	8 57 8 is_stmt 1        # randdp.c:57:8
	cvttsd2si	%xmm5, %eax
	xorps	%xmm5, %xmm5
.Ltmp1205:
	cvtsi2sdl	%eax, %xmm5
	.loc	8 59 21                 # randdp.c:59:21
	movapd	%xmm0, %xmm6
	mulsd	%xmm5, %xmm6
.Ltmp1206:
	#DEBUG_VALUE: randlc:x1 <- %XMM5
	.loc	8 58 17                 # randdp.c:58:17
	mulsd	%xmm4, %xmm5
.Ltmp1207:
	.loc	8 58 11 is_stmt 0       # randdp.c:58:11
	subsd	%xmm5, %xmm1
.Ltmp1208:
	#DEBUG_VALUE: randlc:x2 <- %XMM1
	.loc	8 59 11 is_stmt 1       # randdp.c:59:11
	mulsd	%xmm1, %xmm2
.Ltmp1209:
	.loc	8 59 16 is_stmt 0       # randdp.c:59:16
	addsd	%xmm6, %xmm2
.Ltmp1210:
	#DEBUG_VALUE: randlc:t1 <- %XMM2
	.loc	8 60 19 is_stmt 1       # randdp.c:60:19
	mulsd	%xmm2, %xmm3
	.loc	8 60 8 is_stmt 0        # randdp.c:60:8
	cvttsd2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
.Ltmp1211:
	#DEBUG_VALUE: randlc:t2 <- %XMM3
	.loc	8 61 16 is_stmt 1       # randdp.c:61:16
	mulsd	%xmm4, %xmm3
.Ltmp1212:
	.loc	8 61 10 is_stmt 0       # randdp.c:61:10
	subsd	%xmm3, %xmm2
.Ltmp1213:
	#DEBUG_VALUE: randlc:z <- %XMM2
	.loc	8 62 12 is_stmt 1       # randdp.c:62:12
	mulsd	%xmm4, %xmm2
.Ltmp1214:
	.loc	8 62 21 is_stmt 0       # randdp.c:62:21
	mulsd	%xmm0, %xmm1
.Ltmp1215:
	.loc	8 62 16                 # randdp.c:62:16
	addsd	%xmm2, %xmm1
.Ltmp1216:
	#DEBUG_VALUE: randlc:t3 <- %XMM1
	.loc	8 63 19 is_stmt 1       # randdp.c:63:19
	movsd	.LCPI11_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm0
.Ltmp1217:
	mulsd	%xmm2, %xmm0
	.loc	8 63 8 is_stmt 0        # randdp.c:63:8
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
.Ltmp1218:
	#DEBUG_VALUE: randlc:t4 <- %XMM0
	.loc	8 64 17 is_stmt 1       # randdp.c:64:17
	mulsd	.LCPI11_3(%rip), %xmm0
.Ltmp1219:
	.loc	8 64 11 is_stmt 0       # randdp.c:64:11
	addsd	%xmm1, %xmm0
	.loc	8 64 6                  # randdp.c:64:6
	movsd	%xmm0, (%rdi)
	.loc	8 65 11 is_stmt 1       # randdp.c:65:11
	mulsd	%xmm2, %xmm0
.Ltmp1220:
	#DEBUG_VALUE: randlc:r <- %XMM0
	.loc	8 67 3                  # randdp.c:67:3
	retq
.Ltmp1221:
.Lfunc_end11:
	.size	randlc, .Lfunc_end11-randlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI12_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI12_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI12_2:
	.quad	4710765210229538816     # double 8388608
.LCPI12_3:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI12_4:
	.quad	-4409024035195715584    # double -70368744177664
	.text
	.globl	vranlc
	.p2align	4, 0x90
	.type	vranlc,@function
vranlc:                                 # @vranlc
.Lfunc_begin12:
	.loc	8 72 0                  # randdp.c:72:0
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
	.loc	8 122 3 prologue_end discriminator 1 # randdp.c:122:3
	testl	%edi, %edi
	jle	.LBB12_3
.Ltmp1222:
# BB#1:
	#DEBUG_VALUE: vranlc:y <- %RDX
	#DEBUG_VALUE: vranlc:a <- %XMM0
	#DEBUG_VALUE: vranlc:x <- %RSI
	#DEBUG_VALUE: vranlc:n <- %EDI
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.loc	8 115 12                # randdp.c:115:12
	mulsd	%xmm0, %xmm1
.Ltmp1223:
	#DEBUG_VALUE: vranlc:t1 <- %XMM1
	.loc	8 116 8                 # randdp.c:116:8
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
.Ltmp1224:
	cvtsi2sdl	%eax, %xmm1
.Ltmp1225:
	#DEBUG_VALUE: vranlc:a1 <- %XMM1
	movsd	.LCPI12_1(%rip), %xmm5  # xmm5 = mem[0],zero
	.loc	8 117 16                # randdp.c:117:16
	mulsd	%xmm1, %xmm5
	.loc	8 117 10 is_stmt 0      # randdp.c:117:10
	addsd	%xmm0, %xmm5
.Ltmp1226:
	#DEBUG_VALUE: vranlc:a2 <- %XMM5
	.loc	8 128 14 is_stmt 1      # randdp.c:128:14
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
.Ltmp1227:
	.loc	8 130 19                # randdp.c:130:19
	movsd	.LCPI12_2(%rip), %xmm3  # xmm3 = mem[0],zero
	.loc	8 135 21                # randdp.c:135:21
	movsd	.LCPI12_3(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI12_4(%rip), %xmm8  # xmm8 = mem[0],zero
.Ltmp1228:
	.p2align	4, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.loc	8 128 17                # randdp.c:128:17
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	.loc	8 128 14 is_stmt 0      # randdp.c:128:14
	movapd	%xmm6, %xmm7
	mulsd	%xmm0, %xmm7
.Ltmp1229:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	8 129 10 is_stmt 1      # randdp.c:129:10
	cvttsd2si	%xmm7, %eax
	xorps	%xmm7, %xmm7
.Ltmp1230:
	cvtsi2sdl	%eax, %xmm7
	.loc	8 131 23                # randdp.c:131:23
	movapd	%xmm5, %xmm2
	mulsd	%xmm7, %xmm2
.Ltmp1231:
	#DEBUG_VALUE: vranlc:x1 <- %XMM7
	.loc	8 130 19                # randdp.c:130:19
	mulsd	%xmm3, %xmm7
.Ltmp1232:
	.loc	8 130 13 is_stmt 0      # randdp.c:130:13
	subsd	%xmm7, %xmm6
.Ltmp1233:
	#DEBUG_VALUE: vranlc:x2 <- %XMM6
	.loc	8 131 13 is_stmt 1      # randdp.c:131:13
	movapd	%xmm1, %xmm7
	mulsd	%xmm6, %xmm7
	.loc	8 131 18 is_stmt 0      # randdp.c:131:18
	addsd	%xmm2, %xmm7
.Ltmp1234:
	#DEBUG_VALUE: vranlc:t1 <- %XMM7
	.loc	8 132 21 is_stmt 1      # randdp.c:132:21
	movapd	%xmm7, %xmm2
	mulsd	%xmm0, %xmm2
	.loc	8 132 10 is_stmt 0      # randdp.c:132:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp1235:
	#DEBUG_VALUE: vranlc:t2 <- %XMM2
	.loc	8 133 18 is_stmt 1      # randdp.c:133:18
	mulsd	%xmm3, %xmm2
.Ltmp1236:
	.loc	8 133 12 is_stmt 0      # randdp.c:133:12
	subsd	%xmm2, %xmm7
.Ltmp1237:
	#DEBUG_VALUE: vranlc:z <- %XMM7
	.loc	8 134 14 is_stmt 1      # randdp.c:134:14
	mulsd	%xmm3, %xmm7
.Ltmp1238:
	.loc	8 134 23 is_stmt 0      # randdp.c:134:23
	mulsd	%xmm5, %xmm6
.Ltmp1239:
	.loc	8 134 18                # randdp.c:134:18
	addsd	%xmm7, %xmm6
.Ltmp1240:
	#DEBUG_VALUE: vranlc:t3 <- %XMM6
	.loc	8 135 21 is_stmt 1      # randdp.c:135:21
	movapd	%xmm6, %xmm2
	mulsd	%xmm4, %xmm2
	.loc	8 135 10 is_stmt 0      # randdp.c:135:10
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
.Ltmp1241:
	#DEBUG_VALUE: vranlc:t4 <- %XMM2
	.loc	8 136 19 is_stmt 1      # randdp.c:136:19
	mulsd	%xmm8, %xmm2
.Ltmp1242:
	.loc	8 136 13 is_stmt 0      # randdp.c:136:13
	addsd	%xmm6, %xmm2
	.loc	8 136 8                 # randdp.c:136:8
	movsd	%xmm2, (%rsi)
	.loc	8 137 16 is_stmt 1      # randdp.c:137:16
	mulsd	%xmm4, %xmm2
	.loc	8 137 10 is_stmt 0      # randdp.c:137:10
	movsd	%xmm2, (%rdx)
.Ltmp1243:
	.loc	8 122 3 is_stmt 1 discriminator 1 # randdp.c:122:3
	addq	$8, %rdx
	decl	%edi
	jne	.LBB12_2
.Ltmp1244:
.LBB12_3:                               # %for.end
	.loc	8 141 1                 # randdp.c:141:1
	retq
.Ltmp1245:
.Lfunc_end12:
	.size	vranlc, .Lfunc_end12-vranlc
	.cfi_endproc

	.globl	timer_clear
	.p2align	4, 0x90
	.type	timer_clear,@function
timer_clear:                            # @timer_clear
.Lfunc_begin13:
	.loc	5 26 0                  # c_timers.c:26:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_clear:n <- %EDI
	.loc	5 27 5 prologue_end     # c_timers.c:27:5
	movslq	%edi, %rax
	.loc	5 27 16 is_stmt 0       # c_timers.c:27:16
	movq	$0, elapsed(,%rax,8)
	.loc	5 28 1 is_stmt 1        # c_timers.c:28:1
	retq
.Ltmp1246:
.Lfunc_end13:
	.size	timer_clear, .Lfunc_end13-timer_clear
	.cfi_endproc

	.globl	timer_start
	.p2align	4, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
.Lfunc_begin14:
	.loc	5 35 0                  # c_timers.c:35:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1247:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1248:
	.cfi_def_cfa_offset 32
.Ltmp1249:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_start:n <- %EDI
	movl	%edi, %ebx
.Ltmp1250:
	#DEBUG_VALUE: timer_start:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp1251:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	5 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	5 16 13                 # c_timers.c:16:13
	movq	8(%rsp), %rax
.Ltmp1252:
	.loc	5 36 5                  # c_timers.c:36:5
	movslq	%ebx, %rcx
	.loc	5 36 14 is_stmt 0       # c_timers.c:36:14
	movq	%rax, start(,%rcx,8)
	.loc	5 37 1 is_stmt 1        # c_timers.c:37:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp1253:
	retq
.Ltmp1254:
.Lfunc_end14:
	.size	timer_start, .Lfunc_end14-timer_start
	.cfi_endproc

	.globl	timer_stop
	.p2align	4, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
.Lfunc_begin15:
	.loc	5 44 0                  # c_timers.c:44:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1255:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1256:
	.cfi_def_cfa_offset 32
.Ltmp1257:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: timer_stop:n <- %EDI
	movl	%edi, %ebx
.Ltmp1258:
	#DEBUG_VALUE: timer_stop:n <- %EBX
	leaq	8(%rsp), %rdi
.Ltmp1259:
	#DEBUG_VALUE: elapsed_time:t <- [%RDI+0]
	.loc	5 15 5 prologue_end     # c_timers.c:15:5
	callq	wtime_
	.loc	5 16 13                 # c_timers.c:16:13
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
.Ltmp1260:
	#DEBUG_VALUE: elapsed_time:t <- %XMM0
	#DEBUG_VALUE: timer_stop:now <- %XMM0
	.loc	5 48 15                 # c_timers.c:48:15
	movslq	%ebx, %rax
	.loc	5 48 13 is_stmt 0       # c_timers.c:48:13
	subsd	start(,%rax,8), %xmm0
.Ltmp1261:
	#DEBUG_VALUE: timer_stop:t <- %XMM0
	.loc	5 49 16 is_stmt 1       # c_timers.c:49:16
	addsd	elapsed(,%rax,8), %xmm0
.Ltmp1262:
	movsd	%xmm0, elapsed(,%rax,8)
	.loc	5 51 1                  # c_timers.c:51:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp1263:
	retq
.Ltmp1264:
.Lfunc_end15:
	.size	timer_stop, .Lfunc_end15-timer_stop
	.cfi_endproc

	.globl	timer_read
	.p2align	4, 0x90
	.type	timer_read,@function
timer_read:                             # @timer_read
.Lfunc_begin16:
	.loc	5 58 0                  # c_timers.c:58:0
	.cfi_startproc
# BB#0:                                 # %entry
	#DEBUG_VALUE: timer_read:n <- %EDI
	.loc	5 59 13 prologue_end    # c_timers.c:59:13
	movslq	%edi, %rax
	movsd	elapsed(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	.loc	5 59 5 is_stmt 0        # c_timers.c:59:5
	retq
.Ltmp1265:
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
	.loc	6 8 0 is_stmt 1         # ../common/wtime.c:8:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1266:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1267:
	.cfi_def_cfa_offset 32
.Ltmp1268:
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: wtime_:t <- %RDI
	movq	%rdi, %rbx
.Ltmp1269:
	#DEBUG_VALUE: wtime_:t <- %RBX
	leaq	(%rsp), %rdi
.Ltmp1270:
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	.loc	6 11 3 prologue_end     # ../common/wtime.c:11:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp1271:
	.loc	6 12 7                  # ../common/wtime.c:12:7
	movl	wtime_.sec(%rip), %ecx
	.loc	6 12 25 is_stmt 0 discriminator 1 # ../common/wtime.c:12:25
	movq	(%rsp), %rax
.Ltmp1272:
	.loc	6 12 7                  # ../common/wtime.c:12:7
	testl	%ecx, %ecx
	jns	.LBB17_2
.Ltmp1273:
# BB#1:                                 # %if.then
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	.loc	6 12 20 discriminator 1 # ../common/wtime.c:12:20
	movl	%eax, wtime_.sec(%rip)
.Ltmp1274:
	.loc	6 13 21 is_stmt 1       # ../common/wtime.c:13:21
	movl	%eax, %ecx
.Ltmp1275:
.LBB17_2:                               # %if.end
	#DEBUG_VALUE: wtime_:tv <- [%RDI+0]
	#DEBUG_VALUE: wtime_:t <- %RBX
	movslq	%ecx, %rcx
	.loc	6 13 19 is_stmt 0       # ../common/wtime.c:13:19
	subq	%rcx, %rax
	.loc	6 13 8                  # ../common/wtime.c:13:8
	cvtsi2sdq	%rax, %xmm0
	.loc	6 13 35                 # ../common/wtime.c:13:35
	cvtsi2sdq	8(%rsp), %xmm1
	.loc	6 13 34                 # ../common/wtime.c:13:34
	mulsd	.LCPI17_0(%rip), %xmm1
	.loc	6 13 26                 # ../common/wtime.c:13:26
	addsd	%xmm0, %xmm1
	.loc	6 13 6                  # ../common/wtime.c:13:6
	movsd	%xmm1, (%rbx)
	.loc	6 14 1 is_stmt 1        # ../common/wtime.c:14:1
	addq	$16, %rsp
	popq	%rbx
.Ltmp1276:
	retq
.Ltmp1277:
.Lfunc_end17:
	.size	wtime_, .Lfunc_end17-wtime_
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
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"init"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"benchmk"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mg3P"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"psinv"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"resid"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"rprj3"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"interp"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"norm2"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"comm3"
	.size	.L.str.10, 6

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"\n\n NAS Parallel Benchmarks (NPB3.3-SER-C) - MG Benchmark\n"
	.size	.Lstr, 58

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"mg.input"
	.size	.L.str.12, 9

	.type	.Lstr.62,@object        # @str.62
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.62:
	.asciz	" Reading from input file mg.input"
	.size	.Lstr.62, 34

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"%d\n"
	.size	.L.str.14, 4

	.type	lt,@object              # @lt
	.local	lt
	.comm	lt,4,4
	.type	nx,@object              # @nx
	.local	nx
	.comm	nx,40,16
	.type	ny,@object              # @ny
	.local	ny
	.comm	ny,40,16
	.type	nz,@object              # @nz
	.local	nz
	.comm	nz,40,16
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d%d%d"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%d"
	.size	.L.str.16, 3

	.type	.Lstr.55,@object        # @str.55
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.55:
	.asciz	" No input file. Using compiled defaults "
	.size	.Lstr.55, 41

	.type	debug_vec,@object       # @debug_vec
	.local	debug_vec
	.comm	debug_vec,32,16
	.type	Class,@object           # @Class
	.local	Class
	.comm	Class,1,1
	.type	lb,@object              # @lb
	.local	lb
	.comm	lb,1,4
	.type	m1,@object              # @m1
	.local	m1
	.comm	m1,40,16
	.type	m2,@object              # @m2
	.local	m2
	.comm	m2,40,16
	.type	m3,@object              # @m3
	.local	m3
	.comm	m3,40,16
	.type	is1,@object             # @is1
	.local	is1
	.comm	is1,1,4
	.type	ie1,@object             # @ie1
	.local	ie1
	.comm	ie1,4,4
	.type	is2,@object             # @is2
	.local	is2
	.comm	is2,4,4
	.type	ie2,@object             # @ie2
	.local	ie2
	.comm	ie2,4,4
	.type	is3,@object             # @is3
	.local	is3
	.comm	is3,4,4
	.type	ie3,@object             # @ie3
	.local	ie3
	.comm	ie3,4,4
	.type	ir,@object              # @ir
	.local	ir
	.comm	ir,40,16
	.type	.Lstr.63,@object        # @str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.63:
	.asciz	" in setup, "
	.size	.Lstr.63, 12

	.type	.Lstr.64,@object        # @str.64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.64:
	.asciz	" k  lt  nx  ny  nz  n1  n2  n3 is1 is2 is3 ie1 ie2 ie3"
	.size	.Lstr.64, 55

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n"
	.size	.L.str.45, 44

	.type	u,@object               # @u
	.local	u
	.comm	u,157635904,16
	.type	v,@object               # @v
	.local	v
	.comm	v,157635904,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" Size: %4dx%4dx%4d  (class %c)\n"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" Iterations: %3d\n"
	.size	.L.str.19, 18

	.type	r,@object               # @r
	.local	r
	.comm	r,157635904,16
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"   resid"
	.size	.L.str.54, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	" Level%2d in %8s: norms =%21.14E%21.14E\n"
	.size	.L.str.47, 41

	.type	.Lstr.66,@object        # @str.66
.Lstr.66:
	.asciz	"   "
	.size	.Lstr.66, 4

	.type	.Lstr.67,@object        # @str.67
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.67:
	.asciz	"  - - - - - - - "
	.size	.Lstr.67, 17

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"%6.3f"
	.size	.L.str.49, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"   rprj3"
	.size	.L.str.46, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"   psinv"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"z: inter"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"u: inter"
	.size	.L.str.53, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	" Initialization time: %15.3f seconds\n\n"
	.size	.L.str.21, 39

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"  iter %3d\n"
	.size	.L.str.22, 12

	.type	.Lstr.56,@object        # @str.56
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.56:
	.asciz	"\n Benchmark completed"
	.size	.Lstr.56, 22

	.type	.Lstr.61,@object        # @str.61
	.p2align	4
.Lstr.61:
	.asciz	" VERIFICATION SUCCESSFUL"
	.size	.Lstr.61, 25

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	" L2 Norm is %20.13E\n"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" Error is   %20.13E\n"
	.size	.L.str.26, 21

	.type	.Lstr.60,@object        # @str.60
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.60:
	.asciz	" VERIFICATION FAILED"
	.size	.Lstr.60, 21

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	" L2 Norm is             %20.13E\n"
	.size	.L.str.28, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	" The correct L2 Norm is %20.13E\n"
	.size	.L.str.29, 33

	.type	.Lstr.57,@object        # @str.57
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.57:
	.asciz	" Problem size unknown"
	.size	.Lstr.57, 22

	.type	.Lstr.58,@object        # @str.58
	.p2align	4
.Lstr.58:
	.asciz	" NO VERIFICATION PERFORMED"
	.size	.Lstr.58, 27

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"MG"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"          floating point"
	.size	.L.str.33, 25

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"3.3.1"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"03 Mar 2016"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"(none)"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"-I ../common "
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"randdp"
	.size	.L.str.38, 7

	.type	.Lstr.59,@object        # @str.59
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.59:
	.asciz	"  SECTION   Time (secs)"
	.size	.Lstr.59, 24

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"    --> %8s:%9.3f  (%6.2f%%)\n"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"mg-resid"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"  %-8s:%9.3f  (%6.2f%%)\n"
	.size	.L.str.42, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n\n %s Benchmark Completed.\n"
	.size	.L.str.11, 28

	.type	.L.str.1.12,@object     # @.str.1.12
.L.str.1.12:
	.asciz	" Class           =             %12c\n"
	.size	.L.str.1.12, 37

	.type	.L.str.2.13,@object     # @.str.2.13
.L.str.2.13:
	.asciz	"%15.0lf"
	.size	.L.str.2.13, 8

	.type	.L.str.3.14,@object     # @.str.3.14
.L.str.3.14:
	.asciz	" Size            =          %15s\n"
	.size	.L.str.3.14, 34

	.type	.L.str.4.15,@object     # @.str.4.15
.L.str.4.15:
	.asciz	" Size            =             %12d\n"
	.size	.L.str.4.15, 37

	.type	.L.str.5.16,@object     # @.str.5.16
.L.str.5.16:
	.asciz	" Size            =           %4dx%4dx%4d\n"
	.size	.L.str.5.16, 42

	.type	.L.str.6.17,@object     # @.str.6.17
.L.str.6.17:
	.asciz	" Iterations      =             %12d\n"
	.size	.L.str.6.17, 37

	.type	.L.str.7.18,@object     # @.str.7.18
.L.str.7.18:
	.asciz	" Time in seconds =             %12.2lf\n"
	.size	.L.str.7.18, 40

	.type	.L.str.8.19,@object     # @.str.8.19
.L.str.8.19:
	.asciz	" Mop/s total     =          %15.2lf\n"
	.size	.L.str.8.19, 37

	.type	.L.str.9.20,@object     # @.str.9.20
.L.str.9.20:
	.asciz	" Operation type  = %24s\n"
	.size	.L.str.9.20, 25

	.type	.L.str.10.21,@object    # @.str.10.21
.L.str.10.21:
	.asciz	" Verification    =             %12s\n"
	.size	.L.str.10.21, 37

	.type	.L.str.11.22,@object    # @.str.11.22
.L.str.11.22:
	.asciz	"SUCCESSFUL"
	.size	.L.str.11.22, 11

	.type	.L.str.12.23,@object    # @.str.12.23
.L.str.12.23:
	.asciz	"UNSUCCESSFUL"
	.size	.L.str.12.23, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" Version         =             %12s\n"
	.size	.L.str.13, 37

	.type	.L.str.14.24,@object    # @.str.14.24
.L.str.14.24:
	.asciz	" Compile date    =             %12s\n"
	.size	.L.str.14.24, 37

	.type	.L.str.15.25,@object    # @.str.15.25
.L.str.15.25:
	.asciz	"\n Compile options:\n    CC           = %s\n"
	.size	.L.str.15.25, 42

	.type	.L.str.16.26,@object    # @.str.16.26
.L.str.16.26:
	.asciz	"    CLINK        = %s\n"
	.size	.L.str.16.26, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"    C_LIB        = %s\n"
	.size	.L.str.17, 23

	.type	.L.str.18.27,@object    # @.str.18.27
.L.str.18.27:
	.asciz	"    C_INC        = %s\n"
	.size	.L.str.18.27, 23

	.type	.L.str.19.28,@object    # @.str.19.28
.L.str.19.28:
	.asciz	"    CFLAGS       = %s\n"
	.size	.L.str.19.28, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"    CLINKFLAGS   = %s\n"
	.size	.L.str.20, 23

	.type	.L.str.21.29,@object    # @.str.21.29
.L.str.21.29:
	.asciz	"    RAND         = %s\n"
	.size	.L.str.21.29, 23

	.type	.Lstr.30,@object        # @str.30
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.30:
	.asciz	"\n--------------------------------------\n Please send all errors/feedbacks to:\n Center for Manycore Programming\n cmp@aces.snu.ac.kr\n http://aces.snu.ac.kr\n--------------------------------------\n"
	.size	.Lstr.30, 194

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

	.file	9 "/usr/include/libio.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	11 "/home/norouzi/Desktop/software/llvmTemp/build/bin/../lib/clang/3.9.0/include/stddef.h"
	.file	12 "/usr/include/stdio.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.0 (trunk)" # string offset=0
.Linfo_string1:
	.asciz	"mg.c"                  # string offset=28
.Linfo_string2:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/MG" # string offset=33
.Linfo_string3:
	.asciz	"nx"                    # string offset=95
.Linfo_string4:
	.asciz	"int"                   # string offset=98
.Linfo_string5:
	.asciz	"sizetype"              # string offset=102
.Linfo_string6:
	.asciz	"ny"                    # string offset=111
.Linfo_string7:
	.asciz	"nz"                    # string offset=114
.Linfo_string8:
	.asciz	"Class"                 # string offset=117
.Linfo_string9:
	.asciz	"char"                  # string offset=123
.Linfo_string10:
	.asciz	"debug_vec"             # string offset=128
.Linfo_string11:
	.asciz	"lt"                    # string offset=138
.Linfo_string12:
	.asciz	"lb"                    # string offset=141
.Linfo_string13:
	.asciz	"timeron"               # string offset=144
.Linfo_string14:
	.asciz	"false"                 # string offset=152
.Linfo_string15:
	.asciz	"true"                  # string offset=158
.Linfo_string16:
	.asciz	"logical"               # string offset=163
.Linfo_string17:
	.asciz	"u"                     # string offset=171
.Linfo_string18:
	.asciz	"double"                # string offset=173
.Linfo_string19:
	.asciz	"v"                     # string offset=180
.Linfo_string20:
	.asciz	"r"                     # string offset=182
.Linfo_string21:
	.asciz	"m1"                    # string offset=184
.Linfo_string22:
	.asciz	"m2"                    # string offset=187
.Linfo_string23:
	.asciz	"m3"                    # string offset=190
.Linfo_string24:
	.asciz	"is1"                   # string offset=193
.Linfo_string25:
	.asciz	"ie1"                   # string offset=197
.Linfo_string26:
	.asciz	"is2"                   # string offset=201
.Linfo_string27:
	.asciz	"ie2"                   # string offset=205
.Linfo_string28:
	.asciz	"is3"                   # string offset=209
.Linfo_string29:
	.asciz	"ie3"                   # string offset=213
.Linfo_string30:
	.asciz	"ir"                    # string offset=217
.Linfo_string31:
	.asciz	"../common/print_results.c" # string offset=220
.Linfo_string32:
	.asciz	"/home/norouzi/Desktop/software/benchmarks/NAS/NPB3.3-SER-C/common" # string offset=246
.Linfo_string33:
	.asciz	"../common/randdp.c"    # string offset=312
.Linfo_string34:
	.asciz	"../common/c_timers.c"  # string offset=331
.Linfo_string35:
	.asciz	"start"                 # string offset=352
.Linfo_string36:
	.asciz	"elapsed"               # string offset=358
.Linfo_string37:
	.asciz	"../common/wtime.c"     # string offset=366
.Linfo_string38:
	.asciz	"sec"                   # string offset=384
.Linfo_string39:
	.asciz	"zero3"                 # string offset=388
.Linfo_string40:
	.asciz	"oz"                    # string offset=394
.Linfo_string41:
	.asciz	"n1"                    # string offset=397
.Linfo_string42:
	.asciz	"n2"                    # string offset=400
.Linfo_string43:
	.asciz	"n3"                    # string offset=403
.Linfo_string44:
	.asciz	"i3"                    # string offset=406
.Linfo_string45:
	.asciz	"z"                     # string offset=409
.Linfo_string46:
	.asciz	"i1"                    # string offset=411
.Linfo_string47:
	.asciz	"i2"                    # string offset=414
.Linfo_string48:
	.asciz	"norm2u3"               # string offset=417
.Linfo_string49:
	.asciz	"or"                    # string offset=425
.Linfo_string50:
	.asciz	"rnm2"                  # string offset=428
.Linfo_string51:
	.asciz	"rnmu"                  # string offset=433
.Linfo_string52:
	.asciz	"dn"                    # string offset=438
.Linfo_string53:
	.asciz	"s"                     # string offset=441
.Linfo_string54:
	.asciz	"a"                     # string offset=443
.Linfo_string55:
	.asciz	"power"                 # string offset=445
.Linfo_string56:
	.asciz	"n"                     # string offset=451
.Linfo_string57:
	.asciz	"aj"                    # string offset=453
.Linfo_string58:
	.asciz	"nj"                    # string offset=456
.Linfo_string59:
	.asciz	"rdummy"                # string offset=459
.Linfo_string60:
	.asciz	"bubble"                # string offset=466
.Linfo_string61:
	.asciz	"ten"                   # string offset=473
.Linfo_string62:
	.asciz	"j1"                    # string offset=477
.Linfo_string63:
	.asciz	"j2"                    # string offset=480
.Linfo_string64:
	.asciz	"j3"                    # string offset=483
.Linfo_string65:
	.asciz	"m"                     # string offset=486
.Linfo_string66:
	.asciz	"ind"                   # string offset=488
.Linfo_string67:
	.asciz	"i"                     # string offset=492
.Linfo_string68:
	.asciz	"temp"                  # string offset=494
.Linfo_string69:
	.asciz	"j_temp"                # string offset=499
.Linfo_string70:
	.asciz	"rprj3"                 # string offset=506
.Linfo_string71:
	.asciz	"m1k"                   # string offset=512
.Linfo_string72:
	.asciz	"m2k"                   # string offset=516
.Linfo_string73:
	.asciz	"m3k"                   # string offset=520
.Linfo_string74:
	.asciz	"os"                    # string offset=524
.Linfo_string75:
	.asciz	"m1j"                   # string offset=527
.Linfo_string76:
	.asciz	"m2j"                   # string offset=531
.Linfo_string77:
	.asciz	"m3j"                   # string offset=535
.Linfo_string78:
	.asciz	"k"                     # string offset=539
.Linfo_string79:
	.asciz	"x1"                    # string offset=541
.Linfo_string80:
	.asciz	"y1"                    # string offset=544
.Linfo_string81:
	.asciz	"d2"                    # string offset=547
.Linfo_string82:
	.asciz	"y2"                    # string offset=550
.Linfo_string83:
	.asciz	"x2"                    # string offset=553
.Linfo_string84:
	.asciz	"d1"                    # string offset=556
.Linfo_string85:
	.asciz	"d3"                    # string offset=559
.Linfo_string86:
	.asciz	"j"                     # string offset=562
.Linfo_string87:
	.asciz	"elapsed_time"          # string offset=564
.Linfo_string88:
	.asciz	"t"                     # string offset=577
.Linfo_string89:
	.asciz	"main"                  # string offset=579
.Linfo_string90:
	.asciz	"setup"                 # string offset=584
.Linfo_string91:
	.asciz	"mg3P"                  # string offset=590
.Linfo_string92:
	.asciz	"comm3"                 # string offset=595
.Linfo_string93:
	.asciz	"rep_nrm"               # string offset=601
.Linfo_string94:
	.asciz	"showall"               # string offset=609
.Linfo_string95:
	.asciz	"psinv"                 # string offset=617
.Linfo_string96:
	.asciz	"interp"                # string offset=623
.Linfo_string97:
	.asciz	"resid"                 # string offset=630
.Linfo_string98:
	.asciz	"zran3"                 # string offset=636
.Linfo_string99:
	.asciz	"print_results"         # string offset=642
.Linfo_string100:
	.asciz	"randlc"                # string offset=656
.Linfo_string101:
	.asciz	"vranlc"                # string offset=663
.Linfo_string102:
	.asciz	"timer_clear"           # string offset=670
.Linfo_string103:
	.asciz	"timer_start"           # string offset=682
.Linfo_string104:
	.asciz	"timer_stop"            # string offset=694
.Linfo_string105:
	.asciz	"timer_read"            # string offset=705
.Linfo_string106:
	.asciz	"wtime_"                # string offset=716
.Linfo_string107:
	.asciz	"c"                     # string offset=723
.Linfo_string108:
	.asciz	"t_names"               # string offset=725
.Linfo_string109:
	.asciz	"fp"                    # string offset=733
.Linfo_string110:
	.asciz	"_flags"                # string offset=736
.Linfo_string111:
	.asciz	"_IO_read_ptr"          # string offset=743
.Linfo_string112:
	.asciz	"_IO_read_end"          # string offset=756
.Linfo_string113:
	.asciz	"_IO_read_base"         # string offset=769
.Linfo_string114:
	.asciz	"_IO_write_base"        # string offset=783
.Linfo_string115:
	.asciz	"_IO_write_ptr"         # string offset=798
.Linfo_string116:
	.asciz	"_IO_write_end"         # string offset=812
.Linfo_string117:
	.asciz	"_IO_buf_base"          # string offset=826
.Linfo_string118:
	.asciz	"_IO_buf_end"           # string offset=839
.Linfo_string119:
	.asciz	"_IO_save_base"         # string offset=851
.Linfo_string120:
	.asciz	"_IO_backup_base"       # string offset=865
.Linfo_string121:
	.asciz	"_IO_save_end"          # string offset=881
.Linfo_string122:
	.asciz	"_markers"              # string offset=894
.Linfo_string123:
	.asciz	"_next"                 # string offset=903
.Linfo_string124:
	.asciz	"_sbuf"                 # string offset=909
.Linfo_string125:
	.asciz	"_pos"                  # string offset=915
.Linfo_string126:
	.asciz	"_IO_marker"            # string offset=920
.Linfo_string127:
	.asciz	"_chain"                # string offset=931
.Linfo_string128:
	.asciz	"_fileno"               # string offset=938
.Linfo_string129:
	.asciz	"_flags2"               # string offset=946
.Linfo_string130:
	.asciz	"_old_offset"           # string offset=954
.Linfo_string131:
	.asciz	"long int"              # string offset=966
.Linfo_string132:
	.asciz	"__off_t"               # string offset=975
.Linfo_string133:
	.asciz	"_cur_column"           # string offset=983
.Linfo_string134:
	.asciz	"unsigned short"        # string offset=995
.Linfo_string135:
	.asciz	"_vtable_offset"        # string offset=1010
.Linfo_string136:
	.asciz	"signed char"           # string offset=1025
.Linfo_string137:
	.asciz	"_shortbuf"             # string offset=1037
.Linfo_string138:
	.asciz	"_lock"                 # string offset=1047
.Linfo_string139:
	.asciz	"_IO_lock_t"            # string offset=1053
.Linfo_string140:
	.asciz	"_offset"               # string offset=1064
.Linfo_string141:
	.asciz	"__off64_t"             # string offset=1072
.Linfo_string142:
	.asciz	"__pad1"                # string offset=1082
.Linfo_string143:
	.asciz	"__pad2"                # string offset=1089
.Linfo_string144:
	.asciz	"__pad3"                # string offset=1096
.Linfo_string145:
	.asciz	"__pad4"                # string offset=1103
.Linfo_string146:
	.asciz	"__pad5"                # string offset=1110
.Linfo_string147:
	.asciz	"long unsigned int"     # string offset=1117
.Linfo_string148:
	.asciz	"size_t"                # string offset=1135
.Linfo_string149:
	.asciz	"_mode"                 # string offset=1142
.Linfo_string150:
	.asciz	"_unused2"              # string offset=1148
.Linfo_string151:
	.asciz	"_IO_FILE"              # string offset=1157
.Linfo_string152:
	.asciz	"FILE"                  # string offset=1166
.Linfo_string153:
	.asciz	"result"                # string offset=1171
.Linfo_string154:
	.asciz	"nit"                   # string offset=1178
.Linfo_string155:
	.asciz	"tinit"                 # string offset=1182
.Linfo_string156:
	.asciz	"verify_value"          # string offset=1188
.Linfo_string157:
	.asciz	"verified"              # string offset=1201
.Linfo_string158:
	.asciz	"epsilon"               # string offset=1210
.Linfo_string159:
	.asciz	"err"                   # string offset=1218
.Linfo_string160:
	.asciz	"nn"                    # string offset=1222
.Linfo_string161:
	.asciz	"mflops"                # string offset=1225
.Linfo_string162:
	.asciz	"tmax"                  # string offset=1232
.Linfo_string163:
	.asciz	"it"                    # string offset=1237
.Linfo_string164:
	.asciz	"old2"                  # string offset=1240
.Linfo_string165:
	.asciz	"oldu"                  # string offset=1245
.Linfo_string166:
	.asciz	"ng"                    # string offset=1250
.Linfo_string167:
	.asciz	"ax"                    # string offset=1253
.Linfo_string168:
	.asciz	"mi"                    # string offset=1256
.Linfo_string169:
	.asciz	"jg"                    # string offset=1259
.Linfo_string170:
	.asciz	"x"                     # string offset=1262
.Linfo_string171:
	.asciz	"mm"                    # string offset=1264
.Linfo_string172:
	.asciz	"x0"                    # string offset=1267
.Linfo_string173:
	.asciz	"e3"                    # string offset=1270
.Linfo_string174:
	.asciz	"e2"                    # string offset=1273
.Linfo_string175:
	.asciz	"xx"                    # string offset=1276
.Linfo_string176:
	.asciz	"best"                  # string offset=1279
.Linfo_string177:
	.asciz	"i0"                    # string offset=1284
.Linfo_string178:
	.asciz	"m0"                    # string offset=1287
.Linfo_string179:
	.asciz	"e1"                    # string offset=1290
.Linfo_string180:
	.asciz	"a1"                    # string offset=1293
.Linfo_string181:
	.asciz	"a2"                    # string offset=1296
.Linfo_string182:
	.asciz	"ai"                    # string offset=1299
.Linfo_string183:
	.asciz	"kk"                    # string offset=1302
.Linfo_string184:
	.asciz	"ou"                    # string offset=1305
.Linfo_string185:
	.asciz	"u1"                    # string offset=1308
.Linfo_string186:
	.asciz	"u2"                    # string offset=1311
.Linfo_string187:
	.asciz	"ov"                    # string offset=1314
.Linfo_string188:
	.asciz	"title"                 # string offset=1317
.Linfo_string189:
	.asciz	"r1"                    # string offset=1323
.Linfo_string190:
	.asciz	"r2"                    # string offset=1326
.Linfo_string191:
	.asciz	"z1"                    # string offset=1329
.Linfo_string192:
	.asciz	"z2"                    # string offset=1332
.Linfo_string193:
	.asciz	"z3"                    # string offset=1335
.Linfo_string194:
	.asciz	"mm1"                   # string offset=1338
.Linfo_string195:
	.asciz	"mm2"                   # string offset=1342
.Linfo_string196:
	.asciz	"mm3"                   # string offset=1346
.Linfo_string197:
	.asciz	"t2"                    # string offset=1350
.Linfo_string198:
	.asciz	"t1"                    # string offset=1353
.Linfo_string199:
	.asciz	"t3"                    # string offset=1356
.Linfo_string200:
	.asciz	"size"                  # string offset=1359
.Linfo_string201:
	.asciz	"name"                  # string offset=1364
.Linfo_string202:
	.asciz	"class"                 # string offset=1369
.Linfo_string203:
	.asciz	"niter"                 # string offset=1375
.Linfo_string204:
	.asciz	"mops"                  # string offset=1381
.Linfo_string205:
	.asciz	"optype"                # string offset=1386
.Linfo_string206:
	.asciz	"cs7"                   # string offset=1393
.Linfo_string207:
	.asciz	"cs6"                   # string offset=1397
.Linfo_string208:
	.asciz	"cs5"                   # string offset=1401
.Linfo_string209:
	.asciz	"cs4"                   # string offset=1405
.Linfo_string210:
	.asciz	"cs3"                   # string offset=1409
.Linfo_string211:
	.asciz	"npbversion"            # string offset=1413
.Linfo_string212:
	.asciz	"compiletime"           # string offset=1424
.Linfo_string213:
	.asciz	"cs1"                   # string offset=1436
.Linfo_string214:
	.asciz	"cs2"                   # string offset=1440
.Linfo_string215:
	.asciz	"r23"                   # string offset=1444
.Linfo_string216:
	.asciz	"r46"                   # string offset=1448
.Linfo_string217:
	.asciz	"t23"                   # string offset=1452
.Linfo_string218:
	.asciz	"t46"                   # string offset=1456
.Linfo_string219:
	.asciz	"t4"                    # string offset=1460
.Linfo_string220:
	.asciz	"y"                     # string offset=1463
.Linfo_string221:
	.asciz	"now"                   # string offset=1465
.Linfo_string222:
	.asciz	"tv"                    # string offset=1469
.Linfo_string223:
	.asciz	"tv_sec"                # string offset=1472
.Linfo_string224:
	.asciz	"__time_t"              # string offset=1479
.Linfo_string225:
	.asciz	"tv_usec"               # string offset=1488
.Linfo_string226:
	.asciz	"__suseconds_t"         # string offset=1496
.Linfo_string227:
	.asciz	"timeval"               # string offset=1510
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	2                       # 2
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	113                     # DW_OP_breg1
	.byte	0                       # 0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	4                       # 4
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	116                     # DW_OP_breg4
	.byte	0                       # 0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	116                     # DW_OP_breg4
	.byte	0                       # 0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	113                     # DW_OP_breg1
	.byte	0                       # 0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	144                     # 144
	.byte	1                       # 
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	113                     # DW_OP_breg1
	.byte	0                       # 0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	144                     # 144
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc10:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	144                     # 144
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc11:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	144                     # 144
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc13:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc14:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc15:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc17:
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc18:
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	0
	.quad	0
.Ldebug_loc19:
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc21:
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc23:
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc25:
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc26:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc27:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc28:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc29:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc30:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc31:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc32:
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc33:
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc34:
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc35:
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc36:
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc37:
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc38:
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc39:
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc40:
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc41:
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc42:
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc43:
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc44:
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	16                      # DW_OP_constu
	.byte	1                       # 1
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc45:
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	160                     # 160
	.byte	1                       # 
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc46:
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	216                     # 88
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc47:
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc48:
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc49:
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc50:
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc51:
	.quad	.Lfunc_begin1-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc52:
	.quad	.Lfunc_begin1-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	0
	.quad	0
.Ldebug_loc53:
	.quad	.Lfunc_begin1-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc54:
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	0
	.quad	0
.Ldebug_loc55:
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc56:
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc57:
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	240                     # 112
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc58:
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc59:
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc60:
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	56                      # 56
	.quad	0
	.quad	0
.Ldebug_loc61:
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	232                     # 104
	.byte	0                       # 
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc62:
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	126                     # DW_OP_breg14
	.byte	0                       # 0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc63:
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc64:
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc65:
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	115                     # DW_OP_breg3
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc66:
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	248                     # 120
	.byte	0                       # 
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	248                     # 120
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc67:
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	48                      # 48
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	48                      # 48
	.quad	0
	.quad	0
.Ldebug_loc68:
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc69:
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	125                     # DW_OP_breg13
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc70:
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	118                     # DW_OP_breg6
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc71:
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc72:
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc73:
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc74:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc75:
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc76:
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc77:
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc78:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	0
	.quad	0
.Ldebug_loc79:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc80:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	90                      # DW_OP_reg10
	.quad	0
	.quad	0
.Ldebug_loc81:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc82:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc83:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc84:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	0
	.quad	0
.Ldebug_loc85:
	.quad	.Lfunc_begin4-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc86:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc87:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc88:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc89:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc90:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	88                      # DW_OP_reg8
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	48                      # 48
	.quad	0
	.quad	0
.Ldebug_loc91:
	.quad	.Lfunc_begin5-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	12                      # 12
	.quad	0
	.quad	0
.Ldebug_loc92:
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc93:
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc94:
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc95:
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc96:
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc97:
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	105                     # DW_OP_reg25
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	105                     # DW_OP_reg25
	.quad	0
	.quad	0
.Ldebug_loc98:
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc99:
	.quad	.Lfunc_begin6-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc100:
	.quad	.Lfunc_begin6-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc101:
	.quad	.Lfunc_begin6-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc102:
	.quad	.Lfunc_begin6-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc103:
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc104:
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	80                      # super-register DW_OP_reg0
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc105:
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc106:
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc107:
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc108:
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc109:
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc110:
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	232                     # 232
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc111:
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc112:
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc113:
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc114:
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	32                      # 32
	.quad	0
	.quad	0
.Ldebug_loc115:
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	28                      # 28
	.quad	0
	.quad	0
.Ldebug_loc116:
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc117:
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	32                      # 32
	.quad	0
	.quad	0
.Ldebug_loc118:
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	28                      # 28
	.quad	0
	.quad	0
.Ldebug_loc119:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	32                      # 32
	.quad	0
	.quad	0
.Ldebug_loc120:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc121:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc122:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	24                      # 24
	.quad	0
	.quad	0
.Ldebug_loc123:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc124:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	89                      # DW_OP_reg9
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc125:
	.quad	.Lfunc_begin8-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc126:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	48                      # 48
	.quad	0
	.quad	0
.Ldebug_loc127:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc128:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc129:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	248                     # 120
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc130:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	88                      # DW_OP_reg8
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	128                     # 128
	.byte	1                       # 
	.quad	0
	.quad	0
.Ldebug_loc131:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	204                     # 76
	.byte	0                       # 
	.quad	0
	.quad	0
.Ldebug_loc132:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1042-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc133:
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	.Ltmp1046-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	86                      # super-register DW_OP_reg6
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc134:
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	232                     # 232
	.byte	1                       # 
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	152                     # 152
	.byte	1                       # 
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc135:
	.quad	.Lfunc_begin9-.Lfunc_begin0
	.quad	.Ltmp1145-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc136:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1167-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp1167-.Lfunc_begin10
	.quad	.Ltmp1186-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc137:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1166-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1166-.Lfunc_begin10
	.quad	.Ltmp1169-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1169-.Lfunc_begin10
	.quad	.Ltmp1172-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1173-.Lfunc_begin10
	.quad	.Ltmp1176-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1180-.Lfunc_begin10
	.quad	.Ltmp1181-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	84                      # super-register DW_OP_reg4
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc138:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1165-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1165-.Lfunc_begin10
	.quad	.Ltmp1185-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	95                      # super-register DW_OP_reg15
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc139:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1164-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1164-.Lfunc_begin10
	.quad	.Ltmp1184-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	93                      # super-register DW_OP_reg13
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc140:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1163-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	88                      # super-register DW_OP_reg8
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1163-.Lfunc_begin10
	.quad	.Ltmp1183-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	92                      # super-register DW_OP_reg12
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc141:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1162-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	89                      # super-register DW_OP_reg9
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1162-.Lfunc_begin10
	.quad	.Ltmp1192-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc142:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1161-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp1161-.Lfunc_begin10
	.quad	.Ltmp1168-.Lfunc_begin10
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc143:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1160-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp1160-.Lfunc_begin10
	.quad	.Ltmp1168-.Lfunc_begin10
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
.Ldebug_loc144:
	.quad	.Ltmp1177-.Lfunc_begin10
	.quad	.Ltmp1179-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	14                      # 14
	.byte	159                     # DW_OP_stack_value
	.quad	.Ltmp1179-.Lfunc_begin10
	.quad	.Lfunc_end10-.Lfunc_begin10
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	13                      # 13
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc145:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1195-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	92                      # DW_OP_reg12
	.quad	0
	.quad	0
.Ldebug_loc146:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1196-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	93                      # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc147:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1197-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	95                      # DW_OP_reg15
	.quad	0
	.quad	0
.Ldebug_loc148:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1198-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	86                      # DW_OP_reg6
	.quad	0
	.quad	0
.Ldebug_loc149:
	.quad	.Lfunc_begin10-.Lfunc_begin10
	.quad	.Ltmp1194-.Lfunc_begin10
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc150:
	.quad	.Lfunc_begin11-.Lfunc_begin11
	.quad	.Ltmp1203-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc151:
	.quad	.Ltmp1200-.Lfunc_begin11
	.quad	.Ltmp1202-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp1204-.Lfunc_begin11
	.quad	.Ltmp1205-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	.Ltmp1210-.Lfunc_begin11
	.quad	.Ltmp1213-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc152:
	.quad	.Ltmp1201-.Lfunc_begin11
	.quad	.Ltmp1209-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc153:
	.quad	.Ltmp1203-.Lfunc_begin11
	.quad	.Ltmp1217-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc154:
	.quad	.Ltmp1206-.Lfunc_begin11
	.quad	.Ltmp1207-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc155:
	.quad	.Ltmp1208-.Lfunc_begin11
	.quad	.Ltmp1215-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc156:
	.quad	.Ltmp1211-.Lfunc_begin11
	.quad	.Ltmp1212-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	100                     # DW_OP_reg20
	.quad	0
	.quad	0
.Ldebug_loc157:
	.quad	.Ltmp1213-.Lfunc_begin11
	.quad	.Ltmp1214-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc158:
	.quad	.Ltmp1218-.Lfunc_begin11
	.quad	.Ltmp1219-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc159:
	.quad	.Lfunc_begin12-.Lfunc_begin11
	.quad	.Ltmp1228-.Lfunc_begin11
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc160:
	.quad	.Lfunc_begin12-.Lfunc_begin11
	.quad	.Ltmp1227-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc161:
	.quad	.Lfunc_begin12-.Lfunc_begin11
	.quad	.Ltmp1228-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	81                      # DW_OP_reg1
	.quad	0
	.quad	0
.Ldebug_loc162:
	.quad	.Ltmp1223-.Lfunc_begin11
	.quad	.Ltmp1224-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	.Ltmp1229-.Lfunc_begin11
	.quad	.Ltmp1230-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	.Ltmp1234-.Lfunc_begin11
	.quad	.Ltmp1237-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc163:
	.quad	.Ltmp1225-.Lfunc_begin11
	.quad	.Ltmp1228-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	98                      # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc164:
	.quad	.Ltmp1226-.Lfunc_begin11
	.quad	.Ltmp1228-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	102                     # DW_OP_reg22
	.quad	0
	.quad	0
.Ldebug_loc165:
	.quad	.Ltmp1231-.Lfunc_begin11
	.quad	.Ltmp1232-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc166:
	.quad	.Ltmp1233-.Lfunc_begin11
	.quad	.Ltmp1239-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc167:
	.quad	.Ltmp1235-.Lfunc_begin11
	.quad	.Ltmp1236-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc168:
	.quad	.Ltmp1237-.Lfunc_begin11
	.quad	.Ltmp1238-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	104                     # DW_OP_reg24
	.quad	0
	.quad	0
.Ldebug_loc169:
	.quad	.Ltmp1240-.Lfunc_begin11
	.quad	.Ltmp1244-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	103                     # DW_OP_reg23
	.quad	0
	.quad	0
.Ldebug_loc170:
	.quad	.Ltmp1241-.Lfunc_begin11
	.quad	.Ltmp1242-.Lfunc_begin11
	.short	1                       # Loc expr size
	.byte	99                      # DW_OP_reg19
	.quad	0
	.quad	0
.Ldebug_loc171:
	.quad	.Lfunc_begin14-.Lfunc_begin13
	.quad	.Ltmp1250-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1250-.Lfunc_begin13
	.quad	.Ltmp1253-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc172:
	.quad	.Lfunc_begin15-.Lfunc_begin13
	.quad	.Ltmp1258-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	.Ltmp1258-.Lfunc_begin13
	.quad	.Ltmp1263-.Lfunc_begin13
	.short	3                       # Loc expr size
	.byte	83                      # super-register DW_OP_reg3
	.byte	147                     # DW_OP_piece
	.byte	4                       # 4
	.quad	0
	.quad	0
.Ldebug_loc173:
	.quad	.Ltmp1259-.Lfunc_begin13
	.quad	.Ltmp1260-.Lfunc_begin13
	.short	2                       # Loc expr size
	.byte	117                     # DW_OP_breg5
	.byte	0                       # 0
	.quad	.Ltmp1260-.Lfunc_begin13
	.quad	.Ltmp1261-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc174:
	.quad	.Ltmp1260-.Lfunc_begin13
	.quad	.Ltmp1261-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc175:
	.quad	.Ltmp1261-.Lfunc_begin13
	.quad	.Ltmp1262-.Lfunc_begin13
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc176:
	.quad	.Lfunc_begin17-.Lfunc_begin17
	.quad	.Ltmp1269-.Lfunc_begin17
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp1269-.Lfunc_begin17
	.quad	.Ltmp1276-.Lfunc_begin17
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc177:
	.quad	.Ltmp1270-.Lfunc_begin17
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
	.byte	8                       # Abbreviation Code
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
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	6                       # DW_FORM_data4
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
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
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
	.byte	20                      # Abbreviation Code
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
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
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
	.byte	23                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
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
	.byte	26                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
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
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
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
	.byte	30                      # Abbreviation Code
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
	.byte	31                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
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
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
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
	.byte	34                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
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
	.byte	35                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
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
	.byte	37                      # Abbreviation Code
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
	.byte	38                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	10                      # DW_FORM_block1
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	39                      # Abbreviation Code
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
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	40                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	41                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	42                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	44                      # Abbreviation Code
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
	.byte	45                      # Abbreviation Code
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
	.byte	46                      # Abbreviation Code
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
	.byte	47                      # Abbreviation Code
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
	.byte	48                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	49                      # Abbreviation Code
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
	.byte	50                      # Abbreviation Code
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
	.byte	51                      # Abbreviation Code
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
	.byte	54                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	55                      # Abbreviation Code
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
	.byte	56                      # Abbreviation Code
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
	.byte	57                      # Abbreviation Code
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
	.byte	58                      # Abbreviation Code
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
	.byte	59                      # Abbreviation Code
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
	.byte	60                      # Abbreviation Code
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
	.byte	61                      # Abbreviation Code
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
	.byte	62                      # Abbreviation Code
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
	.byte	63                      # Abbreviation Code
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
	.byte	64                      # Abbreviation Code
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
	.long	5630                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x15f7 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	nx
	.byte	3                       # Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x52:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x59:0x15 DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ny
	.byte	2                       # Abbrev [2] 0x6e:0x15 DW_TAG_variable
	.long	.Linfo_string7          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	nz
	.byte	2                       # Abbrev [2] 0x83:0x15 DW_TAG_variable
	.long	.Linfo_string8          # DW_AT_name
	.long	152                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	Class
	.byte	5                       # Abbrev [5] 0x98:0x7 DW_TAG_base_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x9f:0x15 DW_TAG_variable
	.long	.Linfo_string10         # DW_AT_name
	.long	180                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	debug_vec
	.byte	3                       # Abbrev [3] 0xb4:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0xb9:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	8                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xc0:0x15 DW_TAG_variable
	.long	.Linfo_string11         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	lt
	.byte	7                       # Abbrev [7] 0xd5:0xb DW_TAG_variable
	.long	.Linfo_string12         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0xe0:0xb DW_TAG_variable
	.long	.Linfo_string13         # DW_AT_name
	.long	235                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0xeb:0xb DW_TAG_typedef
	.long	246                     # DW_AT_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0xf6:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0xfa:0x6 DW_TAG_enumerator
	.long	.Linfo_string14         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	10                      # Abbrev [10] 0x100:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x107:0x15 DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.long	284                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	u
	.byte	3                       # Abbrev [3] 0x11c:0xf DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x121:0x9 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.long	19704488                # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x12b:0x7 DW_TAG_base_type
	.long	.Linfo_string18         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x132:0x15 DW_TAG_variable
	.long	.Linfo_string19         # DW_AT_name
	.long	284                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	v
	.byte	2                       # Abbrev [2] 0x147:0x15 DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.long	284                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	r
	.byte	2                       # Abbrev [2] 0x15c:0x15 DW_TAG_variable
	.long	.Linfo_string21         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	m1
	.byte	2                       # Abbrev [2] 0x171:0x15 DW_TAG_variable
	.long	.Linfo_string22         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	m2
	.byte	2                       # Abbrev [2] 0x186:0x15 DW_TAG_variable
	.long	.Linfo_string23         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	m3
	.byte	7                       # Abbrev [7] 0x19b:0xb DW_TAG_variable
	.long	.Linfo_string24         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	2                       # Abbrev [2] 0x1a6:0x15 DW_TAG_variable
	.long	.Linfo_string25         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ie1
	.byte	2                       # Abbrev [2] 0x1bb:0x15 DW_TAG_variable
	.long	.Linfo_string26         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	is2
	.byte	2                       # Abbrev [2] 0x1d0:0x15 DW_TAG_variable
	.long	.Linfo_string27         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ie2
	.byte	2                       # Abbrev [2] 0x1e5:0x15 DW_TAG_variable
	.long	.Linfo_string28         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	is3
	.byte	2                       # Abbrev [2] 0x1fa:0x15 DW_TAG_variable
	.long	.Linfo_string29         # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ie3
	.byte	2                       # Abbrev [2] 0x20f:0x15 DW_TAG_variable
	.long	.Linfo_string30         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	ir
	.byte	12                      # Abbrev [12] 0x224:0x1 DW_TAG_pointer_type
	.byte	13                      # Abbrev [13] 0x225:0x5 DW_TAG_pointer_type
	.long	554                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x22a:0x10 DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x22f:0x5 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	14                      # Abbrev [14] 0x234:0x5 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x23a:0x6a DW_TAG_subprogram
	.long	.Linfo_string39         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1216                    # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x243:0xc DW_TAG_formal_parameter
	.long	.Linfo_string40         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1216                    # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x24f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1216                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x25b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1216                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x267:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1216                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x273:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1220                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x27f:0xc DW_TAG_variable
	.long	.Linfo_string45         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1218                    # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x28b:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1220                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x297:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1220                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x2a4:0xca DW_TAG_subprogram
	.long	.Linfo_string48         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x2ad:0xc DW_TAG_formal_parameter
	.long	.Linfo_string49         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2b9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2c5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2d1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	836                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2dd:0xc DW_TAG_formal_parameter
	.long	.Linfo_string50         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	837                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2e9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string51         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	837                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x2f5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string3          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	838                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x301:0xc DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	838                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x30d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string7          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	838                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x319:0xc DW_TAG_variable
	.long	.Linfo_string52         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	845                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x325:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	843                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x331:0xc DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	842                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x33d:0xc DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	840                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x349:0xc DW_TAG_variable
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	842                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x355:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	843                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x361:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	843                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x36e:0x5 DW_TAG_pointer_type
	.long	299                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x373:0x343 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string89         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	19                      # Abbrev [19] 0x38c:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240\002"
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	4963                    # DW_AT_type
	.byte	19                      # Abbrev [19] 0x39b:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\200\002"
	.long	.Linfo_string107        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	4963                    # DW_AT_type
	.byte	19                      # Abbrev [19] 0x3aa:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\300\002"
	.long	.Linfo_string108        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	4975                    # DW_AT_type
	.byte	20                      # Abbrev [20] 0x3b9:0xf DW_TAG_variable
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string67         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x3c8:0xf DW_TAG_variable
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string109        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	4992                    # DW_AT_type
	.byte	20                      # Abbrev [20] 0x3d7:0xf DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string154        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x3e6:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x3f5:0xf DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x404:0xf DW_TAG_variable
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x413:0xf DW_TAG_variable
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string155        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x422:0xb DW_TAG_variable
	.long	.Linfo_string156        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x42d:0xf DW_TAG_variable
	.long	.Ldebug_loc44           # DW_AT_location
	.long	.Linfo_string157        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	100                     # DW_AT_decl_line
	.long	235                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x43c:0xf DW_TAG_variable
	.long	.Ldebug_loc45           # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x44b:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	58
	.byte	140
	.byte	48
	.byte	226
	.byte	142
	.byte	121
	.byte	69
	.byte	62
	.long	.Linfo_string158        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x45f:0xf DW_TAG_variable
	.long	.Ldebug_loc46           # DW_AT_location
	.long	.Linfo_string50         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x46e:0xf DW_TAG_variable
	.long	.Ldebug_loc47           # DW_AT_location
	.long	.Linfo_string159        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x47d:0xf DW_TAG_variable
	.long	.Ldebug_loc48           # DW_AT_location
	.long	.Linfo_string160        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x48c:0xf DW_TAG_variable
	.long	.Ldebug_loc49           # DW_AT_location
	.long	.Linfo_string161        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	20                      # Abbrev [20] 0x49b:0xf DW_TAG_variable
	.long	.Ldebug_loc50           # DW_AT_location
	.long	.Linfo_string162        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4aa:0xb DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4b5:0xb DW_TAG_variable
	.long	.Linfo_string163        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4c0:0xb DW_TAG_variable
	.long	.Linfo_string51         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4cb:0xb DW_TAG_variable
	.long	.Linfo_string164        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4d6:0xb DW_TAG_variable
	.long	.Linfo_string165        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4e1:0x1a DW_TAG_lexical_block
	.quad	.Ltmp27                 # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp27         # DW_AT_high_pc
	.byte	24                      # Abbrev [24] 0x4ee:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string153        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x4fb:0x2d DW_TAG_inlined_subroutine
	.long	570                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.byte	218                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x506:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc19           # DW_AT_location
	.long	579                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x50f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc6            # DW_AT_location
	.long	603                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x518:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            # DW_AT_location
	.long	615                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x521:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	627                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x528:0x5a DW_TAG_inlined_subroutine
	.long	676                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.byte	221                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x533:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc18           # DW_AT_location
	.long	685                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x53c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            # DW_AT_location
	.long	709                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x545:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc10           # DW_AT_location
	.long	721                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x54e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc12           # DW_AT_location
	.long	757                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x557:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc13           # DW_AT_location
	.long	769                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x560:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc14           # DW_AT_location
	.long	781                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x569:0x9 DW_TAG_variable
	.long	.Ldebug_loc15           # DW_AT_location
	.long	793                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x572:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	805                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x578:0x9 DW_TAG_variable
	.long	.Ldebug_loc16           # DW_AT_location
	.long	817                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x582:0x5a DW_TAG_inlined_subroutine
	.long	676                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.byte	228                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x58d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc17           # DW_AT_location
	.long	685                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x596:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc8            # DW_AT_location
	.long	709                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x59f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc11           # DW_AT_location
	.long	721                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x5a8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc20           # DW_AT_location
	.long	757                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x5b1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc21           # DW_AT_location
	.long	769                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x5ba:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc22           # DW_AT_location
	.long	781                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x5c3:0x9 DW_TAG_variable
	.long	.Ldebug_loc23           # DW_AT_location
	.long	817                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x5cc:0x9 DW_TAG_variable
	.long	.Ldebug_loc24           # DW_AT_location
	.long	793                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x5d5:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	805                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x5dc:0x2d DW_TAG_inlined_subroutine
	.long	570                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges3         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.byte	238                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x5e7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc25           # DW_AT_location
	.long	579                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x5f0:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc26           # DW_AT_location
	.long	603                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x5f9:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc29           # DW_AT_location
	.long	615                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x602:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	627                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x609:0x5a DW_TAG_inlined_subroutine
	.long	676                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges4         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.byte	255                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x614:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc38           # DW_AT_location
	.long	685                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x61d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc27           # DW_AT_location
	.long	709                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x626:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc30           # DW_AT_location
	.long	721                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x62f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc33           # DW_AT_location
	.long	757                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x638:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc35           # DW_AT_location
	.long	769                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x641:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc34           # DW_AT_location
	.long	781                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x64a:0x9 DW_TAG_variable
	.long	.Ldebug_loc36           # DW_AT_location
	.long	793                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x653:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	805                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x659:0x9 DW_TAG_variable
	.long	.Ldebug_loc37           # DW_AT_location
	.long	817                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x663:0x52 DW_TAG_inlined_subroutine
	.long	676                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges5         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	271                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x66f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc28           # DW_AT_location
	.long	709                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x678:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc31           # DW_AT_location
	.long	721                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x681:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc39           # DW_AT_location
	.long	757                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x68a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc40           # DW_AT_location
	.long	769                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x693:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc41           # DW_AT_location
	.long	781                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x69c:0x9 DW_TAG_variable
	.long	.Ldebug_loc42           # DW_AT_location
	.long	817                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x6a5:0x9 DW_TAG_variable
	.long	.Ldebug_loc43           # DW_AT_location
	.long	793                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x6ae:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	805                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x6b6:0x87 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string90         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	357                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0x6cc:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc51           # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	357                     # DW_AT_decl_line
	.long	5558                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x6dc:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc52           # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	357                     # DW_AT_decl_line
	.long	5558                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x6ec:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc53           # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	357                     # DW_AT_decl_line
	.long	5558                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x6fc:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.asciz	"\320"
	.long	.Linfo_string166        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	362                     # DW_AT_decl_line
	.long	5540                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0x70c:0xc DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	359                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x718:0xc DW_TAG_variable
	.long	.Linfo_string86         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	359                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x724:0xc DW_TAG_variable
	.long	.Linfo_string167        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	361                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x730:0xc DW_TAG_variable
	.long	.Linfo_string168        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	361                     # DW_AT_decl_line
	.long	5540                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	33                      # Abbrev [33] 0x73d:0x56 DW_TAG_subprogram
	.long	.Linfo_string55         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1137                    # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	299                     # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x74a:0xc DW_TAG_formal_parameter
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1137                    # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x756:0xc DW_TAG_formal_parameter
	.long	.Linfo_string56         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1137                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x762:0xc DW_TAG_variable
	.long	.Linfo_string55         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1142                    # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x76e:0xc DW_TAG_variable
	.long	.Linfo_string57         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1139                    # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x77a:0xc DW_TAG_variable
	.long	.Linfo_string58         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1140                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x786:0xc DW_TAG_variable
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1141                    # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x793:0x76 DW_TAG_subprogram
	.long	.Linfo_string60         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0x79c:0xc DW_TAG_formal_parameter
	.long	.Linfo_string61         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
	.long	2057                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x7a8:0xc DW_TAG_formal_parameter
	.long	.Linfo_string62         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
	.long	2074                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x7b4:0xc DW_TAG_formal_parameter
	.long	.Linfo_string63         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
	.long	2074                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x7c0:0xc DW_TAG_formal_parameter
	.long	.Linfo_string64         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
	.long	2074                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x7cc:0xc DW_TAG_formal_parameter
	.long	.Linfo_string65         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1162                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x7d8:0xc DW_TAG_formal_parameter
	.long	.Linfo_string66         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1162                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x7e4:0xc DW_TAG_variable
	.long	.Linfo_string67         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1165                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x7f0:0xc DW_TAG_variable
	.long	.Linfo_string68         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1164                    # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x7fc:0xc DW_TAG_variable
	.long	.Linfo_string69         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1165                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x809:0x5 DW_TAG_pointer_type
	.long	2062                    # DW_AT_type
	.byte	3                       # Abbrev [3] 0x80e:0xc DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x813:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	2                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x81a:0x5 DW_TAG_pointer_type
	.long	2079                    # DW_AT_type
	.byte	3                       # Abbrev [3] 0x81f:0xc DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x824:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	2                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x82b:0x33b DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string98         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0x841:0xc DW_TAG_formal_parameter
	.long	.Linfo_string40         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x84d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x859:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x865:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x871:0xc DW_TAG_formal_parameter
	.long	.Linfo_string3          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x87d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	34                      # Abbrev [34] 0x889:0xd DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	918                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	32                      # Abbrev [32] 0x896:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\200\006"
	.long	.Linfo_string61         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	930                     # DW_AT_decl_line
	.long	5563                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x8a6:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\260\005"
	.long	.Linfo_string62         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	931                     # DW_AT_decl_line
	.long	5581                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x8b6:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340\004"
	.long	.Linfo_string63         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	931                     # DW_AT_decl_line
	.long	5581                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x8c6:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220\004"
	.long	.Linfo_string64         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	931                     # DW_AT_decl_line
	.long	5581                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x8d6:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320\001"
	.long	.Linfo_string169        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	932                     # DW_AT_decl_line
	.long	5599                    # DW_AT_type
	.byte	35                      # Abbrev [35] 0x8e6:0x15 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	161
	.byte	176
	.byte	185
	.byte	178
	.byte	65
	.long	.Linfo_string170        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	929                     # DW_AT_decl_line
	.long	5623                    # DW_AT_type
	.byte	35                      # Abbrev [35] 0x8fb:0x15 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	928                     # DW_AT_decl_line
	.long	5623                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x910:0xd DW_TAG_variable
	.byte	10                      # DW_AT_const_value
	.long	.Linfo_string171        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	927                     # DW_AT_decl_line
	.long	5628                    # DW_AT_type
	.byte	37                      # Abbrev [37] 0x91d:0x10 DW_TAG_variable
	.long	.Ldebug_loc65           # DW_AT_location
	.long	.Linfo_string172        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	37                      # Abbrev [37] 0x92d:0x10 DW_TAG_variable
	.long	.Ldebug_loc66           # DW_AT_location
	.long	.Linfo_string173        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x93d:0xd DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x94a:0x10 DW_TAG_variable
	.long	.Ldebug_loc67           # DW_AT_location
	.long	.Linfo_string174        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x95a:0x10 DW_TAG_variable
	.long	.Ldebug_loc68           # DW_AT_location
	.long	.Linfo_string84         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x96a:0xd DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x977:0x10 DW_TAG_variable
	.long	.Ldebug_loc69           # DW_AT_location
	.long	.Linfo_string175        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	37                      # Abbrev [37] 0x987:0x10 DW_TAG_variable
	.long	.Ldebug_loc70           # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x997:0xc DW_TAG_variable
	.long	.Linfo_string176        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	930                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	37                      # Abbrev [37] 0x9a3:0x10 DW_TAG_variable
	.long	.Ldebug_loc75           # DW_AT_location
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x9b3:0x10 DW_TAG_variable
	.long	.Ldebug_loc76           # DW_AT_location
	.long	.Linfo_string177        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9c3:0xc DW_TAG_variable
	.long	.Linfo_string45         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	920                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9cf:0xc DW_TAG_variable
	.long	.Linfo_string178        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9db:0xc DW_TAG_variable
	.long	.Linfo_string21         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9e7:0xc DW_TAG_variable
	.long	.Linfo_string179        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	924                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9f3:0xc DW_TAG_variable
	.long	.Linfo_string180        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x9ff:0xc DW_TAG_variable
	.long	.Linfo_string181        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xa0b:0xc DW_TAG_variable
	.long	.Linfo_string182        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xa17:0xc DW_TAG_variable
	.long	.Linfo_string67         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	931                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xa23:0xc DW_TAG_variable
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	934                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xa2f:0x36 DW_TAG_inlined_subroutine
	.long	1853                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges6         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	936                     # DW_AT_call_line
	.byte	38                      # Abbrev [38] 0xa3b:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	1866                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa49:0x9 DW_TAG_variable
	.long	.Ldebug_loc54           # DW_AT_location
	.long	1890                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa52:0x9 DW_TAG_variable
	.long	.Ldebug_loc55           # DW_AT_location
	.long	1902                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa5b:0x9 DW_TAG_variable
	.long	.Ldebug_loc56           # DW_AT_location
	.long	1914                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xa65:0x36 DW_TAG_inlined_subroutine
	.long	1853                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges7         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	937                     # DW_AT_call_line
	.byte	38                      # Abbrev [38] 0xa71:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	1866                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa7f:0x9 DW_TAG_variable
	.long	.Ldebug_loc57           # DW_AT_location
	.long	1890                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa88:0x9 DW_TAG_variable
	.long	.Ldebug_loc58           # DW_AT_location
	.long	1902                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xa91:0x9 DW_TAG_variable
	.long	.Ldebug_loc59           # DW_AT_location
	.long	1914                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xa9b:0x2e DW_TAG_inlined_subroutine
	.long	570                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges8         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	939                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0xaa7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc77           # DW_AT_location
	.long	579                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xab0:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc61           # DW_AT_location
	.long	591                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xab9:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc60           # DW_AT_location
	.long	615                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0xac2:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	627                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xac9:0x36 DW_TAG_inlined_subroutine
	.long	1853                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges9         # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	943                     # DW_AT_call_line
	.byte	38                      # Abbrev [38] 0xad5:0xe DW_TAG_formal_parameter
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	64
	.byte	229
	.byte	156
	.byte	48
	.byte	210
	.byte	65
	.long	1866                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xae3:0x9 DW_TAG_variable
	.long	.Ldebug_loc62           # DW_AT_location
	.long	1890                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xaec:0x9 DW_TAG_variable
	.long	.Ldebug_loc63           # DW_AT_location
	.long	1902                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xaf5:0x9 DW_TAG_variable
	.long	.Ldebug_loc64           # DW_AT_location
	.long	1914                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	39                      # Abbrev [39] 0xaff:0x33 DW_TAG_inlined_subroutine
	.long	1939                    # DW_AT_abstract_origin
	.quad	.Ltmp489                # DW_AT_low_pc
	.long	.Ltmp496-.Ltmp489       # DW_AT_high_pc
	.byte	3                       # DW_AT_call_file
	.short	988                     # DW_AT_call_line
	.byte	40                      # Abbrev [40] 0xb13:0x6 DW_TAG_formal_parameter
	.byte	10                      # DW_AT_const_value
	.long	1996                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0xb19:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	2020                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xb1f:0x9 DW_TAG_variable
	.long	.Ldebug_loc71           # DW_AT_location
	.long	2032                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xb28:0x9 DW_TAG_variable
	.long	.Ldebug_loc72           # DW_AT_location
	.long	2044                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	39                      # Abbrev [39] 0xb32:0x33 DW_TAG_inlined_subroutine
	.long	1939                    # DW_AT_abstract_origin
	.quad	.Ltmp500                # DW_AT_low_pc
	.long	.Ltmp507-.Ltmp500       # DW_AT_high_pc
	.byte	3                       # DW_AT_call_file
	.short	995                     # DW_AT_call_line
	.byte	40                      # Abbrev [40] 0xb46:0x6 DW_TAG_formal_parameter
	.byte	10                      # DW_AT_const_value
	.long	1996                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0xb4c:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	2020                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xb52:0x9 DW_TAG_variable
	.long	.Ldebug_loc73           # DW_AT_location
	.long	2032                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xb5b:0x9 DW_TAG_variable
	.long	.Ldebug_loc74           # DW_AT_location
	.long	2044                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xb66:0x84 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string92         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0xb7c:0xc DW_TAG_formal_parameter
	.long	.Linfo_string184        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xb88:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xb94:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xba0:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	34                      # Abbrev [34] 0xbac:0xd DW_TAG_formal_parameter
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string183        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	882                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xbb9:0xc DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	884                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xbc5:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	886                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xbd1:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	886                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xbdd:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	886                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xbea:0xff DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string97         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0xc00:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc78           # DW_AT_location
	.long	.Linfo_string184        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc10:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc79           # DW_AT_location
	.long	.Linfo_string187        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc20:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc80           # DW_AT_location
	.long	.Linfo_string49         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc30:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc81           # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc40:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc82           # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc50:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc83           # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc60:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc84           # DW_AT_location
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	540                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xc70:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc85           # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	540                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	32                      # Abbrev [32] 0xc80:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220\022"
	.long	.Linfo_string185        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	547                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0xc90:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360\001"
	.long	.Linfo_string186        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	547                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0xca0:0xc DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xcac:0xc DW_TAG_variable
	.long	.Linfo_string19         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	543                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xcb8:0xc DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	544                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xcc4:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	546                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xcd0:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	546                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xcdc:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	546                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xce9:0xea DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string93         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0xcff:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc86           # DW_AT_location
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd0f:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc87           # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd1f:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc88           # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd2f:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc89           # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd3f:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc90           # DW_AT_location
	.long	.Linfo_string188        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	4987                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0xd4f:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc91           # DW_AT_location
	.long	.Linfo_string183        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	870                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	32                      # Abbrev [32] 0xd5f:0xe DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	99
	.long	.Linfo_string50         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	872                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	32                      # Abbrev [32] 0xd6d:0xe DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string51         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	872                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0xd7b:0x57 DW_TAG_inlined_subroutine
	.long	676                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges10        # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	874                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0xd87:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc93           # DW_AT_location
	.long	697                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xd90:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc92           # DW_AT_location
	.long	709                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xd99:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc94           # DW_AT_location
	.long	757                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xda2:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc95           # DW_AT_location
	.long	769                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0xdab:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc96           # DW_AT_location
	.long	781                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xdb4:0x9 DW_TAG_variable
	.long	.Ldebug_loc97           # DW_AT_location
	.long	793                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0xdbd:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	805                     # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0xdc3:0x9 DW_TAG_variable
	.long	.Ldebug_loc98           # DW_AT_location
	.long	817                     # DW_AT_abstract_origin
	.byte	41                      # Abbrev [41] 0xdcc:0x5 DW_TAG_variable
	.long	841                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xdd3:0xbf DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string94         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1108                    # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0xde9:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc99           # DW_AT_location
	.long	.Linfo_string40         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1108                    # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0xdf9:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc100          # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1108                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xe09:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc101          # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1108                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0xe19:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc102          # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1108                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0xe29:0x10 DW_TAG_variable
	.long	.Ldebug_loc103          # DW_AT_location
	.long	.Linfo_string21         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1113                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0xe39:0x10 DW_TAG_variable
	.long	.Ldebug_loc104          # DW_AT_location
	.long	.Linfo_string22         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1113                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0xe49:0x10 DW_TAG_variable
	.long	.Ldebug_loc105          # DW_AT_location
	.long	.Linfo_string23         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1113                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0xe59:0x10 DW_TAG_variable
	.long	.Ldebug_loc106          # DW_AT_location
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1112                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0xe69:0x10 DW_TAG_variable
	.long	.Ldebug_loc107          # DW_AT_location
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1112                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xe79:0xc DW_TAG_variable
	.long	.Linfo_string45         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1110                    # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xe85:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	1112                    # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0xe92:0x136 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	16                      # Abbrev [16] 0xe9b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string49         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xea7:0xc DW_TAG_formal_parameter
	.long	.Linfo_string71         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xeb3:0xc DW_TAG_formal_parameter
	.long	.Linfo_string72         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xebf:0xc DW_TAG_formal_parameter
	.long	.Linfo_string73         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xecb:0xc DW_TAG_formal_parameter
	.long	.Linfo_string74         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	599                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xed7:0xc DW_TAG_formal_parameter
	.long	.Linfo_string75         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	599                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xee3:0xc DW_TAG_formal_parameter
	.long	.Linfo_string76         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	599                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xeef:0xc DW_TAG_formal_parameter
	.long	.Linfo_string77         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	599                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0xefb:0xc DW_TAG_formal_parameter
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	599                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf07:0xc DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf13:0xc DW_TAG_variable
	.long	.Linfo_string80         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf1f:0xc DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf2b:0xc DW_TAG_variable
	.long	.Linfo_string64         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf37:0xc DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	601                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf43:0xc DW_TAG_variable
	.long	.Linfo_string63         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf4f:0xc DW_TAG_variable
	.long	.Linfo_string62         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf5b:0xc DW_TAG_variable
	.long	.Linfo_string82         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf67:0xc DW_TAG_variable
	.long	.Linfo_string83         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	299                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf73:0xc DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	602                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf7f:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf8b:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xf97:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xfa3:0xc DW_TAG_variable
	.long	.Linfo_string84         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xfaf:0xc DW_TAG_variable
	.long	.Linfo_string85         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0xfbb:0xc DW_TAG_variable
	.long	.Linfo_string86         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	604                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0xfc8:0xd DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	42                      # Abbrev [42] 0xfcd:0x7 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.short	259                     # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xfd5:0x14a DW_TAG_subprogram
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string91         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	16                      # Abbrev [16] 0xfeb:0xc DW_TAG_formal_parameter
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xff7:0xc DW_TAG_formal_parameter
	.long	.Linfo_string19         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x1003:0xc DW_TAG_formal_parameter
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	416                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x100f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string54         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x101b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string107        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x1027:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x1033:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x103f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	417                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x104b:0x10 DW_TAG_variable
	.long	.Ldebug_loc116          # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	419                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x105b:0xc DW_TAG_variable
	.long	.Linfo_string86         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	419                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1067:0x6d DW_TAG_inlined_subroutine
	.long	3730                    # DW_AT_abstract_origin
	.long	.Ldebug_ranges11        # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	427                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x1073:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc108          # DW_AT_location
	.long	3775                    # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x107c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc109          # DW_AT_location
	.long	3823                    # DW_AT_abstract_origin
	.byte	43                      # Abbrev [43] 0x1085:0x9 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240\022"
	.long	3847                    # DW_AT_abstract_origin
	.byte	43                      # Abbrev [43] 0x108e:0x9 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\200\002"
	.long	3859                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x1097:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	3871                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x109d:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	3883                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x10a3:0x9 DW_TAG_variable
	.long	.Ldebug_loc110          # DW_AT_location
	.long	3895                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x10ac:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	3907                    # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x10b2:0x6 DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	3919                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x10b8:0x9 DW_TAG_variable
	.long	.Ldebug_loc111          # DW_AT_location
	.long	3931                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x10c1:0x9 DW_TAG_variable
	.long	.Ldebug_loc112          # DW_AT_location
	.long	3943                    # DW_AT_abstract_origin
	.byte	28                      # Abbrev [28] 0x10ca:0x9 DW_TAG_variable
	.long	.Ldebug_loc113          # DW_AT_location
	.long	3955                    # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x10d4:0x25 DW_TAG_inlined_subroutine
	.long	570                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges12        # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	435                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x10e0:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc114          # DW_AT_location
	.long	603                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x10e9:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc115          # DW_AT_location
	.long	615                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x10f2:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	627                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x10f9:0x25 DW_TAG_inlined_subroutine
	.long	570                     # DW_AT_abstract_origin
	.long	.Ldebug_ranges13        # DW_AT_ranges
	.byte	3                       # DW_AT_call_file
	.short	444                     # DW_AT_call_line
	.byte	26                      # Abbrev [26] 0x1105:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc117          # DW_AT_location
	.long	603                     # DW_AT_abstract_origin
	.byte	26                      # Abbrev [26] 0x110e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc118          # DW_AT_location
	.long	615                     # DW_AT_abstract_origin
	.byte	27                      # Abbrev [27] 0x1117:0x6 DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	627                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x111f:0xe3 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string95         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0x1135:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc119          # DW_AT_location
	.long	.Linfo_string49         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1145:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc120          # DW_AT_location
	.long	.Linfo_string184        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1155:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc121          # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1165:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc122          # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1175:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc123          # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	477                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1185:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc124          # DW_AT_location
	.long	.Linfo_string107        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	478                     # DW_AT_decl_line
	.long	878                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1195:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc125          # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	478                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	32                      # Abbrev [32] 0x11a5:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360\001"
	.long	.Linfo_string189        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	485                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x11b5:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220\022"
	.long	.Linfo_string190        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	485                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	17                      # Abbrev [17] 0x11c5:0xc DW_TAG_variable
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	480                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x11d1:0xc DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	481                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x11dd:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	483                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x11e9:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	483                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x11f5:0xc DW_TAG_variable
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	483                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x1202:0x161 DW_TAG_subprogram
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string96         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	679                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_APPLE_optimized
	.byte	31                      # Abbrev [31] 0x1218:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc126          # DW_AT_location
	.long	.Linfo_string40         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	679                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1228:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc127          # DW_AT_location
	.long	.Linfo_string194        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	679                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1238:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc128          # DW_AT_location
	.long	.Linfo_string195        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	679                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1248:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc129          # DW_AT_location
	.long	.Linfo_string196        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	679                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1258:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc130          # DW_AT_location
	.long	.Linfo_string184        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	680                     # DW_AT_decl_line
	.long	548                     # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1268:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc131          # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	680                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x1278:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	680                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1284:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc132          # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	680                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1294:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc135          # DW_AT_location
	.long	.Linfo_string78         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	680                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	32                      # Abbrev [32] 0x12a4:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\260#"
	.long	.Linfo_string191        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	691                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x12b4:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220\023"
	.long	.Linfo_string192        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	691                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x12c4:0x10 DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360\002"
	.long	.Linfo_string193        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	691                     # DW_AT_decl_line
	.long	4040                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x12d4:0xd DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string197        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	36                      # Abbrev [36] 0x12e1:0xd DW_TAG_variable
	.byte	1                       # DW_AT_const_value
	.long	.Linfo_string81         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x12ee:0x10 DW_TAG_variable
	.long	.Ldebug_loc133          # DW_AT_location
	.long	.Linfo_string44         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	37                      # Abbrev [37] 0x12fe:0x10 DW_TAG_variable
	.long	.Ldebug_loc134          # DW_AT_location
	.long	.Linfo_string46         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x130e:0xc DW_TAG_variable
	.long	.Linfo_string45         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	682                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x131a:0xc DW_TAG_variable
	.long	.Linfo_string17         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	683                     # DW_AT_decl_line
	.long	549                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1326:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1332:0xc DW_TAG_variable
	.long	.Linfo_string84         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x133e:0xc DW_TAG_variable
	.long	.Linfo_string85         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x134a:0xc DW_TAG_variable
	.long	.Linfo_string198        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	17                      # Abbrev [17] 0x1356:0xc DW_TAG_variable
	.long	.Linfo_string199        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	685                     # DW_AT_decl_line
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x1363:0xc DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x1368:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	4                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x136f:0xc DW_TAG_array_type
	.long	4987                    # DW_AT_type
	.byte	4                       # Abbrev [4] 0x1374:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x137b:0x5 DW_TAG_pointer_type
	.long	152                     # DW_AT_type
	.byte	13                      # Abbrev [13] 0x1380:0x5 DW_TAG_pointer_type
	.long	4997                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1385:0xb DW_TAG_typedef
	.long	5008                    # DW_AT_type
	.long	.Linfo_string152        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	44                      # Abbrev [44] 0x1390:0x17c DW_TAG_structure_type
	.long	.Linfo_string151        # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	9                       # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x1398:0xc DW_TAG_member
	.long	.Linfo_string110        # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x13a4:0xc DW_TAG_member
	.long	.Linfo_string111        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x13b0:0xc DW_TAG_member
	.long	.Linfo_string112        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x13bc:0xc DW_TAG_member
	.long	.Linfo_string113        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x13c8:0xc DW_TAG_member
	.long	.Linfo_string114        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x13d4:0xc DW_TAG_member
	.long	.Linfo_string115        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x13e0:0xd DW_TAG_member
	.long	.Linfo_string116        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x13ed:0xd DW_TAG_member
	.long	.Linfo_string117        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x13fa:0xd DW_TAG_member
	.long	.Linfo_string118        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1407:0xd DW_TAG_member
	.long	.Linfo_string119        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1414:0xd DW_TAG_member
	.long	.Linfo_string120        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1421:0xd DW_TAG_member
	.long	.Linfo_string121        # DW_AT_name
	.long	4987                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x142e:0xd DW_TAG_member
	.long	.Linfo_string122        # DW_AT_name
	.long	5388                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x143b:0xd DW_TAG_member
	.long	.Linfo_string127        # DW_AT_name
	.long	5438                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1448:0xd DW_TAG_member
	.long	.Linfo_string128        # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1455:0xd DW_TAG_member
	.long	.Linfo_string129        # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1462:0xd DW_TAG_member
	.long	.Linfo_string130        # DW_AT_name
	.long	5443                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x146f:0xd DW_TAG_member
	.long	.Linfo_string133        # DW_AT_name
	.long	5461                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x147c:0xd DW_TAG_member
	.long	.Linfo_string135        # DW_AT_name
	.long	5468                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1489:0xd DW_TAG_member
	.long	.Linfo_string137        # DW_AT_name
	.long	5475                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x1496:0xd DW_TAG_member
	.long	.Linfo_string138        # DW_AT_name
	.long	5487                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14a3:0xd DW_TAG_member
	.long	.Linfo_string140        # DW_AT_name
	.long	5499                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14b0:0xd DW_TAG_member
	.long	.Linfo_string142        # DW_AT_name
	.long	548                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14bd:0xd DW_TAG_member
	.long	.Linfo_string143        # DW_AT_name
	.long	548                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14ca:0xd DW_TAG_member
	.long	.Linfo_string144        # DW_AT_name
	.long	548                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14d7:0xd DW_TAG_member
	.long	.Linfo_string145        # DW_AT_name
	.long	548                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14e4:0xd DW_TAG_member
	.long	.Linfo_string146        # DW_AT_name
	.long	5510                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14f1:0xd DW_TAG_member
	.long	.Linfo_string149        # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	46                      # Abbrev [46] 0x14fe:0xd DW_TAG_member
	.long	.Linfo_string150        # DW_AT_name
	.long	5528                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x150c:0x5 DW_TAG_pointer_type
	.long	5393                    # DW_AT_type
	.byte	44                      # Abbrev [44] 0x1511:0x2d DW_TAG_structure_type
	.long	.Linfo_string126        # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	9                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x1519:0xc DW_TAG_member
	.long	.Linfo_string123        # DW_AT_name
	.long	5388                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x1525:0xc DW_TAG_member
	.long	.Linfo_string124        # DW_AT_name
	.long	5438                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x1531:0xc DW_TAG_member
	.long	.Linfo_string125        # DW_AT_name
	.long	75                      # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x153e:0x5 DW_TAG_pointer_type
	.long	5008                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1543:0xb DW_TAG_typedef
	.long	5454                    # DW_AT_type
	.long	.Linfo_string132        # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x154e:0x7 DW_TAG_base_type
	.long	.Linfo_string131        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x1555:0x7 DW_TAG_base_type
	.long	.Linfo_string134        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x155c:0x7 DW_TAG_base_type
	.long	.Linfo_string136        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1563:0xc DW_TAG_array_type
	.long	152                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x1568:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x156f:0x5 DW_TAG_pointer_type
	.long	5492                    # DW_AT_type
	.byte	47                      # Abbrev [47] 0x1574:0x7 DW_TAG_typedef
	.long	.Linfo_string139        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x157b:0xb DW_TAG_typedef
	.long	5454                    # DW_AT_type
	.long	.Linfo_string141        # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x1586:0xb DW_TAG_typedef
	.long	5521                    # DW_AT_type
	.long	.Linfo_string148        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x1591:0x7 DW_TAG_base_type
	.long	.Linfo_string147        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1598:0xc DW_TAG_array_type
	.long	152                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x159d:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x15a4:0x12 DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x15a9:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	4                       # Abbrev [4] 0x15af:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	3                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x15b6:0x5 DW_TAG_pointer_type
	.long	75                      # DW_AT_type
	.byte	3                       # Abbrev [3] 0x15bb:0x12 DW_TAG_array_type
	.long	299                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x15c0:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	4                       # Abbrev [4] 0x15c6:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	2                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x15cd:0x12 DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x15d2:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	4                       # Abbrev [4] 0x15d8:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	2                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x15df:0x18 DW_TAG_array_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x15e4:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	4                       # DW_AT_count
	.byte	4                       # Abbrev [4] 0x15ea:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	10                      # DW_AT_count
	.byte	4                       # Abbrev [4] 0x15f0:0x6 DW_TAG_subrange_type
	.long	82                      # DW_AT_type
	.byte	2                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	48                      # Abbrev [48] 0x15f7:0x5 DW_TAG_const_type
	.long	299                     # DW_AT_type
	.byte	48                      # Abbrev [48] 0x15fc:0x5 DW_TAG_const_type
	.long	75                      # DW_AT_type
	.byte	0                       # End Of Children Mark
.Lcu_begin1:
	.long	398                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x187 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string31         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string32         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 # DW_AT_high_pc
	.byte	9                       # Abbrev [9] 0x2a:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2e:0x6 DW_TAG_enumerator
	.long	.Linfo_string14         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	10                      # Abbrev [10] 0x34:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0x3b:0x138 DW_TAG_subprogram
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	50                      # Abbrev [50] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc136          # DW_AT_location
	.long	.Linfo_string201        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x5f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc137          # DW_AT_location
	.long	.Linfo_string202        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+152      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x6e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc138          # DW_AT_location
	.long	.Linfo_string41         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	50                      # Abbrev [50] 0x7d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc139          # DW_AT_location
	.long	.Linfo_string42         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	50                      # Abbrev [50] 0x8c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc140          # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	50                      # Abbrev [50] 0x9b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc141          # DW_AT_location
	.long	.Linfo_string203        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	50                      # Abbrev [50] 0xaa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc142          # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	50                      # Abbrev [50] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc143          # DW_AT_location
	.long	.Linfo_string204        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	51                      # Abbrev [51] 0xc8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string205        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	52                      # Abbrev [52] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string157        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	390                     # DW_AT_type
	.byte	51                      # Abbrev [51] 0xde:0xb DW_TAG_formal_parameter
	.long	.Linfo_string211        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	51                      # Abbrev [51] 0xe9:0xb DW_TAG_formal_parameter
	.long	.Linfo_string212        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	51                      # Abbrev [51] 0xf4:0xb DW_TAG_formal_parameter
	.long	.Linfo_string213        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0xff:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc149          # DW_AT_location
	.long	.Linfo_string214        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x10e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc148          # DW_AT_location
	.long	.Linfo_string210        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x11d:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc147          # DW_AT_location
	.long	.Linfo_string209        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x12c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc146          # DW_AT_location
	.long	.Linfo_string208        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	50                      # Abbrev [50] 0x13b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc145          # DW_AT_location
	.long	.Linfo_string207        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	51                      # Abbrev [51] 0x14a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string206        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.long	.Lsection_info+4987     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x155:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string200        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	371                     # DW_AT_type
	.byte	53                      # Abbrev [53] 0x163:0xf DW_TAG_variable
	.long	.Ldebug_loc144          # DW_AT_location
	.long	.Linfo_string86         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	54                      # Abbrev [54] 0x173:0xc DW_TAG_array_type
	.long	.Lsection_info+152      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x178:0x6 DW_TAG_subrange_type
	.long	383                     # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x17f:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	8                       # Abbrev [8] 0x186:0xb DW_TAG_typedef
	.long	42                      # DW_AT_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
.Lcu_begin2:
	.long	626                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x26b DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string33         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string32         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin11          # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin11 # DW_AT_high_pc
	.byte	55                      # Abbrev [55] 0x2a:0x118 DW_TAG_subprogram
	.quad	.Lfunc_begin11          # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string100        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+299      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	56                      # Abbrev [56] 0x43:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string170        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+878      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x50:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc150          # DW_AT_location
	.long	.Linfo_string54         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	57                      # Abbrev [57] 0x5f:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string215        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	36                      # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x73:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string216        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x87:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string217        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x9b:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string218        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	53                      # Abbrev [53] 0xaf:0xf DW_TAG_variable
	.long	.Ldebug_loc151          # DW_AT_location
	.long	.Linfo_string198        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0xbe:0xf DW_TAG_variable
	.long	.Ldebug_loc152          # DW_AT_location
	.long	.Linfo_string180        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0xcd:0xf DW_TAG_variable
	.long	.Ldebug_loc153          # DW_AT_location
	.long	.Linfo_string181        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0xdc:0xf DW_TAG_variable
	.long	.Ldebug_loc154          # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0xeb:0xf DW_TAG_variable
	.long	.Ldebug_loc155          # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0xfa:0xf DW_TAG_variable
	.long	.Ldebug_loc156          # DW_AT_location
	.long	.Linfo_string197        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc157          # DW_AT_location
	.long	.Linfo_string45         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	58                      # Abbrev [58] 0x118:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	98
	.long	.Linfo_string199        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x125:0xf DW_TAG_variable
	.long	.Ldebug_loc158          # DW_AT_location
	.long	.Linfo_string219        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	58                      # Abbrev [58] 0x134:0xd DW_TAG_variable
	.byte	1                       # DW_AT_location
	.byte	97
	.long	.Linfo_string20         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0x142:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin12          # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string101        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	50                      # Abbrev [50] 0x157:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc159          # DW_AT_location
	.long	.Linfo_string56         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	56                      # Abbrev [56] 0x166:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string170        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+878      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x173:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc160          # DW_AT_location
	.long	.Linfo_string54         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	50                      # Abbrev [50] 0x182:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc161          # DW_AT_location
	.long	.Linfo_string220        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	.Lsection_info+878      # DW_AT_type
	.byte	57                      # Abbrev [57] 0x191:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
	.byte	62
	.long	.Linfo_string215        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x1a5:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	61
	.long	.Linfo_string216        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x1b9:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	65
	.long	.Linfo_string217        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	57                      # Abbrev [57] 0x1cd:0x14 DW_TAG_variable
	.byte	8                       # DW_AT_const_value
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	208
	.byte	66
	.long	.Linfo_string218        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	.Lsection_info+5623     # DW_AT_type
	.byte	59                      # Abbrev [59] 0x1e1:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string67         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	53                      # Abbrev [53] 0x1ed:0xf DW_TAG_variable
	.long	.Ldebug_loc162          # DW_AT_location
	.long	.Linfo_string198        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x1fc:0xf DW_TAG_variable
	.long	.Ldebug_loc163          # DW_AT_location
	.long	.Linfo_string180        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x20b:0xf DW_TAG_variable
	.long	.Ldebug_loc164          # DW_AT_location
	.long	.Linfo_string181        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x21a:0xf DW_TAG_variable
	.long	.Ldebug_loc165          # DW_AT_location
	.long	.Linfo_string79         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x229:0xf DW_TAG_variable
	.long	.Ldebug_loc166          # DW_AT_location
	.long	.Linfo_string83         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x238:0xf DW_TAG_variable
	.long	.Ldebug_loc167          # DW_AT_location
	.long	.Linfo_string197        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x247:0xf DW_TAG_variable
	.long	.Ldebug_loc168          # DW_AT_location
	.long	.Linfo_string45         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x256:0xf DW_TAG_variable
	.long	.Ldebug_loc169          # DW_AT_location
	.long	.Linfo_string199        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x265:0xf DW_TAG_variable
	.long	.Ldebug_loc170          # DW_AT_location
	.long	.Linfo_string219        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Lcu_begin3:
	.long	363                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x164 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string34         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string32         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin13 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string35         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	start
	.byte	54                      # Abbrev [54] 0x3f:0xc DW_TAG_array_type
	.long	.Lsection_info+299      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	75                      # DW_AT_type
	.byte	64                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x4b:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	2                       # Abbrev [2] 0x52:0x15 DW_TAG_variable
	.long	.Linfo_string36         # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	elapsed
	.byte	49                      # Abbrev [49] 0x67:0x25 DW_TAG_subprogram
	.quad	.Lfunc_begin13          # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string102        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	56                      # Abbrev [56] 0x7c:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string56         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	60                      # Abbrev [60] 0x8c:0x18 DW_TAG_subprogram
	.long	.Linfo_string87         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+299      # DW_AT_type
                                        # DW_AT_APPLE_optimized
	.byte	1                       # DW_AT_inline
	.byte	61                      # Abbrev [61] 0x98:0xb DW_TAG_variable
	.long	.Linfo_string88         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0xa4:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin14          # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string103        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	50                      # Abbrev [50] 0xb9:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc171          # DW_AT_location
	.long	.Linfo_string56         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	62                      # Abbrev [62] 0xc8:0x1c DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp1251               # DW_AT_low_pc
	.long	.Ltmp1252-.Ltmp1251     # DW_AT_high_pc
	.byte	5                       # DW_AT_call_file
	.byte	36                      # DW_AT_call_line
	.byte	43                      # Abbrev [43] 0xdb:0x8 DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	117
	.byte	0
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0xe5:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin15          # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string104        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	50                      # Abbrev [50] 0xfa:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc172          # DW_AT_location
	.long	.Linfo_string56         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
	.byte	53                      # Abbrev [53] 0x109:0xf DW_TAG_variable
	.long	.Ldebug_loc174          # DW_AT_location
	.long	.Linfo_string221        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	53                      # Abbrev [53] 0x118:0xf DW_TAG_variable
	.long	.Ldebug_loc175          # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	.Lsection_info+299      # DW_AT_type
	.byte	62                      # Abbrev [62] 0x127:0x1d DW_TAG_inlined_subroutine
	.long	140                     # DW_AT_abstract_origin
	.quad	.Ltmp1259               # DW_AT_low_pc
	.long	.Ltmp1260-.Ltmp1259     # DW_AT_high_pc
	.byte	5                       # DW_AT_call_file
	.byte	47                      # DW_AT_call_line
	.byte	28                      # Abbrev [28] 0x13a:0x9 DW_TAG_variable
	.long	.Ldebug_loc173          # DW_AT_location
	.long	152                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	55                      # Abbrev [55] 0x145:0x29 DW_TAG_subprogram
	.quad	.Lfunc_begin16          # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string105        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+299      # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	56                      # Abbrev [56] 0x15e:0xf DW_TAG_formal_parameter
	.byte	3                       # DW_AT_location
	.byte	85
	.byte	147
	.byte	4
	.long	.Linfo_string56         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	.Lsection_info+75       # DW_AT_type
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
	.long	.Linfo_string37         # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string32         # DW_AT_comp_dir
                                        # DW_AT_APPLE_optimized
	.quad	.Lfunc_begin17          # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17 # DW_AT_high_pc
	.byte	49                      # Abbrev [49] 0x2a:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin17          # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17 # DW_AT_high_pc
                                        # DW_AT_APPLE_omit_frame_ptr
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string106        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_APPLE_optimized
	.byte	63                      # Abbrev [63] 0x3f:0x15 DW_TAG_variable
	.long	.Linfo_string38         # DW_AT_name
	.long	.Lsection_info+75       # DW_AT_type
	.byte	6                       # DW_AT_decl_file
	.byte	9                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	wtime_.sec
	.byte	50                      # Abbrev [50] 0x54:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc176          # DW_AT_location
	.long	.Linfo_string88         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	.Lsection_info+878      # DW_AT_type
	.byte	20                      # Abbrev [20] 0x63:0xf DW_TAG_variable
	.long	.Ldebug_loc177          # DW_AT_location
	.long	.Linfo_string222        # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	115                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	44                      # Abbrev [44] 0x73:0x21 DW_TAG_structure_type
	.long	.Linfo_string227        # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x7b:0xc DW_TAG_member
	.long	.Linfo_string223        # DW_AT_name
	.long	148                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	45                      # Abbrev [45] 0x87:0xc DW_TAG_member
	.long	.Linfo_string225        # DW_AT_name
	.long	159                     # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	64                      # Abbrev [64] 0x94:0xb DW_TAG_typedef
	.long	.Lsection_info+5454     # DW_AT_type
	.long	.Linfo_string224        # DW_AT_name
	.byte	13                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.byte	64                      # Abbrev [64] 0x9f:0xb DW_TAG_typedef
	.long	.Lsection_info+5454     # DW_AT_type
	.long	.Linfo_string226        # DW_AT_name
	.byte	13                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
.Ldebug_ranges0:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
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
	.long	5634                    # Compilation Unit Length
	.long	390                     # DIE offset
	.asciz	"m3"                    # External Name
	.long	213                     # DIE offset
	.asciz	"lb"                    # External Name
	.long	4383                    # DIE offset
	.asciz	"psinv"                 # External Name
	.long	131                     # DIE offset
	.asciz	"Class"                 # External Name
	.long	4053                    # DIE offset
	.asciz	"mg3P"                  # External Name
	.long	3050                    # DIE offset
	.asciz	"resid"                 # External Name
	.long	3539                    # DIE offset
	.asciz	"showall"               # External Name
	.long	224                     # DIE offset
	.asciz	"timeron"               # External Name
	.long	422                     # DIE offset
	.asciz	"ie1"                   # External Name
	.long	192                     # DIE offset
	.asciz	"lt"                    # External Name
	.long	464                     # DIE offset
	.asciz	"ie2"                   # External Name
	.long	506                     # DIE offset
	.asciz	"ie3"                   # External Name
	.long	159                     # DIE offset
	.asciz	"debug_vec"             # External Name
	.long	883                     # DIE offset
	.asciz	"main"                  # External Name
	.long	42                      # DIE offset
	.asciz	"nx"                    # External Name
	.long	89                      # DIE offset
	.asciz	"ny"                    # External Name
	.long	110                     # DIE offset
	.asciz	"nz"                    # External Name
	.long	2918                    # DIE offset
	.asciz	"comm3"                 # External Name
	.long	1939                    # DIE offset
	.asciz	"bubble"                # External Name
	.long	411                     # DIE offset
	.asciz	"is1"                   # External Name
	.long	443                     # DIE offset
	.asciz	"is2"                   # External Name
	.long	485                     # DIE offset
	.asciz	"is3"                   # External Name
	.long	1853                    # DIE offset
	.asciz	"power"                 # External Name
	.long	3730                    # DIE offset
	.asciz	"rprj3"                 # External Name
	.long	327                     # DIE offset
	.asciz	"r"                     # External Name
	.long	570                     # DIE offset
	.asciz	"zero3"                 # External Name
	.long	1718                    # DIE offset
	.asciz	"setup"                 # External Name
	.long	263                     # DIE offset
	.asciz	"u"                     # External Name
	.long	306                     # DIE offset
	.asciz	"v"                     # External Name
	.long	676                     # DIE offset
	.asciz	"norm2u3"               # External Name
	.long	4610                    # DIE offset
	.asciz	"interp"                # External Name
	.long	3305                    # DIE offset
	.asciz	"rep_nrm"               # External Name
	.long	527                     # DIE offset
	.asciz	"ir"                    # External Name
	.long	2091                    # DIE offset
	.asciz	"zran3"                 # External Name
	.long	348                     # DIE offset
	.asciz	"m1"                    # External Name
	.long	369                     # DIE offset
	.asciz	"m2"                    # External Name
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
	.long	630                     # Compilation Unit Length
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
	.long	5634                    # Compilation Unit Length
	.long	4997                    # DIE offset
	.asciz	"FILE"                  # External Name
	.long	5521                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	75                      # DIE offset
	.asciz	"int"                   # External Name
	.long	5443                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	5461                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	5510                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	5492                    # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	5008                    # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	5499                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	5393                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	5468                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	299                     # DIE offset
	.asciz	"double"                # External Name
	.long	5454                    # DIE offset
	.asciz	"long int"              # External Name
	.long	235                     # DIE offset
	.asciz	"logical"               # External Name
	.long	152                     # DIE offset
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
