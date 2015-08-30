	include	dos/dos_lib.i2
	include	dos/dos.i
	include	dos/dosextens.i
	include	exec/exec.i
	include	exec/memory.i
	include	exec/exec_lib.i2





;;		;determine, whether started from CLI or wb
;;	
;;		move.l	4.w,a6
;;
;;		sub.l	a1,a1
;;		jsr	_LVOFindTask(a6)
;;		move.l	d0,a4
;;		tst.l	pr_CLI(a4)
;;		bne	fromCli


		move.l	4.w,a6
		lea	DOSName(pc),a1	;open dos.library
		clr.l	d0
		jsr	_LVOOpenLibrary(a6)
		move.l	d0,_DOSBase
		beq	fully_shit


		;get size of largest FASTMEM block
		move.l	#MEMF_FAST|MEMF_LARGEST,d1
		jsr	_LVOAvailMem(a6)

		sub.l	#$0007FFFF,d0
		and.l	#$FFFC0000,d0 ;some round-down to 256kb chunks
		bpl.s	chunk_greater

		move.l	_DOSBase(pc),a6
		move.l	#chunk_less,d1
		jsr	_LVOPutStr(a6)
		bra	close_dos
chunk_greater

		;allocate that chunk
		move.l	4.w,a6
		move.l	#MEMF_FAST,d1
		move.l	d0,mem_size
		jsr	_LVOAllocMem(a6)
		move.l	d0,mem_ptr
		bne.s	got_chunk

		move.l	_DOSBase(pc),a6
		move.l	#no_mem,d1
		jsr	_LVOPutStr(a6)
		bra	close_dos
got_chunk

		move.l	_DOSBase(pc),a6


		jsr	_LVOOutput(a6)
		move.l	d0,outhandle



		lea	allocated1(pc),a0
		bsr	prstr

		move.l	mem_size(pc),d0
		bsr	prhex8

		lea	allocated2(pc),a0
		bsr	prstr

		move.l	mem_ptr(pc),d0
		bsr	prhex8
		
		lea	allocated3(pc),a0
		bsr	prstr

		





		bsr	memory_checker



free_mem
		move.l	4.w,a6
		move.l	mem_size(pc),d0
		move.l	mem_ptr(pc),a1
		jsr	_LVOFreeMem(a6)

close_dos
		move.l	4.w,a6
		move.l	_DOSBase(pc),a1
		jsr	_LVOCloseLibrary(a6)
fully_shit
		clr.l	d0
		rts		


prhex8
		lea	hexbuf(pc),a0
		move.l	a0,a1

		moveq	#8,d5
.loop
		rol.l	#4,d0
		move.b	d0,d2
		and.b	#$0F,d2
		cmp.b	#$0A,d2
		blo.s	.digit
		
		add.b	#"A"-$0A-"0",d2
.digit
		add.b	#"0",d2

		move.b	d2,(a1)+		

		subq.b	#1,d5
		bne.s	.loop
		
		
		clr.b	(a1)+
		

		bra.s	prstr		
		rts





prstr
		move.l	a0,d2
		move.l	outhandle(pc),d1
		jsr	_LVOFPuts(a6)
		rts		

prstrflush		bsr.s	prstr
		move.l	outhandle(pc),d1
		jsr	_LVOFlush(a6)
		rts




memory_checker	


		;;init RND
		
		move.l	#datestamp,d1
		jsr	_LVODateStamp(a6)


		movem.l	datestamp(pc),d5/d6/d7
		eor.l	d5,d7
		eor.l	d6,d7
		bne.s	.non_zero_rnd
		addq.l	#7,d7
.non_zero_rnd



		moveq	#1,d3	;pass counter

.main_loop
		lea	process1(pc),a0
		bsr	prstr
		move.l	d3,d0
		bsr	prhex8
		lea	process2(pc),a0
		bsr	prstr

		move.l	d7,d0
		bsr	prhex8

		lea	filling(pc),a0
		bsr	prstrflush

		move.l	d7,d6

		move.l	mem_ptr(pc),a0
		move.l	mem_size(pc),d5
		lsr.l	#5,d5 ;by 8 moves
.fill_loop
		move.l	d7,d4	;31bit, 31 & 28 bits
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		move.l	d7,(a0)+


		subq.l	#1,d5
		bne.s	.fill_loop
		
		

		

		move.l	d6,d7

		lea	process1(pc),a0
		bsr	prstr
		move.l	d3,d0
		bsr	prhex8
		lea	process2(pc),a0
		bsr	prstr

		move.l	d7,d0
		bsr	prhex8

		lea	checking(pc),a0
		bsr	prstrflush

		move.l	mem_ptr(pc),a0
		move.l	mem_size(pc),d5
		lsr.l	#5,d5 ;by 8 moves
.check_loop
		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error

		move.l	d7,d4
		lsl.l	#3,d4
		eor.l	d7,d4
		lsl.l	#2,d4
		addx.l	d7,d7
		cmp.l	(a0)+,d7
		bne.s	.error


		subq.l	#1,d5
		bne.s	.check_loop
		bra.s	.no_errors


.error
		lea	-4(a0),a5 ;store until print smth

		lea	errormsg1(pc),a0
		bsr	prstr

		move.l	a5,d0
		bsr	prhex8
		
		lea	errormsg2(pc),a0
		bsr	prstr
		
		move.l	d7,d0
		bsr	prhex8
		
		lea	errormsg3(pc),a0
		bsr	prstr
		
		move.l	(a5),d0
		bsr	prhex8
		
		lea	errormsg4(pc),a0
		bsr	prstr




.no_errors
		addq.l	#1,d3

		move.l	#SIGBREAKF_CTRL_C,d1
		jsr	_LVOCheckSignal(a6)
		tst.l	d0
		beq	.main_loop



		rts









_DOSBase		dc.l	0

mem_ptr		dc.l	0
mem_size		dc.l	0

outhandle		dc.l	0


hexbuf		dc.l	0,0,0

datestamp		dc.l	0,0,0




DOSName		dc.b	"dos.library",0
chunk_less		dc.b	"no chunk greater than 256kb!",10,0
no_mem		dc.b	"no mem appeared after AvailMem()!",10,0

allocated1		dc.b	"Allocated $",0
allocated2		dc.b	" bytes at address $",0
allocated3		dc.b	10,10,0

filling		dc.b	", Filling... ",13,0
checking		dc.b	", Checking...",13,0

errormsg1		dc.b	10,"Error at $",0
errormsg2		dc.b	", must be $",0
errormsg3		dc.b	", was $",0
errormsg4		dc.b	10,0

process1		dc.b	"Pass $",0
process2		dc.b	", seed $",0
