
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
      30:	0e00006f          	j	110 <TIMER_INT_HANDLER>
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
      84:	00401073          	csrw	0x4,zero
      88:	00000093          	li	ra,0
      8c:	00000113          	li	sp,0
      90:	00000193          	li	gp,0
      94:	00000213          	li	tp,0
      98:	00000293          	li	t0,0
      9c:	00000313          	li	t1,0
      a0:	00000393          	li	t2,0
      a4:	00000413          	li	s0,0
      a8:	00000493          	li	s1,0
      ac:	00000513          	li	a0,0
      b0:	00000593          	li	a1,0
      b4:	00000613          	li	a2,0
      b8:	00000693          	li	a3,0
      bc:	00000713          	li	a4,0
      c0:	00000793          	li	a5,0
      c4:	00000813          	li	a6,0
      c8:	00000893          	li	a7,0
      cc:	00000913          	li	s2,0
      d0:	00000993          	li	s3,0
      d4:	00000a13          	li	s4,0
      d8:	00000a93          	li	s5,0
      dc:	00000b13          	li	s6,0
      e0:	00000b93          	li	s7,0
      e4:	00000c13          	li	s8,0
      e8:	00000c93          	li	s9,0
      ec:	00000d13          	li	s10,0
      f0:	00000d93          	li	s11,0
      f4:	00000e13          	li	t3,0
      f8:	00000e93          	li	t4,0
      fc:	00000f13          	li	t5,0
     100:	00000f93          	li	t6,0

00000104 <init_stack>:
     104:	0001a137          	lui	sp,0x1a
     108:	7fc10113          	addi	sp,sp,2044 # 1a7fc <_fstack>
     10c:	1290306f          	j	3a34 <main>

00000110 <TIMER_INT_HANDLER>:
     110:	f8010113          	addi	sp,sp,-128
     114:	00112023          	sw	ra,0(sp)
     118:	00212223          	sw	sp,4(sp)
     11c:	00312423          	sw	gp,8(sp)
     120:	00412623          	sw	tp,12(sp)
     124:	00512823          	sw	t0,16(sp)
     128:	00612a23          	sw	t1,20(sp)
     12c:	00712c23          	sw	t2,24(sp)
     130:	00812e23          	sw	s0,28(sp)
     134:	02912023          	sw	s1,32(sp)
     138:	02a12223          	sw	a0,36(sp)
     13c:	02b12423          	sw	a1,40(sp)
     140:	02c12623          	sw	a2,44(sp)
     144:	02d12823          	sw	a3,48(sp)
     148:	02e12a23          	sw	a4,52(sp)
     14c:	02f12c23          	sw	a5,56(sp)
     150:	03012e23          	sw	a6,60(sp)
     154:	05112023          	sw	a7,64(sp)
     158:	05212223          	sw	s2,68(sp)
     15c:	05312423          	sw	s3,72(sp)
     160:	05412623          	sw	s4,76(sp)
     164:	05512823          	sw	s5,80(sp)
     168:	05612a23          	sw	s6,84(sp)
     16c:	05712c23          	sw	s7,88(sp)
     170:	05812e23          	sw	s8,92(sp)
     174:	07912023          	sw	s9,96(sp)
     178:	07a12223          	sw	s10,100(sp)
     17c:	07b12423          	sw	s11,104(sp)
     180:	07c12623          	sw	t3,108(sp)
     184:	07d12823          	sw	t4,112(sp)
     188:	07e12a23          	sw	t5,116(sp)
     18c:	07f12c23          	sw	t6,120(sp)
     190:	00004297          	auipc	t0,0x4
     194:	a502a283          	lw	t0,-1456(t0) # 3be0 <pxCurrentTCB>
     198:	0022a023          	sw	sp,0(t0)
     19c:	041012f3          	csrrw	t0,0x41,zero
     1a0:	04129073          	csrw	0x41,t0
     1a4:	06512e23          	sw	t0,124(sp)
     1a8:	3d4000ef          	jal	ra,57c <vPortSysTickHandler>
     1ac:	00004117          	auipc	sp,0x4
     1b0:	a3412103          	lw	sp,-1484(sp) # 3be0 <pxCurrentTCB>
     1b4:	00012103          	lw	sp,0(sp)
     1b8:	07c12283          	lw	t0,124(sp)
     1bc:	04129073          	csrw	0x41,t0
     1c0:	00012083          	lw	ra,0(sp)
     1c4:	00c12203          	lw	tp,12(sp)
     1c8:	01012283          	lw	t0,16(sp)
     1cc:	01412303          	lw	t1,20(sp)
     1d0:	01812383          	lw	t2,24(sp)
     1d4:	01c12403          	lw	s0,28(sp)
     1d8:	02012483          	lw	s1,32(sp)
     1dc:	02412503          	lw	a0,36(sp)
     1e0:	02812583          	lw	a1,40(sp)
     1e4:	02c12603          	lw	a2,44(sp)
     1e8:	03012683          	lw	a3,48(sp)
     1ec:	03412703          	lw	a4,52(sp)
     1f0:	03812783          	lw	a5,56(sp)
     1f4:	03c12803          	lw	a6,60(sp)
     1f8:	04012883          	lw	a7,64(sp)
     1fc:	04412903          	lw	s2,68(sp)
     200:	04812983          	lw	s3,72(sp)
     204:	04c12a03          	lw	s4,76(sp)
     208:	05012a83          	lw	s5,80(sp)
     20c:	05412b03          	lw	s6,84(sp)
     210:	05812b83          	lw	s7,88(sp)
     214:	05c12c03          	lw	s8,92(sp)
     218:	06012c83          	lw	s9,96(sp)
     21c:	06412d03          	lw	s10,100(sp)
     220:	06812d83          	lw	s11,104(sp)
     224:	06c12e03          	lw	t3,108(sp)
     228:	07012e83          	lw	t4,112(sp)
     22c:	07412f03          	lw	t5,116(sp)
     230:	07812f83          	lw	t6,120(sp)
     234:	08010113          	addi	sp,sp,128
     238:	00200073          	uret

0000023c <xPortStartScheduler>:
     23c:	2dc000ef          	jal	ra,518 <vPortSetupTimer>
     240:	00004117          	auipc	sp,0x4
     244:	9a012103          	lw	sp,-1632(sp) # 3be0 <pxCurrentTCB>
     248:	00012103          	lw	sp,0(sp)
     24c:	07c12283          	lw	t0,124(sp)
     250:	04129073          	csrw	0x41,t0
     254:	00012083          	lw	ra,0(sp)
     258:	00c12203          	lw	tp,12(sp)
     25c:	01012283          	lw	t0,16(sp)
     260:	01412303          	lw	t1,20(sp)
     264:	01812383          	lw	t2,24(sp)
     268:	01c12403          	lw	s0,28(sp)
     26c:	02012483          	lw	s1,32(sp)
     270:	02412503          	lw	a0,36(sp)
     274:	02812583          	lw	a1,40(sp)
     278:	02c12603          	lw	a2,44(sp)
     27c:	03012683          	lw	a3,48(sp)
     280:	03412703          	lw	a4,52(sp)
     284:	03812783          	lw	a5,56(sp)
     288:	03c12803          	lw	a6,60(sp)
     28c:	04012883          	lw	a7,64(sp)
     290:	04412903          	lw	s2,68(sp)
     294:	04812983          	lw	s3,72(sp)
     298:	04c12a03          	lw	s4,76(sp)
     29c:	05012a83          	lw	s5,80(sp)
     2a0:	05412b03          	lw	s6,84(sp)
     2a4:	05812b83          	lw	s7,88(sp)
     2a8:	05c12c03          	lw	s8,92(sp)
     2ac:	06012c83          	lw	s9,96(sp)
     2b0:	06412d03          	lw	s10,100(sp)
     2b4:	06812d83          	lw	s11,104(sp)
     2b8:	06c12e03          	lw	t3,108(sp)
     2bc:	07012e83          	lw	t4,112(sp)
     2c0:	07412f03          	lw	t5,116(sp)
     2c4:	07812f83          	lw	t6,120(sp)
     2c8:	08010113          	addi	sp,sp,128
     2cc:	00200073          	uret

000002d0 <vPortEndScheduler>:
     2d0:	00008067          	ret

000002d4 <vPortYield>:
     2d4:	0040f073          	csrci	0x4,1
     2d8:	f8010113          	addi	sp,sp,-128
     2dc:	00112023          	sw	ra,0(sp)
     2e0:	00212223          	sw	sp,4(sp)
     2e4:	00312423          	sw	gp,8(sp)
     2e8:	00412623          	sw	tp,12(sp)
     2ec:	00512823          	sw	t0,16(sp)
     2f0:	00612a23          	sw	t1,20(sp)
     2f4:	00712c23          	sw	t2,24(sp)
     2f8:	00812e23          	sw	s0,28(sp)
     2fc:	02912023          	sw	s1,32(sp)
     300:	02a12223          	sw	a0,36(sp)
     304:	02b12423          	sw	a1,40(sp)
     308:	02c12623          	sw	a2,44(sp)
     30c:	02d12823          	sw	a3,48(sp)
     310:	02e12a23          	sw	a4,52(sp)
     314:	02f12c23          	sw	a5,56(sp)
     318:	03012e23          	sw	a6,60(sp)
     31c:	05112023          	sw	a7,64(sp)
     320:	05212223          	sw	s2,68(sp)
     324:	05312423          	sw	s3,72(sp)
     328:	05412623          	sw	s4,76(sp)
     32c:	05512823          	sw	s5,80(sp)
     330:	05612a23          	sw	s6,84(sp)
     334:	05712c23          	sw	s7,88(sp)
     338:	05812e23          	sw	s8,92(sp)
     33c:	07912023          	sw	s9,96(sp)
     340:	07a12223          	sw	s10,100(sp)
     344:	07b12423          	sw	s11,104(sp)
     348:	07c12623          	sw	t3,108(sp)
     34c:	07d12823          	sw	t4,112(sp)
     350:	07e12a23          	sw	t5,116(sp)
     354:	07f12c23          	sw	t6,120(sp)
     358:	00004297          	auipc	t0,0x4
     35c:	8882a283          	lw	t0,-1912(t0) # 3be0 <pxCurrentTCB>
     360:	0022a023          	sw	sp,0(t0)
     364:	06112e23          	sw	ra,124(sp)
     368:	454010ef          	jal	ra,17bc <vTaskSwitchContext>
     36c:	00004117          	auipc	sp,0x4
     370:	87412103          	lw	sp,-1932(sp) # 3be0 <pxCurrentTCB>
     374:	00012103          	lw	sp,0(sp)
     378:	07c12283          	lw	t0,124(sp)
     37c:	04129073          	csrw	0x41,t0
     380:	00012083          	lw	ra,0(sp)
     384:	00c12203          	lw	tp,12(sp)
     388:	01012283          	lw	t0,16(sp)
     38c:	01412303          	lw	t1,20(sp)
     390:	01812383          	lw	t2,24(sp)
     394:	01c12403          	lw	s0,28(sp)
     398:	02012483          	lw	s1,32(sp)
     39c:	02412503          	lw	a0,36(sp)
     3a0:	02812583          	lw	a1,40(sp)
     3a4:	02c12603          	lw	a2,44(sp)
     3a8:	03012683          	lw	a3,48(sp)
     3ac:	03412703          	lw	a4,52(sp)
     3b0:	03812783          	lw	a5,56(sp)
     3b4:	03c12803          	lw	a6,60(sp)
     3b8:	04012883          	lw	a7,64(sp)
     3bc:	04412903          	lw	s2,68(sp)
     3c0:	04812983          	lw	s3,72(sp)
     3c4:	04c12a03          	lw	s4,76(sp)
     3c8:	05012a83          	lw	s5,80(sp)
     3cc:	05412b03          	lw	s6,84(sp)
     3d0:	05812b83          	lw	s7,88(sp)
     3d4:	05c12c03          	lw	s8,92(sp)
     3d8:	06012c83          	lw	s9,96(sp)
     3dc:	06412d03          	lw	s10,100(sp)
     3e0:	06812d83          	lw	s11,104(sp)
     3e4:	06c12e03          	lw	t3,108(sp)
     3e8:	07012e83          	lw	t4,112(sp)
     3ec:	07412f03          	lw	t5,116(sp)
     3f0:	07812f83          	lw	t6,120(sp)
     3f4:	08010113          	addi	sp,sp,128
     3f8:	00200073          	uret

000003fc <external_interrupt_handler>:
     3fc:	f8410113          	addi	sp,sp,-124
     400:	00112223          	sw	ra,4(sp)
     404:	00212423          	sw	sp,8(sp)
     408:	00312623          	sw	gp,12(sp)
     40c:	00412823          	sw	tp,16(sp)
     410:	00512a23          	sw	t0,20(sp)
     414:	00612c23          	sw	t1,24(sp)
     418:	00712e23          	sw	t2,28(sp)
     41c:	02812023          	sw	s0,32(sp)
     420:	02912223          	sw	s1,36(sp)
     424:	02a12423          	sw	a0,40(sp)
     428:	02b12623          	sw	a1,44(sp)
     42c:	02c12823          	sw	a2,48(sp)
     430:	02d12a23          	sw	a3,52(sp)
     434:	02e12c23          	sw	a4,56(sp)
     438:	02f12e23          	sw	a5,60(sp)
     43c:	05012023          	sw	a6,64(sp)
     440:	05112223          	sw	a7,68(sp)
     444:	05212423          	sw	s2,72(sp)
     448:	05312623          	sw	s3,76(sp)
     44c:	05412823          	sw	s4,80(sp)
     450:	05512a23          	sw	s5,84(sp)
     454:	05612c23          	sw	s6,88(sp)
     458:	05712e23          	sw	s7,92(sp)
     45c:	07812023          	sw	s8,96(sp)
     460:	07912223          	sw	s9,100(sp)
     464:	07a12423          	sw	s10,104(sp)
     468:	07b12623          	sw	s11,108(sp)
     46c:	07c12823          	sw	t3,112(sp)
     470:	07d12a23          	sw	t4,116(sp)
     474:	07e12c23          	sw	t5,120(sp)
     478:	07f12e23          	sw	t6,124(sp)
     47c:	00412083          	lw	ra,4(sp)
     480:	00812103          	lw	sp,8(sp)
     484:	00c12183          	lw	gp,12(sp)
     488:	01012203          	lw	tp,16(sp)
     48c:	01412283          	lw	t0,20(sp)
     490:	01812303          	lw	t1,24(sp)
     494:	01c12383          	lw	t2,28(sp)
     498:	02012403          	lw	s0,32(sp)
     49c:	02412483          	lw	s1,36(sp)
     4a0:	02812503          	lw	a0,40(sp)
     4a4:	02c12583          	lw	a1,44(sp)
     4a8:	03012603          	lw	a2,48(sp)
     4ac:	03412683          	lw	a3,52(sp)
     4b0:	03812703          	lw	a4,56(sp)
     4b4:	03c12783          	lw	a5,60(sp)
     4b8:	04012803          	lw	a6,64(sp)
     4bc:	04412883          	lw	a7,68(sp)
     4c0:	04812903          	lw	s2,72(sp)
     4c4:	04c12983          	lw	s3,76(sp)
     4c8:	05012a03          	lw	s4,80(sp)
     4cc:	05412a83          	lw	s5,84(sp)
     4d0:	05812b03          	lw	s6,88(sp)
     4d4:	05c12b83          	lw	s7,92(sp)
     4d8:	06012c03          	lw	s8,96(sp)
     4dc:	06412c83          	lw	s9,100(sp)
     4e0:	06812d03          	lw	s10,104(sp)
     4e4:	06c12d83          	lw	s11,108(sp)
     4e8:	07012e03          	lw	t3,112(sp)
     4ec:	07412e83          	lw	t4,116(sp)
     4f0:	07812f03          	lw	t5,120(sp)
     4f4:	07c12f83          	lw	t6,124(sp)
     4f8:	07c10113          	addi	sp,sp,124
     4fc:	00200073          	uret

00000500 <prvTaskExitError>:
     500:	fe512e23          	sw	t0,-4(sp)
     504:	004012f3          	csrrw	t0,0x4,zero
     508:	0012f293          	andi	t0,t0,1
     50c:	00429073          	csrw	0x4,t0
     510:	ffc12283          	lw	t0,-4(sp)
     514:	0000006f          	j	514 <prvTaskExitError+0x14>

00000518 <vPortSetupTimer>:
     518:	fe512e23          	sw	t0,-4(sp)
     51c:	00003797          	auipc	a5,0x3
     520:	5dc78793          	addi	a5,a5,1500 # 3af8 <timerInterruptFrequency>
     524:	0007a783          	lw	a5,0(a5)
     528:	00f002b3          	add	t0,zero,a5
     52c:	c0129073          	csrw	time,t0
     530:	ffc12283          	lw	t0,-4(sp)
     534:	fe512e23          	sw	t0,-4(sp)
     538:	004012f3          	csrrw	t0,0x4,zero
     53c:	0022e293          	ori	t0,t0,2
     540:	00429073          	csrw	0x4,t0
     544:	ffc12283          	lw	t0,-4(sp)
     548:	00008067          	ret

0000054c <vPortClearInterruptMask>:
     54c:	00451073          	csrw	0x4,a0
     550:	00008067          	ret

00000554 <vPortSetInterruptMask>:
     554:	0043f573          	csrrci	a0,0x4,7
     558:	00008067          	ret

0000055c <pxPortInitialiseStack>:
     55c:	00000797          	auipc	a5,0x0
     560:	fa478793          	addi	a5,a5,-92 # 500 <prvTaskExitError>
     564:	feb52e23          	sw	a1,-4(a0)
     568:	fac52223          	sw	a2,-92(a0)
     56c:	f8352623          	sw	gp,-116(a0)
     570:	f8f52023          	sw	a5,-128(a0)
     574:	f8050513          	addi	a0,a0,-128
     578:	00008067          	ret

0000057c <vPortSysTickHandler>:
     57c:	ff010113          	addi	sp,sp,-16
     580:	00112623          	sw	ra,12(sp)
     584:	fe512e23          	sw	t0,-4(sp)
     588:	00003797          	auipc	a5,0x3
     58c:	57078793          	addi	a5,a5,1392 # 3af8 <timerInterruptFrequency>
     590:	0007a783          	lw	a5,0(a5)
     594:	00f002b3          	add	t0,zero,a5
     598:	c0129073          	csrw	time,t0
     59c:	ffc12283          	lw	t0,-4(sp)
     5a0:	7ed000ef          	jal	ra,158c <xTaskIncrementTick>
     5a4:	00050863          	beqz	a0,5b4 <vPortSysTickHandler+0x38>
     5a8:	00c12083          	lw	ra,12(sp)
     5ac:	01010113          	addi	sp,sp,16
     5b0:	20c0106f          	j	17bc <vTaskSwitchContext>
     5b4:	00c12083          	lw	ra,12(sp)
     5b8:	01010113          	addi	sp,sp,16
     5bc:	00008067          	ret

000005c0 <__mulsi3>:
     5c0:	00050793          	mv	a5,a0
     5c4:	00000513          	li	a0,0
     5c8:	00079463          	bnez	a5,5d0 <__mulsi3+0x10>
     5cc:	00008067          	ret
     5d0:	0017f713          	andi	a4,a5,1
     5d4:	00070463          	beqz	a4,5dc <__mulsi3+0x1c>
     5d8:	00b50533          	add	a0,a0,a1
     5dc:	0017d793          	srli	a5,a5,0x1
     5e0:	00159593          	slli	a1,a1,0x1
     5e4:	fe5ff06f          	j	5c8 <__mulsi3+0x8>

000005e8 <vListInitialise>:
     5e8:	00850793          	addi	a5,a0,8
     5ec:	fff00713          	li	a4,-1
     5f0:	00f52223          	sw	a5,4(a0)
     5f4:	00e52423          	sw	a4,8(a0)
     5f8:	00f52623          	sw	a5,12(a0)
     5fc:	00f52823          	sw	a5,16(a0)
     600:	00052023          	sw	zero,0(a0)
     604:	00008067          	ret

00000608 <vListInitialiseItem>:
     608:	00052823          	sw	zero,16(a0)
     60c:	00008067          	ret

00000610 <vListInsertEnd>:
     610:	00452783          	lw	a5,4(a0)
     614:	00f5a223          	sw	a5,4(a1)
     618:	0087a703          	lw	a4,8(a5)
     61c:	00e5a423          	sw	a4,8(a1)
     620:	0087a703          	lw	a4,8(a5)
     624:	00b72223          	sw	a1,4(a4)
     628:	00b7a423          	sw	a1,8(a5)
     62c:	00a5a823          	sw	a0,16(a1)
     630:	00052783          	lw	a5,0(a0)
     634:	00178793          	addi	a5,a5,1
     638:	00f52023          	sw	a5,0(a0)
     63c:	00008067          	ret

00000640 <vListInsert>:
     640:	0005a703          	lw	a4,0(a1)
     644:	fff00693          	li	a3,-1
     648:	00850793          	addi	a5,a0,8
     64c:	02d71a63          	bne	a4,a3,680 <vListInsert+0x40>
     650:	01052783          	lw	a5,16(a0)
     654:	0047a703          	lw	a4,4(a5)
     658:	00e5a223          	sw	a4,4(a1)
     65c:	00b72423          	sw	a1,8(a4)
     660:	00f5a423          	sw	a5,8(a1)
     664:	00b7a223          	sw	a1,4(a5)
     668:	00a5a823          	sw	a0,16(a1)
     66c:	00052783          	lw	a5,0(a0)
     670:	00178793          	addi	a5,a5,1
     674:	00f52023          	sw	a5,0(a0)
     678:	00008067          	ret
     67c:	00068793          	mv	a5,a3
     680:	0047a683          	lw	a3,4(a5)
     684:	0006a603          	lw	a2,0(a3)
     688:	fec77ae3          	bleu	a2,a4,67c <vListInsert+0x3c>
     68c:	fc9ff06f          	j	654 <vListInsert+0x14>

00000690 <uxListRemove>:
     690:	00452703          	lw	a4,4(a0)
     694:	00852683          	lw	a3,8(a0)
     698:	01052783          	lw	a5,16(a0)
     69c:	00d72423          	sw	a3,8(a4)
     6a0:	00852703          	lw	a4,8(a0)
     6a4:	00452683          	lw	a3,4(a0)
     6a8:	00d72223          	sw	a3,4(a4)
     6ac:	0047a703          	lw	a4,4(a5)
     6b0:	00a71663          	bne	a4,a0,6bc <uxListRemove+0x2c>
     6b4:	00852703          	lw	a4,8(a0)
     6b8:	00e7a223          	sw	a4,4(a5)
     6bc:	00052823          	sw	zero,16(a0)
     6c0:	0007a503          	lw	a0,0(a5)
     6c4:	fff50513          	addi	a0,a0,-1
     6c8:	00a7a023          	sw	a0,0(a5)
     6cc:	00008067          	ret

000006d0 <prvCopyDataToQueue>:
     6d0:	ff010113          	addi	sp,sp,-16
     6d4:	00812423          	sw	s0,8(sp)
     6d8:	00912223          	sw	s1,4(sp)
     6dc:	00112623          	sw	ra,12(sp)
     6e0:	00060493          	mv	s1,a2
     6e4:	04052603          	lw	a2,64(a0)
     6e8:	00050413          	mv	s0,a0
     6ec:	02060863          	beqz	a2,71c <prvCopyDataToQueue+0x4c>
     6f0:	04049863          	bnez	s1,740 <prvCopyDataToQueue+0x70>
     6f4:	00852503          	lw	a0,8(a0)
     6f8:	1a8030ef          	jal	ra,38a0 <memcpy>
     6fc:	00842783          	lw	a5,8(s0)
     700:	04042703          	lw	a4,64(s0)
     704:	00e787b3          	add	a5,a5,a4
     708:	00442703          	lw	a4,4(s0)
     70c:	00f42423          	sw	a5,8(s0)
     710:	00e7e663          	bltu	a5,a4,71c <prvCopyDataToQueue+0x4c>
     714:	00042783          	lw	a5,0(s0)
     718:	00f42423          	sw	a5,8(s0)
     71c:	03842783          	lw	a5,56(s0)
     720:	00000513          	li	a0,0
     724:	00178793          	addi	a5,a5,1
     728:	02f42c23          	sw	a5,56(s0)
     72c:	00c12083          	lw	ra,12(sp)
     730:	00812403          	lw	s0,8(sp)
     734:	00412483          	lw	s1,4(sp)
     738:	01010113          	addi	sp,sp,16
     73c:	00008067          	ret
     740:	00c52503          	lw	a0,12(a0)
     744:	15c030ef          	jal	ra,38a0 <memcpy>
     748:	04042783          	lw	a5,64(s0)
     74c:	00c42703          	lw	a4,12(s0)
     750:	00042683          	lw	a3,0(s0)
     754:	40f007b3          	neg	a5,a5
     758:	00f70733          	add	a4,a4,a5
     75c:	00e42623          	sw	a4,12(s0)
     760:	00d77863          	bleu	a3,a4,770 <prvCopyDataToQueue+0xa0>
     764:	00442703          	lw	a4,4(s0)
     768:	00f707b3          	add	a5,a4,a5
     76c:	00f42623          	sw	a5,12(s0)
     770:	00200793          	li	a5,2
     774:	faf494e3          	bne	s1,a5,71c <prvCopyDataToQueue+0x4c>
     778:	03842783          	lw	a5,56(s0)
     77c:	fa0780e3          	beqz	a5,71c <prvCopyDataToQueue+0x4c>
     780:	03842783          	lw	a5,56(s0)
     784:	fff78793          	addi	a5,a5,-1
     788:	02f42c23          	sw	a5,56(s0)
     78c:	f91ff06f          	j	71c <prvCopyDataToQueue+0x4c>

00000790 <prvCopyDataFromQueue>:
     790:	00050793          	mv	a5,a0
     794:	0407a603          	lw	a2,64(a5)
     798:	00058513          	mv	a0,a1
     79c:	02060463          	beqz	a2,7c4 <prvCopyDataFromQueue+0x34>
     7a0:	00c7a703          	lw	a4,12(a5)
     7a4:	0047a683          	lw	a3,4(a5)
     7a8:	00c70733          	add	a4,a4,a2
     7ac:	00e7a623          	sw	a4,12(a5)
     7b0:	00d76663          	bltu	a4,a3,7bc <prvCopyDataFromQueue+0x2c>
     7b4:	0007a703          	lw	a4,0(a5)
     7b8:	00e7a623          	sw	a4,12(a5)
     7bc:	00c7a583          	lw	a1,12(a5)
     7c0:	0e00306f          	j	38a0 <memcpy>
     7c4:	00008067          	ret

000007c8 <prvUnlockQueue>:
     7c8:	ff010113          	addi	sp,sp,-16
     7cc:	00812423          	sw	s0,8(sp)
     7d0:	00050413          	mv	s0,a0
     7d4:	00912223          	sw	s1,4(sp)
     7d8:	00112623          	sw	ra,12(sp)
     7dc:	02440493          	addi	s1,s0,36
     7e0:	4c4010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     7e4:	04842783          	lw	a5,72(s0)
     7e8:	02f04e63          	bgtz	a5,824 <prvUnlockQueue+0x5c>
     7ec:	fff00793          	li	a5,-1
     7f0:	04f42423          	sw	a5,72(s0)
     7f4:	4f4010ef          	jal	ra,1ce8 <vTaskExitCritical>
     7f8:	01040493          	addi	s1,s0,16
     7fc:	4a8010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     800:	04442783          	lw	a5,68(s0)
     804:	04f04463          	bgtz	a5,84c <prvUnlockQueue+0x84>
     808:	fff00793          	li	a5,-1
     80c:	04f42223          	sw	a5,68(s0)
     810:	00812403          	lw	s0,8(sp)
     814:	00c12083          	lw	ra,12(sp)
     818:	00412483          	lw	s1,4(sp)
     81c:	01010113          	addi	sp,sp,16
     820:	4c80106f          	j	1ce8 <vTaskExitCritical>
     824:	02442783          	lw	a5,36(s0)
     828:	fc0782e3          	beqz	a5,7ec <prvUnlockQueue+0x24>
     82c:	00048513          	mv	a0,s1
     830:	228010ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     834:	00050463          	beqz	a0,83c <prvUnlockQueue+0x74>
     838:	430010ef          	jal	ra,1c68 <vTaskMissedYield>
     83c:	04842783          	lw	a5,72(s0)
     840:	fff78793          	addi	a5,a5,-1
     844:	04f42423          	sw	a5,72(s0)
     848:	f9dff06f          	j	7e4 <prvUnlockQueue+0x1c>
     84c:	01042783          	lw	a5,16(s0)
     850:	fa078ce3          	beqz	a5,808 <prvUnlockQueue+0x40>
     854:	00048513          	mv	a0,s1
     858:	200010ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     85c:	00050463          	beqz	a0,864 <prvUnlockQueue+0x9c>
     860:	408010ef          	jal	ra,1c68 <vTaskMissedYield>
     864:	04442783          	lw	a5,68(s0)
     868:	fff78793          	addi	a5,a5,-1
     86c:	04f42223          	sw	a5,68(s0)
     870:	f91ff06f          	j	800 <prvUnlockQueue+0x38>

00000874 <xQueueGenericReset>:
     874:	00051e63          	bnez	a0,890 <xQueueGenericReset+0x1c>
     878:	fe512e23          	sw	t0,-4(sp)
     87c:	004012f3          	csrrw	t0,0x4,zero
     880:	0012f293          	andi	t0,t0,1
     884:	00429073          	csrw	0x4,t0
     888:	ffc12283          	lw	t0,-4(sp)
     88c:	0000006f          	j	88c <xQueueGenericReset+0x18>
     890:	fe010113          	addi	sp,sp,-32
     894:	00812c23          	sw	s0,24(sp)
     898:	00050413          	mv	s0,a0
     89c:	00112e23          	sw	ra,28(sp)
     8a0:	00912a23          	sw	s1,20(sp)
     8a4:	01212823          	sw	s2,16(sp)
     8a8:	01312623          	sw	s3,12(sp)
     8ac:	00058913          	mv	s2,a1
     8b0:	3f4010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     8b4:	04042983          	lw	s3,64(s0)
     8b8:	03c42583          	lw	a1,60(s0)
     8bc:	00042483          	lw	s1,0(s0)
     8c0:	00098513          	mv	a0,s3
     8c4:	cfdff0ef          	jal	ra,5c0 <__mulsi3>
     8c8:	00a487b3          	add	a5,s1,a0
     8cc:	02042c23          	sw	zero,56(s0)
     8d0:	00f42223          	sw	a5,4(s0)
     8d4:	41350533          	sub	a0,a0,s3
     8d8:	fff00793          	li	a5,-1
     8dc:	00942423          	sw	s1,8(s0)
     8e0:	04f42223          	sw	a5,68(s0)
     8e4:	00a484b3          	add	s1,s1,a0
     8e8:	00942623          	sw	s1,12(s0)
     8ec:	04f42423          	sw	a5,72(s0)
     8f0:	04091263          	bnez	s2,934 <xQueueGenericReset+0xc0>
     8f4:	01042783          	lw	a5,16(s0)
     8f8:	00078c63          	beqz	a5,910 <xQueueGenericReset+0x9c>
     8fc:	01040513          	addi	a0,s0,16
     900:	158010ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     904:	00100793          	li	a5,1
     908:	00f51463          	bne	a0,a5,910 <xQueueGenericReset+0x9c>
     90c:	9c9ff0ef          	jal	ra,2d4 <vPortYield>
     910:	3d8010ef          	jal	ra,1ce8 <vTaskExitCritical>
     914:	01c12083          	lw	ra,28(sp)
     918:	01812403          	lw	s0,24(sp)
     91c:	01412483          	lw	s1,20(sp)
     920:	01012903          	lw	s2,16(sp)
     924:	00c12983          	lw	s3,12(sp)
     928:	00100513          	li	a0,1
     92c:	02010113          	addi	sp,sp,32
     930:	00008067          	ret
     934:	01040513          	addi	a0,s0,16
     938:	cb1ff0ef          	jal	ra,5e8 <vListInitialise>
     93c:	02440513          	addi	a0,s0,36
     940:	ca9ff0ef          	jal	ra,5e8 <vListInitialise>
     944:	fcdff06f          	j	910 <xQueueGenericReset+0x9c>

00000948 <xQueueGenericCreate>:
     948:	00051e63          	bnez	a0,964 <xQueueGenericCreate+0x1c>
     94c:	fe512e23          	sw	t0,-4(sp)
     950:	004012f3          	csrrw	t0,0x4,zero
     954:	0012f293          	andi	t0,t0,1
     958:	00429073          	csrw	0x4,t0
     95c:	ffc12283          	lw	t0,-4(sp)
     960:	0000006f          	j	960 <xQueueGenericCreate+0x18>
     964:	ff010113          	addi	sp,sp,-16
     968:	00912223          	sw	s1,4(sp)
     96c:	01212023          	sw	s2,0(sp)
     970:	00112623          	sw	ra,12(sp)
     974:	00812423          	sw	s0,8(sp)
     978:	00050913          	mv	s2,a0
     97c:	00058493          	mv	s1,a1
     980:	00000793          	li	a5,0
     984:	00058663          	beqz	a1,990 <xQueueGenericCreate+0x48>
     988:	c39ff0ef          	jal	ra,5c0 <__mulsi3>
     98c:	00150793          	addi	a5,a0,1
     990:	04c78513          	addi	a0,a5,76
     994:	519020ef          	jal	ra,36ac <pvPortMalloc>
     998:	00050413          	mv	s0,a0
     99c:	00051e63          	bnez	a0,9b8 <xQueueGenericCreate+0x70>
     9a0:	fe512e23          	sw	t0,-4(sp)
     9a4:	004012f3          	csrrw	t0,0x4,zero
     9a8:	0012f293          	andi	t0,t0,1
     9ac:	00429073          	csrw	0x4,t0
     9b0:	ffc12283          	lw	t0,-4(sp)
     9b4:	0000006f          	j	9b4 <xQueueGenericCreate+0x6c>
     9b8:	02049c63          	bnez	s1,9f0 <xQueueGenericCreate+0xa8>
     9bc:	00a42023          	sw	a0,0(s0)
     9c0:	03242e23          	sw	s2,60(s0)
     9c4:	04942023          	sw	s1,64(s0)
     9c8:	00040513          	mv	a0,s0
     9cc:	00100593          	li	a1,1
     9d0:	ea5ff0ef          	jal	ra,874 <xQueueGenericReset>
     9d4:	00040513          	mv	a0,s0
     9d8:	00c12083          	lw	ra,12(sp)
     9dc:	00812403          	lw	s0,8(sp)
     9e0:	00412483          	lw	s1,4(sp)
     9e4:	00012903          	lw	s2,0(sp)
     9e8:	01010113          	addi	sp,sp,16
     9ec:	00008067          	ret
     9f0:	04c50793          	addi	a5,a0,76
     9f4:	00f52023          	sw	a5,0(a0)
     9f8:	fc9ff06f          	j	9c0 <xQueueGenericCreate+0x78>

000009fc <xQueueGenericSend>:
     9fc:	fc010113          	addi	sp,sp,-64
     a00:	02112e23          	sw	ra,60(sp)
     a04:	02812c23          	sw	s0,56(sp)
     a08:	02912a23          	sw	s1,52(sp)
     a0c:	03212823          	sw	s2,48(sp)
     a10:	03312623          	sw	s3,44(sp)
     a14:	03412423          	sw	s4,40(sp)
     a18:	03512223          	sw	s5,36(sp)
     a1c:	03612023          	sw	s6,32(sp)
     a20:	00c12623          	sw	a2,12(sp)
     a24:	00051e63          	bnez	a0,a40 <xQueueGenericSend+0x44>
     a28:	fe512e23          	sw	t0,-4(sp)
     a2c:	004012f3          	csrrw	t0,0x4,zero
     a30:	0012f293          	andi	t0,t0,1
     a34:	00429073          	csrw	0x4,t0
     a38:	ffc12283          	lw	t0,-4(sp)
     a3c:	0000006f          	j	a3c <xQueueGenericSend+0x40>
     a40:	02059263          	bnez	a1,a64 <xQueueGenericSend+0x68>
     a44:	04052783          	lw	a5,64(a0)
     a48:	00078e63          	beqz	a5,a64 <xQueueGenericSend+0x68>
     a4c:	fe512e23          	sw	t0,-4(sp)
     a50:	004012f3          	csrrw	t0,0x4,zero
     a54:	0012f293          	andi	t0,t0,1
     a58:	00429073          	csrw	0x4,t0
     a5c:	ffc12283          	lw	t0,-4(sp)
     a60:	0000006f          	j	a60 <xQueueGenericSend+0x64>
     a64:	00200793          	li	a5,2
     a68:	02f69463          	bne	a3,a5,a90 <xQueueGenericSend+0x94>
     a6c:	03c52703          	lw	a4,60(a0)
     a70:	00100793          	li	a5,1
     a74:	00f70e63          	beq	a4,a5,a90 <xQueueGenericSend+0x94>
     a78:	fe512e23          	sw	t0,-4(sp)
     a7c:	004012f3          	csrrw	t0,0x4,zero
     a80:	0012f293          	andi	t0,t0,1
     a84:	00429073          	csrw	0x4,t0
     a88:	ffc12283          	lw	t0,-4(sp)
     a8c:	0000006f          	j	a8c <xQueueGenericSend+0x90>
     a90:	00068493          	mv	s1,a3
     a94:	00058a13          	mv	s4,a1
     a98:	00050413          	mv	s0,a0
     a9c:	1dc010ef          	jal	ra,1c78 <xTaskGetSchedulerState>
     aa0:	02051263          	bnez	a0,ac4 <xQueueGenericSend+0xc8>
     aa4:	00c12783          	lw	a5,12(sp)
     aa8:	00078e63          	beqz	a5,ac4 <xQueueGenericSend+0xc8>
     aac:	fe512e23          	sw	t0,-4(sp)
     ab0:	004012f3          	csrrw	t0,0x4,zero
     ab4:	0012f293          	andi	t0,t0,1
     ab8:	00429073          	csrw	0x4,t0
     abc:	ffc12283          	lw	t0,-4(sp)
     ac0:	0000006f          	j	ac0 <xQueueGenericSend+0xc4>
     ac4:	00000913          	li	s2,0
     ac8:	00200a93          	li	s5,2
     acc:	fff00993          	li	s3,-1
     ad0:	01040b13          	addi	s6,s0,16
     ad4:	0b00006f          	j	b84 <xQueueGenericSend+0x188>
     ad8:	0e050663          	beqz	a0,bc4 <xQueueGenericSend+0x1c8>
     adc:	0e40006f          	j	bc0 <xQueueGenericSend+0x1c4>
     ae0:	00c12783          	lw	a5,12(sp)
     ae4:	00079863          	bnez	a5,af4 <xQueueGenericSend+0xf8>
     ae8:	200010ef          	jal	ra,1ce8 <vTaskExitCritical>
     aec:	00000513          	li	a0,0
     af0:	0dc0006f          	j	bcc <xQueueGenericSend+0x1d0>
     af4:	00091663          	bnez	s2,b00 <xQueueGenericSend+0x104>
     af8:	01810513          	addi	a0,sp,24
     afc:	12c010ef          	jal	ra,1c28 <vTaskSetTimeOutState>
     b00:	1e8010ef          	jal	ra,1ce8 <vTaskExitCritical>
     b04:	22d000ef          	jal	ra,1530 <vTaskSuspendAll>
     b08:	19c010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     b0c:	04442783          	lw	a5,68(s0)
     b10:	01379463          	bne	a5,s3,b18 <xQueueGenericSend+0x11c>
     b14:	04042223          	sw	zero,68(s0)
     b18:	04842783          	lw	a5,72(s0)
     b1c:	01379463          	bne	a5,s3,b24 <xQueueGenericSend+0x128>
     b20:	04042423          	sw	zero,72(s0)
     b24:	1c4010ef          	jal	ra,1ce8 <vTaskExitCritical>
     b28:	00c10593          	addi	a1,sp,12
     b2c:	01810513          	addi	a0,sp,24
     b30:	774010ef          	jal	ra,22a4 <xTaskCheckForTimeOut>
     b34:	0c051063          	bnez	a0,bf4 <xQueueGenericSend+0x1f8>
     b38:	16c010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     b3c:	03842703          	lw	a4,56(s0)
     b40:	03c42783          	lw	a5,60(s0)
     b44:	02f71663          	bne	a4,a5,b70 <xQueueGenericSend+0x174>
     b48:	1a0010ef          	jal	ra,1ce8 <vTaskExitCritical>
     b4c:	00c12583          	lw	a1,12(sp)
     b50:	000b0513          	mv	a0,s6
     b54:	571000ef          	jal	ra,18c4 <vTaskPlaceOnEventList>
     b58:	00040513          	mv	a0,s0
     b5c:	c6dff0ef          	jal	ra,7c8 <prvUnlockQueue>
     b60:	578010ef          	jal	ra,20d8 <xTaskResumeAll>
     b64:	00051e63          	bnez	a0,b80 <xQueueGenericSend+0x184>
     b68:	f6cff0ef          	jal	ra,2d4 <vPortYield>
     b6c:	0140006f          	j	b80 <xQueueGenericSend+0x184>
     b70:	178010ef          	jal	ra,1ce8 <vTaskExitCritical>
     b74:	00040513          	mv	a0,s0
     b78:	c51ff0ef          	jal	ra,7c8 <prvUnlockQueue>
     b7c:	55c010ef          	jal	ra,20d8 <xTaskResumeAll>
     b80:	00100913          	li	s2,1
     b84:	120010ef          	jal	ra,1ca4 <vTaskEnterCritical>
     b88:	03842703          	lw	a4,56(s0)
     b8c:	03c42783          	lw	a5,60(s0)
     b90:	00f76463          	bltu	a4,a5,b98 <xQueueGenericSend+0x19c>
     b94:	f55496e3          	bne	s1,s5,ae0 <xQueueGenericSend+0xe4>
     b98:	00048613          	mv	a2,s1
     b9c:	000a0593          	mv	a1,s4
     ba0:	00040513          	mv	a0,s0
     ba4:	b2dff0ef          	jal	ra,6d0 <prvCopyDataToQueue>
     ba8:	02442783          	lw	a5,36(s0)
     bac:	f20786e3          	beqz	a5,ad8 <xQueueGenericSend+0xdc>
     bb0:	02440513          	addi	a0,s0,36
     bb4:	6a5000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     bb8:	00100793          	li	a5,1
     bbc:	00f51463          	bne	a0,a5,bc4 <xQueueGenericSend+0x1c8>
     bc0:	f14ff0ef          	jal	ra,2d4 <vPortYield>
     bc4:	124010ef          	jal	ra,1ce8 <vTaskExitCritical>
     bc8:	00100513          	li	a0,1
     bcc:	03c12083          	lw	ra,60(sp)
     bd0:	03812403          	lw	s0,56(sp)
     bd4:	03412483          	lw	s1,52(sp)
     bd8:	03012903          	lw	s2,48(sp)
     bdc:	02c12983          	lw	s3,44(sp)
     be0:	02812a03          	lw	s4,40(sp)
     be4:	02412a83          	lw	s5,36(sp)
     be8:	02012b03          	lw	s6,32(sp)
     bec:	04010113          	addi	sp,sp,64
     bf0:	00008067          	ret
     bf4:	00040513          	mv	a0,s0
     bf8:	bd1ff0ef          	jal	ra,7c8 <prvUnlockQueue>
     bfc:	4dc010ef          	jal	ra,20d8 <xTaskResumeAll>
     c00:	eedff06f          	j	aec <xQueueGenericSend+0xf0>

00000c04 <xQueueGenericSendFromISR>:
     c04:	00051e63          	bnez	a0,c20 <xQueueGenericSendFromISR+0x1c>
     c08:	fe512e23          	sw	t0,-4(sp)
     c0c:	004012f3          	csrrw	t0,0x4,zero
     c10:	0012f293          	andi	t0,t0,1
     c14:	00429073          	csrw	0x4,t0
     c18:	ffc12283          	lw	t0,-4(sp)
     c1c:	0000006f          	j	c1c <xQueueGenericSendFromISR+0x18>
     c20:	02059263          	bnez	a1,c44 <xQueueGenericSendFromISR+0x40>
     c24:	04052783          	lw	a5,64(a0)
     c28:	00078e63          	beqz	a5,c44 <xQueueGenericSendFromISR+0x40>
     c2c:	fe512e23          	sw	t0,-4(sp)
     c30:	004012f3          	csrrw	t0,0x4,zero
     c34:	0012f293          	andi	t0,t0,1
     c38:	00429073          	csrw	0x4,t0
     c3c:	ffc12283          	lw	t0,-4(sp)
     c40:	0000006f          	j	c40 <xQueueGenericSendFromISR+0x3c>
     c44:	00200793          	li	a5,2
     c48:	02f69463          	bne	a3,a5,c70 <xQueueGenericSendFromISR+0x6c>
     c4c:	03c52703          	lw	a4,60(a0)
     c50:	00100793          	li	a5,1
     c54:	00f70e63          	beq	a4,a5,c70 <xQueueGenericSendFromISR+0x6c>
     c58:	fe512e23          	sw	t0,-4(sp)
     c5c:	004012f3          	csrrw	t0,0x4,zero
     c60:	0012f293          	andi	t0,t0,1
     c64:	00429073          	csrw	0x4,t0
     c68:	ffc12283          	lw	t0,-4(sp)
     c6c:	0000006f          	j	c6c <xQueueGenericSendFromISR+0x68>
     c70:	fd010113          	addi	sp,sp,-48
     c74:	02812423          	sw	s0,40(sp)
     c78:	02912223          	sw	s1,36(sp)
     c7c:	00050413          	mv	s0,a0
     c80:	01312e23          	sw	s3,28(sp)
     c84:	01412c23          	sw	s4,24(sp)
     c88:	00b12623          	sw	a1,12(sp)
     c8c:	02112623          	sw	ra,44(sp)
     c90:	03212023          	sw	s2,32(sp)
     c94:	00068493          	mv	s1,a3
     c98:	00060993          	mv	s3,a2
     c9c:	8b9ff0ef          	jal	ra,554 <vPortSetInterruptMask>
     ca0:	03842703          	lw	a4,56(s0)
     ca4:	03c42783          	lw	a5,60(s0)
     ca8:	00050a13          	mv	s4,a0
     cac:	00c12583          	lw	a1,12(sp)
     cb0:	00f76863          	bltu	a4,a5,cc0 <xQueueGenericSendFromISR+0xbc>
     cb4:	00200793          	li	a5,2
     cb8:	00000913          	li	s2,0
     cbc:	02f49463          	bne	s1,a5,ce4 <xQueueGenericSendFromISR+0xe0>
     cc0:	00048613          	mv	a2,s1
     cc4:	00040513          	mv	a0,s0
     cc8:	a09ff0ef          	jal	ra,6d0 <prvCopyDataToQueue>
     ccc:	04842703          	lw	a4,72(s0)
     cd0:	fff00793          	li	a5,-1
     cd4:	04f71c63          	bne	a4,a5,d2c <xQueueGenericSendFromISR+0x128>
     cd8:	02442783          	lw	a5,36(s0)
     cdc:	02079a63          	bnez	a5,d10 <xQueueGenericSendFromISR+0x10c>
     ce0:	00100913          	li	s2,1
     ce4:	000a0513          	mv	a0,s4
     ce8:	865ff0ef          	jal	ra,54c <vPortClearInterruptMask>
     cec:	02c12083          	lw	ra,44(sp)
     cf0:	02812403          	lw	s0,40(sp)
     cf4:	00090513          	mv	a0,s2
     cf8:	02412483          	lw	s1,36(sp)
     cfc:	02012903          	lw	s2,32(sp)
     d00:	01c12983          	lw	s3,28(sp)
     d04:	01812a03          	lw	s4,24(sp)
     d08:	03010113          	addi	sp,sp,48
     d0c:	00008067          	ret
     d10:	02440513          	addi	a0,s0,36
     d14:	545000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     d18:	fc0504e3          	beqz	a0,ce0 <xQueueGenericSendFromISR+0xdc>
     d1c:	fc0982e3          	beqz	s3,ce0 <xQueueGenericSendFromISR+0xdc>
     d20:	00100793          	li	a5,1
     d24:	00f9a023          	sw	a5,0(s3)
     d28:	fb9ff06f          	j	ce0 <xQueueGenericSendFromISR+0xdc>
     d2c:	04842783          	lw	a5,72(s0)
     d30:	00178793          	addi	a5,a5,1
     d34:	04f42423          	sw	a5,72(s0)
     d38:	fa9ff06f          	j	ce0 <xQueueGenericSendFromISR+0xdc>

00000d3c <xQueueGiveFromISR>:
     d3c:	00051e63          	bnez	a0,d58 <xQueueGiveFromISR+0x1c>
     d40:	fe512e23          	sw	t0,-4(sp)
     d44:	004012f3          	csrrw	t0,0x4,zero
     d48:	0012f293          	andi	t0,t0,1
     d4c:	00429073          	csrw	0x4,t0
     d50:	ffc12283          	lw	t0,-4(sp)
     d54:	0000006f          	j	d54 <xQueueGiveFromISR+0x18>
     d58:	04052783          	lw	a5,64(a0)
     d5c:	00078e63          	beqz	a5,d78 <xQueueGiveFromISR+0x3c>
     d60:	fe512e23          	sw	t0,-4(sp)
     d64:	004012f3          	csrrw	t0,0x4,zero
     d68:	0012f293          	andi	t0,t0,1
     d6c:	00429073          	csrw	0x4,t0
     d70:	ffc12283          	lw	t0,-4(sp)
     d74:	0000006f          	j	d74 <xQueueGiveFromISR+0x38>
     d78:	00052783          	lw	a5,0(a0)
     d7c:	02079263          	bnez	a5,da0 <xQueueGiveFromISR+0x64>
     d80:	00452783          	lw	a5,4(a0)
     d84:	00078e63          	beqz	a5,da0 <xQueueGiveFromISR+0x64>
     d88:	fe512e23          	sw	t0,-4(sp)
     d8c:	004012f3          	csrrw	t0,0x4,zero
     d90:	0012f293          	andi	t0,t0,1
     d94:	00429073          	csrw	0x4,t0
     d98:	ffc12283          	lw	t0,-4(sp)
     d9c:	0000006f          	j	d9c <xQueueGiveFromISR+0x60>
     da0:	fe010113          	addi	sp,sp,-32
     da4:	00812c23          	sw	s0,24(sp)
     da8:	00912a23          	sw	s1,20(sp)
     dac:	00050413          	mv	s0,a0
     db0:	01212823          	sw	s2,16(sp)
     db4:	01312623          	sw	s3,12(sp)
     db8:	00112e23          	sw	ra,28(sp)
     dbc:	00058913          	mv	s2,a1
     dc0:	f94ff0ef          	jal	ra,554 <vPortSetInterruptMask>
     dc4:	03842703          	lw	a4,56(s0)
     dc8:	03c42783          	lw	a5,60(s0)
     dcc:	00050993          	mv	s3,a0
     dd0:	00000493          	li	s1,0
     dd4:	02f77463          	bleu	a5,a4,dfc <xQueueGiveFromISR+0xc0>
     dd8:	03842783          	lw	a5,56(s0)
     ddc:	00178793          	addi	a5,a5,1
     de0:	02f42c23          	sw	a5,56(s0)
     de4:	04842703          	lw	a4,72(s0)
     de8:	fff00793          	li	a5,-1
     dec:	04f71a63          	bne	a4,a5,e40 <xQueueGiveFromISR+0x104>
     df0:	02442783          	lw	a5,36(s0)
     df4:	02079863          	bnez	a5,e24 <xQueueGiveFromISR+0xe8>
     df8:	00100493          	li	s1,1
     dfc:	00098513          	mv	a0,s3
     e00:	f4cff0ef          	jal	ra,54c <vPortClearInterruptMask>
     e04:	01c12083          	lw	ra,28(sp)
     e08:	01812403          	lw	s0,24(sp)
     e0c:	00048513          	mv	a0,s1
     e10:	01012903          	lw	s2,16(sp)
     e14:	01412483          	lw	s1,20(sp)
     e18:	00c12983          	lw	s3,12(sp)
     e1c:	02010113          	addi	sp,sp,32
     e20:	00008067          	ret
     e24:	02440513          	addi	a0,s0,36
     e28:	431000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     e2c:	fc0506e3          	beqz	a0,df8 <xQueueGiveFromISR+0xbc>
     e30:	fc0904e3          	beqz	s2,df8 <xQueueGiveFromISR+0xbc>
     e34:	00100793          	li	a5,1
     e38:	00f92023          	sw	a5,0(s2)
     e3c:	fbdff06f          	j	df8 <xQueueGiveFromISR+0xbc>
     e40:	04842783          	lw	a5,72(s0)
     e44:	00178793          	addi	a5,a5,1
     e48:	04f42423          	sw	a5,72(s0)
     e4c:	fadff06f          	j	df8 <xQueueGiveFromISR+0xbc>

00000e50 <xQueueGenericReceive>:
     e50:	fc010113          	addi	sp,sp,-64
     e54:	02112e23          	sw	ra,60(sp)
     e58:	02812c23          	sw	s0,56(sp)
     e5c:	02912a23          	sw	s1,52(sp)
     e60:	03212823          	sw	s2,48(sp)
     e64:	03312623          	sw	s3,44(sp)
     e68:	03412423          	sw	s4,40(sp)
     e6c:	03512223          	sw	s5,36(sp)
     e70:	00c12623          	sw	a2,12(sp)
     e74:	00051e63          	bnez	a0,e90 <xQueueGenericReceive+0x40>
     e78:	fe512e23          	sw	t0,-4(sp)
     e7c:	004012f3          	csrrw	t0,0x4,zero
     e80:	0012f293          	andi	t0,t0,1
     e84:	00429073          	csrw	0x4,t0
     e88:	ffc12283          	lw	t0,-4(sp)
     e8c:	0000006f          	j	e8c <xQueueGenericReceive+0x3c>
     e90:	02059263          	bnez	a1,eb4 <xQueueGenericReceive+0x64>
     e94:	04052783          	lw	a5,64(a0)
     e98:	00078e63          	beqz	a5,eb4 <xQueueGenericReceive+0x64>
     e9c:	fe512e23          	sw	t0,-4(sp)
     ea0:	004012f3          	csrrw	t0,0x4,zero
     ea4:	0012f293          	andi	t0,t0,1
     ea8:	00429073          	csrw	0x4,t0
     eac:	ffc12283          	lw	t0,-4(sp)
     eb0:	0000006f          	j	eb0 <xQueueGenericReceive+0x60>
     eb4:	00068a13          	mv	s4,a3
     eb8:	00058993          	mv	s3,a1
     ebc:	00050413          	mv	s0,a0
     ec0:	5b9000ef          	jal	ra,1c78 <xTaskGetSchedulerState>
     ec4:	02051263          	bnez	a0,ee8 <xQueueGenericReceive+0x98>
     ec8:	00c12783          	lw	a5,12(sp)
     ecc:	00078e63          	beqz	a5,ee8 <xQueueGenericReceive+0x98>
     ed0:	fe512e23          	sw	t0,-4(sp)
     ed4:	004012f3          	csrrw	t0,0x4,zero
     ed8:	0012f293          	andi	t0,t0,1
     edc:	00429073          	csrw	0x4,t0
     ee0:	ffc12283          	lw	t0,-4(sp)
     ee4:	0000006f          	j	ee4 <xQueueGenericReceive+0x94>
     ee8:	00000493          	li	s1,0
     eec:	fff00913          	li	s2,-1
     ef0:	02440a93          	addi	s5,s0,36
     ef4:	0c00006f          	j	fb4 <xQueueGenericReceive+0x164>
     ef8:	02442783          	lw	a5,36(s0)
     efc:	00942623          	sw	s1,12(s0)
     f00:	0e078e63          	beqz	a5,ffc <xQueueGenericReceive+0x1ac>
     f04:	02440513          	addi	a0,s0,36
     f08:	351000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     f0c:	0e050863          	beqz	a0,ffc <xQueueGenericReceive+0x1ac>
     f10:	0e80006f          	j	ff8 <xQueueGenericReceive+0x1a8>
     f14:	00c12783          	lw	a5,12(sp)
     f18:	00079863          	bnez	a5,f28 <xQueueGenericReceive+0xd8>
     f1c:	5cd000ef          	jal	ra,1ce8 <vTaskExitCritical>
     f20:	00000513          	li	a0,0
     f24:	0e00006f          	j	1004 <xQueueGenericReceive+0x1b4>
     f28:	00049663          	bnez	s1,f34 <xQueueGenericReceive+0xe4>
     f2c:	01810513          	addi	a0,sp,24
     f30:	4f9000ef          	jal	ra,1c28 <vTaskSetTimeOutState>
     f34:	5b5000ef          	jal	ra,1ce8 <vTaskExitCritical>
     f38:	5f8000ef          	jal	ra,1530 <vTaskSuspendAll>
     f3c:	569000ef          	jal	ra,1ca4 <vTaskEnterCritical>
     f40:	04442783          	lw	a5,68(s0)
     f44:	01279463          	bne	a5,s2,f4c <xQueueGenericReceive+0xfc>
     f48:	04042223          	sw	zero,68(s0)
     f4c:	04842783          	lw	a5,72(s0)
     f50:	01279463          	bne	a5,s2,f58 <xQueueGenericReceive+0x108>
     f54:	04042423          	sw	zero,72(s0)
     f58:	591000ef          	jal	ra,1ce8 <vTaskExitCritical>
     f5c:	00c10593          	addi	a1,sp,12
     f60:	01810513          	addi	a0,sp,24
     f64:	340010ef          	jal	ra,22a4 <xTaskCheckForTimeOut>
     f68:	0c051063          	bnez	a0,1028 <xQueueGenericReceive+0x1d8>
     f6c:	539000ef          	jal	ra,1ca4 <vTaskEnterCritical>
     f70:	03842783          	lw	a5,56(s0)
     f74:	02079663          	bnez	a5,fa0 <xQueueGenericReceive+0x150>
     f78:	571000ef          	jal	ra,1ce8 <vTaskExitCritical>
     f7c:	00c12583          	lw	a1,12(sp)
     f80:	000a8513          	mv	a0,s5
     f84:	141000ef          	jal	ra,18c4 <vTaskPlaceOnEventList>
     f88:	00040513          	mv	a0,s0
     f8c:	83dff0ef          	jal	ra,7c8 <prvUnlockQueue>
     f90:	148010ef          	jal	ra,20d8 <xTaskResumeAll>
     f94:	00051e63          	bnez	a0,fb0 <xQueueGenericReceive+0x160>
     f98:	b3cff0ef          	jal	ra,2d4 <vPortYield>
     f9c:	0140006f          	j	fb0 <xQueueGenericReceive+0x160>
     fa0:	549000ef          	jal	ra,1ce8 <vTaskExitCritical>
     fa4:	00040513          	mv	a0,s0
     fa8:	821ff0ef          	jal	ra,7c8 <prvUnlockQueue>
     fac:	12c010ef          	jal	ra,20d8 <xTaskResumeAll>
     fb0:	00100493          	li	s1,1
     fb4:	4f1000ef          	jal	ra,1ca4 <vTaskEnterCritical>
     fb8:	03842783          	lw	a5,56(s0)
     fbc:	f4078ce3          	beqz	a5,f14 <xQueueGenericReceive+0xc4>
     fc0:	00098593          	mv	a1,s3
     fc4:	00040513          	mv	a0,s0
     fc8:	00c42483          	lw	s1,12(s0)
     fcc:	fc4ff0ef          	jal	ra,790 <prvCopyDataFromQueue>
     fd0:	f20a14e3          	bnez	s4,ef8 <xQueueGenericReceive+0xa8>
     fd4:	03842783          	lw	a5,56(s0)
     fd8:	fff78793          	addi	a5,a5,-1
     fdc:	02f42c23          	sw	a5,56(s0)
     fe0:	01042783          	lw	a5,16(s0)
     fe4:	00078c63          	beqz	a5,ffc <xQueueGenericReceive+0x1ac>
     fe8:	01040513          	addi	a0,s0,16
     fec:	26d000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
     ff0:	00100793          	li	a5,1
     ff4:	00f51463          	bne	a0,a5,ffc <xQueueGenericReceive+0x1ac>
     ff8:	adcff0ef          	jal	ra,2d4 <vPortYield>
     ffc:	4ed000ef          	jal	ra,1ce8 <vTaskExitCritical>
    1000:	00100513          	li	a0,1
    1004:	03c12083          	lw	ra,60(sp)
    1008:	03812403          	lw	s0,56(sp)
    100c:	03412483          	lw	s1,52(sp)
    1010:	03012903          	lw	s2,48(sp)
    1014:	02c12983          	lw	s3,44(sp)
    1018:	02812a03          	lw	s4,40(sp)
    101c:	02412a83          	lw	s5,36(sp)
    1020:	04010113          	addi	sp,sp,64
    1024:	00008067          	ret
    1028:	00040513          	mv	a0,s0
    102c:	f9cff0ef          	jal	ra,7c8 <prvUnlockQueue>
    1030:	0a8010ef          	jal	ra,20d8 <xTaskResumeAll>
    1034:	eedff06f          	j	f20 <xQueueGenericReceive+0xd0>

00001038 <xQueueReceiveFromISR>:
    1038:	00051e63          	bnez	a0,1054 <xQueueReceiveFromISR+0x1c>
    103c:	fe512e23          	sw	t0,-4(sp)
    1040:	004012f3          	csrrw	t0,0x4,zero
    1044:	0012f293          	andi	t0,t0,1
    1048:	00429073          	csrw	0x4,t0
    104c:	ffc12283          	lw	t0,-4(sp)
    1050:	0000006f          	j	1050 <xQueueReceiveFromISR+0x18>
    1054:	02059263          	bnez	a1,1078 <xQueueReceiveFromISR+0x40>
    1058:	04052783          	lw	a5,64(a0)
    105c:	00078e63          	beqz	a5,1078 <xQueueReceiveFromISR+0x40>
    1060:	fe512e23          	sw	t0,-4(sp)
    1064:	004012f3          	csrrw	t0,0x4,zero
    1068:	0012f293          	andi	t0,t0,1
    106c:	00429073          	csrw	0x4,t0
    1070:	ffc12283          	lw	t0,-4(sp)
    1074:	0000006f          	j	1074 <xQueueReceiveFromISR+0x3c>
    1078:	fd010113          	addi	sp,sp,-48
    107c:	02812423          	sw	s0,40(sp)
    1080:	02912223          	sw	s1,36(sp)
    1084:	03212023          	sw	s2,32(sp)
    1088:	01312e23          	sw	s3,28(sp)
    108c:	00b12623          	sw	a1,12(sp)
    1090:	00050413          	mv	s0,a0
    1094:	02112623          	sw	ra,44(sp)
    1098:	00060913          	mv	s2,a2
    109c:	cb8ff0ef          	jal	ra,554 <vPortSetInterruptMask>
    10a0:	03842783          	lw	a5,56(s0)
    10a4:	00050993          	mv	s3,a0
    10a8:	00000493          	li	s1,0
    10ac:	00c12583          	lw	a1,12(sp)
    10b0:	02078863          	beqz	a5,10e0 <xQueueReceiveFromISR+0xa8>
    10b4:	00040513          	mv	a0,s0
    10b8:	ed8ff0ef          	jal	ra,790 <prvCopyDataFromQueue>
    10bc:	03842783          	lw	a5,56(s0)
    10c0:	fff78793          	addi	a5,a5,-1
    10c4:	02f42c23          	sw	a5,56(s0)
    10c8:	04442703          	lw	a4,68(s0)
    10cc:	fff00793          	li	a5,-1
    10d0:	04f71a63          	bne	a4,a5,1124 <xQueueReceiveFromISR+0xec>
    10d4:	01042783          	lw	a5,16(s0)
    10d8:	02079863          	bnez	a5,1108 <xQueueReceiveFromISR+0xd0>
    10dc:	00100493          	li	s1,1
    10e0:	00098513          	mv	a0,s3
    10e4:	c68ff0ef          	jal	ra,54c <vPortClearInterruptMask>
    10e8:	02c12083          	lw	ra,44(sp)
    10ec:	02812403          	lw	s0,40(sp)
    10f0:	00048513          	mv	a0,s1
    10f4:	02012903          	lw	s2,32(sp)
    10f8:	02412483          	lw	s1,36(sp)
    10fc:	01c12983          	lw	s3,28(sp)
    1100:	03010113          	addi	sp,sp,48
    1104:	00008067          	ret
    1108:	01040513          	addi	a0,s0,16
    110c:	14d000ef          	jal	ra,1a58 <xTaskRemoveFromEventList>
    1110:	fc0506e3          	beqz	a0,10dc <xQueueReceiveFromISR+0xa4>
    1114:	fc0904e3          	beqz	s2,10dc <xQueueReceiveFromISR+0xa4>
    1118:	00100793          	li	a5,1
    111c:	00f92023          	sw	a5,0(s2)
    1120:	fbdff06f          	j	10dc <xQueueReceiveFromISR+0xa4>
    1124:	04442783          	lw	a5,68(s0)
    1128:	00178793          	addi	a5,a5,1
    112c:	04f42223          	sw	a5,68(s0)
    1130:	fadff06f          	j	10dc <xQueueReceiveFromISR+0xa4>

00001134 <xQueuePeekFromISR>:
    1134:	00051e63          	bnez	a0,1150 <xQueuePeekFromISR+0x1c>
    1138:	fe512e23          	sw	t0,-4(sp)
    113c:	004012f3          	csrrw	t0,0x4,zero
    1140:	0012f293          	andi	t0,t0,1
    1144:	00429073          	csrw	0x4,t0
    1148:	ffc12283          	lw	t0,-4(sp)
    114c:	0000006f          	j	114c <xQueuePeekFromISR+0x18>
    1150:	04052783          	lw	a5,64(a0)
    1154:	02059063          	bnez	a1,1174 <xQueuePeekFromISR+0x40>
    1158:	02078063          	beqz	a5,1178 <xQueuePeekFromISR+0x44>
    115c:	fe512e23          	sw	t0,-4(sp)
    1160:	004012f3          	csrrw	t0,0x4,zero
    1164:	0012f293          	andi	t0,t0,1
    1168:	00429073          	csrw	0x4,t0
    116c:	ffc12283          	lw	t0,-4(sp)
    1170:	0000006f          	j	1170 <xQueuePeekFromISR+0x3c>
    1174:	00079e63          	bnez	a5,1190 <xQueuePeekFromISR+0x5c>
    1178:	fe512e23          	sw	t0,-4(sp)
    117c:	004012f3          	csrrw	t0,0x4,zero
    1180:	0012f293          	andi	t0,t0,1
    1184:	00429073          	csrw	0x4,t0
    1188:	ffc12283          	lw	t0,-4(sp)
    118c:	0000006f          	j	118c <xQueuePeekFromISR+0x58>
    1190:	fe010113          	addi	sp,sp,-32
    1194:	00812c23          	sw	s0,24(sp)
    1198:	00912a23          	sw	s1,20(sp)
    119c:	01212823          	sw	s2,16(sp)
    11a0:	00b12623          	sw	a1,12(sp)
    11a4:	00050413          	mv	s0,a0
    11a8:	00112e23          	sw	ra,28(sp)
    11ac:	ba8ff0ef          	jal	ra,554 <vPortSetInterruptMask>
    11b0:	03842783          	lw	a5,56(s0)
    11b4:	00050913          	mv	s2,a0
    11b8:	00000493          	li	s1,0
    11bc:	00c12583          	lw	a1,12(sp)
    11c0:	00078c63          	beqz	a5,11d8 <xQueuePeekFromISR+0xa4>
    11c4:	00c42483          	lw	s1,12(s0)
    11c8:	00040513          	mv	a0,s0
    11cc:	dc4ff0ef          	jal	ra,790 <prvCopyDataFromQueue>
    11d0:	00942623          	sw	s1,12(s0)
    11d4:	00100493          	li	s1,1
    11d8:	00090513          	mv	a0,s2
    11dc:	b70ff0ef          	jal	ra,54c <vPortClearInterruptMask>
    11e0:	01c12083          	lw	ra,28(sp)
    11e4:	01812403          	lw	s0,24(sp)
    11e8:	00048513          	mv	a0,s1
    11ec:	01012903          	lw	s2,16(sp)
    11f0:	01412483          	lw	s1,20(sp)
    11f4:	02010113          	addi	sp,sp,32
    11f8:	00008067          	ret

000011fc <uxQueueMessagesWaiting>:
    11fc:	00051e63          	bnez	a0,1218 <uxQueueMessagesWaiting+0x1c>
    1200:	fe512e23          	sw	t0,-4(sp)
    1204:	004012f3          	csrrw	t0,0x4,zero
    1208:	0012f293          	andi	t0,t0,1
    120c:	00429073          	csrw	0x4,t0
    1210:	ffc12283          	lw	t0,-4(sp)
    1214:	0000006f          	j	1214 <uxQueueMessagesWaiting+0x18>
    1218:	fe010113          	addi	sp,sp,-32
    121c:	00112e23          	sw	ra,28(sp)
    1220:	00812c23          	sw	s0,24(sp)
    1224:	00050413          	mv	s0,a0
    1228:	27d000ef          	jal	ra,1ca4 <vTaskEnterCritical>
    122c:	03842503          	lw	a0,56(s0)
    1230:	00a12623          	sw	a0,12(sp)
    1234:	2b5000ef          	jal	ra,1ce8 <vTaskExitCritical>
    1238:	01c12083          	lw	ra,28(sp)
    123c:	01812403          	lw	s0,24(sp)
    1240:	00c12503          	lw	a0,12(sp)
    1244:	02010113          	addi	sp,sp,32
    1248:	00008067          	ret

0000124c <uxQueueSpacesAvailable>:
    124c:	00051e63          	bnez	a0,1268 <uxQueueSpacesAvailable+0x1c>
    1250:	fe512e23          	sw	t0,-4(sp)
    1254:	004012f3          	csrrw	t0,0x4,zero
    1258:	0012f293          	andi	t0,t0,1
    125c:	00429073          	csrw	0x4,t0
    1260:	ffc12283          	lw	t0,-4(sp)
    1264:	0000006f          	j	1264 <uxQueueSpacesAvailable+0x18>
    1268:	fe010113          	addi	sp,sp,-32
    126c:	00112e23          	sw	ra,28(sp)
    1270:	00812c23          	sw	s0,24(sp)
    1274:	00050413          	mv	s0,a0
    1278:	22d000ef          	jal	ra,1ca4 <vTaskEnterCritical>
    127c:	03842783          	lw	a5,56(s0)
    1280:	03c42503          	lw	a0,60(s0)
    1284:	40f50533          	sub	a0,a0,a5
    1288:	00a12623          	sw	a0,12(sp)
    128c:	25d000ef          	jal	ra,1ce8 <vTaskExitCritical>
    1290:	01c12083          	lw	ra,28(sp)
    1294:	01812403          	lw	s0,24(sp)
    1298:	00c12503          	lw	a0,12(sp)
    129c:	02010113          	addi	sp,sp,32
    12a0:	00008067          	ret

000012a4 <uxQueueMessagesWaitingFromISR>:
    12a4:	00051e63          	bnez	a0,12c0 <uxQueueMessagesWaitingFromISR+0x1c>
    12a8:	fe512e23          	sw	t0,-4(sp)
    12ac:	004012f3          	csrrw	t0,0x4,zero
    12b0:	0012f293          	andi	t0,t0,1
    12b4:	00429073          	csrw	0x4,t0
    12b8:	ffc12283          	lw	t0,-4(sp)
    12bc:	0000006f          	j	12bc <uxQueueMessagesWaitingFromISR+0x18>
    12c0:	03852503          	lw	a0,56(a0)
    12c4:	00008067          	ret

000012c8 <xQueueIsQueueEmptyFromISR>:
    12c8:	00051e63          	bnez	a0,12e4 <xQueueIsQueueEmptyFromISR+0x1c>
    12cc:	fe512e23          	sw	t0,-4(sp)
    12d0:	004012f3          	csrrw	t0,0x4,zero
    12d4:	0012f293          	andi	t0,t0,1
    12d8:	00429073          	csrw	0x4,t0
    12dc:	ffc12283          	lw	t0,-4(sp)
    12e0:	0000006f          	j	12e0 <xQueueIsQueueEmptyFromISR+0x18>
    12e4:	03852503          	lw	a0,56(a0)
    12e8:	00153513          	seqz	a0,a0
    12ec:	00008067          	ret

000012f0 <xQueueIsQueueFullFromISR>:
    12f0:	00051e63          	bnez	a0,130c <xQueueIsQueueFullFromISR+0x1c>
    12f4:	fe512e23          	sw	t0,-4(sp)
    12f8:	004012f3          	csrrw	t0,0x4,zero
    12fc:	0012f293          	andi	t0,t0,1
    1300:	00429073          	csrw	0x4,t0
    1304:	ffc12283          	lw	t0,-4(sp)
    1308:	0000006f          	j	1308 <xQueueIsQueueFullFromISR+0x18>
    130c:	03852783          	lw	a5,56(a0)
    1310:	03c52503          	lw	a0,60(a0)
    1314:	40f50533          	sub	a0,a0,a5
    1318:	00153513          	seqz	a0,a0
    131c:	00008067          	ret

00001320 <vQueueAddToRegistry>:
    1320:	00002717          	auipc	a4,0x2
    1324:	7e070713          	addi	a4,a4,2016 # 3b00 <xQueueRegistry>
    1328:	00000793          	li	a5,0
    132c:	00070693          	mv	a3,a4
    1330:	00800613          	li	a2,8
    1334:	00072803          	lw	a6,0(a4)
    1338:	00081c63          	bnez	a6,1350 <vQueueAddToRegistry+0x30>
    133c:	00379793          	slli	a5,a5,0x3
    1340:	00f687b3          	add	a5,a3,a5
    1344:	00b7a023          	sw	a1,0(a5)
    1348:	00a7a223          	sw	a0,4(a5)
    134c:	00008067          	ret
    1350:	00178793          	addi	a5,a5,1
    1354:	00870713          	addi	a4,a4,8
    1358:	fcc79ee3          	bne	a5,a2,1334 <vQueueAddToRegistry+0x14>
    135c:	00008067          	ret

00001360 <vQueueUnregisterQueue>:
    1360:	00002717          	auipc	a4,0x2
    1364:	7a070713          	addi	a4,a4,1952 # 3b00 <xQueueRegistry>
    1368:	00000793          	li	a5,0
    136c:	00070693          	mv	a3,a4
    1370:	00800613          	li	a2,8
    1374:	00472583          	lw	a1,4(a4)
    1378:	00a59a63          	bne	a1,a0,138c <vQueueUnregisterQueue+0x2c>
    137c:	00379793          	slli	a5,a5,0x3
    1380:	00f687b3          	add	a5,a3,a5
    1384:	0007a023          	sw	zero,0(a5)
    1388:	00008067          	ret
    138c:	00178793          	addi	a5,a5,1
    1390:	00870713          	addi	a4,a4,8
    1394:	fec790e3          	bne	a5,a2,1374 <vQueueUnregisterQueue+0x14>
    1398:	00008067          	ret

0000139c <vQueueDelete>:
    139c:	00051e63          	bnez	a0,13b8 <vQueueDelete+0x1c>
    13a0:	fe512e23          	sw	t0,-4(sp)
    13a4:	004012f3          	csrrw	t0,0x4,zero
    13a8:	0012f293          	andi	t0,t0,1
    13ac:	00429073          	csrw	0x4,t0
    13b0:	ffc12283          	lw	t0,-4(sp)
    13b4:	0000006f          	j	13b4 <vQueueDelete+0x18>
    13b8:	ff010113          	addi	sp,sp,-16
    13bc:	00812423          	sw	s0,8(sp)
    13c0:	00112623          	sw	ra,12(sp)
    13c4:	00050413          	mv	s0,a0
    13c8:	f99ff0ef          	jal	ra,1360 <vQueueUnregisterQueue>
    13cc:	00040513          	mv	a0,s0
    13d0:	00812403          	lw	s0,8(sp)
    13d4:	00c12083          	lw	ra,12(sp)
    13d8:	01010113          	addi	sp,sp,16
    13dc:	4340206f          	j	3810 <vPortFree>

000013e0 <vQueueWaitForMessageRestricted>:
    13e0:	fe010113          	addi	sp,sp,-32
    13e4:	00812c23          	sw	s0,24(sp)
    13e8:	00b12623          	sw	a1,12(sp)
    13ec:	00050413          	mv	s0,a0
    13f0:	00c12423          	sw	a2,8(sp)
    13f4:	00112e23          	sw	ra,28(sp)
    13f8:	0ad000ef          	jal	ra,1ca4 <vTaskEnterCritical>
    13fc:	04442703          	lw	a4,68(s0)
    1400:	fff00793          	li	a5,-1
    1404:	00812603          	lw	a2,8(sp)
    1408:	00c12583          	lw	a1,12(sp)
    140c:	00f71463          	bne	a4,a5,1414 <vQueueWaitForMessageRestricted+0x34>
    1410:	04042223          	sw	zero,68(s0)
    1414:	04842703          	lw	a4,72(s0)
    1418:	fff00793          	li	a5,-1
    141c:	00f71463          	bne	a4,a5,1424 <vQueueWaitForMessageRestricted+0x44>
    1420:	04042423          	sw	zero,72(s0)
    1424:	00c12623          	sw	a2,12(sp)
    1428:	00b12423          	sw	a1,8(sp)
    142c:	0bd000ef          	jal	ra,1ce8 <vTaskExitCritical>
    1430:	03842783          	lw	a5,56(s0)
    1434:	00812583          	lw	a1,8(sp)
    1438:	00c12603          	lw	a2,12(sp)
    143c:	00079663          	bnez	a5,1448 <vQueueWaitForMessageRestricted+0x68>
    1440:	02440513          	addi	a0,s0,36
    1444:	5a0000ef          	jal	ra,19e4 <vTaskPlaceOnEventListRestricted>
    1448:	00040513          	mv	a0,s0
    144c:	01812403          	lw	s0,24(sp)
    1450:	01c12083          	lw	ra,28(sp)
    1454:	02010113          	addi	sp,sp,32
    1458:	b70ff06f          	j	7c8 <prvUnlockQueue>

0000145c <prvIdleTask>:
    145c:	ff010113          	addi	sp,sp,-16
    1460:	00812423          	sw	s0,8(sp)
    1464:	00912223          	sw	s1,4(sp)
    1468:	00112623          	sw	ra,12(sp)
    146c:	00002417          	auipc	s0,0x2
    1470:	6d440413          	addi	s0,s0,1748 # 3b40 <_end>
    1474:	00100493          	li	s1,1
    1478:	00042783          	lw	a5,0(s0)
    147c:	00f4f063          	bleu	a5,s1,147c <prvIdleTask+0x20>
    1480:	e55fe0ef          	jal	ra,2d4 <vPortYield>
    1484:	ff5ff06f          	j	1478 <prvIdleTask+0x1c>

00001488 <prvAddCurrentTaskToDelayedList>:
    1488:	00002797          	auipc	a5,0x2
    148c:	75878793          	addi	a5,a5,1880 # 3be0 <pxCurrentTCB>
    1490:	0007a703          	lw	a4,0(a5)
    1494:	00a72223          	sw	a0,4(a4)
    1498:	00002717          	auipc	a4,0x2
    149c:	77470713          	addi	a4,a4,1908 # 3c0c <xTickCount>
    14a0:	00072703          	lw	a4,0(a4)
    14a4:	00e57e63          	bleu	a4,a0,14c0 <prvAddCurrentTaskToDelayedList+0x38>
    14a8:	00002717          	auipc	a4,0x2
    14ac:	74070713          	addi	a4,a4,1856 # 3be8 <pxOverflowDelayedTaskList>
    14b0:	00072503          	lw	a0,0(a4)
    14b4:	0007a583          	lw	a1,0(a5)
    14b8:	00458593          	addi	a1,a1,4
    14bc:	984ff06f          	j	640 <vListInsert>
    14c0:	ff010113          	addi	sp,sp,-16
    14c4:	00812423          	sw	s0,8(sp)
    14c8:	00112623          	sw	ra,12(sp)
    14cc:	00002717          	auipc	a4,0x2
    14d0:	71870713          	addi	a4,a4,1816 # 3be4 <pxDelayedTaskList>
    14d4:	00050413          	mv	s0,a0
    14d8:	00072503          	lw	a0,0(a4)
    14dc:	0007a583          	lw	a1,0(a5)
    14e0:	00458593          	addi	a1,a1,4
    14e4:	95cff0ef          	jal	ra,640 <vListInsert>
    14e8:	00002797          	auipc	a5,0x2
    14ec:	71878793          	addi	a5,a5,1816 # 3c00 <xNextTaskUnblockTime>
    14f0:	0007a783          	lw	a5,0(a5)
    14f4:	00f47663          	bleu	a5,s0,1500 <prvAddCurrentTaskToDelayedList+0x78>
    14f8:	00002797          	auipc	a5,0x2
    14fc:	7087a423          	sw	s0,1800(a5) # 3c00 <xNextTaskUnblockTime>
    1500:	00c12083          	lw	ra,12(sp)
    1504:	00812403          	lw	s0,8(sp)
    1508:	01010113          	addi	sp,sp,16
    150c:	00008067          	ret

00001510 <vTaskEndScheduler>:
    1510:	fe512e23          	sw	t0,-4(sp)
    1514:	004012f3          	csrrw	t0,0x4,zero
    1518:	0012f293          	andi	t0,t0,1
    151c:	00429073          	csrw	0x4,t0
    1520:	ffc12283          	lw	t0,-4(sp)
    1524:	00002797          	auipc	a5,0x2
    1528:	6e07a223          	sw	zero,1764(a5) # 3c08 <xSchedulerRunning>
    152c:	da5fe06f          	j	2d0 <vPortEndScheduler>

00001530 <vTaskSuspendAll>:
    1530:	00002717          	auipc	a4,0x2
    1534:	6c470713          	addi	a4,a4,1732 # 3bf4 <uxSchedulerSuspended>
    1538:	00072783          	lw	a5,0(a4)
    153c:	00178793          	addi	a5,a5,1
    1540:	00f72023          	sw	a5,0(a4)
    1544:	00008067          	ret

00001548 <xTaskGetTickCountFromISR>:
    1548:	ff010113          	addi	sp,sp,-16
    154c:	00112623          	sw	ra,12(sp)
    1550:	00812423          	sw	s0,8(sp)
    1554:	800ff0ef          	jal	ra,554 <vPortSetInterruptMask>
    1558:	00002797          	auipc	a5,0x2
    155c:	6b478793          	addi	a5,a5,1716 # 3c0c <xTickCount>
    1560:	0007a403          	lw	s0,0(a5)
    1564:	fe9fe0ef          	jal	ra,54c <vPortClearInterruptMask>
    1568:	00c12083          	lw	ra,12(sp)
    156c:	00040513          	mv	a0,s0
    1570:	00812403          	lw	s0,8(sp)
    1574:	01010113          	addi	sp,sp,16
    1578:	00008067          	ret

0000157c <uxTaskGetNumberOfTasks>:
    157c:	00002797          	auipc	a5,0x2
    1580:	67078793          	addi	a5,a5,1648 # 3bec <uxCurrentNumberOfTasks>
    1584:	0007a503          	lw	a0,0(a5)
    1588:	00008067          	ret

0000158c <xTaskIncrementTick>:
    158c:	fd010113          	addi	sp,sp,-48
    1590:	02112623          	sw	ra,44(sp)
    1594:	02812423          	sw	s0,40(sp)
    1598:	02912223          	sw	s1,36(sp)
    159c:	03212023          	sw	s2,32(sp)
    15a0:	01312e23          	sw	s3,28(sp)
    15a4:	01412c23          	sw	s4,24(sp)
    15a8:	01512a23          	sw	s5,20(sp)
    15ac:	01612823          	sw	s6,16(sp)
    15b0:	01712623          	sw	s7,12(sp)
    15b4:	00002797          	auipc	a5,0x2
    15b8:	64078793          	addi	a5,a5,1600 # 3bf4 <uxSchedulerSuspended>
    15bc:	0007a783          	lw	a5,0(a5)
    15c0:	1c079e63          	bnez	a5,179c <xTaskIncrementTick+0x210>
    15c4:	00002717          	auipc	a4,0x2
    15c8:	64870713          	addi	a4,a4,1608 # 3c0c <xTickCount>
    15cc:	00072783          	lw	a5,0(a4)
    15d0:	00178793          	addi	a5,a5,1
    15d4:	00002697          	auipc	a3,0x2
    15d8:	62f6ac23          	sw	a5,1592(a3) # 3c0c <xTickCount>
    15dc:	00072983          	lw	s3,0(a4)
    15e0:	08099063          	bnez	s3,1660 <xTaskIncrementTick+0xd4>
    15e4:	00002797          	auipc	a5,0x2
    15e8:	60078793          	addi	a5,a5,1536 # 3be4 <pxDelayedTaskList>
    15ec:	0007a703          	lw	a4,0(a5)
    15f0:	00072703          	lw	a4,0(a4)
    15f4:	00070e63          	beqz	a4,1610 <xTaskIncrementTick+0x84>
    15f8:	fe512e23          	sw	t0,-4(sp)
    15fc:	004012f3          	csrrw	t0,0x4,zero
    1600:	0012f293          	andi	t0,t0,1
    1604:	00429073          	csrw	0x4,t0
    1608:	ffc12283          	lw	t0,-4(sp)
    160c:	0000006f          	j	160c <xTaskIncrementTick+0x80>
    1610:	00002697          	auipc	a3,0x2
    1614:	5d868693          	addi	a3,a3,1496 # 3be8 <pxOverflowDelayedTaskList>
    1618:	0007a703          	lw	a4,0(a5)
    161c:	0006a683          	lw	a3,0(a3)
    1620:	00002617          	auipc	a2,0x2
    1624:	5cd62223          	sw	a3,1476(a2) # 3be4 <pxDelayedTaskList>
    1628:	00002697          	auipc	a3,0x2
    162c:	5ce6a023          	sw	a4,1472(a3) # 3be8 <pxOverflowDelayedTaskList>
    1630:	00002717          	auipc	a4,0x2
    1634:	5d470713          	addi	a4,a4,1492 # 3c04 <xNumOfOverflows>
    1638:	00072703          	lw	a4,0(a4)
    163c:	00170713          	addi	a4,a4,1
    1640:	00002697          	auipc	a3,0x2
    1644:	5ce6a223          	sw	a4,1476(a3) # 3c04 <xNumOfOverflows>
    1648:	0007a703          	lw	a4,0(a5)
    164c:	00072703          	lw	a4,0(a4)
    1650:	08071e63          	bnez	a4,16ec <xTaskIncrementTick+0x160>
    1654:	fff00793          	li	a5,-1
    1658:	00002717          	auipc	a4,0x2
    165c:	5af72423          	sw	a5,1448(a4) # 3c00 <xNextTaskUnblockTime>
    1660:	00002797          	auipc	a5,0x2
    1664:	5a078793          	addi	a5,a5,1440 # 3c00 <xNextTaskUnblockTime>
    1668:	0007a783          	lw	a5,0(a5)
    166c:	00002917          	auipc	s2,0x2
    1670:	4d490913          	addi	s2,s2,1236 # 3b40 <_end>
    1674:	00002a17          	auipc	s4,0x2
    1678:	56ca0a13          	addi	s4,s4,1388 # 3be0 <pxCurrentTCB>
    167c:	00000413          	li	s0,0
    1680:	08f9f063          	bleu	a5,s3,1700 <xTaskIncrementTick+0x174>
    1684:	000a2783          	lw	a5,0(s4)
    1688:	01400593          	li	a1,20
    168c:	02c7a503          	lw	a0,44(a5)
    1690:	f31fe0ef          	jal	ra,5c0 <__mulsi3>
    1694:	00a90533          	add	a0,s2,a0
    1698:	00052703          	lw	a4,0(a0)
    169c:	00100793          	li	a5,1
    16a0:	00e7f463          	bleu	a4,a5,16a8 <xTaskIncrementTick+0x11c>
    16a4:	00100413          	li	s0,1
    16a8:	00002797          	auipc	a5,0x2
    16ac:	56878793          	addi	a5,a5,1384 # 3c10 <xYieldPending>
    16b0:	0007a783          	lw	a5,0(a5)
    16b4:	00078463          	beqz	a5,16bc <xTaskIncrementTick+0x130>
    16b8:	00100413          	li	s0,1
    16bc:	00040513          	mv	a0,s0
    16c0:	02c12083          	lw	ra,44(sp)
    16c4:	02812403          	lw	s0,40(sp)
    16c8:	02412483          	lw	s1,36(sp)
    16cc:	02012903          	lw	s2,32(sp)
    16d0:	01c12983          	lw	s3,28(sp)
    16d4:	01812a03          	lw	s4,24(sp)
    16d8:	01412a83          	lw	s5,20(sp)
    16dc:	01012b03          	lw	s6,16(sp)
    16e0:	00c12b83          	lw	s7,12(sp)
    16e4:	03010113          	addi	sp,sp,48
    16e8:	00008067          	ret
    16ec:	0007a783          	lw	a5,0(a5)
    16f0:	00c7a783          	lw	a5,12(a5)
    16f4:	00c7a783          	lw	a5,12(a5)
    16f8:	0047a783          	lw	a5,4(a5)
    16fc:	f5dff06f          	j	1658 <xTaskIncrementTick+0xcc>
    1700:	00002a97          	auipc	s5,0x2
    1704:	4e4a8a93          	addi	s5,s5,1252 # 3be4 <pxDelayedTaskList>
    1708:	00002b97          	auipc	s7,0x2
    170c:	4f4b8b93          	addi	s7,s7,1268 # 3bfc <uxTopReadyPriority>
    1710:	000aa783          	lw	a5,0(s5)
    1714:	0007a783          	lw	a5,0(a5)
    1718:	00079a63          	bnez	a5,172c <xTaskIncrementTick+0x1a0>
    171c:	fff00793          	li	a5,-1
    1720:	00002717          	auipc	a4,0x2
    1724:	4ef72023          	sw	a5,1248(a4) # 3c00 <xNextTaskUnblockTime>
    1728:	f5dff06f          	j	1684 <xTaskIncrementTick+0xf8>
    172c:	000aa783          	lw	a5,0(s5)
    1730:	00c7a783          	lw	a5,12(a5)
    1734:	00c7a483          	lw	s1,12(a5)
    1738:	0044a783          	lw	a5,4(s1)
    173c:	fef9e2e3          	bltu	s3,a5,1720 <xTaskIncrementTick+0x194>
    1740:	00448b13          	addi	s6,s1,4
    1744:	000b0513          	mv	a0,s6
    1748:	f49fe0ef          	jal	ra,690 <uxListRemove>
    174c:	0284a783          	lw	a5,40(s1)
    1750:	00078663          	beqz	a5,175c <xTaskIncrementTick+0x1d0>
    1754:	01848513          	addi	a0,s1,24
    1758:	f39fe0ef          	jal	ra,690 <uxListRemove>
    175c:	02c4a503          	lw	a0,44(s1)
    1760:	000ba783          	lw	a5,0(s7)
    1764:	00a7f663          	bleu	a0,a5,1770 <xTaskIncrementTick+0x1e4>
    1768:	00002797          	auipc	a5,0x2
    176c:	48a7aa23          	sw	a0,1172(a5) # 3bfc <uxTopReadyPriority>
    1770:	01400593          	li	a1,20
    1774:	e4dfe0ef          	jal	ra,5c0 <__mulsi3>
    1778:	000b0593          	mv	a1,s6
    177c:	00a90533          	add	a0,s2,a0
    1780:	e91fe0ef          	jal	ra,610 <vListInsertEnd>
    1784:	000a2783          	lw	a5,0(s4)
    1788:	02c4a703          	lw	a4,44(s1)
    178c:	02c7a783          	lw	a5,44(a5)
    1790:	f8f760e3          	bltu	a4,a5,1710 <xTaskIncrementTick+0x184>
    1794:	00100413          	li	s0,1
    1798:	f79ff06f          	j	1710 <xTaskIncrementTick+0x184>
    179c:	00002797          	auipc	a5,0x2
    17a0:	45478793          	addi	a5,a5,1108 # 3bf0 <uxPendedTicks>
    17a4:	0007a783          	lw	a5,0(a5)
    17a8:	00000413          	li	s0,0
    17ac:	00178793          	addi	a5,a5,1
    17b0:	00002717          	auipc	a4,0x2
    17b4:	44f72023          	sw	a5,1088(a4) # 3bf0 <uxPendedTicks>
    17b8:	ef1ff06f          	j	16a8 <xTaskIncrementTick+0x11c>

000017bc <vTaskSwitchContext>:
    17bc:	00002797          	auipc	a5,0x2
    17c0:	43878793          	addi	a5,a5,1080 # 3bf4 <uxSchedulerSuspended>
    17c4:	0007a783          	lw	a5,0(a5)
    17c8:	00078a63          	beqz	a5,17dc <vTaskSwitchContext+0x20>
    17cc:	00100793          	li	a5,1
    17d0:	00002717          	auipc	a4,0x2
    17d4:	44f72023          	sw	a5,1088(a4) # 3c10 <xYieldPending>
    17d8:	00008067          	ret
    17dc:	ff010113          	addi	sp,sp,-16
    17e0:	00812423          	sw	s0,8(sp)
    17e4:	00002417          	auipc	s0,0x2
    17e8:	35c40413          	addi	s0,s0,860 # 3b40 <_end>
    17ec:	00912223          	sw	s1,4(sp)
    17f0:	01212023          	sw	s2,0(sp)
    17f4:	00112623          	sw	ra,12(sp)
    17f8:	00002797          	auipc	a5,0x2
    17fc:	4007ac23          	sw	zero,1048(a5) # 3c10 <xYieldPending>
    1800:	00002497          	auipc	s1,0x2
    1804:	3fc48493          	addi	s1,s1,1020 # 3bfc <uxTopReadyPriority>
    1808:	00040913          	mv	s2,s0
    180c:	0004a503          	lw	a0,0(s1)
    1810:	01400593          	li	a1,20
    1814:	dadfe0ef          	jal	ra,5c0 <__mulsi3>
    1818:	00a40533          	add	a0,s0,a0
    181c:	00052783          	lw	a5,0(a0)
    1820:	06078863          	beqz	a5,1890 <vTaskSwitchContext+0xd4>
    1824:	0004a483          	lw	s1,0(s1)
    1828:	01400593          	li	a1,20
    182c:	00048513          	mv	a0,s1
    1830:	d91fe0ef          	jal	ra,5c0 <__mulsi3>
    1834:	00a407b3          	add	a5,s0,a0
    1838:	0047a703          	lw	a4,4(a5)
    183c:	00850513          	addi	a0,a0,8
    1840:	00a40433          	add	s0,s0,a0
    1844:	00472703          	lw	a4,4(a4)
    1848:	00e7a223          	sw	a4,4(a5)
    184c:	00871663          	bne	a4,s0,1858 <vTaskSwitchContext+0x9c>
    1850:	00472703          	lw	a4,4(a4)
    1854:	00e7a223          	sw	a4,4(a5)
    1858:	00048513          	mv	a0,s1
    185c:	01400593          	li	a1,20
    1860:	d61fe0ef          	jal	ra,5c0 <__mulsi3>
    1864:	00a90533          	add	a0,s2,a0
    1868:	00452783          	lw	a5,4(a0)
    186c:	00c12083          	lw	ra,12(sp)
    1870:	00812403          	lw	s0,8(sp)
    1874:	00c7a783          	lw	a5,12(a5)
    1878:	00412483          	lw	s1,4(sp)
    187c:	00012903          	lw	s2,0(sp)
    1880:	00002717          	auipc	a4,0x2
    1884:	36f72023          	sw	a5,864(a4) # 3be0 <pxCurrentTCB>
    1888:	01010113          	addi	sp,sp,16
    188c:	00008067          	ret
    1890:	0004a783          	lw	a5,0(s1)
    1894:	00079e63          	bnez	a5,18b0 <vTaskSwitchContext+0xf4>
    1898:	fe512e23          	sw	t0,-4(sp)
    189c:	004012f3          	csrrw	t0,0x4,zero
    18a0:	0012f293          	andi	t0,t0,1
    18a4:	00429073          	csrw	0x4,t0
    18a8:	ffc12283          	lw	t0,-4(sp)
    18ac:	0000006f          	j	18ac <vTaskSwitchContext+0xf0>
    18b0:	0004a783          	lw	a5,0(s1)
    18b4:	fff78793          	addi	a5,a5,-1
    18b8:	00002717          	auipc	a4,0x2
    18bc:	34f72223          	sw	a5,836(a4) # 3bfc <uxTopReadyPriority>
    18c0:	f4dff06f          	j	180c <vTaskSwitchContext+0x50>

000018c4 <vTaskPlaceOnEventList>:
    18c4:	00051e63          	bnez	a0,18e0 <vTaskPlaceOnEventList+0x1c>
    18c8:	fe512e23          	sw	t0,-4(sp)
    18cc:	004012f3          	csrrw	t0,0x4,zero
    18d0:	0012f293          	andi	t0,t0,1
    18d4:	00429073          	csrw	0x4,t0
    18d8:	ffc12283          	lw	t0,-4(sp)
    18dc:	0000006f          	j	18dc <vTaskPlaceOnEventList+0x18>
    18e0:	ff010113          	addi	sp,sp,-16
    18e4:	00912223          	sw	s1,4(sp)
    18e8:	00002497          	auipc	s1,0x2
    18ec:	2f848493          	addi	s1,s1,760 # 3be0 <pxCurrentTCB>
    18f0:	00812423          	sw	s0,8(sp)
    18f4:	00058413          	mv	s0,a1
    18f8:	0004a583          	lw	a1,0(s1)
    18fc:	00112623          	sw	ra,12(sp)
    1900:	01858593          	addi	a1,a1,24
    1904:	d3dfe0ef          	jal	ra,640 <vListInsert>
    1908:	0004a503          	lw	a0,0(s1)
    190c:	00450513          	addi	a0,a0,4
    1910:	d81fe0ef          	jal	ra,690 <uxListRemove>
    1914:	00002797          	auipc	a5,0x2
    1918:	2f878793          	addi	a5,a5,760 # 3c0c <xTickCount>
    191c:	0007a503          	lw	a0,0(a5)
    1920:	00c12083          	lw	ra,12(sp)
    1924:	00412483          	lw	s1,4(sp)
    1928:	00850533          	add	a0,a0,s0
    192c:	00812403          	lw	s0,8(sp)
    1930:	01010113          	addi	sp,sp,16
    1934:	b55ff06f          	j	1488 <prvAddCurrentTaskToDelayedList>

00001938 <vTaskPlaceOnUnorderedEventList>:
    1938:	00051e63          	bnez	a0,1954 <vTaskPlaceOnUnorderedEventList+0x1c>
    193c:	fe512e23          	sw	t0,-4(sp)
    1940:	004012f3          	csrrw	t0,0x4,zero
    1944:	0012f293          	andi	t0,t0,1
    1948:	00429073          	csrw	0x4,t0
    194c:	ffc12283          	lw	t0,-4(sp)
    1950:	0000006f          	j	1950 <vTaskPlaceOnUnorderedEventList+0x18>
    1954:	00002797          	auipc	a5,0x2
    1958:	2a078793          	addi	a5,a5,672 # 3bf4 <uxSchedulerSuspended>
    195c:	0007a783          	lw	a5,0(a5)
    1960:	00079e63          	bnez	a5,197c <vTaskPlaceOnUnorderedEventList+0x44>
    1964:	fe512e23          	sw	t0,-4(sp)
    1968:	004012f3          	csrrw	t0,0x4,zero
    196c:	0012f293          	andi	t0,t0,1
    1970:	00429073          	csrw	0x4,t0
    1974:	ffc12283          	lw	t0,-4(sp)
    1978:	0000006f          	j	1978 <vTaskPlaceOnUnorderedEventList+0x40>
    197c:	ff010113          	addi	sp,sp,-16
    1980:	00912223          	sw	s1,4(sp)
    1984:	00002497          	auipc	s1,0x2
    1988:	25c48493          	addi	s1,s1,604 # 3be0 <pxCurrentTCB>
    198c:	0004a783          	lw	a5,0(s1)
    1990:	80000737          	lui	a4,0x80000
    1994:	00112623          	sw	ra,12(sp)
    1998:	00812423          	sw	s0,8(sp)
    199c:	00e5e5b3          	or	a1,a1,a4
    19a0:	00b7ac23          	sw	a1,24(a5)
    19a4:	0004a583          	lw	a1,0(s1)
    19a8:	00060413          	mv	s0,a2
    19ac:	01858593          	addi	a1,a1,24
    19b0:	c61fe0ef          	jal	ra,610 <vListInsertEnd>
    19b4:	0004a503          	lw	a0,0(s1)
    19b8:	00450513          	addi	a0,a0,4
    19bc:	cd5fe0ef          	jal	ra,690 <uxListRemove>
    19c0:	00002797          	auipc	a5,0x2
    19c4:	24c78793          	addi	a5,a5,588 # 3c0c <xTickCount>
    19c8:	0007a503          	lw	a0,0(a5)
    19cc:	00c12083          	lw	ra,12(sp)
    19d0:	00412483          	lw	s1,4(sp)
    19d4:	00850533          	add	a0,a0,s0
    19d8:	00812403          	lw	s0,8(sp)
    19dc:	01010113          	addi	sp,sp,16
    19e0:	aa9ff06f          	j	1488 <prvAddCurrentTaskToDelayedList>

000019e4 <vTaskPlaceOnEventListRestricted>:
    19e4:	00051e63          	bnez	a0,1a00 <vTaskPlaceOnEventListRestricted+0x1c>
    19e8:	fe512e23          	sw	t0,-4(sp)
    19ec:	004012f3          	csrrw	t0,0x4,zero
    19f0:	0012f293          	andi	t0,t0,1
    19f4:	00429073          	csrw	0x4,t0
    19f8:	ffc12283          	lw	t0,-4(sp)
    19fc:	0000006f          	j	19fc <vTaskPlaceOnEventListRestricted+0x18>
    1a00:	ff010113          	addi	sp,sp,-16
    1a04:	00912223          	sw	s1,4(sp)
    1a08:	00002497          	auipc	s1,0x2
    1a0c:	1d848493          	addi	s1,s1,472 # 3be0 <pxCurrentTCB>
    1a10:	00812423          	sw	s0,8(sp)
    1a14:	00058413          	mv	s0,a1
    1a18:	0004a583          	lw	a1,0(s1)
    1a1c:	00112623          	sw	ra,12(sp)
    1a20:	01858593          	addi	a1,a1,24
    1a24:	bedfe0ef          	jal	ra,610 <vListInsertEnd>
    1a28:	0004a503          	lw	a0,0(s1)
    1a2c:	00450513          	addi	a0,a0,4
    1a30:	c61fe0ef          	jal	ra,690 <uxListRemove>
    1a34:	00002797          	auipc	a5,0x2
    1a38:	1d878793          	addi	a5,a5,472 # 3c0c <xTickCount>
    1a3c:	0007a503          	lw	a0,0(a5)
    1a40:	00c12083          	lw	ra,12(sp)
    1a44:	00412483          	lw	s1,4(sp)
    1a48:	00850533          	add	a0,a0,s0
    1a4c:	00812403          	lw	s0,8(sp)
    1a50:	01010113          	addi	sp,sp,16
    1a54:	a35ff06f          	j	1488 <prvAddCurrentTaskToDelayedList>

00001a58 <xTaskRemoveFromEventList>:
    1a58:	fe010113          	addi	sp,sp,-32
    1a5c:	00112e23          	sw	ra,28(sp)
    1a60:	00812c23          	sw	s0,24(sp)
    1a64:	00912a23          	sw	s1,20(sp)
    1a68:	00c52783          	lw	a5,12(a0)
    1a6c:	00c7a403          	lw	s0,12(a5)
    1a70:	00041e63          	bnez	s0,1a8c <xTaskRemoveFromEventList+0x34>
    1a74:	fe512e23          	sw	t0,-4(sp)
    1a78:	004012f3          	csrrw	t0,0x4,zero
    1a7c:	0012f293          	andi	t0,t0,1
    1a80:	00429073          	csrw	0x4,t0
    1a84:	ffc12283          	lw	t0,-4(sp)
    1a88:	0000006f          	j	1a88 <xTaskRemoveFromEventList+0x30>
    1a8c:	01840593          	addi	a1,s0,24
    1a90:	00058513          	mv	a0,a1
    1a94:	00b12623          	sw	a1,12(sp)
    1a98:	bf9fe0ef          	jal	ra,690 <uxListRemove>
    1a9c:	00002797          	auipc	a5,0x2
    1aa0:	15878793          	addi	a5,a5,344 # 3bf4 <uxSchedulerSuspended>
    1aa4:	0007a783          	lw	a5,0(a5)
    1aa8:	00c12583          	lw	a1,12(sp)
    1aac:	00002517          	auipc	a0,0x2
    1ab0:	12050513          	addi	a0,a0,288 # 3bcc <xPendingReadyList>
    1ab4:	04079263          	bnez	a5,1af8 <xTaskRemoveFromEventList+0xa0>
    1ab8:	00440493          	addi	s1,s0,4
    1abc:	00048513          	mv	a0,s1
    1ac0:	bd1fe0ef          	jal	ra,690 <uxListRemove>
    1ac4:	00002797          	auipc	a5,0x2
    1ac8:	13878793          	addi	a5,a5,312 # 3bfc <uxTopReadyPriority>
    1acc:	02c42503          	lw	a0,44(s0)
    1ad0:	0007a783          	lw	a5,0(a5)
    1ad4:	00a7f663          	bleu	a0,a5,1ae0 <xTaskRemoveFromEventList+0x88>
    1ad8:	00002797          	auipc	a5,0x2
    1adc:	12a7a223          	sw	a0,292(a5) # 3bfc <uxTopReadyPriority>
    1ae0:	01400593          	li	a1,20
    1ae4:	addfe0ef          	jal	ra,5c0 <__mulsi3>
    1ae8:	00002797          	auipc	a5,0x2
    1aec:	05878793          	addi	a5,a5,88 # 3b40 <_end>
    1af0:	00048593          	mv	a1,s1
    1af4:	00a78533          	add	a0,a5,a0
    1af8:	b19fe0ef          	jal	ra,610 <vListInsertEnd>
    1afc:	00002797          	auipc	a5,0x2
    1b00:	0e478793          	addi	a5,a5,228 # 3be0 <pxCurrentTCB>
    1b04:	0007a783          	lw	a5,0(a5)
    1b08:	02c42703          	lw	a4,44(s0)
    1b0c:	00000513          	li	a0,0
    1b10:	02c7a783          	lw	a5,44(a5)
    1b14:	00e7fa63          	bleu	a4,a5,1b28 <xTaskRemoveFromEventList+0xd0>
    1b18:	00100793          	li	a5,1
    1b1c:	00002717          	auipc	a4,0x2
    1b20:	0ef72a23          	sw	a5,244(a4) # 3c10 <xYieldPending>
    1b24:	00100513          	li	a0,1
    1b28:	01c12083          	lw	ra,28(sp)
    1b2c:	01812403          	lw	s0,24(sp)
    1b30:	01412483          	lw	s1,20(sp)
    1b34:	02010113          	addi	sp,sp,32
    1b38:	00008067          	ret

00001b3c <xTaskRemoveFromUnorderedEventList>:
    1b3c:	00002717          	auipc	a4,0x2
    1b40:	0b870713          	addi	a4,a4,184 # 3bf4 <uxSchedulerSuspended>
    1b44:	00072703          	lw	a4,0(a4)
    1b48:	00071e63          	bnez	a4,1b64 <xTaskRemoveFromUnorderedEventList+0x28>
    1b4c:	fe512e23          	sw	t0,-4(sp)
    1b50:	004012f3          	csrrw	t0,0x4,zero
    1b54:	0012f293          	andi	t0,t0,1
    1b58:	00429073          	csrw	0x4,t0
    1b5c:	ffc12283          	lw	t0,-4(sp)
    1b60:	0000006f          	j	1b60 <xTaskRemoveFromUnorderedEventList+0x24>
    1b64:	ff010113          	addi	sp,sp,-16
    1b68:	00112623          	sw	ra,12(sp)
    1b6c:	00812423          	sw	s0,8(sp)
    1b70:	00912223          	sw	s1,4(sp)
    1b74:	80000737          	lui	a4,0x80000
    1b78:	00c52403          	lw	s0,12(a0)
    1b7c:	00e5e5b3          	or	a1,a1,a4
    1b80:	00b52023          	sw	a1,0(a0)
    1b84:	00041e63          	bnez	s0,1ba0 <xTaskRemoveFromUnorderedEventList+0x64>
    1b88:	fe512e23          	sw	t0,-4(sp)
    1b8c:	004012f3          	csrrw	t0,0x4,zero
    1b90:	0012f293          	andi	t0,t0,1
    1b94:	00429073          	csrw	0x4,t0
    1b98:	ffc12283          	lw	t0,-4(sp)
    1b9c:	0000006f          	j	1b9c <xTaskRemoveFromUnorderedEventList+0x60>
    1ba0:	af1fe0ef          	jal	ra,690 <uxListRemove>
    1ba4:	00440493          	addi	s1,s0,4
    1ba8:	00048513          	mv	a0,s1
    1bac:	ae5fe0ef          	jal	ra,690 <uxListRemove>
    1bb0:	00002797          	auipc	a5,0x2
    1bb4:	04c78793          	addi	a5,a5,76 # 3bfc <uxTopReadyPriority>
    1bb8:	02c42503          	lw	a0,44(s0)
    1bbc:	0007a783          	lw	a5,0(a5)
    1bc0:	00a7f663          	bleu	a0,a5,1bcc <xTaskRemoveFromUnorderedEventList+0x90>
    1bc4:	00002797          	auipc	a5,0x2
    1bc8:	02a7ac23          	sw	a0,56(a5) # 3bfc <uxTopReadyPriority>
    1bcc:	01400593          	li	a1,20
    1bd0:	9f1fe0ef          	jal	ra,5c0 <__mulsi3>
    1bd4:	00002797          	auipc	a5,0x2
    1bd8:	f6c78793          	addi	a5,a5,-148 # 3b40 <_end>
    1bdc:	00a78533          	add	a0,a5,a0
    1be0:	00048593          	mv	a1,s1
    1be4:	a2dfe0ef          	jal	ra,610 <vListInsertEnd>
    1be8:	00002797          	auipc	a5,0x2
    1bec:	ff878793          	addi	a5,a5,-8 # 3be0 <pxCurrentTCB>
    1bf0:	0007a783          	lw	a5,0(a5)
    1bf4:	02c42703          	lw	a4,44(s0)
    1bf8:	00000513          	li	a0,0
    1bfc:	02c7a783          	lw	a5,44(a5)
    1c00:	00e7fa63          	bleu	a4,a5,1c14 <xTaskRemoveFromUnorderedEventList+0xd8>
    1c04:	00100793          	li	a5,1
    1c08:	00002717          	auipc	a4,0x2
    1c0c:	00f72423          	sw	a5,8(a4) # 3c10 <xYieldPending>
    1c10:	00100513          	li	a0,1
    1c14:	00c12083          	lw	ra,12(sp)
    1c18:	00812403          	lw	s0,8(sp)
    1c1c:	00412483          	lw	s1,4(sp)
    1c20:	01010113          	addi	sp,sp,16
    1c24:	00008067          	ret

00001c28 <vTaskSetTimeOutState>:
    1c28:	00051e63          	bnez	a0,1c44 <vTaskSetTimeOutState+0x1c>
    1c2c:	fe512e23          	sw	t0,-4(sp)
    1c30:	004012f3          	csrrw	t0,0x4,zero
    1c34:	0012f293          	andi	t0,t0,1
    1c38:	00429073          	csrw	0x4,t0
    1c3c:	ffc12283          	lw	t0,-4(sp)
    1c40:	0000006f          	j	1c40 <vTaskSetTimeOutState+0x18>
    1c44:	00002797          	auipc	a5,0x2
    1c48:	fc078793          	addi	a5,a5,-64 # 3c04 <xNumOfOverflows>
    1c4c:	0007a783          	lw	a5,0(a5)
    1c50:	00f52023          	sw	a5,0(a0)
    1c54:	00002797          	auipc	a5,0x2
    1c58:	fb878793          	addi	a5,a5,-72 # 3c0c <xTickCount>
    1c5c:	0007a783          	lw	a5,0(a5)
    1c60:	00f52223          	sw	a5,4(a0)
    1c64:	00008067          	ret

00001c68 <vTaskMissedYield>:
    1c68:	00100793          	li	a5,1
    1c6c:	00002717          	auipc	a4,0x2
    1c70:	faf72223          	sw	a5,-92(a4) # 3c10 <xYieldPending>
    1c74:	00008067          	ret

00001c78 <xTaskGetSchedulerState>:
    1c78:	00002797          	auipc	a5,0x2
    1c7c:	f9078793          	addi	a5,a5,-112 # 3c08 <xSchedulerRunning>
    1c80:	0007a783          	lw	a5,0(a5)
    1c84:	00100513          	li	a0,1
    1c88:	00078c63          	beqz	a5,1ca0 <xTaskGetSchedulerState+0x28>
    1c8c:	00002797          	auipc	a5,0x2
    1c90:	f6878793          	addi	a5,a5,-152 # 3bf4 <uxSchedulerSuspended>
    1c94:	0007a503          	lw	a0,0(a5)
    1c98:	00153513          	seqz	a0,a0
    1c9c:	00151513          	slli	a0,a0,0x1
    1ca0:	00008067          	ret

00001ca4 <vTaskEnterCritical>:
    1ca4:	fe512e23          	sw	t0,-4(sp)
    1ca8:	004012f3          	csrrw	t0,0x4,zero
    1cac:	0012f293          	andi	t0,t0,1
    1cb0:	00429073          	csrw	0x4,t0
    1cb4:	ffc12283          	lw	t0,-4(sp)
    1cb8:	00002797          	auipc	a5,0x2
    1cbc:	f5078793          	addi	a5,a5,-176 # 3c08 <xSchedulerRunning>
    1cc0:	0007a783          	lw	a5,0(a5)
    1cc4:	02078063          	beqz	a5,1ce4 <vTaskEnterCritical+0x40>
    1cc8:	00002717          	auipc	a4,0x2
    1ccc:	f1870713          	addi	a4,a4,-232 # 3be0 <pxCurrentTCB>
    1cd0:	00072683          	lw	a3,0(a4)
    1cd4:	0446a783          	lw	a5,68(a3)
    1cd8:	00178793          	addi	a5,a5,1
    1cdc:	04f6a223          	sw	a5,68(a3)
    1ce0:	00072783          	lw	a5,0(a4)
    1ce4:	00008067          	ret

00001ce8 <vTaskExitCritical>:
    1ce8:	00002797          	auipc	a5,0x2
    1cec:	f2078793          	addi	a5,a5,-224 # 3c08 <xSchedulerRunning>
    1cf0:	0007a783          	lw	a5,0(a5)
    1cf4:	04078463          	beqz	a5,1d3c <vTaskExitCritical+0x54>
    1cf8:	00002797          	auipc	a5,0x2
    1cfc:	ee878793          	addi	a5,a5,-280 # 3be0 <pxCurrentTCB>
    1d00:	0007a703          	lw	a4,0(a5)
    1d04:	04472703          	lw	a4,68(a4)
    1d08:	02070a63          	beqz	a4,1d3c <vTaskExitCritical+0x54>
    1d0c:	0007a683          	lw	a3,0(a5)
    1d10:	0007a783          	lw	a5,0(a5)
    1d14:	0446a703          	lw	a4,68(a3)
    1d18:	fff70713          	addi	a4,a4,-1
    1d1c:	04e6a223          	sw	a4,68(a3)
    1d20:	0447a783          	lw	a5,68(a5)
    1d24:	00079c63          	bnez	a5,1d3c <vTaskExitCritical+0x54>
    1d28:	fe512e23          	sw	t0,-4(sp)
    1d2c:	004012f3          	csrrw	t0,0x4,zero
    1d30:	0012e293          	ori	t0,t0,1
    1d34:	00429073          	csrw	0x4,t0
    1d38:	ffc12283          	lw	t0,-4(sp)
    1d3c:	00008067          	ret

00001d40 <xTaskGenericCreate.part.5>:
    1d40:	fc010113          	addi	sp,sp,-64
    1d44:	02912a23          	sw	s1,52(sp)
    1d48:	03212823          	sw	s2,48(sp)
    1d4c:	03312623          	sw	s3,44(sp)
    1d50:	03412423          	sw	s4,40(sp)
    1d54:	03512223          	sw	s5,36(sp)
    1d58:	03612023          	sw	s6,32(sp)
    1d5c:	02112e23          	sw	ra,60(sp)
    1d60:	02812c23          	sw	s0,56(sp)
    1d64:	01712e23          	sw	s7,28(sp)
    1d68:	00050a93          	mv	s5,a0
    1d6c:	00058913          	mv	s2,a1
    1d70:	00060493          	mv	s1,a2
    1d74:	00068b13          	mv	s6,a3
    1d78:	00070993          	mv	s3,a4
    1d7c:	00078a13          	mv	s4,a5
    1d80:	00081c63          	bnez	a6,1d98 <xTaskGenericCreate.part.5+0x58>
    1d84:	00261513          	slli	a0,a2,0x2
    1d88:	125010ef          	jal	ra,36ac <pvPortMalloc>
    1d8c:	00050813          	mv	a6,a0
    1d90:	fff00513          	li	a0,-1
    1d94:	20080463          	beqz	a6,1f9c <xTaskGenericCreate.part.5+0x25c>
    1d98:	05000513          	li	a0,80
    1d9c:	01012623          	sw	a6,12(sp)
    1da0:	10d010ef          	jal	ra,36ac <pvPortMalloc>
    1da4:	00050413          	mv	s0,a0
    1da8:	00c12803          	lw	a6,12(sp)
    1dac:	1e050263          	beqz	a0,1f90 <xTaskGenericCreate.part.5+0x250>
    1db0:	00249493          	slli	s1,s1,0x2
    1db4:	ffc48493          	addi	s1,s1,-4
    1db8:	03052823          	sw	a6,48(a0)
    1dbc:	00980833          	add	a6,a6,s1
    1dc0:	ffc87493          	andi	s1,a6,-4
    1dc4:	00090593          	mv	a1,s2
    1dc8:	03450793          	addi	a5,a0,52
    1dcc:	01090713          	addi	a4,s2,16
    1dd0:	0005c683          	lbu	a3,0(a1)
    1dd4:	00d78023          	sb	a3,0(a5)
    1dd8:	0005c683          	lbu	a3,0(a1)
    1ddc:	00068863          	beqz	a3,1dec <xTaskGenericCreate.part.5+0xac>
    1de0:	00158593          	addi	a1,a1,1
    1de4:	00178793          	addi	a5,a5,1
    1de8:	feb714e3          	bne	a4,a1,1dd0 <xTaskGenericCreate.part.5+0x90>
    1dec:	040401a3          	sb	zero,67(s0)
    1df0:	00400793          	li	a5,4
    1df4:	00098b93          	mv	s7,s3
    1df8:	0137f463          	bleu	s3,a5,1e00 <xTaskGenericCreate.part.5+0xc0>
    1dfc:	00400b93          	li	s7,4
    1e00:	00440913          	addi	s2,s0,4
    1e04:	00090513          	mv	a0,s2
    1e08:	03742623          	sw	s7,44(s0)
    1e0c:	ffcfe0ef          	jal	ra,608 <vListInitialiseItem>
    1e10:	01840513          	addi	a0,s0,24
    1e14:	ff4fe0ef          	jal	ra,608 <vListInitialiseItem>
    1e18:	00500793          	li	a5,5
    1e1c:	417787b3          	sub	a5,a5,s7
    1e20:	04042423          	sw	zero,72(s0)
    1e24:	00842823          	sw	s0,16(s0)
    1e28:	00f42c23          	sw	a5,24(s0)
    1e2c:	02842223          	sw	s0,36(s0)
    1e30:	04042223          	sw	zero,68(s0)
    1e34:	04042623          	sw	zero,76(s0)
    1e38:	000b0613          	mv	a2,s6
    1e3c:	000a8593          	mv	a1,s5
    1e40:	00048513          	mv	a0,s1
    1e44:	f18fe0ef          	jal	ra,55c <pxPortInitialiseStack>
    1e48:	00a42023          	sw	a0,0(s0)
    1e4c:	000a0463          	beqz	s4,1e54 <xTaskGenericCreate.part.5+0x114>
    1e50:	008a2023          	sw	s0,0(s4)
    1e54:	e51ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    1e58:	00002717          	auipc	a4,0x2
    1e5c:	d9470713          	addi	a4,a4,-620 # 3bec <uxCurrentNumberOfTasks>
    1e60:	00072783          	lw	a5,0(a4)
    1e64:	00002497          	auipc	s1,0x2
    1e68:	d7c48493          	addi	s1,s1,-644 # 3be0 <pxCurrentTCB>
    1e6c:	00002a17          	auipc	s4,0x2
    1e70:	d9ca0a13          	addi	s4,s4,-612 # 3c08 <xSchedulerRunning>
    1e74:	00178793          	addi	a5,a5,1
    1e78:	00002697          	auipc	a3,0x2
    1e7c:	d6f6aa23          	sw	a5,-652(a3) # 3bec <uxCurrentNumberOfTasks>
    1e80:	0004a783          	lw	a5,0(s1)
    1e84:	14079263          	bnez	a5,1fc8 <xTaskGenericCreate.part.5+0x288>
    1e88:	00002797          	auipc	a5,0x2
    1e8c:	d487ac23          	sw	s0,-680(a5) # 3be0 <pxCurrentTCB>
    1e90:	00072703          	lw	a4,0(a4)
    1e94:	00100793          	li	a5,1
    1e98:	06f71e63          	bne	a4,a5,1f14 <xTaskGenericCreate.part.5+0x1d4>
    1e9c:	00002517          	auipc	a0,0x2
    1ea0:	ca450513          	addi	a0,a0,-860 # 3b40 <_end>
    1ea4:	f44fe0ef          	jal	ra,5e8 <vListInitialise>
    1ea8:	00002517          	auipc	a0,0x2
    1eac:	cac50513          	addi	a0,a0,-852 # 3b54 <_end+0x14>
    1eb0:	f38fe0ef          	jal	ra,5e8 <vListInitialise>
    1eb4:	00002517          	auipc	a0,0x2
    1eb8:	cb450513          	addi	a0,a0,-844 # 3b68 <_end+0x28>
    1ebc:	f2cfe0ef          	jal	ra,5e8 <vListInitialise>
    1ec0:	00002517          	auipc	a0,0x2
    1ec4:	cbc50513          	addi	a0,a0,-836 # 3b7c <_end+0x3c>
    1ec8:	f20fe0ef          	jal	ra,5e8 <vListInitialise>
    1ecc:	00002517          	auipc	a0,0x2
    1ed0:	cc450513          	addi	a0,a0,-828 # 3b90 <_end+0x50>
    1ed4:	f14fe0ef          	jal	ra,5e8 <vListInitialise>
    1ed8:	00002b17          	auipc	s6,0x2
    1edc:	cccb0b13          	addi	s6,s6,-820 # 3ba4 <xDelayedTaskList1>
    1ee0:	000b0513          	mv	a0,s6
    1ee4:	f04fe0ef          	jal	ra,5e8 <vListInitialise>
    1ee8:	00002a97          	auipc	s5,0x2
    1eec:	cd0a8a93          	addi	s5,s5,-816 # 3bb8 <xDelayedTaskList2>
    1ef0:	000a8513          	mv	a0,s5
    1ef4:	ef4fe0ef          	jal	ra,5e8 <vListInitialise>
    1ef8:	00002517          	auipc	a0,0x2
    1efc:	cd450513          	addi	a0,a0,-812 # 3bcc <xPendingReadyList>
    1f00:	ee8fe0ef          	jal	ra,5e8 <vListInitialise>
    1f04:	00002797          	auipc	a5,0x2
    1f08:	cf67a023          	sw	s6,-800(a5) # 3be4 <pxDelayedTaskList>
    1f0c:	00002797          	auipc	a5,0x2
    1f10:	cd57ae23          	sw	s5,-804(a5) # 3be8 <pxOverflowDelayedTaskList>
    1f14:	00002797          	auipc	a5,0x2
    1f18:	ce478793          	addi	a5,a5,-796 # 3bf8 <uxTaskNumber>
    1f1c:	0007a783          	lw	a5,0(a5)
    1f20:	02c42503          	lw	a0,44(s0)
    1f24:	00178793          	addi	a5,a5,1
    1f28:	00002717          	auipc	a4,0x2
    1f2c:	ccf72823          	sw	a5,-816(a4) # 3bf8 <uxTaskNumber>
    1f30:	00002797          	auipc	a5,0x2
    1f34:	ccc78793          	addi	a5,a5,-820 # 3bfc <uxTopReadyPriority>
    1f38:	0007a783          	lw	a5,0(a5)
    1f3c:	00a7f663          	bleu	a0,a5,1f48 <xTaskGenericCreate.part.5+0x208>
    1f40:	00002797          	auipc	a5,0x2
    1f44:	caa7ae23          	sw	a0,-836(a5) # 3bfc <uxTopReadyPriority>
    1f48:	01400593          	li	a1,20
    1f4c:	e74fe0ef          	jal	ra,5c0 <__mulsi3>
    1f50:	00002797          	auipc	a5,0x2
    1f54:	bf078793          	addi	a5,a5,-1040 # 3b40 <_end>
    1f58:	00a78533          	add	a0,a5,a0
    1f5c:	00090593          	mv	a1,s2
    1f60:	eb0fe0ef          	jal	ra,610 <vListInsertEnd>
    1f64:	d85ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    1f68:	000a2783          	lw	a5,0(s4)
    1f6c:	00100513          	li	a0,1
    1f70:	02078663          	beqz	a5,1f9c <xTaskGenericCreate.part.5+0x25c>
    1f74:	0004a783          	lw	a5,0(s1)
    1f78:	02c7a783          	lw	a5,44(a5)
    1f7c:	0337f063          	bleu	s3,a5,1f9c <xTaskGenericCreate.part.5+0x25c>
    1f80:	00a12623          	sw	a0,12(sp)
    1f84:	b50fe0ef          	jal	ra,2d4 <vPortYield>
    1f88:	00c12503          	lw	a0,12(sp)
    1f8c:	0100006f          	j	1f9c <xTaskGenericCreate.part.5+0x25c>
    1f90:	00080513          	mv	a0,a6
    1f94:	07d010ef          	jal	ra,3810 <vPortFree>
    1f98:	fff00513          	li	a0,-1
    1f9c:	03c12083          	lw	ra,60(sp)
    1fa0:	03812403          	lw	s0,56(sp)
    1fa4:	03412483          	lw	s1,52(sp)
    1fa8:	03012903          	lw	s2,48(sp)
    1fac:	02c12983          	lw	s3,44(sp)
    1fb0:	02812a03          	lw	s4,40(sp)
    1fb4:	02412a83          	lw	s5,36(sp)
    1fb8:	02012b03          	lw	s6,32(sp)
    1fbc:	01c12b83          	lw	s7,28(sp)
    1fc0:	04010113          	addi	sp,sp,64
    1fc4:	00008067          	ret
    1fc8:	000a2783          	lw	a5,0(s4)
    1fcc:	f40794e3          	bnez	a5,1f14 <xTaskGenericCreate.part.5+0x1d4>
    1fd0:	0004a783          	lw	a5,0(s1)
    1fd4:	02c7a783          	lw	a5,44(a5)
    1fd8:	f2f9eee3          	bltu	s3,a5,1f14 <xTaskGenericCreate.part.5+0x1d4>
    1fdc:	00002797          	auipc	a5,0x2
    1fe0:	c087a223          	sw	s0,-1020(a5) # 3be0 <pxCurrentTCB>
    1fe4:	f31ff06f          	j	1f14 <xTaskGenericCreate.part.5+0x1d4>

00001fe8 <xTaskGenericCreate>:
    1fe8:	00051e63          	bnez	a0,2004 <xTaskGenericCreate+0x1c>
    1fec:	fe512e23          	sw	t0,-4(sp)
    1ff0:	004012f3          	csrrw	t0,0x4,zero
    1ff4:	0012f293          	andi	t0,t0,1
    1ff8:	00429073          	csrw	0x4,t0
    1ffc:	ffc12283          	lw	t0,-4(sp)
    2000:	0000006f          	j	2000 <xTaskGenericCreate+0x18>
    2004:	00400893          	li	a7,4
    2008:	00e8fe63          	bleu	a4,a7,2024 <xTaskGenericCreate+0x3c>
    200c:	fe512e23          	sw	t0,-4(sp)
    2010:	004012f3          	csrrw	t0,0x4,zero
    2014:	0012f293          	andi	t0,t0,1
    2018:	00429073          	csrw	0x4,t0
    201c:	ffc12283          	lw	t0,-4(sp)
    2020:	0000006f          	j	2020 <xTaskGenericCreate+0x38>
    2024:	d1dff06f          	j	1d40 <xTaskGenericCreate.part.5>

00002028 <vTaskStartScheduler>:
    2028:	ff010113          	addi	sp,sp,-16
    202c:	00000813          	li	a6,0
    2030:	00000793          	li	a5,0
    2034:	00000713          	li	a4,0
    2038:	00000693          	li	a3,0
    203c:	40000613          	li	a2,1024
    2040:	00002597          	auipc	a1,0x2
    2044:	a9458593          	addi	a1,a1,-1388 # 3ad4 <vApplicationStackOverflowHook+0x18>
    2048:	fffff517          	auipc	a0,0xfffff
    204c:	41450513          	addi	a0,a0,1044 # 145c <prvIdleTask>
    2050:	00812423          	sw	s0,8(sp)
    2054:	00112623          	sw	ra,12(sp)
    2058:	00100413          	li	s0,1
    205c:	ce5ff0ef          	jal	ra,1d40 <xTaskGenericCreate.part.5>
    2060:	04851663          	bne	a0,s0,20ac <vTaskStartScheduler+0x84>
    2064:	2a1000ef          	jal	ra,2b04 <xTimerCreateTimerTask>
    2068:	04851263          	bne	a0,s0,20ac <vTaskStartScheduler+0x84>
    206c:	fe512e23          	sw	t0,-4(sp)
    2070:	004012f3          	csrrw	t0,0x4,zero
    2074:	0012f293          	andi	t0,t0,1
    2078:	00429073          	csrw	0x4,t0
    207c:	ffc12283          	lw	t0,-4(sp)
    2080:	fff00793          	li	a5,-1
    2084:	00002717          	auipc	a4,0x2
    2088:	b6f72e23          	sw	a5,-1156(a4) # 3c00 <xNextTaskUnblockTime>
    208c:	00812403          	lw	s0,8(sp)
    2090:	00002797          	auipc	a5,0x2
    2094:	b6a7ac23          	sw	a0,-1160(a5) # 3c08 <xSchedulerRunning>
    2098:	00c12083          	lw	ra,12(sp)
    209c:	00002797          	auipc	a5,0x2
    20a0:	b607a823          	sw	zero,-1168(a5) # 3c0c <xTickCount>
    20a4:	01010113          	addi	sp,sp,16
    20a8:	994fe06f          	j	23c <xPortStartScheduler>
    20ac:	00051e63          	bnez	a0,20c8 <vTaskStartScheduler+0xa0>
    20b0:	fe512e23          	sw	t0,-4(sp)
    20b4:	004012f3          	csrrw	t0,0x4,zero
    20b8:	0012f293          	andi	t0,t0,1
    20bc:	00429073          	csrw	0x4,t0
    20c0:	ffc12283          	lw	t0,-4(sp)
    20c4:	0000006f          	j	20c4 <vTaskStartScheduler+0x9c>
    20c8:	00c12083          	lw	ra,12(sp)
    20cc:	00812403          	lw	s0,8(sp)
    20d0:	01010113          	addi	sp,sp,16
    20d4:	00008067          	ret

000020d8 <xTaskResumeAll>:
    20d8:	fd010113          	addi	sp,sp,-48
    20dc:	02812423          	sw	s0,40(sp)
    20e0:	02112623          	sw	ra,44(sp)
    20e4:	02912223          	sw	s1,36(sp)
    20e8:	03212023          	sw	s2,32(sp)
    20ec:	01312e23          	sw	s3,28(sp)
    20f0:	01412c23          	sw	s4,24(sp)
    20f4:	01512a23          	sw	s5,20(sp)
    20f8:	01612823          	sw	s6,16(sp)
    20fc:	00002417          	auipc	s0,0x2
    2100:	af840413          	addi	s0,s0,-1288 # 3bf4 <uxSchedulerSuspended>
    2104:	00042783          	lw	a5,0(s0)
    2108:	00079e63          	bnez	a5,2124 <xTaskResumeAll+0x4c>
    210c:	fe512e23          	sw	t0,-4(sp)
    2110:	004012f3          	csrrw	t0,0x4,zero
    2114:	0012f293          	andi	t0,t0,1
    2118:	00429073          	csrw	0x4,t0
    211c:	ffc12283          	lw	t0,-4(sp)
    2120:	0000006f          	j	2120 <xTaskResumeAll+0x48>
    2124:	b81ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    2128:	00042783          	lw	a5,0(s0)
    212c:	fff78793          	addi	a5,a5,-1
    2130:	00002717          	auipc	a4,0x2
    2134:	acf72223          	sw	a5,-1340(a4) # 3bf4 <uxSchedulerSuspended>
    2138:	00042783          	lw	a5,0(s0)
    213c:	02078e63          	beqz	a5,2178 <xTaskResumeAll+0xa0>
    2140:	00000513          	li	a0,0
    2144:	00a12623          	sw	a0,12(sp)
    2148:	ba1ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    214c:	02c12083          	lw	ra,44(sp)
    2150:	02812403          	lw	s0,40(sp)
    2154:	00c12503          	lw	a0,12(sp)
    2158:	02412483          	lw	s1,36(sp)
    215c:	02012903          	lw	s2,32(sp)
    2160:	01c12983          	lw	s3,28(sp)
    2164:	01812a03          	lw	s4,24(sp)
    2168:	01412a83          	lw	s5,20(sp)
    216c:	01012b03          	lw	s6,16(sp)
    2170:	03010113          	addi	sp,sp,48
    2174:	00008067          	ret
    2178:	00002797          	auipc	a5,0x2
    217c:	a7478793          	addi	a5,a5,-1420 # 3bec <uxCurrentNumberOfTasks>
    2180:	0007a783          	lw	a5,0(a5)
    2184:	fa078ee3          	beqz	a5,2140 <xTaskResumeAll+0x68>
    2188:	00002497          	auipc	s1,0x2
    218c:	a4448493          	addi	s1,s1,-1468 # 3bcc <xPendingReadyList>
    2190:	00002997          	auipc	s3,0x2
    2194:	a6c98993          	addi	s3,s3,-1428 # 3bfc <uxTopReadyPriority>
    2198:	00002a17          	auipc	s4,0x2
    219c:	9a8a0a13          	addi	s4,s4,-1624 # 3b40 <_end>
    21a0:	00002a97          	auipc	s5,0x2
    21a4:	a40a8a93          	addi	s5,s5,-1472 # 3be0 <pxCurrentTCB>
    21a8:	00100b13          	li	s6,1
    21ac:	0004a783          	lw	a5,0(s1)
    21b0:	02079c63          	bnez	a5,21e8 <xTaskResumeAll+0x110>
    21b4:	00002417          	auipc	s0,0x2
    21b8:	a3c40413          	addi	s0,s0,-1476 # 3bf0 <uxPendedTicks>
    21bc:	00042783          	lw	a5,0(s0)
    21c0:	00100493          	li	s1,1
    21c4:	0a079263          	bnez	a5,2268 <xTaskResumeAll+0x190>
    21c8:	00002797          	auipc	a5,0x2
    21cc:	a4878793          	addi	a5,a5,-1464 # 3c10 <xYieldPending>
    21d0:	0007a703          	lw	a4,0(a5)
    21d4:	00100793          	li	a5,1
    21d8:	f6f714e3          	bne	a4,a5,2140 <xTaskResumeAll+0x68>
    21dc:	8f8fe0ef          	jal	ra,2d4 <vPortYield>
    21e0:	00100513          	li	a0,1
    21e4:	f61ff06f          	j	2144 <xTaskResumeAll+0x6c>
    21e8:	00c4a783          	lw	a5,12(s1)
    21ec:	00c7a403          	lw	s0,12(a5)
    21f0:	01840513          	addi	a0,s0,24
    21f4:	c9cfe0ef          	jal	ra,690 <uxListRemove>
    21f8:	00440913          	addi	s2,s0,4
    21fc:	00090513          	mv	a0,s2
    2200:	c90fe0ef          	jal	ra,690 <uxListRemove>
    2204:	02c42503          	lw	a0,44(s0)
    2208:	0009a783          	lw	a5,0(s3)
    220c:	00a7f663          	bleu	a0,a5,2218 <xTaskResumeAll+0x140>
    2210:	00002797          	auipc	a5,0x2
    2214:	9ea7a623          	sw	a0,-1556(a5) # 3bfc <uxTopReadyPriority>
    2218:	01400593          	li	a1,20
    221c:	ba4fe0ef          	jal	ra,5c0 <__mulsi3>
    2220:	00090593          	mv	a1,s2
    2224:	00aa0533          	add	a0,s4,a0
    2228:	be8fe0ef          	jal	ra,610 <vListInsertEnd>
    222c:	000aa783          	lw	a5,0(s5)
    2230:	02c42703          	lw	a4,44(s0)
    2234:	02c7a783          	lw	a5,44(a5)
    2238:	f6f76ae3          	bltu	a4,a5,21ac <xTaskResumeAll+0xd4>
    223c:	00002797          	auipc	a5,0x2
    2240:	9d67aa23          	sw	s6,-1580(a5) # 3c10 <xYieldPending>
    2244:	f69ff06f          	j	21ac <xTaskResumeAll+0xd4>
    2248:	b44ff0ef          	jal	ra,158c <xTaskIncrementTick>
    224c:	00050663          	beqz	a0,2258 <xTaskResumeAll+0x180>
    2250:	00002797          	auipc	a5,0x2
    2254:	9c97a023          	sw	s1,-1600(a5) # 3c10 <xYieldPending>
    2258:	00042783          	lw	a5,0(s0)
    225c:	fff78793          	addi	a5,a5,-1
    2260:	00002717          	auipc	a4,0x2
    2264:	98f72823          	sw	a5,-1648(a4) # 3bf0 <uxPendedTicks>
    2268:	00042783          	lw	a5,0(s0)
    226c:	fc079ee3          	bnez	a5,2248 <xTaskResumeAll+0x170>
    2270:	f59ff06f          	j	21c8 <xTaskResumeAll+0xf0>

00002274 <xTaskGetTickCount>:
    2274:	fe010113          	addi	sp,sp,-32
    2278:	00112e23          	sw	ra,28(sp)
    227c:	a29ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    2280:	00002797          	auipc	a5,0x2
    2284:	98c78793          	addi	a5,a5,-1652 # 3c0c <xTickCount>
    2288:	0007a503          	lw	a0,0(a5)
    228c:	00a12623          	sw	a0,12(sp)
    2290:	a59ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    2294:	01c12083          	lw	ra,28(sp)
    2298:	00c12503          	lw	a0,12(sp)
    229c:	02010113          	addi	sp,sp,32
    22a0:	00008067          	ret

000022a4 <xTaskCheckForTimeOut>:
    22a4:	00051e63          	bnez	a0,22c0 <xTaskCheckForTimeOut+0x1c>
    22a8:	fe512e23          	sw	t0,-4(sp)
    22ac:	004012f3          	csrrw	t0,0x4,zero
    22b0:	0012f293          	andi	t0,t0,1
    22b4:	00429073          	csrw	0x4,t0
    22b8:	ffc12283          	lw	t0,-4(sp)
    22bc:	0000006f          	j	22bc <xTaskCheckForTimeOut+0x18>
    22c0:	00059e63          	bnez	a1,22dc <xTaskCheckForTimeOut+0x38>
    22c4:	fe512e23          	sw	t0,-4(sp)
    22c8:	004012f3          	csrrw	t0,0x4,zero
    22cc:	0012f293          	andi	t0,t0,1
    22d0:	00429073          	csrw	0x4,t0
    22d4:	ffc12283          	lw	t0,-4(sp)
    22d8:	0000006f          	j	22d8 <xTaskCheckForTimeOut+0x34>
    22dc:	fe010113          	addi	sp,sp,-32
    22e0:	00812c23          	sw	s0,24(sp)
    22e4:	00912a23          	sw	s1,20(sp)
    22e8:	00050413          	mv	s0,a0
    22ec:	00112e23          	sw	ra,28(sp)
    22f0:	00058493          	mv	s1,a1
    22f4:	9b1ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    22f8:	00002797          	auipc	a5,0x2
    22fc:	91478793          	addi	a5,a5,-1772 # 3c0c <xTickCount>
    2300:	0007a683          	lw	a3,0(a5)
    2304:	00002797          	auipc	a5,0x2
    2308:	90078793          	addi	a5,a5,-1792 # 3c04 <xNumOfOverflows>
    230c:	0007a783          	lw	a5,0(a5)
    2310:	00042603          	lw	a2,0(s0)
    2314:	00442703          	lw	a4,4(s0)
    2318:	00f60663          	beq	a2,a5,2324 <xTaskCheckForTimeOut+0x80>
    231c:	00100513          	li	a0,1
    2320:	02e6f663          	bleu	a4,a3,234c <xTaskCheckForTimeOut+0xa8>
    2324:	0004a783          	lw	a5,0(s1)
    2328:	40e68633          	sub	a2,a3,a4
    232c:	00100513          	li	a0,1
    2330:	00f67e63          	bleu	a5,a2,234c <xTaskCheckForTimeOut+0xa8>
    2334:	40d787b3          	sub	a5,a5,a3
    2338:	00e787b3          	add	a5,a5,a4
    233c:	00040513          	mv	a0,s0
    2340:	00f4a023          	sw	a5,0(s1)
    2344:	8e5ff0ef          	jal	ra,1c28 <vTaskSetTimeOutState>
    2348:	00000513          	li	a0,0
    234c:	00a12623          	sw	a0,12(sp)
    2350:	999ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    2354:	01c12083          	lw	ra,28(sp)
    2358:	01812403          	lw	s0,24(sp)
    235c:	00c12503          	lw	a0,12(sp)
    2360:	01412483          	lw	s1,20(sp)
    2364:	02010113          	addi	sp,sp,32
    2368:	00008067          	ret

0000236c <uxTaskResetEventItemValue>:
    236c:	00002797          	auipc	a5,0x2
    2370:	87478793          	addi	a5,a5,-1932 # 3be0 <pxCurrentTCB>
    2374:	0007a703          	lw	a4,0(a5)
    2378:	0007a683          	lw	a3,0(a5)
    237c:	01872503          	lw	a0,24(a4)
    2380:	02c6a683          	lw	a3,44(a3)
    2384:	0007a703          	lw	a4,0(a5)
    2388:	00500793          	li	a5,5
    238c:	40d787b3          	sub	a5,a5,a3
    2390:	00f72c23          	sw	a5,24(a4)
    2394:	00008067          	ret

00002398 <ulTaskNotifyTake>:
    2398:	fe010113          	addi	sp,sp,-32
    239c:	00812c23          	sw	s0,24(sp)
    23a0:	00912a23          	sw	s1,20(sp)
    23a4:	01212823          	sw	s2,16(sp)
    23a8:	00112e23          	sw	ra,28(sp)
    23ac:	00050913          	mv	s2,a0
    23b0:	00058493          	mv	s1,a1
    23b4:	00002417          	auipc	s0,0x2
    23b8:	82c40413          	addi	s0,s0,-2004 # 3be0 <pxCurrentTCB>
    23bc:	8e9ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    23c0:	00042783          	lw	a5,0(s0)
    23c4:	0487a783          	lw	a5,72(a5)
    23c8:	02079c63          	bnez	a5,2400 <ulTaskNotifyTake+0x68>
    23cc:	00042783          	lw	a5,0(s0)
    23d0:	00100713          	li	a4,1
    23d4:	04e7a623          	sw	a4,76(a5)
    23d8:	02048463          	beqz	s1,2400 <ulTaskNotifyTake+0x68>
    23dc:	00042503          	lw	a0,0(s0)
    23e0:	00450513          	addi	a0,a0,4
    23e4:	aacfe0ef          	jal	ra,690 <uxListRemove>
    23e8:	00002797          	auipc	a5,0x2
    23ec:	82478793          	addi	a5,a5,-2012 # 3c0c <xTickCount>
    23f0:	0007a503          	lw	a0,0(a5)
    23f4:	00950533          	add	a0,a0,s1
    23f8:	890ff0ef          	jal	ra,1488 <prvAddCurrentTaskToDelayedList>
    23fc:	ed9fd0ef          	jal	ra,2d4 <vPortYield>
    2400:	8e9ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    2404:	8a1ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    2408:	00042783          	lw	a5,0(s0)
    240c:	0487a503          	lw	a0,72(a5)
    2410:	00050863          	beqz	a0,2420 <ulTaskNotifyTake+0x88>
    2414:	02090c63          	beqz	s2,244c <ulTaskNotifyTake+0xb4>
    2418:	00042783          	lw	a5,0(s0)
    241c:	0407a423          	sw	zero,72(a5)
    2420:	00042783          	lw	a5,0(s0)
    2424:	00a12623          	sw	a0,12(sp)
    2428:	0407a623          	sw	zero,76(a5)
    242c:	8bdff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    2430:	01c12083          	lw	ra,28(sp)
    2434:	01812403          	lw	s0,24(sp)
    2438:	00c12503          	lw	a0,12(sp)
    243c:	01412483          	lw	s1,20(sp)
    2440:	01012903          	lw	s2,16(sp)
    2444:	02010113          	addi	sp,sp,32
    2448:	00008067          	ret
    244c:	00042703          	lw	a4,0(s0)
    2450:	04872783          	lw	a5,72(a4)
    2454:	fff78793          	addi	a5,a5,-1
    2458:	04f72423          	sw	a5,72(a4)
    245c:	fc5ff06f          	j	2420 <ulTaskNotifyTake+0x88>

00002460 <xTaskNotifyWait>:
    2460:	fd010113          	addi	sp,sp,-48
    2464:	02812423          	sw	s0,40(sp)
    2468:	02912223          	sw	s1,36(sp)
    246c:	03212023          	sw	s2,32(sp)
    2470:	01312e23          	sw	s3,28(sp)
    2474:	02112623          	sw	ra,44(sp)
    2478:	00a12623          	sw	a0,12(sp)
    247c:	00058493          	mv	s1,a1
    2480:	00060913          	mv	s2,a2
    2484:	00068993          	mv	s3,a3
    2488:	00001417          	auipc	s0,0x1
    248c:	75840413          	addi	s0,s0,1880 # 3be0 <pxCurrentTCB>
    2490:	815ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    2494:	00042783          	lw	a5,0(s0)
    2498:	04c7a703          	lw	a4,76(a5)
    249c:	00200793          	li	a5,2
    24a0:	04f70863          	beq	a4,a5,24f0 <xTaskNotifyWait+0x90>
    24a4:	00042783          	lw	a5,0(s0)
    24a8:	00c12503          	lw	a0,12(sp)
    24ac:	0487a703          	lw	a4,72(a5)
    24b0:	fff54513          	not	a0,a0
    24b4:	00e57533          	and	a0,a0,a4
    24b8:	04a7a423          	sw	a0,72(a5)
    24bc:	00042783          	lw	a5,0(s0)
    24c0:	00100713          	li	a4,1
    24c4:	04e7a623          	sw	a4,76(a5)
    24c8:	02098463          	beqz	s3,24f0 <xTaskNotifyWait+0x90>
    24cc:	00042503          	lw	a0,0(s0)
    24d0:	00450513          	addi	a0,a0,4
    24d4:	9bcfe0ef          	jal	ra,690 <uxListRemove>
    24d8:	00001797          	auipc	a5,0x1
    24dc:	73478793          	addi	a5,a5,1844 # 3c0c <xTickCount>
    24e0:	0007a503          	lw	a0,0(a5)
    24e4:	01350533          	add	a0,a0,s3
    24e8:	fa1fe0ef          	jal	ra,1488 <prvAddCurrentTaskToDelayedList>
    24ec:	de9fd0ef          	jal	ra,2d4 <vPortYield>
    24f0:	ff8ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    24f4:	fb0ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    24f8:	00090863          	beqz	s2,2508 <xTaskNotifyWait+0xa8>
    24fc:	00042783          	lw	a5,0(s0)
    2500:	0487a783          	lw	a5,72(a5)
    2504:	00f92023          	sw	a5,0(s2)
    2508:	00042783          	lw	a5,0(s0)
    250c:	00000513          	li	a0,0
    2510:	04c7a703          	lw	a4,76(a5)
    2514:	00100793          	li	a5,1
    2518:	00f70e63          	beq	a4,a5,2534 <xTaskNotifyWait+0xd4>
    251c:	00042783          	lw	a5,0(s0)
    2520:	fff4c493          	not	s1,s1
    2524:	00100513          	li	a0,1
    2528:	0487a703          	lw	a4,72(a5)
    252c:	00e4f4b3          	and	s1,s1,a4
    2530:	0497a423          	sw	s1,72(a5)
    2534:	00042783          	lw	a5,0(s0)
    2538:	00a12623          	sw	a0,12(sp)
    253c:	0407a623          	sw	zero,76(a5)
    2540:	fa8ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    2544:	02c12083          	lw	ra,44(sp)
    2548:	02812403          	lw	s0,40(sp)
    254c:	00c12503          	lw	a0,12(sp)
    2550:	02412483          	lw	s1,36(sp)
    2554:	02012903          	lw	s2,32(sp)
    2558:	01c12983          	lw	s3,28(sp)
    255c:	03010113          	addi	sp,sp,48
    2560:	00008067          	ret

00002564 <xTaskGenericNotify>:
    2564:	00051e63          	bnez	a0,2580 <xTaskGenericNotify+0x1c>
    2568:	fe512e23          	sw	t0,-4(sp)
    256c:	004012f3          	csrrw	t0,0x4,zero
    2570:	0012f293          	andi	t0,t0,1
    2574:	00429073          	csrw	0x4,t0
    2578:	ffc12283          	lw	t0,-4(sp)
    257c:	0000006f          	j	257c <xTaskGenericNotify+0x18>
    2580:	fd010113          	addi	sp,sp,-48
    2584:	01312e23          	sw	s3,28(sp)
    2588:	00068993          	mv	s3,a3
    258c:	02812423          	sw	s0,40(sp)
    2590:	02912223          	sw	s1,36(sp)
    2594:	03212023          	sw	s2,32(sp)
    2598:	02112623          	sw	ra,44(sp)
    259c:	00060493          	mv	s1,a2
    25a0:	00058913          	mv	s2,a1
    25a4:	00050413          	mv	s0,a0
    25a8:	efcff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    25ac:	00098663          	beqz	s3,25b8 <xTaskGenericNotify+0x54>
    25b0:	04842783          	lw	a5,72(s0)
    25b4:	00f9a023          	sw	a5,0(s3)
    25b8:	04c42703          	lw	a4,76(s0)
    25bc:	00200793          	li	a5,2
    25c0:	04f42623          	sw	a5,76(s0)
    25c4:	06f48863          	beq	s1,a5,2634 <xTaskGenericNotify+0xd0>
    25c8:	0497e063          	bltu	a5,s1,2608 <xTaskGenericNotify+0xa4>
    25cc:	00100793          	li	a5,1
    25d0:	04f48a63          	beq	s1,a5,2624 <xTaskGenericNotify+0xc0>
    25d4:	00100793          	li	a5,1
    25d8:	06f70663          	beq	a4,a5,2644 <xTaskGenericNotify+0xe0>
    25dc:	00100513          	li	a0,1
    25e0:	00a12623          	sw	a0,12(sp)
    25e4:	f04ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    25e8:	02c12083          	lw	ra,44(sp)
    25ec:	02812403          	lw	s0,40(sp)
    25f0:	00c12503          	lw	a0,12(sp)
    25f4:	02412483          	lw	s1,36(sp)
    25f8:	02012903          	lw	s2,32(sp)
    25fc:	01c12983          	lw	s3,28(sp)
    2600:	03010113          	addi	sp,sp,48
    2604:	00008067          	ret
    2608:	00300693          	li	a3,3
    260c:	02d48063          	beq	s1,a3,262c <xTaskGenericNotify+0xc8>
    2610:	00400693          	li	a3,4
    2614:	fcd490e3          	bne	s1,a3,25d4 <xTaskGenericNotify+0x70>
    2618:	00f71a63          	bne	a4,a5,262c <xTaskGenericNotify+0xc8>
    261c:	00000513          	li	a0,0
    2620:	fc1ff06f          	j	25e0 <xTaskGenericNotify+0x7c>
    2624:	04842583          	lw	a1,72(s0)
    2628:	0125e933          	or	s2,a1,s2
    262c:	05242423          	sw	s2,72(s0)
    2630:	fa5ff06f          	j	25d4 <xTaskGenericNotify+0x70>
    2634:	04842783          	lw	a5,72(s0)
    2638:	00178793          	addi	a5,a5,1
    263c:	04f42423          	sw	a5,72(s0)
    2640:	f95ff06f          	j	25d4 <xTaskGenericNotify+0x70>
    2644:	00440493          	addi	s1,s0,4
    2648:	00048513          	mv	a0,s1
    264c:	844fe0ef          	jal	ra,690 <uxListRemove>
    2650:	00001797          	auipc	a5,0x1
    2654:	5ac78793          	addi	a5,a5,1452 # 3bfc <uxTopReadyPriority>
    2658:	02c42503          	lw	a0,44(s0)
    265c:	0007a783          	lw	a5,0(a5)
    2660:	00a7f663          	bleu	a0,a5,266c <xTaskGenericNotify+0x108>
    2664:	00001797          	auipc	a5,0x1
    2668:	58a7ac23          	sw	a0,1432(a5) # 3bfc <uxTopReadyPriority>
    266c:	01400593          	li	a1,20
    2670:	f51fd0ef          	jal	ra,5c0 <__mulsi3>
    2674:	00001797          	auipc	a5,0x1
    2678:	4cc78793          	addi	a5,a5,1228 # 3b40 <_end>
    267c:	00a78533          	add	a0,a5,a0
    2680:	00048593          	mv	a1,s1
    2684:	f8dfd0ef          	jal	ra,610 <vListInsertEnd>
    2688:	02842783          	lw	a5,40(s0)
    268c:	00078e63          	beqz	a5,26a8 <xTaskGenericNotify+0x144>
    2690:	fe512e23          	sw	t0,-4(sp)
    2694:	004012f3          	csrrw	t0,0x4,zero
    2698:	0012f293          	andi	t0,t0,1
    269c:	00429073          	csrw	0x4,t0
    26a0:	ffc12283          	lw	t0,-4(sp)
    26a4:	0000006f          	j	26a4 <xTaskGenericNotify+0x140>
    26a8:	00001797          	auipc	a5,0x1
    26ac:	53878793          	addi	a5,a5,1336 # 3be0 <pxCurrentTCB>
    26b0:	0007a783          	lw	a5,0(a5)
    26b4:	02c42703          	lw	a4,44(s0)
    26b8:	02c7a783          	lw	a5,44(a5)
    26bc:	f2e7f0e3          	bleu	a4,a5,25dc <xTaskGenericNotify+0x78>
    26c0:	c15fd0ef          	jal	ra,2d4 <vPortYield>
    26c4:	f19ff06f          	j	25dc <xTaskGenericNotify+0x78>

000026c8 <xTaskGenericNotifyFromISR>:
    26c8:	00051e63          	bnez	a0,26e4 <xTaskGenericNotifyFromISR+0x1c>
    26cc:	fe512e23          	sw	t0,-4(sp)
    26d0:	004012f3          	csrrw	t0,0x4,zero
    26d4:	0012f293          	andi	t0,t0,1
    26d8:	00429073          	csrw	0x4,t0
    26dc:	ffc12283          	lw	t0,-4(sp)
    26e0:	0000006f          	j	26e0 <xTaskGenericNotifyFromISR+0x18>
    26e4:	fe010113          	addi	sp,sp,-32
    26e8:	00812c23          	sw	s0,24(sp)
    26ec:	00912a23          	sw	s1,20(sp)
    26f0:	01212823          	sw	s2,16(sp)
    26f4:	01312623          	sw	s3,12(sp)
    26f8:	01412423          	sw	s4,8(sp)
    26fc:	01512223          	sw	s5,4(sp)
    2700:	00112e23          	sw	ra,28(sp)
    2704:	00070993          	mv	s3,a4
    2708:	00068a13          	mv	s4,a3
    270c:	00060493          	mv	s1,a2
    2710:	00058913          	mv	s2,a1
    2714:	00050413          	mv	s0,a0
    2718:	e3dfd0ef          	jal	ra,554 <vPortSetInterruptMask>
    271c:	00050a93          	mv	s5,a0
    2720:	000a0663          	beqz	s4,272c <xTaskGenericNotifyFromISR+0x64>
    2724:	04842783          	lw	a5,72(s0)
    2728:	00fa2023          	sw	a5,0(s4)
    272c:	04c42703          	lw	a4,76(s0)
    2730:	00200793          	li	a5,2
    2734:	04f42623          	sw	a5,76(s0)
    2738:	06f48c63          	beq	s1,a5,27b0 <xTaskGenericNotifyFromISR+0xe8>
    273c:	0497e463          	bltu	a5,s1,2784 <xTaskGenericNotifyFromISR+0xbc>
    2740:	00100793          	li	a5,1
    2744:	04f48e63          	beq	s1,a5,27a0 <xTaskGenericNotifyFromISR+0xd8>
    2748:	00100793          	li	a5,1
    274c:	06f70a63          	beq	a4,a5,27c0 <xTaskGenericNotifyFromISR+0xf8>
    2750:	00100413          	li	s0,1
    2754:	000a8513          	mv	a0,s5
    2758:	df5fd0ef          	jal	ra,54c <vPortClearInterruptMask>
    275c:	00040513          	mv	a0,s0
    2760:	01c12083          	lw	ra,28(sp)
    2764:	01812403          	lw	s0,24(sp)
    2768:	01412483          	lw	s1,20(sp)
    276c:	01012903          	lw	s2,16(sp)
    2770:	00c12983          	lw	s3,12(sp)
    2774:	00812a03          	lw	s4,8(sp)
    2778:	00412a83          	lw	s5,4(sp)
    277c:	02010113          	addi	sp,sp,32
    2780:	00008067          	ret
    2784:	00300693          	li	a3,3
    2788:	02d48063          	beq	s1,a3,27a8 <xTaskGenericNotifyFromISR+0xe0>
    278c:	00400693          	li	a3,4
    2790:	fad49ce3          	bne	s1,a3,2748 <xTaskGenericNotifyFromISR+0x80>
    2794:	00f71a63          	bne	a4,a5,27a8 <xTaskGenericNotifyFromISR+0xe0>
    2798:	00000413          	li	s0,0
    279c:	fb9ff06f          	j	2754 <xTaskGenericNotifyFromISR+0x8c>
    27a0:	04842583          	lw	a1,72(s0)
    27a4:	0125e933          	or	s2,a1,s2
    27a8:	05242423          	sw	s2,72(s0)
    27ac:	f9dff06f          	j	2748 <xTaskGenericNotifyFromISR+0x80>
    27b0:	04842783          	lw	a5,72(s0)
    27b4:	00178793          	addi	a5,a5,1
    27b8:	04f42423          	sw	a5,72(s0)
    27bc:	f8dff06f          	j	2748 <xTaskGenericNotifyFromISR+0x80>
    27c0:	02842783          	lw	a5,40(s0)
    27c4:	00078e63          	beqz	a5,27e0 <xTaskGenericNotifyFromISR+0x118>
    27c8:	fe512e23          	sw	t0,-4(sp)
    27cc:	004012f3          	csrrw	t0,0x4,zero
    27d0:	0012f293          	andi	t0,t0,1
    27d4:	00429073          	csrw	0x4,t0
    27d8:	ffc12283          	lw	t0,-4(sp)
    27dc:	0000006f          	j	27dc <xTaskGenericNotifyFromISR+0x114>
    27e0:	00001797          	auipc	a5,0x1
    27e4:	41478793          	addi	a5,a5,1044 # 3bf4 <uxSchedulerSuspended>
    27e8:	0007a783          	lw	a5,0(a5)
    27ec:	06079863          	bnez	a5,285c <xTaskGenericNotifyFromISR+0x194>
    27f0:	00440493          	addi	s1,s0,4
    27f4:	00048513          	mv	a0,s1
    27f8:	e99fd0ef          	jal	ra,690 <uxListRemove>
    27fc:	00001797          	auipc	a5,0x1
    2800:	40078793          	addi	a5,a5,1024 # 3bfc <uxTopReadyPriority>
    2804:	02c42503          	lw	a0,44(s0)
    2808:	0007a783          	lw	a5,0(a5)
    280c:	00a7f663          	bleu	a0,a5,2818 <xTaskGenericNotifyFromISR+0x150>
    2810:	00001797          	auipc	a5,0x1
    2814:	3ea7a623          	sw	a0,1004(a5) # 3bfc <uxTopReadyPriority>
    2818:	01400593          	li	a1,20
    281c:	da5fd0ef          	jal	ra,5c0 <__mulsi3>
    2820:	00001797          	auipc	a5,0x1
    2824:	32078793          	addi	a5,a5,800 # 3b40 <_end>
    2828:	00048593          	mv	a1,s1
    282c:	00a78533          	add	a0,a5,a0
    2830:	de1fd0ef          	jal	ra,610 <vListInsertEnd>
    2834:	00001797          	auipc	a5,0x1
    2838:	3ac78793          	addi	a5,a5,940 # 3be0 <pxCurrentTCB>
    283c:	0007a783          	lw	a5,0(a5)
    2840:	02c42703          	lw	a4,44(s0)
    2844:	02c7a783          	lw	a5,44(a5)
    2848:	f0e7f4e3          	bleu	a4,a5,2750 <xTaskGenericNotifyFromISR+0x88>
    284c:	f00982e3          	beqz	s3,2750 <xTaskGenericNotifyFromISR+0x88>
    2850:	00100793          	li	a5,1
    2854:	00f9a023          	sw	a5,0(s3)
    2858:	ef9ff06f          	j	2750 <xTaskGenericNotifyFromISR+0x88>
    285c:	01840593          	addi	a1,s0,24
    2860:	00001517          	auipc	a0,0x1
    2864:	36c50513          	addi	a0,a0,876 # 3bcc <xPendingReadyList>
    2868:	fc9ff06f          	j	2830 <xTaskGenericNotifyFromISR+0x168>

0000286c <vTaskNotifyGiveFromISR>:
    286c:	00051e63          	bnez	a0,2888 <vTaskNotifyGiveFromISR+0x1c>
    2870:	fe512e23          	sw	t0,-4(sp)
    2874:	004012f3          	csrrw	t0,0x4,zero
    2878:	0012f293          	andi	t0,t0,1
    287c:	00429073          	csrw	0x4,t0
    2880:	ffc12283          	lw	t0,-4(sp)
    2884:	0000006f          	j	2884 <vTaskNotifyGiveFromISR+0x18>
    2888:	fe010113          	addi	sp,sp,-32
    288c:	00812c23          	sw	s0,24(sp)
    2890:	00912a23          	sw	s1,20(sp)
    2894:	00050413          	mv	s0,a0
    2898:	01312623          	sw	s3,12(sp)
    289c:	00112e23          	sw	ra,28(sp)
    28a0:	01212823          	sw	s2,16(sp)
    28a4:	00058493          	mv	s1,a1
    28a8:	cadfd0ef          	jal	ra,554 <vPortSetInterruptMask>
    28ac:	00200793          	li	a5,2
    28b0:	04c42703          	lw	a4,76(s0)
    28b4:	04f42623          	sw	a5,76(s0)
    28b8:	04842783          	lw	a5,72(s0)
    28bc:	00050993          	mv	s3,a0
    28c0:	00178793          	addi	a5,a5,1
    28c4:	04f42423          	sw	a5,72(s0)
    28c8:	00100793          	li	a5,1
    28cc:	08f71e63          	bne	a4,a5,2968 <vTaskNotifyGiveFromISR+0xfc>
    28d0:	02842783          	lw	a5,40(s0)
    28d4:	00078e63          	beqz	a5,28f0 <vTaskNotifyGiveFromISR+0x84>
    28d8:	fe512e23          	sw	t0,-4(sp)
    28dc:	004012f3          	csrrw	t0,0x4,zero
    28e0:	0012f293          	andi	t0,t0,1
    28e4:	00429073          	csrw	0x4,t0
    28e8:	ffc12283          	lw	t0,-4(sp)
    28ec:	0000006f          	j	28ec <vTaskNotifyGiveFromISR+0x80>
    28f0:	00001797          	auipc	a5,0x1
    28f4:	30478793          	addi	a5,a5,772 # 3bf4 <uxSchedulerSuspended>
    28f8:	0007a783          	lw	a5,0(a5)
    28fc:	08079663          	bnez	a5,2988 <vTaskNotifyGiveFromISR+0x11c>
    2900:	00440913          	addi	s2,s0,4
    2904:	00090513          	mv	a0,s2
    2908:	d89fd0ef          	jal	ra,690 <uxListRemove>
    290c:	00001797          	auipc	a5,0x1
    2910:	2f078793          	addi	a5,a5,752 # 3bfc <uxTopReadyPriority>
    2914:	02c42503          	lw	a0,44(s0)
    2918:	0007a783          	lw	a5,0(a5)
    291c:	00a7f663          	bleu	a0,a5,2928 <vTaskNotifyGiveFromISR+0xbc>
    2920:	00001797          	auipc	a5,0x1
    2924:	2ca7ae23          	sw	a0,732(a5) # 3bfc <uxTopReadyPriority>
    2928:	01400593          	li	a1,20
    292c:	c95fd0ef          	jal	ra,5c0 <__mulsi3>
    2930:	00001797          	auipc	a5,0x1
    2934:	21078793          	addi	a5,a5,528 # 3b40 <_end>
    2938:	00090593          	mv	a1,s2
    293c:	00a78533          	add	a0,a5,a0
    2940:	cd1fd0ef          	jal	ra,610 <vListInsertEnd>
    2944:	00001797          	auipc	a5,0x1
    2948:	29c78793          	addi	a5,a5,668 # 3be0 <pxCurrentTCB>
    294c:	0007a783          	lw	a5,0(a5)
    2950:	02c42703          	lw	a4,44(s0)
    2954:	02c7a783          	lw	a5,44(a5)
    2958:	00e7f863          	bleu	a4,a5,2968 <vTaskNotifyGiveFromISR+0xfc>
    295c:	00048663          	beqz	s1,2968 <vTaskNotifyGiveFromISR+0xfc>
    2960:	00100793          	li	a5,1
    2964:	00f4a023          	sw	a5,0(s1)
    2968:	01812403          	lw	s0,24(sp)
    296c:	01c12083          	lw	ra,28(sp)
    2970:	01412483          	lw	s1,20(sp)
    2974:	01012903          	lw	s2,16(sp)
    2978:	00098513          	mv	a0,s3
    297c:	00c12983          	lw	s3,12(sp)
    2980:	02010113          	addi	sp,sp,32
    2984:	bc9fd06f          	j	54c <vPortClearInterruptMask>
    2988:	01840593          	addi	a1,s0,24
    298c:	00001517          	auipc	a0,0x1
    2990:	24050513          	addi	a0,a0,576 # 3bcc <xPendingReadyList>
    2994:	fadff06f          	j	2940 <vTaskNotifyGiveFromISR+0xd4>

00002998 <xTaskNotifyStateClear>:
    2998:	fe010113          	addi	sp,sp,-32
    299c:	00812c23          	sw	s0,24(sp)
    29a0:	00112e23          	sw	ra,28(sp)
    29a4:	00050413          	mv	s0,a0
    29a8:	00051863          	bnez	a0,29b8 <xTaskNotifyStateClear+0x20>
    29ac:	00001797          	auipc	a5,0x1
    29b0:	23478793          	addi	a5,a5,564 # 3be0 <pxCurrentTCB>
    29b4:	0007a403          	lw	s0,0(a5)
    29b8:	aecff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    29bc:	04c42703          	lw	a4,76(s0)
    29c0:	00200793          	li	a5,2
    29c4:	00000513          	li	a0,0
    29c8:	00f71663          	bne	a4,a5,29d4 <xTaskNotifyStateClear+0x3c>
    29cc:	04042623          	sw	zero,76(s0)
    29d0:	00100513          	li	a0,1
    29d4:	00a12623          	sw	a0,12(sp)
    29d8:	b10ff0ef          	jal	ra,1ce8 <vTaskExitCritical>
    29dc:	01c12083          	lw	ra,28(sp)
    29e0:	01812403          	lw	s0,24(sp)
    29e4:	00c12503          	lw	a0,12(sp)
    29e8:	02010113          	addi	sp,sp,32
    29ec:	00008067          	ret

000029f0 <prvInsertTimerInActiveList>:
    29f0:	ff010113          	addi	sp,sp,-16
    29f4:	00112623          	sw	ra,12(sp)
    29f8:	00b52223          	sw	a1,4(a0)
    29fc:	00a52823          	sw	a0,16(a0)
    2a00:	00050793          	mv	a5,a0
    2a04:	02b66c63          	bltu	a2,a1,2a3c <prvInsertTimerInActiveList+0x4c>
    2a08:	01852703          	lw	a4,24(a0)
    2a0c:	40d60633          	sub	a2,a2,a3
    2a10:	00100513          	li	a0,1
    2a14:	00e67e63          	bleu	a4,a2,2a30 <prvInsertTimerInActiveList+0x40>
    2a18:	00478593          	addi	a1,a5,4
    2a1c:	00001797          	auipc	a5,0x1
    2a20:	22478793          	addi	a5,a5,548 # 3c40 <pxOverflowTimerList>
    2a24:	0007a503          	lw	a0,0(a5)
    2a28:	c19fd0ef          	jal	ra,640 <vListInsert>
    2a2c:	00000513          	li	a0,0
    2a30:	00c12083          	lw	ra,12(sp)
    2a34:	01010113          	addi	sp,sp,16
    2a38:	00008067          	ret
    2a3c:	00d67663          	bleu	a3,a2,2a48 <prvInsertTimerInActiveList+0x58>
    2a40:	00100513          	li	a0,1
    2a44:	fed5f6e3          	bleu	a3,a1,2a30 <prvInsertTimerInActiveList+0x40>
    2a48:	00478593          	addi	a1,a5,4
    2a4c:	00001797          	auipc	a5,0x1
    2a50:	1f078793          	addi	a5,a5,496 # 3c3c <pxCurrentTimerList>
    2a54:	fd1ff06f          	j	2a24 <prvInsertTimerInActiveList+0x34>

00002a58 <prvCheckForValidListAndQueue.part.1>:
    2a58:	fe512e23          	sw	t0,-4(sp)
    2a5c:	004012f3          	csrrw	t0,0x4,zero
    2a60:	0012f293          	andi	t0,t0,1
    2a64:	00429073          	csrw	0x4,t0
    2a68:	ffc12283          	lw	t0,-4(sp)
    2a6c:	0000006f          	j	2a6c <prvCheckForValidListAndQueue.part.1+0x14>

00002a70 <prvCheckForValidListAndQueue>:
    2a70:	ff010113          	addi	sp,sp,-16
    2a74:	00112623          	sw	ra,12(sp)
    2a78:	00812423          	sw	s0,8(sp)
    2a7c:	00912223          	sw	s1,4(sp)
    2a80:	a24ff0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    2a84:	00001797          	auipc	a5,0x1
    2a88:	1c478793          	addi	a5,a5,452 # 3c48 <xTimerQueue>
    2a8c:	0007a783          	lw	a5,0(a5)
    2a90:	06079063          	bnez	a5,2af0 <prvCheckForValidListAndQueue+0x80>
    2a94:	00001497          	auipc	s1,0x1
    2a98:	18048493          	addi	s1,s1,384 # 3c14 <xActiveTimerList1>
    2a9c:	00048513          	mv	a0,s1
    2aa0:	b49fd0ef          	jal	ra,5e8 <vListInitialise>
    2aa4:	00001417          	auipc	s0,0x1
    2aa8:	18440413          	addi	s0,s0,388 # 3c28 <xActiveTimerList2>
    2aac:	00040513          	mv	a0,s0
    2ab0:	b39fd0ef          	jal	ra,5e8 <vListInitialise>
    2ab4:	00000613          	li	a2,0
    2ab8:	00c00593          	li	a1,12
    2abc:	00200513          	li	a0,2
    2ac0:	00001797          	auipc	a5,0x1
    2ac4:	1697ae23          	sw	s1,380(a5) # 3c3c <pxCurrentTimerList>
    2ac8:	00001797          	auipc	a5,0x1
    2acc:	1687ac23          	sw	s0,376(a5) # 3c40 <pxOverflowTimerList>
    2ad0:	e79fd0ef          	jal	ra,948 <xQueueGenericCreate>
    2ad4:	00001717          	auipc	a4,0x1
    2ad8:	16a72a23          	sw	a0,372(a4) # 3c48 <xTimerQueue>
    2adc:	00051463          	bnez	a0,2ae4 <prvCheckForValidListAndQueue+0x74>
    2ae0:	f79ff0ef          	jal	ra,2a58 <prvCheckForValidListAndQueue.part.1>
    2ae4:	00001597          	auipc	a1,0x1
    2ae8:	ff858593          	addi	a1,a1,-8 # 3adc <vApplicationStackOverflowHook+0x20>
    2aec:	835fe0ef          	jal	ra,1320 <vQueueAddToRegistry>
    2af0:	00812403          	lw	s0,8(sp)
    2af4:	00c12083          	lw	ra,12(sp)
    2af8:	00412483          	lw	s1,4(sp)
    2afc:	01010113          	addi	sp,sp,16
    2b00:	9e8ff06f          	j	1ce8 <vTaskExitCritical>

00002b04 <xTimerCreateTimerTask>:
    2b04:	ff010113          	addi	sp,sp,-16
    2b08:	00112623          	sw	ra,12(sp)
    2b0c:	f65ff0ef          	jal	ra,2a70 <prvCheckForValidListAndQueue>
    2b10:	00001797          	auipc	a5,0x1
    2b14:	13878793          	addi	a5,a5,312 # 3c48 <xTimerQueue>
    2b18:	0007a783          	lw	a5,0(a5)
    2b1c:	00079e63          	bnez	a5,2b38 <xTimerCreateTimerTask+0x34>
    2b20:	fe512e23          	sw	t0,-4(sp)
    2b24:	004012f3          	csrrw	t0,0x4,zero
    2b28:	0012f293          	andi	t0,t0,1
    2b2c:	00429073          	csrw	0x4,t0
    2b30:	ffc12283          	lw	t0,-4(sp)
    2b34:	0000006f          	j	2b34 <xTimerCreateTimerTask+0x30>
    2b38:	00000893          	li	a7,0
    2b3c:	00000813          	li	a6,0
    2b40:	00000793          	li	a5,0
    2b44:	00200713          	li	a4,2
    2b48:	00000693          	li	a3,0
    2b4c:	40000613          	li	a2,1024
    2b50:	00001597          	auipc	a1,0x1
    2b54:	f9458593          	addi	a1,a1,-108 # 3ae4 <vApplicationStackOverflowHook+0x28>
    2b58:	00000517          	auipc	a0,0x0
    2b5c:	24850513          	addi	a0,a0,584 # 2da0 <prvTimerTask>
    2b60:	c88ff0ef          	jal	ra,1fe8 <xTaskGenericCreate>
    2b64:	fa050ee3          	beqz	a0,2b20 <xTimerCreateTimerTask+0x1c>
    2b68:	00c12083          	lw	ra,12(sp)
    2b6c:	01010113          	addi	sp,sp,16
    2b70:	00008067          	ret

00002b74 <xTimerCreate>:
    2b74:	08058863          	beqz	a1,2c04 <xTimerCreate+0x90>
    2b78:	fe010113          	addi	sp,sp,-32
    2b7c:	01512223          	sw	s5,4(sp)
    2b80:	00050a93          	mv	s5,a0
    2b84:	02800513          	li	a0,40
    2b88:	00812c23          	sw	s0,24(sp)
    2b8c:	00912a23          	sw	s1,20(sp)
    2b90:	01212823          	sw	s2,16(sp)
    2b94:	01312623          	sw	s3,12(sp)
    2b98:	01412423          	sw	s4,8(sp)
    2b9c:	00112e23          	sw	ra,28(sp)
    2ba0:	00070913          	mv	s2,a4
    2ba4:	00068993          	mv	s3,a3
    2ba8:	00060a13          	mv	s4,a2
    2bac:	00058493          	mv	s1,a1
    2bb0:	2fd000ef          	jal	ra,36ac <pvPortMalloc>
    2bb4:	00050413          	mv	s0,a0
    2bb8:	02050263          	beqz	a0,2bdc <xTimerCreate+0x68>
    2bbc:	eb5ff0ef          	jal	ra,2a70 <prvCheckForValidListAndQueue>
    2bc0:	00440513          	addi	a0,s0,4
    2bc4:	01542023          	sw	s5,0(s0)
    2bc8:	00942c23          	sw	s1,24(s0)
    2bcc:	01442e23          	sw	s4,28(s0)
    2bd0:	03342023          	sw	s3,32(s0)
    2bd4:	03242223          	sw	s2,36(s0)
    2bd8:	a31fd0ef          	jal	ra,608 <vListInitialiseItem>
    2bdc:	00040513          	mv	a0,s0
    2be0:	01c12083          	lw	ra,28(sp)
    2be4:	01812403          	lw	s0,24(sp)
    2be8:	01412483          	lw	s1,20(sp)
    2bec:	01012903          	lw	s2,16(sp)
    2bf0:	00c12983          	lw	s3,12(sp)
    2bf4:	00812a03          	lw	s4,8(sp)
    2bf8:	00412a83          	lw	s5,4(sp)
    2bfc:	02010113          	addi	sp,sp,32
    2c00:	00008067          	ret
    2c04:	fe512e23          	sw	t0,-4(sp)
    2c08:	004012f3          	csrrw	t0,0x4,zero
    2c0c:	0012f293          	andi	t0,t0,1
    2c10:	00429073          	csrw	0x4,t0
    2c14:	ffc12283          	lw	t0,-4(sp)
    2c18:	0000006f          	j	2c18 <xTimerCreate+0xa4>

00002c1c <xTimerGenericCommand>:
    2c1c:	fd010113          	addi	sp,sp,-48
    2c20:	02112623          	sw	ra,44(sp)
    2c24:	02812423          	sw	s0,40(sp)
    2c28:	00051463          	bnez	a0,2c30 <xTimerGenericCommand+0x14>
    2c2c:	e2dff0ef          	jal	ra,2a58 <prvCheckForValidListAndQueue.part.1>
    2c30:	00001417          	auipc	s0,0x1
    2c34:	01840413          	addi	s0,s0,24 # 3c48 <xTimerQueue>
    2c38:	00042783          	lw	a5,0(s0)
    2c3c:	00e12623          	sw	a4,12(sp)
    2c40:	00050813          	mv	a6,a0
    2c44:	00000513          	li	a0,0
    2c48:	04078263          	beqz	a5,2c8c <xTimerGenericCommand+0x70>
    2c4c:	00068893          	mv	a7,a3
    2c50:	00b12a23          	sw	a1,20(sp)
    2c54:	00c12c23          	sw	a2,24(sp)
    2c58:	01012e23          	sw	a6,28(sp)
    2c5c:	00500693          	li	a3,5
    2c60:	02b6ce63          	blt	a3,a1,2c9c <xTimerGenericCommand+0x80>
    2c64:	814ff0ef          	jal	ra,1c78 <xTaskGetSchedulerState>
    2c68:	00c12703          	lw	a4,12(sp)
    2c6c:	00200793          	li	a5,2
    2c70:	00000693          	li	a3,0
    2c74:	00070613          	mv	a2,a4
    2c78:	00f50463          	beq	a0,a5,2c80 <xTimerGenericCommand+0x64>
    2c7c:	00000613          	li	a2,0
    2c80:	00042503          	lw	a0,0(s0)
    2c84:	01410593          	addi	a1,sp,20
    2c88:	d75fd0ef          	jal	ra,9fc <xQueueGenericSend>
    2c8c:	02c12083          	lw	ra,44(sp)
    2c90:	02812403          	lw	s0,40(sp)
    2c94:	03010113          	addi	sp,sp,48
    2c98:	00008067          	ret
    2c9c:	00000693          	li	a3,0
    2ca0:	00088613          	mv	a2,a7
    2ca4:	01410593          	addi	a1,sp,20
    2ca8:	00078513          	mv	a0,a5
    2cac:	f59fd0ef          	jal	ra,c04 <xQueueGenericSendFromISR>
    2cb0:	fddff06f          	j	2c8c <xTimerGenericCommand+0x70>

00002cb4 <prvSwitchTimerLists>:
    2cb4:	fe010113          	addi	sp,sp,-32
    2cb8:	00912a23          	sw	s1,20(sp)
    2cbc:	01212823          	sw	s2,16(sp)
    2cc0:	00112e23          	sw	ra,28(sp)
    2cc4:	00812c23          	sw	s0,24(sp)
    2cc8:	00001497          	auipc	s1,0x1
    2ccc:	f7448493          	addi	s1,s1,-140 # 3c3c <pxCurrentTimerList>
    2cd0:	00100913          	li	s2,1
    2cd4:	0004a783          	lw	a5,0(s1)
    2cd8:	0007a703          	lw	a4,0(a5)
    2cdc:	02071c63          	bnez	a4,2d14 <prvSwitchTimerLists+0x60>
    2ce0:	00001717          	auipc	a4,0x1
    2ce4:	f6070713          	addi	a4,a4,-160 # 3c40 <pxOverflowTimerList>
    2ce8:	00072703          	lw	a4,0(a4)
    2cec:	01c12083          	lw	ra,28(sp)
    2cf0:	01812403          	lw	s0,24(sp)
    2cf4:	00001697          	auipc	a3,0x1
    2cf8:	f4e6a423          	sw	a4,-184(a3) # 3c3c <pxCurrentTimerList>
    2cfc:	00001717          	auipc	a4,0x1
    2d00:	f4f72223          	sw	a5,-188(a4) # 3c40 <pxOverflowTimerList>
    2d04:	01412483          	lw	s1,20(sp)
    2d08:	01012903          	lw	s2,16(sp)
    2d0c:	02010113          	addi	sp,sp,32
    2d10:	00008067          	ret
    2d14:	00c7a783          	lw	a5,12(a5)
    2d18:	00c7a403          	lw	s0,12(a5)
    2d1c:	0007a603          	lw	a2,0(a5)
    2d20:	00440593          	addi	a1,s0,4
    2d24:	00058513          	mv	a0,a1
    2d28:	00c12623          	sw	a2,12(sp)
    2d2c:	00b12423          	sw	a1,8(sp)
    2d30:	961fd0ef          	jal	ra,690 <uxListRemove>
    2d34:	02442783          	lw	a5,36(s0)
    2d38:	00040513          	mv	a0,s0
    2d3c:	000780e7          	jalr	a5
    2d40:	01c42783          	lw	a5,28(s0)
    2d44:	00812583          	lw	a1,8(sp)
    2d48:	00c12603          	lw	a2,12(sp)
    2d4c:	f92794e3          	bne	a5,s2,2cd4 <prvSwitchTimerLists+0x20>
    2d50:	01842783          	lw	a5,24(s0)
    2d54:	00f607b3          	add	a5,a2,a5
    2d58:	00f67c63          	bleu	a5,a2,2d70 <prvSwitchTimerLists+0xbc>
    2d5c:	0004a503          	lw	a0,0(s1)
    2d60:	00f42223          	sw	a5,4(s0)
    2d64:	00842823          	sw	s0,16(s0)
    2d68:	8d9fd0ef          	jal	ra,640 <vListInsert>
    2d6c:	f69ff06f          	j	2cd4 <prvSwitchTimerLists+0x20>
    2d70:	00000713          	li	a4,0
    2d74:	00000693          	li	a3,0
    2d78:	00000593          	li	a1,0
    2d7c:	00040513          	mv	a0,s0
    2d80:	e9dff0ef          	jal	ra,2c1c <xTimerGenericCommand>
    2d84:	f40518e3          	bnez	a0,2cd4 <prvSwitchTimerLists+0x20>
    2d88:	fe512e23          	sw	t0,-4(sp)
    2d8c:	004012f3          	csrrw	t0,0x4,zero
    2d90:	0012f293          	andi	t0,t0,1
    2d94:	00429073          	csrw	0x4,t0
    2d98:	ffc12283          	lw	t0,-4(sp)
    2d9c:	0000006f          	j	2d9c <prvSwitchTimerLists+0xe8>

00002da0 <prvTimerTask>:
    2da0:	fb010113          	addi	sp,sp,-80
    2da4:	03312e23          	sw	s3,60(sp)
    2da8:	03412c23          	sw	s4,56(sp)
    2dac:	03512a23          	sw	s5,52(sp)
    2db0:	03612823          	sw	s6,48(sp)
    2db4:	03712623          	sw	s7,44(sp)
    2db8:	04112623          	sw	ra,76(sp)
    2dbc:	04812423          	sw	s0,72(sp)
    2dc0:	04912223          	sw	s1,68(sp)
    2dc4:	05212023          	sw	s2,64(sp)
    2dc8:	00001a17          	auipc	s4,0x1
    2dcc:	e74a0a13          	addi	s4,s4,-396 # 3c3c <pxCurrentTimerList>
    2dd0:	00001a97          	auipc	s5,0x1
    2dd4:	e74a8a93          	addi	s5,s5,-396 # 3c44 <xLastTime.2540>
    2dd8:	00100993          	li	s3,1
    2ddc:	00900b93          	li	s7,9
    2de0:	00100b13          	li	s6,1
    2de4:	000a2783          	lw	a5,0(s4)
    2de8:	00000913          	li	s2,0
    2dec:	0007a403          	lw	s0,0(a5)
    2df0:	00040663          	beqz	s0,2dfc <prvTimerTask+0x5c>
    2df4:	00c7a783          	lw	a5,12(a5)
    2df8:	0007a903          	lw	s2,0(a5)
    2dfc:	f34fe0ef          	jal	ra,1530 <vTaskSuspendAll>
    2e00:	c74ff0ef          	jal	ra,2274 <xTaskGetTickCount>
    2e04:	000aa783          	lw	a5,0(s5)
    2e08:	00050493          	mv	s1,a0
    2e0c:	0af57263          	bleu	a5,a0,2eb0 <prvTimerTask+0x110>
    2e10:	ea5ff0ef          	jal	ra,2cb4 <prvSwitchTimerLists>
    2e14:	00001797          	auipc	a5,0x1
    2e18:	e297a823          	sw	s1,-464(a5) # 3c44 <xLastTime.2540>
    2e1c:	abcff0ef          	jal	ra,20d8 <xTaskResumeAll>
    2e20:	00001497          	auipc	s1,0x1
    2e24:	e2848493          	addi	s1,s1,-472 # 3c48 <xTimerQueue>
    2e28:	0004a503          	lw	a0,0(s1)
    2e2c:	00000693          	li	a3,0
    2e30:	00000613          	li	a2,0
    2e34:	01410593          	addi	a1,sp,20
    2e38:	818fe0ef          	jal	ra,e50 <xQueueGenericReceive>
    2e3c:	fa0504e3          	beqz	a0,2de4 <prvTimerTask+0x44>
    2e40:	01412783          	lw	a5,20(sp)
    2e44:	fe07c2e3          	bltz	a5,2e28 <prvTimerTask+0x88>
    2e48:	01c12403          	lw	s0,28(sp)
    2e4c:	01442783          	lw	a5,20(s0)
    2e50:	00078663          	beqz	a5,2e5c <prvTimerTask+0xbc>
    2e54:	00440513          	addi	a0,s0,4
    2e58:	839fd0ef          	jal	ra,690 <uxListRemove>
    2e5c:	c18ff0ef          	jal	ra,2274 <xTaskGetTickCount>
    2e60:	000aa783          	lw	a5,0(s5)
    2e64:	00050613          	mv	a2,a0
    2e68:	00f57863          	bleu	a5,a0,2e78 <prvTimerTask+0xd8>
    2e6c:	00a12623          	sw	a0,12(sp)
    2e70:	e45ff0ef          	jal	ra,2cb4 <prvSwitchTimerLists>
    2e74:	00c12603          	lw	a2,12(sp)
    2e78:	00001797          	auipc	a5,0x1
    2e7c:	dcc7a623          	sw	a2,-564(a5) # 3c44 <xLastTime.2540>
    2e80:	01412783          	lw	a5,20(sp)
    2e84:	fafbe2e3          	bltu	s7,a5,2e28 <prvTimerTask+0x88>
    2e88:	00f997b3          	sll	a5,s3,a5
    2e8c:	2107f713          	andi	a4,a5,528
    2e90:	14071a63          	bnez	a4,2fe4 <prvTimerTask+0x244>
    2e94:	0c77f713          	andi	a4,a5,199
    2e98:	0e071263          	bnez	a4,2f7c <prvTimerTask+0x1dc>
    2e9c:	0207f793          	andi	a5,a5,32
    2ea0:	f80784e3          	beqz	a5,2e28 <prvTimerTask+0x88>
    2ea4:	00040513          	mv	a0,s0
    2ea8:	169000ef          	jal	ra,3810 <vPortFree>
    2eac:	f7dff06f          	j	2e28 <prvTimerTask+0x88>
    2eb0:	00001797          	auipc	a5,0x1
    2eb4:	d8a7aa23          	sw	a0,-620(a5) # 3c44 <xLastTime.2540>
    2eb8:	08040663          	beqz	s0,2f44 <prvTimerTask+0x1a4>
    2ebc:	00000613          	li	a2,0
    2ec0:	09256c63          	bltu	a0,s2,2f58 <prvTimerTask+0x1b8>
    2ec4:	a14ff0ef          	jal	ra,20d8 <xTaskResumeAll>
    2ec8:	000a2783          	lw	a5,0(s4)
    2ecc:	00c7a783          	lw	a5,12(a5)
    2ed0:	00c7a403          	lw	s0,12(a5)
    2ed4:	00440513          	addi	a0,s0,4
    2ed8:	fb8fd0ef          	jal	ra,690 <uxListRemove>
    2edc:	01c42783          	lw	a5,28(s0)
    2ee0:	05379a63          	bne	a5,s3,2f34 <prvTimerTask+0x194>
    2ee4:	01842583          	lw	a1,24(s0)
    2ee8:	00090693          	mv	a3,s2
    2eec:	00048613          	mv	a2,s1
    2ef0:	00b905b3          	add	a1,s2,a1
    2ef4:	00040513          	mv	a0,s0
    2ef8:	af9ff0ef          	jal	ra,29f0 <prvInsertTimerInActiveList>
    2efc:	03351c63          	bne	a0,s3,2f34 <prvTimerTask+0x194>
    2f00:	00000713          	li	a4,0
    2f04:	00000693          	li	a3,0
    2f08:	00090613          	mv	a2,s2
    2f0c:	00000593          	li	a1,0
    2f10:	00040513          	mv	a0,s0
    2f14:	d09ff0ef          	jal	ra,2c1c <xTimerGenericCommand>
    2f18:	00051e63          	bnez	a0,2f34 <prvTimerTask+0x194>
    2f1c:	fe512e23          	sw	t0,-4(sp)
    2f20:	004012f3          	csrrw	t0,0x4,zero
    2f24:	0012f293          	andi	t0,t0,1
    2f28:	00429073          	csrw	0x4,t0
    2f2c:	ffc12283          	lw	t0,-4(sp)
    2f30:	0000006f          	j	2f30 <prvTimerTask+0x190>
    2f34:	02442783          	lw	a5,36(s0)
    2f38:	00040513          	mv	a0,s0
    2f3c:	000780e7          	jalr	a5
    2f40:	ee1ff06f          	j	2e20 <prvTimerTask+0x80>
    2f44:	00001797          	auipc	a5,0x1
    2f48:	cfc78793          	addi	a5,a5,-772 # 3c40 <pxOverflowTimerList>
    2f4c:	0007a783          	lw	a5,0(a5)
    2f50:	0007a603          	lw	a2,0(a5)
    2f54:	00163613          	seqz	a2,a2
    2f58:	00001797          	auipc	a5,0x1
    2f5c:	cf078793          	addi	a5,a5,-784 # 3c48 <xTimerQueue>
    2f60:	0007a503          	lw	a0,0(a5)
    2f64:	409905b3          	sub	a1,s2,s1
    2f68:	c78fe0ef          	jal	ra,13e0 <vQueueWaitForMessageRestricted>
    2f6c:	96cff0ef          	jal	ra,20d8 <xTaskResumeAll>
    2f70:	ea0518e3          	bnez	a0,2e20 <prvTimerTask+0x80>
    2f74:	b60fd0ef          	jal	ra,2d4 <vPortYield>
    2f78:	ea9ff06f          	j	2e20 <prvTimerTask+0x80>
    2f7c:	01842583          	lw	a1,24(s0)
    2f80:	01812683          	lw	a3,24(sp)
    2f84:	00040513          	mv	a0,s0
    2f88:	00b685b3          	add	a1,a3,a1
    2f8c:	a65ff0ef          	jal	ra,29f0 <prvInsertTimerInActiveList>
    2f90:	e9651ce3          	bne	a0,s6,2e28 <prvTimerTask+0x88>
    2f94:	02442783          	lw	a5,36(s0)
    2f98:	00040513          	mv	a0,s0
    2f9c:	000780e7          	jalr	a5
    2fa0:	01c42783          	lw	a5,28(s0)
    2fa4:	e96792e3          	bne	a5,s6,2e28 <prvTimerTask+0x88>
    2fa8:	01842783          	lw	a5,24(s0)
    2fac:	01812603          	lw	a2,24(sp)
    2fb0:	00000713          	li	a4,0
    2fb4:	00000693          	li	a3,0
    2fb8:	00f60633          	add	a2,a2,a5
    2fbc:	00000593          	li	a1,0
    2fc0:	00040513          	mv	a0,s0
    2fc4:	c59ff0ef          	jal	ra,2c1c <xTimerGenericCommand>
    2fc8:	e60510e3          	bnez	a0,2e28 <prvTimerTask+0x88>
    2fcc:	fe512e23          	sw	t0,-4(sp)
    2fd0:	004012f3          	csrrw	t0,0x4,zero
    2fd4:	0012f293          	andi	t0,t0,1
    2fd8:	00429073          	csrw	0x4,t0
    2fdc:	ffc12283          	lw	t0,-4(sp)
    2fe0:	0000006f          	j	2fe0 <prvTimerTask+0x240>
    2fe4:	01812583          	lw	a1,24(sp)
    2fe8:	00b42c23          	sw	a1,24(s0)
    2fec:	00059e63          	bnez	a1,3008 <prvTimerTask+0x268>
    2ff0:	fe512e23          	sw	t0,-4(sp)
    2ff4:	004012f3          	csrrw	t0,0x4,zero
    2ff8:	0012f293          	andi	t0,t0,1
    2ffc:	00429073          	csrw	0x4,t0
    3000:	ffc12283          	lw	t0,-4(sp)
    3004:	0000006f          	j	3004 <prvTimerTask+0x264>
    3008:	00060693          	mv	a3,a2
    300c:	00c585b3          	add	a1,a1,a2
    3010:	00040513          	mv	a0,s0
    3014:	9ddff0ef          	jal	ra,29f0 <prvInsertTimerInActiveList>
    3018:	e11ff06f          	j	2e28 <prvTimerTask+0x88>

0000301c <pcTimerGetTimerName>:
    301c:	00051e63          	bnez	a0,3038 <pcTimerGetTimerName+0x1c>
    3020:	fe512e23          	sw	t0,-4(sp)
    3024:	004012f3          	csrrw	t0,0x4,zero
    3028:	0012f293          	andi	t0,t0,1
    302c:	00429073          	csrw	0x4,t0
    3030:	ffc12283          	lw	t0,-4(sp)
    3034:	0000006f          	j	3034 <pcTimerGetTimerName+0x18>
    3038:	00052503          	lw	a0,0(a0)
    303c:	00008067          	ret

00003040 <xTimerIsTimerActive>:
    3040:	00051e63          	bnez	a0,305c <xTimerIsTimerActive+0x1c>
    3044:	fe512e23          	sw	t0,-4(sp)
    3048:	004012f3          	csrrw	t0,0x4,zero
    304c:	0012f293          	andi	t0,t0,1
    3050:	00429073          	csrw	0x4,t0
    3054:	ffc12283          	lw	t0,-4(sp)
    3058:	0000006f          	j	3058 <xTimerIsTimerActive+0x18>
    305c:	fe010113          	addi	sp,sp,-32
    3060:	00112e23          	sw	ra,28(sp)
    3064:	00812c23          	sw	s0,24(sp)
    3068:	00050413          	mv	s0,a0
    306c:	c39fe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    3070:	01442503          	lw	a0,20(s0)
    3074:	00a03533          	snez	a0,a0
    3078:	00a12623          	sw	a0,12(sp)
    307c:	c6dfe0ef          	jal	ra,1ce8 <vTaskExitCritical>
    3080:	01c12083          	lw	ra,28(sp)
    3084:	01812403          	lw	s0,24(sp)
    3088:	00c12503          	lw	a0,12(sp)
    308c:	02010113          	addi	sp,sp,32
    3090:	00008067          	ret

00003094 <pvTimerGetTimerID>:
    3094:	00051e63          	bnez	a0,30b0 <pvTimerGetTimerID+0x1c>
    3098:	fe512e23          	sw	t0,-4(sp)
    309c:	004012f3          	csrrw	t0,0x4,zero
    30a0:	0012f293          	andi	t0,t0,1
    30a4:	00429073          	csrw	0x4,t0
    30a8:	ffc12283          	lw	t0,-4(sp)
    30ac:	0000006f          	j	30ac <pvTimerGetTimerID+0x18>
    30b0:	fe010113          	addi	sp,sp,-32
    30b4:	00112e23          	sw	ra,28(sp)
    30b8:	00812c23          	sw	s0,24(sp)
    30bc:	00050413          	mv	s0,a0
    30c0:	be5fe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    30c4:	02042503          	lw	a0,32(s0)
    30c8:	00a12623          	sw	a0,12(sp)
    30cc:	c1dfe0ef          	jal	ra,1ce8 <vTaskExitCritical>
    30d0:	01c12083          	lw	ra,28(sp)
    30d4:	01812403          	lw	s0,24(sp)
    30d8:	00c12503          	lw	a0,12(sp)
    30dc:	02010113          	addi	sp,sp,32
    30e0:	00008067          	ret

000030e4 <vTimerSetTimerID>:
    30e4:	00051e63          	bnez	a0,3100 <vTimerSetTimerID+0x1c>
    30e8:	fe512e23          	sw	t0,-4(sp)
    30ec:	004012f3          	csrrw	t0,0x4,zero
    30f0:	0012f293          	andi	t0,t0,1
    30f4:	00429073          	csrw	0x4,t0
    30f8:	ffc12283          	lw	t0,-4(sp)
    30fc:	0000006f          	j	30fc <vTimerSetTimerID+0x18>
    3100:	ff010113          	addi	sp,sp,-16
    3104:	00812423          	sw	s0,8(sp)
    3108:	00912223          	sw	s1,4(sp)
    310c:	00050413          	mv	s0,a0
    3110:	00058493          	mv	s1,a1
    3114:	00112623          	sw	ra,12(sp)
    3118:	b8dfe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    311c:	02942023          	sw	s1,32(s0)
    3120:	00812403          	lw	s0,8(sp)
    3124:	00c12083          	lw	ra,12(sp)
    3128:	00412483          	lw	s1,4(sp)
    312c:	01010113          	addi	sp,sp,16
    3130:	bb9fe06f          	j	1ce8 <vTaskExitCritical>

00003134 <xEventGroupCreate>:
    3134:	ff010113          	addi	sp,sp,-16
    3138:	01800513          	li	a0,24
    313c:	00812423          	sw	s0,8(sp)
    3140:	00112623          	sw	ra,12(sp)
    3144:	568000ef          	jal	ra,36ac <pvPortMalloc>
    3148:	00050413          	mv	s0,a0
    314c:	00050863          	beqz	a0,315c <xEventGroupCreate+0x28>
    3150:	00052023          	sw	zero,0(a0)
    3154:	00450513          	addi	a0,a0,4
    3158:	c90fd0ef          	jal	ra,5e8 <vListInitialise>
    315c:	00040513          	mv	a0,s0
    3160:	00c12083          	lw	ra,12(sp)
    3164:	00812403          	lw	s0,8(sp)
    3168:	01010113          	addi	sp,sp,16
    316c:	00008067          	ret

00003170 <xEventGroupWaitBits>:
    3170:	00051e63          	bnez	a0,318c <xEventGroupWaitBits+0x1c>
    3174:	fe512e23          	sw	t0,-4(sp)
    3178:	004012f3          	csrrw	t0,0x4,zero
    317c:	0012f293          	andi	t0,t0,1
    3180:	00429073          	csrw	0x4,t0
    3184:	ffc12283          	lw	t0,-4(sp)
    3188:	0000006f          	j	3188 <xEventGroupWaitBits+0x18>
    318c:	fe010113          	addi	sp,sp,-32
    3190:	01212823          	sw	s2,16(sp)
    3194:	ff000937          	lui	s2,0xff000
    3198:	00112e23          	sw	ra,28(sp)
    319c:	00812c23          	sw	s0,24(sp)
    31a0:	00912a23          	sw	s1,20(sp)
    31a4:	01312623          	sw	s3,12(sp)
    31a8:	01412423          	sw	s4,8(sp)
    31ac:	01512223          	sw	s5,4(sp)
    31b0:	01612023          	sw	s6,0(sp)
    31b4:	0125f933          	and	s2,a1,s2
    31b8:	00090e63          	beqz	s2,31d4 <xEventGroupWaitBits+0x64>
    31bc:	fe512e23          	sw	t0,-4(sp)
    31c0:	004012f3          	csrrw	t0,0x4,zero
    31c4:	0012f293          	andi	t0,t0,1
    31c8:	00429073          	csrw	0x4,t0
    31cc:	ffc12283          	lw	t0,-4(sp)
    31d0:	0000006f          	j	31d0 <xEventGroupWaitBits+0x60>
    31d4:	00059e63          	bnez	a1,31f0 <xEventGroupWaitBits+0x80>
    31d8:	fe512e23          	sw	t0,-4(sp)
    31dc:	004012f3          	csrrw	t0,0x4,zero
    31e0:	0012f293          	andi	t0,t0,1
    31e4:	00429073          	csrw	0x4,t0
    31e8:	ffc12283          	lw	t0,-4(sp)
    31ec:	0000006f          	j	31ec <xEventGroupWaitBits+0x7c>
    31f0:	00070993          	mv	s3,a4
    31f4:	00068b13          	mv	s6,a3
    31f8:	00060a93          	mv	s5,a2
    31fc:	00058413          	mv	s0,a1
    3200:	00050a13          	mv	s4,a0
    3204:	a75fe0ef          	jal	ra,1c78 <xTaskGetSchedulerState>
    3208:	02051063          	bnez	a0,3228 <xEventGroupWaitBits+0xb8>
    320c:	00098e63          	beqz	s3,3228 <xEventGroupWaitBits+0xb8>
    3210:	fe512e23          	sw	t0,-4(sp)
    3214:	004012f3          	csrrw	t0,0x4,zero
    3218:	0012f293          	andi	t0,t0,1
    321c:	00429073          	csrw	0x4,t0
    3220:	ffc12283          	lw	t0,-4(sp)
    3224:	0000006f          	j	3224 <xEventGroupWaitBits+0xb4>
    3228:	b08fe0ef          	jal	ra,1530 <vTaskSuspendAll>
    322c:	000a2483          	lw	s1,0(s4)
    3230:	009477b3          	and	a5,s0,s1
    3234:	040b1063          	bnez	s6,3274 <xEventGroupWaitBits+0x104>
    3238:	04079063          	bnez	a5,3278 <xEventGroupWaitBits+0x108>
    323c:	00000913          	li	s2,0
    3240:	04098463          	beqz	s3,3288 <xEventGroupWaitBits+0x118>
    3244:	015035b3          	snez	a1,s5
    3248:	01859593          	slli	a1,a1,0x18
    324c:	000b0663          	beqz	s6,3258 <xEventGroupWaitBits+0xe8>
    3250:	040007b7          	lui	a5,0x4000
    3254:	00f5e5b3          	or	a1,a1,a5
    3258:	00098613          	mv	a2,s3
    325c:	0085e5b3          	or	a1,a1,s0
    3260:	004a0513          	addi	a0,s4,4
    3264:	ed4fe0ef          	jal	ra,1938 <vTaskPlaceOnUnorderedEventList>
    3268:	00098913          	mv	s2,s3
    326c:	00000493          	li	s1,0
    3270:	0180006f          	j	3288 <xEventGroupWaitBits+0x118>
    3274:	fcf414e3          	bne	s0,a5,323c <xEventGroupWaitBits+0xcc>
    3278:	000a8863          	beqz	s5,3288 <xEventGroupWaitBits+0x118>
    327c:	fff44793          	not	a5,s0
    3280:	0097f7b3          	and	a5,a5,s1
    3284:	00fa2023          	sw	a5,0(s4)
    3288:	e51fe0ef          	jal	ra,20d8 <xTaskResumeAll>
    328c:	04090063          	beqz	s2,32cc <xEventGroupWaitBits+0x15c>
    3290:	00051463          	bnez	a0,3298 <xEventGroupWaitBits+0x128>
    3294:	840fd0ef          	jal	ra,2d4 <vPortYield>
    3298:	8d4ff0ef          	jal	ra,236c <uxTaskResetEventItemValue>
    329c:	00651793          	slli	a5,a0,0x6
    32a0:	00050493          	mv	s1,a0
    32a4:	0007ce63          	bltz	a5,32c0 <xEventGroupWaitBits+0x150>
    32a8:	9fdfe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    32ac:	000a2483          	lw	s1,0(s4)
    32b0:	009477b3          	and	a5,s0,s1
    32b4:	040b1263          	bnez	s6,32f8 <xEventGroupWaitBits+0x188>
    32b8:	04079263          	bnez	a5,32fc <xEventGroupWaitBits+0x18c>
    32bc:	a2dfe0ef          	jal	ra,1ce8 <vTaskExitCritical>
    32c0:	01000537          	lui	a0,0x1000
    32c4:	fff50513          	addi	a0,a0,-1 # ffffff <_fstack+0xfe5803>
    32c8:	00a4f4b3          	and	s1,s1,a0
    32cc:	01c12083          	lw	ra,28(sp)
    32d0:	01812403          	lw	s0,24(sp)
    32d4:	00048513          	mv	a0,s1
    32d8:	01012903          	lw	s2,16(sp)
    32dc:	01412483          	lw	s1,20(sp)
    32e0:	00c12983          	lw	s3,12(sp)
    32e4:	00812a03          	lw	s4,8(sp)
    32e8:	00412a83          	lw	s5,4(sp)
    32ec:	00012b03          	lw	s6,0(sp)
    32f0:	02010113          	addi	sp,sp,32
    32f4:	00008067          	ret
    32f8:	fcf412e3          	bne	s0,a5,32bc <xEventGroupWaitBits+0x14c>
    32fc:	fc0a80e3          	beqz	s5,32bc <xEventGroupWaitBits+0x14c>
    3300:	fff44413          	not	s0,s0
    3304:	00947433          	and	s0,s0,s1
    3308:	008a2023          	sw	s0,0(s4)
    330c:	fb1ff06f          	j	32bc <xEventGroupWaitBits+0x14c>

00003310 <xEventGroupClearBits>:
    3310:	00051e63          	bnez	a0,332c <xEventGroupClearBits+0x1c>
    3314:	fe512e23          	sw	t0,-4(sp)
    3318:	004012f3          	csrrw	t0,0x4,zero
    331c:	0012f293          	andi	t0,t0,1
    3320:	00429073          	csrw	0x4,t0
    3324:	ffc12283          	lw	t0,-4(sp)
    3328:	0000006f          	j	3328 <xEventGroupClearBits+0x18>
    332c:	ff0007b7          	lui	a5,0xff000
    3330:	00f5f7b3          	and	a5,a1,a5
    3334:	00078e63          	beqz	a5,3350 <xEventGroupClearBits+0x40>
    3338:	fe512e23          	sw	t0,-4(sp)
    333c:	004012f3          	csrrw	t0,0x4,zero
    3340:	0012f293          	andi	t0,t0,1
    3344:	00429073          	csrw	0x4,t0
    3348:	ffc12283          	lw	t0,-4(sp)
    334c:	0000006f          	j	334c <xEventGroupClearBits+0x3c>
    3350:	fe010113          	addi	sp,sp,-32
    3354:	00112e23          	sw	ra,28(sp)
    3358:	00812c23          	sw	s0,24(sp)
    335c:	00912a23          	sw	s1,20(sp)
    3360:	00058413          	mv	s0,a1
    3364:	00050493          	mv	s1,a0
    3368:	93dfe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    336c:	0004a503          	lw	a0,0(s1)
    3370:	fff44593          	not	a1,s0
    3374:	00a5f5b3          	and	a1,a1,a0
    3378:	00b4a023          	sw	a1,0(s1)
    337c:	00a12623          	sw	a0,12(sp)
    3380:	969fe0ef          	jal	ra,1ce8 <vTaskExitCritical>
    3384:	01c12083          	lw	ra,28(sp)
    3388:	01812403          	lw	s0,24(sp)
    338c:	00c12503          	lw	a0,12(sp)
    3390:	01412483          	lw	s1,20(sp)
    3394:	02010113          	addi	sp,sp,32
    3398:	00008067          	ret

0000339c <xEventGroupGetBitsFromISR>:
    339c:	ff010113          	addi	sp,sp,-16
    33a0:	00812423          	sw	s0,8(sp)
    33a4:	00050413          	mv	s0,a0
    33a8:	00112623          	sw	ra,12(sp)
    33ac:	9a8fd0ef          	jal	ra,554 <vPortSetInterruptMask>
    33b0:	00042403          	lw	s0,0(s0)
    33b4:	998fd0ef          	jal	ra,54c <vPortClearInterruptMask>
    33b8:	00c12083          	lw	ra,12(sp)
    33bc:	00040513          	mv	a0,s0
    33c0:	00812403          	lw	s0,8(sp)
    33c4:	01010113          	addi	sp,sp,16
    33c8:	00008067          	ret

000033cc <xEventGroupSetBits>:
    33cc:	00051e63          	bnez	a0,33e8 <xEventGroupSetBits+0x1c>
    33d0:	fe512e23          	sw	t0,-4(sp)
    33d4:	004012f3          	csrrw	t0,0x4,zero
    33d8:	0012f293          	andi	t0,t0,1
    33dc:	00429073          	csrw	0x4,t0
    33e0:	ffc12283          	lw	t0,-4(sp)
    33e4:	0000006f          	j	33e4 <xEventGroupSetBits+0x18>
    33e8:	ff0007b7          	lui	a5,0xff000
    33ec:	00f5f7b3          	and	a5,a1,a5
    33f0:	00078e63          	beqz	a5,340c <xEventGroupSetBits+0x40>
    33f4:	fe512e23          	sw	t0,-4(sp)
    33f8:	004012f3          	csrrw	t0,0x4,zero
    33fc:	0012f293          	andi	t0,t0,1
    3400:	00429073          	csrw	0x4,t0
    3404:	ffc12283          	lw	t0,-4(sp)
    3408:	0000006f          	j	3408 <xEventGroupSetBits+0x3c>
    340c:	fe010113          	addi	sp,sp,-32
    3410:	00812c23          	sw	s0,24(sp)
    3414:	00912a23          	sw	s1,20(sp)
    3418:	00050413          	mv	s0,a0
    341c:	00058493          	mv	s1,a1
    3420:	01212823          	sw	s2,16(sp)
    3424:	01312623          	sw	s3,12(sp)
    3428:	01412423          	sw	s4,8(sp)
    342c:	00c50993          	addi	s3,a0,12
    3430:	00112e23          	sw	ra,28(sp)
    3434:	01512223          	sw	s5,4(sp)
    3438:	8f8fe0ef          	jal	ra,1530 <vTaskSuspendAll>
    343c:	00042583          	lw	a1,0(s0)
    3440:	01042503          	lw	a0,16(s0)
    3444:	01000937          	lui	s2,0x1000
    3448:	0095e5b3          	or	a1,a1,s1
    344c:	00b42023          	sw	a1,0(s0)
    3450:	00000493          	li	s1,0
    3454:	fff90913          	addi	s2,s2,-1 # ffffff <_fstack+0xfe5803>
    3458:	02000a37          	lui	s4,0x2000
    345c:	00042583          	lw	a1,0(s0)
    3460:	02a99e63          	bne	s3,a0,349c <xEventGroupSetBits+0xd0>
    3464:	fff4c493          	not	s1,s1
    3468:	00b4f4b3          	and	s1,s1,a1
    346c:	00942023          	sw	s1,0(s0)
    3470:	c69fe0ef          	jal	ra,20d8 <xTaskResumeAll>
    3474:	00042503          	lw	a0,0(s0)
    3478:	01c12083          	lw	ra,28(sp)
    347c:	01812403          	lw	s0,24(sp)
    3480:	01412483          	lw	s1,20(sp)
    3484:	01012903          	lw	s2,16(sp)
    3488:	00c12983          	lw	s3,12(sp)
    348c:	00812a03          	lw	s4,8(sp)
    3490:	00412a83          	lw	s5,4(sp)
    3494:	02010113          	addi	sp,sp,32
    3498:	00008067          	ret
    349c:	00052703          	lw	a4,0(a0)
    34a0:	00452a83          	lw	s5,4(a0)
    34a4:	012777b3          	and	a5,a4,s2
    34a8:	00571613          	slli	a2,a4,0x5
    34ac:	00b7f6b3          	and	a3,a5,a1
    34b0:	00064863          	bltz	a2,34c0 <xEventGroupSetBits+0xf4>
    34b4:	00069863          	bnez	a3,34c4 <xEventGroupSetBits+0xf8>
    34b8:	000a8513          	mv	a0,s5
    34bc:	fa1ff06f          	j	345c <xEventGroupSetBits+0x90>
    34c0:	fed79ce3          	bne	a5,a3,34b8 <xEventGroupSetBits+0xec>
    34c4:	00771693          	slli	a3,a4,0x7
    34c8:	0006d463          	bgez	a3,34d0 <xEventGroupSetBits+0x104>
    34cc:	00f4e4b3          	or	s1,s1,a5
    34d0:	0145e5b3          	or	a1,a1,s4
    34d4:	e68fe0ef          	jal	ra,1b3c <xTaskRemoveFromUnorderedEventList>
    34d8:	fe1ff06f          	j	34b8 <xEventGroupSetBits+0xec>

000034dc <xEventGroupSync>:
    34dc:	ff0007b7          	lui	a5,0xff000
    34e0:	00f677b3          	and	a5,a2,a5
    34e4:	00078e63          	beqz	a5,3500 <xEventGroupSync+0x24>
    34e8:	fe512e23          	sw	t0,-4(sp)
    34ec:	004012f3          	csrrw	t0,0x4,zero
    34f0:	0012f293          	andi	t0,t0,1
    34f4:	00429073          	csrw	0x4,t0
    34f8:	ffc12283          	lw	t0,-4(sp)
    34fc:	0000006f          	j	34fc <xEventGroupSync+0x20>
    3500:	fe010113          	addi	sp,sp,-32
    3504:	00912a23          	sw	s1,20(sp)
    3508:	00112e23          	sw	ra,28(sp)
    350c:	00812c23          	sw	s0,24(sp)
    3510:	01212823          	sw	s2,16(sp)
    3514:	01312623          	sw	s3,12(sp)
    3518:	01412423          	sw	s4,8(sp)
    351c:	00060493          	mv	s1,a2
    3520:	00061e63          	bnez	a2,353c <xEventGroupSync+0x60>
    3524:	fe512e23          	sw	t0,-4(sp)
    3528:	004012f3          	csrrw	t0,0x4,zero
    352c:	0012f293          	andi	t0,t0,1
    3530:	00429073          	csrw	0x4,t0
    3534:	ffc12283          	lw	t0,-4(sp)
    3538:	0000006f          	j	3538 <xEventGroupSync+0x5c>
    353c:	00050913          	mv	s2,a0
    3540:	00058a13          	mv	s4,a1
    3544:	00068993          	mv	s3,a3
    3548:	f30fe0ef          	jal	ra,1c78 <xTaskGetSchedulerState>
    354c:	02051063          	bnez	a0,356c <xEventGroupSync+0x90>
    3550:	00098e63          	beqz	s3,356c <xEventGroupSync+0x90>
    3554:	fe512e23          	sw	t0,-4(sp)
    3558:	004012f3          	csrrw	t0,0x4,zero
    355c:	0012f293          	andi	t0,t0,1
    3560:	00429073          	csrw	0x4,t0
    3564:	ffc12283          	lw	t0,-4(sp)
    3568:	0000006f          	j	3568 <xEventGroupSync+0x8c>
    356c:	fc5fd0ef          	jal	ra,1530 <vTaskSuspendAll>
    3570:	00092403          	lw	s0,0(s2)
    3574:	000a0593          	mv	a1,s4
    3578:	00090513          	mv	a0,s2
    357c:	e51ff0ef          	jal	ra,33cc <xEventGroupSetBits>
    3580:	01446433          	or	s0,s0,s4
    3584:	009477b3          	and	a5,s0,s1
    3588:	08979463          	bne	a5,s1,3610 <xEventGroupSync+0x134>
    358c:	00092703          	lw	a4,0(s2)
    3590:	fff4c793          	not	a5,s1
    3594:	00000993          	li	s3,0
    3598:	00f777b3          	and	a5,a4,a5
    359c:	00f92023          	sw	a5,0(s2)
    35a0:	b39fe0ef          	jal	ra,20d8 <xTaskResumeAll>
    35a4:	04098463          	beqz	s3,35ec <xEventGroupSync+0x110>
    35a8:	00051463          	bnez	a0,35b0 <xEventGroupSync+0xd4>
    35ac:	d29fc0ef          	jal	ra,2d4 <vPortYield>
    35b0:	dbdfe0ef          	jal	ra,236c <uxTaskResetEventItemValue>
    35b4:	00651793          	slli	a5,a0,0x6
    35b8:	00050413          	mv	s0,a0
    35bc:	0207c263          	bltz	a5,35e0 <xEventGroupSync+0x104>
    35c0:	ee4fe0ef          	jal	ra,1ca4 <vTaskEnterCritical>
    35c4:	00092403          	lw	s0,0(s2)
    35c8:	0084f7b3          	and	a5,s1,s0
    35cc:	00979863          	bne	a5,s1,35dc <xEventGroupSync+0x100>
    35d0:	fff4c493          	not	s1,s1
    35d4:	0084f4b3          	and	s1,s1,s0
    35d8:	00992023          	sw	s1,0(s2)
    35dc:	f0cfe0ef          	jal	ra,1ce8 <vTaskExitCritical>
    35e0:	01000537          	lui	a0,0x1000
    35e4:	fff50513          	addi	a0,a0,-1 # ffffff <_fstack+0xfe5803>
    35e8:	00a47433          	and	s0,s0,a0
    35ec:	00040513          	mv	a0,s0
    35f0:	01c12083          	lw	ra,28(sp)
    35f4:	01812403          	lw	s0,24(sp)
    35f8:	01412483          	lw	s1,20(sp)
    35fc:	01012903          	lw	s2,16(sp)
    3600:	00c12983          	lw	s3,12(sp)
    3604:	00812a03          	lw	s4,8(sp)
    3608:	02010113          	addi	sp,sp,32
    360c:	00008067          	ret
    3610:	02098063          	beqz	s3,3630 <xEventGroupSync+0x154>
    3614:	050005b7          	lui	a1,0x5000
    3618:	00098613          	mv	a2,s3
    361c:	00b4e5b3          	or	a1,s1,a1
    3620:	00490513          	addi	a0,s2,4
    3624:	b14fe0ef          	jal	ra,1938 <vTaskPlaceOnUnorderedEventList>
    3628:	00000413          	li	s0,0
    362c:	f75ff06f          	j	35a0 <xEventGroupSync+0xc4>
    3630:	00092403          	lw	s0,0(s2)
    3634:	f6dff06f          	j	35a0 <xEventGroupSync+0xc4>

00003638 <vEventGroupDelete>:
    3638:	ff010113          	addi	sp,sp,-16
    363c:	00812423          	sw	s0,8(sp)
    3640:	00050413          	mv	s0,a0
    3644:	00912223          	sw	s1,4(sp)
    3648:	00112623          	sw	ra,12(sp)
    364c:	00c40493          	addi	s1,s0,12
    3650:	ee1fd0ef          	jal	ra,1530 <vTaskSuspendAll>
    3654:	00442783          	lw	a5,4(s0)
    3658:	02079063          	bnez	a5,3678 <vEventGroupDelete+0x40>
    365c:	00040513          	mv	a0,s0
    3660:	1b0000ef          	jal	ra,3810 <vPortFree>
    3664:	00812403          	lw	s0,8(sp)
    3668:	00c12083          	lw	ra,12(sp)
    366c:	00412483          	lw	s1,4(sp)
    3670:	01010113          	addi	sp,sp,16
    3674:	a65fe06f          	j	20d8 <xTaskResumeAll>
    3678:	01042503          	lw	a0,16(s0)
    367c:	00951e63          	bne	a0,s1,3698 <vEventGroupDelete+0x60>
    3680:	fe512e23          	sw	t0,-4(sp)
    3684:	004012f3          	csrrw	t0,0x4,zero
    3688:	0012f293          	andi	t0,t0,1
    368c:	00429073          	csrw	0x4,t0
    3690:	ffc12283          	lw	t0,-4(sp)
    3694:	0000006f          	j	3694 <vEventGroupDelete+0x5c>
    3698:	020005b7          	lui	a1,0x2000
    369c:	ca0fe0ef          	jal	ra,1b3c <xTaskRemoveFromUnorderedEventList>
    36a0:	fb5ff06f          	j	3654 <vEventGroupDelete+0x1c>

000036a4 <vEventGroupSetBitsCallback>:
    36a4:	d29ff06f          	j	33cc <xEventGroupSetBits>

000036a8 <vEventGroupClearBitsCallback>:
    36a8:	c69ff06f          	j	3310 <xEventGroupClearBits>

000036ac <pvPortMalloc>:
    36ac:	ff010113          	addi	sp,sp,-16
    36b0:	00812423          	sw	s0,8(sp)
    36b4:	00112623          	sw	ra,12(sp)
    36b8:	00912223          	sw	s1,4(sp)
    36bc:	00050413          	mv	s0,a0
    36c0:	e71fd0ef          	jal	ra,1530 <vTaskSuspendAll>
    36c4:	00000797          	auipc	a5,0x0
    36c8:	59078793          	addi	a5,a5,1424 # 3c54 <xHeapHasBeenInitialised.2294>
    36cc:	0007a783          	lw	a5,0(a5)
    36d0:	04079a63          	bnez	a5,3724 <pvPortMalloc+0x78>
    36d4:	00000797          	auipc	a5,0x0
    36d8:	57c78793          	addi	a5,a5,1404 # 3c50 <xEnd+0x4>
    36dc:	00000717          	auipc	a4,0x0
    36e0:	56f72e23          	sw	a5,1404(a4) # 3c58 <xStart>
    36e4:	00000797          	auipc	a5,0x0
    36e8:	5607ac23          	sw	zero,1400(a5) # 3c5c <xStart+0x4>
    36ec:	ffc00793          	li	a5,-4
    36f0:	00000717          	auipc	a4,0x0
    36f4:	56f72023          	sw	a5,1376(a4) # 3c50 <xEnd+0x4>
    36f8:	00000717          	auipc	a4,0x0
    36fc:	54f72e23          	sw	a5,1372(a4) # 3c54 <xHeapHasBeenInitialised.2294>
    3700:	00000797          	auipc	a5,0x0
    3704:	54c78793          	addi	a5,a5,1356 # 3c4c <xEnd>
    3708:	00000717          	auipc	a4,0x0
    370c:	54f72423          	sw	a5,1352(a4) # 3c50 <xEnd+0x4>
    3710:	00100793          	li	a5,1
    3714:	00000717          	auipc	a4,0x0
    3718:	52072c23          	sw	zero,1336(a4) # 3c4c <xEnd>
    371c:	00000717          	auipc	a4,0x0
    3720:	52f72c23          	sw	a5,1336(a4) # 3c54 <xHeapHasBeenInitialised.2294>
    3724:	00040c63          	beqz	s0,373c <pvPortMalloc+0x90>
    3728:	00840413          	addi	s0,s0,8
    372c:	00347793          	andi	a5,s0,3
    3730:	00078663          	beqz	a5,373c <pvPortMalloc+0x90>
    3734:	ffc47413          	andi	s0,s0,-4
    3738:	00440413          	addi	s0,s0,4
    373c:	fff40793          	addi	a5,s0,-1
    3740:	ffa00713          	li	a4,-6
    3744:	00000493          	li	s1,0
    3748:	08f76c63          	bltu	a4,a5,37e0 <pvPortMalloc+0x134>
    374c:	00000717          	auipc	a4,0x0
    3750:	50c70713          	addi	a4,a4,1292 # 3c58 <xStart>
    3754:	00072783          	lw	a5,0(a4)
    3758:	0047a683          	lw	a3,4(a5)
    375c:	0086f663          	bleu	s0,a3,3768 <pvPortMalloc+0xbc>
    3760:	0007a683          	lw	a3,0(a5)
    3764:	08069c63          	bnez	a3,37fc <pvPortMalloc+0x150>
    3768:	00000697          	auipc	a3,0x0
    376c:	4e468693          	addi	a3,a3,1252 # 3c4c <xEnd>
    3770:	00000493          	li	s1,0
    3774:	06d78663          	beq	a5,a3,37e0 <pvPortMalloc+0x134>
    3778:	0007a683          	lw	a3,0(a5)
    377c:	00072483          	lw	s1,0(a4)
    3780:	00d72023          	sw	a3,0(a4)
    3784:	0047a683          	lw	a3,4(a5)
    3788:	01000713          	li	a4,16
    378c:	00848493          	addi	s1,s1,8
    3790:	408686b3          	sub	a3,a3,s0
    3794:	02d77863          	bleu	a3,a4,37c4 <pvPortMalloc+0x118>
    3798:	00878733          	add	a4,a5,s0
    379c:	00d72223          	sw	a3,4(a4)
    37a0:	0087a223          	sw	s0,4(a5)
    37a4:	00472583          	lw	a1,4(a4)
    37a8:	00000697          	auipc	a3,0x0
    37ac:	4b068693          	addi	a3,a3,1200 # 3c58 <xStart>
    37b0:	0006a603          	lw	a2,0(a3)
    37b4:	00462503          	lw	a0,4(a2)
    37b8:	04b56863          	bltu	a0,a1,3808 <pvPortMalloc+0x15c>
    37bc:	00c72023          	sw	a2,0(a4)
    37c0:	00e6a023          	sw	a4,0(a3)
    37c4:	00000717          	auipc	a4,0x0
    37c8:	33870713          	addi	a4,a4,824 # 3afc <xFreeBytesRemaining>
    37cc:	00072703          	lw	a4,0(a4)
    37d0:	0047a783          	lw	a5,4(a5)
    37d4:	40f707b3          	sub	a5,a4,a5
    37d8:	00000717          	auipc	a4,0x0
    37dc:	32f72223          	sw	a5,804(a4) # 3afc <xFreeBytesRemaining>
    37e0:	8f9fe0ef          	jal	ra,20d8 <xTaskResumeAll>
    37e4:	00c12083          	lw	ra,12(sp)
    37e8:	00812403          	lw	s0,8(sp)
    37ec:	00048513          	mv	a0,s1
    37f0:	00412483          	lw	s1,4(sp)
    37f4:	01010113          	addi	sp,sp,16
    37f8:	00008067          	ret
    37fc:	00078713          	mv	a4,a5
    3800:	00068793          	mv	a5,a3
    3804:	f55ff06f          	j	3758 <pvPortMalloc+0xac>
    3808:	00060693          	mv	a3,a2
    380c:	fa5ff06f          	j	37b0 <pvPortMalloc+0x104>

00003810 <vPortFree>:
    3810:	06050c63          	beqz	a0,3888 <vPortFree+0x78>
    3814:	ff010113          	addi	sp,sp,-16
    3818:	00812423          	sw	s0,8(sp)
    381c:	00912223          	sw	s1,4(sp)
    3820:	00050413          	mv	s0,a0
    3824:	00112623          	sw	ra,12(sp)
    3828:	ff850493          	addi	s1,a0,-8
    382c:	d05fd0ef          	jal	ra,1530 <vTaskSuspendAll>
    3830:	ffc42683          	lw	a3,-4(s0)
    3834:	00000797          	auipc	a5,0x0
    3838:	42478793          	addi	a5,a5,1060 # 3c58 <xStart>
    383c:	0007a703          	lw	a4,0(a5)
    3840:	00472603          	lw	a2,4(a4)
    3844:	02d66e63          	bltu	a2,a3,3880 <vPortFree+0x70>
    3848:	fee42c23          	sw	a4,-8(s0)
    384c:	0097a023          	sw	s1,0(a5)
    3850:	00000717          	auipc	a4,0x0
    3854:	2ac70713          	addi	a4,a4,684 # 3afc <xFreeBytesRemaining>
    3858:	ffc42783          	lw	a5,-4(s0)
    385c:	00072703          	lw	a4,0(a4)
    3860:	00812403          	lw	s0,8(sp)
    3864:	00c12083          	lw	ra,12(sp)
    3868:	00412483          	lw	s1,4(sp)
    386c:	00e787b3          	add	a5,a5,a4
    3870:	00000717          	auipc	a4,0x0
    3874:	28f72623          	sw	a5,652(a4) # 3afc <xFreeBytesRemaining>
    3878:	01010113          	addi	sp,sp,16
    387c:	85dfe06f          	j	20d8 <xTaskResumeAll>
    3880:	00070793          	mv	a5,a4
    3884:	fb9ff06f          	j	383c <vPortFree+0x2c>
    3888:	00008067          	ret

0000388c <xPortGetFreeHeapSize>:
    388c:	00000797          	auipc	a5,0x0
    3890:	27078793          	addi	a5,a5,624 # 3afc <xFreeBytesRemaining>
    3894:	0007a503          	lw	a0,0(a5)
    3898:	00008067          	ret

0000389c <vPortInitialiseBlocks>:
    389c:	00008067          	ret

000038a0 <memcpy>:
    38a0:	00b567b3          	or	a5,a0,a1
    38a4:	0037f793          	andi	a5,a5,3
    38a8:	02078663          	beqz	a5,38d4 <memcpy+0x34>
    38ac:	00050793          	mv	a5,a0
    38b0:	00c50633          	add	a2,a0,a2
    38b4:	02c7e863          	bltu	a5,a2,38e4 <memcpy+0x44>
    38b8:	00008067          	ret
    38bc:	0005a683          	lw	a3,0(a1) # 2000000 <_fstack+0x1fe5804>
    38c0:	00478793          	addi	a5,a5,4
    38c4:	00458593          	addi	a1,a1,4
    38c8:	fed7ae23          	sw	a3,-4(a5)
    38cc:	fee7e8e3          	bltu	a5,a4,38bc <memcpy+0x1c>
    38d0:	fe1ff06f          	j	38b0 <memcpy+0x10>
    38d4:	ffd60713          	addi	a4,a2,-3
    38d8:	00050793          	mv	a5,a0
    38dc:	00e50733          	add	a4,a0,a4
    38e0:	fedff06f          	j	38cc <memcpy+0x2c>
    38e4:	00158593          	addi	a1,a1,1
    38e8:	fff5c703          	lbu	a4,-1(a1)
    38ec:	00178793          	addi	a5,a5,1
    38f0:	fee78fa3          	sb	a4,-1(a5)
    38f4:	fc1ff06f          	j	38b4 <memcpy+0x14>

000038f8 <memset>:
    38f8:	00c567b3          	or	a5,a0,a2
    38fc:	0037f793          	andi	a5,a5,3
    3900:	00c50633          	add	a2,a0,a2
    3904:	04079063          	bnez	a5,3944 <memset+0x4c>
    3908:	0ff5f593          	andi	a1,a1,255
    390c:	00859793          	slli	a5,a1,0x8
    3910:	00b7e5b3          	or	a1,a5,a1
    3914:	01059793          	slli	a5,a1,0x10
    3918:	00b7e5b3          	or	a1,a5,a1
    391c:	00050793          	mv	a5,a0
    3920:	00c7e463          	bltu	a5,a2,3928 <memset+0x30>
    3924:	00008067          	ret
    3928:	00478793          	addi	a5,a5,4
    392c:	feb7ae23          	sw	a1,-4(a5)
    3930:	ff1ff06f          	j	3920 <memset+0x28>
    3934:	00178793          	addi	a5,a5,1
    3938:	feb78fa3          	sb	a1,-1(a5)
    393c:	fec7ece3          	bltu	a5,a2,3934 <memset+0x3c>
    3940:	00008067          	ret
    3944:	00050793          	mv	a5,a0
    3948:	ff5ff06f          	j	393c <memset+0x44>

0000394c <strlen>:
    394c:	00050793          	mv	a5,a0
    3950:	0007c703          	lbu	a4,0(a5)
    3954:	00071663          	bnez	a4,3960 <strlen+0x14>
    3958:	40a78533          	sub	a0,a5,a0
    395c:	00008067          	ret
    3960:	00178793          	addi	a5,a5,1
    3964:	fedff06f          	j	3950 <strlen+0x4>

00003968 <strcmp>:
    3968:	00150513          	addi	a0,a0,1
    396c:	fff54783          	lbu	a5,-1(a0)
    3970:	00158593          	addi	a1,a1,1
    3974:	fff5c703          	lbu	a4,-1(a1)
    3978:	00078463          	beqz	a5,3980 <strcmp+0x18>
    397c:	fee786e3          	beq	a5,a4,3968 <strcmp>
    3980:	40e78533          	sub	a0,a5,a4
    3984:	00008067          	ret

00003988 <strcpy>:
    3988:	00050793          	mv	a5,a0
    398c:	00158593          	addi	a1,a1,1
    3990:	fff5c703          	lbu	a4,-1(a1)
    3994:	00178793          	addi	a5,a5,1
    3998:	fee78fa3          	sb	a4,-1(a5)
    399c:	fe0718e3          	bnez	a4,398c <strcpy+0x4>
    39a0:	00008067          	ret

000039a4 <atol>:
    39a4:	ff010113          	addi	sp,sp,-16
    39a8:	00812423          	sw	s0,8(sp)
    39ac:	00112623          	sw	ra,12(sp)
    39b0:	00912223          	sw	s1,4(sp)
    39b4:	01212023          	sw	s2,0(sp)
    39b8:	00050413          	mv	s0,a0
    39bc:	02000713          	li	a4,32
    39c0:	00044783          	lbu	a5,0(s0)
    39c4:	04e78663          	beq	a5,a4,3a10 <atol+0x6c>
    39c8:	fd578713          	addi	a4,a5,-43
    39cc:	0fd77713          	andi	a4,a4,253
    39d0:	00000913          	li	s2,0
    39d4:	00071863          	bnez	a4,39e4 <atol+0x40>
    39d8:	fd378793          	addi	a5,a5,-45
    39dc:	0017b913          	seqz	s2,a5
    39e0:	00140413          	addi	s0,s0,1
    39e4:	00000513          	li	a0,0
    39e8:	00044483          	lbu	s1,0(s0)
    39ec:	02049663          	bnez	s1,3a18 <atol+0x74>
    39f0:	00090463          	beqz	s2,39f8 <atol+0x54>
    39f4:	40a00533          	neg	a0,a0
    39f8:	00c12083          	lw	ra,12(sp)
    39fc:	00812403          	lw	s0,8(sp)
    3a00:	00412483          	lw	s1,4(sp)
    3a04:	00012903          	lw	s2,0(sp)
    3a08:	01010113          	addi	sp,sp,16
    3a0c:	00008067          	ret
    3a10:	00140413          	addi	s0,s0,1
    3a14:	fadff06f          	j	39c0 <atol+0x1c>
    3a18:	00a00593          	li	a1,10
    3a1c:	ba5fc0ef          	jal	ra,5c0 <__mulsi3>
    3a20:	fd048493          	addi	s1,s1,-48
    3a24:	00140413          	addi	s0,s0,1
    3a28:	00a48533          	add	a0,s1,a0
    3a2c:	fbdff06f          	j	39e8 <atol+0x44>

00003a30 <prvCheckTimerCallback>:
    3a30:	ae1fd06f          	j	1510 <vTaskEndScheduler>

00003a34 <main>:
    3a34:	000015b7          	lui	a1,0x1
    3a38:	ff010113          	addi	sp,sp,-16
    3a3c:	00000717          	auipc	a4,0x0
    3a40:	ff470713          	addi	a4,a4,-12 # 3a30 <prvCheckTimerCallback>
    3a44:	00000693          	li	a3,0
    3a48:	00100613          	li	a2,1
    3a4c:	bb858593          	addi	a1,a1,-1096 # bb8 <xQueueGenericSend+0x1bc>
    3a50:	00000517          	auipc	a0,0x0
    3a54:	09c50513          	addi	a0,a0,156 # 3aec <vApplicationStackOverflowHook+0x30>
    3a58:	00112623          	sw	ra,12(sp)
    3a5c:	00812423          	sw	s0,8(sp)
    3a60:	914ff0ef          	jal	ra,2b74 <xTimerCreate>
    3a64:	02050263          	beqz	a0,3a88 <main+0x54>
    3a68:	00050413          	mv	s0,a0
    3a6c:	809fe0ef          	jal	ra,2274 <xTaskGetTickCount>
    3a70:	00050613          	mv	a2,a0
    3a74:	00000713          	li	a4,0
    3a78:	00000693          	li	a3,0
    3a7c:	00100593          	li	a1,1
    3a80:	00040513          	mv	a0,s0
    3a84:	998ff0ef          	jal	ra,2c1c <xTimerGenericCommand>
    3a88:	da0fe0ef          	jal	ra,2028 <vTaskStartScheduler>
    3a8c:	00c12083          	lw	ra,12(sp)
    3a90:	00812403          	lw	s0,8(sp)
    3a94:	00000513          	li	a0,0
    3a98:	01010113          	addi	sp,sp,16
    3a9c:	00008067          	ret

00003aa0 <vApplicationMallocFailedHook>:
    3aa0:	fe512e23          	sw	t0,-4(sp)
    3aa4:	004012f3          	csrrw	t0,0x4,zero
    3aa8:	0012f293          	andi	t0,t0,1
    3aac:	00429073          	csrw	0x4,t0
    3ab0:	ffc12283          	lw	t0,-4(sp)
    3ab4:	0000006f          	j	3ab4 <vApplicationMallocFailedHook+0x14>

00003ab8 <vApplicationIdleHook>:
    3ab8:	00008067          	ret

00003abc <vApplicationStackOverflowHook>:
    3abc:	fe512e23          	sw	t0,-4(sp)
    3ac0:	004012f3          	csrrw	t0,0x4,zero
    3ac4:	0012f293          	andi	t0,t0,1
    3ac8:	00429073          	csrw	0x4,t0
    3acc:	ffc12283          	lw	t0,-4(sp)
    3ad0:	0000006f          	j	3ad0 <vApplicationStackOverflowHook+0x14>
