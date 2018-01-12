
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	0840006f          	j	84 <boot_strap>
       4:	00000013          	nop
       8:	00000013          	nop
       c:	00000013          	nop

00000010 <_tn_arch_ecall_vector>:
      10:	00200073          	uret
      14:	00000013          	nop
      18:	00000013          	nop
      1c:	00000013          	nop

00000020 <_tn_arch_ebreak_vector>:
      20:	00200073          	uret
      24:	00000013          	nop
      28:	00000013          	nop
      2c:	00000013          	nop

00000030 <_tn_arch_timer_vector>:
      30:	0e40006f          	j	114 <TIMER_INT_HANDLER>
      34:	00000013          	nop
      38:	00000013          	nop
      3c:	00000013          	nop
      40:	00000013          	nop

00000044 <_tn_arch_extern_int_vector>:
      44:	00000013          	nop
      48:	00000013          	nop
      4c:	00000013          	nop
      50:	00000013          	nop
      54:	00000013          	nop
      58:	00000013          	nop
      5c:	00000013          	nop
      60:	00000013          	nop
      64:	00000013          	nop
      68:	00000013          	nop
      6c:	00000013          	nop
      70:	00000013          	nop
      74:	00000013          	nop
      78:	00000013          	nop
      7c:	00000013          	nop
      80:	00200073          	uret

00000084 <boot_strap>:
      84:	fff00293          	li	t0,-1
      88:	00429073          	csrw	0x4,t0
      8c:	00000093          	li	ra,0
      90:	00000113          	li	sp,0
      94:	00000193          	li	gp,0
      98:	00000213          	li	tp,0
      9c:	00000293          	li	t0,0
      a0:	00000313          	li	t1,0
      a4:	00000393          	li	t2,0
      a8:	00000413          	li	s0,0
      ac:	00000493          	li	s1,0
      b0:	00000513          	li	a0,0
      b4:	00000593          	li	a1,0
      b8:	00000613          	li	a2,0
      bc:	00000693          	li	a3,0
      c0:	00000713          	li	a4,0
      c4:	00000793          	li	a5,0
      c8:	00000813          	li	a6,0
      cc:	00000893          	li	a7,0
      d0:	00000913          	li	s2,0
      d4:	00000993          	li	s3,0
      d8:	00000a13          	li	s4,0
      dc:	00000a93          	li	s5,0
      e0:	00000b13          	li	s6,0
      e4:	00000b93          	li	s7,0
      e8:	00000c13          	li	s8,0
      ec:	00000c93          	li	s9,0
      f0:	00000d13          	li	s10,0
      f4:	00000d93          	li	s11,0
      f8:	00000e13          	li	t3,0
      fc:	00000e93          	li	t4,0
     100:	00000f13          	li	t5,0
     104:	00000f93          	li	t6,0

00000108 <init_stack>:
     108:	00009137          	lui	sp,0x9
     10c:	ffc10113          	addi	sp,sp,-4 # 8ffc <_fstack>
     110:	3c40306f          	j	34d4 <main>

00000114 <TIMER_INT_HANDLER>:
     114:	f8010113          	addi	sp,sp,-128
     118:	00112023          	sw	ra,0(sp)
     11c:	00212223          	sw	sp,4(sp)
     120:	00312423          	sw	gp,8(sp)
     124:	00412623          	sw	tp,12(sp)
     128:	00512823          	sw	t0,16(sp)
     12c:	00612a23          	sw	t1,20(sp)
     130:	00712c23          	sw	t2,24(sp)
     134:	00812e23          	sw	s0,28(sp)
     138:	02912023          	sw	s1,32(sp)
     13c:	02a12223          	sw	a0,36(sp)
     140:	02b12423          	sw	a1,40(sp)
     144:	02c12623          	sw	a2,44(sp)
     148:	02d12823          	sw	a3,48(sp)
     14c:	02e12a23          	sw	a4,52(sp)
     150:	02f12c23          	sw	a5,56(sp)
     154:	03012e23          	sw	a6,60(sp)
     158:	05112023          	sw	a7,64(sp)
     15c:	05212223          	sw	s2,68(sp)
     160:	05312423          	sw	s3,72(sp)
     164:	05412623          	sw	s4,76(sp)
     168:	05512823          	sw	s5,80(sp)
     16c:	05612a23          	sw	s6,84(sp)
     170:	05712c23          	sw	s7,88(sp)
     174:	05812e23          	sw	s8,92(sp)
     178:	07912023          	sw	s9,96(sp)
     17c:	07a12223          	sw	s10,100(sp)
     180:	07b12423          	sw	s11,104(sp)
     184:	07c12623          	sw	t3,108(sp)
     188:	07d12823          	sw	t4,112(sp)
     18c:	07e12a23          	sw	t5,116(sp)
     190:	07f12c23          	sw	t6,120(sp)
     194:	00003297          	auipc	t0,0x3
     198:	7242a283          	lw	t0,1828(t0) # 38b8 <pxCurrentTCB>
     19c:	0022a023          	sw	sp,0(t0)
     1a0:	041012f3          	csrrw	t0,0x41,zero
     1a4:	04129073          	csrw	0x41,t0
     1a8:	06512e23          	sw	t0,124(sp)
     1ac:	3cc000ef          	jal	ra,578 <vPortSysTickHandler>
     1b0:	00003117          	auipc	sp,0x3
     1b4:	70812103          	lw	sp,1800(sp) # 38b8 <pxCurrentTCB>
     1b8:	00012103          	lw	sp,0(sp)
     1bc:	07c12283          	lw	t0,124(sp)
     1c0:	04129073          	csrw	0x41,t0
     1c4:	00012083          	lw	ra,0(sp)
     1c8:	00c12203          	lw	tp,12(sp)
     1cc:	01012283          	lw	t0,16(sp)
     1d0:	01412303          	lw	t1,20(sp)
     1d4:	01812383          	lw	t2,24(sp)
     1d8:	01c12403          	lw	s0,28(sp)
     1dc:	02012483          	lw	s1,32(sp)
     1e0:	02412503          	lw	a0,36(sp)
     1e4:	02812583          	lw	a1,40(sp)
     1e8:	02c12603          	lw	a2,44(sp)
     1ec:	03012683          	lw	a3,48(sp)
     1f0:	03412703          	lw	a4,52(sp)
     1f4:	03812783          	lw	a5,56(sp)
     1f8:	03c12803          	lw	a6,60(sp)
     1fc:	04012883          	lw	a7,64(sp)
     200:	04412903          	lw	s2,68(sp)
     204:	04812983          	lw	s3,72(sp)
     208:	04c12a03          	lw	s4,76(sp)
     20c:	05012a83          	lw	s5,80(sp)
     210:	05412b03          	lw	s6,84(sp)
     214:	05812b83          	lw	s7,88(sp)
     218:	05c12c03          	lw	s8,92(sp)
     21c:	06012c83          	lw	s9,96(sp)
     220:	06412d03          	lw	s10,100(sp)
     224:	06812d83          	lw	s11,104(sp)
     228:	06c12e03          	lw	t3,108(sp)
     22c:	07012e83          	lw	t4,112(sp)
     230:	07412f03          	lw	t5,116(sp)
     234:	07812f83          	lw	t6,120(sp)
     238:	08010113          	addi	sp,sp,128
     23c:	00200073          	uret

00000240 <xPortStartScheduler>:
     240:	2d8000ef          	jal	ra,518 <vPortSetupTimer>
     244:	00003117          	auipc	sp,0x3
     248:	67412103          	lw	sp,1652(sp) # 38b8 <pxCurrentTCB>
     24c:	00012103          	lw	sp,0(sp)
     250:	07c12283          	lw	t0,124(sp)
     254:	04129073          	csrw	0x41,t0
     258:	00012083          	lw	ra,0(sp)
     25c:	00c12203          	lw	tp,12(sp)
     260:	01012283          	lw	t0,16(sp)
     264:	01412303          	lw	t1,20(sp)
     268:	01812383          	lw	t2,24(sp)
     26c:	01c12403          	lw	s0,28(sp)
     270:	02012483          	lw	s1,32(sp)
     274:	02412503          	lw	a0,36(sp)
     278:	02812583          	lw	a1,40(sp)
     27c:	02c12603          	lw	a2,44(sp)
     280:	03012683          	lw	a3,48(sp)
     284:	03412703          	lw	a4,52(sp)
     288:	03812783          	lw	a5,56(sp)
     28c:	03c12803          	lw	a6,60(sp)
     290:	04012883          	lw	a7,64(sp)
     294:	04412903          	lw	s2,68(sp)
     298:	04812983          	lw	s3,72(sp)
     29c:	04c12a03          	lw	s4,76(sp)
     2a0:	05012a83          	lw	s5,80(sp)
     2a4:	05412b03          	lw	s6,84(sp)
     2a8:	05812b83          	lw	s7,88(sp)
     2ac:	05c12c03          	lw	s8,92(sp)
     2b0:	06012c83          	lw	s9,96(sp)
     2b4:	06412d03          	lw	s10,100(sp)
     2b8:	06812d83          	lw	s11,104(sp)
     2bc:	06c12e03          	lw	t3,108(sp)
     2c0:	07012e83          	lw	t4,112(sp)
     2c4:	07412f03          	lw	t5,116(sp)
     2c8:	07812f83          	lw	t6,120(sp)
     2cc:	08010113          	addi	sp,sp,128
     2d0:	00200073          	uret

000002d4 <vPortEndScheduler>:
     2d4:	00008067          	ret

000002d8 <vPortYield>:
     2d8:	0040f073          	csrci	0x4,1
     2dc:	f8010113          	addi	sp,sp,-128
     2e0:	00112023          	sw	ra,0(sp)
     2e4:	00212223          	sw	sp,4(sp)
     2e8:	00312423          	sw	gp,8(sp)
     2ec:	00412623          	sw	tp,12(sp)
     2f0:	00512823          	sw	t0,16(sp)
     2f4:	00612a23          	sw	t1,20(sp)
     2f8:	00712c23          	sw	t2,24(sp)
     2fc:	00812e23          	sw	s0,28(sp)
     300:	02912023          	sw	s1,32(sp)
     304:	02a12223          	sw	a0,36(sp)
     308:	02b12423          	sw	a1,40(sp)
     30c:	02c12623          	sw	a2,44(sp)
     310:	02d12823          	sw	a3,48(sp)
     314:	02e12a23          	sw	a4,52(sp)
     318:	02f12c23          	sw	a5,56(sp)
     31c:	03012e23          	sw	a6,60(sp)
     320:	05112023          	sw	a7,64(sp)
     324:	05212223          	sw	s2,68(sp)
     328:	05312423          	sw	s3,72(sp)
     32c:	05412623          	sw	s4,76(sp)
     330:	05512823          	sw	s5,80(sp)
     334:	05612a23          	sw	s6,84(sp)
     338:	05712c23          	sw	s7,88(sp)
     33c:	05812e23          	sw	s8,92(sp)
     340:	07912023          	sw	s9,96(sp)
     344:	07a12223          	sw	s10,100(sp)
     348:	07b12423          	sw	s11,104(sp)
     34c:	07c12623          	sw	t3,108(sp)
     350:	07d12823          	sw	t4,112(sp)
     354:	07e12a23          	sw	t5,116(sp)
     358:	07f12c23          	sw	t6,120(sp)
     35c:	00003297          	auipc	t0,0x3
     360:	55c2a283          	lw	t0,1372(t0) # 38b8 <pxCurrentTCB>
     364:	0022a023          	sw	sp,0(t0)
     368:	06112e23          	sw	ra,124(sp)
     36c:	248010ef          	jal	ra,15b4 <vTaskSwitchContext>
     370:	00003117          	auipc	sp,0x3
     374:	54812103          	lw	sp,1352(sp) # 38b8 <pxCurrentTCB>
     378:	00012103          	lw	sp,0(sp)
     37c:	07c12283          	lw	t0,124(sp)
     380:	04129073          	csrw	0x41,t0
     384:	00012083          	lw	ra,0(sp)
     388:	00c12203          	lw	tp,12(sp)
     38c:	01012283          	lw	t0,16(sp)
     390:	01412303          	lw	t1,20(sp)
     394:	01812383          	lw	t2,24(sp)
     398:	01c12403          	lw	s0,28(sp)
     39c:	02012483          	lw	s1,32(sp)
     3a0:	02412503          	lw	a0,36(sp)
     3a4:	02812583          	lw	a1,40(sp)
     3a8:	02c12603          	lw	a2,44(sp)
     3ac:	03012683          	lw	a3,48(sp)
     3b0:	03412703          	lw	a4,52(sp)
     3b4:	03812783          	lw	a5,56(sp)
     3b8:	03c12803          	lw	a6,60(sp)
     3bc:	04012883          	lw	a7,64(sp)
     3c0:	04412903          	lw	s2,68(sp)
     3c4:	04812983          	lw	s3,72(sp)
     3c8:	04c12a03          	lw	s4,76(sp)
     3cc:	05012a83          	lw	s5,80(sp)
     3d0:	05412b03          	lw	s6,84(sp)
     3d4:	05812b83          	lw	s7,88(sp)
     3d8:	05c12c03          	lw	s8,92(sp)
     3dc:	06012c83          	lw	s9,96(sp)
     3e0:	06412d03          	lw	s10,100(sp)
     3e4:	06812d83          	lw	s11,104(sp)
     3e8:	06c12e03          	lw	t3,108(sp)
     3ec:	07012e83          	lw	t4,112(sp)
     3f0:	07412f03          	lw	t5,116(sp)
     3f4:	07812f83          	lw	t6,120(sp)
     3f8:	08010113          	addi	sp,sp,128
     3fc:	00200073          	uret

00000400 <external_interrupt_handler>:
     400:	f8410113          	addi	sp,sp,-124
     404:	00112223          	sw	ra,4(sp)
     408:	00212423          	sw	sp,8(sp)
     40c:	00312623          	sw	gp,12(sp)
     410:	00412823          	sw	tp,16(sp)
     414:	00512a23          	sw	t0,20(sp)
     418:	00612c23          	sw	t1,24(sp)
     41c:	00712e23          	sw	t2,28(sp)
     420:	02812023          	sw	s0,32(sp)
     424:	02912223          	sw	s1,36(sp)
     428:	02a12423          	sw	a0,40(sp)
     42c:	02b12623          	sw	a1,44(sp)
     430:	02c12823          	sw	a2,48(sp)
     434:	02d12a23          	sw	a3,52(sp)
     438:	02e12c23          	sw	a4,56(sp)
     43c:	02f12e23          	sw	a5,60(sp)
     440:	05012023          	sw	a6,64(sp)
     444:	05112223          	sw	a7,68(sp)
     448:	05212423          	sw	s2,72(sp)
     44c:	05312623          	sw	s3,76(sp)
     450:	05412823          	sw	s4,80(sp)
     454:	05512a23          	sw	s5,84(sp)
     458:	05612c23          	sw	s6,88(sp)
     45c:	05712e23          	sw	s7,92(sp)
     460:	07812023          	sw	s8,96(sp)
     464:	07912223          	sw	s9,100(sp)
     468:	07a12423          	sw	s10,104(sp)
     46c:	07b12623          	sw	s11,108(sp)
     470:	07c12823          	sw	t3,112(sp)
     474:	07d12a23          	sw	t4,116(sp)
     478:	07e12c23          	sw	t5,120(sp)
     47c:	07f12e23          	sw	t6,124(sp)
     480:	00412083          	lw	ra,4(sp)
     484:	00812103          	lw	sp,8(sp)
     488:	00c12183          	lw	gp,12(sp)
     48c:	01012203          	lw	tp,16(sp)
     490:	01412283          	lw	t0,20(sp)
     494:	01812303          	lw	t1,24(sp)
     498:	01c12383          	lw	t2,28(sp)
     49c:	02012403          	lw	s0,32(sp)
     4a0:	02412483          	lw	s1,36(sp)
     4a4:	02812503          	lw	a0,40(sp)
     4a8:	02c12583          	lw	a1,44(sp)
     4ac:	03012603          	lw	a2,48(sp)
     4b0:	03412683          	lw	a3,52(sp)
     4b4:	03812703          	lw	a4,56(sp)
     4b8:	03c12783          	lw	a5,60(sp)
     4bc:	04012803          	lw	a6,64(sp)
     4c0:	04412883          	lw	a7,68(sp)
     4c4:	04812903          	lw	s2,72(sp)
     4c8:	04c12983          	lw	s3,76(sp)
     4cc:	05012a03          	lw	s4,80(sp)
     4d0:	05412a83          	lw	s5,84(sp)
     4d4:	05812b03          	lw	s6,88(sp)
     4d8:	05c12b83          	lw	s7,92(sp)
     4dc:	06012c03          	lw	s8,96(sp)
     4e0:	06412c83          	lw	s9,100(sp)
     4e4:	06812d03          	lw	s10,104(sp)
     4e8:	06c12d83          	lw	s11,108(sp)
     4ec:	07012e03          	lw	t3,112(sp)
     4f0:	07412e83          	lw	t4,116(sp)
     4f4:	07812f03          	lw	t5,120(sp)
     4f8:	07c12f83          	lw	t6,124(sp)
     4fc:	07c10113          	addi	sp,sp,124
     500:	00200073          	uret
	...

00000510 <prvTaskExitError>:
     510:	00407073          	csrci	0x4,0
     514:	0000006f          	j	514 <prvTaskExitError+0x4>

00000518 <vPortSetupTimer>:
     518:	fe512e23          	sw	t0,-4(sp)
     51c:	000037b7          	lui	a5,0x3
     520:	5787a783          	lw	a5,1400(a5) # 3578 <timerInterruptFrequency>
     524:	00f002b3          	add	t0,zero,a5
     528:	c0129073          	csrw	time,t0
     52c:	ffc12283          	lw	t0,-4(sp)
     530:	fe512e23          	sw	t0,-4(sp)
     534:	004012f3          	csrrw	t0,0x4,zero
     538:	0022e293          	ori	t0,t0,2
     53c:	00429073          	csrw	0x4,t0
     540:	ffc12283          	lw	t0,-4(sp)
     544:	00008067          	ret

00000548 <vPortClearInterruptMask>:
     548:	00451073          	csrw	0x4,a0
     54c:	00008067          	ret

00000550 <vPortSetInterruptMask>:
     550:	0043f573          	csrrci	a0,0x4,7
     554:	00008067          	ret

00000558 <pxPortInitialiseStack>:
     558:	000007b7          	lui	a5,0x0
     55c:	51078793          	addi	a5,a5,1296 # 510 <prvTaskExitError>
     560:	feb52e23          	sw	a1,-4(a0)
     564:	fac52223          	sw	a2,-92(a0)
     568:	f8352623          	sw	gp,-116(a0)
     56c:	f8f52023          	sw	a5,-128(a0)
     570:	f8050513          	addi	a0,a0,-128
     574:	00008067          	ret

00000578 <vPortSysTickHandler>:
     578:	ff010113          	addi	sp,sp,-16
     57c:	00112623          	sw	ra,12(sp)
     580:	fe512e23          	sw	t0,-4(sp)
     584:	000037b7          	lui	a5,0x3
     588:	5787a783          	lw	a5,1400(a5) # 3578 <timerInterruptFrequency>
     58c:	00f002b3          	add	t0,zero,a5
     590:	c0129073          	csrw	time,t0
     594:	ffc12283          	lw	t0,-4(sp)
     598:	611000ef          	jal	ra,13a8 <xTaskIncrementTick>
     59c:	00050863          	beqz	a0,5ac <vPortSysTickHandler+0x34>
     5a0:	00c12083          	lw	ra,12(sp)
     5a4:	01010113          	addi	sp,sp,16
     5a8:	00c0106f          	j	15b4 <vTaskSwitchContext>
     5ac:	00c12083          	lw	ra,12(sp)
     5b0:	01010113          	addi	sp,sp,16
     5b4:	00008067          	ret

000005b8 <__mulsi3>:
     5b8:	00050793          	mv	a5,a0
     5bc:	00000513          	li	a0,0
     5c0:	00079463          	bnez	a5,5c8 <__mulsi3+0x10>
     5c4:	00008067          	ret
     5c8:	0017f713          	andi	a4,a5,1
     5cc:	00070463          	beqz	a4,5d4 <__mulsi3+0x1c>
     5d0:	00b50533          	add	a0,a0,a1
     5d4:	0017d793          	srli	a5,a5,0x1
     5d8:	00159593          	slli	a1,a1,0x1
     5dc:	fe5ff06f          	j	5c0 <__mulsi3+0x8>

000005e0 <vListInitialise>:
     5e0:	00850793          	addi	a5,a0,8
     5e4:	fff00713          	li	a4,-1
     5e8:	00f52223          	sw	a5,4(a0)
     5ec:	00e52423          	sw	a4,8(a0)
     5f0:	00f52623          	sw	a5,12(a0)
     5f4:	00f52823          	sw	a5,16(a0)
     5f8:	00052023          	sw	zero,0(a0)
     5fc:	00008067          	ret

00000600 <vListInitialiseItem>:
     600:	00052823          	sw	zero,16(a0)
     604:	00008067          	ret

00000608 <vListInsertEnd>:
     608:	00452783          	lw	a5,4(a0)
     60c:	00f5a223          	sw	a5,4(a1)
     610:	0087a703          	lw	a4,8(a5)
     614:	00e5a423          	sw	a4,8(a1)
     618:	0087a703          	lw	a4,8(a5)
     61c:	00b72223          	sw	a1,4(a4)
     620:	00b7a423          	sw	a1,8(a5)
     624:	00a5a823          	sw	a0,16(a1)
     628:	00052783          	lw	a5,0(a0)
     62c:	00178793          	addi	a5,a5,1
     630:	00f52023          	sw	a5,0(a0)
     634:	00008067          	ret

00000638 <vListInsert>:
     638:	0005a703          	lw	a4,0(a1)
     63c:	fff00693          	li	a3,-1
     640:	00850793          	addi	a5,a0,8
     644:	02d71a63          	bne	a4,a3,678 <vListInsert+0x40>
     648:	01052783          	lw	a5,16(a0)
     64c:	0047a703          	lw	a4,4(a5)
     650:	00e5a223          	sw	a4,4(a1)
     654:	00b72423          	sw	a1,8(a4)
     658:	00f5a423          	sw	a5,8(a1)
     65c:	00b7a223          	sw	a1,4(a5)
     660:	00a5a823          	sw	a0,16(a1)
     664:	00052783          	lw	a5,0(a0)
     668:	00178793          	addi	a5,a5,1
     66c:	00f52023          	sw	a5,0(a0)
     670:	00008067          	ret
     674:	00068793          	mv	a5,a3
     678:	0047a683          	lw	a3,4(a5)
     67c:	0006a603          	lw	a2,0(a3)
     680:	fec77ae3          	bleu	a2,a4,674 <vListInsert+0x3c>
     684:	fc9ff06f          	j	64c <vListInsert+0x14>

00000688 <uxListRemove>:
     688:	00452703          	lw	a4,4(a0)
     68c:	00852683          	lw	a3,8(a0)
     690:	01052783          	lw	a5,16(a0)
     694:	00d72423          	sw	a3,8(a4)
     698:	00852703          	lw	a4,8(a0)
     69c:	00452683          	lw	a3,4(a0)
     6a0:	00d72223          	sw	a3,4(a4)
     6a4:	0047a703          	lw	a4,4(a5)
     6a8:	00a71663          	bne	a4,a0,6b4 <uxListRemove+0x2c>
     6ac:	00852703          	lw	a4,8(a0)
     6b0:	00e7a223          	sw	a4,4(a5)
     6b4:	00052823          	sw	zero,16(a0)
     6b8:	0007a503          	lw	a0,0(a5)
     6bc:	fff50513          	addi	a0,a0,-1
     6c0:	00a7a023          	sw	a0,0(a5)
     6c4:	00008067          	ret

000006c8 <prvCopyDataToQueue>:
     6c8:	ff010113          	addi	sp,sp,-16
     6cc:	00812423          	sw	s0,8(sp)
     6d0:	00912223          	sw	s1,4(sp)
     6d4:	00112623          	sw	ra,12(sp)
     6d8:	00060493          	mv	s1,a2
     6dc:	04052603          	lw	a2,64(a0)
     6e0:	00050413          	mv	s0,a0
     6e4:	02060863          	beqz	a2,714 <prvCopyDataToQueue+0x4c>
     6e8:	04049863          	bnez	s1,738 <prvCopyDataToQueue+0x70>
     6ec:	00852503          	lw	a0,8(a0)
     6f0:	3f9020ef          	jal	ra,32e8 <memcpy>
     6f4:	00842783          	lw	a5,8(s0)
     6f8:	04042703          	lw	a4,64(s0)
     6fc:	00e787b3          	add	a5,a5,a4
     700:	00442703          	lw	a4,4(s0)
     704:	00f42423          	sw	a5,8(s0)
     708:	00e7e663          	bltu	a5,a4,714 <prvCopyDataToQueue+0x4c>
     70c:	00042783          	lw	a5,0(s0)
     710:	00f42423          	sw	a5,8(s0)
     714:	03842783          	lw	a5,56(s0)
     718:	00000513          	li	a0,0
     71c:	00178793          	addi	a5,a5,1
     720:	02f42c23          	sw	a5,56(s0)
     724:	00c12083          	lw	ra,12(sp)
     728:	00812403          	lw	s0,8(sp)
     72c:	00412483          	lw	s1,4(sp)
     730:	01010113          	addi	sp,sp,16
     734:	00008067          	ret
     738:	00c52503          	lw	a0,12(a0)
     73c:	3ad020ef          	jal	ra,32e8 <memcpy>
     740:	04042783          	lw	a5,64(s0)
     744:	00c42703          	lw	a4,12(s0)
     748:	00042683          	lw	a3,0(s0)
     74c:	40f007b3          	neg	a5,a5
     750:	00f70733          	add	a4,a4,a5
     754:	00e42623          	sw	a4,12(s0)
     758:	00d77863          	bleu	a3,a4,768 <prvCopyDataToQueue+0xa0>
     75c:	00442703          	lw	a4,4(s0)
     760:	00f707b3          	add	a5,a4,a5
     764:	00f42623          	sw	a5,12(s0)
     768:	00200793          	li	a5,2
     76c:	faf494e3          	bne	s1,a5,714 <prvCopyDataToQueue+0x4c>
     770:	03842783          	lw	a5,56(s0)
     774:	fa0780e3          	beqz	a5,714 <prvCopyDataToQueue+0x4c>
     778:	03842783          	lw	a5,56(s0)
     77c:	fff78793          	addi	a5,a5,-1
     780:	02f42c23          	sw	a5,56(s0)
     784:	f91ff06f          	j	714 <prvCopyDataToQueue+0x4c>

00000788 <prvCopyDataFromQueue>:
     788:	00050793          	mv	a5,a0
     78c:	0407a603          	lw	a2,64(a5)
     790:	00058513          	mv	a0,a1
     794:	02060463          	beqz	a2,7bc <prvCopyDataFromQueue+0x34>
     798:	00c7a703          	lw	a4,12(a5)
     79c:	0047a683          	lw	a3,4(a5)
     7a0:	00c70733          	add	a4,a4,a2
     7a4:	00e7a623          	sw	a4,12(a5)
     7a8:	00d76663          	bltu	a4,a3,7b4 <prvCopyDataFromQueue+0x2c>
     7ac:	0007a703          	lw	a4,0(a5)
     7b0:	00e7a623          	sw	a4,12(a5)
     7b4:	00c7a583          	lw	a1,12(a5)
     7b8:	3310206f          	j	32e8 <memcpy>
     7bc:	00008067          	ret

000007c0 <prvUnlockQueue>:
     7c0:	ff010113          	addi	sp,sp,-16
     7c4:	00812423          	sw	s0,8(sp)
     7c8:	00050413          	mv	s0,a0
     7cc:	00912223          	sw	s1,4(sp)
     7d0:	00112623          	sw	ra,12(sp)
     7d4:	02440493          	addi	s1,s0,36
     7d8:	1f4010ef          	jal	ra,19cc <vTaskEnterCritical>
     7dc:	04842783          	lw	a5,72(s0)
     7e0:	02f04e63          	bgtz	a5,81c <prvUnlockQueue+0x5c>
     7e4:	fff00793          	li	a5,-1
     7e8:	04f42423          	sw	a5,72(s0)
     7ec:	210010ef          	jal	ra,19fc <vTaskExitCritical>
     7f0:	01040493          	addi	s1,s0,16
     7f4:	1d8010ef          	jal	ra,19cc <vTaskEnterCritical>
     7f8:	04442783          	lw	a5,68(s0)
     7fc:	04f04463          	bgtz	a5,844 <prvUnlockQueue+0x84>
     800:	fff00793          	li	a5,-1
     804:	04f42223          	sw	a5,68(s0)
     808:	00812403          	lw	s0,8(sp)
     80c:	00c12083          	lw	ra,12(sp)
     810:	00412483          	lw	s1,4(sp)
     814:	01010113          	addi	sp,sp,16
     818:	1e40106f          	j	19fc <vTaskExitCritical>
     81c:	02442783          	lw	a5,36(s0)
     820:	fc0782e3          	beqz	a5,7e4 <prvUnlockQueue+0x24>
     824:	00048513          	mv	a0,s1
     828:	7bd000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     82c:	00050463          	beqz	a0,834 <prvUnlockQueue+0x74>
     830:	168010ef          	jal	ra,1998 <vTaskMissedYield>
     834:	04842783          	lw	a5,72(s0)
     838:	fff78793          	addi	a5,a5,-1
     83c:	04f42423          	sw	a5,72(s0)
     840:	f9dff06f          	j	7dc <prvUnlockQueue+0x1c>
     844:	01042783          	lw	a5,16(s0)
     848:	fa078ce3          	beqz	a5,800 <prvUnlockQueue+0x40>
     84c:	00048513          	mv	a0,s1
     850:	795000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     854:	00050463          	beqz	a0,85c <prvUnlockQueue+0x9c>
     858:	140010ef          	jal	ra,1998 <vTaskMissedYield>
     85c:	04442783          	lw	a5,68(s0)
     860:	fff78793          	addi	a5,a5,-1
     864:	04f42223          	sw	a5,68(s0)
     868:	f91ff06f          	j	7f8 <prvUnlockQueue+0x38>

0000086c <xQueueGenericReset>:
     86c:	00051663          	bnez	a0,878 <xQueueGenericReset+0xc>
     870:	00407073          	csrci	0x4,0
     874:	0000006f          	j	874 <xQueueGenericReset+0x8>
     878:	fe010113          	addi	sp,sp,-32
     87c:	00812c23          	sw	s0,24(sp)
     880:	00050413          	mv	s0,a0
     884:	00112e23          	sw	ra,28(sp)
     888:	00912a23          	sw	s1,20(sp)
     88c:	01212823          	sw	s2,16(sp)
     890:	01312623          	sw	s3,12(sp)
     894:	00058913          	mv	s2,a1
     898:	134010ef          	jal	ra,19cc <vTaskEnterCritical>
     89c:	04042983          	lw	s3,64(s0)
     8a0:	03c42583          	lw	a1,60(s0)
     8a4:	00042483          	lw	s1,0(s0)
     8a8:	00098513          	mv	a0,s3
     8ac:	d0dff0ef          	jal	ra,5b8 <__mulsi3>
     8b0:	00a487b3          	add	a5,s1,a0
     8b4:	02042c23          	sw	zero,56(s0)
     8b8:	00f42223          	sw	a5,4(s0)
     8bc:	41350533          	sub	a0,a0,s3
     8c0:	fff00793          	li	a5,-1
     8c4:	00942423          	sw	s1,8(s0)
     8c8:	04f42223          	sw	a5,68(s0)
     8cc:	00a484b3          	add	s1,s1,a0
     8d0:	00942623          	sw	s1,12(s0)
     8d4:	04f42423          	sw	a5,72(s0)
     8d8:	04091263          	bnez	s2,91c <xQueueGenericReset+0xb0>
     8dc:	01042783          	lw	a5,16(s0)
     8e0:	00078c63          	beqz	a5,8f8 <xQueueGenericReset+0x8c>
     8e4:	01040513          	addi	a0,s0,16
     8e8:	6fd000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     8ec:	00100793          	li	a5,1
     8f0:	00f51463          	bne	a0,a5,8f8 <xQueueGenericReset+0x8c>
     8f4:	9e5ff0ef          	jal	ra,2d8 <vPortYield>
     8f8:	104010ef          	jal	ra,19fc <vTaskExitCritical>
     8fc:	01c12083          	lw	ra,28(sp)
     900:	01812403          	lw	s0,24(sp)
     904:	01412483          	lw	s1,20(sp)
     908:	01012903          	lw	s2,16(sp)
     90c:	00c12983          	lw	s3,12(sp)
     910:	00100513          	li	a0,1
     914:	02010113          	addi	sp,sp,32
     918:	00008067          	ret
     91c:	01040513          	addi	a0,s0,16
     920:	cc1ff0ef          	jal	ra,5e0 <vListInitialise>
     924:	02440513          	addi	a0,s0,36
     928:	cb9ff0ef          	jal	ra,5e0 <vListInitialise>
     92c:	fcdff06f          	j	8f8 <xQueueGenericReset+0x8c>

00000930 <xQueueGenericCreate>:
     930:	00051663          	bnez	a0,93c <xQueueGenericCreate+0xc>
     934:	00407073          	csrci	0x4,0
     938:	0000006f          	j	938 <xQueueGenericCreate+0x8>
     93c:	ff010113          	addi	sp,sp,-16
     940:	00912223          	sw	s1,4(sp)
     944:	01212023          	sw	s2,0(sp)
     948:	00112623          	sw	ra,12(sp)
     94c:	00812423          	sw	s0,8(sp)
     950:	00050913          	mv	s2,a0
     954:	00058493          	mv	s1,a1
     958:	00000793          	li	a5,0
     95c:	00058663          	beqz	a1,968 <xQueueGenericCreate+0x38>
     960:	c59ff0ef          	jal	ra,5b8 <__mulsi3>
     964:	00150793          	addi	a5,a0,1
     968:	04c78513          	addi	a0,a5,76
     96c:	79c020ef          	jal	ra,3108 <pvPortMalloc>
     970:	00050413          	mv	s0,a0
     974:	00051663          	bnez	a0,980 <xQueueGenericCreate+0x50>
     978:	00407073          	csrci	0x4,0
     97c:	0000006f          	j	97c <xQueueGenericCreate+0x4c>
     980:	02049c63          	bnez	s1,9b8 <xQueueGenericCreate+0x88>
     984:	00a42023          	sw	a0,0(s0)
     988:	03242e23          	sw	s2,60(s0)
     98c:	04942023          	sw	s1,64(s0)
     990:	00040513          	mv	a0,s0
     994:	00100593          	li	a1,1
     998:	ed5ff0ef          	jal	ra,86c <xQueueGenericReset>
     99c:	00040513          	mv	a0,s0
     9a0:	00c12083          	lw	ra,12(sp)
     9a4:	00812403          	lw	s0,8(sp)
     9a8:	00412483          	lw	s1,4(sp)
     9ac:	00012903          	lw	s2,0(sp)
     9b0:	01010113          	addi	sp,sp,16
     9b4:	00008067          	ret
     9b8:	04c50793          	addi	a5,a0,76
     9bc:	00f52023          	sw	a5,0(a0)
     9c0:	fc9ff06f          	j	988 <xQueueGenericCreate+0x58>

000009c4 <xQueueGenericSend>:
     9c4:	fc010113          	addi	sp,sp,-64
     9c8:	02112e23          	sw	ra,60(sp)
     9cc:	02812c23          	sw	s0,56(sp)
     9d0:	02912a23          	sw	s1,52(sp)
     9d4:	03212823          	sw	s2,48(sp)
     9d8:	03312623          	sw	s3,44(sp)
     9dc:	03412423          	sw	s4,40(sp)
     9e0:	03512223          	sw	s5,36(sp)
     9e4:	03612023          	sw	s6,32(sp)
     9e8:	00c12623          	sw	a2,12(sp)
     9ec:	00051663          	bnez	a0,9f8 <xQueueGenericSend+0x34>
     9f0:	00407073          	csrci	0x4,0
     9f4:	0000006f          	j	9f4 <xQueueGenericSend+0x30>
     9f8:	00059a63          	bnez	a1,a0c <xQueueGenericSend+0x48>
     9fc:	04052783          	lw	a5,64(a0)
     a00:	00078663          	beqz	a5,a0c <xQueueGenericSend+0x48>
     a04:	00407073          	csrci	0x4,0
     a08:	0000006f          	j	a08 <xQueueGenericSend+0x44>
     a0c:	00200793          	li	a5,2
     a10:	00f69c63          	bne	a3,a5,a28 <xQueueGenericSend+0x64>
     a14:	03c52703          	lw	a4,60(a0)
     a18:	00100793          	li	a5,1
     a1c:	00f70663          	beq	a4,a5,a28 <xQueueGenericSend+0x64>
     a20:	00407073          	csrci	0x4,0
     a24:	0000006f          	j	a24 <xQueueGenericSend+0x60>
     a28:	00068493          	mv	s1,a3
     a2c:	00058a13          	mv	s4,a1
     a30:	00050413          	mv	s0,a0
     a34:	775000ef          	jal	ra,19a8 <xTaskGetSchedulerState>
     a38:	00051a63          	bnez	a0,a4c <xQueueGenericSend+0x88>
     a3c:	00c12783          	lw	a5,12(sp)
     a40:	00078663          	beqz	a5,a4c <xQueueGenericSend+0x88>
     a44:	00407073          	csrci	0x4,0
     a48:	0000006f          	j	a48 <xQueueGenericSend+0x84>
     a4c:	00000913          	li	s2,0
     a50:	00200a93          	li	s5,2
     a54:	fff00993          	li	s3,-1
     a58:	01040b13          	addi	s6,s0,16
     a5c:	0b00006f          	j	b0c <xQueueGenericSend+0x148>
     a60:	0e050663          	beqz	a0,b4c <xQueueGenericSend+0x188>
     a64:	0e40006f          	j	b48 <xQueueGenericSend+0x184>
     a68:	00c12783          	lw	a5,12(sp)
     a6c:	00079863          	bnez	a5,a7c <xQueueGenericSend+0xb8>
     a70:	78d000ef          	jal	ra,19fc <vTaskExitCritical>
     a74:	00000513          	li	a0,0
     a78:	0dc0006f          	j	b54 <xQueueGenericSend+0x190>
     a7c:	00091663          	bnez	s2,a88 <xQueueGenericSend+0xc4>
     a80:	01810513          	addi	a0,sp,24
     a84:	6ed000ef          	jal	ra,1970 <vTaskSetTimeOutState>
     a88:	775000ef          	jal	ra,19fc <vTaskExitCritical>
     a8c:	0c9000ef          	jal	ra,1354 <vTaskSuspendAll>
     a90:	73d000ef          	jal	ra,19cc <vTaskEnterCritical>
     a94:	04442783          	lw	a5,68(s0)
     a98:	01379463          	bne	a5,s3,aa0 <xQueueGenericSend+0xdc>
     a9c:	04042223          	sw	zero,68(s0)
     aa0:	04842783          	lw	a5,72(s0)
     aa4:	01379463          	bne	a5,s3,aac <xQueueGenericSend+0xe8>
     aa8:	04042423          	sw	zero,72(s0)
     aac:	751000ef          	jal	ra,19fc <vTaskExitCritical>
     ab0:	00c10593          	addi	a1,sp,12
     ab4:	01810513          	addi	a0,sp,24
     ab8:	470010ef          	jal	ra,1f28 <xTaskCheckForTimeOut>
     abc:	0c051063          	bnez	a0,b7c <xQueueGenericSend+0x1b8>
     ac0:	70d000ef          	jal	ra,19cc <vTaskEnterCritical>
     ac4:	03842703          	lw	a4,56(s0)
     ac8:	03c42783          	lw	a5,60(s0)
     acc:	02f71663          	bne	a4,a5,af8 <xQueueGenericSend+0x134>
     ad0:	72d000ef          	jal	ra,19fc <vTaskExitCritical>
     ad4:	00c12583          	lw	a1,12(sp)
     ad8:	000b0513          	mv	a0,s6
     adc:	3c5000ef          	jal	ra,16a0 <vTaskPlaceOnEventList>
     ae0:	00040513          	mv	a0,s0
     ae4:	cddff0ef          	jal	ra,7c0 <prvUnlockQueue>
     ae8:	29c010ef          	jal	ra,1d84 <xTaskResumeAll>
     aec:	00051e63          	bnez	a0,b08 <xQueueGenericSend+0x144>
     af0:	fe8ff0ef          	jal	ra,2d8 <vPortYield>
     af4:	0140006f          	j	b08 <xQueueGenericSend+0x144>
     af8:	705000ef          	jal	ra,19fc <vTaskExitCritical>
     afc:	00040513          	mv	a0,s0
     b00:	cc1ff0ef          	jal	ra,7c0 <prvUnlockQueue>
     b04:	280010ef          	jal	ra,1d84 <xTaskResumeAll>
     b08:	00100913          	li	s2,1
     b0c:	6c1000ef          	jal	ra,19cc <vTaskEnterCritical>
     b10:	03842703          	lw	a4,56(s0)
     b14:	03c42783          	lw	a5,60(s0)
     b18:	00f76463          	bltu	a4,a5,b20 <xQueueGenericSend+0x15c>
     b1c:	f55496e3          	bne	s1,s5,a68 <xQueueGenericSend+0xa4>
     b20:	00048613          	mv	a2,s1
     b24:	000a0593          	mv	a1,s4
     b28:	00040513          	mv	a0,s0
     b2c:	b9dff0ef          	jal	ra,6c8 <prvCopyDataToQueue>
     b30:	02442783          	lw	a5,36(s0)
     b34:	f20786e3          	beqz	a5,a60 <xQueueGenericSend+0x9c>
     b38:	02440513          	addi	a0,s0,36
     b3c:	4a9000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     b40:	00100793          	li	a5,1
     b44:	00f51463          	bne	a0,a5,b4c <xQueueGenericSend+0x188>
     b48:	f90ff0ef          	jal	ra,2d8 <vPortYield>
     b4c:	6b1000ef          	jal	ra,19fc <vTaskExitCritical>
     b50:	00100513          	li	a0,1
     b54:	03c12083          	lw	ra,60(sp)
     b58:	03812403          	lw	s0,56(sp)
     b5c:	03412483          	lw	s1,52(sp)
     b60:	03012903          	lw	s2,48(sp)
     b64:	02c12983          	lw	s3,44(sp)
     b68:	02812a03          	lw	s4,40(sp)
     b6c:	02412a83          	lw	s5,36(sp)
     b70:	02012b03          	lw	s6,32(sp)
     b74:	04010113          	addi	sp,sp,64
     b78:	00008067          	ret
     b7c:	00040513          	mv	a0,s0
     b80:	c41ff0ef          	jal	ra,7c0 <prvUnlockQueue>
     b84:	200010ef          	jal	ra,1d84 <xTaskResumeAll>
     b88:	eedff06f          	j	a74 <xQueueGenericSend+0xb0>

00000b8c <xQueueGenericSendFromISR>:
     b8c:	00051663          	bnez	a0,b98 <xQueueGenericSendFromISR+0xc>
     b90:	00407073          	csrci	0x4,0
     b94:	0000006f          	j	b94 <xQueueGenericSendFromISR+0x8>
     b98:	00059a63          	bnez	a1,bac <xQueueGenericSendFromISR+0x20>
     b9c:	04052783          	lw	a5,64(a0)
     ba0:	00078663          	beqz	a5,bac <xQueueGenericSendFromISR+0x20>
     ba4:	00407073          	csrci	0x4,0
     ba8:	0000006f          	j	ba8 <xQueueGenericSendFromISR+0x1c>
     bac:	00200793          	li	a5,2
     bb0:	00f69c63          	bne	a3,a5,bc8 <xQueueGenericSendFromISR+0x3c>
     bb4:	03c52703          	lw	a4,60(a0)
     bb8:	00100793          	li	a5,1
     bbc:	00f70663          	beq	a4,a5,bc8 <xQueueGenericSendFromISR+0x3c>
     bc0:	00407073          	csrci	0x4,0
     bc4:	0000006f          	j	bc4 <xQueueGenericSendFromISR+0x38>
     bc8:	fd010113          	addi	sp,sp,-48
     bcc:	02812423          	sw	s0,40(sp)
     bd0:	02912223          	sw	s1,36(sp)
     bd4:	00050413          	mv	s0,a0
     bd8:	01312e23          	sw	s3,28(sp)
     bdc:	01412c23          	sw	s4,24(sp)
     be0:	00b12623          	sw	a1,12(sp)
     be4:	02112623          	sw	ra,44(sp)
     be8:	03212023          	sw	s2,32(sp)
     bec:	00068493          	mv	s1,a3
     bf0:	00060993          	mv	s3,a2
     bf4:	95dff0ef          	jal	ra,550 <vPortSetInterruptMask>
     bf8:	03842703          	lw	a4,56(s0)
     bfc:	03c42783          	lw	a5,60(s0)
     c00:	00050a13          	mv	s4,a0
     c04:	00c12583          	lw	a1,12(sp)
     c08:	00f76863          	bltu	a4,a5,c18 <xQueueGenericSendFromISR+0x8c>
     c0c:	00200793          	li	a5,2
     c10:	00000913          	li	s2,0
     c14:	02f49463          	bne	s1,a5,c3c <xQueueGenericSendFromISR+0xb0>
     c18:	00048613          	mv	a2,s1
     c1c:	00040513          	mv	a0,s0
     c20:	aa9ff0ef          	jal	ra,6c8 <prvCopyDataToQueue>
     c24:	04842703          	lw	a4,72(s0)
     c28:	fff00793          	li	a5,-1
     c2c:	04f71c63          	bne	a4,a5,c84 <xQueueGenericSendFromISR+0xf8>
     c30:	02442783          	lw	a5,36(s0)
     c34:	02079a63          	bnez	a5,c68 <xQueueGenericSendFromISR+0xdc>
     c38:	00100913          	li	s2,1
     c3c:	000a0513          	mv	a0,s4
     c40:	909ff0ef          	jal	ra,548 <vPortClearInterruptMask>
     c44:	02c12083          	lw	ra,44(sp)
     c48:	02812403          	lw	s0,40(sp)
     c4c:	00090513          	mv	a0,s2
     c50:	02412483          	lw	s1,36(sp)
     c54:	02012903          	lw	s2,32(sp)
     c58:	01c12983          	lw	s3,28(sp)
     c5c:	01812a03          	lw	s4,24(sp)
     c60:	03010113          	addi	sp,sp,48
     c64:	00008067          	ret
     c68:	02440513          	addi	a0,s0,36
     c6c:	379000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     c70:	fc0504e3          	beqz	a0,c38 <xQueueGenericSendFromISR+0xac>
     c74:	fc0982e3          	beqz	s3,c38 <xQueueGenericSendFromISR+0xac>
     c78:	00100793          	li	a5,1
     c7c:	00f9a023          	sw	a5,0(s3)
     c80:	fb9ff06f          	j	c38 <xQueueGenericSendFromISR+0xac>
     c84:	04842783          	lw	a5,72(s0)
     c88:	00178793          	addi	a5,a5,1
     c8c:	04f42423          	sw	a5,72(s0)
     c90:	fa9ff06f          	j	c38 <xQueueGenericSendFromISR+0xac>

00000c94 <xQueueGiveFromISR>:
     c94:	00051663          	bnez	a0,ca0 <xQueueGiveFromISR+0xc>
     c98:	00407073          	csrci	0x4,0
     c9c:	0000006f          	j	c9c <xQueueGiveFromISR+0x8>
     ca0:	04052783          	lw	a5,64(a0)
     ca4:	00078663          	beqz	a5,cb0 <xQueueGiveFromISR+0x1c>
     ca8:	00407073          	csrci	0x4,0
     cac:	0000006f          	j	cac <xQueueGiveFromISR+0x18>
     cb0:	00052783          	lw	a5,0(a0)
     cb4:	00079a63          	bnez	a5,cc8 <xQueueGiveFromISR+0x34>
     cb8:	00452783          	lw	a5,4(a0)
     cbc:	00078663          	beqz	a5,cc8 <xQueueGiveFromISR+0x34>
     cc0:	00407073          	csrci	0x4,0
     cc4:	0000006f          	j	cc4 <xQueueGiveFromISR+0x30>
     cc8:	fe010113          	addi	sp,sp,-32
     ccc:	00812c23          	sw	s0,24(sp)
     cd0:	00912a23          	sw	s1,20(sp)
     cd4:	00050413          	mv	s0,a0
     cd8:	01212823          	sw	s2,16(sp)
     cdc:	01312623          	sw	s3,12(sp)
     ce0:	00112e23          	sw	ra,28(sp)
     ce4:	00058913          	mv	s2,a1
     ce8:	869ff0ef          	jal	ra,550 <vPortSetInterruptMask>
     cec:	03842703          	lw	a4,56(s0)
     cf0:	03c42783          	lw	a5,60(s0)
     cf4:	00050993          	mv	s3,a0
     cf8:	00000493          	li	s1,0
     cfc:	02f77463          	bleu	a5,a4,d24 <xQueueGiveFromISR+0x90>
     d00:	03842783          	lw	a5,56(s0)
     d04:	00178793          	addi	a5,a5,1
     d08:	02f42c23          	sw	a5,56(s0)
     d0c:	04842703          	lw	a4,72(s0)
     d10:	fff00793          	li	a5,-1
     d14:	04f71a63          	bne	a4,a5,d68 <xQueueGiveFromISR+0xd4>
     d18:	02442783          	lw	a5,36(s0)
     d1c:	02079863          	bnez	a5,d4c <xQueueGiveFromISR+0xb8>
     d20:	00100493          	li	s1,1
     d24:	00098513          	mv	a0,s3
     d28:	821ff0ef          	jal	ra,548 <vPortClearInterruptMask>
     d2c:	01c12083          	lw	ra,28(sp)
     d30:	01812403          	lw	s0,24(sp)
     d34:	00048513          	mv	a0,s1
     d38:	01012903          	lw	s2,16(sp)
     d3c:	01412483          	lw	s1,20(sp)
     d40:	00c12983          	lw	s3,12(sp)
     d44:	02010113          	addi	sp,sp,32
     d48:	00008067          	ret
     d4c:	02440513          	addi	a0,s0,36
     d50:	295000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     d54:	fc0506e3          	beqz	a0,d20 <xQueueGiveFromISR+0x8c>
     d58:	fc0904e3          	beqz	s2,d20 <xQueueGiveFromISR+0x8c>
     d5c:	00100793          	li	a5,1
     d60:	00f92023          	sw	a5,0(s2)
     d64:	fbdff06f          	j	d20 <xQueueGiveFromISR+0x8c>
     d68:	04842783          	lw	a5,72(s0)
     d6c:	00178793          	addi	a5,a5,1
     d70:	04f42423          	sw	a5,72(s0)
     d74:	fadff06f          	j	d20 <xQueueGiveFromISR+0x8c>

00000d78 <xQueueGenericReceive>:
     d78:	fc010113          	addi	sp,sp,-64
     d7c:	02112e23          	sw	ra,60(sp)
     d80:	02812c23          	sw	s0,56(sp)
     d84:	02912a23          	sw	s1,52(sp)
     d88:	03212823          	sw	s2,48(sp)
     d8c:	03312623          	sw	s3,44(sp)
     d90:	03412423          	sw	s4,40(sp)
     d94:	03512223          	sw	s5,36(sp)
     d98:	00c12623          	sw	a2,12(sp)
     d9c:	00051663          	bnez	a0,da8 <xQueueGenericReceive+0x30>
     da0:	00407073          	csrci	0x4,0
     da4:	0000006f          	j	da4 <xQueueGenericReceive+0x2c>
     da8:	00059a63          	bnez	a1,dbc <xQueueGenericReceive+0x44>
     dac:	04052783          	lw	a5,64(a0)
     db0:	00078663          	beqz	a5,dbc <xQueueGenericReceive+0x44>
     db4:	00407073          	csrci	0x4,0
     db8:	0000006f          	j	db8 <xQueueGenericReceive+0x40>
     dbc:	00068a13          	mv	s4,a3
     dc0:	00058993          	mv	s3,a1
     dc4:	00050413          	mv	s0,a0
     dc8:	3e1000ef          	jal	ra,19a8 <xTaskGetSchedulerState>
     dcc:	00051a63          	bnez	a0,de0 <xQueueGenericReceive+0x68>
     dd0:	00c12783          	lw	a5,12(sp)
     dd4:	00078663          	beqz	a5,de0 <xQueueGenericReceive+0x68>
     dd8:	00407073          	csrci	0x4,0
     ddc:	0000006f          	j	ddc <xQueueGenericReceive+0x64>
     de0:	00000493          	li	s1,0
     de4:	fff00913          	li	s2,-1
     de8:	02440a93          	addi	s5,s0,36
     dec:	0c00006f          	j	eac <xQueueGenericReceive+0x134>
     df0:	02442783          	lw	a5,36(s0)
     df4:	00942623          	sw	s1,12(s0)
     df8:	0e078e63          	beqz	a5,ef4 <xQueueGenericReceive+0x17c>
     dfc:	02440513          	addi	a0,s0,36
     e00:	1e5000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     e04:	0e050863          	beqz	a0,ef4 <xQueueGenericReceive+0x17c>
     e08:	0e80006f          	j	ef0 <xQueueGenericReceive+0x178>
     e0c:	00c12783          	lw	a5,12(sp)
     e10:	00079863          	bnez	a5,e20 <xQueueGenericReceive+0xa8>
     e14:	3e9000ef          	jal	ra,19fc <vTaskExitCritical>
     e18:	00000513          	li	a0,0
     e1c:	0e00006f          	j	efc <xQueueGenericReceive+0x184>
     e20:	00049663          	bnez	s1,e2c <xQueueGenericReceive+0xb4>
     e24:	01810513          	addi	a0,sp,24
     e28:	349000ef          	jal	ra,1970 <vTaskSetTimeOutState>
     e2c:	3d1000ef          	jal	ra,19fc <vTaskExitCritical>
     e30:	524000ef          	jal	ra,1354 <vTaskSuspendAll>
     e34:	399000ef          	jal	ra,19cc <vTaskEnterCritical>
     e38:	04442783          	lw	a5,68(s0)
     e3c:	01279463          	bne	a5,s2,e44 <xQueueGenericReceive+0xcc>
     e40:	04042223          	sw	zero,68(s0)
     e44:	04842783          	lw	a5,72(s0)
     e48:	01279463          	bne	a5,s2,e50 <xQueueGenericReceive+0xd8>
     e4c:	04042423          	sw	zero,72(s0)
     e50:	3ad000ef          	jal	ra,19fc <vTaskExitCritical>
     e54:	00c10593          	addi	a1,sp,12
     e58:	01810513          	addi	a0,sp,24
     e5c:	0cc010ef          	jal	ra,1f28 <xTaskCheckForTimeOut>
     e60:	0c051063          	bnez	a0,f20 <xQueueGenericReceive+0x1a8>
     e64:	369000ef          	jal	ra,19cc <vTaskEnterCritical>
     e68:	03842783          	lw	a5,56(s0)
     e6c:	02079663          	bnez	a5,e98 <xQueueGenericReceive+0x120>
     e70:	38d000ef          	jal	ra,19fc <vTaskExitCritical>
     e74:	00c12583          	lw	a1,12(sp)
     e78:	000a8513          	mv	a0,s5
     e7c:	025000ef          	jal	ra,16a0 <vTaskPlaceOnEventList>
     e80:	00040513          	mv	a0,s0
     e84:	93dff0ef          	jal	ra,7c0 <prvUnlockQueue>
     e88:	6fd000ef          	jal	ra,1d84 <xTaskResumeAll>
     e8c:	00051e63          	bnez	a0,ea8 <xQueueGenericReceive+0x130>
     e90:	c48ff0ef          	jal	ra,2d8 <vPortYield>
     e94:	0140006f          	j	ea8 <xQueueGenericReceive+0x130>
     e98:	365000ef          	jal	ra,19fc <vTaskExitCritical>
     e9c:	00040513          	mv	a0,s0
     ea0:	921ff0ef          	jal	ra,7c0 <prvUnlockQueue>
     ea4:	6e1000ef          	jal	ra,1d84 <xTaskResumeAll>
     ea8:	00100493          	li	s1,1
     eac:	321000ef          	jal	ra,19cc <vTaskEnterCritical>
     eb0:	03842783          	lw	a5,56(s0)
     eb4:	f4078ce3          	beqz	a5,e0c <xQueueGenericReceive+0x94>
     eb8:	00098593          	mv	a1,s3
     ebc:	00040513          	mv	a0,s0
     ec0:	00c42483          	lw	s1,12(s0)
     ec4:	8c5ff0ef          	jal	ra,788 <prvCopyDataFromQueue>
     ec8:	f20a14e3          	bnez	s4,df0 <xQueueGenericReceive+0x78>
     ecc:	03842783          	lw	a5,56(s0)
     ed0:	fff78793          	addi	a5,a5,-1
     ed4:	02f42c23          	sw	a5,56(s0)
     ed8:	01042783          	lw	a5,16(s0)
     edc:	00078c63          	beqz	a5,ef4 <xQueueGenericReceive+0x17c>
     ee0:	01040513          	addi	a0,s0,16
     ee4:	101000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     ee8:	00100793          	li	a5,1
     eec:	00f51463          	bne	a0,a5,ef4 <xQueueGenericReceive+0x17c>
     ef0:	be8ff0ef          	jal	ra,2d8 <vPortYield>
     ef4:	309000ef          	jal	ra,19fc <vTaskExitCritical>
     ef8:	00100513          	li	a0,1
     efc:	03c12083          	lw	ra,60(sp)
     f00:	03812403          	lw	s0,56(sp)
     f04:	03412483          	lw	s1,52(sp)
     f08:	03012903          	lw	s2,48(sp)
     f0c:	02c12983          	lw	s3,44(sp)
     f10:	02812a03          	lw	s4,40(sp)
     f14:	02412a83          	lw	s5,36(sp)
     f18:	04010113          	addi	sp,sp,64
     f1c:	00008067          	ret
     f20:	00040513          	mv	a0,s0
     f24:	89dff0ef          	jal	ra,7c0 <prvUnlockQueue>
     f28:	65d000ef          	jal	ra,1d84 <xTaskResumeAll>
     f2c:	eedff06f          	j	e18 <xQueueGenericReceive+0xa0>

00000f30 <xQueueReceiveFromISR>:
     f30:	00051663          	bnez	a0,f3c <xQueueReceiveFromISR+0xc>
     f34:	00407073          	csrci	0x4,0
     f38:	0000006f          	j	f38 <xQueueReceiveFromISR+0x8>
     f3c:	00059a63          	bnez	a1,f50 <xQueueReceiveFromISR+0x20>
     f40:	04052783          	lw	a5,64(a0)
     f44:	00078663          	beqz	a5,f50 <xQueueReceiveFromISR+0x20>
     f48:	00407073          	csrci	0x4,0
     f4c:	0000006f          	j	f4c <xQueueReceiveFromISR+0x1c>
     f50:	fd010113          	addi	sp,sp,-48
     f54:	02812423          	sw	s0,40(sp)
     f58:	02912223          	sw	s1,36(sp)
     f5c:	03212023          	sw	s2,32(sp)
     f60:	01312e23          	sw	s3,28(sp)
     f64:	00b12623          	sw	a1,12(sp)
     f68:	00050413          	mv	s0,a0
     f6c:	02112623          	sw	ra,44(sp)
     f70:	00060913          	mv	s2,a2
     f74:	ddcff0ef          	jal	ra,550 <vPortSetInterruptMask>
     f78:	03842783          	lw	a5,56(s0)
     f7c:	00050993          	mv	s3,a0
     f80:	00000493          	li	s1,0
     f84:	00c12583          	lw	a1,12(sp)
     f88:	02078863          	beqz	a5,fb8 <xQueueReceiveFromISR+0x88>
     f8c:	00040513          	mv	a0,s0
     f90:	ff8ff0ef          	jal	ra,788 <prvCopyDataFromQueue>
     f94:	03842783          	lw	a5,56(s0)
     f98:	fff78793          	addi	a5,a5,-1
     f9c:	02f42c23          	sw	a5,56(s0)
     fa0:	04442703          	lw	a4,68(s0)
     fa4:	fff00793          	li	a5,-1
     fa8:	04f71a63          	bne	a4,a5,ffc <xQueueReceiveFromISR+0xcc>
     fac:	01042783          	lw	a5,16(s0)
     fb0:	02079863          	bnez	a5,fe0 <xQueueReceiveFromISR+0xb0>
     fb4:	00100493          	li	s1,1
     fb8:	00098513          	mv	a0,s3
     fbc:	d8cff0ef          	jal	ra,548 <vPortClearInterruptMask>
     fc0:	02c12083          	lw	ra,44(sp)
     fc4:	02812403          	lw	s0,40(sp)
     fc8:	00048513          	mv	a0,s1
     fcc:	02012903          	lw	s2,32(sp)
     fd0:	02412483          	lw	s1,36(sp)
     fd4:	01c12983          	lw	s3,28(sp)
     fd8:	03010113          	addi	sp,sp,48
     fdc:	00008067          	ret
     fe0:	01040513          	addi	a0,s0,16
     fe4:	001000ef          	jal	ra,17e4 <xTaskRemoveFromEventList>
     fe8:	fc0506e3          	beqz	a0,fb4 <xQueueReceiveFromISR+0x84>
     fec:	fc0904e3          	beqz	s2,fb4 <xQueueReceiveFromISR+0x84>
     ff0:	00100793          	li	a5,1
     ff4:	00f92023          	sw	a5,0(s2)
     ff8:	fbdff06f          	j	fb4 <xQueueReceiveFromISR+0x84>
     ffc:	04442783          	lw	a5,68(s0)
    1000:	00178793          	addi	a5,a5,1
    1004:	04f42223          	sw	a5,68(s0)
    1008:	fadff06f          	j	fb4 <xQueueReceiveFromISR+0x84>

0000100c <xQueuePeekFromISR>:
    100c:	00051663          	bnez	a0,1018 <xQueuePeekFromISR+0xc>
    1010:	00407073          	csrci	0x4,0
    1014:	0000006f          	j	1014 <xQueuePeekFromISR+0x8>
    1018:	04052783          	lw	a5,64(a0)
    101c:	00059863          	bnez	a1,102c <xQueuePeekFromISR+0x20>
    1020:	00078863          	beqz	a5,1030 <xQueuePeekFromISR+0x24>
    1024:	00407073          	csrci	0x4,0
    1028:	0000006f          	j	1028 <xQueuePeekFromISR+0x1c>
    102c:	00079663          	bnez	a5,1038 <xQueuePeekFromISR+0x2c>
    1030:	00407073          	csrci	0x4,0
    1034:	0000006f          	j	1034 <xQueuePeekFromISR+0x28>
    1038:	fe010113          	addi	sp,sp,-32
    103c:	00812c23          	sw	s0,24(sp)
    1040:	00912a23          	sw	s1,20(sp)
    1044:	01212823          	sw	s2,16(sp)
    1048:	00b12623          	sw	a1,12(sp)
    104c:	00050413          	mv	s0,a0
    1050:	00112e23          	sw	ra,28(sp)
    1054:	cfcff0ef          	jal	ra,550 <vPortSetInterruptMask>
    1058:	03842783          	lw	a5,56(s0)
    105c:	00050913          	mv	s2,a0
    1060:	00000493          	li	s1,0
    1064:	00c12583          	lw	a1,12(sp)
    1068:	00078c63          	beqz	a5,1080 <xQueuePeekFromISR+0x74>
    106c:	00c42483          	lw	s1,12(s0)
    1070:	00040513          	mv	a0,s0
    1074:	f14ff0ef          	jal	ra,788 <prvCopyDataFromQueue>
    1078:	00942623          	sw	s1,12(s0)
    107c:	00100493          	li	s1,1
    1080:	00090513          	mv	a0,s2
    1084:	cc4ff0ef          	jal	ra,548 <vPortClearInterruptMask>
    1088:	01c12083          	lw	ra,28(sp)
    108c:	01812403          	lw	s0,24(sp)
    1090:	00048513          	mv	a0,s1
    1094:	01012903          	lw	s2,16(sp)
    1098:	01412483          	lw	s1,20(sp)
    109c:	02010113          	addi	sp,sp,32
    10a0:	00008067          	ret

000010a4 <uxQueueMessagesWaiting>:
    10a4:	00051663          	bnez	a0,10b0 <uxQueueMessagesWaiting+0xc>
    10a8:	00407073          	csrci	0x4,0
    10ac:	0000006f          	j	10ac <uxQueueMessagesWaiting+0x8>
    10b0:	fe010113          	addi	sp,sp,-32
    10b4:	00112e23          	sw	ra,28(sp)
    10b8:	00812c23          	sw	s0,24(sp)
    10bc:	00050413          	mv	s0,a0
    10c0:	10d000ef          	jal	ra,19cc <vTaskEnterCritical>
    10c4:	03842503          	lw	a0,56(s0)
    10c8:	00a12623          	sw	a0,12(sp)
    10cc:	131000ef          	jal	ra,19fc <vTaskExitCritical>
    10d0:	01c12083          	lw	ra,28(sp)
    10d4:	01812403          	lw	s0,24(sp)
    10d8:	00c12503          	lw	a0,12(sp)
    10dc:	02010113          	addi	sp,sp,32
    10e0:	00008067          	ret

000010e4 <uxQueueSpacesAvailable>:
    10e4:	00051663          	bnez	a0,10f0 <uxQueueSpacesAvailable+0xc>
    10e8:	00407073          	csrci	0x4,0
    10ec:	0000006f          	j	10ec <uxQueueSpacesAvailable+0x8>
    10f0:	fe010113          	addi	sp,sp,-32
    10f4:	00112e23          	sw	ra,28(sp)
    10f8:	00812c23          	sw	s0,24(sp)
    10fc:	00050413          	mv	s0,a0
    1100:	0cd000ef          	jal	ra,19cc <vTaskEnterCritical>
    1104:	03842783          	lw	a5,56(s0)
    1108:	03c42503          	lw	a0,60(s0)
    110c:	40f50533          	sub	a0,a0,a5
    1110:	00a12623          	sw	a0,12(sp)
    1114:	0e9000ef          	jal	ra,19fc <vTaskExitCritical>
    1118:	01c12083          	lw	ra,28(sp)
    111c:	01812403          	lw	s0,24(sp)
    1120:	00c12503          	lw	a0,12(sp)
    1124:	02010113          	addi	sp,sp,32
    1128:	00008067          	ret

0000112c <uxQueueMessagesWaitingFromISR>:
    112c:	00051663          	bnez	a0,1138 <uxQueueMessagesWaitingFromISR+0xc>
    1130:	00407073          	csrci	0x4,0
    1134:	0000006f          	j	1134 <uxQueueMessagesWaitingFromISR+0x8>
    1138:	03852503          	lw	a0,56(a0)
    113c:	00008067          	ret

00001140 <xQueueIsQueueEmptyFromISR>:
    1140:	00051663          	bnez	a0,114c <xQueueIsQueueEmptyFromISR+0xc>
    1144:	00407073          	csrci	0x4,0
    1148:	0000006f          	j	1148 <xQueueIsQueueEmptyFromISR+0x8>
    114c:	03852503          	lw	a0,56(a0)
    1150:	00153513          	seqz	a0,a0
    1154:	00008067          	ret

00001158 <xQueueIsQueueFullFromISR>:
    1158:	00051663          	bnez	a0,1164 <xQueueIsQueueFullFromISR+0xc>
    115c:	00407073          	csrci	0x4,0
    1160:	0000006f          	j	1160 <xQueueIsQueueFullFromISR+0x8>
    1164:	03852783          	lw	a5,56(a0)
    1168:	03c52503          	lw	a0,60(a0)
    116c:	40f50533          	sub	a0,a0,a5
    1170:	00153513          	seqz	a0,a0
    1174:	00008067          	ret

00001178 <vQueueAddToRegistry>:
    1178:	000037b7          	lui	a5,0x3
    117c:	58078693          	addi	a3,a5,1408 # 3580 <xQueueRegistry>
    1180:	00000713          	li	a4,0
    1184:	58078793          	addi	a5,a5,1408
    1188:	00800613          	li	a2,8
    118c:	0006a803          	lw	a6,0(a3)
    1190:	00081c63          	bnez	a6,11a8 <vQueueAddToRegistry+0x30>
    1194:	00371713          	slli	a4,a4,0x3
    1198:	00e787b3          	add	a5,a5,a4
    119c:	00b7a023          	sw	a1,0(a5)
    11a0:	00a7a223          	sw	a0,4(a5)
    11a4:	00008067          	ret
    11a8:	00170713          	addi	a4,a4,1
    11ac:	00868693          	addi	a3,a3,8
    11b0:	fcc71ee3          	bne	a4,a2,118c <vQueueAddToRegistry+0x14>
    11b4:	00008067          	ret

000011b8 <vQueueUnregisterQueue>:
    11b8:	00003737          	lui	a4,0x3
    11bc:	58070693          	addi	a3,a4,1408 # 3580 <xQueueRegistry>
    11c0:	00000793          	li	a5,0
    11c4:	58070713          	addi	a4,a4,1408
    11c8:	00800613          	li	a2,8
    11cc:	0046a583          	lw	a1,4(a3)
    11d0:	00a59a63          	bne	a1,a0,11e4 <vQueueUnregisterQueue+0x2c>
    11d4:	00379793          	slli	a5,a5,0x3
    11d8:	00f707b3          	add	a5,a4,a5
    11dc:	0007a023          	sw	zero,0(a5)
    11e0:	00008067          	ret
    11e4:	00178793          	addi	a5,a5,1
    11e8:	00868693          	addi	a3,a3,8
    11ec:	fec790e3          	bne	a5,a2,11cc <vQueueUnregisterQueue+0x14>
    11f0:	00008067          	ret

000011f4 <vQueueDelete>:
    11f4:	00051663          	bnez	a0,1200 <vQueueDelete+0xc>
    11f8:	00407073          	csrci	0x4,0
    11fc:	0000006f          	j	11fc <vQueueDelete+0x8>
    1200:	ff010113          	addi	sp,sp,-16
    1204:	00812423          	sw	s0,8(sp)
    1208:	00112623          	sw	ra,12(sp)
    120c:	00050413          	mv	s0,a0
    1210:	fa9ff0ef          	jal	ra,11b8 <vQueueUnregisterQueue>
    1214:	00040513          	mv	a0,s0
    1218:	00812403          	lw	s0,8(sp)
    121c:	00c12083          	lw	ra,12(sp)
    1220:	01010113          	addi	sp,sp,16
    1224:	03c0206f          	j	3260 <vPortFree>

00001228 <vQueueWaitForMessageRestricted>:
    1228:	fe010113          	addi	sp,sp,-32
    122c:	00812c23          	sw	s0,24(sp)
    1230:	00b12623          	sw	a1,12(sp)
    1234:	00050413          	mv	s0,a0
    1238:	00c12423          	sw	a2,8(sp)
    123c:	00112e23          	sw	ra,28(sp)
    1240:	78c000ef          	jal	ra,19cc <vTaskEnterCritical>
    1244:	04442703          	lw	a4,68(s0)
    1248:	fff00793          	li	a5,-1
    124c:	00812603          	lw	a2,8(sp)
    1250:	00c12583          	lw	a1,12(sp)
    1254:	00f71463          	bne	a4,a5,125c <vQueueWaitForMessageRestricted+0x34>
    1258:	04042223          	sw	zero,68(s0)
    125c:	04842703          	lw	a4,72(s0)
    1260:	fff00793          	li	a5,-1
    1264:	00f71463          	bne	a4,a5,126c <vQueueWaitForMessageRestricted+0x44>
    1268:	04042423          	sw	zero,72(s0)
    126c:	00c12623          	sw	a2,12(sp)
    1270:	00b12423          	sw	a1,8(sp)
    1274:	788000ef          	jal	ra,19fc <vTaskExitCritical>
    1278:	03842783          	lw	a5,56(s0)
    127c:	00812583          	lw	a1,8(sp)
    1280:	00c12603          	lw	a2,12(sp)
    1284:	00079663          	bnez	a5,1290 <vQueueWaitForMessageRestricted+0x68>
    1288:	02440513          	addi	a0,s0,36
    128c:	4f8000ef          	jal	ra,1784 <vTaskPlaceOnEventListRestricted>
    1290:	00040513          	mv	a0,s0
    1294:	01812403          	lw	s0,24(sp)
    1298:	01c12083          	lw	ra,28(sp)
    129c:	02010113          	addi	sp,sp,32
    12a0:	d20ff06f          	j	7c0 <prvUnlockQueue>

000012a4 <prvIdleTask>:
    12a4:	ff010113          	addi	sp,sp,-16
    12a8:	00812423          	sw	s0,8(sp)
    12ac:	00912223          	sw	s1,4(sp)
    12b0:	00112623          	sw	ra,12(sp)
    12b4:	00004437          	lui	s0,0x4
    12b8:	00100493          	li	s1,1
    12bc:	81842783          	lw	a5,-2024(s0) # 3818 <_end>
    12c0:	00f4f063          	bleu	a5,s1,12c0 <prvIdleTask+0x1c>
    12c4:	814ff0ef          	jal	ra,2d8 <vPortYield>
    12c8:	ff5ff06f          	j	12bc <prvIdleTask+0x18>

000012cc <prvAddCurrentTaskToDelayedList>:
    12cc:	000047b7          	lui	a5,0x4
    12d0:	8b878793          	addi	a5,a5,-1864 # 38b8 <pxCurrentTCB>
    12d4:	0007a703          	lw	a4,0(a5)
    12d8:	00a72223          	sw	a0,4(a4)
    12dc:	00004737          	lui	a4,0x4
    12e0:	8e472703          	lw	a4,-1820(a4) # 38e4 <xTickCount>
    12e4:	00e57c63          	bleu	a4,a0,12fc <prvAddCurrentTaskToDelayedList+0x30>
    12e8:	00004737          	lui	a4,0x4
    12ec:	8c072503          	lw	a0,-1856(a4) # 38c0 <pxOverflowDelayedTaskList>
    12f0:	0007a583          	lw	a1,0(a5)
    12f4:	00458593          	addi	a1,a1,4
    12f8:	b40ff06f          	j	638 <vListInsert>
    12fc:	ff010113          	addi	sp,sp,-16
    1300:	00812423          	sw	s0,8(sp)
    1304:	00004737          	lui	a4,0x4
    1308:	00112623          	sw	ra,12(sp)
    130c:	00050413          	mv	s0,a0
    1310:	8bc72503          	lw	a0,-1860(a4) # 38bc <pxDelayedTaskList>
    1314:	0007a583          	lw	a1,0(a5)
    1318:	00458593          	addi	a1,a1,4
    131c:	b1cff0ef          	jal	ra,638 <vListInsert>
    1320:	000047b7          	lui	a5,0x4
    1324:	8d878793          	addi	a5,a5,-1832 # 38d8 <xNextTaskUnblockTime>
    1328:	0007a703          	lw	a4,0(a5)
    132c:	00e47463          	bleu	a4,s0,1334 <prvAddCurrentTaskToDelayedList+0x68>
    1330:	0087a023          	sw	s0,0(a5)
    1334:	00c12083          	lw	ra,12(sp)
    1338:	00812403          	lw	s0,8(sp)
    133c:	01010113          	addi	sp,sp,16
    1340:	00008067          	ret

00001344 <vTaskEndScheduler>:
    1344:	00407073          	csrci	0x4,0
    1348:	000047b7          	lui	a5,0x4
    134c:	8e07a023          	sw	zero,-1824(a5) # 38e0 <xSchedulerRunning>
    1350:	f85fe06f          	j	2d4 <vPortEndScheduler>

00001354 <vTaskSuspendAll>:
    1354:	000047b7          	lui	a5,0x4
    1358:	8cc78793          	addi	a5,a5,-1844 # 38cc <uxSchedulerSuspended>
    135c:	0007a703          	lw	a4,0(a5)
    1360:	00170713          	addi	a4,a4,1
    1364:	00e7a023          	sw	a4,0(a5)
    1368:	00008067          	ret

0000136c <xTaskGetTickCountFromISR>:
    136c:	ff010113          	addi	sp,sp,-16
    1370:	00112623          	sw	ra,12(sp)
    1374:	00812423          	sw	s0,8(sp)
    1378:	9d8ff0ef          	jal	ra,550 <vPortSetInterruptMask>
    137c:	000047b7          	lui	a5,0x4
    1380:	8e47a403          	lw	s0,-1820(a5) # 38e4 <xTickCount>
    1384:	9c4ff0ef          	jal	ra,548 <vPortClearInterruptMask>
    1388:	00c12083          	lw	ra,12(sp)
    138c:	00040513          	mv	a0,s0
    1390:	00812403          	lw	s0,8(sp)
    1394:	01010113          	addi	sp,sp,16
    1398:	00008067          	ret

0000139c <uxTaskGetNumberOfTasks>:
    139c:	000047b7          	lui	a5,0x4
    13a0:	8c47a503          	lw	a0,-1852(a5) # 38c4 <uxCurrentNumberOfTasks>
    13a4:	00008067          	ret

000013a8 <xTaskIncrementTick>:
    13a8:	000047b7          	lui	a5,0x4
    13ac:	8cc7a783          	lw	a5,-1844(a5) # 38cc <uxSchedulerSuspended>
    13b0:	fd010113          	addi	sp,sp,-48
    13b4:	02112623          	sw	ra,44(sp)
    13b8:	02812423          	sw	s0,40(sp)
    13bc:	02912223          	sw	s1,36(sp)
    13c0:	03212023          	sw	s2,32(sp)
    13c4:	01312e23          	sw	s3,28(sp)
    13c8:	01412c23          	sw	s4,24(sp)
    13cc:	01512a23          	sw	s5,20(sp)
    13d0:	01612823          	sw	s6,16(sp)
    13d4:	01712623          	sw	s7,12(sp)
    13d8:	01812423          	sw	s8,8(sp)
    13dc:	1a079e63          	bnez	a5,1598 <xTaskIncrementTick+0x1f0>
    13e0:	000047b7          	lui	a5,0x4
    13e4:	8e478793          	addi	a5,a5,-1820 # 38e4 <xTickCount>
    13e8:	0007a703          	lw	a4,0(a5)
    13ec:	00170713          	addi	a4,a4,1
    13f0:	00e7a023          	sw	a4,0(a5)
    13f4:	0007aa83          	lw	s5,0(a5)
    13f8:	060a9463          	bnez	s5,1460 <xTaskIncrementTick+0xb8>
    13fc:	000047b7          	lui	a5,0x4
    1400:	8bc78793          	addi	a5,a5,-1860 # 38bc <pxDelayedTaskList>
    1404:	0007a703          	lw	a4,0(a5)
    1408:	00072703          	lw	a4,0(a4)
    140c:	00070663          	beqz	a4,1418 <xTaskIncrementTick+0x70>
    1410:	00407073          	csrci	0x4,0
    1414:	0000006f          	j	1414 <xTaskIncrementTick+0x6c>
    1418:	00004737          	lui	a4,0x4
    141c:	8c070713          	addi	a4,a4,-1856 # 38c0 <pxOverflowDelayedTaskList>
    1420:	0007a683          	lw	a3,0(a5)
    1424:	00072603          	lw	a2,0(a4)
    1428:	00c7a023          	sw	a2,0(a5)
    142c:	00d72023          	sw	a3,0(a4)
    1430:	00004737          	lui	a4,0x4
    1434:	8dc70713          	addi	a4,a4,-1828 # 38dc <xNumOfOverflows>
    1438:	00072683          	lw	a3,0(a4)
    143c:	00168693          	addi	a3,a3,1
    1440:	00d72023          	sw	a3,0(a4)
    1444:	0007a703          	lw	a4,0(a5)
    1448:	00072683          	lw	a3,0(a4)
    144c:	00004737          	lui	a4,0x4
    1450:	8d870713          	addi	a4,a4,-1832 # 38d8 <xNextTaskUnblockTime>
    1454:	08069e63          	bnez	a3,14f0 <xTaskIncrementTick+0x148>
    1458:	fff00793          	li	a5,-1
    145c:	00f72023          	sw	a5,0(a4)
    1460:	000049b7          	lui	s3,0x4
    1464:	8d898793          	addi	a5,s3,-1832 # 38d8 <xNextTaskUnblockTime>
    1468:	0007a783          	lw	a5,0(a5)
    146c:	000044b7          	lui	s1,0x4
    1470:	00004a37          	lui	s4,0x4
    1474:	8d898993          	addi	s3,s3,-1832
    1478:	81848493          	addi	s1,s1,-2024 # 3818 <_end>
    147c:	8b8a0a13          	addi	s4,s4,-1864 # 38b8 <pxCurrentTCB>
    1480:	00000413          	li	s0,0
    1484:	08faf063          	bleu	a5,s5,1504 <xTaskIncrementTick+0x15c>
    1488:	000a2783          	lw	a5,0(s4)
    148c:	01400593          	li	a1,20
    1490:	02c7a503          	lw	a0,44(a5)
    1494:	924ff0ef          	jal	ra,5b8 <__mulsi3>
    1498:	00a48533          	add	a0,s1,a0
    149c:	00052703          	lw	a4,0(a0)
    14a0:	00100793          	li	a5,1
    14a4:	00e7f463          	bleu	a4,a5,14ac <xTaskIncrementTick+0x104>
    14a8:	00100413          	li	s0,1
    14ac:	000047b7          	lui	a5,0x4
    14b0:	8e87a783          	lw	a5,-1816(a5) # 38e8 <xYieldPending>
    14b4:	00078463          	beqz	a5,14bc <xTaskIncrementTick+0x114>
    14b8:	00100413          	li	s0,1
    14bc:	00040513          	mv	a0,s0
    14c0:	02c12083          	lw	ra,44(sp)
    14c4:	02812403          	lw	s0,40(sp)
    14c8:	02412483          	lw	s1,36(sp)
    14cc:	02012903          	lw	s2,32(sp)
    14d0:	01c12983          	lw	s3,28(sp)
    14d4:	01812a03          	lw	s4,24(sp)
    14d8:	01412a83          	lw	s5,20(sp)
    14dc:	01012b03          	lw	s6,16(sp)
    14e0:	00c12b83          	lw	s7,12(sp)
    14e4:	00812c03          	lw	s8,8(sp)
    14e8:	03010113          	addi	sp,sp,48
    14ec:	00008067          	ret
    14f0:	0007a783          	lw	a5,0(a5)
    14f4:	00c7a783          	lw	a5,12(a5)
    14f8:	00c7a783          	lw	a5,12(a5)
    14fc:	0047a783          	lw	a5,4(a5)
    1500:	f5dff06f          	j	145c <xTaskIncrementTick+0xb4>
    1504:	00004bb7          	lui	s7,0x4
    1508:	00004c37          	lui	s8,0x4
    150c:	8bcb8793          	addi	a5,s7,-1860 # 38bc <pxDelayedTaskList>
    1510:	0007a703          	lw	a4,0(a5)
    1514:	00072703          	lw	a4,0(a4)
    1518:	00071863          	bnez	a4,1528 <xTaskIncrementTick+0x180>
    151c:	fff00793          	li	a5,-1
    1520:	00f9a023          	sw	a5,0(s3)
    1524:	f65ff06f          	j	1488 <xTaskIncrementTick+0xe0>
    1528:	0007a783          	lw	a5,0(a5)
    152c:	00c7a783          	lw	a5,12(a5)
    1530:	00c7a903          	lw	s2,12(a5)
    1534:	00492783          	lw	a5,4(s2)
    1538:	fefae4e3          	bltu	s5,a5,1520 <xTaskIncrementTick+0x178>
    153c:	00490b13          	addi	s6,s2,4
    1540:	000b0513          	mv	a0,s6
    1544:	944ff0ef          	jal	ra,688 <uxListRemove>
    1548:	02892783          	lw	a5,40(s2)
    154c:	00078663          	beqz	a5,1558 <xTaskIncrementTick+0x1b0>
    1550:	01890513          	addi	a0,s2,24
    1554:	934ff0ef          	jal	ra,688 <uxListRemove>
    1558:	8d4c0793          	addi	a5,s8,-1836 # 38d4 <uxTopReadyPriority>
    155c:	02c92503          	lw	a0,44(s2)
    1560:	0007a703          	lw	a4,0(a5)
    1564:	00a77463          	bleu	a0,a4,156c <xTaskIncrementTick+0x1c4>
    1568:	00a7a023          	sw	a0,0(a5)
    156c:	01400593          	li	a1,20
    1570:	848ff0ef          	jal	ra,5b8 <__mulsi3>
    1574:	000b0593          	mv	a1,s6
    1578:	00a48533          	add	a0,s1,a0
    157c:	88cff0ef          	jal	ra,608 <vListInsertEnd>
    1580:	000a2783          	lw	a5,0(s4)
    1584:	02c92703          	lw	a4,44(s2)
    1588:	02c7a783          	lw	a5,44(a5)
    158c:	f8f760e3          	bltu	a4,a5,150c <xTaskIncrementTick+0x164>
    1590:	00100413          	li	s0,1
    1594:	f79ff06f          	j	150c <xTaskIncrementTick+0x164>
    1598:	000047b7          	lui	a5,0x4
    159c:	8c878793          	addi	a5,a5,-1848 # 38c8 <uxPendedTicks>
    15a0:	0007a703          	lw	a4,0(a5)
    15a4:	00000413          	li	s0,0
    15a8:	00170713          	addi	a4,a4,1
    15ac:	00e7a023          	sw	a4,0(a5)
    15b0:	efdff06f          	j	14ac <xTaskIncrementTick+0x104>

000015b4 <vTaskSwitchContext>:
    15b4:	000047b7          	lui	a5,0x4
    15b8:	8cc7a703          	lw	a4,-1844(a5) # 38cc <uxSchedulerSuspended>
    15bc:	000047b7          	lui	a5,0x4
    15c0:	8e878793          	addi	a5,a5,-1816 # 38e8 <xYieldPending>
    15c4:	00070863          	beqz	a4,15d4 <vTaskSwitchContext+0x20>
    15c8:	00100713          	li	a4,1
    15cc:	00e7a023          	sw	a4,0(a5)
    15d0:	00008067          	ret
    15d4:	ff010113          	addi	sp,sp,-16
    15d8:	00812423          	sw	s0,8(sp)
    15dc:	01212023          	sw	s2,0(sp)
    15e0:	00112623          	sw	ra,12(sp)
    15e4:	00912223          	sw	s1,4(sp)
    15e8:	00004437          	lui	s0,0x4
    15ec:	0007a023          	sw	zero,0(a5)
    15f0:	00004937          	lui	s2,0x4
    15f4:	81840413          	addi	s0,s0,-2024 # 3818 <_end>
    15f8:	8d490493          	addi	s1,s2,-1836 # 38d4 <uxTopReadyPriority>
    15fc:	0004a503          	lw	a0,0(s1)
    1600:	01400593          	li	a1,20
    1604:	fb5fe0ef          	jal	ra,5b8 <__mulsi3>
    1608:	00a40533          	add	a0,s0,a0
    160c:	00052783          	lw	a5,0(a0)
    1610:	06078863          	beqz	a5,1680 <vTaskSwitchContext+0xcc>
    1614:	0004a483          	lw	s1,0(s1)
    1618:	01400593          	li	a1,20
    161c:	00048513          	mv	a0,s1
    1620:	f99fe0ef          	jal	ra,5b8 <__mulsi3>
    1624:	00a407b3          	add	a5,s0,a0
    1628:	0047a703          	lw	a4,4(a5)
    162c:	00850513          	addi	a0,a0,8
    1630:	00a40533          	add	a0,s0,a0
    1634:	00472703          	lw	a4,4(a4)
    1638:	00e7a223          	sw	a4,4(a5)
    163c:	00a71663          	bne	a4,a0,1648 <vTaskSwitchContext+0x94>
    1640:	00472703          	lw	a4,4(a4)
    1644:	00e7a223          	sw	a4,4(a5)
    1648:	00048513          	mv	a0,s1
    164c:	01400593          	li	a1,20
    1650:	f69fe0ef          	jal	ra,5b8 <__mulsi3>
    1654:	00a40533          	add	a0,s0,a0
    1658:	00452783          	lw	a5,4(a0)
    165c:	00c12083          	lw	ra,12(sp)
    1660:	00812403          	lw	s0,8(sp)
    1664:	00c7a703          	lw	a4,12(a5)
    1668:	000047b7          	lui	a5,0x4
    166c:	00412483          	lw	s1,4(sp)
    1670:	8ae7ac23          	sw	a4,-1864(a5) # 38b8 <pxCurrentTCB>
    1674:	00012903          	lw	s2,0(sp)
    1678:	01010113          	addi	sp,sp,16
    167c:	00008067          	ret
    1680:	0004a783          	lw	a5,0(s1)
    1684:	00079663          	bnez	a5,1690 <vTaskSwitchContext+0xdc>
    1688:	00407073          	csrci	0x4,0
    168c:	0000006f          	j	168c <vTaskSwitchContext+0xd8>
    1690:	0004a783          	lw	a5,0(s1)
    1694:	fff78793          	addi	a5,a5,-1
    1698:	00f4a023          	sw	a5,0(s1)
    169c:	f5dff06f          	j	15f8 <vTaskSwitchContext+0x44>

000016a0 <vTaskPlaceOnEventList>:
    16a0:	00051663          	bnez	a0,16ac <vTaskPlaceOnEventList+0xc>
    16a4:	00407073          	csrci	0x4,0
    16a8:	0000006f          	j	16a8 <vTaskPlaceOnEventList+0x8>
    16ac:	ff010113          	addi	sp,sp,-16
    16b0:	00812423          	sw	s0,8(sp)
    16b4:	00004437          	lui	s0,0x4
    16b8:	00112623          	sw	ra,12(sp)
    16bc:	00912223          	sw	s1,4(sp)
    16c0:	8b840413          	addi	s0,s0,-1864 # 38b8 <pxCurrentTCB>
    16c4:	00058493          	mv	s1,a1
    16c8:	00042583          	lw	a1,0(s0)
    16cc:	01858593          	addi	a1,a1,24
    16d0:	f69fe0ef          	jal	ra,638 <vListInsert>
    16d4:	00042503          	lw	a0,0(s0)
    16d8:	00450513          	addi	a0,a0,4
    16dc:	fadfe0ef          	jal	ra,688 <uxListRemove>
    16e0:	000047b7          	lui	a5,0x4
    16e4:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    16e8:	00812403          	lw	s0,8(sp)
    16ec:	00c12083          	lw	ra,12(sp)
    16f0:	00950533          	add	a0,a0,s1
    16f4:	00412483          	lw	s1,4(sp)
    16f8:	01010113          	addi	sp,sp,16
    16fc:	bd1ff06f          	j	12cc <prvAddCurrentTaskToDelayedList>

00001700 <vTaskPlaceOnUnorderedEventList>:
    1700:	00051663          	bnez	a0,170c <vTaskPlaceOnUnorderedEventList+0xc>
    1704:	00407073          	csrci	0x4,0
    1708:	0000006f          	j	1708 <vTaskPlaceOnUnorderedEventList+0x8>
    170c:	000047b7          	lui	a5,0x4
    1710:	8cc7a783          	lw	a5,-1844(a5) # 38cc <uxSchedulerSuspended>
    1714:	00079663          	bnez	a5,1720 <vTaskPlaceOnUnorderedEventList+0x20>
    1718:	00407073          	csrci	0x4,0
    171c:	0000006f          	j	171c <vTaskPlaceOnUnorderedEventList+0x1c>
    1720:	ff010113          	addi	sp,sp,-16
    1724:	00812423          	sw	s0,8(sp)
    1728:	00004437          	lui	s0,0x4
    172c:	00112623          	sw	ra,12(sp)
    1730:	00912223          	sw	s1,4(sp)
    1734:	8b840413          	addi	s0,s0,-1864 # 38b8 <pxCurrentTCB>
    1738:	00042783          	lw	a5,0(s0)
    173c:	80000737          	lui	a4,0x80000
    1740:	00e5e5b3          	or	a1,a1,a4
    1744:	00b7ac23          	sw	a1,24(a5)
    1748:	00042583          	lw	a1,0(s0)
    174c:	00060493          	mv	s1,a2
    1750:	01858593          	addi	a1,a1,24
    1754:	eb5fe0ef          	jal	ra,608 <vListInsertEnd>
    1758:	00042503          	lw	a0,0(s0)
    175c:	00450513          	addi	a0,a0,4
    1760:	f29fe0ef          	jal	ra,688 <uxListRemove>
    1764:	000047b7          	lui	a5,0x4
    1768:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    176c:	00812403          	lw	s0,8(sp)
    1770:	00c12083          	lw	ra,12(sp)
    1774:	00950533          	add	a0,a0,s1
    1778:	00412483          	lw	s1,4(sp)
    177c:	01010113          	addi	sp,sp,16
    1780:	b4dff06f          	j	12cc <prvAddCurrentTaskToDelayedList>

00001784 <vTaskPlaceOnEventListRestricted>:
    1784:	00051663          	bnez	a0,1790 <vTaskPlaceOnEventListRestricted+0xc>
    1788:	00407073          	csrci	0x4,0
    178c:	0000006f          	j	178c <vTaskPlaceOnEventListRestricted+0x8>
    1790:	ff010113          	addi	sp,sp,-16
    1794:	00812423          	sw	s0,8(sp)
    1798:	00004437          	lui	s0,0x4
    179c:	00112623          	sw	ra,12(sp)
    17a0:	00912223          	sw	s1,4(sp)
    17a4:	8b840413          	addi	s0,s0,-1864 # 38b8 <pxCurrentTCB>
    17a8:	00058493          	mv	s1,a1
    17ac:	00042583          	lw	a1,0(s0)
    17b0:	01858593          	addi	a1,a1,24
    17b4:	e55fe0ef          	jal	ra,608 <vListInsertEnd>
    17b8:	00042503          	lw	a0,0(s0)
    17bc:	00450513          	addi	a0,a0,4
    17c0:	ec9fe0ef          	jal	ra,688 <uxListRemove>
    17c4:	000047b7          	lui	a5,0x4
    17c8:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    17cc:	00812403          	lw	s0,8(sp)
    17d0:	00c12083          	lw	ra,12(sp)
    17d4:	00950533          	add	a0,a0,s1
    17d8:	00412483          	lw	s1,4(sp)
    17dc:	01010113          	addi	sp,sp,16
    17e0:	aedff06f          	j	12cc <prvAddCurrentTaskToDelayedList>

000017e4 <xTaskRemoveFromEventList>:
    17e4:	fe010113          	addi	sp,sp,-32
    17e8:	00112e23          	sw	ra,28(sp)
    17ec:	00812c23          	sw	s0,24(sp)
    17f0:	00912a23          	sw	s1,20(sp)
    17f4:	00c52783          	lw	a5,12(a0)
    17f8:	00c7a403          	lw	s0,12(a5)
    17fc:	00041663          	bnez	s0,1808 <xTaskRemoveFromEventList+0x24>
    1800:	00407073          	csrci	0x4,0
    1804:	0000006f          	j	1804 <xTaskRemoveFromEventList+0x20>
    1808:	01840593          	addi	a1,s0,24
    180c:	00058513          	mv	a0,a1
    1810:	00b12623          	sw	a1,12(sp)
    1814:	e75fe0ef          	jal	ra,688 <uxListRemove>
    1818:	000047b7          	lui	a5,0x4
    181c:	8cc7a783          	lw	a5,-1844(a5) # 38cc <uxSchedulerSuspended>
    1820:	00c12583          	lw	a1,12(sp)
    1824:	08079063          	bnez	a5,18a4 <xTaskRemoveFromEventList+0xc0>
    1828:	00440493          	addi	s1,s0,4
    182c:	00048513          	mv	a0,s1
    1830:	e59fe0ef          	jal	ra,688 <uxListRemove>
    1834:	000047b7          	lui	a5,0x4
    1838:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    183c:	02c42503          	lw	a0,44(s0)
    1840:	0007a703          	lw	a4,0(a5)
    1844:	00a77463          	bleu	a0,a4,184c <xTaskRemoveFromEventList+0x68>
    1848:	00a7a023          	sw	a0,0(a5)
    184c:	01400593          	li	a1,20
    1850:	d69fe0ef          	jal	ra,5b8 <__mulsi3>
    1854:	000047b7          	lui	a5,0x4
    1858:	81878793          	addi	a5,a5,-2024 # 3818 <_end>
    185c:	00048593          	mv	a1,s1
    1860:	00a78533          	add	a0,a5,a0
    1864:	da5fe0ef          	jal	ra,608 <vListInsertEnd>
    1868:	000047b7          	lui	a5,0x4
    186c:	8b87a783          	lw	a5,-1864(a5) # 38b8 <pxCurrentTCB>
    1870:	02c42703          	lw	a4,44(s0)
    1874:	00000513          	li	a0,0
    1878:	02c7a783          	lw	a5,44(a5)
    187c:	00e7fa63          	bleu	a4,a5,1890 <xTaskRemoveFromEventList+0xac>
    1880:	000047b7          	lui	a5,0x4
    1884:	00100713          	li	a4,1
    1888:	8ee7a423          	sw	a4,-1816(a5) # 38e8 <xYieldPending>
    188c:	00100513          	li	a0,1
    1890:	01c12083          	lw	ra,28(sp)
    1894:	01812403          	lw	s0,24(sp)
    1898:	01412483          	lw	s1,20(sp)
    189c:	02010113          	addi	sp,sp,32
    18a0:	00008067          	ret
    18a4:	00004537          	lui	a0,0x4
    18a8:	8a450513          	addi	a0,a0,-1884 # 38a4 <xPendingReadyList>
    18ac:	fb9ff06f          	j	1864 <xTaskRemoveFromEventList+0x80>

000018b0 <xTaskRemoveFromUnorderedEventList>:
    18b0:	00004737          	lui	a4,0x4
    18b4:	8cc72703          	lw	a4,-1844(a4) # 38cc <uxSchedulerSuspended>
    18b8:	00071663          	bnez	a4,18c4 <xTaskRemoveFromUnorderedEventList+0x14>
    18bc:	00407073          	csrci	0x4,0
    18c0:	0000006f          	j	18c0 <xTaskRemoveFromUnorderedEventList+0x10>
    18c4:	ff010113          	addi	sp,sp,-16
    18c8:	00112623          	sw	ra,12(sp)
    18cc:	00812423          	sw	s0,8(sp)
    18d0:	00912223          	sw	s1,4(sp)
    18d4:	80000737          	lui	a4,0x80000
    18d8:	00c52403          	lw	s0,12(a0)
    18dc:	00e5e5b3          	or	a1,a1,a4
    18e0:	00b52023          	sw	a1,0(a0)
    18e4:	00041663          	bnez	s0,18f0 <xTaskRemoveFromUnorderedEventList+0x40>
    18e8:	00407073          	csrci	0x4,0
    18ec:	0000006f          	j	18ec <xTaskRemoveFromUnorderedEventList+0x3c>
    18f0:	d99fe0ef          	jal	ra,688 <uxListRemove>
    18f4:	00440493          	addi	s1,s0,4
    18f8:	00048513          	mv	a0,s1
    18fc:	d8dfe0ef          	jal	ra,688 <uxListRemove>
    1900:	000047b7          	lui	a5,0x4
    1904:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    1908:	02c42503          	lw	a0,44(s0)
    190c:	0007a703          	lw	a4,0(a5)
    1910:	00a77463          	bleu	a0,a4,1918 <xTaskRemoveFromUnorderedEventList+0x68>
    1914:	00a7a023          	sw	a0,0(a5)
    1918:	01400593          	li	a1,20
    191c:	c9dfe0ef          	jal	ra,5b8 <__mulsi3>
    1920:	000047b7          	lui	a5,0x4
    1924:	81878793          	addi	a5,a5,-2024 # 3818 <_end>
    1928:	00a78533          	add	a0,a5,a0
    192c:	00048593          	mv	a1,s1
    1930:	cd9fe0ef          	jal	ra,608 <vListInsertEnd>
    1934:	000047b7          	lui	a5,0x4
    1938:	8b87a783          	lw	a5,-1864(a5) # 38b8 <pxCurrentTCB>
    193c:	02c42703          	lw	a4,44(s0)
    1940:	00000513          	li	a0,0
    1944:	02c7a783          	lw	a5,44(a5)
    1948:	00e7fa63          	bleu	a4,a5,195c <xTaskRemoveFromUnorderedEventList+0xac>
    194c:	000047b7          	lui	a5,0x4
    1950:	00100713          	li	a4,1
    1954:	8ee7a423          	sw	a4,-1816(a5) # 38e8 <xYieldPending>
    1958:	00100513          	li	a0,1
    195c:	00c12083          	lw	ra,12(sp)
    1960:	00812403          	lw	s0,8(sp)
    1964:	00412483          	lw	s1,4(sp)
    1968:	01010113          	addi	sp,sp,16
    196c:	00008067          	ret

00001970 <vTaskSetTimeOutState>:
    1970:	00051663          	bnez	a0,197c <vTaskSetTimeOutState+0xc>
    1974:	00407073          	csrci	0x4,0
    1978:	0000006f          	j	1978 <vTaskSetTimeOutState+0x8>
    197c:	000047b7          	lui	a5,0x4
    1980:	8dc7a783          	lw	a5,-1828(a5) # 38dc <xNumOfOverflows>
    1984:	00f52023          	sw	a5,0(a0)
    1988:	000047b7          	lui	a5,0x4
    198c:	8e47a783          	lw	a5,-1820(a5) # 38e4 <xTickCount>
    1990:	00f52223          	sw	a5,4(a0)
    1994:	00008067          	ret

00001998 <vTaskMissedYield>:
    1998:	000047b7          	lui	a5,0x4
    199c:	00100713          	li	a4,1
    19a0:	8ee7a423          	sw	a4,-1816(a5) # 38e8 <xYieldPending>
    19a4:	00008067          	ret

000019a8 <xTaskGetSchedulerState>:
    19a8:	000047b7          	lui	a5,0x4
    19ac:	8e07a783          	lw	a5,-1824(a5) # 38e0 <xSchedulerRunning>
    19b0:	00100513          	li	a0,1
    19b4:	00078a63          	beqz	a5,19c8 <xTaskGetSchedulerState+0x20>
    19b8:	000047b7          	lui	a5,0x4
    19bc:	8cc7a503          	lw	a0,-1844(a5) # 38cc <uxSchedulerSuspended>
    19c0:	00153513          	seqz	a0,a0
    19c4:	00151513          	slli	a0,a0,0x1
    19c8:	00008067          	ret

000019cc <vTaskEnterCritical>:
    19cc:	00407073          	csrci	0x4,0
    19d0:	000047b7          	lui	a5,0x4
    19d4:	8e07a783          	lw	a5,-1824(a5) # 38e0 <xSchedulerRunning>
    19d8:	02078063          	beqz	a5,19f8 <vTaskEnterCritical+0x2c>
    19dc:	000047b7          	lui	a5,0x4
    19e0:	8b878793          	addi	a5,a5,-1864 # 38b8 <pxCurrentTCB>
    19e4:	0007a683          	lw	a3,0(a5)
    19e8:	0007a783          	lw	a5,0(a5)
    19ec:	0446a703          	lw	a4,68(a3)
    19f0:	00170713          	addi	a4,a4,1 # 80000001 <_fstack+0x7fff7005>
    19f4:	04e6a223          	sw	a4,68(a3)
    19f8:	00008067          	ret

000019fc <vTaskExitCritical>:
    19fc:	000047b7          	lui	a5,0x4
    1a00:	8e07a783          	lw	a5,-1824(a5) # 38e0 <xSchedulerRunning>
    1a04:	04078463          	beqz	a5,1a4c <vTaskExitCritical+0x50>
    1a08:	000047b7          	lui	a5,0x4
    1a0c:	8b878793          	addi	a5,a5,-1864 # 38b8 <pxCurrentTCB>
    1a10:	0007a703          	lw	a4,0(a5)
    1a14:	04472703          	lw	a4,68(a4)
    1a18:	02070a63          	beqz	a4,1a4c <vTaskExitCritical+0x50>
    1a1c:	0007a683          	lw	a3,0(a5)
    1a20:	0007a783          	lw	a5,0(a5)
    1a24:	0446a703          	lw	a4,68(a3)
    1a28:	fff70713          	addi	a4,a4,-1
    1a2c:	04e6a223          	sw	a4,68(a3)
    1a30:	0447a783          	lw	a5,68(a5)
    1a34:	00079c63          	bnez	a5,1a4c <vTaskExitCritical+0x50>
    1a38:	fe512e23          	sw	t0,-4(sp)
    1a3c:	004012f3          	csrrw	t0,0x4,zero
    1a40:	0012e293          	ori	t0,t0,1
    1a44:	00429073          	csrw	0x4,t0
    1a48:	ffc12283          	lw	t0,-4(sp)
    1a4c:	00008067          	ret

00001a50 <xTaskGenericCreate.part.4>:
    1a50:	fc010113          	addi	sp,sp,-64
    1a54:	02912a23          	sw	s1,52(sp)
    1a58:	03212823          	sw	s2,48(sp)
    1a5c:	03312623          	sw	s3,44(sp)
    1a60:	03412423          	sw	s4,40(sp)
    1a64:	03512223          	sw	s5,36(sp)
    1a68:	03612023          	sw	s6,32(sp)
    1a6c:	02112e23          	sw	ra,60(sp)
    1a70:	02812c23          	sw	s0,56(sp)
    1a74:	01712e23          	sw	s7,28(sp)
    1a78:	00050a93          	mv	s5,a0
    1a7c:	00058913          	mv	s2,a1
    1a80:	00060493          	mv	s1,a2
    1a84:	00068b13          	mv	s6,a3
    1a88:	00070993          	mv	s3,a4
    1a8c:	00078a13          	mv	s4,a5
    1a90:	00081c63          	bnez	a6,1aa8 <xTaskGenericCreate.part.4+0x58>
    1a94:	00261513          	slli	a0,a2,0x2
    1a98:	670010ef          	jal	ra,3108 <pvPortMalloc>
    1a9c:	00050813          	mv	a6,a0
    1aa0:	fff00513          	li	a0,-1
    1aa4:	1e080463          	beqz	a6,1c8c <xTaskGenericCreate.part.4+0x23c>
    1aa8:	05000513          	li	a0,80
    1aac:	01012623          	sw	a6,12(sp)
    1ab0:	658010ef          	jal	ra,3108 <pvPortMalloc>
    1ab4:	00050413          	mv	s0,a0
    1ab8:	00c12803          	lw	a6,12(sp)
    1abc:	1c050263          	beqz	a0,1c80 <xTaskGenericCreate.part.4+0x230>
    1ac0:	00249493          	slli	s1,s1,0x2
    1ac4:	ffc48493          	addi	s1,s1,-4
    1ac8:	03052823          	sw	a6,48(a0)
    1acc:	00980833          	add	a6,a6,s1
    1ad0:	ffc87493          	andi	s1,a6,-4
    1ad4:	00090593          	mv	a1,s2
    1ad8:	03450793          	addi	a5,a0,52
    1adc:	01090713          	addi	a4,s2,16
    1ae0:	0005c683          	lbu	a3,0(a1)
    1ae4:	00d78023          	sb	a3,0(a5)
    1ae8:	0005c683          	lbu	a3,0(a1)
    1aec:	00068863          	beqz	a3,1afc <xTaskGenericCreate.part.4+0xac>
    1af0:	00158593          	addi	a1,a1,1
    1af4:	00178793          	addi	a5,a5,1
    1af8:	feb714e3          	bne	a4,a1,1ae0 <xTaskGenericCreate.part.4+0x90>
    1afc:	040401a3          	sb	zero,67(s0)
    1b00:	00400793          	li	a5,4
    1b04:	00098913          	mv	s2,s3
    1b08:	0137f463          	bleu	s3,a5,1b10 <xTaskGenericCreate.part.4+0xc0>
    1b0c:	00400913          	li	s2,4
    1b10:	00440b93          	addi	s7,s0,4
    1b14:	000b8513          	mv	a0,s7
    1b18:	03242623          	sw	s2,44(s0)
    1b1c:	ae5fe0ef          	jal	ra,600 <vListInitialiseItem>
    1b20:	01840513          	addi	a0,s0,24
    1b24:	addfe0ef          	jal	ra,600 <vListInitialiseItem>
    1b28:	00500793          	li	a5,5
    1b2c:	412787b3          	sub	a5,a5,s2
    1b30:	04042423          	sw	zero,72(s0)
    1b34:	00842823          	sw	s0,16(s0)
    1b38:	00f42c23          	sw	a5,24(s0)
    1b3c:	02842223          	sw	s0,36(s0)
    1b40:	04042223          	sw	zero,68(s0)
    1b44:	04042623          	sw	zero,76(s0)
    1b48:	000b0613          	mv	a2,s6
    1b4c:	000a8593          	mv	a1,s5
    1b50:	00048513          	mv	a0,s1
    1b54:	a05fe0ef          	jal	ra,558 <pxPortInitialiseStack>
    1b58:	00a42023          	sw	a0,0(s0)
    1b5c:	000a0463          	beqz	s4,1b64 <xTaskGenericCreate.part.4+0x114>
    1b60:	008a2023          	sw	s0,0(s4)
    1b64:	e69ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    1b68:	000047b7          	lui	a5,0x4
    1b6c:	8c478793          	addi	a5,a5,-1852 # 38c4 <uxCurrentNumberOfTasks>
    1b70:	0007a703          	lw	a4,0(a5)
    1b74:	000044b7          	lui	s1,0x4
    1b78:	00004537          	lui	a0,0x4
    1b7c:	00170713          	addi	a4,a4,1
    1b80:	00e7a023          	sw	a4,0(a5)
    1b84:	8b848713          	addi	a4,s1,-1864 # 38b8 <pxCurrentTCB>
    1b88:	00072703          	lw	a4,0(a4)
    1b8c:	00004a37          	lui	s4,0x4
    1b90:	8b848493          	addi	s1,s1,-1864
    1b94:	81850913          	addi	s2,a0,-2024 # 3818 <_end>
    1b98:	8e0a0a13          	addi	s4,s4,-1824 # 38e0 <xSchedulerRunning>
    1b9c:	10071e63          	bnez	a4,1cb8 <xTaskGenericCreate.part.4+0x268>
    1ba0:	0084a023          	sw	s0,0(s1)
    1ba4:	0007a703          	lw	a4,0(a5)
    1ba8:	00100793          	li	a5,1
    1bac:	06f71463          	bne	a4,a5,1c14 <xTaskGenericCreate.part.4+0x1c4>
    1bb0:	81850513          	addi	a0,a0,-2024
    1bb4:	a2dfe0ef          	jal	ra,5e0 <vListInitialise>
    1bb8:	01490513          	addi	a0,s2,20
    1bbc:	a25fe0ef          	jal	ra,5e0 <vListInitialise>
    1bc0:	02890513          	addi	a0,s2,40
    1bc4:	a1dfe0ef          	jal	ra,5e0 <vListInitialise>
    1bc8:	03c90513          	addi	a0,s2,60
    1bcc:	a15fe0ef          	jal	ra,5e0 <vListInitialise>
    1bd0:	05090513          	addi	a0,s2,80
    1bd4:	a0dfe0ef          	jal	ra,5e0 <vListInitialise>
    1bd8:	00004537          	lui	a0,0x4
    1bdc:	87c50b13          	addi	s6,a0,-1924 # 387c <xDelayedTaskList1>
    1be0:	87c50513          	addi	a0,a0,-1924
    1be4:	9fdfe0ef          	jal	ra,5e0 <vListInitialise>
    1be8:	00004537          	lui	a0,0x4
    1bec:	89050a93          	addi	s5,a0,-1904 # 3890 <xDelayedTaskList2>
    1bf0:	89050513          	addi	a0,a0,-1904
    1bf4:	9edfe0ef          	jal	ra,5e0 <vListInitialise>
    1bf8:	00004537          	lui	a0,0x4
    1bfc:	8a450513          	addi	a0,a0,-1884 # 38a4 <xPendingReadyList>
    1c00:	9e1fe0ef          	jal	ra,5e0 <vListInitialise>
    1c04:	000047b7          	lui	a5,0x4
    1c08:	8b67ae23          	sw	s6,-1860(a5) # 38bc <pxDelayedTaskList>
    1c0c:	000047b7          	lui	a5,0x4
    1c10:	8d57a023          	sw	s5,-1856(a5) # 38c0 <pxOverflowDelayedTaskList>
    1c14:	000047b7          	lui	a5,0x4
    1c18:	8d078793          	addi	a5,a5,-1840 # 38d0 <uxTaskNumber>
    1c1c:	0007a703          	lw	a4,0(a5)
    1c20:	02c42503          	lw	a0,44(s0)
    1c24:	00170713          	addi	a4,a4,1
    1c28:	00e7a023          	sw	a4,0(a5)
    1c2c:	000047b7          	lui	a5,0x4
    1c30:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    1c34:	0007a703          	lw	a4,0(a5)
    1c38:	00a77463          	bleu	a0,a4,1c40 <xTaskGenericCreate.part.4+0x1f0>
    1c3c:	00a7a023          	sw	a0,0(a5)
    1c40:	01400593          	li	a1,20
    1c44:	975fe0ef          	jal	ra,5b8 <__mulsi3>
    1c48:	00a90533          	add	a0,s2,a0
    1c4c:	000b8593          	mv	a1,s7
    1c50:	9b9fe0ef          	jal	ra,608 <vListInsertEnd>
    1c54:	da9ff0ef          	jal	ra,19fc <vTaskExitCritical>
    1c58:	000a2783          	lw	a5,0(s4)
    1c5c:	00100513          	li	a0,1
    1c60:	02078663          	beqz	a5,1c8c <xTaskGenericCreate.part.4+0x23c>
    1c64:	0004a783          	lw	a5,0(s1)
    1c68:	02c7a783          	lw	a5,44(a5)
    1c6c:	0337f063          	bleu	s3,a5,1c8c <xTaskGenericCreate.part.4+0x23c>
    1c70:	00a12623          	sw	a0,12(sp)
    1c74:	e64fe0ef          	jal	ra,2d8 <vPortYield>
    1c78:	00c12503          	lw	a0,12(sp)
    1c7c:	0100006f          	j	1c8c <xTaskGenericCreate.part.4+0x23c>
    1c80:	00080513          	mv	a0,a6
    1c84:	5dc010ef          	jal	ra,3260 <vPortFree>
    1c88:	fff00513          	li	a0,-1
    1c8c:	03c12083          	lw	ra,60(sp)
    1c90:	03812403          	lw	s0,56(sp)
    1c94:	03412483          	lw	s1,52(sp)
    1c98:	03012903          	lw	s2,48(sp)
    1c9c:	02c12983          	lw	s3,44(sp)
    1ca0:	02812a03          	lw	s4,40(sp)
    1ca4:	02412a83          	lw	s5,36(sp)
    1ca8:	02012b03          	lw	s6,32(sp)
    1cac:	01c12b83          	lw	s7,28(sp)
    1cb0:	04010113          	addi	sp,sp,64
    1cb4:	00008067          	ret
    1cb8:	000a2783          	lw	a5,0(s4)
    1cbc:	f4079ce3          	bnez	a5,1c14 <xTaskGenericCreate.part.4+0x1c4>
    1cc0:	0004a783          	lw	a5,0(s1)
    1cc4:	02c7a783          	lw	a5,44(a5)
    1cc8:	f4f9e6e3          	bltu	s3,a5,1c14 <xTaskGenericCreate.part.4+0x1c4>
    1ccc:	0084a023          	sw	s0,0(s1)
    1cd0:	f45ff06f          	j	1c14 <xTaskGenericCreate.part.4+0x1c4>

00001cd4 <xTaskGenericCreate>:
    1cd4:	00051663          	bnez	a0,1ce0 <xTaskGenericCreate+0xc>
    1cd8:	00407073          	csrci	0x4,0
    1cdc:	0000006f          	j	1cdc <xTaskGenericCreate+0x8>
    1ce0:	00400893          	li	a7,4
    1ce4:	00e8f663          	bleu	a4,a7,1cf0 <xTaskGenericCreate+0x1c>
    1ce8:	00407073          	csrci	0x4,0
    1cec:	0000006f          	j	1cec <xTaskGenericCreate+0x18>
    1cf0:	d61ff06f          	j	1a50 <xTaskGenericCreate.part.4>

00001cf4 <vTaskStartScheduler>:
    1cf4:	000035b7          	lui	a1,0x3
    1cf8:	00001537          	lui	a0,0x1
    1cfc:	ff010113          	addi	sp,sp,-16
    1d00:	00000813          	li	a6,0
    1d04:	00000793          	li	a5,0
    1d08:	00000713          	li	a4,0
    1d0c:	00000693          	li	a3,0
    1d10:	40000613          	li	a2,1024
    1d14:	55058593          	addi	a1,a1,1360 # 3550 <vApplicationStackOverflowHook+0x8>
    1d18:	2a450513          	addi	a0,a0,676 # 12a4 <prvIdleTask>
    1d1c:	00812423          	sw	s0,8(sp)
    1d20:	00112623          	sw	ra,12(sp)
    1d24:	00100413          	li	s0,1
    1d28:	d29ff0ef          	jal	ra,1a50 <xTaskGenericCreate.part.4>
    1d2c:	02851e63          	bne	a0,s0,1d68 <vTaskStartScheduler+0x74>
    1d30:	199000ef          	jal	ra,26c8 <xTimerCreateTimerTask>
    1d34:	02851a63          	bne	a0,s0,1d68 <vTaskStartScheduler+0x74>
    1d38:	00407073          	csrci	0x4,0
    1d3c:	000047b7          	lui	a5,0x4
    1d40:	fff00713          	li	a4,-1
    1d44:	8ce7ac23          	sw	a4,-1832(a5) # 38d8 <xNextTaskUnblockTime>
    1d48:	00812403          	lw	s0,8(sp)
    1d4c:	000047b7          	lui	a5,0x4
    1d50:	8ea7a023          	sw	a0,-1824(a5) # 38e0 <xSchedulerRunning>
    1d54:	00c12083          	lw	ra,12(sp)
    1d58:	000047b7          	lui	a5,0x4
    1d5c:	8e07a223          	sw	zero,-1820(a5) # 38e4 <xTickCount>
    1d60:	01010113          	addi	sp,sp,16
    1d64:	cdcfe06f          	j	240 <xPortStartScheduler>
    1d68:	00051663          	bnez	a0,1d74 <vTaskStartScheduler+0x80>
    1d6c:	00407073          	csrci	0x4,0
    1d70:	0000006f          	j	1d70 <vTaskStartScheduler+0x7c>
    1d74:	00c12083          	lw	ra,12(sp)
    1d78:	00812403          	lw	s0,8(sp)
    1d7c:	01010113          	addi	sp,sp,16
    1d80:	00008067          	ret

00001d84 <xTaskResumeAll>:
    1d84:	fd010113          	addi	sp,sp,-48
    1d88:	02812423          	sw	s0,40(sp)
    1d8c:	00004437          	lui	s0,0x4
    1d90:	02112623          	sw	ra,44(sp)
    1d94:	02912223          	sw	s1,36(sp)
    1d98:	03212023          	sw	s2,32(sp)
    1d9c:	01312e23          	sw	s3,28(sp)
    1da0:	01412c23          	sw	s4,24(sp)
    1da4:	01512a23          	sw	s5,20(sp)
    1da8:	8cc40413          	addi	s0,s0,-1844 # 38cc <uxSchedulerSuspended>
    1dac:	00042783          	lw	a5,0(s0)
    1db0:	00079663          	bnez	a5,1dbc <xTaskResumeAll+0x38>
    1db4:	00407073          	csrci	0x4,0
    1db8:	0000006f          	j	1db8 <xTaskResumeAll+0x34>
    1dbc:	c11ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    1dc0:	00042783          	lw	a5,0(s0)
    1dc4:	fff78793          	addi	a5,a5,-1
    1dc8:	00f42023          	sw	a5,0(s0)
    1dcc:	00042783          	lw	a5,0(s0)
    1dd0:	02078c63          	beqz	a5,1e08 <xTaskResumeAll+0x84>
    1dd4:	00000513          	li	a0,0
    1dd8:	00a12623          	sw	a0,12(sp)
    1ddc:	c21ff0ef          	jal	ra,19fc <vTaskExitCritical>
    1de0:	02c12083          	lw	ra,44(sp)
    1de4:	02812403          	lw	s0,40(sp)
    1de8:	00c12503          	lw	a0,12(sp)
    1dec:	02412483          	lw	s1,36(sp)
    1df0:	02012903          	lw	s2,32(sp)
    1df4:	01c12983          	lw	s3,28(sp)
    1df8:	01812a03          	lw	s4,24(sp)
    1dfc:	01412a83          	lw	s5,20(sp)
    1e00:	03010113          	addi	sp,sp,48
    1e04:	00008067          	ret
    1e08:	000047b7          	lui	a5,0x4
    1e0c:	8c47a783          	lw	a5,-1852(a5) # 38c4 <uxCurrentNumberOfTasks>
    1e10:	fc0782e3          	beqz	a5,1dd4 <xTaskResumeAll+0x50>
    1e14:	00004437          	lui	s0,0x4
    1e18:	00004937          	lui	s2,0x4
    1e1c:	8a440413          	addi	s0,s0,-1884 # 38a4 <xPendingReadyList>
    1e20:	00004a37          	lui	s4,0x4
    1e24:	81890913          	addi	s2,s2,-2024 # 3818 <_end>
    1e28:	00004ab7          	lui	s5,0x4
    1e2c:	00042783          	lw	a5,0(s0)
    1e30:	04079263          	bnez	a5,1e74 <xTaskResumeAll+0xf0>
    1e34:	00004437          	lui	s0,0x4
    1e38:	8c840793          	addi	a5,s0,-1848 # 38c8 <uxPendedTicks>
    1e3c:	0007a783          	lw	a5,0(a5)
    1e40:	8c840413          	addi	s0,s0,-1848
    1e44:	00078a63          	beqz	a5,1e58 <xTaskResumeAll+0xd4>
    1e48:	000044b7          	lui	s1,0x4
    1e4c:	00100913          	li	s2,1
    1e50:	00042783          	lw	a5,0(s0)
    1e54:	08079463          	bnez	a5,1edc <xTaskResumeAll+0x158>
    1e58:	000047b7          	lui	a5,0x4
    1e5c:	8e87a703          	lw	a4,-1816(a5) # 38e8 <xYieldPending>
    1e60:	00100793          	li	a5,1
    1e64:	f6f718e3          	bne	a4,a5,1dd4 <xTaskResumeAll+0x50>
    1e68:	c70fe0ef          	jal	ra,2d8 <vPortYield>
    1e6c:	00100513          	li	a0,1
    1e70:	f69ff06f          	j	1dd8 <xTaskResumeAll+0x54>
    1e74:	00c42783          	lw	a5,12(s0)
    1e78:	00c7a483          	lw	s1,12(a5)
    1e7c:	01848513          	addi	a0,s1,24 # 4018 <ucHeap+0x6f4>
    1e80:	809fe0ef          	jal	ra,688 <uxListRemove>
    1e84:	00448993          	addi	s3,s1,4
    1e88:	00098513          	mv	a0,s3
    1e8c:	ffcfe0ef          	jal	ra,688 <uxListRemove>
    1e90:	8d4a0793          	addi	a5,s4,-1836 # 38d4 <uxTopReadyPriority>
    1e94:	02c4a503          	lw	a0,44(s1)
    1e98:	0007a703          	lw	a4,0(a5)
    1e9c:	00a77463          	bleu	a0,a4,1ea4 <xTaskResumeAll+0x120>
    1ea0:	00a7a023          	sw	a0,0(a5)
    1ea4:	01400593          	li	a1,20
    1ea8:	f10fe0ef          	jal	ra,5b8 <__mulsi3>
    1eac:	00098593          	mv	a1,s3
    1eb0:	00a90533          	add	a0,s2,a0
    1eb4:	f54fe0ef          	jal	ra,608 <vListInsertEnd>
    1eb8:	8b8a8793          	addi	a5,s5,-1864 # 38b8 <pxCurrentTCB>
    1ebc:	0007a783          	lw	a5,0(a5)
    1ec0:	02c4a703          	lw	a4,44(s1)
    1ec4:	02c7a783          	lw	a5,44(a5)
    1ec8:	f6f762e3          	bltu	a4,a5,1e2c <xTaskResumeAll+0xa8>
    1ecc:	000047b7          	lui	a5,0x4
    1ed0:	00100713          	li	a4,1
    1ed4:	8ee7a423          	sw	a4,-1816(a5) # 38e8 <xYieldPending>
    1ed8:	f55ff06f          	j	1e2c <xTaskResumeAll+0xa8>
    1edc:	cccff0ef          	jal	ra,13a8 <xTaskIncrementTick>
    1ee0:	00050663          	beqz	a0,1eec <xTaskResumeAll+0x168>
    1ee4:	8e848793          	addi	a5,s1,-1816
    1ee8:	0127a023          	sw	s2,0(a5)
    1eec:	00042783          	lw	a5,0(s0)
    1ef0:	fff78793          	addi	a5,a5,-1
    1ef4:	00f42023          	sw	a5,0(s0)
    1ef8:	f59ff06f          	j	1e50 <xTaskResumeAll+0xcc>

00001efc <xTaskGetTickCount>:
    1efc:	fe010113          	addi	sp,sp,-32
    1f00:	00112e23          	sw	ra,28(sp)
    1f04:	ac9ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    1f08:	000047b7          	lui	a5,0x4
    1f0c:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    1f10:	00a12623          	sw	a0,12(sp)
    1f14:	ae9ff0ef          	jal	ra,19fc <vTaskExitCritical>
    1f18:	01c12083          	lw	ra,28(sp)
    1f1c:	00c12503          	lw	a0,12(sp)
    1f20:	02010113          	addi	sp,sp,32
    1f24:	00008067          	ret

00001f28 <xTaskCheckForTimeOut>:
    1f28:	00051663          	bnez	a0,1f34 <xTaskCheckForTimeOut+0xc>
    1f2c:	00407073          	csrci	0x4,0
    1f30:	0000006f          	j	1f30 <xTaskCheckForTimeOut+0x8>
    1f34:	00059663          	bnez	a1,1f40 <xTaskCheckForTimeOut+0x18>
    1f38:	00407073          	csrci	0x4,0
    1f3c:	0000006f          	j	1f3c <xTaskCheckForTimeOut+0x14>
    1f40:	fe010113          	addi	sp,sp,-32
    1f44:	00812c23          	sw	s0,24(sp)
    1f48:	00912a23          	sw	s1,20(sp)
    1f4c:	00050413          	mv	s0,a0
    1f50:	00112e23          	sw	ra,28(sp)
    1f54:	00058493          	mv	s1,a1
    1f58:	a75ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    1f5c:	000047b7          	lui	a5,0x4
    1f60:	8e47a683          	lw	a3,-1820(a5) # 38e4 <xTickCount>
    1f64:	000047b7          	lui	a5,0x4
    1f68:	8dc7a783          	lw	a5,-1828(a5) # 38dc <xNumOfOverflows>
    1f6c:	00042603          	lw	a2,0(s0)
    1f70:	00442703          	lw	a4,4(s0)
    1f74:	00f60663          	beq	a2,a5,1f80 <xTaskCheckForTimeOut+0x58>
    1f78:	00100513          	li	a0,1
    1f7c:	02e6f663          	bleu	a4,a3,1fa8 <xTaskCheckForTimeOut+0x80>
    1f80:	0004a783          	lw	a5,0(s1)
    1f84:	40e68633          	sub	a2,a3,a4
    1f88:	00100513          	li	a0,1
    1f8c:	00f67e63          	bleu	a5,a2,1fa8 <xTaskCheckForTimeOut+0x80>
    1f90:	40d787b3          	sub	a5,a5,a3
    1f94:	00e787b3          	add	a5,a5,a4
    1f98:	00040513          	mv	a0,s0
    1f9c:	00f4a023          	sw	a5,0(s1)
    1fa0:	9d1ff0ef          	jal	ra,1970 <vTaskSetTimeOutState>
    1fa4:	00000513          	li	a0,0
    1fa8:	00a12623          	sw	a0,12(sp)
    1fac:	a51ff0ef          	jal	ra,19fc <vTaskExitCritical>
    1fb0:	01c12083          	lw	ra,28(sp)
    1fb4:	01812403          	lw	s0,24(sp)
    1fb8:	00c12503          	lw	a0,12(sp)
    1fbc:	01412483          	lw	s1,20(sp)
    1fc0:	02010113          	addi	sp,sp,32
    1fc4:	00008067          	ret

00001fc8 <uxTaskResetEventItemValue>:
    1fc8:	000047b7          	lui	a5,0x4
    1fcc:	8b878793          	addi	a5,a5,-1864 # 38b8 <pxCurrentTCB>
    1fd0:	0007a703          	lw	a4,0(a5)
    1fd4:	0007a683          	lw	a3,0(a5)
    1fd8:	01872503          	lw	a0,24(a4)
    1fdc:	02c6a683          	lw	a3,44(a3)
    1fe0:	0007a703          	lw	a4,0(a5)
    1fe4:	00500793          	li	a5,5
    1fe8:	40d787b3          	sub	a5,a5,a3
    1fec:	00f72c23          	sw	a5,24(a4)
    1ff0:	00008067          	ret

00001ff4 <ulTaskNotifyTake>:
    1ff4:	fe010113          	addi	sp,sp,-32
    1ff8:	00812c23          	sw	s0,24(sp)
    1ffc:	00912a23          	sw	s1,20(sp)
    2000:	01212823          	sw	s2,16(sp)
    2004:	00004437          	lui	s0,0x4
    2008:	00112e23          	sw	ra,28(sp)
    200c:	00050913          	mv	s2,a0
    2010:	00058493          	mv	s1,a1
    2014:	9b9ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    2018:	8b840793          	addi	a5,s0,-1864 # 38b8 <pxCurrentTCB>
    201c:	0007a783          	lw	a5,0(a5)
    2020:	8b840413          	addi	s0,s0,-1864
    2024:	0487a783          	lw	a5,72(a5)
    2028:	02079a63          	bnez	a5,205c <ulTaskNotifyTake+0x68>
    202c:	00042783          	lw	a5,0(s0)
    2030:	00100713          	li	a4,1
    2034:	04e7a623          	sw	a4,76(a5)
    2038:	02048263          	beqz	s1,205c <ulTaskNotifyTake+0x68>
    203c:	00042503          	lw	a0,0(s0)
    2040:	00450513          	addi	a0,a0,4
    2044:	e44fe0ef          	jal	ra,688 <uxListRemove>
    2048:	000047b7          	lui	a5,0x4
    204c:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    2050:	00950533          	add	a0,a0,s1
    2054:	a78ff0ef          	jal	ra,12cc <prvAddCurrentTaskToDelayedList>
    2058:	a80fe0ef          	jal	ra,2d8 <vPortYield>
    205c:	9a1ff0ef          	jal	ra,19fc <vTaskExitCritical>
    2060:	96dff0ef          	jal	ra,19cc <vTaskEnterCritical>
    2064:	00042783          	lw	a5,0(s0)
    2068:	0487a503          	lw	a0,72(a5)
    206c:	00050863          	beqz	a0,207c <ulTaskNotifyTake+0x88>
    2070:	02090c63          	beqz	s2,20a8 <ulTaskNotifyTake+0xb4>
    2074:	00042783          	lw	a5,0(s0)
    2078:	0407a423          	sw	zero,72(a5)
    207c:	00042783          	lw	a5,0(s0)
    2080:	00a12623          	sw	a0,12(sp)
    2084:	0407a623          	sw	zero,76(a5)
    2088:	975ff0ef          	jal	ra,19fc <vTaskExitCritical>
    208c:	01c12083          	lw	ra,28(sp)
    2090:	01812403          	lw	s0,24(sp)
    2094:	00c12503          	lw	a0,12(sp)
    2098:	01412483          	lw	s1,20(sp)
    209c:	01012903          	lw	s2,16(sp)
    20a0:	02010113          	addi	sp,sp,32
    20a4:	00008067          	ret
    20a8:	00042703          	lw	a4,0(s0)
    20ac:	04872783          	lw	a5,72(a4)
    20b0:	fff78793          	addi	a5,a5,-1
    20b4:	04f72423          	sw	a5,72(a4)
    20b8:	fc5ff06f          	j	207c <ulTaskNotifyTake+0x88>

000020bc <xTaskNotifyWait>:
    20bc:	fd010113          	addi	sp,sp,-48
    20c0:	02812423          	sw	s0,40(sp)
    20c4:	02912223          	sw	s1,36(sp)
    20c8:	03212023          	sw	s2,32(sp)
    20cc:	01312e23          	sw	s3,28(sp)
    20d0:	00004437          	lui	s0,0x4
    20d4:	02112623          	sw	ra,44(sp)
    20d8:	00a12623          	sw	a0,12(sp)
    20dc:	00058493          	mv	s1,a1
    20e0:	00060913          	mv	s2,a2
    20e4:	00068993          	mv	s3,a3
    20e8:	8e5ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    20ec:	8b840793          	addi	a5,s0,-1864 # 38b8 <pxCurrentTCB>
    20f0:	0007a783          	lw	a5,0(a5)
    20f4:	8b840413          	addi	s0,s0,-1864
    20f8:	04c7a703          	lw	a4,76(a5)
    20fc:	00200793          	li	a5,2
    2100:	04f70663          	beq	a4,a5,214c <xTaskNotifyWait+0x90>
    2104:	00042783          	lw	a5,0(s0)
    2108:	00c12503          	lw	a0,12(sp)
    210c:	0487a703          	lw	a4,72(a5)
    2110:	fff54513          	not	a0,a0
    2114:	00e57533          	and	a0,a0,a4
    2118:	04a7a423          	sw	a0,72(a5)
    211c:	00042783          	lw	a5,0(s0)
    2120:	00100713          	li	a4,1
    2124:	04e7a623          	sw	a4,76(a5)
    2128:	02098263          	beqz	s3,214c <xTaskNotifyWait+0x90>
    212c:	00042503          	lw	a0,0(s0)
    2130:	00450513          	addi	a0,a0,4
    2134:	d54fe0ef          	jal	ra,688 <uxListRemove>
    2138:	000047b7          	lui	a5,0x4
    213c:	8e47a503          	lw	a0,-1820(a5) # 38e4 <xTickCount>
    2140:	01350533          	add	a0,a0,s3
    2144:	988ff0ef          	jal	ra,12cc <prvAddCurrentTaskToDelayedList>
    2148:	990fe0ef          	jal	ra,2d8 <vPortYield>
    214c:	8b1ff0ef          	jal	ra,19fc <vTaskExitCritical>
    2150:	87dff0ef          	jal	ra,19cc <vTaskEnterCritical>
    2154:	00090863          	beqz	s2,2164 <xTaskNotifyWait+0xa8>
    2158:	00042783          	lw	a5,0(s0)
    215c:	0487a783          	lw	a5,72(a5)
    2160:	00f92023          	sw	a5,0(s2)
    2164:	00042783          	lw	a5,0(s0)
    2168:	00000513          	li	a0,0
    216c:	04c7a703          	lw	a4,76(a5)
    2170:	00100793          	li	a5,1
    2174:	00f70e63          	beq	a4,a5,2190 <xTaskNotifyWait+0xd4>
    2178:	00042783          	lw	a5,0(s0)
    217c:	fff4c493          	not	s1,s1
    2180:	00100513          	li	a0,1
    2184:	0487a703          	lw	a4,72(a5)
    2188:	00e4f4b3          	and	s1,s1,a4
    218c:	0497a423          	sw	s1,72(a5)
    2190:	00042783          	lw	a5,0(s0)
    2194:	00a12623          	sw	a0,12(sp)
    2198:	0407a623          	sw	zero,76(a5)
    219c:	861ff0ef          	jal	ra,19fc <vTaskExitCritical>
    21a0:	02c12083          	lw	ra,44(sp)
    21a4:	02812403          	lw	s0,40(sp)
    21a8:	00c12503          	lw	a0,12(sp)
    21ac:	02412483          	lw	s1,36(sp)
    21b0:	02012903          	lw	s2,32(sp)
    21b4:	01c12983          	lw	s3,28(sp)
    21b8:	03010113          	addi	sp,sp,48
    21bc:	00008067          	ret

000021c0 <xTaskGenericNotify>:
    21c0:	00051663          	bnez	a0,21cc <xTaskGenericNotify+0xc>
    21c4:	00407073          	csrci	0x4,0
    21c8:	0000006f          	j	21c8 <xTaskGenericNotify+0x8>
    21cc:	fd010113          	addi	sp,sp,-48
    21d0:	01312e23          	sw	s3,28(sp)
    21d4:	00068993          	mv	s3,a3
    21d8:	02812423          	sw	s0,40(sp)
    21dc:	02912223          	sw	s1,36(sp)
    21e0:	03212023          	sw	s2,32(sp)
    21e4:	02112623          	sw	ra,44(sp)
    21e8:	00060493          	mv	s1,a2
    21ec:	00058913          	mv	s2,a1
    21f0:	00050413          	mv	s0,a0
    21f4:	fd8ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    21f8:	00098663          	beqz	s3,2204 <xTaskGenericNotify+0x44>
    21fc:	04842783          	lw	a5,72(s0)
    2200:	00f9a023          	sw	a5,0(s3)
    2204:	04c42703          	lw	a4,76(s0)
    2208:	00200793          	li	a5,2
    220c:	04f42623          	sw	a5,76(s0)
    2210:	06f48863          	beq	s1,a5,2280 <xTaskGenericNotify+0xc0>
    2214:	0497e063          	bltu	a5,s1,2254 <xTaskGenericNotify+0x94>
    2218:	00100793          	li	a5,1
    221c:	04f48a63          	beq	s1,a5,2270 <xTaskGenericNotify+0xb0>
    2220:	00100793          	li	a5,1
    2224:	06f70663          	beq	a4,a5,2290 <xTaskGenericNotify+0xd0>
    2228:	00100513          	li	a0,1
    222c:	00a12623          	sw	a0,12(sp)
    2230:	fccff0ef          	jal	ra,19fc <vTaskExitCritical>
    2234:	02c12083          	lw	ra,44(sp)
    2238:	02812403          	lw	s0,40(sp)
    223c:	00c12503          	lw	a0,12(sp)
    2240:	02412483          	lw	s1,36(sp)
    2244:	02012903          	lw	s2,32(sp)
    2248:	01c12983          	lw	s3,28(sp)
    224c:	03010113          	addi	sp,sp,48
    2250:	00008067          	ret
    2254:	00300693          	li	a3,3
    2258:	02d48063          	beq	s1,a3,2278 <xTaskGenericNotify+0xb8>
    225c:	00400693          	li	a3,4
    2260:	fcd490e3          	bne	s1,a3,2220 <xTaskGenericNotify+0x60>
    2264:	00f71a63          	bne	a4,a5,2278 <xTaskGenericNotify+0xb8>
    2268:	00000513          	li	a0,0
    226c:	fc1ff06f          	j	222c <xTaskGenericNotify+0x6c>
    2270:	04842583          	lw	a1,72(s0)
    2274:	0125e933          	or	s2,a1,s2
    2278:	05242423          	sw	s2,72(s0)
    227c:	fa5ff06f          	j	2220 <xTaskGenericNotify+0x60>
    2280:	04842783          	lw	a5,72(s0)
    2284:	00178793          	addi	a5,a5,1
    2288:	04f42423          	sw	a5,72(s0)
    228c:	f95ff06f          	j	2220 <xTaskGenericNotify+0x60>
    2290:	00440493          	addi	s1,s0,4
    2294:	00048513          	mv	a0,s1
    2298:	bf0fe0ef          	jal	ra,688 <uxListRemove>
    229c:	000047b7          	lui	a5,0x4
    22a0:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    22a4:	02c42503          	lw	a0,44(s0)
    22a8:	0007a703          	lw	a4,0(a5)
    22ac:	00a77463          	bleu	a0,a4,22b4 <xTaskGenericNotify+0xf4>
    22b0:	00a7a023          	sw	a0,0(a5)
    22b4:	01400593          	li	a1,20
    22b8:	b00fe0ef          	jal	ra,5b8 <__mulsi3>
    22bc:	000047b7          	lui	a5,0x4
    22c0:	81878793          	addi	a5,a5,-2024 # 3818 <_end>
    22c4:	00a78533          	add	a0,a5,a0
    22c8:	00048593          	mv	a1,s1
    22cc:	b3cfe0ef          	jal	ra,608 <vListInsertEnd>
    22d0:	02842783          	lw	a5,40(s0)
    22d4:	00078663          	beqz	a5,22e0 <xTaskGenericNotify+0x120>
    22d8:	00407073          	csrci	0x4,0
    22dc:	0000006f          	j	22dc <xTaskGenericNotify+0x11c>
    22e0:	000047b7          	lui	a5,0x4
    22e4:	8b87a783          	lw	a5,-1864(a5) # 38b8 <pxCurrentTCB>
    22e8:	02c42703          	lw	a4,44(s0)
    22ec:	02c7a783          	lw	a5,44(a5)
    22f0:	f2e7fce3          	bleu	a4,a5,2228 <xTaskGenericNotify+0x68>
    22f4:	fe5fd0ef          	jal	ra,2d8 <vPortYield>
    22f8:	f31ff06f          	j	2228 <xTaskGenericNotify+0x68>

000022fc <xTaskGenericNotifyFromISR>:
    22fc:	00051663          	bnez	a0,2308 <xTaskGenericNotifyFromISR+0xc>
    2300:	00407073          	csrci	0x4,0
    2304:	0000006f          	j	2304 <xTaskGenericNotifyFromISR+0x8>
    2308:	fe010113          	addi	sp,sp,-32
    230c:	00812c23          	sw	s0,24(sp)
    2310:	00912a23          	sw	s1,20(sp)
    2314:	01212823          	sw	s2,16(sp)
    2318:	01312623          	sw	s3,12(sp)
    231c:	01412423          	sw	s4,8(sp)
    2320:	01512223          	sw	s5,4(sp)
    2324:	00112e23          	sw	ra,28(sp)
    2328:	00070993          	mv	s3,a4
    232c:	00068a13          	mv	s4,a3
    2330:	00060493          	mv	s1,a2
    2334:	00058913          	mv	s2,a1
    2338:	00050413          	mv	s0,a0
    233c:	a14fe0ef          	jal	ra,550 <vPortSetInterruptMask>
    2340:	00050a93          	mv	s5,a0
    2344:	000a0663          	beqz	s4,2350 <xTaskGenericNotifyFromISR+0x54>
    2348:	04842783          	lw	a5,72(s0)
    234c:	00fa2023          	sw	a5,0(s4)
    2350:	04c42703          	lw	a4,76(s0)
    2354:	00200793          	li	a5,2
    2358:	04f42623          	sw	a5,76(s0)
    235c:	06f48c63          	beq	s1,a5,23d4 <xTaskGenericNotifyFromISR+0xd8>
    2360:	0497e463          	bltu	a5,s1,23a8 <xTaskGenericNotifyFromISR+0xac>
    2364:	00100793          	li	a5,1
    2368:	04f48e63          	beq	s1,a5,23c4 <xTaskGenericNotifyFromISR+0xc8>
    236c:	00100793          	li	a5,1
    2370:	06f70a63          	beq	a4,a5,23e4 <xTaskGenericNotifyFromISR+0xe8>
    2374:	00100413          	li	s0,1
    2378:	000a8513          	mv	a0,s5
    237c:	9ccfe0ef          	jal	ra,548 <vPortClearInterruptMask>
    2380:	00040513          	mv	a0,s0
    2384:	01c12083          	lw	ra,28(sp)
    2388:	01812403          	lw	s0,24(sp)
    238c:	01412483          	lw	s1,20(sp)
    2390:	01012903          	lw	s2,16(sp)
    2394:	00c12983          	lw	s3,12(sp)
    2398:	00812a03          	lw	s4,8(sp)
    239c:	00412a83          	lw	s5,4(sp)
    23a0:	02010113          	addi	sp,sp,32
    23a4:	00008067          	ret
    23a8:	00300693          	li	a3,3
    23ac:	02d48063          	beq	s1,a3,23cc <xTaskGenericNotifyFromISR+0xd0>
    23b0:	00400693          	li	a3,4
    23b4:	fad49ce3          	bne	s1,a3,236c <xTaskGenericNotifyFromISR+0x70>
    23b8:	00f71a63          	bne	a4,a5,23cc <xTaskGenericNotifyFromISR+0xd0>
    23bc:	00000413          	li	s0,0
    23c0:	fb9ff06f          	j	2378 <xTaskGenericNotifyFromISR+0x7c>
    23c4:	04842583          	lw	a1,72(s0)
    23c8:	0125e933          	or	s2,a1,s2
    23cc:	05242423          	sw	s2,72(s0)
    23d0:	f9dff06f          	j	236c <xTaskGenericNotifyFromISR+0x70>
    23d4:	04842783          	lw	a5,72(s0)
    23d8:	00178793          	addi	a5,a5,1
    23dc:	04f42423          	sw	a5,72(s0)
    23e0:	f8dff06f          	j	236c <xTaskGenericNotifyFromISR+0x70>
    23e4:	02842783          	lw	a5,40(s0)
    23e8:	00078663          	beqz	a5,23f4 <xTaskGenericNotifyFromISR+0xf8>
    23ec:	00407073          	csrci	0x4,0
    23f0:	0000006f          	j	23f0 <xTaskGenericNotifyFromISR+0xf4>
    23f4:	000047b7          	lui	a5,0x4
    23f8:	8cc7a783          	lw	a5,-1844(a5) # 38cc <uxSchedulerSuspended>
    23fc:	06079463          	bnez	a5,2464 <xTaskGenericNotifyFromISR+0x168>
    2400:	00440493          	addi	s1,s0,4
    2404:	00048513          	mv	a0,s1
    2408:	a80fe0ef          	jal	ra,688 <uxListRemove>
    240c:	000047b7          	lui	a5,0x4
    2410:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    2414:	02c42503          	lw	a0,44(s0)
    2418:	0007a703          	lw	a4,0(a5)
    241c:	00a77463          	bleu	a0,a4,2424 <xTaskGenericNotifyFromISR+0x128>
    2420:	00a7a023          	sw	a0,0(a5)
    2424:	01400593          	li	a1,20
    2428:	990fe0ef          	jal	ra,5b8 <__mulsi3>
    242c:	000047b7          	lui	a5,0x4
    2430:	81878793          	addi	a5,a5,-2024 # 3818 <_end>
    2434:	00048593          	mv	a1,s1
    2438:	00a78533          	add	a0,a5,a0
    243c:	9ccfe0ef          	jal	ra,608 <vListInsertEnd>
    2440:	000047b7          	lui	a5,0x4
    2444:	8b87a783          	lw	a5,-1864(a5) # 38b8 <pxCurrentTCB>
    2448:	02c42703          	lw	a4,44(s0)
    244c:	02c7a783          	lw	a5,44(a5)
    2450:	f2e7f2e3          	bleu	a4,a5,2374 <xTaskGenericNotifyFromISR+0x78>
    2454:	f20980e3          	beqz	s3,2374 <xTaskGenericNotifyFromISR+0x78>
    2458:	00100793          	li	a5,1
    245c:	00f9a023          	sw	a5,0(s3)
    2460:	f15ff06f          	j	2374 <xTaskGenericNotifyFromISR+0x78>
    2464:	00004537          	lui	a0,0x4
    2468:	01840593          	addi	a1,s0,24
    246c:	8a450513          	addi	a0,a0,-1884 # 38a4 <xPendingReadyList>
    2470:	fcdff06f          	j	243c <xTaskGenericNotifyFromISR+0x140>

00002474 <vTaskNotifyGiveFromISR>:
    2474:	00051663          	bnez	a0,2480 <vTaskNotifyGiveFromISR+0xc>
    2478:	00407073          	csrci	0x4,0
    247c:	0000006f          	j	247c <vTaskNotifyGiveFromISR+0x8>
    2480:	fe010113          	addi	sp,sp,-32
    2484:	00812c23          	sw	s0,24(sp)
    2488:	00912a23          	sw	s1,20(sp)
    248c:	00050413          	mv	s0,a0
    2490:	01312623          	sw	s3,12(sp)
    2494:	00112e23          	sw	ra,28(sp)
    2498:	01212823          	sw	s2,16(sp)
    249c:	00058493          	mv	s1,a1
    24a0:	8b0fe0ef          	jal	ra,550 <vPortSetInterruptMask>
    24a4:	00200793          	li	a5,2
    24a8:	04c42703          	lw	a4,76(s0)
    24ac:	04f42623          	sw	a5,76(s0)
    24b0:	04842783          	lw	a5,72(s0)
    24b4:	00050993          	mv	s3,a0
    24b8:	00178793          	addi	a5,a5,1
    24bc:	04f42423          	sw	a5,72(s0)
    24c0:	00100793          	li	a5,1
    24c4:	08f71063          	bne	a4,a5,2544 <vTaskNotifyGiveFromISR+0xd0>
    24c8:	02842783          	lw	a5,40(s0)
    24cc:	00078663          	beqz	a5,24d8 <vTaskNotifyGiveFromISR+0x64>
    24d0:	00407073          	csrci	0x4,0
    24d4:	0000006f          	j	24d4 <vTaskNotifyGiveFromISR+0x60>
    24d8:	000047b7          	lui	a5,0x4
    24dc:	8cc7a783          	lw	a5,-1844(a5) # 38cc <uxSchedulerSuspended>
    24e0:	08079263          	bnez	a5,2564 <vTaskNotifyGiveFromISR+0xf0>
    24e4:	00440913          	addi	s2,s0,4
    24e8:	00090513          	mv	a0,s2
    24ec:	99cfe0ef          	jal	ra,688 <uxListRemove>
    24f0:	000047b7          	lui	a5,0x4
    24f4:	8d478793          	addi	a5,a5,-1836 # 38d4 <uxTopReadyPriority>
    24f8:	02c42503          	lw	a0,44(s0)
    24fc:	0007a703          	lw	a4,0(a5)
    2500:	00a77463          	bleu	a0,a4,2508 <vTaskNotifyGiveFromISR+0x94>
    2504:	00a7a023          	sw	a0,0(a5)
    2508:	01400593          	li	a1,20
    250c:	8acfe0ef          	jal	ra,5b8 <__mulsi3>
    2510:	000047b7          	lui	a5,0x4
    2514:	81878793          	addi	a5,a5,-2024 # 3818 <_end>
    2518:	00090593          	mv	a1,s2
    251c:	00a78533          	add	a0,a5,a0
    2520:	8e8fe0ef          	jal	ra,608 <vListInsertEnd>
    2524:	000047b7          	lui	a5,0x4
    2528:	8b87a783          	lw	a5,-1864(a5) # 38b8 <pxCurrentTCB>
    252c:	02c42703          	lw	a4,44(s0)
    2530:	02c7a783          	lw	a5,44(a5)
    2534:	00e7f863          	bleu	a4,a5,2544 <vTaskNotifyGiveFromISR+0xd0>
    2538:	00048663          	beqz	s1,2544 <vTaskNotifyGiveFromISR+0xd0>
    253c:	00100793          	li	a5,1
    2540:	00f4a023          	sw	a5,0(s1)
    2544:	01812403          	lw	s0,24(sp)
    2548:	01c12083          	lw	ra,28(sp)
    254c:	01412483          	lw	s1,20(sp)
    2550:	01012903          	lw	s2,16(sp)
    2554:	00098513          	mv	a0,s3
    2558:	00c12983          	lw	s3,12(sp)
    255c:	02010113          	addi	sp,sp,32
    2560:	fe9fd06f          	j	548 <vPortClearInterruptMask>
    2564:	00004537          	lui	a0,0x4
    2568:	01840593          	addi	a1,s0,24
    256c:	8a450513          	addi	a0,a0,-1884 # 38a4 <xPendingReadyList>
    2570:	fb1ff06f          	j	2520 <vTaskNotifyGiveFromISR+0xac>

00002574 <xTaskNotifyStateClear>:
    2574:	fe010113          	addi	sp,sp,-32
    2578:	00812c23          	sw	s0,24(sp)
    257c:	00112e23          	sw	ra,28(sp)
    2580:	00050413          	mv	s0,a0
    2584:	00051663          	bnez	a0,2590 <xTaskNotifyStateClear+0x1c>
    2588:	000047b7          	lui	a5,0x4
    258c:	8b87a403          	lw	s0,-1864(a5) # 38b8 <pxCurrentTCB>
    2590:	c3cff0ef          	jal	ra,19cc <vTaskEnterCritical>
    2594:	04c42703          	lw	a4,76(s0)
    2598:	00200793          	li	a5,2
    259c:	00000513          	li	a0,0
    25a0:	00f71663          	bne	a4,a5,25ac <xTaskNotifyStateClear+0x38>
    25a4:	04042623          	sw	zero,76(s0)
    25a8:	00100513          	li	a0,1
    25ac:	00a12623          	sw	a0,12(sp)
    25b0:	c4cff0ef          	jal	ra,19fc <vTaskExitCritical>
    25b4:	01c12083          	lw	ra,28(sp)
    25b8:	01812403          	lw	s0,24(sp)
    25bc:	00c12503          	lw	a0,12(sp)
    25c0:	02010113          	addi	sp,sp,32
    25c4:	00008067          	ret

000025c8 <prvCheckForValidListAndQueue>:
    25c8:	ff010113          	addi	sp,sp,-16
    25cc:	00812423          	sw	s0,8(sp)
    25d0:	00004437          	lui	s0,0x4
    25d4:	00112623          	sw	ra,12(sp)
    25d8:	00912223          	sw	s1,4(sp)
    25dc:	01212023          	sw	s2,0(sp)
    25e0:	92040413          	addi	s0,s0,-1760 # 3920 <xTimerQueue>
    25e4:	be8ff0ef          	jal	ra,19cc <vTaskEnterCritical>
    25e8:	00042783          	lw	a5,0(s0)
    25ec:	06079063          	bnez	a5,264c <prvCheckForValidListAndQueue+0x84>
    25f0:	00004537          	lui	a0,0x4
    25f4:	8ec50913          	addi	s2,a0,-1812 # 38ec <xActiveTimerList1>
    25f8:	8ec50513          	addi	a0,a0,-1812
    25fc:	fe5fd0ef          	jal	ra,5e0 <vListInitialise>
    2600:	00004537          	lui	a0,0x4
    2604:	90050493          	addi	s1,a0,-1792 # 3900 <xActiveTimerList2>
    2608:	90050513          	addi	a0,a0,-1792
    260c:	fd5fd0ef          	jal	ra,5e0 <vListInitialise>
    2610:	000047b7          	lui	a5,0x4
    2614:	9127aa23          	sw	s2,-1772(a5) # 3914 <pxCurrentTimerList>
    2618:	00000613          	li	a2,0
    261c:	000047b7          	lui	a5,0x4
    2620:	00c00593          	li	a1,12
    2624:	00200513          	li	a0,2
    2628:	9097ac23          	sw	s1,-1768(a5) # 3918 <pxOverflowTimerList>
    262c:	b04fe0ef          	jal	ra,930 <xQueueGenericCreate>
    2630:	00a42023          	sw	a0,0(s0)
    2634:	00051663          	bnez	a0,2640 <prvCheckForValidListAndQueue+0x78>
    2638:	00407073          	csrci	0x4,0
    263c:	0000006f          	j	263c <prvCheckForValidListAndQueue+0x74>
    2640:	000035b7          	lui	a1,0x3
    2644:	55858593          	addi	a1,a1,1368 # 3558 <vApplicationStackOverflowHook+0x10>
    2648:	b31fe0ef          	jal	ra,1178 <vQueueAddToRegistry>
    264c:	00812403          	lw	s0,8(sp)
    2650:	00c12083          	lw	ra,12(sp)
    2654:	00412483          	lw	s1,4(sp)
    2658:	00012903          	lw	s2,0(sp)
    265c:	01010113          	addi	sp,sp,16
    2660:	b9cff06f          	j	19fc <vTaskExitCritical>

00002664 <prvInsertTimerInActiveList>:
    2664:	ff010113          	addi	sp,sp,-16
    2668:	00112623          	sw	ra,12(sp)
    266c:	00b52223          	sw	a1,4(a0)
    2670:	00a52823          	sw	a0,16(a0)
    2674:	00050793          	mv	a5,a0
    2678:	02b66a63          	bltu	a2,a1,26ac <prvInsertTimerInActiveList+0x48>
    267c:	01852703          	lw	a4,24(a0)
    2680:	40d60633          	sub	a2,a2,a3
    2684:	00100513          	li	a0,1
    2688:	00e67c63          	bleu	a4,a2,26a0 <prvInsertTimerInActiveList+0x3c>
    268c:	00478593          	addi	a1,a5,4
    2690:	000047b7          	lui	a5,0x4
    2694:	9187a503          	lw	a0,-1768(a5) # 3918 <pxOverflowTimerList>
    2698:	fa1fd0ef          	jal	ra,638 <vListInsert>
    269c:	00000513          	li	a0,0
    26a0:	00c12083          	lw	ra,12(sp)
    26a4:	01010113          	addi	sp,sp,16
    26a8:	00008067          	ret
    26ac:	00d67663          	bleu	a3,a2,26b8 <prvInsertTimerInActiveList+0x54>
    26b0:	00100513          	li	a0,1
    26b4:	fed5f6e3          	bleu	a3,a1,26a0 <prvInsertTimerInActiveList+0x3c>
    26b8:	00478593          	addi	a1,a5,4
    26bc:	000047b7          	lui	a5,0x4
    26c0:	9147a503          	lw	a0,-1772(a5) # 3914 <pxCurrentTimerList>
    26c4:	fd5ff06f          	j	2698 <prvInsertTimerInActiveList+0x34>

000026c8 <xTimerCreateTimerTask>:
    26c8:	ff010113          	addi	sp,sp,-16
    26cc:	00112623          	sw	ra,12(sp)
    26d0:	ef9ff0ef          	jal	ra,25c8 <prvCheckForValidListAndQueue>
    26d4:	000047b7          	lui	a5,0x4
    26d8:	9207a783          	lw	a5,-1760(a5) # 3920 <xTimerQueue>
    26dc:	00079663          	bnez	a5,26e8 <xTimerCreateTimerTask+0x20>
    26e0:	00407073          	csrci	0x4,0
    26e4:	0000006f          	j	26e4 <xTimerCreateTimerTask+0x1c>
    26e8:	000035b7          	lui	a1,0x3
    26ec:	00003537          	lui	a0,0x3
    26f0:	00000893          	li	a7,0
    26f4:	00000813          	li	a6,0
    26f8:	00000793          	li	a5,0
    26fc:	00200713          	li	a4,2
    2700:	00000693          	li	a3,0
    2704:	40000613          	li	a2,1024
    2708:	56058593          	addi	a1,a1,1376 # 3560 <vApplicationStackOverflowHook+0x18>
    270c:	93850513          	addi	a0,a0,-1736 # 2938 <prvTimerTask>
    2710:	dc4ff0ef          	jal	ra,1cd4 <xTaskGenericCreate>
    2714:	fc0506e3          	beqz	a0,26e0 <xTimerCreateTimerTask+0x18>
    2718:	00c12083          	lw	ra,12(sp)
    271c:	01010113          	addi	sp,sp,16
    2720:	00008067          	ret

00002724 <xTimerCreate>:
    2724:	08058863          	beqz	a1,27b4 <xTimerCreate+0x90>
    2728:	fe010113          	addi	sp,sp,-32
    272c:	01512223          	sw	s5,4(sp)
    2730:	00050a93          	mv	s5,a0
    2734:	02800513          	li	a0,40
    2738:	00812c23          	sw	s0,24(sp)
    273c:	00912a23          	sw	s1,20(sp)
    2740:	01212823          	sw	s2,16(sp)
    2744:	01312623          	sw	s3,12(sp)
    2748:	01412423          	sw	s4,8(sp)
    274c:	00112e23          	sw	ra,28(sp)
    2750:	00070913          	mv	s2,a4
    2754:	00068993          	mv	s3,a3
    2758:	00060a13          	mv	s4,a2
    275c:	00058493          	mv	s1,a1
    2760:	1a9000ef          	jal	ra,3108 <pvPortMalloc>
    2764:	00050413          	mv	s0,a0
    2768:	02050263          	beqz	a0,278c <xTimerCreate+0x68>
    276c:	e5dff0ef          	jal	ra,25c8 <prvCheckForValidListAndQueue>
    2770:	00440513          	addi	a0,s0,4
    2774:	01542023          	sw	s5,0(s0)
    2778:	00942c23          	sw	s1,24(s0)
    277c:	01442e23          	sw	s4,28(s0)
    2780:	03342023          	sw	s3,32(s0)
    2784:	03242223          	sw	s2,36(s0)
    2788:	e79fd0ef          	jal	ra,600 <vListInitialiseItem>
    278c:	00040513          	mv	a0,s0
    2790:	01c12083          	lw	ra,28(sp)
    2794:	01812403          	lw	s0,24(sp)
    2798:	01412483          	lw	s1,20(sp)
    279c:	01012903          	lw	s2,16(sp)
    27a0:	00c12983          	lw	s3,12(sp)
    27a4:	00812a03          	lw	s4,8(sp)
    27a8:	00412a83          	lw	s5,4(sp)
    27ac:	02010113          	addi	sp,sp,32
    27b0:	00008067          	ret
    27b4:	00407073          	csrci	0x4,0
    27b8:	0000006f          	j	27b8 <xTimerCreate+0x94>

000027bc <xTimerGenericCommand>:
    27bc:	00051663          	bnez	a0,27c8 <xTimerGenericCommand+0xc>
    27c0:	00407073          	csrci	0x4,0
    27c4:	0000006f          	j	27c4 <xTimerGenericCommand+0x8>
    27c8:	fe010113          	addi	sp,sp,-32
    27cc:	00812c23          	sw	s0,24(sp)
    27d0:	00004437          	lui	s0,0x4
    27d4:	00112e23          	sw	ra,28(sp)
    27d8:	00912a23          	sw	s1,20(sp)
    27dc:	92040413          	addi	s0,s0,-1760 # 3920 <xTimerQueue>
    27e0:	00042883          	lw	a7,0(s0)
    27e4:	00050793          	mv	a5,a0
    27e8:	00000513          	li	a0,0
    27ec:	04088263          	beqz	a7,2830 <xTimerGenericCommand+0x74>
    27f0:	00f12623          	sw	a5,12(sp)
    27f4:	00b12223          	sw	a1,4(sp)
    27f8:	00c12423          	sw	a2,8(sp)
    27fc:	00500793          	li	a5,5
    2800:	00070493          	mv	s1,a4
    2804:	00068813          	mv	a6,a3
    2808:	02b7ce63          	blt	a5,a1,2844 <xTimerGenericCommand+0x88>
    280c:	99cff0ef          	jal	ra,19a8 <xTaskGetSchedulerState>
    2810:	00200793          	li	a5,2
    2814:	00000693          	li	a3,0
    2818:	00048613          	mv	a2,s1
    281c:	00f50463          	beq	a0,a5,2824 <xTimerGenericCommand+0x68>
    2820:	00000613          	li	a2,0
    2824:	00042503          	lw	a0,0(s0)
    2828:	00410593          	addi	a1,sp,4
    282c:	998fe0ef          	jal	ra,9c4 <xQueueGenericSend>
    2830:	01c12083          	lw	ra,28(sp)
    2834:	01812403          	lw	s0,24(sp)
    2838:	01412483          	lw	s1,20(sp)
    283c:	02010113          	addi	sp,sp,32
    2840:	00008067          	ret
    2844:	00000693          	li	a3,0
    2848:	00080613          	mv	a2,a6
    284c:	00410593          	addi	a1,sp,4
    2850:	00088513          	mv	a0,a7
    2854:	b38fe0ef          	jal	ra,b8c <xQueueGenericSendFromISR>
    2858:	fd9ff06f          	j	2830 <xTimerGenericCommand+0x74>

0000285c <prvSwitchTimerLists>:
    285c:	fd010113          	addi	sp,sp,-48
    2860:	03212023          	sw	s2,32(sp)
    2864:	01312e23          	sw	s3,28(sp)
    2868:	02112623          	sw	ra,44(sp)
    286c:	02812423          	sw	s0,40(sp)
    2870:	02912223          	sw	s1,36(sp)
    2874:	00004937          	lui	s2,0x4
    2878:	00100993          	li	s3,1
    287c:	91490493          	addi	s1,s2,-1772 # 3914 <pxCurrentTimerList>
    2880:	0004a703          	lw	a4,0(s1)
    2884:	00072783          	lw	a5,0(a4)
    2888:	02079a63          	bnez	a5,28bc <prvSwitchTimerLists+0x60>
    288c:	000047b7          	lui	a5,0x4
    2890:	91878793          	addi	a5,a5,-1768 # 3918 <pxOverflowTimerList>
    2894:	0007a683          	lw	a3,0(a5)
    2898:	00e7a023          	sw	a4,0(a5)
    289c:	02c12083          	lw	ra,44(sp)
    28a0:	02812403          	lw	s0,40(sp)
    28a4:	00d4a023          	sw	a3,0(s1)
    28a8:	02012903          	lw	s2,32(sp)
    28ac:	02412483          	lw	s1,36(sp)
    28b0:	01c12983          	lw	s3,28(sp)
    28b4:	03010113          	addi	sp,sp,48
    28b8:	00008067          	ret
    28bc:	00c72783          	lw	a5,12(a4)
    28c0:	00c7a403          	lw	s0,12(a5)
    28c4:	0007a603          	lw	a2,0(a5)
    28c8:	00440593          	addi	a1,s0,4
    28cc:	00058513          	mv	a0,a1
    28d0:	00c12623          	sw	a2,12(sp)
    28d4:	00b12423          	sw	a1,8(sp)
    28d8:	db1fd0ef          	jal	ra,688 <uxListRemove>
    28dc:	02442783          	lw	a5,36(s0)
    28e0:	00040513          	mv	a0,s0
    28e4:	000780e7          	jalr	a5
    28e8:	01c42783          	lw	a5,28(s0)
    28ec:	00812583          	lw	a1,8(sp)
    28f0:	00c12603          	lw	a2,12(sp)
    28f4:	f93794e3          	bne	a5,s3,287c <prvSwitchTimerLists+0x20>
    28f8:	01842783          	lw	a5,24(s0)
    28fc:	00f607b3          	add	a5,a2,a5
    2900:	00f67c63          	bleu	a5,a2,2918 <prvSwitchTimerLists+0xbc>
    2904:	0004a503          	lw	a0,0(s1)
    2908:	00f42223          	sw	a5,4(s0)
    290c:	00842823          	sw	s0,16(s0)
    2910:	d29fd0ef          	jal	ra,638 <vListInsert>
    2914:	f69ff06f          	j	287c <prvSwitchTimerLists+0x20>
    2918:	00000713          	li	a4,0
    291c:	00000693          	li	a3,0
    2920:	00000593          	li	a1,0
    2924:	00040513          	mv	a0,s0
    2928:	e95ff0ef          	jal	ra,27bc <xTimerGenericCommand>
    292c:	f40518e3          	bnez	a0,287c <prvSwitchTimerLists+0x20>
    2930:	00407073          	csrci	0x4,0
    2934:	0000006f          	j	2934 <prvSwitchTimerLists+0xd8>

00002938 <prvTimerTask>:
    2938:	fb010113          	addi	sp,sp,-80
    293c:	03312e23          	sw	s3,60(sp)
    2940:	03412c23          	sw	s4,56(sp)
    2944:	03512a23          	sw	s5,52(sp)
    2948:	03612823          	sw	s6,48(sp)
    294c:	03712623          	sw	s7,44(sp)
    2950:	04112623          	sw	ra,76(sp)
    2954:	04812423          	sw	s0,72(sp)
    2958:	04912223          	sw	s1,68(sp)
    295c:	05212023          	sw	s2,64(sp)
    2960:	03812423          	sw	s8,40(sp)
    2964:	03912223          	sw	s9,36(sp)
    2968:	000049b7          	lui	s3,0x4
    296c:	00004a37          	lui	s4,0x4
    2970:	00004ab7          	lui	s5,0x4
    2974:	00004b37          	lui	s6,0x4
    2978:	00900b93          	li	s7,9
    297c:	9149a783          	lw	a5,-1772(s3) # 3914 <pxCurrentTimerList>
    2980:	91498c93          	addi	s9,s3,-1772
    2984:	00000c13          	li	s8,0
    2988:	0007a403          	lw	s0,0(a5)
    298c:	00040663          	beqz	s0,2998 <prvTimerTask+0x60>
    2990:	00c7a783          	lw	a5,12(a5)
    2994:	0007ac03          	lw	s8,0(a5)
    2998:	9bdfe0ef          	jal	ra,1354 <vTaskSuspendAll>
    299c:	d60ff0ef          	jal	ra,1efc <xTaskGetTickCount>
    29a0:	91ca0793          	addi	a5,s4,-1764 # 391c <xLastTime.2540>
    29a4:	0007a703          	lw	a4,0(a5)
    29a8:	00050493          	mv	s1,a0
    29ac:	91ca0913          	addi	s2,s4,-1764
    29b0:	08e57e63          	bleu	a4,a0,2a4c <prvTimerTask+0x114>
    29b4:	ea9ff0ef          	jal	ra,285c <prvSwitchTimerLists>
    29b8:	00992023          	sw	s1,0(s2)
    29bc:	bc8ff0ef          	jal	ra,1d84 <xTaskResumeAll>
    29c0:	00100c13          	li	s8,1
    29c4:	00100493          	li	s1,1
    29c8:	920aa503          	lw	a0,-1760(s5) # 3920 <xTimerQueue>
    29cc:	00000693          	li	a3,0
    29d0:	00000613          	li	a2,0
    29d4:	01410593          	addi	a1,sp,20
    29d8:	ba0fe0ef          	jal	ra,d78 <xQueueGenericReceive>
    29dc:	fa0500e3          	beqz	a0,297c <prvTimerTask+0x44>
    29e0:	01412783          	lw	a5,20(sp)
    29e4:	fe07c2e3          	bltz	a5,29c8 <prvTimerTask+0x90>
    29e8:	01c12403          	lw	s0,28(sp)
    29ec:	01442783          	lw	a5,20(s0)
    29f0:	00078663          	beqz	a5,29fc <prvTimerTask+0xc4>
    29f4:	00440513          	addi	a0,s0,4
    29f8:	c91fd0ef          	jal	ra,688 <uxListRemove>
    29fc:	d00ff0ef          	jal	ra,1efc <xTaskGetTickCount>
    2a00:	00092783          	lw	a5,0(s2)
    2a04:	00050613          	mv	a2,a0
    2a08:	00f57863          	bleu	a5,a0,2a18 <prvTimerTask+0xe0>
    2a0c:	00a12623          	sw	a0,12(sp)
    2a10:	e4dff0ef          	jal	ra,285c <prvSwitchTimerLists>
    2a14:	00c12603          	lw	a2,12(sp)
    2a18:	01412783          	lw	a5,20(sp)
    2a1c:	00c92023          	sw	a2,0(s2)
    2a20:	fafbe4e3          	bltu	s7,a5,29c8 <prvTimerTask+0x90>
    2a24:	00fc17b3          	sll	a5,s8,a5
    2a28:	2107f713          	andi	a4,a5,528
    2a2c:	12071263          	bnez	a4,2b50 <prvTimerTask+0x218>
    2a30:	0c77f713          	andi	a4,a5,199
    2a34:	0c071263          	bnez	a4,2af8 <prvTimerTask+0x1c0>
    2a38:	0207f793          	andi	a5,a5,32
    2a3c:	f80786e3          	beqz	a5,29c8 <prvTimerTask+0x90>
    2a40:	00040513          	mv	a0,s0
    2a44:	01d000ef          	jal	ra,3260 <vPortFree>
    2a48:	f81ff06f          	j	29c8 <prvTimerTask+0x90>
    2a4c:	00a7a023          	sw	a0,0(a5)
    2a50:	08040063          	beqz	s0,2ad0 <prvTimerTask+0x198>
    2a54:	00000613          	li	a2,0
    2a58:	09856263          	bltu	a0,s8,2adc <prvTimerTask+0x1a4>
    2a5c:	b28ff0ef          	jal	ra,1d84 <xTaskResumeAll>
    2a60:	000ca783          	lw	a5,0(s9)
    2a64:	00c7a783          	lw	a5,12(a5)
    2a68:	00c7a403          	lw	s0,12(a5)
    2a6c:	00440513          	addi	a0,s0,4
    2a70:	c19fd0ef          	jal	ra,688 <uxListRemove>
    2a74:	01c42c83          	lw	s9,28(s0)
    2a78:	00100793          	li	a5,1
    2a7c:	04fc9263          	bne	s9,a5,2ac0 <prvTimerTask+0x188>
    2a80:	01842583          	lw	a1,24(s0)
    2a84:	000c0693          	mv	a3,s8
    2a88:	00048613          	mv	a2,s1
    2a8c:	00bc05b3          	add	a1,s8,a1
    2a90:	00040513          	mv	a0,s0
    2a94:	bd1ff0ef          	jal	ra,2664 <prvInsertTimerInActiveList>
    2a98:	03951463          	bne	a0,s9,2ac0 <prvTimerTask+0x188>
    2a9c:	00000713          	li	a4,0
    2aa0:	00000693          	li	a3,0
    2aa4:	000c0613          	mv	a2,s8
    2aa8:	00000593          	li	a1,0
    2aac:	00040513          	mv	a0,s0
    2ab0:	d0dff0ef          	jal	ra,27bc <xTimerGenericCommand>
    2ab4:	00051663          	bnez	a0,2ac0 <prvTimerTask+0x188>
    2ab8:	00407073          	csrci	0x4,0
    2abc:	0000006f          	j	2abc <prvTimerTask+0x184>
    2ac0:	02442783          	lw	a5,36(s0)
    2ac4:	00040513          	mv	a0,s0
    2ac8:	000780e7          	jalr	a5
    2acc:	ef5ff06f          	j	29c0 <prvTimerTask+0x88>
    2ad0:	918b2783          	lw	a5,-1768(s6) # 3918 <pxOverflowTimerList>
    2ad4:	0007a603          	lw	a2,0(a5)
    2ad8:	00163613          	seqz	a2,a2
    2adc:	920aa503          	lw	a0,-1760(s5)
    2ae0:	409c05b3          	sub	a1,s8,s1
    2ae4:	f44fe0ef          	jal	ra,1228 <vQueueWaitForMessageRestricted>
    2ae8:	a9cff0ef          	jal	ra,1d84 <xTaskResumeAll>
    2aec:	ec051ae3          	bnez	a0,29c0 <prvTimerTask+0x88>
    2af0:	fe8fd0ef          	jal	ra,2d8 <vPortYield>
    2af4:	ecdff06f          	j	29c0 <prvTimerTask+0x88>
    2af8:	01842583          	lw	a1,24(s0)
    2afc:	01812683          	lw	a3,24(sp)
    2b00:	00040513          	mv	a0,s0
    2b04:	00b685b3          	add	a1,a3,a1
    2b08:	b5dff0ef          	jal	ra,2664 <prvInsertTimerInActiveList>
    2b0c:	ea951ee3          	bne	a0,s1,29c8 <prvTimerTask+0x90>
    2b10:	02442783          	lw	a5,36(s0)
    2b14:	00040513          	mv	a0,s0
    2b18:	000780e7          	jalr	a5
    2b1c:	01c42783          	lw	a5,28(s0)
    2b20:	ea9794e3          	bne	a5,s1,29c8 <prvTimerTask+0x90>
    2b24:	01842783          	lw	a5,24(s0)
    2b28:	01812603          	lw	a2,24(sp)
    2b2c:	00000713          	li	a4,0
    2b30:	00000693          	li	a3,0
    2b34:	00f60633          	add	a2,a2,a5
    2b38:	00000593          	li	a1,0
    2b3c:	00040513          	mv	a0,s0
    2b40:	c7dff0ef          	jal	ra,27bc <xTimerGenericCommand>
    2b44:	e80512e3          	bnez	a0,29c8 <prvTimerTask+0x90>
    2b48:	00407073          	csrci	0x4,0
    2b4c:	0000006f          	j	2b4c <prvTimerTask+0x214>
    2b50:	01812583          	lw	a1,24(sp)
    2b54:	00b42c23          	sw	a1,24(s0)
    2b58:	00059663          	bnez	a1,2b64 <prvTimerTask+0x22c>
    2b5c:	00407073          	csrci	0x4,0
    2b60:	0000006f          	j	2b60 <prvTimerTask+0x228>
    2b64:	00060693          	mv	a3,a2
    2b68:	00c585b3          	add	a1,a1,a2
    2b6c:	00040513          	mv	a0,s0
    2b70:	af5ff0ef          	jal	ra,2664 <prvInsertTimerInActiveList>
    2b74:	e55ff06f          	j	29c8 <prvTimerTask+0x90>

00002b78 <pcTimerGetTimerName>:
    2b78:	00051663          	bnez	a0,2b84 <pcTimerGetTimerName+0xc>
    2b7c:	00407073          	csrci	0x4,0
    2b80:	0000006f          	j	2b80 <pcTimerGetTimerName+0x8>
    2b84:	00052503          	lw	a0,0(a0)
    2b88:	00008067          	ret

00002b8c <xTimerIsTimerActive>:
    2b8c:	00051663          	bnez	a0,2b98 <xTimerIsTimerActive+0xc>
    2b90:	00407073          	csrci	0x4,0
    2b94:	0000006f          	j	2b94 <xTimerIsTimerActive+0x8>
    2b98:	fe010113          	addi	sp,sp,-32
    2b9c:	00112e23          	sw	ra,28(sp)
    2ba0:	00812c23          	sw	s0,24(sp)
    2ba4:	00050413          	mv	s0,a0
    2ba8:	e25fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    2bac:	01442503          	lw	a0,20(s0)
    2bb0:	00a03533          	snez	a0,a0
    2bb4:	00a12623          	sw	a0,12(sp)
    2bb8:	e45fe0ef          	jal	ra,19fc <vTaskExitCritical>
    2bbc:	01c12083          	lw	ra,28(sp)
    2bc0:	01812403          	lw	s0,24(sp)
    2bc4:	00c12503          	lw	a0,12(sp)
    2bc8:	02010113          	addi	sp,sp,32
    2bcc:	00008067          	ret

00002bd0 <pvTimerGetTimerID>:
    2bd0:	00051663          	bnez	a0,2bdc <pvTimerGetTimerID+0xc>
    2bd4:	00407073          	csrci	0x4,0
    2bd8:	0000006f          	j	2bd8 <pvTimerGetTimerID+0x8>
    2bdc:	fe010113          	addi	sp,sp,-32
    2be0:	00112e23          	sw	ra,28(sp)
    2be4:	00812c23          	sw	s0,24(sp)
    2be8:	00050413          	mv	s0,a0
    2bec:	de1fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    2bf0:	02042503          	lw	a0,32(s0)
    2bf4:	00a12623          	sw	a0,12(sp)
    2bf8:	e05fe0ef          	jal	ra,19fc <vTaskExitCritical>
    2bfc:	01c12083          	lw	ra,28(sp)
    2c00:	01812403          	lw	s0,24(sp)
    2c04:	00c12503          	lw	a0,12(sp)
    2c08:	02010113          	addi	sp,sp,32
    2c0c:	00008067          	ret

00002c10 <vTimerSetTimerID>:
    2c10:	00051663          	bnez	a0,2c1c <vTimerSetTimerID+0xc>
    2c14:	00407073          	csrci	0x4,0
    2c18:	0000006f          	j	2c18 <vTimerSetTimerID+0x8>
    2c1c:	ff010113          	addi	sp,sp,-16
    2c20:	00812423          	sw	s0,8(sp)
    2c24:	00912223          	sw	s1,4(sp)
    2c28:	00050413          	mv	s0,a0
    2c2c:	00058493          	mv	s1,a1
    2c30:	00112623          	sw	ra,12(sp)
    2c34:	d99fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    2c38:	02942023          	sw	s1,32(s0)
    2c3c:	00812403          	lw	s0,8(sp)
    2c40:	00c12083          	lw	ra,12(sp)
    2c44:	00412483          	lw	s1,4(sp)
    2c48:	01010113          	addi	sp,sp,16
    2c4c:	db1fe06f          	j	19fc <vTaskExitCritical>

00002c50 <xEventGroupCreate>:
    2c50:	ff010113          	addi	sp,sp,-16
    2c54:	01800513          	li	a0,24
    2c58:	00812423          	sw	s0,8(sp)
    2c5c:	00112623          	sw	ra,12(sp)
    2c60:	4a8000ef          	jal	ra,3108 <pvPortMalloc>
    2c64:	00050413          	mv	s0,a0
    2c68:	00050863          	beqz	a0,2c78 <xEventGroupCreate+0x28>
    2c6c:	00052023          	sw	zero,0(a0)
    2c70:	00450513          	addi	a0,a0,4
    2c74:	96dfd0ef          	jal	ra,5e0 <vListInitialise>
    2c78:	00040513          	mv	a0,s0
    2c7c:	00c12083          	lw	ra,12(sp)
    2c80:	00812403          	lw	s0,8(sp)
    2c84:	01010113          	addi	sp,sp,16
    2c88:	00008067          	ret

00002c8c <xEventGroupWaitBits>:
    2c8c:	00051663          	bnez	a0,2c98 <xEventGroupWaitBits+0xc>
    2c90:	00407073          	csrci	0x4,0
    2c94:	0000006f          	j	2c94 <xEventGroupWaitBits+0x8>
    2c98:	fe010113          	addi	sp,sp,-32
    2c9c:	01212823          	sw	s2,16(sp)
    2ca0:	ff000937          	lui	s2,0xff000
    2ca4:	00112e23          	sw	ra,28(sp)
    2ca8:	00812c23          	sw	s0,24(sp)
    2cac:	00912a23          	sw	s1,20(sp)
    2cb0:	01312623          	sw	s3,12(sp)
    2cb4:	01412423          	sw	s4,8(sp)
    2cb8:	01512223          	sw	s5,4(sp)
    2cbc:	01612023          	sw	s6,0(sp)
    2cc0:	0125f933          	and	s2,a1,s2
    2cc4:	00090663          	beqz	s2,2cd0 <xEventGroupWaitBits+0x44>
    2cc8:	00407073          	csrci	0x4,0
    2ccc:	0000006f          	j	2ccc <xEventGroupWaitBits+0x40>
    2cd0:	00059663          	bnez	a1,2cdc <xEventGroupWaitBits+0x50>
    2cd4:	00407073          	csrci	0x4,0
    2cd8:	0000006f          	j	2cd8 <xEventGroupWaitBits+0x4c>
    2cdc:	00070993          	mv	s3,a4
    2ce0:	00068b13          	mv	s6,a3
    2ce4:	00060a93          	mv	s5,a2
    2ce8:	00058413          	mv	s0,a1
    2cec:	00050a13          	mv	s4,a0
    2cf0:	cb9fe0ef          	jal	ra,19a8 <xTaskGetSchedulerState>
    2cf4:	00051863          	bnez	a0,2d04 <xEventGroupWaitBits+0x78>
    2cf8:	00098663          	beqz	s3,2d04 <xEventGroupWaitBits+0x78>
    2cfc:	00407073          	csrci	0x4,0
    2d00:	0000006f          	j	2d00 <xEventGroupWaitBits+0x74>
    2d04:	e50fe0ef          	jal	ra,1354 <vTaskSuspendAll>
    2d08:	000a2483          	lw	s1,0(s4)
    2d0c:	009477b3          	and	a5,s0,s1
    2d10:	040b1063          	bnez	s6,2d50 <xEventGroupWaitBits+0xc4>
    2d14:	04079063          	bnez	a5,2d54 <xEventGroupWaitBits+0xc8>
    2d18:	00000913          	li	s2,0
    2d1c:	04098463          	beqz	s3,2d64 <xEventGroupWaitBits+0xd8>
    2d20:	015035b3          	snez	a1,s5
    2d24:	01859593          	slli	a1,a1,0x18
    2d28:	000b0663          	beqz	s6,2d34 <xEventGroupWaitBits+0xa8>
    2d2c:	040007b7          	lui	a5,0x4000
    2d30:	00f5e5b3          	or	a1,a1,a5
    2d34:	00098613          	mv	a2,s3
    2d38:	0085e5b3          	or	a1,a1,s0
    2d3c:	004a0513          	addi	a0,s4,4
    2d40:	9c1fe0ef          	jal	ra,1700 <vTaskPlaceOnUnorderedEventList>
    2d44:	00098913          	mv	s2,s3
    2d48:	00000493          	li	s1,0
    2d4c:	0180006f          	j	2d64 <xEventGroupWaitBits+0xd8>
    2d50:	fcf414e3          	bne	s0,a5,2d18 <xEventGroupWaitBits+0x8c>
    2d54:	000a8863          	beqz	s5,2d64 <xEventGroupWaitBits+0xd8>
    2d58:	fff44793          	not	a5,s0
    2d5c:	0097f7b3          	and	a5,a5,s1
    2d60:	00fa2023          	sw	a5,0(s4)
    2d64:	820ff0ef          	jal	ra,1d84 <xTaskResumeAll>
    2d68:	04090063          	beqz	s2,2da8 <xEventGroupWaitBits+0x11c>
    2d6c:	00051463          	bnez	a0,2d74 <xEventGroupWaitBits+0xe8>
    2d70:	d68fd0ef          	jal	ra,2d8 <vPortYield>
    2d74:	a54ff0ef          	jal	ra,1fc8 <uxTaskResetEventItemValue>
    2d78:	00651793          	slli	a5,a0,0x6
    2d7c:	00050493          	mv	s1,a0
    2d80:	0007ce63          	bltz	a5,2d9c <xEventGroupWaitBits+0x110>
    2d84:	c49fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    2d88:	000a2483          	lw	s1,0(s4)
    2d8c:	009477b3          	and	a5,s0,s1
    2d90:	040b1263          	bnez	s6,2dd4 <xEventGroupWaitBits+0x148>
    2d94:	04079263          	bnez	a5,2dd8 <xEventGroupWaitBits+0x14c>
    2d98:	c65fe0ef          	jal	ra,19fc <vTaskExitCritical>
    2d9c:	01000537          	lui	a0,0x1000
    2da0:	fff50513          	addi	a0,a0,-1 # ffffff <_fstack+0xff7003>
    2da4:	00a4f4b3          	and	s1,s1,a0
    2da8:	01c12083          	lw	ra,28(sp)
    2dac:	01812403          	lw	s0,24(sp)
    2db0:	00048513          	mv	a0,s1
    2db4:	01012903          	lw	s2,16(sp)
    2db8:	01412483          	lw	s1,20(sp)
    2dbc:	00c12983          	lw	s3,12(sp)
    2dc0:	00812a03          	lw	s4,8(sp)
    2dc4:	00412a83          	lw	s5,4(sp)
    2dc8:	00012b03          	lw	s6,0(sp)
    2dcc:	02010113          	addi	sp,sp,32
    2dd0:	00008067          	ret
    2dd4:	fcf412e3          	bne	s0,a5,2d98 <xEventGroupWaitBits+0x10c>
    2dd8:	fc0a80e3          	beqz	s5,2d98 <xEventGroupWaitBits+0x10c>
    2ddc:	fff44413          	not	s0,s0
    2de0:	00947433          	and	s0,s0,s1
    2de4:	008a2023          	sw	s0,0(s4)
    2de8:	fb1ff06f          	j	2d98 <xEventGroupWaitBits+0x10c>

00002dec <xEventGroupClearBits>:
    2dec:	00051663          	bnez	a0,2df8 <xEventGroupClearBits+0xc>
    2df0:	00407073          	csrci	0x4,0
    2df4:	0000006f          	j	2df4 <xEventGroupClearBits+0x8>
    2df8:	ff0007b7          	lui	a5,0xff000
    2dfc:	00f5f7b3          	and	a5,a1,a5
    2e00:	00078663          	beqz	a5,2e0c <xEventGroupClearBits+0x20>
    2e04:	00407073          	csrci	0x4,0
    2e08:	0000006f          	j	2e08 <xEventGroupClearBits+0x1c>
    2e0c:	fe010113          	addi	sp,sp,-32
    2e10:	00112e23          	sw	ra,28(sp)
    2e14:	00812c23          	sw	s0,24(sp)
    2e18:	00912a23          	sw	s1,20(sp)
    2e1c:	00058413          	mv	s0,a1
    2e20:	00050493          	mv	s1,a0
    2e24:	ba9fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    2e28:	0004a503          	lw	a0,0(s1)
    2e2c:	fff44593          	not	a1,s0
    2e30:	00a5f5b3          	and	a1,a1,a0
    2e34:	00b4a023          	sw	a1,0(s1)
    2e38:	00a12623          	sw	a0,12(sp)
    2e3c:	bc1fe0ef          	jal	ra,19fc <vTaskExitCritical>
    2e40:	01c12083          	lw	ra,28(sp)
    2e44:	01812403          	lw	s0,24(sp)
    2e48:	00c12503          	lw	a0,12(sp)
    2e4c:	01412483          	lw	s1,20(sp)
    2e50:	02010113          	addi	sp,sp,32
    2e54:	00008067          	ret

00002e58 <xEventGroupGetBitsFromISR>:
    2e58:	ff010113          	addi	sp,sp,-16
    2e5c:	00812423          	sw	s0,8(sp)
    2e60:	00050413          	mv	s0,a0
    2e64:	00112623          	sw	ra,12(sp)
    2e68:	ee8fd0ef          	jal	ra,550 <vPortSetInterruptMask>
    2e6c:	00042403          	lw	s0,0(s0)
    2e70:	ed8fd0ef          	jal	ra,548 <vPortClearInterruptMask>
    2e74:	00c12083          	lw	ra,12(sp)
    2e78:	00040513          	mv	a0,s0
    2e7c:	00812403          	lw	s0,8(sp)
    2e80:	01010113          	addi	sp,sp,16
    2e84:	00008067          	ret

00002e88 <xEventGroupSetBits>:
    2e88:	00051663          	bnez	a0,2e94 <xEventGroupSetBits+0xc>
    2e8c:	00407073          	csrci	0x4,0
    2e90:	0000006f          	j	2e90 <xEventGroupSetBits+0x8>
    2e94:	ff0007b7          	lui	a5,0xff000
    2e98:	00f5f7b3          	and	a5,a1,a5
    2e9c:	00078663          	beqz	a5,2ea8 <xEventGroupSetBits+0x20>
    2ea0:	00407073          	csrci	0x4,0
    2ea4:	0000006f          	j	2ea4 <xEventGroupSetBits+0x1c>
    2ea8:	fe010113          	addi	sp,sp,-32
    2eac:	00812c23          	sw	s0,24(sp)
    2eb0:	00912a23          	sw	s1,20(sp)
    2eb4:	00050413          	mv	s0,a0
    2eb8:	00058493          	mv	s1,a1
    2ebc:	01212823          	sw	s2,16(sp)
    2ec0:	01312623          	sw	s3,12(sp)
    2ec4:	01412423          	sw	s4,8(sp)
    2ec8:	00c50993          	addi	s3,a0,12
    2ecc:	00112e23          	sw	ra,28(sp)
    2ed0:	01512223          	sw	s5,4(sp)
    2ed4:	c80fe0ef          	jal	ra,1354 <vTaskSuspendAll>
    2ed8:	00042583          	lw	a1,0(s0)
    2edc:	01042503          	lw	a0,16(s0)
    2ee0:	01000937          	lui	s2,0x1000
    2ee4:	0095e5b3          	or	a1,a1,s1
    2ee8:	00b42023          	sw	a1,0(s0)
    2eec:	00000493          	li	s1,0
    2ef0:	fff90913          	addi	s2,s2,-1 # ffffff <_fstack+0xff7003>
    2ef4:	02000a37          	lui	s4,0x2000
    2ef8:	00042583          	lw	a1,0(s0)
    2efc:	02a99e63          	bne	s3,a0,2f38 <xEventGroupSetBits+0xb0>
    2f00:	fff4c493          	not	s1,s1
    2f04:	00b4f4b3          	and	s1,s1,a1
    2f08:	00942023          	sw	s1,0(s0)
    2f0c:	e79fe0ef          	jal	ra,1d84 <xTaskResumeAll>
    2f10:	00042503          	lw	a0,0(s0)
    2f14:	01c12083          	lw	ra,28(sp)
    2f18:	01812403          	lw	s0,24(sp)
    2f1c:	01412483          	lw	s1,20(sp)
    2f20:	01012903          	lw	s2,16(sp)
    2f24:	00c12983          	lw	s3,12(sp)
    2f28:	00812a03          	lw	s4,8(sp)
    2f2c:	00412a83          	lw	s5,4(sp)
    2f30:	02010113          	addi	sp,sp,32
    2f34:	00008067          	ret
    2f38:	00052703          	lw	a4,0(a0)
    2f3c:	00452a83          	lw	s5,4(a0)
    2f40:	012777b3          	and	a5,a4,s2
    2f44:	00571613          	slli	a2,a4,0x5
    2f48:	00b7f6b3          	and	a3,a5,a1
    2f4c:	00064863          	bltz	a2,2f5c <xEventGroupSetBits+0xd4>
    2f50:	00069863          	bnez	a3,2f60 <xEventGroupSetBits+0xd8>
    2f54:	000a8513          	mv	a0,s5
    2f58:	fa1ff06f          	j	2ef8 <xEventGroupSetBits+0x70>
    2f5c:	fed79ce3          	bne	a5,a3,2f54 <xEventGroupSetBits+0xcc>
    2f60:	00771693          	slli	a3,a4,0x7
    2f64:	0006d463          	bgez	a3,2f6c <xEventGroupSetBits+0xe4>
    2f68:	00f4e4b3          	or	s1,s1,a5
    2f6c:	0145e5b3          	or	a1,a1,s4
    2f70:	941fe0ef          	jal	ra,18b0 <xTaskRemoveFromUnorderedEventList>
    2f74:	fe1ff06f          	j	2f54 <xEventGroupSetBits+0xcc>

00002f78 <xEventGroupSync>:
    2f78:	ff0007b7          	lui	a5,0xff000
    2f7c:	00f677b3          	and	a5,a2,a5
    2f80:	00078663          	beqz	a5,2f8c <xEventGroupSync+0x14>
    2f84:	00407073          	csrci	0x4,0
    2f88:	0000006f          	j	2f88 <xEventGroupSync+0x10>
    2f8c:	fe010113          	addi	sp,sp,-32
    2f90:	00912a23          	sw	s1,20(sp)
    2f94:	00112e23          	sw	ra,28(sp)
    2f98:	00812c23          	sw	s0,24(sp)
    2f9c:	01212823          	sw	s2,16(sp)
    2fa0:	01312623          	sw	s3,12(sp)
    2fa4:	01412423          	sw	s4,8(sp)
    2fa8:	00060493          	mv	s1,a2
    2fac:	00061663          	bnez	a2,2fb8 <xEventGroupSync+0x40>
    2fb0:	00407073          	csrci	0x4,0
    2fb4:	0000006f          	j	2fb4 <xEventGroupSync+0x3c>
    2fb8:	00050913          	mv	s2,a0
    2fbc:	00058a13          	mv	s4,a1
    2fc0:	00068993          	mv	s3,a3
    2fc4:	9e5fe0ef          	jal	ra,19a8 <xTaskGetSchedulerState>
    2fc8:	00051863          	bnez	a0,2fd8 <xEventGroupSync+0x60>
    2fcc:	00098663          	beqz	s3,2fd8 <xEventGroupSync+0x60>
    2fd0:	00407073          	csrci	0x4,0
    2fd4:	0000006f          	j	2fd4 <xEventGroupSync+0x5c>
    2fd8:	b7cfe0ef          	jal	ra,1354 <vTaskSuspendAll>
    2fdc:	00092403          	lw	s0,0(s2)
    2fe0:	000a0593          	mv	a1,s4
    2fe4:	00090513          	mv	a0,s2
    2fe8:	ea1ff0ef          	jal	ra,2e88 <xEventGroupSetBits>
    2fec:	01446433          	or	s0,s0,s4
    2ff0:	009477b3          	and	a5,s0,s1
    2ff4:	08979463          	bne	a5,s1,307c <xEventGroupSync+0x104>
    2ff8:	00092703          	lw	a4,0(s2)
    2ffc:	fff4c793          	not	a5,s1
    3000:	00000993          	li	s3,0
    3004:	00f777b3          	and	a5,a4,a5
    3008:	00f92023          	sw	a5,0(s2)
    300c:	d79fe0ef          	jal	ra,1d84 <xTaskResumeAll>
    3010:	04098463          	beqz	s3,3058 <xEventGroupSync+0xe0>
    3014:	00051463          	bnez	a0,301c <xEventGroupSync+0xa4>
    3018:	ac0fd0ef          	jal	ra,2d8 <vPortYield>
    301c:	fadfe0ef          	jal	ra,1fc8 <uxTaskResetEventItemValue>
    3020:	00651793          	slli	a5,a0,0x6
    3024:	00050413          	mv	s0,a0
    3028:	0207c263          	bltz	a5,304c <xEventGroupSync+0xd4>
    302c:	9a1fe0ef          	jal	ra,19cc <vTaskEnterCritical>
    3030:	00092403          	lw	s0,0(s2)
    3034:	0084f7b3          	and	a5,s1,s0
    3038:	00979863          	bne	a5,s1,3048 <xEventGroupSync+0xd0>
    303c:	fff4c493          	not	s1,s1
    3040:	0084f4b3          	and	s1,s1,s0
    3044:	00992023          	sw	s1,0(s2)
    3048:	9b5fe0ef          	jal	ra,19fc <vTaskExitCritical>
    304c:	01000537          	lui	a0,0x1000
    3050:	fff50513          	addi	a0,a0,-1 # ffffff <_fstack+0xff7003>
    3054:	00a47433          	and	s0,s0,a0
    3058:	00040513          	mv	a0,s0
    305c:	01c12083          	lw	ra,28(sp)
    3060:	01812403          	lw	s0,24(sp)
    3064:	01412483          	lw	s1,20(sp)
    3068:	01012903          	lw	s2,16(sp)
    306c:	00c12983          	lw	s3,12(sp)
    3070:	00812a03          	lw	s4,8(sp)
    3074:	02010113          	addi	sp,sp,32
    3078:	00008067          	ret
    307c:	02098063          	beqz	s3,309c <xEventGroupSync+0x124>
    3080:	050005b7          	lui	a1,0x5000
    3084:	00098613          	mv	a2,s3
    3088:	00b4e5b3          	or	a1,s1,a1
    308c:	00490513          	addi	a0,s2,4
    3090:	e70fe0ef          	jal	ra,1700 <vTaskPlaceOnUnorderedEventList>
    3094:	00000413          	li	s0,0
    3098:	f75ff06f          	j	300c <xEventGroupSync+0x94>
    309c:	00092403          	lw	s0,0(s2)
    30a0:	f6dff06f          	j	300c <xEventGroupSync+0x94>

000030a4 <vEventGroupDelete>:
    30a4:	ff010113          	addi	sp,sp,-16
    30a8:	00812423          	sw	s0,8(sp)
    30ac:	00050413          	mv	s0,a0
    30b0:	00912223          	sw	s1,4(sp)
    30b4:	00112623          	sw	ra,12(sp)
    30b8:	00c40493          	addi	s1,s0,12
    30bc:	a98fe0ef          	jal	ra,1354 <vTaskSuspendAll>
    30c0:	00442783          	lw	a5,4(s0)
    30c4:	02079063          	bnez	a5,30e4 <vEventGroupDelete+0x40>
    30c8:	00040513          	mv	a0,s0
    30cc:	194000ef          	jal	ra,3260 <vPortFree>
    30d0:	00812403          	lw	s0,8(sp)
    30d4:	00c12083          	lw	ra,12(sp)
    30d8:	00412483          	lw	s1,4(sp)
    30dc:	01010113          	addi	sp,sp,16
    30e0:	ca5fe06f          	j	1d84 <xTaskResumeAll>
    30e4:	01042503          	lw	a0,16(s0)
    30e8:	00951663          	bne	a0,s1,30f4 <vEventGroupDelete+0x50>
    30ec:	00407073          	csrci	0x4,0
    30f0:	0000006f          	j	30f0 <vEventGroupDelete+0x4c>
    30f4:	020005b7          	lui	a1,0x2000
    30f8:	fb8fe0ef          	jal	ra,18b0 <xTaskRemoveFromUnorderedEventList>
    30fc:	fc5ff06f          	j	30c0 <vEventGroupDelete+0x1c>

00003100 <vEventGroupSetBitsCallback>:
    3100:	d89ff06f          	j	2e88 <xEventGroupSetBits>

00003104 <vEventGroupClearBitsCallback>:
    3104:	ce9ff06f          	j	2dec <xEventGroupClearBits>

00003108 <pvPortMalloc>:
    3108:	ff010113          	addi	sp,sp,-16
    310c:	00812423          	sw	s0,8(sp)
    3110:	00112623          	sw	ra,12(sp)
    3114:	00912223          	sw	s1,4(sp)
    3118:	00050413          	mv	s0,a0
    311c:	a38fe0ef          	jal	ra,1354 <vTaskSuspendAll>
    3120:	00006737          	lui	a4,0x6
    3124:	12c70713          	addi	a4,a4,300 # 612c <xHeapHasBeenInitialised.2294>
    3128:	00072783          	lw	a5,0(a4)
    312c:	04079663          	bnez	a5,3178 <pvPortMalloc+0x70>
    3130:	000067b7          	lui	a5,0x6
    3134:	000046b7          	lui	a3,0x4
    3138:	13078793          	addi	a5,a5,304 # 6130 <xStart>
    313c:	92868693          	addi	a3,a3,-1752 # 3928 <ucHeap+0x4>
    3140:	00d7a023          	sw	a3,0(a5)
    3144:	0007a223          	sw	zero,4(a5)
    3148:	00002637          	lui	a2,0x2
    314c:	000067b7          	lui	a5,0x6
    3150:	000046b7          	lui	a3,0x4
    3154:	12478793          	addi	a5,a5,292 # 6124 <xEnd>
    3158:	7fc60613          	addi	a2,a2,2044 # 27fc <xTimerGenericCommand+0x40>
    315c:	92468693          	addi	a3,a3,-1756 # 3924 <ucHeap>
    3160:	00c7a223          	sw	a2,4(a5)
    3164:	0007a023          	sw	zero,0(a5)
    3168:	00f6a223          	sw	a5,4(a3)
    316c:	00100793          	li	a5,1
    3170:	00c6a423          	sw	a2,8(a3)
    3174:	00f72023          	sw	a5,0(a4)
    3178:	00040c63          	beqz	s0,3190 <pvPortMalloc+0x88>
    317c:	00840413          	addi	s0,s0,8
    3180:	00347793          	andi	a5,s0,3
    3184:	00078663          	beqz	a5,3190 <pvPortMalloc+0x88>
    3188:	ffc47413          	andi	s0,s0,-4
    318c:	00440413          	addi	s0,s0,4
    3190:	000027b7          	lui	a5,0x2
    3194:	fff40713          	addi	a4,s0,-1
    3198:	7fa78793          	addi	a5,a5,2042 # 27fa <xTimerGenericCommand+0x3e>
    319c:	00000493          	li	s1,0
    31a0:	08e7e863          	bltu	a5,a4,3230 <pvPortMalloc+0x128>
    31a4:	00006737          	lui	a4,0x6
    31a8:	13072783          	lw	a5,304(a4) # 6130 <xStart>
    31ac:	13070693          	addi	a3,a4,304
    31b0:	13070713          	addi	a4,a4,304
    31b4:	0047a603          	lw	a2,4(a5)
    31b8:	00867663          	bleu	s0,a2,31c4 <pvPortMalloc+0xbc>
    31bc:	0007a603          	lw	a2,0(a5)
    31c0:	08061663          	bnez	a2,324c <pvPortMalloc+0x144>
    31c4:	00006637          	lui	a2,0x6
    31c8:	12460613          	addi	a2,a2,292 # 6124 <xEnd>
    31cc:	00000493          	li	s1,0
    31d0:	06c78063          	beq	a5,a2,3230 <pvPortMalloc+0x128>
    31d4:	0007a603          	lw	a2,0(a5)
    31d8:	0006a483          	lw	s1,0(a3)
    31dc:	00c6a023          	sw	a2,0(a3)
    31e0:	0047a603          	lw	a2,4(a5)
    31e4:	01000693          	li	a3,16
    31e8:	00848493          	addi	s1,s1,8
    31ec:	40860633          	sub	a2,a2,s0
    31f0:	02c6f463          	bleu	a2,a3,3218 <pvPortMalloc+0x110>
    31f4:	008786b3          	add	a3,a5,s0
    31f8:	00c6a223          	sw	a2,4(a3)
    31fc:	0087a223          	sw	s0,4(a5)
    3200:	0046a583          	lw	a1,4(a3)
    3204:	00072603          	lw	a2,0(a4)
    3208:	00462503          	lw	a0,4(a2)
    320c:	04b56663          	bltu	a0,a1,3258 <pvPortMalloc+0x150>
    3210:	00c6a023          	sw	a2,0(a3)
    3214:	00d72023          	sw	a3,0(a4)
    3218:	00003737          	lui	a4,0x3
    321c:	57c70713          	addi	a4,a4,1404 # 357c <xFreeBytesRemaining>
    3220:	00072683          	lw	a3,0(a4)
    3224:	0047a783          	lw	a5,4(a5)
    3228:	40f687b3          	sub	a5,a3,a5
    322c:	00f72023          	sw	a5,0(a4)
    3230:	b55fe0ef          	jal	ra,1d84 <xTaskResumeAll>
    3234:	00c12083          	lw	ra,12(sp)
    3238:	00812403          	lw	s0,8(sp)
    323c:	00048513          	mv	a0,s1
    3240:	00412483          	lw	s1,4(sp)
    3244:	01010113          	addi	sp,sp,16
    3248:	00008067          	ret
    324c:	00078693          	mv	a3,a5
    3250:	00060793          	mv	a5,a2
    3254:	f61ff06f          	j	31b4 <pvPortMalloc+0xac>
    3258:	00060713          	mv	a4,a2
    325c:	fa9ff06f          	j	3204 <pvPortMalloc+0xfc>

00003260 <vPortFree>:
    3260:	06050a63          	beqz	a0,32d4 <vPortFree+0x74>
    3264:	ff010113          	addi	sp,sp,-16
    3268:	00812423          	sw	s0,8(sp)
    326c:	00912223          	sw	s1,4(sp)
    3270:	00050413          	mv	s0,a0
    3274:	00112623          	sw	ra,12(sp)
    3278:	ff850493          	addi	s1,a0,-8
    327c:	8d8fe0ef          	jal	ra,1354 <vTaskSuspendAll>
    3280:	ffc42683          	lw	a3,-4(s0)
    3284:	000067b7          	lui	a5,0x6
    3288:	13078793          	addi	a5,a5,304 # 6130 <xStart>
    328c:	0007a703          	lw	a4,0(a5)
    3290:	00472603          	lw	a2,4(a4)
    3294:	02d66c63          	bltu	a2,a3,32cc <vPortFree+0x6c>
    3298:	fee42c23          	sw	a4,-8(s0)
    329c:	0097a023          	sw	s1,0(a5)
    32a0:	000037b7          	lui	a5,0x3
    32a4:	57c78793          	addi	a5,a5,1404 # 357c <xFreeBytesRemaining>
    32a8:	ffc42703          	lw	a4,-4(s0)
    32ac:	0007a683          	lw	a3,0(a5)
    32b0:	00d70733          	add	a4,a4,a3
    32b4:	00e7a023          	sw	a4,0(a5)
    32b8:	00812403          	lw	s0,8(sp)
    32bc:	00c12083          	lw	ra,12(sp)
    32c0:	00412483          	lw	s1,4(sp)
    32c4:	01010113          	addi	sp,sp,16
    32c8:	abdfe06f          	j	1d84 <xTaskResumeAll>
    32cc:	00070793          	mv	a5,a4
    32d0:	fbdff06f          	j	328c <vPortFree+0x2c>
    32d4:	00008067          	ret

000032d8 <xPortGetFreeHeapSize>:
    32d8:	000037b7          	lui	a5,0x3
    32dc:	57c7a503          	lw	a0,1404(a5) # 357c <xFreeBytesRemaining>
    32e0:	00008067          	ret

000032e4 <vPortInitialiseBlocks>:
    32e4:	00008067          	ret

000032e8 <memcpy>:
    32e8:	00b567b3          	or	a5,a0,a1
    32ec:	0037f793          	andi	a5,a5,3
    32f0:	02078663          	beqz	a5,331c <memcpy+0x34>
    32f4:	00050793          	mv	a5,a0
    32f8:	00c50633          	add	a2,a0,a2
    32fc:	02c7e863          	bltu	a5,a2,332c <memcpy+0x44>
    3300:	00008067          	ret
    3304:	0005a683          	lw	a3,0(a1) # 2000000 <_fstack+0x1ff7004>
    3308:	00478793          	addi	a5,a5,4
    330c:	00458593          	addi	a1,a1,4
    3310:	fed7ae23          	sw	a3,-4(a5)
    3314:	fee7e8e3          	bltu	a5,a4,3304 <memcpy+0x1c>
    3318:	fe1ff06f          	j	32f8 <memcpy+0x10>
    331c:	ffd60713          	addi	a4,a2,-3
    3320:	00050793          	mv	a5,a0
    3324:	00e50733          	add	a4,a0,a4
    3328:	fedff06f          	j	3314 <memcpy+0x2c>
    332c:	00158593          	addi	a1,a1,1
    3330:	fff5c703          	lbu	a4,-1(a1)
    3334:	00178793          	addi	a5,a5,1
    3338:	fee78fa3          	sb	a4,-1(a5)
    333c:	fc1ff06f          	j	32fc <memcpy+0x14>

00003340 <memset>:
    3340:	00c567b3          	or	a5,a0,a2
    3344:	0037f793          	andi	a5,a5,3
    3348:	00c50633          	add	a2,a0,a2
    334c:	04079063          	bnez	a5,338c <memset+0x4c>
    3350:	0ff5f593          	andi	a1,a1,255
    3354:	00859793          	slli	a5,a1,0x8
    3358:	00b7e5b3          	or	a1,a5,a1
    335c:	01059793          	slli	a5,a1,0x10
    3360:	00b7e5b3          	or	a1,a5,a1
    3364:	00050793          	mv	a5,a0
    3368:	00c7e463          	bltu	a5,a2,3370 <memset+0x30>
    336c:	00008067          	ret
    3370:	00478793          	addi	a5,a5,4
    3374:	feb7ae23          	sw	a1,-4(a5)
    3378:	ff1ff06f          	j	3368 <memset+0x28>
    337c:	00178793          	addi	a5,a5,1
    3380:	feb78fa3          	sb	a1,-1(a5)
    3384:	fec7ece3          	bltu	a5,a2,337c <memset+0x3c>
    3388:	00008067          	ret
    338c:	00050793          	mv	a5,a0
    3390:	ff5ff06f          	j	3384 <memset+0x44>

00003394 <strlen>:
    3394:	00050793          	mv	a5,a0
    3398:	0007c703          	lbu	a4,0(a5)
    339c:	00071663          	bnez	a4,33a8 <strlen+0x14>
    33a0:	40a78533          	sub	a0,a5,a0
    33a4:	00008067          	ret
    33a8:	00178793          	addi	a5,a5,1
    33ac:	fedff06f          	j	3398 <strlen+0x4>

000033b0 <strcmp>:
    33b0:	00150513          	addi	a0,a0,1
    33b4:	fff54783          	lbu	a5,-1(a0)
    33b8:	00158593          	addi	a1,a1,1
    33bc:	fff5c703          	lbu	a4,-1(a1)
    33c0:	00078463          	beqz	a5,33c8 <strcmp+0x18>
    33c4:	fee786e3          	beq	a5,a4,33b0 <strcmp>
    33c8:	40e78533          	sub	a0,a5,a4
    33cc:	00008067          	ret

000033d0 <strcpy>:
    33d0:	00050793          	mv	a5,a0
    33d4:	00158593          	addi	a1,a1,1
    33d8:	fff5c703          	lbu	a4,-1(a1)
    33dc:	00178793          	addi	a5,a5,1
    33e0:	fee78fa3          	sb	a4,-1(a5)
    33e4:	fe0718e3          	bnez	a4,33d4 <strcpy+0x4>
    33e8:	00008067          	ret

000033ec <atol>:
    33ec:	ff010113          	addi	sp,sp,-16
    33f0:	00812423          	sw	s0,8(sp)
    33f4:	00112623          	sw	ra,12(sp)
    33f8:	00912223          	sw	s1,4(sp)
    33fc:	01212023          	sw	s2,0(sp)
    3400:	00050413          	mv	s0,a0
    3404:	02000713          	li	a4,32
    3408:	00044783          	lbu	a5,0(s0)
    340c:	04e78663          	beq	a5,a4,3458 <atol+0x6c>
    3410:	fd578713          	addi	a4,a5,-43
    3414:	0fd77713          	andi	a4,a4,253
    3418:	00000913          	li	s2,0
    341c:	00071863          	bnez	a4,342c <atol+0x40>
    3420:	fd378793          	addi	a5,a5,-45
    3424:	0017b913          	seqz	s2,a5
    3428:	00140413          	addi	s0,s0,1
    342c:	00000513          	li	a0,0
    3430:	00044483          	lbu	s1,0(s0)
    3434:	02049663          	bnez	s1,3460 <atol+0x74>
    3438:	00090463          	beqz	s2,3440 <atol+0x54>
    343c:	40a00533          	neg	a0,a0
    3440:	00c12083          	lw	ra,12(sp)
    3444:	00812403          	lw	s0,8(sp)
    3448:	00412483          	lw	s1,4(sp)
    344c:	00012903          	lw	s2,0(sp)
    3450:	01010113          	addi	sp,sp,16
    3454:	00008067          	ret
    3458:	00140413          	addi	s0,s0,1
    345c:	fadff06f          	j	3408 <atol+0x1c>
    3460:	00a00593          	li	a1,10
    3464:	954fd0ef          	jal	ra,5b8 <__mulsi3>
    3468:	fd048493          	addi	s1,s1,-48
    346c:	00140413          	addi	s0,s0,1
    3470:	00a48533          	add	a0,s1,a0
    3474:	fbdff06f          	j	3430 <atol+0x44>

00003478 <sortTask>:
    3478:	000037b7          	lui	a5,0x3
    347c:	5c078513          	addi	a0,a5,1472 # 35c0 <TEST_ARR>
    3480:	09600713          	li	a4,150
    3484:	5c078793          	addi	a5,a5,1472
    3488:	00e7a023          	sw	a4,0(a5)
    348c:	fff70713          	addi	a4,a4,-1
    3490:	00478793          	addi	a5,a5,4
    3494:	fe071ae3          	bnez	a4,3488 <sortTask+0x10>
    3498:	09500713          	li	a4,149
    349c:	00050793          	mv	a5,a0
    34a0:	00000693          	li	a3,0
    34a4:	0200006f          	j	34c4 <sortTask+0x4c>
    34a8:	0007a603          	lw	a2,0(a5)
    34ac:	0047a583          	lw	a1,4(a5)
    34b0:	00168693          	addi	a3,a3,1
    34b4:	00c5d663          	ble	a2,a1,34c0 <sortTask+0x48>
    34b8:	00b7a023          	sw	a1,0(a5)
    34bc:	00c7a223          	sw	a2,4(a5)
    34c0:	00478793          	addi	a5,a5,4
    34c4:	fee6c2e3          	blt	a3,a4,34a8 <sortTask+0x30>
    34c8:	fff70713          	addi	a4,a4,-1
    34cc:	fc0718e3          	bnez	a4,349c <sortTask+0x24>
    34d0:	0000006f          	j	34d0 <sortTask+0x58>

000034d4 <main>:
    34d4:	ff010113          	addi	sp,sp,-16
    34d8:	000037b7          	lui	a5,0x3
    34dc:	00112623          	sw	ra,12(sp)
    34e0:	5c078793          	addi	a5,a5,1472 # 35c0 <TEST_ARR>
    34e4:	09600713          	li	a4,150
    34e8:	00e7a023          	sw	a4,0(a5)
    34ec:	fff70713          	addi	a4,a4,-1
    34f0:	00478793          	addi	a5,a5,4
    34f4:	fe071ae3          	bnez	a4,34e8 <main+0x14>
    34f8:	000035b7          	lui	a1,0x3
    34fc:	00003537          	lui	a0,0x3
    3500:	00000893          	li	a7,0
    3504:	00000813          	li	a6,0
    3508:	00000793          	li	a5,0
    350c:	00100713          	li	a4,1
    3510:	00000693          	li	a3,0
    3514:	06000613          	li	a2,96
    3518:	56858593          	addi	a1,a1,1384 # 3568 <vApplicationStackOverflowHook+0x20>
    351c:	47850513          	addi	a0,a0,1144 # 3478 <sortTask>
    3520:	fb4fe0ef          	jal	ra,1cd4 <xTaskGenericCreate>
    3524:	ff5fc0ef          	jal	ra,518 <vPortSetupTimer>
    3528:	fccfe0ef          	jal	ra,1cf4 <vTaskStartScheduler>
    352c:	00c12083          	lw	ra,12(sp)
    3530:	00000513          	li	a0,0
    3534:	01010113          	addi	sp,sp,16
    3538:	00008067          	ret

0000353c <vApplicationMallocFailedHook>:
    353c:	00407073          	csrci	0x4,0
    3540:	0000006f          	j	3540 <vApplicationMallocFailedHook+0x4>

00003544 <vApplicationIdleHook>:
    3544:	00008067          	ret

00003548 <vApplicationStackOverflowHook>:
    3548:	00407073          	csrci	0x4,0
    354c:	0000006f          	j	354c <vApplicationStackOverflowHook+0x4>
