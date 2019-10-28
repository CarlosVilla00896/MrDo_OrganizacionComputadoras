
screen.elf:     formato del fichero elf32-bigmips


Desensamblado de la sección .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100004 	jal	400010 <main>
  40000c:	08100003 	j	40000c <start+0xc>

00400010 <main>:
  400010:	27bdffc8 	addiu	sp,sp,-56
  400014:	afbf0034 	sw	ra,52(sp)
  400018:	afb70030 	sw	s7,48(sp)
  40001c:	afb6002c 	sw	s6,44(sp)
  400020:	afb50028 	sw	s5,40(sp)
  400024:	afb40024 	sw	s4,36(sp)
  400028:	afb30020 	sw	s3,32(sp)
  40002c:	afb2001c 	sw	s2,28(sp)
  400030:	afb10018 	sw	s1,24(sp)
  400034:	afb00014 	sw	s0,20(sp)
  400038:	0c10042b 	jal	4010ac <clear_screen>
  40003c:	3c02ffff 	lui	v0,0xffff
  400040:	8c420008 	lw	v0,8(v0)
  400044:	3c121001 	lui	s2,0x1001
  400048:	ae420060 	sw	v0,96(s2)
  40004c:	3c111001 	lui	s1,0x1001
  400050:	0c100115 	jal	400454 <drawlaberinto>
  400054:	24050019 	li	a1,25
  400058:	2404001c 	li	a0,28
  40005c:	0c1003f3 	jal	400fcc <set_cursor>
  400060:	3c131001 	lui	s3,0x1001
  400064:	26240000 	addiu	a0,s1,0
  400068:	0c10041d 	jal	401074 <puts>
  40006c:	26730024 	addiu	s3,s3,36
  400070:	0c1003b6 	jal	400ed8 <keypad_init>
  400074:	3c151001 	lui	s5,0x1001
  400078:	3c161001 	lui	s6,0x1001
  40007c:	3c141001 	lui	s4,0x1001
  400080:	24170006 	li	s7,6
  400084:	0c1003ba 	jal	400ee8 <keypad_getkey>
  400088:	24050001 	li	a1,1
  40008c:	24040001 	li	a0,1
  400090:	00408025 	move	s0,v0
  400094:	0c1003f3 	jal	400fcc <set_cursor>
  400098:	02602025 	move	a0,s3
  40009c:	0c10041d 	jal	401074 <puts>
  4000a0:	24040001 	li	a0,1
  4000a4:	2405000c 	li	a1,12
  4000a8:	0c1003f3 	jal	400fcc <set_cursor>
  4000ac:	92a2005c 	lbu	v0,92(s5)
  4000b0:	3042000f 	andi	v0,v0,0xf
  4000b4:	2c43000a 	sltiu	v1,v0,10
  4000b8:	24440057 	addiu	a0,v0,87
  4000bc:	10600001 	beqz	v1,4000c4 <main+0xb4>
  4000c0:	24440030 	addiu	a0,v0,48
  4000c4:	0c1003fc 	jal	400ff0 <put_char>
  4000c8:	24040001 	li	a0,1
  4000cc:	2405000b 	li	a1,11
  4000d0:	0c1003f3 	jal	400fcc <set_cursor>
  4000d4:	92c20058 	lbu	v0,88(s6)
  4000d8:	3042000f 	andi	v0,v0,0xf
  4000dc:	2c43000a 	sltiu	v1,v0,10
  4000e0:	24440057 	addiu	a0,v0,87
  4000e4:	10600001 	beqz	v1,4000ec <main+0xdc>
  4000e8:	24440030 	addiu	a0,v0,48
  4000ec:	0c1003fc 	jal	400ff0 <put_char>
  4000f0:	9282005a 	lbu	v0,90(s4)
  4000f4:	1040000a 	beqz	v0,400120 <main+0x110>
  4000f8:	24040001 	li	a0,1
  4000fc:	2405000a 	li	a1,10
  400100:	0c1003f3 	jal	400fcc <set_cursor>
  400104:	9282005a 	lbu	v0,90(s4)
  400108:	3042000f 	andi	v0,v0,0xf
  40010c:	2c43000a 	sltiu	v1,v0,10
  400110:	24440057 	addiu	a0,v0,87
  400114:	10600001 	beqz	v1,40011c <main+0x10c>
  400118:	24440030 	addiu	a0,v0,48
  40011c:	0c1003fc 	jal	400ff0 <put_char>
  400120:	1200ffd8 	beqz	s0,400084 <main+0x74>
  400124:	02002025 	move	a0,s0
  400128:	0c100336 	jal	400cd8 <moveFigure>
  40012c:	1617ffd5 	bne	s0,s7,400084 <main+0x74>
  400130:	0c10042b 	jal	4010ac <clear_screen>
  400134:	3c02ffff 	lui	v0,0xffff
  400138:	8c420008 	lw	v0,8(v0)
  40013c:	ae420060 	sw	v0,96(s2)
  400140:	0c100115 	jal	400454 <drawlaberinto>
  400144:	24050019 	li	a1,25
  400148:	2404001c 	li	a0,28
  40014c:	0c1003f3 	jal	400fcc <set_cursor>
  400150:	26240000 	addiu	a0,s1,0
  400154:	0c10041d 	jal	401074 <puts>
  400158:	1000ffca 	b	400084 <main+0x74>

0040015c <paintGreen>:
  40015c:	27bdffd0 	addiu	sp,sp,-48
  400160:	afb50028 	sw	s5,40(sp)
  400164:	afb2001c 	sw	s2,28(sp)
  400168:	afb00014 	sw	s0,20(sp)
  40016c:	00a09025 	move	s2,a1
  400170:	00808025 	move	s0,a0
  400174:	24050002 	li	a1,2
  400178:	2404000a 	li	a0,10
  40017c:	3c151001 	lui	s5,0x1001
  400180:	afb40024 	sw	s4,36(sp)
  400184:	afb30020 	sw	s3,32(sp)
  400188:	afbf002c 	sw	ra,44(sp)
  40018c:	afb10018 	sw	s1,24(sp)
  400190:	00c09825 	move	s3,a2
  400194:	00e0a025 	move	s4,a3
  400198:	26b50030 	addiu	s5,s5,48
  40019c:	0c1003e5 	jal	400f94 <set_color>
  4001a0:	0250102b 	sltu	v0,s2,s0
  4001a4:	10400015 	beqz	v0,4001fc <paintGreen+0xa0>
  4001a8:	8fbf002c 	lw	ra,44(sp)
  4001ac:	8fb50028 	lw	s5,40(sp)
  4001b0:	8fb40024 	lw	s4,36(sp)
  4001b4:	8fb30020 	lw	s3,32(sp)
  4001b8:	8fb2001c 	lw	s2,28(sp)
  4001bc:	8fb10018 	lw	s1,24(sp)
  4001c0:	8fb00014 	lw	s0,20(sp)
  4001c4:	27bd0030 	addiu	sp,sp,48
  4001c8:	03e00008 	jr	ra
  4001cc:	02202825 	move	a1,s1
  4001d0:	02002025 	move	a0,s0
  4001d4:	0c1003f3 	jal	400fcc <set_cursor>
  4001d8:	26310001 	addiu	s1,s1,1
  4001dc:	02a02025 	move	a0,s5
  4001e0:	0c10041d 	jal	401074 <puts>
  4001e4:	323100ff 	andi	s1,s1,0xff
  4001e8:	0291102b 	sltu	v0,s4,s1
  4001ec:	1040fff7 	beqz	v0,4001cc <paintGreen+0x70>
  4001f0:	26100001 	addiu	s0,s0,1
  4001f4:	321000ff 	andi	s0,s0,0xff
  4001f8:	1000ffe9 	b	4001a0 <paintGreen+0x44>
  4001fc:	02608825 	move	s1,s3
  400200:	1000fff9 	b	4001e8 <paintGreen+0x8c>

00400204 <paintHallV>:
  400204:	27bdffd8 	addiu	sp,sp,-40
  400208:	afb30020 	sw	s3,32(sp)
  40020c:	afb2001c 	sw	s2,28(sp)
  400210:	afb00014 	sw	s0,20(sp)
  400214:	00a09825 	move	s3,a1
  400218:	00808025 	move	s0,a0
  40021c:	00002825 	move	a1,zero
  400220:	00002025 	move	a0,zero
  400224:	3c121001 	lui	s2,0x1001
  400228:	afb10018 	sw	s1,24(sp)
  40022c:	afbf0024 	sw	ra,36(sp)
  400230:	00c08825 	move	s1,a2
  400234:	26520034 	addiu	s2,s2,52
  400238:	0c1003e5 	jal	400f94 <set_color>
  40023c:	0213102b 	sltu	v0,s0,s3
  400240:	14400007 	bnez	v0,400260 <paintHallV+0x5c>
  400244:	8fbf0024 	lw	ra,36(sp)
  400248:	8fb30020 	lw	s3,32(sp)
  40024c:	8fb2001c 	lw	s2,28(sp)
  400250:	8fb10018 	lw	s1,24(sp)
  400254:	8fb00014 	lw	s0,20(sp)
  400258:	27bd0028 	addiu	sp,sp,40
  40025c:	03e00008 	jr	ra
  400260:	02202825 	move	a1,s1
  400264:	02002025 	move	a0,s0
  400268:	26100001 	addiu	s0,s0,1
  40026c:	0c1003f3 	jal	400fcc <set_cursor>
  400270:	321000ff 	andi	s0,s0,0xff
  400274:	02402025 	move	a0,s2
  400278:	0c10041d 	jal	401074 <puts>
  40027c:	02002025 	move	a0,s0
  400280:	02202825 	move	a1,s1
  400284:	0c1003f3 	jal	400fcc <set_cursor>
  400288:	02402025 	move	a0,s2
  40028c:	0c10041d 	jal	401074 <puts>
  400290:	1000ffea 	b	40023c <paintHallV+0x38>

00400294 <paintHallH>:
  400294:	27bdffd8 	addiu	sp,sp,-40
  400298:	afb10014 	sw	s1,20(sp)
  40029c:	00808825 	move	s1,a0
  4002a0:	afb40020 	sw	s4,32(sp)
  4002a4:	afb20018 	sw	s2,24(sp)
  4002a8:	afb00010 	sw	s0,16(sp)
  4002ac:	00002025 	move	a0,zero
  4002b0:	00a08025 	move	s0,a1
  4002b4:	3c121001 	lui	s2,0x1001
  4002b8:	00002825 	move	a1,zero
  4002bc:	26340001 	addiu	s4,s1,1
  4002c0:	afb3001c 	sw	s3,28(sp)
  4002c4:	afbf0024 	sw	ra,36(sp)
  4002c8:	00c09825 	move	s3,a2
  4002cc:	26520034 	addiu	s2,s2,52
  4002d0:	0c1003e5 	jal	400f94 <set_color>
  4002d4:	329400ff 	andi	s4,s4,0xff
  4002d8:	0213102b 	sltu	v0,s0,s3
  4002dc:	14400008 	bnez	v0,400300 <paintHallH+0x6c>
  4002e0:	8fbf0024 	lw	ra,36(sp)
  4002e4:	8fb40020 	lw	s4,32(sp)
  4002e8:	8fb3001c 	lw	s3,28(sp)
  4002ec:	8fb20018 	lw	s2,24(sp)
  4002f0:	8fb10014 	lw	s1,20(sp)
  4002f4:	8fb00010 	lw	s0,16(sp)
  4002f8:	27bd0028 	addiu	sp,sp,40
  4002fc:	03e00008 	jr	ra
  400300:	02002825 	move	a1,s0
  400304:	02202025 	move	a0,s1
  400308:	0c1003f3 	jal	400fcc <set_cursor>
  40030c:	02402025 	move	a0,s2
  400310:	0c10041d 	jal	401074 <puts>
  400314:	02002825 	move	a1,s0
  400318:	02802025 	move	a0,s4
  40031c:	0c1003f3 	jal	400fcc <set_cursor>
  400320:	26100003 	addiu	s0,s0,3
  400324:	02402025 	move	a0,s2
  400328:	0c10041d 	jal	401074 <puts>
  40032c:	321000ff 	andi	s0,s0,0xff
  400330:	1000ffe9 	b	4002d8 <paintHallH+0x44>

00400334 <paintFloor>:
  400334:	27bdffe0 	addiu	sp,sp,-32
  400338:	afb10014 	sw	s1,20(sp)
  40033c:	afb00010 	sw	s0,16(sp)
  400340:	00a08825 	move	s1,a1
  400344:	00808025 	move	s0,a0
  400348:	00002825 	move	a1,zero
  40034c:	00002025 	move	a0,zero
  400350:	afbf001c 	sw	ra,28(sp)
  400354:	afb20018 	sw	s2,24(sp)
  400358:	0c1003e5 	jal	400f94 <set_color>
  40035c:	3c121001 	lui	s2,0x1001
  400360:	02202825 	move	a1,s1
  400364:	02002025 	move	a0,s0
  400368:	0c1003f3 	jal	400fcc <set_cursor>
  40036c:	26440034 	addiu	a0,s2,52
  400370:	0c10041d 	jal	401074 <puts>
  400374:	26040001 	addiu	a0,s0,1
  400378:	02202825 	move	a1,s1
  40037c:	308400ff 	andi	a0,a0,0xff
  400380:	0c1003f3 	jal	400fcc <set_cursor>
  400384:	8fbf001c 	lw	ra,28(sp)
  400388:	8fb10014 	lw	s1,20(sp)
  40038c:	8fb00010 	lw	s0,16(sp)
  400390:	26440034 	addiu	a0,s2,52
  400394:	8fb20018 	lw	s2,24(sp)
  400398:	27bd0020 	addiu	sp,sp,32
  40039c:	0810041d 	j	401074 <puts>

004003a0 <drawFigure>:
  4003a0:	27bdffe0 	addiu	sp,sp,-32
  4003a4:	afb10018 	sw	s1,24(sp)
  4003a8:	afb00014 	sw	s0,20(sp)
  4003ac:	00a08825 	move	s1,a1
  4003b0:	00808025 	move	s0,a0
  4003b4:	00002825 	move	a1,zero
  4003b8:	24040007 	li	a0,7
  4003bc:	afbf001c 	sw	ra,28(sp)
  4003c0:	0c1003e5 	jal	400f94 <set_color>
  4003c4:	02202825 	move	a1,s1
  4003c8:	02002025 	move	a0,s0
  4003cc:	0c1003f3 	jal	400fcc <set_cursor>
  4003d0:	3c041001 	lui	a0,0x1001
  4003d4:	24840038 	addiu	a0,a0,56
  4003d8:	0c10041d 	jal	401074 <puts>
  4003dc:	26040001 	addiu	a0,s0,1
  4003e0:	02202825 	move	a1,s1
  4003e4:	308400ff 	andi	a0,a0,0xff
  4003e8:	0c1003f3 	jal	400fcc <set_cursor>
  4003ec:	8fbf001c 	lw	ra,28(sp)
  4003f0:	8fb10018 	lw	s1,24(sp)
  4003f4:	8fb00014 	lw	s0,20(sp)
  4003f8:	3c041001 	lui	a0,0x1001
  4003fc:	2484003c 	addiu	a0,a0,60
  400400:	27bd0020 	addiu	sp,sp,32
  400404:	0810041d 	j	401074 <puts>

00400408 <drawCherry>:
  400408:	27bdffe0 	addiu	sp,sp,-32
  40040c:	afb10018 	sw	s1,24(sp)
  400410:	afb00014 	sw	s0,20(sp)
  400414:	00a08825 	move	s1,a1
  400418:	00808025 	move	s0,a0
  40041c:	2405000a 	li	a1,10
  400420:	24040004 	li	a0,4
  400424:	afbf001c 	sw	ra,28(sp)
  400428:	0c1003e5 	jal	400f94 <set_color>
  40042c:	02002025 	move	a0,s0
  400430:	02202825 	move	a1,s1
  400434:	0c1003f3 	jal	400fcc <set_cursor>
  400438:	8fbf001c 	lw	ra,28(sp)
  40043c:	8fb10018 	lw	s1,24(sp)
  400440:	8fb00014 	lw	s0,20(sp)
  400444:	3c041001 	lui	a0,0x1001
  400448:	24840040 	addiu	a0,a0,64
  40044c:	27bd0020 	addiu	sp,sp,32
  400450:	0810041d 	j	401074 <puts>

00400454 <drawlaberinto>:
  400454:	27bdffe8 	addiu	sp,sp,-24
  400458:	24070046 	li	a3,70
  40045c:	24060005 	li	a2,5
  400460:	24050019 	li	a1,25
  400464:	24040005 	li	a0,5
  400468:	afbf0014 	sw	ra,20(sp)
  40046c:	0c100057 	jal	40015c <paintGreen>
  400470:	24060026 	li	a2,38
  400474:	24050018 	li	a1,24
  400478:	24040006 	li	a0,6
  40047c:	0c100081 	jal	400204 <paintHallV>
  400480:	2406003c 	li	a2,60
  400484:	24050006 	li	a1,6
  400488:	24040017 	li	a0,23
  40048c:	0c1000a5 	jal	400294 <paintHallH>
  400490:	24060039 	li	a2,57
  400494:	24050016 	li	a1,22
  400498:	24040015 	li	a0,21
  40049c:	0c100081 	jal	400204 <paintHallV>
  4004a0:	24060045 	li	a2,69
  4004a4:	2405003c 	li	a1,60
  4004a8:	24040015 	li	a0,21
  4004ac:	0c1000a5 	jal	400294 <paintHallH>
  4004b0:	24060045 	li	a2,69
  4004b4:	24050016 	li	a1,22
  4004b8:	24040006 	li	a0,6
  4004bc:	0c100081 	jal	400204 <paintHallV>
  4004c0:	24060045 	li	a2,69
  4004c4:	2405003e 	li	a1,62
  4004c8:	24040006 	li	a0,6
  4004cc:	0c1000a5 	jal	400294 <paintHallH>
  4004d0:	2406003e 	li	a2,62
  4004d4:	2405000a 	li	a1,10
  4004d8:	24040008 	li	a0,8
  4004dc:	0c100081 	jal	400204 <paintHallV>
  4004e0:	2406003e 	li	a2,62
  4004e4:	24050034 	li	a1,52
  4004e8:	24040009 	li	a0,9
  4004ec:	0c1000a5 	jal	400294 <paintHallH>
  4004f0:	24060034 	li	a2,52
  4004f4:	24050009 	li	a1,9
  4004f8:	24040006 	li	a0,6
  4004fc:	0c100081 	jal	400204 <paintHallV>
  400500:	24060034 	li	a2,52
  400504:	24050027 	li	a1,39
  400508:	24040006 	li	a0,6
  40050c:	0c1000a5 	jal	400294 <paintHallH>
  400510:	24060006 	li	a2,6
  400514:	24050017 	li	a1,23
  400518:	24040013 	li	a0,19
  40051c:	0c100081 	jal	400204 <paintHallV>
  400520:	2406000f 	li	a2,15
  400524:	24050009 	li	a1,9
  400528:	24040013 	li	a0,19
  40052c:	0c1000a5 	jal	400294 <paintHallH>
  400530:	2406000c 	li	a2,12
  400534:	24050017 	li	a1,23
  400538:	24040015 	li	a0,21
  40053c:	0c100081 	jal	400204 <paintHallV>
  400540:	24050006 	li	a1,6
  400544:	24040007 	li	a0,7
  400548:	0c100102 	jal	400408 <drawCherry>
  40054c:	24050006 	li	a1,6
  400550:	24040008 	li	a0,8
  400554:	0c100102 	jal	400408 <drawCherry>
  400558:	24050006 	li	a1,6
  40055c:	24040009 	li	a0,9
  400560:	0c100102 	jal	400408 <drawCherry>
  400564:	24050006 	li	a1,6
  400568:	2404000a 	li	a0,10
  40056c:	0c100102 	jal	400408 <drawCherry>
  400570:	24050009 	li	a1,9
  400574:	24040007 	li	a0,7
  400578:	0c100102 	jal	400408 <drawCherry>
  40057c:	24050009 	li	a1,9
  400580:	24040008 	li	a0,8
  400584:	0c100102 	jal	400408 <drawCherry>
  400588:	24050009 	li	a1,9
  40058c:	24040009 	li	a0,9
  400590:	0c100102 	jal	400408 <drawCherry>
  400594:	24050009 	li	a1,9
  400598:	2404000a 	li	a0,10
  40059c:	0c100102 	jal	400408 <drawCherry>
  4005a0:	24050020 	li	a1,32
  4005a4:	2404000e 	li	a0,14
  4005a8:	0c100102 	jal	400408 <drawCherry>
  4005ac:	24050020 	li	a1,32
  4005b0:	2404000f 	li	a0,15
  4005b4:	0c100102 	jal	400408 <drawCherry>
  4005b8:	24050020 	li	a1,32
  4005bc:	24040010 	li	a0,16
  4005c0:	0c100102 	jal	400408 <drawCherry>
  4005c4:	24050020 	li	a1,32
  4005c8:	24040011 	li	a0,17
  4005cc:	0c100102 	jal	400408 <drawCherry>
  4005d0:	24050023 	li	a1,35
  4005d4:	2404000e 	li	a0,14
  4005d8:	0c100102 	jal	400408 <drawCherry>
  4005dc:	24050023 	li	a1,35
  4005e0:	2404000f 	li	a0,15
  4005e4:	0c100102 	jal	400408 <drawCherry>
  4005e8:	24050023 	li	a1,35
  4005ec:	24040010 	li	a0,16
  4005f0:	0c100102 	jal	400408 <drawCherry>
  4005f4:	24050023 	li	a1,35
  4005f8:	24040011 	li	a0,17
  4005fc:	0c100102 	jal	400408 <drawCherry>
  400600:	24050006 	li	a1,6
  400604:	2404000e 	li	a0,14
  400608:	0c100102 	jal	400408 <drawCherry>
  40060c:	24050009 	li	a1,9
  400610:	2404000e 	li	a0,14
  400614:	0c100102 	jal	400408 <drawCherry>
  400618:	2405000c 	li	a1,12
  40061c:	2404000e 	li	a0,14
  400620:	0c100102 	jal	400408 <drawCherry>
  400624:	2405000f 	li	a1,15
  400628:	2404000e 	li	a0,14
  40062c:	0c100102 	jal	400408 <drawCherry>
  400630:	24050006 	li	a1,6
  400634:	2404000f 	li	a0,15
  400638:	0c100102 	jal	400408 <drawCherry>
  40063c:	24050009 	li	a1,9
  400640:	2404000f 	li	a0,15
  400644:	0c100102 	jal	400408 <drawCherry>
  400648:	2405000c 	li	a1,12
  40064c:	2404000f 	li	a0,15
  400650:	0c100102 	jal	400408 <drawCherry>
  400654:	2405000f 	li	a1,15
  400658:	2404000f 	li	a0,15
  40065c:	0c100102 	jal	400408 <drawCherry>
  400660:	2405002b 	li	a1,43
  400664:	24040014 	li	a0,20
  400668:	0c100102 	jal	400408 <drawCherry>
  40066c:	2405002e 	li	a1,46
  400670:	24040014 	li	a0,20
  400674:	0c100102 	jal	400408 <drawCherry>
  400678:	24050031 	li	a1,49
  40067c:	24040014 	li	a0,20
  400680:	0c100102 	jal	400408 <drawCherry>
  400684:	24050034 	li	a1,52
  400688:	24040014 	li	a0,20
  40068c:	0c100102 	jal	400408 <drawCherry>
  400690:	2405002b 	li	a1,43
  400694:	24040015 	li	a0,21
  400698:	0c100102 	jal	400408 <drawCherry>
  40069c:	2405002e 	li	a1,46
  4006a0:	24040015 	li	a0,21
  4006a4:	0c100102 	jal	400408 <drawCherry>
  4006a8:	24050031 	li	a1,49
  4006ac:	24040015 	li	a0,21
  4006b0:	0c100102 	jal	400408 <drawCherry>
  4006b4:	24050034 	li	a1,52
  4006b8:	24040015 	li	a0,21
  4006bc:	0c100102 	jal	400408 <drawCherry>
  4006c0:	2405002e 	li	a1,46
  4006c4:	24040009 	li	a0,9
  4006c8:	0c100102 	jal	400408 <drawCherry>
  4006cc:	2405002e 	li	a1,46
  4006d0:	2404000a 	li	a0,10
  4006d4:	0c100102 	jal	400408 <drawCherry>
  4006d8:	2405002e 	li	a1,46
  4006dc:	2404000b 	li	a0,11
  4006e0:	0c100102 	jal	400408 <drawCherry>
  4006e4:	2405002e 	li	a1,46
  4006e8:	2404000c 	li	a0,12
  4006ec:	0c100102 	jal	400408 <drawCherry>
  4006f0:	24050031 	li	a1,49
  4006f4:	24040009 	li	a0,9
  4006f8:	0c100102 	jal	400408 <drawCherry>
  4006fc:	24050031 	li	a1,49
  400700:	2404000a 	li	a0,10
  400704:	0c100102 	jal	400408 <drawCherry>
  400708:	24050031 	li	a1,49
  40070c:	2404000b 	li	a0,11
  400710:	0c100102 	jal	400408 <drawCherry>
  400714:	24050031 	li	a1,49
  400718:	2404000c 	li	a0,12
  40071c:	0c100102 	jal	400408 <drawCherry>
  400720:	24050016 	li	a1,22
  400724:	24040014 	li	a0,20
  400728:	0c100102 	jal	400408 <drawCherry>
  40072c:	24050019 	li	a1,25
  400730:	24040014 	li	a0,20
  400734:	0c100102 	jal	400408 <drawCherry>
  400738:	2405001c 	li	a1,28
  40073c:	24040014 	li	a0,20
  400740:	0c100102 	jal	400408 <drawCherry>
  400744:	2405001f 	li	a1,31
  400748:	24040014 	li	a0,20
  40074c:	0c100102 	jal	400408 <drawCherry>
  400750:	24050016 	li	a1,22
  400754:	24040015 	li	a0,21
  400758:	0c100102 	jal	400408 <drawCherry>
  40075c:	24050019 	li	a1,25
  400760:	24040015 	li	a0,21
  400764:	0c100102 	jal	400408 <drawCherry>
  400768:	2405001c 	li	a1,28
  40076c:	24040015 	li	a0,21
  400770:	0c100102 	jal	400408 <drawCherry>
  400774:	2405001f 	li	a1,31
  400778:	24040015 	li	a0,21
  40077c:	0c100102 	jal	400408 <drawCherry>
  400780:	2405003c 	li	a1,60
  400784:	2404000e 	li	a0,14
  400788:	0c100102 	jal	400408 <drawCherry>
  40078c:	2405003c 	li	a1,60
  400790:	2404000f 	li	a0,15
  400794:	0c100102 	jal	400408 <drawCherry>
  400798:	2405003c 	li	a1,60
  40079c:	24040010 	li	a0,16
  4007a0:	0c100102 	jal	400408 <drawCherry>
  4007a4:	2405003c 	li	a1,60
  4007a8:	24040011 	li	a0,17
  4007ac:	0c100102 	jal	400408 <drawCherry>
  4007b0:	2405003f 	li	a1,63
  4007b4:	2404000e 	li	a0,14
  4007b8:	0c100102 	jal	400408 <drawCherry>
  4007bc:	2405003f 	li	a1,63
  4007c0:	2404000f 	li	a0,15
  4007c4:	0c100102 	jal	400408 <drawCherry>
  4007c8:	2405003f 	li	a1,63
  4007cc:	24040010 	li	a0,16
  4007d0:	0c100102 	jal	400408 <drawCherry>
  4007d4:	2405003f 	li	a1,63
  4007d8:	24040011 	li	a0,17
  4007dc:	0c100102 	jal	400408 <drawCherry>
  4007e0:	24050016 	li	a1,22
  4007e4:	24040006 	li	a0,6
  4007e8:	0c100102 	jal	400408 <drawCherry>
  4007ec:	24050019 	li	a1,25
  4007f0:	24040006 	li	a0,6
  4007f4:	0c100102 	jal	400408 <drawCherry>
  4007f8:	2405001c 	li	a1,28
  4007fc:	24040006 	li	a0,6
  400800:	0c100102 	jal	400408 <drawCherry>
  400804:	2405001f 	li	a1,31
  400808:	24040006 	li	a0,6
  40080c:	0c100102 	jal	400408 <drawCherry>
  400810:	24050016 	li	a1,22
  400814:	24040007 	li	a0,7
  400818:	0c100102 	jal	400408 <drawCherry>
  40081c:	24050019 	li	a1,25
  400820:	24040007 	li	a0,7
  400824:	0c100102 	jal	400408 <drawCherry>
  400828:	2405001c 	li	a1,28
  40082c:	24040007 	li	a0,7
  400830:	0c100102 	jal	400408 <drawCherry>
  400834:	2405001f 	li	a1,31
  400838:	24040007 	li	a0,7
  40083c:	0c100102 	jal	400408 <drawCherry>
  400840:	24050023 	li	a1,35
  400844:	24040001 	li	a0,1
  400848:	0c1003f3 	jal	400fcc <set_cursor>
  40084c:	24050001 	li	a1,1
  400850:	24040007 	li	a0,7
  400854:	0c1003e5 	jal	400f94 <set_color>
  400858:	3c041001 	lui	a0,0x1001
  40085c:	24840044 	addiu	a0,a0,68
  400860:	0c10041d 	jal	401074 <puts>
  400864:	3c021001 	lui	v0,0x1001
  400868:	a040005c 	sb	zero,92(v0)
  40086c:	3c021001 	lui	v0,0x1001
  400870:	a0400058 	sb	zero,88(v0)
  400874:	3c021001 	lui	v0,0x1001
  400878:	8fbf0014 	lw	ra,20(sp)
  40087c:	24030017 	li	v1,23
  400880:	a040005a 	sb	zero,90(v0)
  400884:	3c021001 	lui	v0,0x1001
  400888:	a0430064 	sb	v1,100(v0)
  40088c:	3c021001 	lui	v0,0x1001
  400890:	24030026 	li	v1,38
  400894:	24050026 	li	a1,38
  400898:	24040017 	li	a0,23
  40089c:	27bd0018 	addiu	sp,sp,24
  4008a0:	a0430059 	sb	v1,89(v0)
  4008a4:	081000e8 	j	4003a0 <drawFigure>

004008a8 <validateMovement>:
  4008a8:	2484fffa 	addiu	a0,a0,-6
  4008ac:	2c840012 	sltiu	a0,a0,18
  4008b0:	00001025 	move	v0,zero
  4008b4:	10800002 	beqz	a0,4008c0 <validateMovement+0x18>
  4008b8:	24a5fffa 	addiu	a1,a1,-6
  4008bc:	2ca20040 	sltiu	v0,a1,64
  4008c0:	03e00008 	jr	ra

004008c4 <counterSimulator>:
  4008c4:	3c041001 	lui	a0,0x1001
  4008c8:	9082005c 	lbu	v0,92(a0)
  4008cc:	2405000a 	li	a1,10
  4008d0:	24420001 	addiu	v0,v0,1
  4008d4:	304200ff 	andi	v0,v0,0xff
  4008d8:	a082005c 	sb	v0,92(a0)
  4008dc:	3c031001 	lui	v1,0x1001
  4008e0:	14450004 	bne	v0,a1,4008f4 <counterSimulator+0x30>
  4008e4:	90620058 	lbu	v0,88(v1)
  4008e8:	a080005c 	sb	zero,92(a0)
  4008ec:	24420001 	addiu	v0,v0,1
  4008f0:	a0620058 	sb	v0,88(v1)
  4008f4:	90640058 	lbu	a0,88(v1)
  4008f8:	2402000a 	li	v0,10
  4008fc:	14820005 	bne	a0,v0,400914 <counterSimulator+0x50>
  400900:	a0600058 	sb	zero,88(v1)
  400904:	3c031001 	lui	v1,0x1001
  400908:	9062005a 	lbu	v0,90(v1)
  40090c:	24420001 	addiu	v0,v0,1
  400910:	a062005a 	sb	v0,90(v1)
  400914:	03e00008 	jr	ra

00400918 <cherriesCounter>:
  400918:	27bdffe8 	addiu	sp,sp,-24
  40091c:	24020007 	li	v0,7
  400920:	00803825 	move	a3,a0
  400924:	afbf0014 	sw	ra,20(sp)
  400928:	00a03025 	move	a2,a1
  40092c:	14820019 	bne	a0,v0,400994 <cherriesCounter+0x7c>
  400930:	24a2fffa 	addiu	v0,a1,-6
  400934:	2c420002 	sltiu	v0,v0,2
  400938:	10400003 	beqz	v0,400948 <cherriesCounter+0x30>
  40093c:	0c100231 	jal	4008c4 <counterSimulator>
  400940:	24020010 	li	v0,16
  400944:	10e20043 	beq	a3,v0,400a54 <cherriesCounter+0x13c>
  400948:	24020011 	li	v0,17
  40094c:	14e20061 	bne	a3,v0,400ad4 <cherriesCounter+0x1bc>
  400950:	24c2ffe0 	addiu	v0,a2,-32
  400954:	2c420002 	sltiu	v0,v0,2
  400958:	14400041 	bnez	v0,400a60 <cherriesCounter+0x148>
  40095c:	24c2ffdd 	addiu	v0,a2,-35
  400960:	2c420002 	sltiu	v0,v0,2
  400964:	1440003e 	bnez	v0,400a60 <cherriesCounter+0x148>
  400968:	2402000a 	li	v0,10
  40096c:	14e20048 	bne	a3,v0,400a90 <cherriesCounter+0x178>
  400970:	24c2ffd2 	addiu	v0,a2,-46
  400974:	2c420002 	sltiu	v0,v0,2
  400978:	14400066 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  40097c:	2402000a 	li	v0,10
  400980:	14e200c0 	bne	a3,v0,400c84 <cherriesCounter+0x36c>
  400984:	24c2ffcf 	addiu	v0,a2,-49
  400988:	2c420002 	sltiu	v0,v0,2
  40098c:	10400062 	beqz	v0,400b18 <cherriesCounter+0x200>
  400990:	10000060 	b	400b14 <cherriesCounter+0x1fc>
  400994:	24020008 	li	v0,8
  400998:	14820016 	bne	a0,v0,4009f4 <cherriesCounter+0xdc>
  40099c:	24c2fffa 	addiu	v0,a2,-6
  4009a0:	2c420002 	sltiu	v0,v0,2
  4009a4:	1440ffe5 	bnez	v0,40093c <cherriesCounter+0x24>
  4009a8:	24c2fff7 	addiu	v0,a2,-9
  4009ac:	2c420002 	sltiu	v0,v0,2
  4009b0:	1440ffe2 	bnez	v0,40093c <cherriesCounter+0x24>
  4009b4:	2402000f 	li	v0,15
  4009b8:	14e2ffe1 	bne	a3,v0,400940 <cherriesCounter+0x28>
  4009bc:	24c2ffe0 	addiu	v0,a2,-32
  4009c0:	2c420002 	sltiu	v0,v0,2
  4009c4:	1040005c 	beqz	v0,400b38 <cherriesCounter+0x220>
  4009c8:	0c100231 	jal	4008c4 <counterSimulator>
  4009cc:	24c2fffa 	addiu	v0,a2,-6
  4009d0:	304300ff 	andi	v1,v0,0xff
  4009d4:	2c62000b 	sltiu	v0,v1,11
  4009d8:	10400049 	beqz	v0,400b00 <cherriesCounter+0x1e8>
  4009dc:	240206db 	li	v0,1755
  4009e0:	00621006 	srlv	v0,v0,v1
  4009e4:	30420001 	andi	v0,v0,0x1
  4009e8:	10400045 	beqz	v0,400b00 <cherriesCounter+0x1e8>
  4009ec:	0c100231 	jal	4008c4 <counterSimulator>
  4009f0:	10000043 	b	400b00 <cherriesCounter+0x1e8>
  4009f4:	24020009 	li	v0,9
  4009f8:	1082ffe8 	beq	a0,v0,40099c <cherriesCounter+0x84>
  4009fc:	2402000a 	li	v0,10
  400a00:	14820005 	bne	a0,v0,400a18 <cherriesCounter+0x100>
  400a04:	24a2fffa 	addiu	v0,a1,-6
  400a08:	2c420002 	sltiu	v0,v0,2
  400a0c:	1440ffcb 	bnez	v0,40093c <cherriesCounter+0x24>
  400a10:	24a2fff7 	addiu	v0,a1,-9
  400a14:	1000ffc7 	b	400934 <cherriesCounter+0x1c>
  400a18:	2402000e 	li	v0,14
  400a1c:	1482ffe5 	bne	a0,v0,4009b4 <cherriesCounter+0x9c>
  400a20:	24a2ffe0 	addiu	v0,a1,-32
  400a24:	2c420002 	sltiu	v0,v0,2
  400a28:	1040002a 	beqz	v0,400ad4 <cherriesCounter+0x1bc>
  400a2c:	0c100231 	jal	4008c4 <counterSimulator>
  400a30:	24c2fff7 	addiu	v0,a2,-9
  400a34:	304300ff 	andi	v1,v0,0xff
  400a38:	2c620008 	sltiu	v0,v1,8
  400a3c:	10400009 	beqz	v0,400a64 <cherriesCounter+0x14c>
  400a40:	240200db 	li	v0,219
  400a44:	00621006 	srlv	v0,v0,v1
  400a48:	30420001 	andi	v0,v0,0x1
  400a4c:	14400029 	bnez	v0,400af4 <cherriesCounter+0x1dc>
  400a50:	10000004 	b	400a64 <cherriesCounter+0x14c>
  400a54:	24c2ffe0 	addiu	v0,a2,-32
  400a58:	2c420002 	sltiu	v0,v0,2
  400a5c:	1040003e 	beqz	v0,400b58 <cherriesCounter+0x240>
  400a60:	0c100231 	jal	4008c4 <counterSimulator>
  400a64:	24020014 	li	v0,20
  400a68:	14e2003e 	bne	a3,v0,400b64 <cherriesCounter+0x24c>
  400a6c:	24c2ffd5 	addiu	v0,a2,-43
  400a70:	304300ff 	andi	v1,v0,0xff
  400a74:	2c62000b 	sltiu	v0,v1,11
  400a78:	10400007 	beqz	v0,400a98 <cherriesCounter+0x180>
  400a7c:	240206db 	li	v0,1755
  400a80:	00621006 	srlv	v0,v0,v1
  400a84:	30420001 	andi	v0,v0,0x1
  400a88:	10400003 	beqz	v0,400a98 <cherriesCounter+0x180>
  400a8c:	0c100231 	jal	4008c4 <counterSimulator>
  400a90:	2402000b 	li	v0,11
  400a94:	10e20047 	beq	a3,v0,400bb4 <cherriesCounter+0x29c>
  400a98:	2402000c 	li	v0,12
  400a9c:	14e20054 	bne	a3,v0,400bf0 <cherriesCounter+0x2d8>
  400aa0:	24c2ffd2 	addiu	v0,a2,-46
  400aa4:	2c420002 	sltiu	v0,v0,2
  400aa8:	1440001a 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  400aac:	2402000c 	li	v0,12
  400ab0:	14e20068 	bne	a3,v0,400c54 <cherriesCounter+0x33c>
  400ab4:	24c2ffcf 	addiu	v0,a2,-49
  400ab8:	2c420002 	sltiu	v0,v0,2
  400abc:	14400015 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  400ac0:	24020010 	li	v0,16
  400ac4:	10e20043 	beq	a3,v0,400bd4 <cherriesCounter+0x2bc>
  400ac8:	24020011 	li	v0,17
  400acc:	10e20041 	beq	a3,v0,400bd4 <cherriesCounter+0x2bc>
  400ad0:	10000056 	b	400c2c <cherriesCounter+0x314>
  400ad4:	2402000e 	li	v0,14
  400ad8:	14e20017 	bne	a3,v0,400b38 <cherriesCounter+0x220>
  400adc:	24c2ffdd 	addiu	v0,a2,-35
  400ae0:	2c420002 	sltiu	v0,v0,2
  400ae4:	1440ffd1 	bnez	v0,400a2c <cherriesCounter+0x114>
  400ae8:	24c2fffa 	addiu	v0,a2,-6
  400aec:	2c420002 	sltiu	v0,v0,2
  400af0:	1040ffcf 	beqz	v0,400a30 <cherriesCounter+0x118>
  400af4:	0c100231 	jal	4008c4 <counterSimulator>
  400af8:	24020015 	li	v0,21
  400afc:	10e2001e 	beq	a3,v0,400b78 <cherriesCounter+0x260>
  400b00:	24020009 	li	v0,9
  400b04:	14e2ff98 	bne	a3,v0,400968 <cherriesCounter+0x50>
  400b08:	24c2ffd2 	addiu	v0,a2,-46
  400b0c:	2c420002 	sltiu	v0,v0,2
  400b10:	10400039 	beqz	v0,400bf8 <cherriesCounter+0x2e0>
  400b14:	0c100231 	jal	4008c4 <counterSimulator>
  400b18:	2402000e 	li	v0,14
  400b1c:	14e2002b 	bne	a3,v0,400bcc <cherriesCounter+0x2b4>
  400b20:	24c2ffc4 	addiu	v0,a2,-60
  400b24:	2c420002 	sltiu	v0,v0,2
  400b28:	10400042 	beqz	v0,400c34 <cherriesCounter+0x31c>
  400b2c:	8fbf0014 	lw	ra,20(sp)
  400b30:	27bd0018 	addiu	sp,sp,24
  400b34:	08100231 	j	4008c4 <counterSimulator>
  400b38:	2402000f 	li	v0,15
  400b3c:	14e20004 	bne	a3,v0,400b50 <cherriesCounter+0x238>
  400b40:	24c2ffdd 	addiu	v0,a2,-35
  400b44:	2c420002 	sltiu	v0,v0,2
  400b48:	1040ffa0 	beqz	v0,4009cc <cherriesCounter+0xb4>
  400b4c:	1000ff9e 	b	4009c8 <cherriesCounter+0xb0>
  400b50:	24030010 	li	v1,16
  400b54:	14e30011 	bne	a3,v1,400b9c <cherriesCounter+0x284>
  400b58:	24c2ffdd 	addiu	v0,a2,-35
  400b5c:	2c420002 	sltiu	v0,v0,2
  400b60:	1440ffbf 	bnez	v0,400a60 <cherriesCounter+0x148>
  400b64:	24020015 	li	v0,21
  400b68:	14e2ffe5 	bne	a3,v0,400b00 <cherriesCounter+0x1e8>
  400b6c:	24c2ffd5 	addiu	v0,a2,-43
  400b70:	2c420002 	sltiu	v0,v0,2
  400b74:	1440ffc5 	bnez	v0,400a8c <cherriesCounter+0x174>
  400b78:	24c2ffd2 	addiu	v0,a2,-46
  400b7c:	304300ff 	andi	v1,v0,0xff
  400b80:	2c620008 	sltiu	v0,v1,8
  400b84:	1040ffc2 	beqz	v0,400a90 <cherriesCounter+0x178>
  400b88:	240200db 	li	v0,219
  400b8c:	00621006 	srlv	v0,v0,v1
  400b90:	30420001 	andi	v0,v0,0x1
  400b94:	1440ffbd 	bnez	v0,400a8c <cherriesCounter+0x174>
  400b98:	1000ffbd 	b	400a90 <cherriesCounter+0x178>
  400b9c:	24030011 	li	v1,17
  400ba0:	10e3ff6e 	beq	a3,v1,40095c <cherriesCounter+0x44>
  400ba4:	2403000e 	li	v1,14
  400ba8:	10e3ffcf 	beq	a3,v1,400ae8 <cherriesCounter+0x1d0>
  400bac:	10e2ff87 	beq	a3,v0,4009cc <cherriesCounter+0xb4>
  400bb0:	1000ffac 	b	400a64 <cherriesCounter+0x14c>
  400bb4:	24c2ffd2 	addiu	v0,a2,-46
  400bb8:	2c420002 	sltiu	v0,v0,2
  400bbc:	1440ffd5 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  400bc0:	24c2ffcf 	addiu	v0,a2,-49
  400bc4:	2c420002 	sltiu	v0,v0,2
  400bc8:	1440ffd2 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  400bcc:	2402000f 	li	v0,15
  400bd0:	14e2ffbb 	bne	a3,v0,400ac0 <cherriesCounter+0x1a8>
  400bd4:	24c2ffc4 	addiu	v0,a2,-60
  400bd8:	2c420002 	sltiu	v0,v0,2
  400bdc:	1440ffd3 	bnez	v0,400b2c <cherriesCounter+0x214>
  400be0:	24c6ffc1 	addiu	a2,a2,-63
  400be4:	2cc60002 	sltiu	a2,a2,2
  400be8:	10c00017 	beqz	a2,400c48 <cherriesCounter+0x330>
  400bec:	1000ffcf 	b	400b2c <cherriesCounter+0x214>
  400bf0:	24020009 	li	v0,9
  400bf4:	14e2ff61 	bne	a3,v0,40097c <cherriesCounter+0x64>
  400bf8:	24c2ffcf 	addiu	v0,a2,-49
  400bfc:	2c420002 	sltiu	v0,v0,2
  400c00:	1440ffc4 	bnez	v0,400b14 <cherriesCounter+0x1fc>
  400c04:	24020015 	li	v0,21
  400c08:	14e2ffc3 	bne	a3,v0,400b18 <cherriesCounter+0x200>
  400c0c:	24c2ffea 	addiu	v0,a2,-22
  400c10:	304300ff 	andi	v1,v0,0xff
  400c14:	2c62000b 	sltiu	v0,v1,11
  400c18:	10400004 	beqz	v0,400c2c <cherriesCounter+0x314>
  400c1c:	240206db 	li	v0,1755
  400c20:	00621006 	srlv	v0,v0,v1
  400c24:	30420001 	andi	v0,v0,0x1
  400c28:	14400014 	bnez	v0,400c7c <cherriesCounter+0x364>
  400c2c:	2402000e 	li	v0,14
  400c30:	14e20017 	bne	a3,v0,400c90 <cherriesCounter+0x378>
  400c34:	24c2ffc1 	addiu	v0,a2,-63
  400c38:	2c420002 	sltiu	v0,v0,2
  400c3c:	1440ffbb 	bnez	v0,400b2c <cherriesCounter+0x214>
  400c40:	24020007 	li	v0,7
  400c44:	10e2001a 	beq	a3,v0,400cb0 <cherriesCounter+0x398>
  400c48:	8fbf0014 	lw	ra,20(sp)
  400c4c:	27bd0018 	addiu	sp,sp,24
  400c50:	03e00008 	jr	ra
  400c54:	24020014 	li	v0,20
  400c58:	14e2ffea 	bne	a3,v0,400c04 <cherriesCounter+0x2ec>
  400c5c:	24c2ffea 	addiu	v0,a2,-22
  400c60:	304300ff 	andi	v1,v0,0xff
  400c64:	2c62000b 	sltiu	v0,v1,11
  400c68:	1040ff97 	beqz	v0,400ac8 <cherriesCounter+0x1b0>
  400c6c:	240206db 	li	v0,1755
  400c70:	00621006 	srlv	v0,v0,v1
  400c74:	30420001 	andi	v0,v0,0x1
  400c78:	1040ff93 	beqz	v0,400ac8 <cherriesCounter+0x1b0>
  400c7c:	0c100231 	jal	4008c4 <counterSimulator>
  400c80:	1000ff8f 	b	400ac0 <cherriesCounter+0x1a8>
  400c84:	2402000b 	li	v0,11
  400c88:	10e2ffcd 	beq	a3,v0,400bc0 <cherriesCounter+0x2a8>
  400c8c:	1000ff87 	b	400aac <cherriesCounter+0x194>
  400c90:	2402000f 	li	v0,15
  400c94:	10e2ffd2 	beq	a3,v0,400be0 <cherriesCounter+0x2c8>
  400c98:	24020010 	li	v0,16
  400c9c:	10e2ffd0 	beq	a3,v0,400be0 <cherriesCounter+0x2c8>
  400ca0:	24020011 	li	v0,17
  400ca4:	10e2ffce 	beq	a3,v0,400be0 <cherriesCounter+0x2c8>
  400ca8:	24020006 	li	v0,6
  400cac:	14e2ffe4 	bne	a3,v0,400c40 <cherriesCounter+0x328>
  400cb0:	24c2ffea 	addiu	v0,a2,-22
  400cb4:	304300ff 	andi	v1,v0,0xff
  400cb8:	2c620008 	sltiu	v0,v1,8
  400cbc:	10400004 	beqz	v0,400cd0 <cherriesCounter+0x3b8>
  400cc0:	240200db 	li	v0,219
  400cc4:	00621006 	srlv	v0,v0,v1
  400cc8:	30420001 	andi	v0,v0,0x1
  400ccc:	1440ff97 	bnez	v0,400b2c <cherriesCounter+0x214>
  400cd0:	24c6ffe1 	addiu	a2,a2,-31
  400cd4:	1000ffc3 	b	400be4 <cherriesCounter+0x2cc>

00400cd8 <moveFigure>:
  400cd8:	27bdffd8 	addiu	sp,sp,-40
  400cdc:	3c02ffff 	lui	v0,0xffff
  400ce0:	afb1001c 	sw	s1,28(sp)
  400ce4:	3c111001 	lui	s1,0x1001
  400ce8:	8c420008 	lw	v0,8(v0)
  400cec:	8e230060 	lw	v1,96(s1)
  400cf0:	afbf0024 	sw	ra,36(sp)
  400cf4:	00431023 	subu	v0,v0,v1
  400cf8:	2c420065 	sltiu	v0,v0,101
  400cfc:	afb20020 	sw	s2,32(sp)
  400d00:	afb00018 	sw	s0,24(sp)
  400d04:	1440001a 	bnez	v0,400d70 <moveFigure+0x98>
  400d08:	24020001 	li	v0,1
  400d0c:	1482001e 	bne	a0,v0,400d88 <moveFigure+0xb0>
  400d10:	3c101001 	lui	s0,0x1001
  400d14:	92030059 	lbu	v1,89(s0)
  400d18:	3c121001 	lui	s2,0x1001
  400d1c:	92440064 	lbu	a0,100(s2)
  400d20:	2465ffff 	addiu	a1,v1,-1
  400d24:	30a500ff 	andi	a1,a1,0xff
  400d28:	afa40010 	sw	a0,16(sp)
  400d2c:	a2050059 	sb	a1,89(s0)
  400d30:	0c10022a 	jal	4008a8 <validateMovement>
  400d34:	8fa40010 	lw	a0,16(sp)
  400d38:	10400028 	beqz	v0,400ddc <moveFigure+0x104>
  400d3c:	00602825 	move	a1,v1
  400d40:	0c1000cd 	jal	400334 <paintFloor>
  400d44:	92050059 	lbu	a1,89(s0)
  400d48:	92440064 	lbu	a0,100(s2)
  400d4c:	0c1000e8 	jal	4003a0 <drawFigure>
  400d50:	92050059 	lbu	a1,89(s0)
  400d54:	24a5ffff 	addiu	a1,a1,-1
  400d58:	92440064 	lbu	a0,100(s2)
  400d5c:	30a500ff 	andi	a1,a1,0xff
  400d60:	0c100246 	jal	400918 <cherriesCounter>
  400d64:	3c02ffff 	lui	v0,0xffff
  400d68:	8c420008 	lw	v0,8(v0)
  400d6c:	ae220060 	sw	v0,96(s1)
  400d70:	8fbf0024 	lw	ra,36(sp)
  400d74:	8fb20020 	lw	s2,32(sp)
  400d78:	8fb1001c 	lw	s1,28(sp)
  400d7c:	8fb00018 	lw	s0,24(sp)
  400d80:	27bd0028 	addiu	sp,sp,40
  400d84:	03e00008 	jr	ra
  400d88:	24020002 	li	v0,2
  400d8c:	14820015 	bne	a0,v0,400de4 <moveFigure+0x10c>
  400d90:	3c101001 	lui	s0,0x1001
  400d94:	92030059 	lbu	v1,89(s0)
  400d98:	3c121001 	lui	s2,0x1001
  400d9c:	92440064 	lbu	a0,100(s2)
  400da0:	24650001 	addiu	a1,v1,1
  400da4:	30a500ff 	andi	a1,a1,0xff
  400da8:	afa40010 	sw	a0,16(sp)
  400dac:	a2050059 	sb	a1,89(s0)
  400db0:	0c10022a 	jal	4008a8 <validateMovement>
  400db4:	8fa40010 	lw	a0,16(sp)
  400db8:	10400008 	beqz	v0,400ddc <moveFigure+0x104>
  400dbc:	00602825 	move	a1,v1
  400dc0:	0c1000cd 	jal	400334 <paintFloor>
  400dc4:	92050059 	lbu	a1,89(s0)
  400dc8:	92440064 	lbu	a0,100(s2)
  400dcc:	0c1000e8 	jal	4003a0 <drawFigure>
  400dd0:	92050059 	lbu	a1,89(s0)
  400dd4:	24a50001 	addiu	a1,a1,1
  400dd8:	1000ffdf 	b	400d58 <moveFigure+0x80>
  400ddc:	a2030059 	sb	v1,89(s0)
  400de0:	1000ffe0 	b	400d64 <moveFigure+0x8c>
  400de4:	24020003 	li	v0,3
  400de8:	14820017 	bne	a0,v0,400e48 <moveFigure+0x170>
  400dec:	3c101001 	lui	s0,0x1001
  400df0:	92030064 	lbu	v1,100(s0)
  400df4:	3c121001 	lui	s2,0x1001
  400df8:	92450059 	lbu	a1,89(s2)
  400dfc:	24640001 	addiu	a0,v1,1
  400e00:	308400ff 	andi	a0,a0,0xff
  400e04:	afa50010 	sw	a1,16(sp)
  400e08:	a2040064 	sb	a0,100(s0)
  400e0c:	0c10022a 	jal	4008a8 <validateMovement>
  400e10:	8fa50010 	lw	a1,16(sp)
  400e14:	10400023 	beqz	v0,400ea4 <moveFigure+0x1cc>
  400e18:	00602025 	move	a0,v1
  400e1c:	0c1000cd 	jal	400334 <paintFloor>
  400e20:	92450059 	lbu	a1,89(s2)
  400e24:	92040064 	lbu	a0,100(s0)
  400e28:	0c1000e8 	jal	4003a0 <drawFigure>
  400e2c:	92450059 	lbu	a1,89(s2)
  400e30:	92040064 	lbu	a0,100(s0)
  400e34:	24a50001 	addiu	a1,a1,1
  400e38:	24840001 	addiu	a0,a0,1
  400e3c:	30a500ff 	andi	a1,a1,0xff
  400e40:	308400ff 	andi	a0,a0,0xff
  400e44:	1000ffc6 	b	400d60 <moveFigure+0x88>
  400e48:	24020004 	li	v0,4
  400e4c:	1482ffc5 	bne	a0,v0,400d64 <moveFigure+0x8c>
  400e50:	3c101001 	lui	s0,0x1001
  400e54:	92030064 	lbu	v1,100(s0)
  400e58:	3c121001 	lui	s2,0x1001
  400e5c:	92450059 	lbu	a1,89(s2)
  400e60:	2464ffff 	addiu	a0,v1,-1
  400e64:	308400ff 	andi	a0,a0,0xff
  400e68:	afa50010 	sw	a1,16(sp)
  400e6c:	a2040064 	sb	a0,100(s0)
  400e70:	0c10022a 	jal	4008a8 <validateMovement>
  400e74:	8fa50010 	lw	a1,16(sp)
  400e78:	1040000a 	beqz	v0,400ea4 <moveFigure+0x1cc>
  400e7c:	00602025 	move	a0,v1
  400e80:	0c1000cd 	jal	400334 <paintFloor>
  400e84:	92450059 	lbu	a1,89(s2)
  400e88:	92040064 	lbu	a0,100(s0)
  400e8c:	0c1000e8 	jal	4003a0 <drawFigure>
  400e90:	92450059 	lbu	a1,89(s2)
  400e94:	92040064 	lbu	a0,100(s0)
  400e98:	24a50001 	addiu	a1,a1,1
  400e9c:	30a500ff 	andi	a1,a1,0xff
  400ea0:	1000ffaf 	b	400d60 <moveFigure+0x88>
  400ea4:	a2030064 	sb	v1,100(s0)
  400ea8:	1000ffae 	b	400d64 <moveFigure+0x8c>

00400eac <delay_ms>:
  400eac:	3c08ffff 	lui	t0,0xffff
  400eb0:	8d090008 	lw	t1,8(t0)
  400eb4:	00000000 	nop
  400eb8:	01244820 	add	t1,t1,a0

00400ebc <.dm_loop>:
  400ebc:	8d0a0008 	lw	t2,8(t0)
  400ec0:	00000000 	nop
  400ec4:	0149582b 	sltu	t3,t2,t1
  400ec8:	1560fffc 	bnez	t3,400ebc <.dm_loop>
  400ecc:	00000000 	nop
  400ed0:	03e00008 	jr	ra
  400ed4:	00000000 	nop

00400ed8 <keypad_init>:
  400ed8:	3c081001 	lui	t0,0x1001
  400edc:	ad000054 	sw	zero,84(t0)
  400ee0:	03e00008 	jr	ra
  400ee4:	00000000 	nop

00400ee8 <keypad_getkey>:
  400ee8:	3c08ffff 	lui	t0,0xffff
  400eec:	81080004 	lb	t0,4(t0)
  400ef0:	24090008 	li	t1,8
  400ef4:	240b0001 	li	t3,1
  400ef8:	00005025 	move	t2,zero

00400efc <.gk_loop>:
  400efc:	11490018 	beq	t2,t1,400f60 <.gk_end_loop>
  400f00:	00000000 	nop
  400f04:	010b6024 	and	t4,t0,t3
  400f08:	000b5840 	sll	t3,t3,0x1
  400f0c:	11800011 	beqz	t4,400f54 <.gk_inc_loop>
  400f10:	00000000 	nop
  400f14:	3c081001 	lui	t0,0x1001
  400f18:	8d080054 	lw	t0,84(t0)
  400f1c:	3c09ffff 	lui	t1,0xffff
  400f20:	8d290008 	lw	t1,8(t1)
  400f24:	00000000 	nop
  400f28:	0128582b 	sltu	t3,t1,t0
  400f2c:	11600002 	beqz	t3,400f38 <.set_key>
  400f30:	00000000 	nop
  400f34:	00001025 	move	v0,zero

00400f38 <.set_key>:
  400f38:	252900c8 	addiu	t1,t1,200
  400f3c:	3c081001 	lui	t0,0x1001
  400f40:	ad090054 	sw	t1,84(t0)
  400f44:	01401025 	move	v0,t2
  400f48:	24420001 	addiu	v0,v0,1
  400f4c:	03e00008 	jr	ra
  400f50:	00000000 	nop

00400f54 <.gk_inc_loop>:
  400f54:	254a0001 	addiu	t2,t2,1
  400f58:	081003bf 	j	400efc <.gk_loop>
  400f5c:	00000000 	nop

00400f60 <.gk_end_loop>:
  400f60:	00001025 	move	v0,zero
  400f64:	03e00008 	jr	ra
  400f68:	00000000 	nop

00400f6c <divide>:
  400f6c:	acc00000 	sw	zero,0(a2)
  400f70:	0085102b 	sltu	v0,a0,a1
  400f74:	10400002 	beqz	v0,400f80 <divide+0x14>
  400f78:	ace40000 	sw	a0,0(a3)
  400f7c:	03e00008 	jr	ra
  400f80:	8cc20000 	lw	v0,0(a2)
  400f84:	00852023 	subu	a0,a0,a1
  400f88:	24420001 	addiu	v0,v0,1
  400f8c:	acc20000 	sw	v0,0(a2)
  400f90:	1000fff7 	b	400f70 <divide+0x4>

00400f94 <set_color>:
  400f94:	00052900 	sll	a1,a1,0x4
  400f98:	3084000f 	andi	a0,a0,0xf
  400f9c:	00a42825 	or	a1,a1,a0
  400fa0:	3c021001 	lui	v0,0x1001
  400fa4:	a0450067 	sb	a1,103(v0)
  400fa8:	03e00008 	jr	ra

00400fac <get_color>:
  400fac:	3c031001 	lui	v1,0x1001
  400fb0:	90620067 	lbu	v0,103(v1)
  400fb4:	3042000f 	andi	v0,v0,0xf
  400fb8:	a0820000 	sb	v0,0(a0)
  400fbc:	90620067 	lbu	v0,103(v1)
  400fc0:	00021102 	srl	v0,v0,0x4
  400fc4:	a0a20000 	sb	v0,0(a1)
  400fc8:	03e00008 	jr	ra

00400fcc <set_cursor>:
  400fcc:	2c820028 	sltiu	v0,a0,40
  400fd0:	10400006 	beqz	v0,400fec <set_cursor+0x20>
  400fd4:	2ca20050 	sltiu	v0,a1,80
  400fd8:	10400004 	beqz	v0,400fec <set_cursor+0x20>
  400fdc:	3c021001 	lui	v0,0x1001
  400fe0:	a0440066 	sb	a0,102(v0)
  400fe4:	3c021001 	lui	v0,0x1001
  400fe8:	a0450065 	sb	a1,101(v0)
  400fec:	03e00008 	jr	ra

00400ff0 <put_char>:
  400ff0:	3c071001 	lui	a3,0x1001
  400ff4:	2403000a 	li	v1,10
  400ff8:	90e20066 	lbu	v0,102(a3)
  400ffc:	3c061001 	lui	a2,0x1001
  401000:	14830006 	bne	a0,v1,40101c <put_char+0x2c>
  401004:	2c430027 	sltiu	v1,v0,39
  401008:	10600002 	beqz	v1,401014 <put_char+0x24>
  40100c:	24420001 	addiu	v0,v0,1
  401010:	a0e20066 	sb	v0,102(a3)
  401014:	a0c00065 	sb	zero,101(a2)
  401018:	03e00008 	jr	ra
  40101c:	3c031001 	lui	v1,0x1001
  401020:	90630067 	lbu	v1,103(v1)
  401024:	90c50065 	lbu	a1,101(a2)
  401028:	00031a00 	sll	v1,v1,0x8
  40102c:	00642025 	or	a0,v1,a0
  401030:	00021880 	sll	v1,v0,0x2
  401034:	00621821 	addu	v1,v1,v0
  401038:	00031900 	sll	v1,v1,0x4
  40103c:	00651821 	addu	v1,v1,a1
  401040:	00031840 	sll	v1,v1,0x1
  401044:	3408b800 	li	t0,0xb800
  401048:	01031821 	addu	v1,t0,v1
  40104c:	a4640000 	sh	a0,0(v1)
  401050:	2ca3004f 	sltiu	v1,a1,79
  401054:	10600003 	beqz	v1,401064 <put_char+0x74>
  401058:	24a50001 	addiu	a1,a1,1
  40105c:	a0c50065 	sb	a1,101(a2)
  401060:	03e00008 	jr	ra
  401064:	24420001 	addiu	v0,v0,1
  401068:	a0c00065 	sb	zero,101(a2)
  40106c:	a0e20066 	sb	v0,102(a3)
  401070:	03e00008 	jr	ra

00401074 <puts>:
  401074:	00804825 	move	t1,a0
  401078:	80840000 	lb	a0,0(a0)
  40107c:	14800001 	bnez	a0,401084 <puts+0x10>
  401080:	03e00008 	jr	ra
  401084:	27bdffe8 	addiu	sp,sp,-24
  401088:	afbf0014 	sw	ra,20(sp)
  40108c:	308400ff 	andi	a0,a0,0xff
  401090:	25290001 	addiu	t1,t1,1
  401094:	0c1003fc 	jal	400ff0 <put_char>
  401098:	81240000 	lb	a0,0(t1)
  40109c:	1480fffb 	bnez	a0,40108c <puts+0x18>
  4010a0:	8fbf0014 	lw	ra,20(sp)
  4010a4:	27bd0018 	addiu	sp,sp,24
  4010a8:	03e00008 	jr	ra

004010ac <clear_screen>:
  4010ac:	3c021001 	lui	v0,0x1001
  4010b0:	90420067 	lbu	v0,103(v0)
  4010b4:	3403b800 	li	v1,0xb800
  4010b8:	00021200 	sll	v0,v0,0x8
  4010bc:	34420020 	ori	v0,v0,0x20
  4010c0:	3404cac0 	li	a0,0xcac0
  4010c4:	a4620000 	sh	v0,0(v1)
  4010c8:	24630002 	addiu	v1,v1,2
  4010cc:	1464fffd 	bne	v1,a0,4010c4 <clear_screen+0x18>
  4010d0:	3c021001 	lui	v0,0x1001
  4010d4:	a0400066 	sb	zero,102(v0)
  4010d8:	3c021001 	lui	v0,0x1001
  4010dc:	a0400065 	sb	zero,101(v0)
  4010e0:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <next_key_time-0x54>:
10010000:	50617261 	0x50617261
10010004:	20726569 	addi	s2,v1,25961
10010008:	6e696369 	0x6e696369
1001000c:	6172206a 	0x6172206a
10010010:	7565676f 	jalx	15959dbc <chr_attr+0x5949d55>
10010014:	20707265 	addi	s0,v1,29285
10010018:	73696f6e 	0x73696f6e
1001001c:	65202770 	0x65202770
10010020:	27000000 	addiu	zero,t8,0
10010024:	43657265 	c0	0x1657265
10010028:	7a61733a 	0x7a61733a
1001002c:	00000000 	nop
10010030:	04040400 	0x4040400
10010034:	01010100 	0x1010100
10010038:	05060700 	0x5060700
1001003c:	08090b00 	j	10242c00 <chr_attr+0x232b99>
10010040:	01020000 	0x1020000
10010044:	4d205220 	0x4d205220
10010048:	2e202044 	sltiu	zero,s1,8260
1001004c:	204f2021 	addi	t7,v0,8225
10010050:	00000000 	nop

10010054 <next_key_time>:
10010054:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5da928>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

10010058 <cont_decimas>:
	...

10010059 <figuraCol>:
	...

1001005a <cont_centecimas>:
	...

1001005b <tecla>:
	...

1001005c <cont_unidades>:
1001005c:	00000000 	nop

10010060 <tiempo_milisegundos>:
10010060:	00000000 	nop

10010064 <figuraRow>:
	...

10010065 <cursor_col>:
	...

10010066 <cursor_row>:
	...

10010067 <chr_attr>:
	...
