
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
  400018:	afb40020 	sw	s4,32(sp)
  40001c:	afb3001c 	sw	s3,28(sp)
  400020:	afb20018 	sw	s2,24(sp)
  400024:	afb10014 	sw	s1,20(sp)
  400028:	afb00010 	sw	s0,16(sp)
  40002c:	0c100308 	jal	400c20 <clear_screen>
  400030:	3c02ffff 	lui	v0,0xffff
  400034:	8c430008 	lw	v1,8(v0)
  400038:	3c111001 	lui	s1,0x1001
  40003c:	3c021001 	lui	v0,0x1001
  400040:	ac43002c 	sw	v1,44(v0)
  400044:	26310000 	addiu	s1,s1,0
  400048:	0c100100 	jal	400400 <drawlaberinto>
  40004c:	3c131001 	lui	s3,0x1001
  400050:	0c100293 	jal	400a4c <keypad_init>
  400054:	3c141001 	lui	s4,0x1001
  400058:	3c121001 	lui	s2,0x1001
  40005c:	0c100297 	jal	400a5c <keypad_getkey>
  400060:	24050001 	li	a1,1
  400064:	24040001 	li	a0,1
  400068:	00408025 	move	s0,v0
  40006c:	0c1002d0 	jal	400b40 <set_cursor>
  400070:	02202025 	move	a0,s1
  400074:	0c1002fa 	jal	400be8 <puts>
  400078:	24040001 	li	a0,1
  40007c:	2405000c 	li	a1,12
  400080:	0c1002d0 	jal	400b40 <set_cursor>
  400084:	92620028 	lbu	v0,40(s3)
  400088:	3042000f 	andi	v0,v0,0xf
  40008c:	2c43000a 	sltiu	v1,v0,10
  400090:	24440057 	addiu	a0,v0,87
  400094:	10600001 	beqz	v1,40009c <main+0x8c>
  400098:	24440030 	addiu	a0,v0,48
  40009c:	0c1002d9 	jal	400b64 <put_char>
  4000a0:	24040001 	li	a0,1
  4000a4:	2405000b 	li	a1,11
  4000a8:	0c1002d0 	jal	400b40 <set_cursor>
  4000ac:	92830024 	lbu	v1,36(s4)
  4000b0:	3063000f 	andi	v1,v1,0xf
  4000b4:	2c62000a 	sltiu	v0,v1,10
  4000b8:	24640057 	addiu	a0,v1,87
  4000bc:	10400001 	beqz	v0,4000c4 <main+0xb4>
  4000c0:	24640030 	addiu	a0,v1,48
  4000c4:	0c1002d9 	jal	400b64 <put_char>
  4000c8:	92420026 	lbu	v0,38(s2)
  4000cc:	1040000a 	beqz	v0,4000f8 <main+0xe8>
  4000d0:	24040001 	li	a0,1
  4000d4:	2405000a 	li	a1,10
  4000d8:	0c1002d0 	jal	400b40 <set_cursor>
  4000dc:	92430026 	lbu	v1,38(s2)
  4000e0:	3063000f 	andi	v1,v1,0xf
  4000e4:	2c62000a 	sltiu	v0,v1,10
  4000e8:	24640057 	addiu	a0,v1,87
  4000ec:	10400001 	beqz	v0,4000f4 <main+0xe4>
  4000f0:	24640030 	addiu	a0,v1,48
  4000f4:	0c1002d9 	jal	400b64 <put_char>
  4000f8:	1200ffd8 	beqz	s0,40005c <main+0x4c>
  4000fc:	02002025 	move	a0,s0
  400100:	0c100239 	jal	4008e4 <moveFigure>
  400104:	1000ffd5 	b	40005c <main+0x4c>

00400108 <paintGreen>:
  400108:	27bdffd0 	addiu	sp,sp,-48
  40010c:	afb50028 	sw	s5,40(sp)
  400110:	afb2001c 	sw	s2,28(sp)
  400114:	afb00014 	sw	s0,20(sp)
  400118:	00a09025 	move	s2,a1
  40011c:	00808025 	move	s0,a0
  400120:	24050002 	li	a1,2
  400124:	2404000a 	li	a0,10
  400128:	3c151001 	lui	s5,0x1001
  40012c:	afb40024 	sw	s4,36(sp)
  400130:	afb30020 	sw	s3,32(sp)
  400134:	afbf002c 	sw	ra,44(sp)
  400138:	afb10018 	sw	s1,24(sp)
  40013c:	00c09825 	move	s3,a2
  400140:	00e0a025 	move	s4,a3
  400144:	26b5000c 	addiu	s5,s5,12
  400148:	0c1002c2 	jal	400b08 <set_color>
  40014c:	0250102b 	sltu	v0,s2,s0
  400150:	10400015 	beqz	v0,4001a8 <paintGreen+0xa0>
  400154:	8fbf002c 	lw	ra,44(sp)
  400158:	8fb50028 	lw	s5,40(sp)
  40015c:	8fb40024 	lw	s4,36(sp)
  400160:	8fb30020 	lw	s3,32(sp)
  400164:	8fb2001c 	lw	s2,28(sp)
  400168:	8fb10018 	lw	s1,24(sp)
  40016c:	8fb00014 	lw	s0,20(sp)
  400170:	27bd0030 	addiu	sp,sp,48
  400174:	03e00008 	jr	ra
  400178:	02202825 	move	a1,s1
  40017c:	02002025 	move	a0,s0
  400180:	0c1002d0 	jal	400b40 <set_cursor>
  400184:	26310001 	addiu	s1,s1,1
  400188:	02a02025 	move	a0,s5
  40018c:	0c1002fa 	jal	400be8 <puts>
  400190:	323100ff 	andi	s1,s1,0xff
  400194:	0291102b 	sltu	v0,s4,s1
  400198:	1040fff7 	beqz	v0,400178 <paintGreen+0x70>
  40019c:	26100001 	addiu	s0,s0,1
  4001a0:	321000ff 	andi	s0,s0,0xff
  4001a4:	1000ffe9 	b	40014c <paintGreen+0x44>
  4001a8:	02608825 	move	s1,s3
  4001ac:	1000fff9 	b	400194 <paintGreen+0x8c>

004001b0 <paintHallV>:
  4001b0:	27bdffd8 	addiu	sp,sp,-40
  4001b4:	afb30020 	sw	s3,32(sp)
  4001b8:	afb2001c 	sw	s2,28(sp)
  4001bc:	afb00014 	sw	s0,20(sp)
  4001c0:	00a09825 	move	s3,a1
  4001c4:	00808025 	move	s0,a0
  4001c8:	00002825 	move	a1,zero
  4001cc:	00002025 	move	a0,zero
  4001d0:	3c121001 	lui	s2,0x1001
  4001d4:	afb10018 	sw	s1,24(sp)
  4001d8:	afbf0024 	sw	ra,36(sp)
  4001dc:	00c08825 	move	s1,a2
  4001e0:	26520010 	addiu	s2,s2,16
  4001e4:	0c1002c2 	jal	400b08 <set_color>
  4001e8:	0213102b 	sltu	v0,s0,s3
  4001ec:	14400007 	bnez	v0,40020c <paintHallV+0x5c>
  4001f0:	8fbf0024 	lw	ra,36(sp)
  4001f4:	8fb30020 	lw	s3,32(sp)
  4001f8:	8fb2001c 	lw	s2,28(sp)
  4001fc:	8fb10018 	lw	s1,24(sp)
  400200:	8fb00014 	lw	s0,20(sp)
  400204:	27bd0028 	addiu	sp,sp,40
  400208:	03e00008 	jr	ra
  40020c:	02202825 	move	a1,s1
  400210:	02002025 	move	a0,s0
  400214:	26100001 	addiu	s0,s0,1
  400218:	0c1002d0 	jal	400b40 <set_cursor>
  40021c:	321000ff 	andi	s0,s0,0xff
  400220:	02402025 	move	a0,s2
  400224:	0c1002fa 	jal	400be8 <puts>
  400228:	02002025 	move	a0,s0
  40022c:	02202825 	move	a1,s1
  400230:	0c1002d0 	jal	400b40 <set_cursor>
  400234:	02402025 	move	a0,s2
  400238:	0c1002fa 	jal	400be8 <puts>
  40023c:	1000ffea 	b	4001e8 <paintHallV+0x38>

00400240 <paintHallH>:
  400240:	27bdffd8 	addiu	sp,sp,-40
  400244:	afb10014 	sw	s1,20(sp)
  400248:	00808825 	move	s1,a0
  40024c:	afb40020 	sw	s4,32(sp)
  400250:	afb20018 	sw	s2,24(sp)
  400254:	afb00010 	sw	s0,16(sp)
  400258:	00002025 	move	a0,zero
  40025c:	00a08025 	move	s0,a1
  400260:	3c121001 	lui	s2,0x1001
  400264:	00002825 	move	a1,zero
  400268:	26340001 	addiu	s4,s1,1
  40026c:	afb3001c 	sw	s3,28(sp)
  400270:	afbf0024 	sw	ra,36(sp)
  400274:	00c09825 	move	s3,a2
  400278:	26520010 	addiu	s2,s2,16
  40027c:	0c1002c2 	jal	400b08 <set_color>
  400280:	329400ff 	andi	s4,s4,0xff
  400284:	0213102b 	sltu	v0,s0,s3
  400288:	14400008 	bnez	v0,4002ac <paintHallH+0x6c>
  40028c:	8fbf0024 	lw	ra,36(sp)
  400290:	8fb40020 	lw	s4,32(sp)
  400294:	8fb3001c 	lw	s3,28(sp)
  400298:	8fb20018 	lw	s2,24(sp)
  40029c:	8fb10014 	lw	s1,20(sp)
  4002a0:	8fb00010 	lw	s0,16(sp)
  4002a4:	27bd0028 	addiu	sp,sp,40
  4002a8:	03e00008 	jr	ra
  4002ac:	02002825 	move	a1,s0
  4002b0:	02202025 	move	a0,s1
  4002b4:	0c1002d0 	jal	400b40 <set_cursor>
  4002b8:	02402025 	move	a0,s2
  4002bc:	0c1002fa 	jal	400be8 <puts>
  4002c0:	02002825 	move	a1,s0
  4002c4:	02802025 	move	a0,s4
  4002c8:	0c1002d0 	jal	400b40 <set_cursor>
  4002cc:	26100003 	addiu	s0,s0,3
  4002d0:	02402025 	move	a0,s2
  4002d4:	0c1002fa 	jal	400be8 <puts>
  4002d8:	321000ff 	andi	s0,s0,0xff
  4002dc:	1000ffe9 	b	400284 <paintHallH+0x44>

004002e0 <paintFloor>:
  4002e0:	27bdffe0 	addiu	sp,sp,-32
  4002e4:	afb10014 	sw	s1,20(sp)
  4002e8:	afb00010 	sw	s0,16(sp)
  4002ec:	00a08825 	move	s1,a1
  4002f0:	00808025 	move	s0,a0
  4002f4:	00002825 	move	a1,zero
  4002f8:	00002025 	move	a0,zero
  4002fc:	afbf001c 	sw	ra,28(sp)
  400300:	afb20018 	sw	s2,24(sp)
  400304:	0c1002c2 	jal	400b08 <set_color>
  400308:	3c121001 	lui	s2,0x1001
  40030c:	02202825 	move	a1,s1
  400310:	02002025 	move	a0,s0
  400314:	0c1002d0 	jal	400b40 <set_cursor>
  400318:	26440010 	addiu	a0,s2,16
  40031c:	0c1002fa 	jal	400be8 <puts>
  400320:	26040001 	addiu	a0,s0,1
  400324:	02202825 	move	a1,s1
  400328:	308400ff 	andi	a0,a0,0xff
  40032c:	0c1002d0 	jal	400b40 <set_cursor>
  400330:	8fbf001c 	lw	ra,28(sp)
  400334:	8fb10014 	lw	s1,20(sp)
  400338:	8fb00010 	lw	s0,16(sp)
  40033c:	26440010 	addiu	a0,s2,16
  400340:	8fb20018 	lw	s2,24(sp)
  400344:	27bd0020 	addiu	sp,sp,32
  400348:	081002fa 	j	400be8 <puts>

0040034c <drawFigure>:
  40034c:	27bdffe0 	addiu	sp,sp,-32
  400350:	afb10018 	sw	s1,24(sp)
  400354:	afb00014 	sw	s0,20(sp)
  400358:	00a08825 	move	s1,a1
  40035c:	00808025 	move	s0,a0
  400360:	00002825 	move	a1,zero
  400364:	24040007 	li	a0,7
  400368:	afbf001c 	sw	ra,28(sp)
  40036c:	0c1002c2 	jal	400b08 <set_color>
  400370:	02202825 	move	a1,s1
  400374:	02002025 	move	a0,s0
  400378:	0c1002d0 	jal	400b40 <set_cursor>
  40037c:	3c041001 	lui	a0,0x1001
  400380:	24840014 	addiu	a0,a0,20
  400384:	0c1002fa 	jal	400be8 <puts>
  400388:	26040001 	addiu	a0,s0,1
  40038c:	02202825 	move	a1,s1
  400390:	308400ff 	andi	a0,a0,0xff
  400394:	0c1002d0 	jal	400b40 <set_cursor>
  400398:	8fbf001c 	lw	ra,28(sp)
  40039c:	8fb10018 	lw	s1,24(sp)
  4003a0:	8fb00014 	lw	s0,20(sp)
  4003a4:	3c041001 	lui	a0,0x1001
  4003a8:	24840018 	addiu	a0,a0,24
  4003ac:	27bd0020 	addiu	sp,sp,32
  4003b0:	081002fa 	j	400be8 <puts>

004003b4 <drawCherry>:
  4003b4:	27bdffe0 	addiu	sp,sp,-32
  4003b8:	afb10018 	sw	s1,24(sp)
  4003bc:	afb00014 	sw	s0,20(sp)
  4003c0:	00a08825 	move	s1,a1
  4003c4:	00808025 	move	s0,a0
  4003c8:	2405000a 	li	a1,10
  4003cc:	24040004 	li	a0,4
  4003d0:	afbf001c 	sw	ra,28(sp)
  4003d4:	0c1002c2 	jal	400b08 <set_color>
  4003d8:	02002025 	move	a0,s0
  4003dc:	02202825 	move	a1,s1
  4003e0:	0c1002d0 	jal	400b40 <set_cursor>
  4003e4:	8fbf001c 	lw	ra,28(sp)
  4003e8:	8fb10018 	lw	s1,24(sp)
  4003ec:	8fb00014 	lw	s0,20(sp)
  4003f0:	3c041001 	lui	a0,0x1001
  4003f4:	2484001c 	addiu	a0,a0,28
  4003f8:	27bd0020 	addiu	sp,sp,32
  4003fc:	081002fa 	j	400be8 <puts>

00400400 <drawlaberinto>:
  400400:	27bdffe8 	addiu	sp,sp,-24
  400404:	24070046 	li	a3,70
  400408:	24060005 	li	a2,5
  40040c:	24050019 	li	a1,25
  400410:	24040005 	li	a0,5
  400414:	afbf0014 	sw	ra,20(sp)
  400418:	0c100042 	jal	400108 <paintGreen>
  40041c:	24060026 	li	a2,38
  400420:	24050018 	li	a1,24
  400424:	24040006 	li	a0,6
  400428:	0c10006c 	jal	4001b0 <paintHallV>
  40042c:	2406003c 	li	a2,60
  400430:	24050006 	li	a1,6
  400434:	24040017 	li	a0,23
  400438:	0c100090 	jal	400240 <paintHallH>
  40043c:	24060039 	li	a2,57
  400440:	24050016 	li	a1,22
  400444:	24040015 	li	a0,21
  400448:	0c10006c 	jal	4001b0 <paintHallV>
  40044c:	24060045 	li	a2,69
  400450:	2405003c 	li	a1,60
  400454:	24040015 	li	a0,21
  400458:	0c100090 	jal	400240 <paintHallH>
  40045c:	24060045 	li	a2,69
  400460:	24050016 	li	a1,22
  400464:	24040006 	li	a0,6
  400468:	0c10006c 	jal	4001b0 <paintHallV>
  40046c:	24060045 	li	a2,69
  400470:	2405003e 	li	a1,62
  400474:	24040006 	li	a0,6
  400478:	0c100090 	jal	400240 <paintHallH>
  40047c:	2406003e 	li	a2,62
  400480:	2405000a 	li	a1,10
  400484:	24040008 	li	a0,8
  400488:	0c10006c 	jal	4001b0 <paintHallV>
  40048c:	2406003e 	li	a2,62
  400490:	24050034 	li	a1,52
  400494:	24040009 	li	a0,9
  400498:	0c100090 	jal	400240 <paintHallH>
  40049c:	24060034 	li	a2,52
  4004a0:	24050009 	li	a1,9
  4004a4:	24040006 	li	a0,6
  4004a8:	0c10006c 	jal	4001b0 <paintHallV>
  4004ac:	24060034 	li	a2,52
  4004b0:	24050027 	li	a1,39
  4004b4:	24040006 	li	a0,6
  4004b8:	0c100090 	jal	400240 <paintHallH>
  4004bc:	24060006 	li	a2,6
  4004c0:	24050017 	li	a1,23
  4004c4:	24040013 	li	a0,19
  4004c8:	0c10006c 	jal	4001b0 <paintHallV>
  4004cc:	2406000f 	li	a2,15
  4004d0:	24050009 	li	a1,9
  4004d4:	24040013 	li	a0,19
  4004d8:	0c100090 	jal	400240 <paintHallH>
  4004dc:	2406000c 	li	a2,12
  4004e0:	24050017 	li	a1,23
  4004e4:	24040015 	li	a0,21
  4004e8:	0c10006c 	jal	4001b0 <paintHallV>
  4004ec:	24050006 	li	a1,6
  4004f0:	24040007 	li	a0,7
  4004f4:	0c1000ed 	jal	4003b4 <drawCherry>
  4004f8:	24050006 	li	a1,6
  4004fc:	24040008 	li	a0,8
  400500:	0c1000ed 	jal	4003b4 <drawCherry>
  400504:	24050006 	li	a1,6
  400508:	24040009 	li	a0,9
  40050c:	0c1000ed 	jal	4003b4 <drawCherry>
  400510:	24050006 	li	a1,6
  400514:	2404000a 	li	a0,10
  400518:	0c1000ed 	jal	4003b4 <drawCherry>
  40051c:	24050009 	li	a1,9
  400520:	24040007 	li	a0,7
  400524:	0c1000ed 	jal	4003b4 <drawCherry>
  400528:	24050009 	li	a1,9
  40052c:	24040008 	li	a0,8
  400530:	0c1000ed 	jal	4003b4 <drawCherry>
  400534:	24050009 	li	a1,9
  400538:	24040009 	li	a0,9
  40053c:	0c1000ed 	jal	4003b4 <drawCherry>
  400540:	24050009 	li	a1,9
  400544:	2404000a 	li	a0,10
  400548:	0c1000ed 	jal	4003b4 <drawCherry>
  40054c:	24050020 	li	a1,32
  400550:	2404000e 	li	a0,14
  400554:	0c1000ed 	jal	4003b4 <drawCherry>
  400558:	24050020 	li	a1,32
  40055c:	2404000f 	li	a0,15
  400560:	0c1000ed 	jal	4003b4 <drawCherry>
  400564:	24050020 	li	a1,32
  400568:	24040010 	li	a0,16
  40056c:	0c1000ed 	jal	4003b4 <drawCherry>
  400570:	24050020 	li	a1,32
  400574:	24040011 	li	a0,17
  400578:	0c1000ed 	jal	4003b4 <drawCherry>
  40057c:	24050023 	li	a1,35
  400580:	2404000e 	li	a0,14
  400584:	0c1000ed 	jal	4003b4 <drawCherry>
  400588:	24050023 	li	a1,35
  40058c:	2404000f 	li	a0,15
  400590:	0c1000ed 	jal	4003b4 <drawCherry>
  400594:	24050023 	li	a1,35
  400598:	24040010 	li	a0,16
  40059c:	0c1000ed 	jal	4003b4 <drawCherry>
  4005a0:	24050023 	li	a1,35
  4005a4:	24040011 	li	a0,17
  4005a8:	0c1000ed 	jal	4003b4 <drawCherry>
  4005ac:	24050006 	li	a1,6
  4005b0:	2404000e 	li	a0,14
  4005b4:	0c1000ed 	jal	4003b4 <drawCherry>
  4005b8:	24050009 	li	a1,9
  4005bc:	2404000e 	li	a0,14
  4005c0:	0c1000ed 	jal	4003b4 <drawCherry>
  4005c4:	2405000c 	li	a1,12
  4005c8:	2404000e 	li	a0,14
  4005cc:	0c1000ed 	jal	4003b4 <drawCherry>
  4005d0:	2405000f 	li	a1,15
  4005d4:	2404000e 	li	a0,14
  4005d8:	0c1000ed 	jal	4003b4 <drawCherry>
  4005dc:	24050006 	li	a1,6
  4005e0:	2404000f 	li	a0,15
  4005e4:	0c1000ed 	jal	4003b4 <drawCherry>
  4005e8:	24050009 	li	a1,9
  4005ec:	2404000f 	li	a0,15
  4005f0:	0c1000ed 	jal	4003b4 <drawCherry>
  4005f4:	2405000c 	li	a1,12
  4005f8:	2404000f 	li	a0,15
  4005fc:	0c1000ed 	jal	4003b4 <drawCherry>
  400600:	2405000f 	li	a1,15
  400604:	2404000f 	li	a0,15
  400608:	0c1000ed 	jal	4003b4 <drawCherry>
  40060c:	2405002b 	li	a1,43
  400610:	24040014 	li	a0,20
  400614:	0c1000ed 	jal	4003b4 <drawCherry>
  400618:	2405002e 	li	a1,46
  40061c:	24040014 	li	a0,20
  400620:	0c1000ed 	jal	4003b4 <drawCherry>
  400624:	24050031 	li	a1,49
  400628:	24040014 	li	a0,20
  40062c:	0c1000ed 	jal	4003b4 <drawCherry>
  400630:	24050034 	li	a1,52
  400634:	24040014 	li	a0,20
  400638:	0c1000ed 	jal	4003b4 <drawCherry>
  40063c:	2405002b 	li	a1,43
  400640:	24040015 	li	a0,21
  400644:	0c1000ed 	jal	4003b4 <drawCherry>
  400648:	2405002e 	li	a1,46
  40064c:	24040015 	li	a0,21
  400650:	0c1000ed 	jal	4003b4 <drawCherry>
  400654:	24050031 	li	a1,49
  400658:	24040015 	li	a0,21
  40065c:	0c1000ed 	jal	4003b4 <drawCherry>
  400660:	24050034 	li	a1,52
  400664:	24040015 	li	a0,21
  400668:	0c1000ed 	jal	4003b4 <drawCherry>
  40066c:	2405002e 	li	a1,46
  400670:	24040009 	li	a0,9
  400674:	0c1000ed 	jal	4003b4 <drawCherry>
  400678:	2405002e 	li	a1,46
  40067c:	2404000a 	li	a0,10
  400680:	0c1000ed 	jal	4003b4 <drawCherry>
  400684:	2405002e 	li	a1,46
  400688:	2404000b 	li	a0,11
  40068c:	0c1000ed 	jal	4003b4 <drawCherry>
  400690:	2405002e 	li	a1,46
  400694:	2404000c 	li	a0,12
  400698:	0c1000ed 	jal	4003b4 <drawCherry>
  40069c:	24050031 	li	a1,49
  4006a0:	24040009 	li	a0,9
  4006a4:	0c1000ed 	jal	4003b4 <drawCherry>
  4006a8:	24050031 	li	a1,49
  4006ac:	2404000a 	li	a0,10
  4006b0:	0c1000ed 	jal	4003b4 <drawCherry>
  4006b4:	24050031 	li	a1,49
  4006b8:	2404000b 	li	a0,11
  4006bc:	0c1000ed 	jal	4003b4 <drawCherry>
  4006c0:	24050031 	li	a1,49
  4006c4:	2404000c 	li	a0,12
  4006c8:	0c1000ed 	jal	4003b4 <drawCherry>
  4006cc:	24050016 	li	a1,22
  4006d0:	24040014 	li	a0,20
  4006d4:	0c1000ed 	jal	4003b4 <drawCherry>
  4006d8:	24050019 	li	a1,25
  4006dc:	24040014 	li	a0,20
  4006e0:	0c1000ed 	jal	4003b4 <drawCherry>
  4006e4:	2405001c 	li	a1,28
  4006e8:	24040014 	li	a0,20
  4006ec:	0c1000ed 	jal	4003b4 <drawCherry>
  4006f0:	2405001f 	li	a1,31
  4006f4:	24040014 	li	a0,20
  4006f8:	0c1000ed 	jal	4003b4 <drawCherry>
  4006fc:	24050016 	li	a1,22
  400700:	24040015 	li	a0,21
  400704:	0c1000ed 	jal	4003b4 <drawCherry>
  400708:	24050019 	li	a1,25
  40070c:	24040015 	li	a0,21
  400710:	0c1000ed 	jal	4003b4 <drawCherry>
  400714:	2405001c 	li	a1,28
  400718:	24040015 	li	a0,21
  40071c:	0c1000ed 	jal	4003b4 <drawCherry>
  400720:	2405001f 	li	a1,31
  400724:	24040015 	li	a0,21
  400728:	0c1000ed 	jal	4003b4 <drawCherry>
  40072c:	2405003c 	li	a1,60
  400730:	2404000e 	li	a0,14
  400734:	0c1000ed 	jal	4003b4 <drawCherry>
  400738:	2405003c 	li	a1,60
  40073c:	2404000f 	li	a0,15
  400740:	0c1000ed 	jal	4003b4 <drawCherry>
  400744:	2405003c 	li	a1,60
  400748:	24040010 	li	a0,16
  40074c:	0c1000ed 	jal	4003b4 <drawCherry>
  400750:	2405003c 	li	a1,60
  400754:	24040011 	li	a0,17
  400758:	0c1000ed 	jal	4003b4 <drawCherry>
  40075c:	2405003f 	li	a1,63
  400760:	2404000e 	li	a0,14
  400764:	0c1000ed 	jal	4003b4 <drawCherry>
  400768:	2405003f 	li	a1,63
  40076c:	2404000f 	li	a0,15
  400770:	0c1000ed 	jal	4003b4 <drawCherry>
  400774:	2405003f 	li	a1,63
  400778:	24040010 	li	a0,16
  40077c:	0c1000ed 	jal	4003b4 <drawCherry>
  400780:	2405003f 	li	a1,63
  400784:	24040011 	li	a0,17
  400788:	0c1000ed 	jal	4003b4 <drawCherry>
  40078c:	24050016 	li	a1,22
  400790:	24040006 	li	a0,6
  400794:	0c1000ed 	jal	4003b4 <drawCherry>
  400798:	24050019 	li	a1,25
  40079c:	24040006 	li	a0,6
  4007a0:	0c1000ed 	jal	4003b4 <drawCherry>
  4007a4:	2405001c 	li	a1,28
  4007a8:	24040006 	li	a0,6
  4007ac:	0c1000ed 	jal	4003b4 <drawCherry>
  4007b0:	2405001f 	li	a1,31
  4007b4:	24040006 	li	a0,6
  4007b8:	0c1000ed 	jal	4003b4 <drawCherry>
  4007bc:	24050016 	li	a1,22
  4007c0:	24040007 	li	a0,7
  4007c4:	0c1000ed 	jal	4003b4 <drawCherry>
  4007c8:	24050019 	li	a1,25
  4007cc:	24040007 	li	a0,7
  4007d0:	0c1000ed 	jal	4003b4 <drawCherry>
  4007d4:	2405001c 	li	a1,28
  4007d8:	24040007 	li	a0,7
  4007dc:	0c1000ed 	jal	4003b4 <drawCherry>
  4007e0:	2405001f 	li	a1,31
  4007e4:	24040007 	li	a0,7
  4007e8:	0c1000ed 	jal	4003b4 <drawCherry>
  4007ec:	8fbf0014 	lw	ra,20(sp)
  4007f0:	3c021001 	lui	v0,0x1001
  4007f4:	24030017 	li	v1,23
  4007f8:	a0430030 	sb	v1,48(v0)
  4007fc:	3c021001 	lui	v0,0x1001
  400800:	24030026 	li	v1,38
  400804:	24050026 	li	a1,38
  400808:	24040017 	li	a0,23
  40080c:	27bd0018 	addiu	sp,sp,24
  400810:	a0430025 	sb	v1,37(v0)
  400814:	081000d3 	j	40034c <drawFigure>

00400818 <validateMovement>:
  400818:	2484fffa 	addiu	a0,a0,-6
  40081c:	2c840012 	sltiu	a0,a0,18
  400820:	00001025 	move	v0,zero
  400824:	10800002 	beqz	a0,400830 <validateMovement+0x18>
  400828:	24a5fffa 	addiu	a1,a1,-6
  40082c:	2ca20040 	sltiu	v0,a1,64
  400830:	03e00008 	jr	ra

00400834 <counterSimulator>:
  400834:	3c041001 	lui	a0,0x1001
  400838:	90820028 	lbu	v0,40(a0)
  40083c:	2405000a 	li	a1,10
  400840:	24420005 	addiu	v0,v0,5
  400844:	304200ff 	andi	v0,v0,0xff
  400848:	a0820028 	sb	v0,40(a0)
  40084c:	3c031001 	lui	v1,0x1001
  400850:	14450004 	bne	v0,a1,400864 <counterSimulator+0x30>
  400854:	90620024 	lbu	v0,36(v1)
  400858:	a0800028 	sb	zero,40(a0)
  40085c:	24420005 	addiu	v0,v0,5
  400860:	a0620024 	sb	v0,36(v1)
  400864:	90640024 	lbu	a0,36(v1)
  400868:	2402000a 	li	v0,10
  40086c:	14820005 	bne	a0,v0,400884 <counterSimulator+0x50>
  400870:	a0600024 	sb	zero,36(v1)
  400874:	3c031001 	lui	v1,0x1001
  400878:	90620026 	lbu	v0,38(v1)
  40087c:	24420005 	addiu	v0,v0,5
  400880:	a0620026 	sb	v0,38(v1)
  400884:	03e00008 	jr	ra

00400888 <cherriesCounter>:
  400888:	2482fff9 	addiu	v0,a0,-7
  40088c:	2c420004 	sltiu	v0,v0,4
  400890:	1040000d 	beqz	v0,4008c8 <cherriesCounter+0x40>
  400894:	24020006 	li	v0,6
  400898:	14a20001 	bne	a1,v0,4008a0 <cherriesCounter+0x18>
  40089c:	0810020d 	j	400834 <counterSimulator>
  4008a0:	24020009 	li	v0,9
  4008a4:	10a2fffd 	beq	a1,v0,40089c <cherriesCounter+0x14>
  4008a8:	30a200ef 	andi	v0,a1,0xef
  4008ac:	2442fffa 	addiu	v0,v0,-6
  4008b0:	2c42000a 	sltiu	v0,v0,10
  4008b4:	1440fff9 	bnez	v0,40089c <cherriesCounter+0x14>
  4008b8:	24a5ffd5 	addiu	a1,a1,-43
  4008bc:	2ca5000a 	sltiu	a1,a1,10
  4008c0:	14a0fff6 	bnez	a1,40089c <cherriesCounter+0x14>
  4008c4:	03e00008 	jr	ra
  4008c8:	2484fff2 	addiu	a0,a0,-14
  4008cc:	2c840004 	sltiu	a0,a0,4
  4008d0:	1080fff5 	beqz	a0,4008a8 <cherriesCounter+0x20>
  4008d4:	30a200df 	andi	v0,a1,0xdf
  4008d8:	24030003 	li	v1,3
  4008dc:	1443fff2 	bne	v0,v1,4008a8 <cherriesCounter+0x20>
  4008e0:	1000ffee 	b	40089c <cherriesCounter+0x14>

004008e4 <moveFigure>:
  4008e4:	27bdffd8 	addiu	sp,sp,-40
  4008e8:	3c02ffff 	lui	v0,0xffff
  4008ec:	afb1001c 	sw	s1,28(sp)
  4008f0:	3c111001 	lui	s1,0x1001
  4008f4:	8c420008 	lw	v0,8(v0)
  4008f8:	8e23002c 	lw	v1,44(s1)
  4008fc:	afbf0024 	sw	ra,36(sp)
  400900:	00431023 	subu	v0,v0,v1
  400904:	2c420065 	sltiu	v0,v0,101
  400908:	afb20020 	sw	s2,32(sp)
  40090c:	afb00018 	sw	s0,24(sp)
  400910:	14400020 	bnez	v0,400994 <moveFigure+0xb0>
  400914:	24020001 	li	v0,1
  400918:	14820014 	bne	a0,v0,40096c <moveFigure+0x88>
  40091c:	3c101001 	lui	s0,0x1001
  400920:	92030025 	lbu	v1,37(s0)
  400924:	2465ffff 	addiu	a1,v1,-1
  400928:	3c121001 	lui	s2,0x1001
  40092c:	92440030 	lbu	a0,48(s2)
  400930:	30a500ff 	andi	a1,a1,0xff
  400934:	afa40010 	sw	a0,16(sp)
  400938:	a2050025 	sb	a1,37(s0)
  40093c:	0c100206 	jal	400818 <validateMovement>
  400940:	8fa40010 	lw	a0,16(sp)
  400944:	1040000f 	beqz	v0,400984 <moveFigure+0xa0>
  400948:	00602825 	move	a1,v1
  40094c:	0c1000b8 	jal	4002e0 <paintFloor>
  400950:	92050025 	lbu	a1,37(s0)
  400954:	92440030 	lbu	a0,48(s2)
  400958:	0c1000d3 	jal	40034c <drawFigure>
  40095c:	92050025 	lbu	a1,37(s0)
  400960:	92440030 	lbu	a0,48(s2)
  400964:	0c100222 	jal	400888 <cherriesCounter>
  400968:	10000007 	b	400988 <moveFigure+0xa4>
  40096c:	24020002 	li	v0,2
  400970:	1482000e 	bne	a0,v0,4009ac <moveFigure+0xc8>
  400974:	3c101001 	lui	s0,0x1001
  400978:	92030025 	lbu	v1,37(s0)
  40097c:	24650001 	addiu	a1,v1,1
  400980:	1000ffe9 	b	400928 <moveFigure+0x44>
  400984:	a2030025 	sb	v1,37(s0)
  400988:	3c02ffff 	lui	v0,0xffff
  40098c:	8c420008 	lw	v0,8(v0)
  400990:	ae22002c 	sw	v0,44(s1)
  400994:	8fbf0024 	lw	ra,36(sp)
  400998:	8fb20020 	lw	s2,32(sp)
  40099c:	8fb1001c 	lw	s1,28(sp)
  4009a0:	8fb00018 	lw	s0,24(sp)
  4009a4:	27bd0028 	addiu	sp,sp,40
  4009a8:	03e00008 	jr	ra
  4009ac:	24020003 	li	v0,3
  4009b0:	14820013 	bne	a0,v0,400a00 <moveFigure+0x11c>
  4009b4:	3c101001 	lui	s0,0x1001
  4009b8:	92030030 	lbu	v1,48(s0)
  4009bc:	24640001 	addiu	a0,v1,1
  4009c0:	3c121001 	lui	s2,0x1001
  4009c4:	92450025 	lbu	a1,37(s2)
  4009c8:	308400ff 	andi	a0,a0,0xff
  4009cc:	afa50010 	sw	a1,16(sp)
  4009d0:	a2040030 	sb	a0,48(s0)
  4009d4:	0c100206 	jal	400818 <validateMovement>
  4009d8:	8fa50010 	lw	a1,16(sp)
  4009dc:	1040000e 	beqz	v0,400a18 <moveFigure+0x134>
  4009e0:	00602025 	move	a0,v1
  4009e4:	0c1000b8 	jal	4002e0 <paintFloor>
  4009e8:	92450025 	lbu	a1,37(s2)
  4009ec:	92040030 	lbu	a0,48(s0)
  4009f0:	0c1000d3 	jal	40034c <drawFigure>
  4009f4:	92450025 	lbu	a1,37(s2)
  4009f8:	92040030 	lbu	a0,48(s0)
  4009fc:	1000ffd9 	b	400964 <moveFigure+0x80>
  400a00:	24020004 	li	v0,4
  400a04:	1482ffe0 	bne	a0,v0,400988 <moveFigure+0xa4>
  400a08:	3c101001 	lui	s0,0x1001
  400a0c:	92030030 	lbu	v1,48(s0)
  400a10:	2464ffff 	addiu	a0,v1,-1
  400a14:	1000ffea 	b	4009c0 <moveFigure+0xdc>
  400a18:	a2030030 	sb	v1,48(s0)
  400a1c:	1000ffda 	b	400988 <moveFigure+0xa4>

00400a20 <delay_ms>:
  400a20:	3c08ffff 	lui	t0,0xffff
  400a24:	8d090008 	lw	t1,8(t0)
  400a28:	00000000 	nop
  400a2c:	01244820 	add	t1,t1,a0

00400a30 <.dm_loop>:
  400a30:	8d0a0008 	lw	t2,8(t0)
  400a34:	00000000 	nop
  400a38:	0149582b 	sltu	t3,t2,t1
  400a3c:	1560fffc 	bnez	t3,400a30 <.dm_loop>
  400a40:	00000000 	nop
  400a44:	03e00008 	jr	ra
  400a48:	00000000 	nop

00400a4c <keypad_init>:
  400a4c:	3c081001 	lui	t0,0x1001
  400a50:	ad000020 	sw	zero,32(t0)
  400a54:	03e00008 	jr	ra
  400a58:	00000000 	nop

00400a5c <keypad_getkey>:
  400a5c:	3c08ffff 	lui	t0,0xffff
  400a60:	81080004 	lb	t0,4(t0)
  400a64:	24090008 	li	t1,8
  400a68:	240b0001 	li	t3,1
  400a6c:	00005025 	move	t2,zero

00400a70 <.gk_loop>:
  400a70:	11490018 	beq	t2,t1,400ad4 <.gk_end_loop>
  400a74:	00000000 	nop
  400a78:	010b6024 	and	t4,t0,t3
  400a7c:	000b5840 	sll	t3,t3,0x1
  400a80:	11800011 	beqz	t4,400ac8 <.gk_inc_loop>
  400a84:	00000000 	nop
  400a88:	3c081001 	lui	t0,0x1001
  400a8c:	8d080020 	lw	t0,32(t0)
  400a90:	3c09ffff 	lui	t1,0xffff
  400a94:	8d290008 	lw	t1,8(t1)
  400a98:	00000000 	nop
  400a9c:	0128582b 	sltu	t3,t1,t0
  400aa0:	11600002 	beqz	t3,400aac <.set_key>
  400aa4:	00000000 	nop
  400aa8:	00001025 	move	v0,zero

00400aac <.set_key>:
  400aac:	252900c8 	addiu	t1,t1,200
  400ab0:	3c081001 	lui	t0,0x1001
  400ab4:	ad090020 	sw	t1,32(t0)
  400ab8:	01401025 	move	v0,t2
  400abc:	24420001 	addiu	v0,v0,1
  400ac0:	03e00008 	jr	ra
  400ac4:	00000000 	nop

00400ac8 <.gk_inc_loop>:
  400ac8:	254a0001 	addiu	t2,t2,1
  400acc:	0810029c 	j	400a70 <.gk_loop>
  400ad0:	00000000 	nop

00400ad4 <.gk_end_loop>:
  400ad4:	00001025 	move	v0,zero
  400ad8:	03e00008 	jr	ra
  400adc:	00000000 	nop

00400ae0 <divide>:
  400ae0:	acc00000 	sw	zero,0(a2)
  400ae4:	0085102b 	sltu	v0,a0,a1
  400ae8:	10400002 	beqz	v0,400af4 <divide+0x14>
  400aec:	ace40000 	sw	a0,0(a3)
  400af0:	03e00008 	jr	ra
  400af4:	8cc20000 	lw	v0,0(a2)
  400af8:	00852023 	subu	a0,a0,a1
  400afc:	24420001 	addiu	v0,v0,1
  400b00:	acc20000 	sw	v0,0(a2)
  400b04:	1000fff7 	b	400ae4 <divide+0x4>

00400b08 <set_color>:
  400b08:	00052900 	sll	a1,a1,0x4
  400b0c:	3084000f 	andi	a0,a0,0xf
  400b10:	00a42825 	or	a1,a1,a0
  400b14:	3c021001 	lui	v0,0x1001
  400b18:	a0450036 	sb	a1,54(v0)
  400b1c:	03e00008 	jr	ra

00400b20 <get_color>:
  400b20:	3c031001 	lui	v1,0x1001
  400b24:	90620036 	lbu	v0,54(v1)
  400b28:	3042000f 	andi	v0,v0,0xf
  400b2c:	a0820000 	sb	v0,0(a0)
  400b30:	90620036 	lbu	v0,54(v1)
  400b34:	00021102 	srl	v0,v0,0x4
  400b38:	a0a20000 	sb	v0,0(a1)
  400b3c:	03e00008 	jr	ra

00400b40 <set_cursor>:
  400b40:	2c820028 	sltiu	v0,a0,40
  400b44:	10400006 	beqz	v0,400b60 <set_cursor+0x20>
  400b48:	2ca20050 	sltiu	v0,a1,80
  400b4c:	10400004 	beqz	v0,400b60 <set_cursor+0x20>
  400b50:	3c021001 	lui	v0,0x1001
  400b54:	a0440035 	sb	a0,53(v0)
  400b58:	3c021001 	lui	v0,0x1001
  400b5c:	a0450034 	sb	a1,52(v0)
  400b60:	03e00008 	jr	ra

00400b64 <put_char>:
  400b64:	3c071001 	lui	a3,0x1001
  400b68:	2403000a 	li	v1,10
  400b6c:	90e20035 	lbu	v0,53(a3)
  400b70:	3c061001 	lui	a2,0x1001
  400b74:	14830006 	bne	a0,v1,400b90 <put_char+0x2c>
  400b78:	2c430027 	sltiu	v1,v0,39
  400b7c:	10600002 	beqz	v1,400b88 <put_char+0x24>
  400b80:	24420001 	addiu	v0,v0,1
  400b84:	a0e20035 	sb	v0,53(a3)
  400b88:	a0c00034 	sb	zero,52(a2)
  400b8c:	03e00008 	jr	ra
  400b90:	3c031001 	lui	v1,0x1001
  400b94:	90630036 	lbu	v1,54(v1)
  400b98:	90c50034 	lbu	a1,52(a2)
  400b9c:	00031a00 	sll	v1,v1,0x8
  400ba0:	00642025 	or	a0,v1,a0
  400ba4:	00021880 	sll	v1,v0,0x2
  400ba8:	00621821 	addu	v1,v1,v0
  400bac:	00031900 	sll	v1,v1,0x4
  400bb0:	00651821 	addu	v1,v1,a1
  400bb4:	00031840 	sll	v1,v1,0x1
  400bb8:	3408b800 	li	t0,0xb800
  400bbc:	01031821 	addu	v1,t0,v1
  400bc0:	a4640000 	sh	a0,0(v1)
  400bc4:	2ca3004f 	sltiu	v1,a1,79
  400bc8:	10600003 	beqz	v1,400bd8 <put_char+0x74>
  400bcc:	24a50001 	addiu	a1,a1,1
  400bd0:	a0c50034 	sb	a1,52(a2)
  400bd4:	03e00008 	jr	ra
  400bd8:	24420001 	addiu	v0,v0,1
  400bdc:	a0c00034 	sb	zero,52(a2)
  400be0:	a0e20035 	sb	v0,53(a3)
  400be4:	03e00008 	jr	ra

00400be8 <puts>:
  400be8:	00804825 	move	t1,a0
  400bec:	80840000 	lb	a0,0(a0)
  400bf0:	14800001 	bnez	a0,400bf8 <puts+0x10>
  400bf4:	03e00008 	jr	ra
  400bf8:	27bdffe8 	addiu	sp,sp,-24
  400bfc:	afbf0014 	sw	ra,20(sp)
  400c00:	308400ff 	andi	a0,a0,0xff
  400c04:	25290001 	addiu	t1,t1,1
  400c08:	0c1002d9 	jal	400b64 <put_char>
  400c0c:	81240000 	lb	a0,0(t1)
  400c10:	1480fffb 	bnez	a0,400c00 <puts+0x18>
  400c14:	8fbf0014 	lw	ra,20(sp)
  400c18:	27bd0018 	addiu	sp,sp,24
  400c1c:	03e00008 	jr	ra

00400c20 <clear_screen>:
  400c20:	3c021001 	lui	v0,0x1001
  400c24:	90420036 	lbu	v0,54(v0)
  400c28:	3403b800 	li	v1,0xb800
  400c2c:	00021200 	sll	v0,v0,0x8
  400c30:	34420020 	ori	v0,v0,0x20
  400c34:	3404cac0 	li	a0,0xcac0
  400c38:	a4620000 	sh	v0,0(v1)
  400c3c:	24630002 	addiu	v1,v1,2
  400c40:	1464fffd 	bne	v1,a0,400c38 <clear_screen+0x18>
  400c44:	3c021001 	lui	v0,0x1001
  400c48:	a0400035 	sb	zero,53(v0)
  400c4c:	3c021001 	lui	v0,0x1001
  400c50:	a0400034 	sb	zero,52(v0)
  400c54:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <next_key_time-0x20>:
10010000:	43657265 	c0	0x1657265
10010004:	7a61733a 	0x7a61733a
10010008:	00000000 	nop
1001000c:	04040400 	0x4040400
10010010:	01010100 	0x1010100
10010014:	05060700 	0x5060700
10010018:	08090b00 	j	10242c00 <chr_attr+0x232bca>
1001001c:	01020000 	0x1020000

10010020 <next_key_time>:
10010020:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5dadb4>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

10010024 <cont_decimas>:
	...

10010025 <figuraCol>:
	...

10010026 <cont_centecimas>:
	...

10010027 <tecla>:
	...

10010028 <cont_unidades>:
10010028:	00000000 	nop

1001002c <tiempo_milisegundos>:
1001002c:	00000000 	nop

10010030 <figuraRow>:
	...

10010031 <contPasos_decimas>:
	...

10010032 <contPasos_centecimas>:
	...

10010033 <contPasos_unidades>:
	...

10010034 <cursor_col>:
	...

10010035 <cursor_row>:
	...

10010036 <chr_attr>:
	...
