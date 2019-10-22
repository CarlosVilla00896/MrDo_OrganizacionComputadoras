
screen.elf:     formato del fichero elf32-bigmips


Desensamblado de la sección .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100004 	jal	400010 <main>
  40000c:	08100003 	j	40000c <start+0xc>

00400010 <main>:
  400010:	27bdffd8 	addiu	sp,sp,-40
  400014:	afbf0024 	sw	ra,36(sp)
  400018:	afb10020 	sw	s1,32(sp)
  40001c:	afb0001c 	sw	s0,28(sp)
  400020:	0c1000bf 	jal	4002fc <clear_screen>
  400024:	00002825 	move	a1,zero
  400028:	24040007 	li	a0,7
  40002c:	0c100079 	jal	4001e4 <set_color>
  400030:	2405000f 	li	a1,15
  400034:	2404001d 	li	a0,29
  400038:	0c100087 	jal	40021c <set_cursor>
  40003c:	3c041001 	lui	a0,0x1001
  400040:	24840000 	addiu	a0,a0,0
  400044:	0c1000b1 	jal	4002c4 <puts>
  400048:	27a50010 	addiu	a1,sp,16
  40004c:	27a40011 	addiu	a0,sp,17
  400050:	0c10007f 	jal	4001fc <get_color>
  400054:	00002825 	move	a1,zero
  400058:	24040004 	li	a0,4
  40005c:	0c100079 	jal	4001e4 <set_color>
  400060:	3c041001 	lui	a0,0x1001
  400064:	24840008 	addiu	a0,a0,8
  400068:	0c1000b1 	jal	4002c4 <puts>
  40006c:	93a50010 	lbu	a1,16(sp)
  400070:	93a40011 	lbu	a0,17(sp)
  400074:	3c111001 	lui	s1,0x1001
  400078:	0c100079 	jal	4001e4 <set_color>
  40007c:	2631000c 	addiu	s1,s1,12
  400080:	0c10004a 	jal	400128 <keypad_init>
  400084:	0c10004e 	jal	400138 <keypad_getkey>
  400088:	00408025 	move	s0,v0
  40008c:	24040002 	li	a0,2
  400090:	24050001 	li	a1,1
  400094:	0c100087 	jal	40021c <set_cursor>
  400098:	3202000f 	andi	v0,s0,0xf
  40009c:	2c43000a 	sltiu	v1,v0,10
  4000a0:	24440057 	addiu	a0,v0,87
  4000a4:	10600001 	beqz	v1,4000ac <main+0x9c>
  4000a8:	24440030 	addiu	a0,v0,48
  4000ac:	0c100090 	jal	400240 <put_char>
  4000b0:	24040003 	li	a0,3
  4000b4:	24050001 	li	a1,1
  4000b8:	0c100087 	jal	40021c <set_cursor>
  4000bc:	00102102 	srl	a0,s0,0x4
  4000c0:	308400ff 	andi	a0,a0,0xff
  4000c4:	2c82000a 	sltiu	v0,a0,10
  4000c8:	1040000a 	beqz	v0,4000f4 <main+0xe4>
  4000cc:	24840030 	addiu	a0,a0,48
  4000d0:	308400ff 	andi	a0,a0,0xff
  4000d4:	0c100090 	jal	400240 <put_char>
  4000d8:	1200ffea 	beqz	s0,400084 <main+0x74>
  4000dc:	2405000f 	li	a1,15
  4000e0:	2404000a 	li	a0,10
  4000e4:	0c100087 	jal	40021c <set_cursor>
  4000e8:	02202025 	move	a0,s1
  4000ec:	0c1000b1 	jal	4002c4 <puts>
  4000f0:	1000ffe4 	b	400084 <main+0x74>
  4000f4:	24840057 	addiu	a0,a0,87
  4000f8:	1000fff5 	b	4000d0 <main+0xc0>

004000fc <delay_ms>:
  4000fc:	3c08ffff 	lui	t0,0xffff
  400100:	8d090008 	lw	t1,8(t0)
  400104:	00000000 	nop
  400108:	01244820 	add	t1,t1,a0

0040010c <.dm_loop>:
  40010c:	8d0a0008 	lw	t2,8(t0)
  400110:	00000000 	nop
  400114:	0149582b 	sltu	t3,t2,t1
  400118:	1560fffc 	bnez	t3,40010c <.dm_loop>
  40011c:	00000000 	nop
  400120:	03e00008 	jr	ra
  400124:	00000000 	nop

00400128 <keypad_init>:
  400128:	3c081001 	lui	t0,0x1001
  40012c:	ad000018 	sw	zero,24(t0)
  400130:	03e00008 	jr	ra
  400134:	00000000 	nop

00400138 <keypad_getkey>:
  400138:	3c08ffff 	lui	t0,0xffff
  40013c:	81080004 	lb	t0,4(t0)
  400140:	24090008 	li	t1,8
  400144:	240b0001 	li	t3,1
  400148:	00005025 	move	t2,zero

0040014c <.gk_loop>:
  40014c:	11490018 	beq	t2,t1,4001b0 <.gk_end_loop>
  400150:	00000000 	nop
  400154:	010b6024 	and	t4,t0,t3
  400158:	000b5840 	sll	t3,t3,0x1
  40015c:	11800011 	beqz	t4,4001a4 <.gk_inc_loop>
  400160:	00000000 	nop
  400164:	3c081001 	lui	t0,0x1001
  400168:	8d080018 	lw	t0,24(t0)
  40016c:	3c09ffff 	lui	t1,0xffff
  400170:	8d290008 	lw	t1,8(t1)
  400174:	00000000 	nop
  400178:	0128582b 	sltu	t3,t1,t0
  40017c:	11600002 	beqz	t3,400188 <.set_key>
  400180:	00000000 	nop
  400184:	00001025 	move	v0,zero

00400188 <.set_key>:
  400188:	252900c8 	addiu	t1,t1,200
  40018c:	3c081001 	lui	t0,0x1001
  400190:	ad090018 	sw	t1,24(t0)
  400194:	01401025 	move	v0,t2
  400198:	24420001 	addiu	v0,v0,1
  40019c:	03e00008 	jr	ra
  4001a0:	00000000 	nop

004001a4 <.gk_inc_loop>:
  4001a4:	254a0001 	addiu	t2,t2,1
  4001a8:	08100053 	j	40014c <.gk_loop>
  4001ac:	00000000 	nop

004001b0 <.gk_end_loop>:
  4001b0:	00001025 	move	v0,zero
  4001b4:	03e00008 	jr	ra
  4001b8:	00000000 	nop

004001bc <divide>:
  4001bc:	acc00000 	sw	zero,0(a2)
  4001c0:	0085102b 	sltu	v0,a0,a1
  4001c4:	10400002 	beqz	v0,4001d0 <divide+0x14>
  4001c8:	ace40000 	sw	a0,0(a3)
  4001cc:	03e00008 	jr	ra
  4001d0:	8cc20000 	lw	v0,0(a2)
  4001d4:	00852023 	subu	a0,a0,a1
  4001d8:	24420001 	addiu	v0,v0,1
  4001dc:	acc20000 	sw	v0,0(a2)
  4001e0:	1000fff7 	b	4001c0 <divide+0x4>

004001e4 <set_color>:
  4001e4:	00052900 	sll	a1,a1,0x4
  4001e8:	3084000f 	andi	a0,a0,0xf
  4001ec:	00a42825 	or	a1,a1,a0
  4001f0:	3c021001 	lui	v0,0x1001
  4001f4:	a045001e 	sb	a1,30(v0)
  4001f8:	03e00008 	jr	ra

004001fc <get_color>:
  4001fc:	3c031001 	lui	v1,0x1001
  400200:	9062001e 	lbu	v0,30(v1)
  400204:	3042000f 	andi	v0,v0,0xf
  400208:	a0820000 	sb	v0,0(a0)
  40020c:	9062001e 	lbu	v0,30(v1)
  400210:	00021102 	srl	v0,v0,0x4
  400214:	a0a20000 	sb	v0,0(a1)
  400218:	03e00008 	jr	ra

0040021c <set_cursor>:
  40021c:	2c820028 	sltiu	v0,a0,40
  400220:	10400006 	beqz	v0,40023c <set_cursor+0x20>
  400224:	2ca20050 	sltiu	v0,a1,80
  400228:	10400004 	beqz	v0,40023c <set_cursor+0x20>
  40022c:	3c021001 	lui	v0,0x1001
  400230:	a044001d 	sb	a0,29(v0)
  400234:	3c021001 	lui	v0,0x1001
  400238:	a045001c 	sb	a1,28(v0)
  40023c:	03e00008 	jr	ra

00400240 <put_char>:
  400240:	3c071001 	lui	a3,0x1001
  400244:	2403000a 	li	v1,10
  400248:	90e2001d 	lbu	v0,29(a3)
  40024c:	3c061001 	lui	a2,0x1001
  400250:	14830006 	bne	a0,v1,40026c <put_char+0x2c>
  400254:	2c430027 	sltiu	v1,v0,39
  400258:	10600002 	beqz	v1,400264 <put_char+0x24>
  40025c:	24420001 	addiu	v0,v0,1
  400260:	a0e2001d 	sb	v0,29(a3)
  400264:	a0c0001c 	sb	zero,28(a2)
  400268:	03e00008 	jr	ra
  40026c:	3c031001 	lui	v1,0x1001
  400270:	9063001e 	lbu	v1,30(v1)
  400274:	90c5001c 	lbu	a1,28(a2)
  400278:	00031a00 	sll	v1,v1,0x8
  40027c:	00642025 	or	a0,v1,a0
  400280:	00021880 	sll	v1,v0,0x2
  400284:	00621821 	addu	v1,v1,v0
  400288:	00031900 	sll	v1,v1,0x4
  40028c:	00651821 	addu	v1,v1,a1
  400290:	00031840 	sll	v1,v1,0x1
  400294:	3408b800 	li	t0,0xb800
  400298:	01031821 	addu	v1,t0,v1
  40029c:	a4640000 	sh	a0,0(v1)
  4002a0:	2ca3004f 	sltiu	v1,a1,79
  4002a4:	10600003 	beqz	v1,4002b4 <put_char+0x74>
  4002a8:	24a50001 	addiu	a1,a1,1
  4002ac:	a0c5001c 	sb	a1,28(a2)
  4002b0:	03e00008 	jr	ra
  4002b4:	24420001 	addiu	v0,v0,1
  4002b8:	a0c0001c 	sb	zero,28(a2)
  4002bc:	a0e2001d 	sb	v0,29(a3)
  4002c0:	03e00008 	jr	ra

004002c4 <puts>:
  4002c4:	00804825 	move	t1,a0
  4002c8:	80840000 	lb	a0,0(a0)
  4002cc:	14800001 	bnez	a0,4002d4 <puts+0x10>
  4002d0:	03e00008 	jr	ra
  4002d4:	27bdffe8 	addiu	sp,sp,-24
  4002d8:	afbf0014 	sw	ra,20(sp)
  4002dc:	308400ff 	andi	a0,a0,0xff
  4002e0:	25290001 	addiu	t1,t1,1
  4002e4:	0c100090 	jal	400240 <put_char>
  4002e8:	81240000 	lb	a0,0(t1)
  4002ec:	1480fffb 	bnez	a0,4002dc <puts+0x18>
  4002f0:	8fbf0014 	lw	ra,20(sp)
  4002f4:	27bd0018 	addiu	sp,sp,24
  4002f8:	03e00008 	jr	ra

004002fc <clear_screen>:
  4002fc:	3c021001 	lui	v0,0x1001
  400300:	9042001e 	lbu	v0,30(v0)
  400304:	3403b800 	li	v1,0xb800
  400308:	00021200 	sll	v0,v0,0x8
  40030c:	34420020 	ori	v0,v0,0x20
  400310:	3404cac0 	li	a0,0xcac0
  400314:	a4620000 	sh	v0,0(v1)
  400318:	24630002 	addiu	v1,v1,2
  40031c:	1464fffd 	bne	v1,a0,400314 <clear_screen+0x18>
  400320:	3c021001 	lui	v0,0x1001
  400324:	a040001d 	sb	zero,29(v0)
  400328:	3c021001 	lui	v0,0x1001
  40032c:	a040001c 	sb	zero,28(v0)
  400330:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <next_key_time-0x18>:
10010000:	48656c6c 	0x48656c6c
10010004:	6f210000 	0x6f210000
10010008:	01020000 	0x1020000
1001000c:	4b657920 	c2	0x1657920
10010010:	70726573 	0x70726573
10010014:	73000000 	0x73000000

10010018 <next_key_time>:
10010018:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5db6d8>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

1001001c <cursor_col>:
	...

1001001d <cursor_row>:
	...

1001001e <chr_attr>:
	...
