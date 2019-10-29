
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
  400038:	0c10056a 	jal	4015a8 <clear_screen>
  40003c:	3c02ffff 	lui	v0,0xffff
  400040:	8c420008 	lw	v0,8(v0)
  400044:	3c121001 	lui	s2,0x1001
  400048:	ae420074 	sw	v0,116(s2)
  40004c:	3c111001 	lui	s1,0x1001
  400050:	0c100115 	jal	400454 <drawlaberinto>
  400054:	24050019 	li	a1,25
  400058:	2404001c 	li	a0,28
  40005c:	0c100532 	jal	4014c8 <set_cursor>
  400060:	3c131001 	lui	s3,0x1001
  400064:	26240000 	addiu	a0,s1,0
  400068:	0c10055c 	jal	401570 <puts>
  40006c:	26730024 	addiu	s3,s3,36
  400070:	0c1004f5 	jal	4013d4 <keypad_init>
  400074:	3c151001 	lui	s5,0x1001
  400078:	3c161001 	lui	s6,0x1001
  40007c:	3c141001 	lui	s4,0x1001
  400080:	24170006 	li	s7,6
  400084:	0c1004f9 	jal	4013e4 <keypad_getkey>
  400088:	24050001 	li	a1,1
  40008c:	24040001 	li	a0,1
  400090:	00408025 	move	s0,v0
  400094:	0c100532 	jal	4014c8 <set_cursor>
  400098:	02602025 	move	a0,s3
  40009c:	0c10055c 	jal	401570 <puts>
  4000a0:	24040001 	li	a0,1
  4000a4:	2405000c 	li	a1,12
  4000a8:	0c100532 	jal	4014c8 <set_cursor>
  4000ac:	92a20070 	lbu	v0,112(s5)
  4000b0:	3042000f 	andi	v0,v0,0xf
  4000b4:	2c43000a 	sltiu	v1,v0,10
  4000b8:	24440057 	addiu	a0,v0,87
  4000bc:	10600001 	beqz	v1,4000c4 <main+0xb4>
  4000c0:	24440030 	addiu	a0,v0,48
  4000c4:	0c10053b 	jal	4014ec <put_char>
  4000c8:	24040001 	li	a0,1
  4000cc:	2405000b 	li	a1,11
  4000d0:	0c100532 	jal	4014c8 <set_cursor>
  4000d4:	92c2006c 	lbu	v0,108(s6)
  4000d8:	3042000f 	andi	v0,v0,0xf
  4000dc:	2c43000a 	sltiu	v1,v0,10
  4000e0:	24440057 	addiu	a0,v0,87
  4000e4:	10600001 	beqz	v1,4000ec <main+0xdc>
  4000e8:	24440030 	addiu	a0,v0,48
  4000ec:	0c10053b 	jal	4014ec <put_char>
  4000f0:	9282006e 	lbu	v0,110(s4)
  4000f4:	1040000a 	beqz	v0,400120 <main+0x110>
  4000f8:	24040001 	li	a0,1
  4000fc:	2405000a 	li	a1,10
  400100:	0c100532 	jal	4014c8 <set_cursor>
  400104:	9282006e 	lbu	v0,110(s4)
  400108:	3042000f 	andi	v0,v0,0xf
  40010c:	2c43000a 	sltiu	v1,v0,10
  400110:	24440057 	addiu	a0,v0,87
  400114:	10600001 	beqz	v1,40011c <main+0x10c>
  400118:	24440030 	addiu	a0,v0,48
  40011c:	0c10053b 	jal	4014ec <put_char>
  400120:	1200ffd8 	beqz	s0,400084 <main+0x74>
  400124:	02002025 	move	a0,s0
  400128:	0c100475 	jal	4011d4 <moveFigure>
  40012c:	1617ffd5 	bne	s0,s7,400084 <main+0x74>
  400130:	0c10056a 	jal	4015a8 <clear_screen>
  400134:	3c02ffff 	lui	v0,0xffff
  400138:	8c420008 	lw	v0,8(v0)
  40013c:	ae420074 	sw	v0,116(s2)
  400140:	0c100115 	jal	400454 <drawlaberinto>
  400144:	24050019 	li	a1,25
  400148:	2404001c 	li	a0,28
  40014c:	0c100532 	jal	4014c8 <set_cursor>
  400150:	26240000 	addiu	a0,s1,0
  400154:	0c10055c 	jal	401570 <puts>
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
  40019c:	0c100524 	jal	401490 <set_color>
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
  4001d4:	0c100532 	jal	4014c8 <set_cursor>
  4001d8:	26310001 	addiu	s1,s1,1
  4001dc:	02a02025 	move	a0,s5
  4001e0:	0c10055c 	jal	401570 <puts>
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
  400238:	0c100524 	jal	401490 <set_color>
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
  40026c:	0c100532 	jal	4014c8 <set_cursor>
  400270:	321000ff 	andi	s0,s0,0xff
  400274:	02402025 	move	a0,s2
  400278:	0c10055c 	jal	401570 <puts>
  40027c:	02002025 	move	a0,s0
  400280:	02202825 	move	a1,s1
  400284:	0c100532 	jal	4014c8 <set_cursor>
  400288:	02402025 	move	a0,s2
  40028c:	0c10055c 	jal	401570 <puts>
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
  4002d0:	0c100524 	jal	401490 <set_color>
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
  400308:	0c100532 	jal	4014c8 <set_cursor>
  40030c:	02402025 	move	a0,s2
  400310:	0c10055c 	jal	401570 <puts>
  400314:	02002825 	move	a1,s0
  400318:	02802025 	move	a0,s4
  40031c:	0c100532 	jal	4014c8 <set_cursor>
  400320:	26100003 	addiu	s0,s0,3
  400324:	02402025 	move	a0,s2
  400328:	0c10055c 	jal	401570 <puts>
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
  400358:	0c100524 	jal	401490 <set_color>
  40035c:	3c121001 	lui	s2,0x1001
  400360:	02202825 	move	a1,s1
  400364:	02002025 	move	a0,s0
  400368:	0c100532 	jal	4014c8 <set_cursor>
  40036c:	26440034 	addiu	a0,s2,52
  400370:	0c10055c 	jal	401570 <puts>
  400374:	26040001 	addiu	a0,s0,1
  400378:	02202825 	move	a1,s1
  40037c:	308400ff 	andi	a0,a0,0xff
  400380:	0c100532 	jal	4014c8 <set_cursor>
  400384:	8fbf001c 	lw	ra,28(sp)
  400388:	8fb10014 	lw	s1,20(sp)
  40038c:	8fb00010 	lw	s0,16(sp)
  400390:	26440034 	addiu	a0,s2,52
  400394:	8fb20018 	lw	s2,24(sp)
  400398:	27bd0020 	addiu	sp,sp,32
  40039c:	0810055c 	j	401570 <puts>

004003a0 <drawFigure>:
  4003a0:	27bdffe0 	addiu	sp,sp,-32
  4003a4:	afb10018 	sw	s1,24(sp)
  4003a8:	afb00014 	sw	s0,20(sp)
  4003ac:	00a08825 	move	s1,a1
  4003b0:	00808025 	move	s0,a0
  4003b4:	00002825 	move	a1,zero
  4003b8:	24040007 	li	a0,7
  4003bc:	afbf001c 	sw	ra,28(sp)
  4003c0:	0c100524 	jal	401490 <set_color>
  4003c4:	02202825 	move	a1,s1
  4003c8:	02002025 	move	a0,s0
  4003cc:	0c100532 	jal	4014c8 <set_cursor>
  4003d0:	3c041001 	lui	a0,0x1001
  4003d4:	24840038 	addiu	a0,a0,56
  4003d8:	0c10055c 	jal	401570 <puts>
  4003dc:	26040001 	addiu	a0,s0,1
  4003e0:	02202825 	move	a1,s1
  4003e4:	308400ff 	andi	a0,a0,0xff
  4003e8:	0c100532 	jal	4014c8 <set_cursor>
  4003ec:	8fbf001c 	lw	ra,28(sp)
  4003f0:	8fb10018 	lw	s1,24(sp)
  4003f4:	8fb00014 	lw	s0,20(sp)
  4003f8:	3c041001 	lui	a0,0x1001
  4003fc:	2484003c 	addiu	a0,a0,60
  400400:	27bd0020 	addiu	sp,sp,32
  400404:	0810055c 	j	401570 <puts>

00400408 <drawCherry>:
  400408:	27bdffe0 	addiu	sp,sp,-32
  40040c:	afb10018 	sw	s1,24(sp)
  400410:	afb00014 	sw	s0,20(sp)
  400414:	00a08825 	move	s1,a1
  400418:	00808025 	move	s0,a0
  40041c:	2405000a 	li	a1,10
  400420:	24040004 	li	a0,4
  400424:	afbf001c 	sw	ra,28(sp)
  400428:	0c100524 	jal	401490 <set_color>
  40042c:	02002025 	move	a0,s0
  400430:	02202825 	move	a1,s1
  400434:	0c100532 	jal	4014c8 <set_cursor>
  400438:	8fbf001c 	lw	ra,28(sp)
  40043c:	8fb10018 	lw	s1,24(sp)
  400440:	8fb00014 	lw	s0,20(sp)
  400444:	3c041001 	lui	a0,0x1001
  400448:	24840040 	addiu	a0,a0,64
  40044c:	27bd0020 	addiu	sp,sp,32
  400450:	0810055c 	j	401570 <puts>

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
  400848:	0c100532 	jal	4014c8 <set_cursor>
  40084c:	24050001 	li	a1,1
  400850:	24040007 	li	a0,7
  400854:	0c100524 	jal	401490 <set_color>
  400858:	3c041001 	lui	a0,0x1001
  40085c:	24840044 	addiu	a0,a0,68
  400860:	0c10055c 	jal	401570 <puts>
  400864:	3c021001 	lui	v0,0x1001
  400868:	a0400070 	sb	zero,112(v0)
  40086c:	3c021001 	lui	v0,0x1001
  400870:	a040006c 	sb	zero,108(v0)
  400874:	3c021001 	lui	v0,0x1001
  400878:	a040006e 	sb	zero,110(v0)
  40087c:	3c031001 	lui	v1,0x1001
  400880:	3c021001 	lui	v0,0x1001
  400884:	a040007c 	sb	zero,124(v0)
  400888:	24630080 	addiu	v1,v1,128
  40088c:	00001025 	move	v0,zero
  400890:	24040040 	li	a0,64
  400894:	00622821 	addu	a1,v1,v0
  400898:	24420001 	addiu	v0,v0,1
  40089c:	a0a00000 	sb	zero,0(a1)
  4008a0:	1444fffc 	bne	v0,a0,400894 <drawlaberinto+0x440>
  4008a4:	8fbf0014 	lw	ra,20(sp)
  4008a8:	3c021001 	lui	v0,0x1001
  4008ac:	24030017 	li	v1,23
  4008b0:	a0430078 	sb	v1,120(v0)
  4008b4:	3c021001 	lui	v0,0x1001
  4008b8:	24030026 	li	v1,38
  4008bc:	24050026 	li	a1,38
  4008c0:	24040017 	li	a0,23
  4008c4:	27bd0018 	addiu	sp,sp,24
  4008c8:	a043006d 	sb	v1,109(v0)
  4008cc:	081000e8 	j	4003a0 <drawFigure>

004008d0 <validateMovement>:
  4008d0:	2484fffa 	addiu	a0,a0,-6
  4008d4:	2c840012 	sltiu	a0,a0,18
  4008d8:	00001025 	move	v0,zero
  4008dc:	10800002 	beqz	a0,4008e8 <validateMovement+0x18>
  4008e0:	24a5fffa 	addiu	a1,a1,-6
  4008e4:	2ca20040 	sltiu	v0,a1,64
  4008e8:	03e00008 	jr	ra

004008ec <winDetector>:
  4008ec:	03e00008 	jr	ra

004008f0 <counterSimulator>:
  4008f0:	3c021001 	lui	v0,0x1001
  4008f4:	90430070 	lbu	v1,112(v0)
  4008f8:	2405000a 	li	a1,10
  4008fc:	24630001 	addiu	v1,v1,1
  400900:	306300ff 	andi	v1,v1,0xff
  400904:	a0430070 	sb	v1,112(v0)
  400908:	3c041001 	lui	a0,0x1001
  40090c:	14650004 	bne	v1,a1,400920 <counterSimulator+0x30>
  400910:	9083006c 	lbu	v1,108(a0)
  400914:	a0400070 	sb	zero,112(v0)
  400918:	24630001 	addiu	v1,v1,1
  40091c:	a083006c 	sb	v1,108(a0)
  400920:	9083006c 	lbu	v1,108(a0)
  400924:	2405000a 	li	a1,10
  400928:	14650006 	bne	v1,a1,400944 <counterSimulator+0x54>
  40092c:	3c031001 	lui	v1,0x1001
  400930:	9062006e 	lbu	v0,110(v1)
  400934:	a080006c 	sb	zero,108(a0)
  400938:	24420001 	addiu	v0,v0,1
  40093c:	a062006e 	sb	v0,110(v1)
  400940:	03e00008 	jr	ra
  400944:	2c630006 	sltiu	v1,v1,6
  400948:	14600010 	bnez	v1,40098c <counterSimulator+0x9c>
  40094c:	90420070 	lbu	v0,112(v0)
  400950:	2c420007 	sltiu	v0,v0,7
  400954:	1440000d 	bnez	v0,40098c <counterSimulator+0x9c>
  400958:	27bdffe8 	addiu	sp,sp,-24
  40095c:	24050023 	li	a1,35
  400960:	24040002 	li	a0,2
  400964:	afbf0014 	sw	ra,20(sp)
  400968:	0c100532 	jal	4014c8 <set_cursor>
  40096c:	24040007 	li	a0,7
  400970:	00002825 	move	a1,zero
  400974:	0c100524 	jal	401490 <set_color>
  400978:	8fbf0014 	lw	ra,20(sp)
  40097c:	3c041001 	lui	a0,0x1001
  400980:	24840054 	addiu	a0,a0,84
  400984:	27bd0018 	addiu	sp,sp,24
  400988:	0810055c 	j	401570 <puts>
  40098c:	03e00008 	jr	ra

00400990 <cherriesCounter>:
  400990:	27bdffe0 	addiu	sp,sp,-32
  400994:	24020007 	li	v0,7
  400998:	afb10018 	sw	s1,24(sp)
  40099c:	afb00014 	sw	s0,20(sp)
  4009a0:	afbf001c 	sw	ra,28(sp)
  4009a4:	00808825 	move	s1,a0
  4009a8:	00a08025 	move	s0,a1
  4009ac:	14820010 	bne	a0,v0,4009f0 <cherriesCounter+0x60>
  4009b0:	24a2fffa 	addiu	v0,a1,-6
  4009b4:	2c420002 	sltiu	v0,v0,2
  4009b8:	10400004 	beqz	v0,4009cc <cherriesCounter+0x3c>
  4009bc:	3c021001 	lui	v0,0x1001
  4009c0:	24030001 	li	v1,1
  4009c4:	a0430080 	sb	v1,128(v0)
  4009c8:	0c10023c 	jal	4008f0 <counterSimulator>
  4009cc:	24020011 	li	v0,17
  4009d0:	16220075 	bne	s1,v0,400ba8 <cherriesCounter+0x218>
  4009d4:	2602ffe0 	addiu	v0,s0,-32
  4009d8:	2c420002 	sltiu	v0,v0,2
  4009dc:	1040009d 	beqz	v0,400c54 <cherriesCounter+0x2c4>
  4009e0:	3c021001 	lui	v0,0x1001
  4009e4:	24030001 	li	v1,1
  4009e8:	a043008b 	sb	v1,139(v0)
  4009ec:	10000025 	b	400a84 <cherriesCounter+0xf4>
  4009f0:	24020008 	li	v0,8
  4009f4:	14820007 	bne	a0,v0,400a14 <cherriesCounter+0x84>
  4009f8:	24a2fffa 	addiu	v0,a1,-6
  4009fc:	2c420002 	sltiu	v0,v0,2
  400a00:	10400022 	beqz	v0,400a8c <cherriesCounter+0xfc>
  400a04:	3c021001 	lui	v0,0x1001
  400a08:	24030001 	li	v1,1
  400a0c:	a0430081 	sb	v1,129(v0)
  400a10:	1000ffed 	b	4009c8 <cherriesCounter+0x38>
  400a14:	24020009 	li	v0,9
  400a18:	14820007 	bne	a0,v0,400a38 <cherriesCounter+0xa8>
  400a1c:	24a2fffa 	addiu	v0,a1,-6
  400a20:	2c420002 	sltiu	v0,v0,2
  400a24:	10400020 	beqz	v0,400aa8 <cherriesCounter+0x118>
  400a28:	3c021001 	lui	v0,0x1001
  400a2c:	24030001 	li	v1,1
  400a30:	a0430082 	sb	v1,130(v0)
  400a34:	1000ffe4 	b	4009c8 <cherriesCounter+0x38>
  400a38:	2402000a 	li	v0,10
  400a3c:	14820028 	bne	a0,v0,400ae0 <cherriesCounter+0x150>
  400a40:	24a2fffa 	addiu	v0,a1,-6
  400a44:	2c420002 	sltiu	v0,v0,2
  400a48:	1040001e 	beqz	v0,400ac4 <cherriesCounter+0x134>
  400a4c:	3c021001 	lui	v0,0x1001
  400a50:	24030001 	li	v1,1
  400a54:	a0430083 	sb	v1,131(v0)
  400a58:	1000ffdb 	b	4009c8 <cherriesCounter+0x38>
  400a5c:	2402000f 	li	v0,15
  400a60:	12220043 	beq	s1,v0,400b70 <cherriesCounter+0x1e0>
  400a64:	24020010 	li	v0,16
  400a68:	1622ffd8 	bne	s1,v0,4009cc <cherriesCounter+0x3c>
  400a6c:	2602ffe0 	addiu	v0,s0,-32
  400a70:	2c420002 	sltiu	v0,v0,2
  400a74:	1040006e 	beqz	v0,400c30 <cherriesCounter+0x2a0>
  400a78:	3c021001 	lui	v0,0x1001
  400a7c:	24030001 	li	v1,1
  400a80:	a043008a 	sb	v1,138(v0)
  400a84:	0c10023c 	jal	4008f0 <counterSimulator>
  400a88:	10000027 	b	400b28 <cherriesCounter+0x198>
  400a8c:	24a2fff7 	addiu	v0,a1,-9
  400a90:	2c420002 	sltiu	v0,v0,2
  400a94:	1040fff3 	beqz	v0,400a64 <cherriesCounter+0xd4>
  400a98:	3c021001 	lui	v0,0x1001
  400a9c:	24030001 	li	v1,1
  400aa0:	a0430085 	sb	v1,133(v0)
  400aa4:	1000ffc8 	b	4009c8 <cherriesCounter+0x38>
  400aa8:	24a2fff7 	addiu	v0,a1,-9
  400aac:	2c420002 	sltiu	v0,v0,2
  400ab0:	1040ffec 	beqz	v0,400a64 <cherriesCounter+0xd4>
  400ab4:	3c021001 	lui	v0,0x1001
  400ab8:	24030001 	li	v1,1
  400abc:	a0430086 	sb	v1,134(v0)
  400ac0:	1000ffc1 	b	4009c8 <cherriesCounter+0x38>
  400ac4:	24a2fff7 	addiu	v0,a1,-9
  400ac8:	2c420002 	sltiu	v0,v0,2
  400acc:	1040ffbf 	beqz	v0,4009cc <cherriesCounter+0x3c>
  400ad0:	3c021001 	lui	v0,0x1001
  400ad4:	24030001 	li	v1,1
  400ad8:	a0430087 	sb	v1,135(v0)
  400adc:	1000ffba 	b	4009c8 <cherriesCounter+0x38>
  400ae0:	2402000e 	li	v0,14
  400ae4:	1482ffdd 	bne	a0,v0,400a5c <cherriesCounter+0xcc>
  400ae8:	24a2ffe0 	addiu	v0,a1,-32
  400aec:	2c420002 	sltiu	v0,v0,2
  400af0:	1040002d 	beqz	v0,400ba8 <cherriesCounter+0x218>
  400af4:	3c021001 	lui	v0,0x1001
  400af8:	24030001 	li	v1,1
  400afc:	a0430088 	sb	v1,136(v0)
  400b00:	0c10023c 	jal	4008f0 <counterSimulator>
  400b04:	2602fff4 	addiu	v0,s0,-12
  400b08:	2c420002 	sltiu	v0,v0,2
  400b0c:	10400068 	beqz	v0,400cb0 <cherriesCounter+0x320>
  400b10:	3c021001 	lui	v0,0x1001
  400b14:	24030001 	li	v1,1
  400b18:	a0430092 	sb	v1,146(v0)
  400b1c:	0c10023c 	jal	4008f0 <counterSimulator>
  400b20:	24020015 	li	v0,21
  400b24:	122200a3 	beq	s1,v0,400db4 <cherriesCounter+0x424>
  400b28:	24020009 	li	v0,9
  400b2c:	16220057 	bne	s1,v0,400c8c <cherriesCounter+0x2fc>
  400b30:	2602ffd2 	addiu	v0,s0,-46
  400b34:	2c420002 	sltiu	v0,v0,2
  400b38:	104000b7 	beqz	v0,400e18 <cherriesCounter+0x488>
  400b3c:	3c021001 	lui	v0,0x1001
  400b40:	24030001 	li	v1,1
  400b44:	a04300a0 	sb	v1,160(v0)
  400b48:	0c10023c 	jal	4008f0 <counterSimulator>
  400b4c:	2402000f 	li	v0,15
  400b50:	16220189 	bne	s1,v0,401178 <cherriesCounter+0x7e8>
  400b54:	2602ffc4 	addiu	v0,s0,-60
  400b58:	2c420002 	sltiu	v0,v0,2
  400b5c:	1040012d 	beqz	v0,401014 <cherriesCounter+0x684>
  400b60:	3c021001 	lui	v0,0x1001
  400b64:	24030001 	li	v1,1
  400b68:	a04300b1 	sb	v1,177(v0)
  400b6c:	100000c6 	b	400e88 <cherriesCounter+0x4f8>
  400b70:	2602ffe0 	addiu	v0,s0,-32
  400b74:	2c420002 	sltiu	v0,v0,2
  400b78:	10400014 	beqz	v0,400bcc <cherriesCounter+0x23c>
  400b7c:	3c021001 	lui	v0,0x1001
  400b80:	24030001 	li	v1,1
  400b84:	a0430089 	sb	v1,137(v0)
  400b88:	0c10023c 	jal	4008f0 <counterSimulator>
  400b8c:	2602fff7 	addiu	v0,s0,-9
  400b90:	2c420002 	sltiu	v0,v0,2
  400b94:	1040004d 	beqz	v0,400ccc <cherriesCounter+0x33c>
  400b98:	3c021001 	lui	v0,0x1001
  400b9c:	24030001 	li	v1,1
  400ba0:	a0430095 	sb	v1,149(v0)
  400ba4:	1000ffb7 	b	400a84 <cherriesCounter+0xf4>
  400ba8:	2402000e 	li	v0,14
  400bac:	16220007 	bne	s1,v0,400bcc <cherriesCounter+0x23c>
  400bb0:	2602ffdd 	addiu	v0,s0,-35
  400bb4:	2c420002 	sltiu	v0,v0,2
  400bb8:	1040002d 	beqz	v0,400c70 <cherriesCounter+0x2e0>
  400bbc:	3c021001 	lui	v0,0x1001
  400bc0:	24030001 	li	v1,1
  400bc4:	a043008c 	sb	v1,140(v0)
  400bc8:	1000ffcd 	b	400b00 <cherriesCounter+0x170>
  400bcc:	2402000f 	li	v0,15
  400bd0:	16220015 	bne	s1,v0,400c28 <cherriesCounter+0x298>
  400bd4:	2602ffdd 	addiu	v0,s0,-35
  400bd8:	2c420002 	sltiu	v0,v0,2
  400bdc:	1040016f 	beqz	v0,40119c <cherriesCounter+0x80c>
  400be0:	3c021001 	lui	v0,0x1001
  400be4:	24030001 	li	v1,1
  400be8:	a043008d 	sb	v1,141(v0)
  400bec:	1000ffe6 	b	400b88 <cherriesCounter+0x1f8>
  400bf0:	2403000e 	li	v1,14
  400bf4:	1223001e 	beq	s1,v1,400c70 <cherriesCounter+0x2e0>
  400bf8:	12220168 	beq	s1,v0,40119c <cherriesCounter+0x80c>
  400bfc:	24020014 	li	v0,20
  400c00:	12220040 	beq	s1,v0,400d04 <cherriesCounter+0x374>
  400c04:	24020015 	li	v0,21
  400c08:	1622ffc7 	bne	s1,v0,400b28 <cherriesCounter+0x198>
  400c0c:	2602ffd5 	addiu	v0,s0,-43
  400c10:	2c420002 	sltiu	v0,v0,2
  400c14:	10400060 	beqz	v0,400d98 <cherriesCounter+0x408>
  400c18:	3c021001 	lui	v0,0x1001
  400c1c:	24030001 	li	v1,1
  400c20:	a043009c 	sb	v1,156(v0)
  400c24:	1000003d 	b	400d1c <cherriesCounter+0x38c>
  400c28:	24030010 	li	v1,16
  400c2c:	16230007 	bne	s1,v1,400c4c <cherriesCounter+0x2bc>
  400c30:	2602ffdd 	addiu	v0,s0,-35
  400c34:	2c420002 	sltiu	v0,v0,2
  400c38:	1040fff2 	beqz	v0,400c04 <cherriesCounter+0x274>
  400c3c:	3c021001 	lui	v0,0x1001
  400c40:	24030001 	li	v1,1
  400c44:	a043008e 	sb	v1,142(v0)
  400c48:	1000ff8e 	b	400a84 <cherriesCounter+0xf4>
  400c4c:	24030011 	li	v1,17
  400c50:	1623ffe7 	bne	s1,v1,400bf0 <cherriesCounter+0x260>
  400c54:	2602ffdd 	addiu	v0,s0,-35
  400c58:	2c420002 	sltiu	v0,v0,2
  400c5c:	1040ffb2 	beqz	v0,400b28 <cherriesCounter+0x198>
  400c60:	3c021001 	lui	v0,0x1001
  400c64:	24030001 	li	v1,1
  400c68:	a043008f 	sb	v1,143(v0)
  400c6c:	1000ff85 	b	400a84 <cherriesCounter+0xf4>
  400c70:	2602fffa 	addiu	v0,s0,-6
  400c74:	2c420002 	sltiu	v0,v0,2
  400c78:	1040014f 	beqz	v0,4011b8 <cherriesCounter+0x828>
  400c7c:	3c021001 	lui	v0,0x1001
  400c80:	24030001 	li	v1,1
  400c84:	a0430090 	sb	v1,144(v0)
  400c88:	0c10023c 	jal	4008f0 <counterSimulator>
  400c8c:	2402000a 	li	v0,10
  400c90:	1622004f 	bne	s1,v0,400dd0 <cherriesCounter+0x440>
  400c94:	2602ffd2 	addiu	v0,s0,-46
  400c98:	2c420002 	sltiu	v0,v0,2
  400c9c:	10400065 	beqz	v0,400e34 <cherriesCounter+0x4a4>
  400ca0:	3c021001 	lui	v0,0x1001
  400ca4:	24030001 	li	v1,1
  400ca8:	a04300a1 	sb	v1,161(v0)
  400cac:	1000ffa6 	b	400b48 <cherriesCounter+0x1b8>
  400cb0:	2602fff1 	addiu	v0,s0,-15
  400cb4:	2c420002 	sltiu	v0,v0,2
  400cb8:	1040ffd0 	beqz	v0,400bfc <cherriesCounter+0x26c>
  400cbc:	3c021001 	lui	v0,0x1001
  400cc0:	24030001 	li	v1,1
  400cc4:	a0430093 	sb	v1,147(v0)
  400cc8:	1000ff94 	b	400b1c <cherriesCounter+0x18c>
  400ccc:	2602fff4 	addiu	v0,s0,-12
  400cd0:	2c420002 	sltiu	v0,v0,2
  400cd4:	10400004 	beqz	v0,400ce8 <cherriesCounter+0x358>
  400cd8:	3c021001 	lui	v0,0x1001
  400cdc:	24030001 	li	v1,1
  400ce0:	a0430096 	sb	v1,150(v0)
  400ce4:	1000ff67 	b	400a84 <cherriesCounter+0xf4>
  400ce8:	2602fff1 	addiu	v0,s0,-15
  400cec:	2c420002 	sltiu	v0,v0,2
  400cf0:	1040ff8d 	beqz	v0,400b28 <cherriesCounter+0x198>
  400cf4:	3c021001 	lui	v0,0x1001
  400cf8:	24030001 	li	v1,1
  400cfc:	a0430097 	sb	v1,151(v0)
  400d00:	1000ff60 	b	400a84 <cherriesCounter+0xf4>
  400d04:	2602ffd5 	addiu	v0,s0,-43
  400d08:	2c420002 	sltiu	v0,v0,2
  400d0c:	1040000d 	beqz	v0,400d44 <cherriesCounter+0x3b4>
  400d10:	3c021001 	lui	v0,0x1001
  400d14:	24030001 	li	v1,1
  400d18:	a0430098 	sb	v1,152(v0)
  400d1c:	0c10023c 	jal	4008f0 <counterSimulator>
  400d20:	2402000c 	li	v0,12
  400d24:	1622003a 	bne	s1,v0,400e10 <cherriesCounter+0x480>
  400d28:	2602ffd2 	addiu	v0,s0,-46
  400d2c:	2c420002 	sltiu	v0,v0,2
  400d30:	10400065 	beqz	v0,400ec8 <cherriesCounter+0x538>
  400d34:	3c021001 	lui	v0,0x1001
  400d38:	24030001 	li	v1,1
  400d3c:	a04300a3 	sb	v1,163(v0)
  400d40:	1000ff81 	b	400b48 <cherriesCounter+0x1b8>
  400d44:	2602ffd2 	addiu	v0,s0,-46
  400d48:	2c420002 	sltiu	v0,v0,2
  400d4c:	10400004 	beqz	v0,400d60 <cherriesCounter+0x3d0>
  400d50:	3c021001 	lui	v0,0x1001
  400d54:	24030001 	li	v1,1
  400d58:	a0430099 	sb	v1,153(v0)
  400d5c:	1000ffef 	b	400d1c <cherriesCounter+0x38c>
  400d60:	2602ffcf 	addiu	v0,s0,-49
  400d64:	2c420002 	sltiu	v0,v0,2
  400d68:	10400004 	beqz	v0,400d7c <cherriesCounter+0x3ec>
  400d6c:	3c021001 	lui	v0,0x1001
  400d70:	24030001 	li	v1,1
  400d74:	a043009a 	sb	v1,154(v0)
  400d78:	1000ffe8 	b	400d1c <cherriesCounter+0x38c>
  400d7c:	2602ffcc 	addiu	v0,s0,-52
  400d80:	2c420002 	sltiu	v0,v0,2
  400d84:	1040ffe6 	beqz	v0,400d20 <cherriesCounter+0x390>
  400d88:	3c021001 	lui	v0,0x1001
  400d8c:	24030001 	li	v1,1
  400d90:	a043009b 	sb	v1,155(v0)
  400d94:	1000ffe1 	b	400d1c <cherriesCounter+0x38c>
  400d98:	2602ffd2 	addiu	v0,s0,-46
  400d9c:	2c420002 	sltiu	v0,v0,2
  400da0:	10400004 	beqz	v0,400db4 <cherriesCounter+0x424>
  400da4:	3c021001 	lui	v0,0x1001
  400da8:	24030001 	li	v1,1
  400dac:	a043009d 	sb	v1,157(v0)
  400db0:	1000ffda 	b	400d1c <cherriesCounter+0x38c>
  400db4:	2602ffcf 	addiu	v0,s0,-49
  400db8:	2c420002 	sltiu	v0,v0,2
  400dbc:	1040000d 	beqz	v0,400df4 <cherriesCounter+0x464>
  400dc0:	3c021001 	lui	v0,0x1001
  400dc4:	24030001 	li	v1,1
  400dc8:	a043009e 	sb	v1,158(v0)
  400dcc:	0c10023c 	jal	4008f0 <counterSimulator>
  400dd0:	2402000b 	li	v0,11
  400dd4:	1622ffd2 	bne	s1,v0,400d20 <cherriesCounter+0x390>
  400dd8:	2602ffd2 	addiu	v0,s0,-46
  400ddc:	2c420002 	sltiu	v0,v0,2
  400de0:	10400030 	beqz	v0,400ea4 <cherriesCounter+0x514>
  400de4:	3c021001 	lui	v0,0x1001
  400de8:	24030001 	li	v1,1
  400dec:	a04300a2 	sb	v1,162(v0)
  400df0:	1000ff55 	b	400b48 <cherriesCounter+0x1b8>
  400df4:	2602ffcc 	addiu	v0,s0,-52
  400df8:	2c420002 	sltiu	v0,v0,2
  400dfc:	1040fff4 	beqz	v0,400dd0 <cherriesCounter+0x440>
  400e00:	3c021001 	lui	v0,0x1001
  400e04:	24030001 	li	v1,1
  400e08:	a043009f 	sb	v1,159(v0)
  400e0c:	1000ffef 	b	400dcc <cherriesCounter+0x43c>
  400e10:	24020009 	li	v0,9
  400e14:	16220007 	bne	s1,v0,400e34 <cherriesCounter+0x4a4>
  400e18:	2602ffcf 	addiu	v0,s0,-49
  400e1c:	2c420002 	sltiu	v0,v0,2
  400e20:	1040000f 	beqz	v0,400e60 <cherriesCounter+0x4d0>
  400e24:	3c021001 	lui	v0,0x1001
  400e28:	24030001 	li	v1,1
  400e2c:	a04300a4 	sb	v1,164(v0)
  400e30:	1000ff45 	b	400b48 <cherriesCounter+0x1b8>
  400e34:	2402000a 	li	v0,10
  400e38:	16220018 	bne	s1,v0,400e9c <cherriesCounter+0x50c>
  400e3c:	2602ffcf 	addiu	v0,s0,-49
  400e40:	2c420002 	sltiu	v0,v0,2
  400e44:	10400008 	beqz	v0,400e68 <cherriesCounter+0x4d8>
  400e48:	3c021001 	lui	v0,0x1001
  400e4c:	24030001 	li	v1,1
  400e50:	a04300a5 	sb	v1,165(v0)
  400e54:	1000ff3c 	b	400b48 <cherriesCounter+0x1b8>
  400e58:	24020014 	li	v0,20
  400e5c:	12220021 	beq	s1,v0,400ee4 <cherriesCounter+0x554>
  400e60:	24020015 	li	v0,21
  400e64:	12220044 	beq	s1,v0,400f78 <cherriesCounter+0x5e8>
  400e68:	2402000e 	li	v0,14
  400e6c:	1622ff37 	bne	s1,v0,400b4c <cherriesCounter+0x1bc>
  400e70:	2602ffc4 	addiu	v0,s0,-60
  400e74:	2c420002 	sltiu	v0,v0,2
  400e78:	1040005d 	beqz	v0,400ff0 <cherriesCounter+0x660>
  400e7c:	3c021001 	lui	v0,0x1001
  400e80:	24030001 	li	v1,1
  400e84:	a04300b0 	sb	v1,176(v0)
  400e88:	8fbf001c 	lw	ra,28(sp)
  400e8c:	8fb10018 	lw	s1,24(sp)
  400e90:	8fb00014 	lw	s0,20(sp)
  400e94:	27bd0020 	addiu	sp,sp,32
  400e98:	0810023c 	j	4008f0 <counterSimulator>
  400e9c:	2402000b 	li	v0,11
  400ea0:	16220007 	bne	s1,v0,400ec0 <cherriesCounter+0x530>
  400ea4:	2602ffcf 	addiu	v0,s0,-49
  400ea8:	2c420002 	sltiu	v0,v0,2
  400eac:	1040ff27 	beqz	v0,400b4c <cherriesCounter+0x1bc>
  400eb0:	3c021001 	lui	v0,0x1001
  400eb4:	24030001 	li	v1,1
  400eb8:	a04300a6 	sb	v1,166(v0)
  400ebc:	1000ff22 	b	400b48 <cherriesCounter+0x1b8>
  400ec0:	2402000c 	li	v0,12
  400ec4:	1622ffe4 	bne	s1,v0,400e58 <cherriesCounter+0x4c8>
  400ec8:	2602ffcf 	addiu	v0,s0,-49
  400ecc:	2c420002 	sltiu	v0,v0,2
  400ed0:	1040ff1e 	beqz	v0,400b4c <cherriesCounter+0x1bc>
  400ed4:	3c021001 	lui	v0,0x1001
  400ed8:	24030001 	li	v1,1
  400edc:	a04300a7 	sb	v1,167(v0)
  400ee0:	1000ff19 	b	400b48 <cherriesCounter+0x1b8>
  400ee4:	2602ffea 	addiu	v0,s0,-22
  400ee8:	2c420002 	sltiu	v0,v0,2
  400eec:	1040000d 	beqz	v0,400f24 <cherriesCounter+0x594>
  400ef0:	3c021001 	lui	v0,0x1001
  400ef4:	24030001 	li	v1,1
  400ef8:	a04300a8 	sb	v1,168(v0)
  400efc:	0c10023c 	jal	4008f0 <counterSimulator>
  400f00:	24020011 	li	v0,17
  400f04:	16220038 	bne	s1,v0,400fe8 <cherriesCounter+0x658>
  400f08:	2602ffc4 	addiu	v0,s0,-60
  400f0c:	2c420002 	sltiu	v0,v0,2
  400f10:	1040005a 	beqz	v0,40107c <cherriesCounter+0x6ec>
  400f14:	3c021001 	lui	v0,0x1001
  400f18:	24030001 	li	v1,1
  400f1c:	a04300b3 	sb	v1,179(v0)
  400f20:	1000ffd9 	b	400e88 <cherriesCounter+0x4f8>
  400f24:	2602ffe7 	addiu	v0,s0,-25
  400f28:	2c420002 	sltiu	v0,v0,2
  400f2c:	10400004 	beqz	v0,400f40 <cherriesCounter+0x5b0>
  400f30:	3c021001 	lui	v0,0x1001
  400f34:	24030001 	li	v1,1
  400f38:	a04300a9 	sb	v1,169(v0)
  400f3c:	1000ffef 	b	400efc <cherriesCounter+0x56c>
  400f40:	2602ffe4 	addiu	v0,s0,-28
  400f44:	2c420002 	sltiu	v0,v0,2
  400f48:	10400004 	beqz	v0,400f5c <cherriesCounter+0x5cc>
  400f4c:	3c021001 	lui	v0,0x1001
  400f50:	24030001 	li	v1,1
  400f54:	a04300aa 	sb	v1,170(v0)
  400f58:	1000ffe8 	b	400efc <cherriesCounter+0x56c>
  400f5c:	2602ffe1 	addiu	v0,s0,-31
  400f60:	2c420002 	sltiu	v0,v0,2
  400f64:	1040ffe6 	beqz	v0,400f00 <cherriesCounter+0x570>
  400f68:	3c021001 	lui	v0,0x1001
  400f6c:	24030001 	li	v1,1
  400f70:	a04300ab 	sb	v1,171(v0)
  400f74:	1000ffe1 	b	400efc <cherriesCounter+0x56c>
  400f78:	2602ffea 	addiu	v0,s0,-22
  400f7c:	2c420002 	sltiu	v0,v0,2
  400f80:	10400004 	beqz	v0,400f94 <cherriesCounter+0x604>
  400f84:	3c021001 	lui	v0,0x1001
  400f88:	24030001 	li	v1,1
  400f8c:	a04300ac 	sb	v1,172(v0)
  400f90:	1000ffda 	b	400efc <cherriesCounter+0x56c>
  400f94:	2602ffe7 	addiu	v0,s0,-25
  400f98:	2c420002 	sltiu	v0,v0,2
  400f9c:	10400004 	beqz	v0,400fb0 <cherriesCounter+0x620>
  400fa0:	3c021001 	lui	v0,0x1001
  400fa4:	24030001 	li	v1,1
  400fa8:	a04300ad 	sb	v1,173(v0)
  400fac:	1000ffd3 	b	400efc <cherriesCounter+0x56c>
  400fb0:	2602ffe4 	addiu	v0,s0,-28
  400fb4:	2c420002 	sltiu	v0,v0,2
  400fb8:	10400004 	beqz	v0,400fcc <cherriesCounter+0x63c>
  400fbc:	3c021001 	lui	v0,0x1001
  400fc0:	24030001 	li	v1,1
  400fc4:	a04300ae 	sb	v1,174(v0)
  400fc8:	1000ffcc 	b	400efc <cherriesCounter+0x56c>
  400fcc:	2602ffe1 	addiu	v0,s0,-31
  400fd0:	2c420002 	sltiu	v0,v0,2
  400fd4:	1040ffca 	beqz	v0,400f00 <cherriesCounter+0x570>
  400fd8:	3c021001 	lui	v0,0x1001
  400fdc:	24030001 	li	v1,1
  400fe0:	a04300af 	sb	v1,175(v0)
  400fe4:	1000ffc5 	b	400efc <cherriesCounter+0x56c>
  400fe8:	2403000e 	li	v1,14
  400fec:	16230007 	bne	s1,v1,40100c <cherriesCounter+0x67c>
  400ff0:	2602ffc1 	addiu	v0,s0,-63
  400ff4:	2c420002 	sltiu	v0,v0,2
  400ff8:	1040000f 	beqz	v0,401038 <cherriesCounter+0x6a8>
  400ffc:	3c021001 	lui	v0,0x1001
  401000:	24030001 	li	v1,1
  401004:	a04300b4 	sb	v1,180(v0)
  401008:	1000ff9f 	b	400e88 <cherriesCounter+0x4f8>
  40100c:	2403000f 	li	v1,15
  401010:	16230010 	bne	s1,v1,401054 <cherriesCounter+0x6c4>
  401014:	2610ffc1 	addiu	s0,s0,-63
  401018:	2e100002 	sltiu	s0,s0,2
  40101c:	12000008 	beqz	s0,401040 <cherriesCounter+0x6b0>
  401020:	3c021001 	lui	v0,0x1001
  401024:	24030001 	li	v1,1
  401028:	a04300b5 	sb	v1,181(v0)
  40102c:	1000ff96 	b	400e88 <cherriesCounter+0x4f8>
  401030:	24020006 	li	v0,6
  401034:	12220018 	beq	s1,v0,401098 <cherriesCounter+0x708>
  401038:	24020007 	li	v0,7
  40103c:	12220032 	beq	s1,v0,401108 <cherriesCounter+0x778>
  401040:	8fbf001c 	lw	ra,28(sp)
  401044:	8fb10018 	lw	s1,24(sp)
  401048:	8fb00014 	lw	s0,20(sp)
  40104c:	27bd0020 	addiu	sp,sp,32
  401050:	03e00008 	jr	ra
  401054:	24030010 	li	v1,16
  401058:	16230007 	bne	s1,v1,401078 <cherriesCounter+0x6e8>
  40105c:	2610ffc1 	addiu	s0,s0,-63
  401060:	2e100002 	sltiu	s0,s0,2
  401064:	1200fff6 	beqz	s0,401040 <cherriesCounter+0x6b0>
  401068:	3c021001 	lui	v0,0x1001
  40106c:	24030001 	li	v1,1
  401070:	a04300b6 	sb	v1,182(v0)
  401074:	1000ff84 	b	400e88 <cherriesCounter+0x4f8>
  401078:	1622ffed 	bne	s1,v0,401030 <cherriesCounter+0x6a0>
  40107c:	2610ffc1 	addiu	s0,s0,-63
  401080:	2e100002 	sltiu	s0,s0,2
  401084:	1200ffee 	beqz	s0,401040 <cherriesCounter+0x6b0>
  401088:	3c021001 	lui	v0,0x1001
  40108c:	24030001 	li	v1,1
  401090:	a04300b7 	sb	v1,183(v0)
  401094:	1000ff7c 	b	400e88 <cherriesCounter+0x4f8>
  401098:	2602ffea 	addiu	v0,s0,-22
  40109c:	2c420002 	sltiu	v0,v0,2
  4010a0:	10400004 	beqz	v0,4010b4 <cherriesCounter+0x724>
  4010a4:	3c021001 	lui	v0,0x1001
  4010a8:	24030001 	li	v1,1
  4010ac:	a04300b8 	sb	v1,184(v0)
  4010b0:	1000ff75 	b	400e88 <cherriesCounter+0x4f8>
  4010b4:	2602ffe7 	addiu	v0,s0,-25
  4010b8:	2c420002 	sltiu	v0,v0,2
  4010bc:	10400004 	beqz	v0,4010d0 <cherriesCounter+0x740>
  4010c0:	3c021001 	lui	v0,0x1001
  4010c4:	24030001 	li	v1,1
  4010c8:	a04300b9 	sb	v1,185(v0)
  4010cc:	1000ff6e 	b	400e88 <cherriesCounter+0x4f8>
  4010d0:	2602ffe4 	addiu	v0,s0,-28
  4010d4:	2c420002 	sltiu	v0,v0,2
  4010d8:	10400004 	beqz	v0,4010ec <cherriesCounter+0x75c>
  4010dc:	3c021001 	lui	v0,0x1001
  4010e0:	24030001 	li	v1,1
  4010e4:	a04300ba 	sb	v1,186(v0)
  4010e8:	1000ff67 	b	400e88 <cherriesCounter+0x4f8>
  4010ec:	2610ffe1 	addiu	s0,s0,-31
  4010f0:	2e100002 	sltiu	s0,s0,2
  4010f4:	1200ffd2 	beqz	s0,401040 <cherriesCounter+0x6b0>
  4010f8:	3c021001 	lui	v0,0x1001
  4010fc:	24030001 	li	v1,1
  401100:	a04300bb 	sb	v1,187(v0)
  401104:	1000ff60 	b	400e88 <cherriesCounter+0x4f8>
  401108:	2602ffea 	addiu	v0,s0,-22
  40110c:	2c420002 	sltiu	v0,v0,2
  401110:	10400004 	beqz	v0,401124 <cherriesCounter+0x794>
  401114:	3c021001 	lui	v0,0x1001
  401118:	24030001 	li	v1,1
  40111c:	a04300bc 	sb	v1,188(v0)
  401120:	1000ff59 	b	400e88 <cherriesCounter+0x4f8>
  401124:	2602ffe7 	addiu	v0,s0,-25
  401128:	2c420002 	sltiu	v0,v0,2
  40112c:	10400004 	beqz	v0,401140 <cherriesCounter+0x7b0>
  401130:	3c021001 	lui	v0,0x1001
  401134:	24030001 	li	v1,1
  401138:	a04300bd 	sb	v1,189(v0)
  40113c:	1000ff52 	b	400e88 <cherriesCounter+0x4f8>
  401140:	2602ffe4 	addiu	v0,s0,-28
  401144:	2c420002 	sltiu	v0,v0,2
  401148:	10400004 	beqz	v0,40115c <cherriesCounter+0x7cc>
  40114c:	3c021001 	lui	v0,0x1001
  401150:	24030001 	li	v1,1
  401154:	a04300be 	sb	v1,190(v0)
  401158:	1000ff4b 	b	400e88 <cherriesCounter+0x4f8>
  40115c:	2610ffe1 	addiu	s0,s0,-31
  401160:	2e100002 	sltiu	s0,s0,2
  401164:	1200ffb6 	beqz	s0,401040 <cherriesCounter+0x6b0>
  401168:	3c021001 	lui	v0,0x1001
  40116c:	24030001 	li	v1,1
  401170:	a04300bf 	sb	v1,191(v0)
  401174:	1000ff44 	b	400e88 <cherriesCounter+0x4f8>
  401178:	24020010 	li	v0,16
  40117c:	1622ff60 	bne	s1,v0,400f00 <cherriesCounter+0x570>
  401180:	2602ffc4 	addiu	v0,s0,-60
  401184:	2c420002 	sltiu	v0,v0,2
  401188:	1040ffb4 	beqz	v0,40105c <cherriesCounter+0x6cc>
  40118c:	3c021001 	lui	v0,0x1001
  401190:	24030001 	li	v1,1
  401194:	a04300b2 	sb	v1,178(v0)
  401198:	1000ff3b 	b	400e88 <cherriesCounter+0x4f8>
  40119c:	2602fffa 	addiu	v0,s0,-6
  4011a0:	2c420002 	sltiu	v0,v0,2
  4011a4:	1040fe79 	beqz	v0,400b8c <cherriesCounter+0x1fc>
  4011a8:	3c021001 	lui	v0,0x1001
  4011ac:	24030001 	li	v1,1
  4011b0:	a0430094 	sb	v1,148(v0)
  4011b4:	1000feb4 	b	400c88 <cherriesCounter+0x2f8>
  4011b8:	2602fff7 	addiu	v0,s0,-9
  4011bc:	2c420002 	sltiu	v0,v0,2
  4011c0:	1040fe50 	beqz	v0,400b04 <cherriesCounter+0x174>
  4011c4:	3c021001 	lui	v0,0x1001
  4011c8:	24030001 	li	v1,1
  4011cc:	a0430091 	sb	v1,145(v0)
  4011d0:	1000fe2c 	b	400a84 <cherriesCounter+0xf4>

004011d4 <moveFigure>:
  4011d4:	27bdffd8 	addiu	sp,sp,-40
  4011d8:	3c02ffff 	lui	v0,0xffff
  4011dc:	afb1001c 	sw	s1,28(sp)
  4011e0:	3c111001 	lui	s1,0x1001
  4011e4:	8c420008 	lw	v0,8(v0)
  4011e8:	8e230074 	lw	v1,116(s1)
  4011ec:	afbf0024 	sw	ra,36(sp)
  4011f0:	00431023 	subu	v0,v0,v1
  4011f4:	2c420065 	sltiu	v0,v0,101
  4011f8:	afb20020 	sw	s2,32(sp)
  4011fc:	afb00018 	sw	s0,24(sp)
  401200:	1440001a 	bnez	v0,40126c <moveFigure+0x98>
  401204:	24020001 	li	v0,1
  401208:	1482001e 	bne	a0,v0,401284 <moveFigure+0xb0>
  40120c:	3c101001 	lui	s0,0x1001
  401210:	9203006d 	lbu	v1,109(s0)
  401214:	3c121001 	lui	s2,0x1001
  401218:	92440078 	lbu	a0,120(s2)
  40121c:	2465ffff 	addiu	a1,v1,-1
  401220:	30a500ff 	andi	a1,a1,0xff
  401224:	afa40010 	sw	a0,16(sp)
  401228:	a205006d 	sb	a1,109(s0)
  40122c:	0c100234 	jal	4008d0 <validateMovement>
  401230:	8fa40010 	lw	a0,16(sp)
  401234:	10400028 	beqz	v0,4012d8 <moveFigure+0x104>
  401238:	00602825 	move	a1,v1
  40123c:	0c1000cd 	jal	400334 <paintFloor>
  401240:	9205006d 	lbu	a1,109(s0)
  401244:	92440078 	lbu	a0,120(s2)
  401248:	0c1000e8 	jal	4003a0 <drawFigure>
  40124c:	9205006d 	lbu	a1,109(s0)
  401250:	24a5ffff 	addiu	a1,a1,-1
  401254:	92440078 	lbu	a0,120(s2)
  401258:	30a500ff 	andi	a1,a1,0xff
  40125c:	0c100264 	jal	400990 <cherriesCounter>
  401260:	3c02ffff 	lui	v0,0xffff
  401264:	8c420008 	lw	v0,8(v0)
  401268:	ae220074 	sw	v0,116(s1)
  40126c:	8fbf0024 	lw	ra,36(sp)
  401270:	8fb20020 	lw	s2,32(sp)
  401274:	8fb1001c 	lw	s1,28(sp)
  401278:	8fb00018 	lw	s0,24(sp)
  40127c:	27bd0028 	addiu	sp,sp,40
  401280:	03e00008 	jr	ra
  401284:	24020002 	li	v0,2
  401288:	14820015 	bne	a0,v0,4012e0 <moveFigure+0x10c>
  40128c:	3c101001 	lui	s0,0x1001
  401290:	9203006d 	lbu	v1,109(s0)
  401294:	3c121001 	lui	s2,0x1001
  401298:	92440078 	lbu	a0,120(s2)
  40129c:	24650001 	addiu	a1,v1,1
  4012a0:	30a500ff 	andi	a1,a1,0xff
  4012a4:	afa40010 	sw	a0,16(sp)
  4012a8:	a205006d 	sb	a1,109(s0)
  4012ac:	0c100234 	jal	4008d0 <validateMovement>
  4012b0:	8fa40010 	lw	a0,16(sp)
  4012b4:	10400008 	beqz	v0,4012d8 <moveFigure+0x104>
  4012b8:	00602825 	move	a1,v1
  4012bc:	0c1000cd 	jal	400334 <paintFloor>
  4012c0:	9205006d 	lbu	a1,109(s0)
  4012c4:	92440078 	lbu	a0,120(s2)
  4012c8:	0c1000e8 	jal	4003a0 <drawFigure>
  4012cc:	9205006d 	lbu	a1,109(s0)
  4012d0:	24a50001 	addiu	a1,a1,1
  4012d4:	1000ffdf 	b	401254 <moveFigure+0x80>
  4012d8:	a203006d 	sb	v1,109(s0)
  4012dc:	1000ffe0 	b	401260 <moveFigure+0x8c>
  4012e0:	24020003 	li	v0,3
  4012e4:	14820017 	bne	a0,v0,401344 <moveFigure+0x170>
  4012e8:	3c101001 	lui	s0,0x1001
  4012ec:	92030078 	lbu	v1,120(s0)
  4012f0:	3c121001 	lui	s2,0x1001
  4012f4:	9245006d 	lbu	a1,109(s2)
  4012f8:	24640001 	addiu	a0,v1,1
  4012fc:	308400ff 	andi	a0,a0,0xff
  401300:	afa50010 	sw	a1,16(sp)
  401304:	a2040078 	sb	a0,120(s0)
  401308:	0c100234 	jal	4008d0 <validateMovement>
  40130c:	8fa50010 	lw	a1,16(sp)
  401310:	10400023 	beqz	v0,4013a0 <moveFigure+0x1cc>
  401314:	00602025 	move	a0,v1
  401318:	0c1000cd 	jal	400334 <paintFloor>
  40131c:	9245006d 	lbu	a1,109(s2)
  401320:	92040078 	lbu	a0,120(s0)
  401324:	0c1000e8 	jal	4003a0 <drawFigure>
  401328:	9245006d 	lbu	a1,109(s2)
  40132c:	92040078 	lbu	a0,120(s0)
  401330:	24a50001 	addiu	a1,a1,1
  401334:	24840001 	addiu	a0,a0,1
  401338:	30a500ff 	andi	a1,a1,0xff
  40133c:	308400ff 	andi	a0,a0,0xff
  401340:	1000ffc6 	b	40125c <moveFigure+0x88>
  401344:	24020004 	li	v0,4
  401348:	1482ffc5 	bne	a0,v0,401260 <moveFigure+0x8c>
  40134c:	3c101001 	lui	s0,0x1001
  401350:	92030078 	lbu	v1,120(s0)
  401354:	3c121001 	lui	s2,0x1001
  401358:	9245006d 	lbu	a1,109(s2)
  40135c:	2464ffff 	addiu	a0,v1,-1
  401360:	308400ff 	andi	a0,a0,0xff
  401364:	afa50010 	sw	a1,16(sp)
  401368:	a2040078 	sb	a0,120(s0)
  40136c:	0c100234 	jal	4008d0 <validateMovement>
  401370:	8fa50010 	lw	a1,16(sp)
  401374:	1040000a 	beqz	v0,4013a0 <moveFigure+0x1cc>
  401378:	00602025 	move	a0,v1
  40137c:	0c1000cd 	jal	400334 <paintFloor>
  401380:	9245006d 	lbu	a1,109(s2)
  401384:	92040078 	lbu	a0,120(s0)
  401388:	0c1000e8 	jal	4003a0 <drawFigure>
  40138c:	9245006d 	lbu	a1,109(s2)
  401390:	92040078 	lbu	a0,120(s0)
  401394:	24a50001 	addiu	a1,a1,1
  401398:	30a500ff 	andi	a1,a1,0xff
  40139c:	1000ffaf 	b	40125c <moveFigure+0x88>
  4013a0:	a2030078 	sb	v1,120(s0)
  4013a4:	1000ffae 	b	401260 <moveFigure+0x8c>

004013a8 <delay_ms>:
  4013a8:	3c08ffff 	lui	t0,0xffff
  4013ac:	8d090008 	lw	t1,8(t0)
  4013b0:	00000000 	nop
  4013b4:	01244820 	add	t1,t1,a0

004013b8 <.dm_loop>:
  4013b8:	8d0a0008 	lw	t2,8(t0)
  4013bc:	00000000 	nop
  4013c0:	0149582b 	sltu	t3,t2,t1
  4013c4:	1560fffc 	bnez	t3,4013b8 <.dm_loop>
  4013c8:	00000000 	nop
  4013cc:	03e00008 	jr	ra
  4013d0:	00000000 	nop

004013d4 <keypad_init>:
  4013d4:	3c081001 	lui	t0,0x1001
  4013d8:	ad000068 	sw	zero,104(t0)
  4013dc:	03e00008 	jr	ra
  4013e0:	00000000 	nop

004013e4 <keypad_getkey>:
  4013e4:	3c08ffff 	lui	t0,0xffff
  4013e8:	81080004 	lb	t0,4(t0)
  4013ec:	24090008 	li	t1,8
  4013f0:	240b0001 	li	t3,1
  4013f4:	00005025 	move	t2,zero

004013f8 <.gk_loop>:
  4013f8:	11490018 	beq	t2,t1,40145c <.gk_end_loop>
  4013fc:	00000000 	nop
  401400:	010b6024 	and	t4,t0,t3
  401404:	000b5840 	sll	t3,t3,0x1
  401408:	11800011 	beqz	t4,401450 <.gk_inc_loop>
  40140c:	00000000 	nop
  401410:	3c081001 	lui	t0,0x1001
  401414:	8d080068 	lw	t0,104(t0)
  401418:	3c09ffff 	lui	t1,0xffff
  40141c:	8d290008 	lw	t1,8(t1)
  401420:	00000000 	nop
  401424:	0128582b 	sltu	t3,t1,t0
  401428:	11600002 	beqz	t3,401434 <.set_key>
  40142c:	00000000 	nop
  401430:	00001025 	move	v0,zero

00401434 <.set_key>:
  401434:	252900c8 	addiu	t1,t1,200
  401438:	3c081001 	lui	t0,0x1001
  40143c:	ad090068 	sw	t1,104(t0)
  401440:	01401025 	move	v0,t2
  401444:	24420001 	addiu	v0,v0,1
  401448:	03e00008 	jr	ra
  40144c:	00000000 	nop

00401450 <.gk_inc_loop>:
  401450:	254a0001 	addiu	t2,t2,1
  401454:	081004fe 	j	4013f8 <.gk_loop>
  401458:	00000000 	nop

0040145c <.gk_end_loop>:
  40145c:	00001025 	move	v0,zero
  401460:	03e00008 	jr	ra
  401464:	00000000 	nop

00401468 <divide>:
  401468:	acc00000 	sw	zero,0(a2)
  40146c:	0085102b 	sltu	v0,a0,a1
  401470:	10400002 	beqz	v0,40147c <divide+0x14>
  401474:	ace40000 	sw	a0,0(a3)
  401478:	03e00008 	jr	ra
  40147c:	8cc20000 	lw	v0,0(a2)
  401480:	00852023 	subu	a0,a0,a1
  401484:	24420001 	addiu	v0,v0,1
  401488:	acc20000 	sw	v0,0(a2)
  40148c:	1000fff7 	b	40146c <divide+0x4>

00401490 <set_color>:
  401490:	00052900 	sll	a1,a1,0x4
  401494:	3084000f 	andi	a0,a0,0xf
  401498:	00a42825 	or	a1,a1,a0
  40149c:	3c021001 	lui	v0,0x1001
  4014a0:	a04500c2 	sb	a1,194(v0)
  4014a4:	03e00008 	jr	ra

004014a8 <get_color>:
  4014a8:	3c031001 	lui	v1,0x1001
  4014ac:	906200c2 	lbu	v0,194(v1)
  4014b0:	3042000f 	andi	v0,v0,0xf
  4014b4:	a0820000 	sb	v0,0(a0)
  4014b8:	906200c2 	lbu	v0,194(v1)
  4014bc:	00021102 	srl	v0,v0,0x4
  4014c0:	a0a20000 	sb	v0,0(a1)
  4014c4:	03e00008 	jr	ra

004014c8 <set_cursor>:
  4014c8:	2c820028 	sltiu	v0,a0,40
  4014cc:	10400006 	beqz	v0,4014e8 <set_cursor+0x20>
  4014d0:	2ca20050 	sltiu	v0,a1,80
  4014d4:	10400004 	beqz	v0,4014e8 <set_cursor+0x20>
  4014d8:	3c021001 	lui	v0,0x1001
  4014dc:	a04400c1 	sb	a0,193(v0)
  4014e0:	3c021001 	lui	v0,0x1001
  4014e4:	a04500c0 	sb	a1,192(v0)
  4014e8:	03e00008 	jr	ra

004014ec <put_char>:
  4014ec:	3c071001 	lui	a3,0x1001
  4014f0:	2403000a 	li	v1,10
  4014f4:	90e200c1 	lbu	v0,193(a3)
  4014f8:	3c061001 	lui	a2,0x1001
  4014fc:	14830006 	bne	a0,v1,401518 <put_char+0x2c>
  401500:	2c430027 	sltiu	v1,v0,39
  401504:	10600002 	beqz	v1,401510 <put_char+0x24>
  401508:	24420001 	addiu	v0,v0,1
  40150c:	a0e200c1 	sb	v0,193(a3)
  401510:	a0c000c0 	sb	zero,192(a2)
  401514:	03e00008 	jr	ra
  401518:	3c031001 	lui	v1,0x1001
  40151c:	906300c2 	lbu	v1,194(v1)
  401520:	90c500c0 	lbu	a1,192(a2)
  401524:	00031a00 	sll	v1,v1,0x8
  401528:	00642025 	or	a0,v1,a0
  40152c:	00021880 	sll	v1,v0,0x2
  401530:	00621821 	addu	v1,v1,v0
  401534:	00031900 	sll	v1,v1,0x4
  401538:	00651821 	addu	v1,v1,a1
  40153c:	00031840 	sll	v1,v1,0x1
  401540:	3408b800 	li	t0,0xb800
  401544:	01031821 	addu	v1,t0,v1
  401548:	a4640000 	sh	a0,0(v1)
  40154c:	2ca3004f 	sltiu	v1,a1,79
  401550:	10600003 	beqz	v1,401560 <put_char+0x74>
  401554:	24a50001 	addiu	a1,a1,1
  401558:	a0c500c0 	sb	a1,192(a2)
  40155c:	03e00008 	jr	ra
  401560:	24420001 	addiu	v0,v0,1
  401564:	a0c000c0 	sb	zero,192(a2)
  401568:	a0e200c1 	sb	v0,193(a3)
  40156c:	03e00008 	jr	ra

00401570 <puts>:
  401570:	00804825 	move	t1,a0
  401574:	80840000 	lb	a0,0(a0)
  401578:	14800001 	bnez	a0,401580 <puts+0x10>
  40157c:	03e00008 	jr	ra
  401580:	27bdffe8 	addiu	sp,sp,-24
  401584:	afbf0014 	sw	ra,20(sp)
  401588:	308400ff 	andi	a0,a0,0xff
  40158c:	25290001 	addiu	t1,t1,1
  401590:	0c10053b 	jal	4014ec <put_char>
  401594:	81240000 	lb	a0,0(t1)
  401598:	1480fffb 	bnez	a0,401588 <puts+0x18>
  40159c:	8fbf0014 	lw	ra,20(sp)
  4015a0:	27bd0018 	addiu	sp,sp,24
  4015a4:	03e00008 	jr	ra

004015a8 <clear_screen>:
  4015a8:	3c021001 	lui	v0,0x1001
  4015ac:	904200c2 	lbu	v0,194(v0)
  4015b0:	3403b800 	li	v1,0xb800
  4015b4:	00021200 	sll	v0,v0,0x8
  4015b8:	34420020 	ori	v0,v0,0x20
  4015bc:	3404cac0 	li	a0,0xcac0
  4015c0:	a4620000 	sh	v0,0(v1)
  4015c4:	24630002 	addiu	v1,v1,2
  4015c8:	1464fffd 	bne	v1,a0,4015c0 <clear_screen+0x18>
  4015cc:	3c021001 	lui	v0,0x1001
  4015d0:	a04000c1 	sb	zero,193(v0)
  4015d4:	3c021001 	lui	v0,0x1001
  4015d8:	a04000c0 	sb	zero,192(v0)
  4015dc:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <next_key_time-0x68>:
10010000:	50617261 	0x50617261
10010004:	20726569 	addi	s2,v1,25961
10010008:	6e696369 	0x6e696369
1001000c:	6172206a 	0x6172206a
10010010:	7565676f 	jalx	15959dbc <chr_attr+0x5949cfa>
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
1001003c:	08090b00 	j	10242c00 <chr_attr+0x232b3e>
10010040:	01020000 	0x1020000
10010044:	4d205220 	0x4d205220
10010048:	2e202044 	sltiu	zero,s1,8260
1001004c:	204f2021 	addi	t7,v0,8225
10010050:	00000000 	nop
10010054:	48412047 	0x48412047
10010058:	414e4144 	0x414e4144
1001005c:	4f20454c 	c3	0x120454c
10010060:	204a5545 	addi	t2,v0,21829
10010064:	474f0000 	c1	0x14f0000

10010068 <next_key_time>:
10010068:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5da42c>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

1001006c <cont_decimas>:
	...

1001006d <figuraCol>:
	...

1001006e <cont_centecimas>:
	...

1001006f <tecla>:
	...

10010070 <cont_unidades>:
10010070:	00000000 	nop

10010074 <tiempo_milisegundos>:
10010074:	00000000 	nop

10010078 <figuraRow>:
10010078:	00000000 	nop

1001007c <winner>:
1001007c:	00000000 	nop

10010080 <win>:
	...

100100c0 <cursor_col>:
	...

100100c1 <cursor_row>:
	...

100100c2 <chr_attr>:
	...
