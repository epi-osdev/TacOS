
iso/epi-os.img:     format de fichier binary


Déassemblage de la section .data :

00000000 <.data>:
       0:	b8 00 00 8e d8       	mov    $0xd88e0000,%eax
       5:	8e c0                	mov    %eax,%es
       7:	8e d0                	mov    %eax,%ss
       9:	bd 00 7c 89 ec       	mov    $0xec897c00,%ebp
       e:	88 16                	mov    %dl,(%esi)
      10:	93                   	xchg   %eax,%ebx
      11:	7c e8                	jl     0xfffffffb
      13:	67 00 e8             	addr16 add %ch,%al
      16:	17                   	pop    %ss
      17:	00 52 b4             	add    %dl,-0x4c(%edx)
      1a:	02 88 f0 b5 00 b6    	add    -0x49ff4a10(%eax),%cl
      20:	00 b1 02 cd 13 72    	add    %dh,0x7213cd02(%ecx)
      26:	06                   	push   %es
      27:	5a                   	pop    %edx
      28:	38 c6                	cmp    %al,%dh
      2a:	75 01                	jne    0x2d
      2c:	c3                   	ret    
      2d:	eb fe                	jmp    0x2d
      2f:	fa                   	cli    
      30:	0f 01 16             	lgdtl  (%esi)
      33:	76 7c                	jbe    0xb1
      35:	0f 20 c0             	mov    %cr0,%eax
      38:	66 83 c8 01          	or     $0x1,%ax
      3c:	0f 22 c0             	mov    %eax,%cr0
      3f:	ea 44 7c 08 00 66 b8 	ljmp   $0xb866,$0x87c44
      46:	10 00                	adc    %al,(%eax)
      48:	8e d8                	mov    %eax,%ds
      4a:	8e d0                	mov    %eax,%ss
      4c:	8e c0                	mov    %eax,%es
      4e:	8e e0                	mov    %eax,%fs
      50:	8e e8                	mov    %eax,%gs
      52:	bd 00 fb 09 00       	mov    $0x9fb00,%ebp
      57:	89 ec                	mov    %ebp,%esp
      59:	e8 2e 00 00 00       	call   0x8c
	...
      66:	ff                   	(bad)  
      67:	ff 00                	incl   (%eax)
      69:	00 00                	add    %al,(%eax)
      6b:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
      72:	00 92 cf 00 17 00    	add    %dl,0x1700cf(%edx)
      78:	5e                   	pop    %esi
      79:	7c 00                	jl     0x7b
      7b:	00 66 bb             	add    %ah,-0x45(%esi)
      7e:	00 7e 00             	add    %bh,0x0(%esi)
      81:	00 b6 1f 8a 16 93    	add    %dh,-0x6ce975e1(%esi)
      87:	7c e8                	jl     0x71
      89:	8d                   	(bad)  
      8a:	ff c3                	inc    %ebx
      8c:	e8 6f 01 00 00       	call   0x200
      91:	eb fe                	jmp    0x91
	...
     1fb:	00 00                	add    %al,(%eax)
     1fd:	00 55 aa             	add    %dl,-0x56(%ebp)
     200:	e8 dd 0d 00 00       	call   0xfe2
     205:	eb fe                	jmp    0x205
     207:	66 90                	xchg   %ax,%ax
     209:	66 90                	xchg   %ax,%ax
     20b:	66 90                	xchg   %ax,%ax
     20d:	66 90                	xchg   %ax,%ax
     20f:	90                   	nop
     210:	60                   	pusha  
     211:	31 c0                	xor    %eax,%eax
     213:	66 8c d8             	mov    %ds,%ax
     216:	50                   	push   %eax
     217:	66 b8 10 00          	mov    $0x10,%ax
     21b:	8e d8                	mov    %eax,%ds
     21d:	8e c0                	mov    %eax,%es
     21f:	8e e0                	mov    %eax,%fs
     221:	8e e8                	mov    %eax,%gs
     223:	54                   	push   %esp
     224:	e8 eb 28 00 00       	call   0x2b14
     229:	83 c4 04             	add    $0x4,%esp
     22c:	58                   	pop    %eax
     22d:	8e d8                	mov    %eax,%ds
     22f:	8e c0                	mov    %eax,%es
     231:	8e e0                	mov    %eax,%fs
     233:	8e e8                	mov    %eax,%gs
     235:	61                   	popa   
     236:	83 c4 08             	add    $0x8,%esp
     239:	fb                   	sti    
     23a:	cf                   	iret   
     23b:	60                   	pusha  
     23c:	31 c0                	xor    %eax,%eax
     23e:	66 8c d8             	mov    %ds,%ax
     241:	50                   	push   %eax
     242:	66 b8 10 00          	mov    $0x10,%ax
     246:	8e d8                	mov    %eax,%ds
     248:	8e c0                	mov    %eax,%es
     24a:	8e e0                	mov    %eax,%fs
     24c:	8e e8                	mov    %eax,%gs
     24e:	54                   	push   %esp
     24f:	e8 f2 28 00 00       	call   0x2b46
     254:	83 c4 04             	add    $0x4,%esp
     257:	58                   	pop    %eax
     258:	8e d8                	mov    %eax,%ds
     25a:	8e c0                	mov    %eax,%es
     25c:	8e e0                	mov    %eax,%fs
     25e:	8e e8                	mov    %eax,%gs
     260:	61                   	popa   
     261:	83 c4 08             	add    $0x8,%esp
     264:	fb                   	sti    
     265:	cf                   	iret   
     266:	fa                   	cli    
     267:	6a 00                	push   $0x0
     269:	6a 00                	push   $0x0
     26b:	eb a3                	jmp    0x210
     26d:	fa                   	cli    
     26e:	6a 00                	push   $0x0
     270:	6a 01                	push   $0x1
     272:	eb 9c                	jmp    0x210
     274:	fa                   	cli    
     275:	6a 00                	push   $0x0
     277:	6a 02                	push   $0x2
     279:	eb 95                	jmp    0x210
     27b:	fa                   	cli    
     27c:	6a 00                	push   $0x0
     27e:	6a 03                	push   $0x3
     280:	eb 8e                	jmp    0x210
     282:	fa                   	cli    
     283:	6a 00                	push   $0x0
     285:	6a 04                	push   $0x4
     287:	eb 87                	jmp    0x210
     289:	fa                   	cli    
     28a:	6a 00                	push   $0x0
     28c:	6a 05                	push   $0x5
     28e:	eb 80                	jmp    0x210
     290:	fa                   	cli    
     291:	6a 00                	push   $0x0
     293:	6a 06                	push   $0x6
     295:	e9 76 ff ff ff       	jmp    0x210
     29a:	fa                   	cli    
     29b:	6a 00                	push   $0x0
     29d:	6a 07                	push   $0x7
     29f:	e9 6c ff ff ff       	jmp    0x210
     2a4:	fa                   	cli    
     2a5:	6a 08                	push   $0x8
     2a7:	e9 64 ff ff ff       	jmp    0x210
     2ac:	fa                   	cli    
     2ad:	6a 00                	push   $0x0
     2af:	6a 09                	push   $0x9
     2b1:	e9 5a ff ff ff       	jmp    0x210
     2b6:	fa                   	cli    
     2b7:	6a 0a                	push   $0xa
     2b9:	e9 52 ff ff ff       	jmp    0x210
     2be:	fa                   	cli    
     2bf:	6a 0b                	push   $0xb
     2c1:	e9 4a ff ff ff       	jmp    0x210
     2c6:	fa                   	cli    
     2c7:	6a 0c                	push   $0xc
     2c9:	e9 42 ff ff ff       	jmp    0x210
     2ce:	fa                   	cli    
     2cf:	6a 0d                	push   $0xd
     2d1:	e9 3a ff ff ff       	jmp    0x210
     2d6:	fa                   	cli    
     2d7:	6a 0e                	push   $0xe
     2d9:	e9 32 ff ff ff       	jmp    0x210
     2de:	fa                   	cli    
     2df:	6a 00                	push   $0x0
     2e1:	6a 0f                	push   $0xf
     2e3:	e9 28 ff ff ff       	jmp    0x210
     2e8:	fa                   	cli    
     2e9:	6a 00                	push   $0x0
     2eb:	6a 10                	push   $0x10
     2ed:	e9 1e ff ff ff       	jmp    0x210
     2f2:	fa                   	cli    
     2f3:	6a 11                	push   $0x11
     2f5:	e9 16 ff ff ff       	jmp    0x210
     2fa:	fa                   	cli    
     2fb:	6a 00                	push   $0x0
     2fd:	6a 12                	push   $0x12
     2ff:	e9 0c ff ff ff       	jmp    0x210
     304:	fa                   	cli    
     305:	6a 00                	push   $0x0
     307:	6a 13                	push   $0x13
     309:	e9 02 ff ff ff       	jmp    0x210
     30e:	fa                   	cli    
     30f:	6a 00                	push   $0x0
     311:	6a 14                	push   $0x14
     313:	e9 f8 fe ff ff       	jmp    0x210
     318:	fa                   	cli    
     319:	6a 15                	push   $0x15
     31b:	e9 f0 fe ff ff       	jmp    0x210
     320:	fa                   	cli    
     321:	6a 00                	push   $0x0
     323:	6a 16                	push   $0x16
     325:	e9 e6 fe ff ff       	jmp    0x210
     32a:	fa                   	cli    
     32b:	6a 00                	push   $0x0
     32d:	6a 17                	push   $0x17
     32f:	e9 dc fe ff ff       	jmp    0x210
     334:	fa                   	cli    
     335:	6a 00                	push   $0x0
     337:	6a 18                	push   $0x18
     339:	e9 d2 fe ff ff       	jmp    0x210
     33e:	fa                   	cli    
     33f:	6a 00                	push   $0x0
     341:	6a 19                	push   $0x19
     343:	e9 c8 fe ff ff       	jmp    0x210
     348:	fa                   	cli    
     349:	6a 00                	push   $0x0
     34b:	6a 1a                	push   $0x1a
     34d:	e9 be fe ff ff       	jmp    0x210
     352:	fa                   	cli    
     353:	6a 00                	push   $0x0
     355:	6a 1b                	push   $0x1b
     357:	e9 b4 fe ff ff       	jmp    0x210
     35c:	fa                   	cli    
     35d:	6a 00                	push   $0x0
     35f:	6a 1c                	push   $0x1c
     361:	e9 aa fe ff ff       	jmp    0x210
     366:	fa                   	cli    
     367:	6a 00                	push   $0x0
     369:	6a 1d                	push   $0x1d
     36b:	e9 a0 fe ff ff       	jmp    0x210
     370:	fa                   	cli    
     371:	6a 00                	push   $0x0
     373:	6a 1e                	push   $0x1e
     375:	e9 96 fe ff ff       	jmp    0x210
     37a:	fa                   	cli    
     37b:	6a 00                	push   $0x0
     37d:	6a 1f                	push   $0x1f
     37f:	e9 8c fe ff ff       	jmp    0x210
     384:	fa                   	cli    
     385:	6a 00                	push   $0x0
     387:	6a 20                	push   $0x20
     389:	e9 82 fe ff ff       	jmp    0x210
     38e:	fa                   	cli    
     38f:	6a 00                	push   $0x0
     391:	6a 21                	push   $0x21
     393:	e9 78 fe ff ff       	jmp    0x210
     398:	fa                   	cli    
     399:	6a 00                	push   $0x0
     39b:	6a 22                	push   $0x22
     39d:	e9 6e fe ff ff       	jmp    0x210
     3a2:	fa                   	cli    
     3a3:	6a 00                	push   $0x0
     3a5:	6a 23                	push   $0x23
     3a7:	e9 64 fe ff ff       	jmp    0x210
     3ac:	fa                   	cli    
     3ad:	6a 00                	push   $0x0
     3af:	6a 24                	push   $0x24
     3b1:	e9 5a fe ff ff       	jmp    0x210
     3b6:	fa                   	cli    
     3b7:	6a 00                	push   $0x0
     3b9:	6a 25                	push   $0x25
     3bb:	e9 50 fe ff ff       	jmp    0x210
     3c0:	fa                   	cli    
     3c1:	6a 00                	push   $0x0
     3c3:	6a 26                	push   $0x26
     3c5:	e9 46 fe ff ff       	jmp    0x210
     3ca:	fa                   	cli    
     3cb:	6a 00                	push   $0x0
     3cd:	6a 27                	push   $0x27
     3cf:	e9 3c fe ff ff       	jmp    0x210
     3d4:	fa                   	cli    
     3d5:	6a 00                	push   $0x0
     3d7:	6a 28                	push   $0x28
     3d9:	e9 32 fe ff ff       	jmp    0x210
     3de:	fa                   	cli    
     3df:	6a 00                	push   $0x0
     3e1:	6a 29                	push   $0x29
     3e3:	e9 28 fe ff ff       	jmp    0x210
     3e8:	fa                   	cli    
     3e9:	6a 00                	push   $0x0
     3eb:	6a 2a                	push   $0x2a
     3ed:	e9 1e fe ff ff       	jmp    0x210
     3f2:	fa                   	cli    
     3f3:	6a 00                	push   $0x0
     3f5:	6a 2b                	push   $0x2b
     3f7:	e9 14 fe ff ff       	jmp    0x210
     3fc:	fa                   	cli    
     3fd:	6a 00                	push   $0x0
     3ff:	6a 2c                	push   $0x2c
     401:	e9 0a fe ff ff       	jmp    0x210
     406:	fa                   	cli    
     407:	6a 00                	push   $0x0
     409:	6a 2d                	push   $0x2d
     40b:	e9 00 fe ff ff       	jmp    0x210
     410:	fa                   	cli    
     411:	6a 00                	push   $0x0
     413:	6a 2e                	push   $0x2e
     415:	e9 f6 fd ff ff       	jmp    0x210
     41a:	fa                   	cli    
     41b:	6a 00                	push   $0x0
     41d:	6a 2f                	push   $0x2f
     41f:	e9 ec fd ff ff       	jmp    0x210
     424:	fa                   	cli    
     425:	6a 00                	push   $0x0
     427:	6a 30                	push   $0x30
     429:	e9 e2 fd ff ff       	jmp    0x210
     42e:	fa                   	cli    
     42f:	6a 00                	push   $0x0
     431:	6a 31                	push   $0x31
     433:	e9 d8 fd ff ff       	jmp    0x210
     438:	fa                   	cli    
     439:	6a 00                	push   $0x0
     43b:	6a 32                	push   $0x32
     43d:	e9 ce fd ff ff       	jmp    0x210
     442:	fa                   	cli    
     443:	6a 00                	push   $0x0
     445:	6a 33                	push   $0x33
     447:	e9 c4 fd ff ff       	jmp    0x210
     44c:	fa                   	cli    
     44d:	6a 00                	push   $0x0
     44f:	6a 34                	push   $0x34
     451:	e9 ba fd ff ff       	jmp    0x210
     456:	fa                   	cli    
     457:	6a 00                	push   $0x0
     459:	6a 35                	push   $0x35
     45b:	e9 b0 fd ff ff       	jmp    0x210
     460:	fa                   	cli    
     461:	6a 00                	push   $0x0
     463:	6a 36                	push   $0x36
     465:	e9 a6 fd ff ff       	jmp    0x210
     46a:	fa                   	cli    
     46b:	6a 00                	push   $0x0
     46d:	6a 37                	push   $0x37
     46f:	e9 9c fd ff ff       	jmp    0x210
     474:	fa                   	cli    
     475:	6a 00                	push   $0x0
     477:	6a 38                	push   $0x38
     479:	e9 92 fd ff ff       	jmp    0x210
     47e:	fa                   	cli    
     47f:	6a 00                	push   $0x0
     481:	6a 39                	push   $0x39
     483:	e9 88 fd ff ff       	jmp    0x210
     488:	fa                   	cli    
     489:	6a 00                	push   $0x0
     48b:	6a 3a                	push   $0x3a
     48d:	e9 7e fd ff ff       	jmp    0x210
     492:	fa                   	cli    
     493:	6a 00                	push   $0x0
     495:	6a 3b                	push   $0x3b
     497:	e9 74 fd ff ff       	jmp    0x210
     49c:	fa                   	cli    
     49d:	6a 00                	push   $0x0
     49f:	6a 3c                	push   $0x3c
     4a1:	e9 6a fd ff ff       	jmp    0x210
     4a6:	fa                   	cli    
     4a7:	6a 00                	push   $0x0
     4a9:	6a 3d                	push   $0x3d
     4ab:	e9 60 fd ff ff       	jmp    0x210
     4b0:	fa                   	cli    
     4b1:	6a 00                	push   $0x0
     4b3:	6a 3e                	push   $0x3e
     4b5:	e9 56 fd ff ff       	jmp    0x210
     4ba:	fa                   	cli    
     4bb:	6a 00                	push   $0x0
     4bd:	6a 3f                	push   $0x3f
     4bf:	e9 4c fd ff ff       	jmp    0x210
     4c4:	fa                   	cli    
     4c5:	6a 00                	push   $0x0
     4c7:	6a 40                	push   $0x40
     4c9:	e9 42 fd ff ff       	jmp    0x210
     4ce:	fa                   	cli    
     4cf:	6a 00                	push   $0x0
     4d1:	6a 41                	push   $0x41
     4d3:	e9 38 fd ff ff       	jmp    0x210
     4d8:	fa                   	cli    
     4d9:	6a 00                	push   $0x0
     4db:	6a 42                	push   $0x42
     4dd:	e9 2e fd ff ff       	jmp    0x210
     4e2:	fa                   	cli    
     4e3:	6a 00                	push   $0x0
     4e5:	6a 43                	push   $0x43
     4e7:	e9 24 fd ff ff       	jmp    0x210
     4ec:	fa                   	cli    
     4ed:	6a 00                	push   $0x0
     4ef:	6a 44                	push   $0x44
     4f1:	e9 1a fd ff ff       	jmp    0x210
     4f6:	fa                   	cli    
     4f7:	6a 00                	push   $0x0
     4f9:	6a 45                	push   $0x45
     4fb:	e9 10 fd ff ff       	jmp    0x210
     500:	fa                   	cli    
     501:	6a 00                	push   $0x0
     503:	6a 46                	push   $0x46
     505:	e9 06 fd ff ff       	jmp    0x210
     50a:	fa                   	cli    
     50b:	6a 00                	push   $0x0
     50d:	6a 47                	push   $0x47
     50f:	e9 fc fc ff ff       	jmp    0x210
     514:	fa                   	cli    
     515:	6a 00                	push   $0x0
     517:	6a 48                	push   $0x48
     519:	e9 f2 fc ff ff       	jmp    0x210
     51e:	fa                   	cli    
     51f:	6a 00                	push   $0x0
     521:	6a 49                	push   $0x49
     523:	e9 e8 fc ff ff       	jmp    0x210
     528:	fa                   	cli    
     529:	6a 00                	push   $0x0
     52b:	6a 4a                	push   $0x4a
     52d:	e9 de fc ff ff       	jmp    0x210
     532:	fa                   	cli    
     533:	6a 00                	push   $0x0
     535:	6a 4b                	push   $0x4b
     537:	e9 d4 fc ff ff       	jmp    0x210
     53c:	fa                   	cli    
     53d:	6a 00                	push   $0x0
     53f:	6a 4c                	push   $0x4c
     541:	e9 ca fc ff ff       	jmp    0x210
     546:	fa                   	cli    
     547:	6a 00                	push   $0x0
     549:	6a 4d                	push   $0x4d
     54b:	e9 c0 fc ff ff       	jmp    0x210
     550:	fa                   	cli    
     551:	6a 00                	push   $0x0
     553:	6a 4e                	push   $0x4e
     555:	e9 b6 fc ff ff       	jmp    0x210
     55a:	fa                   	cli    
     55b:	6a 00                	push   $0x0
     55d:	6a 4f                	push   $0x4f
     55f:	e9 ac fc ff ff       	jmp    0x210
     564:	fa                   	cli    
     565:	6a 00                	push   $0x0
     567:	6a 50                	push   $0x50
     569:	e9 a2 fc ff ff       	jmp    0x210
     56e:	fa                   	cli    
     56f:	6a 00                	push   $0x0
     571:	6a 51                	push   $0x51
     573:	e9 98 fc ff ff       	jmp    0x210
     578:	fa                   	cli    
     579:	6a 00                	push   $0x0
     57b:	6a 52                	push   $0x52
     57d:	e9 8e fc ff ff       	jmp    0x210
     582:	fa                   	cli    
     583:	6a 00                	push   $0x0
     585:	6a 53                	push   $0x53
     587:	e9 84 fc ff ff       	jmp    0x210
     58c:	fa                   	cli    
     58d:	6a 00                	push   $0x0
     58f:	6a 54                	push   $0x54
     591:	e9 7a fc ff ff       	jmp    0x210
     596:	fa                   	cli    
     597:	6a 00                	push   $0x0
     599:	6a 55                	push   $0x55
     59b:	e9 70 fc ff ff       	jmp    0x210
     5a0:	fa                   	cli    
     5a1:	6a 00                	push   $0x0
     5a3:	6a 56                	push   $0x56
     5a5:	e9 66 fc ff ff       	jmp    0x210
     5aa:	fa                   	cli    
     5ab:	6a 00                	push   $0x0
     5ad:	6a 57                	push   $0x57
     5af:	e9 5c fc ff ff       	jmp    0x210
     5b4:	fa                   	cli    
     5b5:	6a 00                	push   $0x0
     5b7:	6a 58                	push   $0x58
     5b9:	e9 52 fc ff ff       	jmp    0x210
     5be:	fa                   	cli    
     5bf:	6a 00                	push   $0x0
     5c1:	6a 59                	push   $0x59
     5c3:	e9 48 fc ff ff       	jmp    0x210
     5c8:	fa                   	cli    
     5c9:	6a 00                	push   $0x0
     5cb:	6a 5a                	push   $0x5a
     5cd:	e9 3e fc ff ff       	jmp    0x210
     5d2:	fa                   	cli    
     5d3:	6a 00                	push   $0x0
     5d5:	6a 5b                	push   $0x5b
     5d7:	e9 34 fc ff ff       	jmp    0x210
     5dc:	fa                   	cli    
     5dd:	6a 00                	push   $0x0
     5df:	6a 5c                	push   $0x5c
     5e1:	e9 2a fc ff ff       	jmp    0x210
     5e6:	fa                   	cli    
     5e7:	6a 00                	push   $0x0
     5e9:	6a 5d                	push   $0x5d
     5eb:	e9 20 fc ff ff       	jmp    0x210
     5f0:	fa                   	cli    
     5f1:	6a 00                	push   $0x0
     5f3:	6a 5e                	push   $0x5e
     5f5:	e9 16 fc ff ff       	jmp    0x210
     5fa:	fa                   	cli    
     5fb:	6a 00                	push   $0x0
     5fd:	6a 5f                	push   $0x5f
     5ff:	e9 0c fc ff ff       	jmp    0x210
     604:	fa                   	cli    
     605:	6a 00                	push   $0x0
     607:	6a 60                	push   $0x60
     609:	e9 02 fc ff ff       	jmp    0x210
     60e:	fa                   	cli    
     60f:	6a 00                	push   $0x0
     611:	6a 61                	push   $0x61
     613:	e9 f8 fb ff ff       	jmp    0x210
     618:	fa                   	cli    
     619:	6a 00                	push   $0x0
     61b:	6a 62                	push   $0x62
     61d:	e9 ee fb ff ff       	jmp    0x210
     622:	fa                   	cli    
     623:	6a 00                	push   $0x0
     625:	6a 63                	push   $0x63
     627:	e9 e4 fb ff ff       	jmp    0x210
     62c:	fa                   	cli    
     62d:	6a 00                	push   $0x0
     62f:	6a 64                	push   $0x64
     631:	e9 da fb ff ff       	jmp    0x210
     636:	fa                   	cli    
     637:	6a 00                	push   $0x0
     639:	6a 65                	push   $0x65
     63b:	e9 d0 fb ff ff       	jmp    0x210
     640:	fa                   	cli    
     641:	6a 00                	push   $0x0
     643:	6a 66                	push   $0x66
     645:	e9 c6 fb ff ff       	jmp    0x210
     64a:	fa                   	cli    
     64b:	6a 00                	push   $0x0
     64d:	6a 67                	push   $0x67
     64f:	e9 bc fb ff ff       	jmp    0x210
     654:	fa                   	cli    
     655:	6a 00                	push   $0x0
     657:	6a 68                	push   $0x68
     659:	e9 b2 fb ff ff       	jmp    0x210
     65e:	fa                   	cli    
     65f:	6a 00                	push   $0x0
     661:	6a 69                	push   $0x69
     663:	e9 a8 fb ff ff       	jmp    0x210
     668:	fa                   	cli    
     669:	6a 00                	push   $0x0
     66b:	6a 6a                	push   $0x6a
     66d:	e9 9e fb ff ff       	jmp    0x210
     672:	fa                   	cli    
     673:	6a 00                	push   $0x0
     675:	6a 6b                	push   $0x6b
     677:	e9 94 fb ff ff       	jmp    0x210
     67c:	fa                   	cli    
     67d:	6a 00                	push   $0x0
     67f:	6a 6c                	push   $0x6c
     681:	e9 8a fb ff ff       	jmp    0x210
     686:	fa                   	cli    
     687:	6a 00                	push   $0x0
     689:	6a 6d                	push   $0x6d
     68b:	e9 80 fb ff ff       	jmp    0x210
     690:	fa                   	cli    
     691:	6a 00                	push   $0x0
     693:	6a 6e                	push   $0x6e
     695:	e9 76 fb ff ff       	jmp    0x210
     69a:	fa                   	cli    
     69b:	6a 00                	push   $0x0
     69d:	6a 6f                	push   $0x6f
     69f:	e9 6c fb ff ff       	jmp    0x210
     6a4:	fa                   	cli    
     6a5:	6a 00                	push   $0x0
     6a7:	6a 70                	push   $0x70
     6a9:	e9 62 fb ff ff       	jmp    0x210
     6ae:	fa                   	cli    
     6af:	6a 00                	push   $0x0
     6b1:	6a 71                	push   $0x71
     6b3:	e9 58 fb ff ff       	jmp    0x210
     6b8:	fa                   	cli    
     6b9:	6a 00                	push   $0x0
     6bb:	6a 72                	push   $0x72
     6bd:	e9 4e fb ff ff       	jmp    0x210
     6c2:	fa                   	cli    
     6c3:	6a 00                	push   $0x0
     6c5:	6a 73                	push   $0x73
     6c7:	e9 44 fb ff ff       	jmp    0x210
     6cc:	fa                   	cli    
     6cd:	6a 00                	push   $0x0
     6cf:	6a 74                	push   $0x74
     6d1:	e9 3a fb ff ff       	jmp    0x210
     6d6:	fa                   	cli    
     6d7:	6a 00                	push   $0x0
     6d9:	6a 75                	push   $0x75
     6db:	e9 30 fb ff ff       	jmp    0x210
     6e0:	fa                   	cli    
     6e1:	6a 00                	push   $0x0
     6e3:	6a 76                	push   $0x76
     6e5:	e9 26 fb ff ff       	jmp    0x210
     6ea:	fa                   	cli    
     6eb:	6a 00                	push   $0x0
     6ed:	6a 77                	push   $0x77
     6ef:	e9 1c fb ff ff       	jmp    0x210
     6f4:	fa                   	cli    
     6f5:	6a 00                	push   $0x0
     6f7:	6a 78                	push   $0x78
     6f9:	e9 12 fb ff ff       	jmp    0x210
     6fe:	fa                   	cli    
     6ff:	6a 00                	push   $0x0
     701:	6a 79                	push   $0x79
     703:	e9 08 fb ff ff       	jmp    0x210
     708:	fa                   	cli    
     709:	6a 00                	push   $0x0
     70b:	6a 7a                	push   $0x7a
     70d:	e9 fe fa ff ff       	jmp    0x210
     712:	fa                   	cli    
     713:	6a 00                	push   $0x0
     715:	6a 7b                	push   $0x7b
     717:	e9 f4 fa ff ff       	jmp    0x210
     71c:	fa                   	cli    
     71d:	6a 00                	push   $0x0
     71f:	6a 7c                	push   $0x7c
     721:	e9 ea fa ff ff       	jmp    0x210
     726:	fa                   	cli    
     727:	6a 00                	push   $0x0
     729:	6a 7d                	push   $0x7d
     72b:	e9 e0 fa ff ff       	jmp    0x210
     730:	fa                   	cli    
     731:	6a 00                	push   $0x0
     733:	6a 7e                	push   $0x7e
     735:	e9 d6 fa ff ff       	jmp    0x210
     73a:	fa                   	cli    
     73b:	6a 00                	push   $0x0
     73d:	6a 7f                	push   $0x7f
     73f:	e9 cc fa ff ff       	jmp    0x210
     744:	fa                   	cli    
     745:	6a 00                	push   $0x0
     747:	68 80 00 00 00       	push   $0x80
     74c:	e9 bf fa ff ff       	jmp    0x210
     751:	fa                   	cli    
     752:	6a 00                	push   $0x0
     754:	68 81 00 00 00       	push   $0x81
     759:	e9 b2 fa ff ff       	jmp    0x210
     75e:	fa                   	cli    
     75f:	6a 00                	push   $0x0
     761:	68 82 00 00 00       	push   $0x82
     766:	e9 a5 fa ff ff       	jmp    0x210
     76b:	fa                   	cli    
     76c:	6a 00                	push   $0x0
     76e:	68 83 00 00 00       	push   $0x83
     773:	e9 98 fa ff ff       	jmp    0x210
     778:	fa                   	cli    
     779:	6a 00                	push   $0x0
     77b:	68 84 00 00 00       	push   $0x84
     780:	e9 8b fa ff ff       	jmp    0x210
     785:	fa                   	cli    
     786:	6a 00                	push   $0x0
     788:	68 85 00 00 00       	push   $0x85
     78d:	e9 7e fa ff ff       	jmp    0x210
     792:	fa                   	cli    
     793:	6a 00                	push   $0x0
     795:	68 86 00 00 00       	push   $0x86
     79a:	e9 71 fa ff ff       	jmp    0x210
     79f:	fa                   	cli    
     7a0:	6a 00                	push   $0x0
     7a2:	68 87 00 00 00       	push   $0x87
     7a7:	e9 64 fa ff ff       	jmp    0x210
     7ac:	fa                   	cli    
     7ad:	6a 00                	push   $0x0
     7af:	68 88 00 00 00       	push   $0x88
     7b4:	e9 57 fa ff ff       	jmp    0x210
     7b9:	fa                   	cli    
     7ba:	6a 00                	push   $0x0
     7bc:	68 89 00 00 00       	push   $0x89
     7c1:	e9 4a fa ff ff       	jmp    0x210
     7c6:	fa                   	cli    
     7c7:	6a 00                	push   $0x0
     7c9:	68 8a 00 00 00       	push   $0x8a
     7ce:	e9 3d fa ff ff       	jmp    0x210
     7d3:	fa                   	cli    
     7d4:	6a 00                	push   $0x0
     7d6:	68 8b 00 00 00       	push   $0x8b
     7db:	e9 30 fa ff ff       	jmp    0x210
     7e0:	fa                   	cli    
     7e1:	6a 00                	push   $0x0
     7e3:	68 8c 00 00 00       	push   $0x8c
     7e8:	e9 23 fa ff ff       	jmp    0x210
     7ed:	fa                   	cli    
     7ee:	6a 00                	push   $0x0
     7f0:	68 8d 00 00 00       	push   $0x8d
     7f5:	e9 16 fa ff ff       	jmp    0x210
     7fa:	fa                   	cli    
     7fb:	6a 00                	push   $0x0
     7fd:	68 8e 00 00 00       	push   $0x8e
     802:	e9 09 fa ff ff       	jmp    0x210
     807:	fa                   	cli    
     808:	6a 00                	push   $0x0
     80a:	68 8f 00 00 00       	push   $0x8f
     80f:	e9 fc f9 ff ff       	jmp    0x210
     814:	fa                   	cli    
     815:	6a 00                	push   $0x0
     817:	68 90 00 00 00       	push   $0x90
     81c:	e9 ef f9 ff ff       	jmp    0x210
     821:	fa                   	cli    
     822:	6a 00                	push   $0x0
     824:	68 91 00 00 00       	push   $0x91
     829:	e9 e2 f9 ff ff       	jmp    0x210
     82e:	fa                   	cli    
     82f:	6a 00                	push   $0x0
     831:	68 92 00 00 00       	push   $0x92
     836:	e9 d5 f9 ff ff       	jmp    0x210
     83b:	fa                   	cli    
     83c:	6a 00                	push   $0x0
     83e:	68 93 00 00 00       	push   $0x93
     843:	e9 c8 f9 ff ff       	jmp    0x210
     848:	fa                   	cli    
     849:	6a 00                	push   $0x0
     84b:	68 94 00 00 00       	push   $0x94
     850:	e9 bb f9 ff ff       	jmp    0x210
     855:	fa                   	cli    
     856:	6a 00                	push   $0x0
     858:	68 95 00 00 00       	push   $0x95
     85d:	e9 ae f9 ff ff       	jmp    0x210
     862:	fa                   	cli    
     863:	6a 00                	push   $0x0
     865:	68 96 00 00 00       	push   $0x96
     86a:	e9 a1 f9 ff ff       	jmp    0x210
     86f:	fa                   	cli    
     870:	6a 00                	push   $0x0
     872:	68 97 00 00 00       	push   $0x97
     877:	e9 94 f9 ff ff       	jmp    0x210
     87c:	fa                   	cli    
     87d:	6a 00                	push   $0x0
     87f:	68 98 00 00 00       	push   $0x98
     884:	e9 87 f9 ff ff       	jmp    0x210
     889:	fa                   	cli    
     88a:	6a 00                	push   $0x0
     88c:	68 99 00 00 00       	push   $0x99
     891:	e9 7a f9 ff ff       	jmp    0x210
     896:	fa                   	cli    
     897:	6a 00                	push   $0x0
     899:	68 9a 00 00 00       	push   $0x9a
     89e:	e9 6d f9 ff ff       	jmp    0x210
     8a3:	fa                   	cli    
     8a4:	6a 00                	push   $0x0
     8a6:	68 9b 00 00 00       	push   $0x9b
     8ab:	e9 60 f9 ff ff       	jmp    0x210
     8b0:	fa                   	cli    
     8b1:	6a 00                	push   $0x0
     8b3:	68 9c 00 00 00       	push   $0x9c
     8b8:	e9 53 f9 ff ff       	jmp    0x210
     8bd:	fa                   	cli    
     8be:	6a 00                	push   $0x0
     8c0:	68 9d 00 00 00       	push   $0x9d
     8c5:	e9 46 f9 ff ff       	jmp    0x210
     8ca:	fa                   	cli    
     8cb:	6a 00                	push   $0x0
     8cd:	68 9e 00 00 00       	push   $0x9e
     8d2:	e9 39 f9 ff ff       	jmp    0x210
     8d7:	fa                   	cli    
     8d8:	6a 00                	push   $0x0
     8da:	68 9f 00 00 00       	push   $0x9f
     8df:	e9 2c f9 ff ff       	jmp    0x210
     8e4:	fa                   	cli    
     8e5:	6a 00                	push   $0x0
     8e7:	68 a0 00 00 00       	push   $0xa0
     8ec:	e9 1f f9 ff ff       	jmp    0x210
     8f1:	fa                   	cli    
     8f2:	6a 00                	push   $0x0
     8f4:	68 a1 00 00 00       	push   $0xa1
     8f9:	e9 12 f9 ff ff       	jmp    0x210
     8fe:	fa                   	cli    
     8ff:	6a 00                	push   $0x0
     901:	68 a2 00 00 00       	push   $0xa2
     906:	e9 05 f9 ff ff       	jmp    0x210
     90b:	fa                   	cli    
     90c:	6a 00                	push   $0x0
     90e:	68 a3 00 00 00       	push   $0xa3
     913:	e9 f8 f8 ff ff       	jmp    0x210
     918:	fa                   	cli    
     919:	6a 00                	push   $0x0
     91b:	68 a4 00 00 00       	push   $0xa4
     920:	e9 eb f8 ff ff       	jmp    0x210
     925:	fa                   	cli    
     926:	6a 00                	push   $0x0
     928:	68 a5 00 00 00       	push   $0xa5
     92d:	e9 de f8 ff ff       	jmp    0x210
     932:	fa                   	cli    
     933:	6a 00                	push   $0x0
     935:	68 a6 00 00 00       	push   $0xa6
     93a:	e9 d1 f8 ff ff       	jmp    0x210
     93f:	fa                   	cli    
     940:	6a 00                	push   $0x0
     942:	68 a7 00 00 00       	push   $0xa7
     947:	e9 c4 f8 ff ff       	jmp    0x210
     94c:	fa                   	cli    
     94d:	6a 00                	push   $0x0
     94f:	68 a8 00 00 00       	push   $0xa8
     954:	e9 b7 f8 ff ff       	jmp    0x210
     959:	fa                   	cli    
     95a:	6a 00                	push   $0x0
     95c:	68 a9 00 00 00       	push   $0xa9
     961:	e9 aa f8 ff ff       	jmp    0x210
     966:	fa                   	cli    
     967:	6a 00                	push   $0x0
     969:	68 aa 00 00 00       	push   $0xaa
     96e:	e9 9d f8 ff ff       	jmp    0x210
     973:	fa                   	cli    
     974:	6a 00                	push   $0x0
     976:	68 ab 00 00 00       	push   $0xab
     97b:	e9 90 f8 ff ff       	jmp    0x210
     980:	fa                   	cli    
     981:	6a 00                	push   $0x0
     983:	68 ac 00 00 00       	push   $0xac
     988:	e9 83 f8 ff ff       	jmp    0x210
     98d:	fa                   	cli    
     98e:	6a 00                	push   $0x0
     990:	68 ad 00 00 00       	push   $0xad
     995:	e9 76 f8 ff ff       	jmp    0x210
     99a:	fa                   	cli    
     99b:	6a 00                	push   $0x0
     99d:	68 ae 00 00 00       	push   $0xae
     9a2:	e9 69 f8 ff ff       	jmp    0x210
     9a7:	fa                   	cli    
     9a8:	6a 00                	push   $0x0
     9aa:	68 af 00 00 00       	push   $0xaf
     9af:	e9 5c f8 ff ff       	jmp    0x210
     9b4:	fa                   	cli    
     9b5:	6a 00                	push   $0x0
     9b7:	68 b0 00 00 00       	push   $0xb0
     9bc:	e9 4f f8 ff ff       	jmp    0x210
     9c1:	fa                   	cli    
     9c2:	6a 00                	push   $0x0
     9c4:	68 b1 00 00 00       	push   $0xb1
     9c9:	e9 42 f8 ff ff       	jmp    0x210
     9ce:	fa                   	cli    
     9cf:	6a 00                	push   $0x0
     9d1:	68 b2 00 00 00       	push   $0xb2
     9d6:	e9 35 f8 ff ff       	jmp    0x210
     9db:	fa                   	cli    
     9dc:	6a 00                	push   $0x0
     9de:	68 b3 00 00 00       	push   $0xb3
     9e3:	e9 28 f8 ff ff       	jmp    0x210
     9e8:	fa                   	cli    
     9e9:	6a 00                	push   $0x0
     9eb:	68 b4 00 00 00       	push   $0xb4
     9f0:	e9 1b f8 ff ff       	jmp    0x210
     9f5:	fa                   	cli    
     9f6:	6a 00                	push   $0x0
     9f8:	68 b5 00 00 00       	push   $0xb5
     9fd:	e9 0e f8 ff ff       	jmp    0x210
     a02:	fa                   	cli    
     a03:	6a 00                	push   $0x0
     a05:	68 b6 00 00 00       	push   $0xb6
     a0a:	e9 01 f8 ff ff       	jmp    0x210
     a0f:	fa                   	cli    
     a10:	6a 00                	push   $0x0
     a12:	68 b7 00 00 00       	push   $0xb7
     a17:	e9 f4 f7 ff ff       	jmp    0x210
     a1c:	fa                   	cli    
     a1d:	6a 00                	push   $0x0
     a1f:	68 b8 00 00 00       	push   $0xb8
     a24:	e9 e7 f7 ff ff       	jmp    0x210
     a29:	fa                   	cli    
     a2a:	6a 00                	push   $0x0
     a2c:	68 b9 00 00 00       	push   $0xb9
     a31:	e9 da f7 ff ff       	jmp    0x210
     a36:	fa                   	cli    
     a37:	6a 00                	push   $0x0
     a39:	68 ba 00 00 00       	push   $0xba
     a3e:	e9 cd f7 ff ff       	jmp    0x210
     a43:	fa                   	cli    
     a44:	6a 00                	push   $0x0
     a46:	68 bb 00 00 00       	push   $0xbb
     a4b:	e9 c0 f7 ff ff       	jmp    0x210
     a50:	fa                   	cli    
     a51:	6a 00                	push   $0x0
     a53:	68 bc 00 00 00       	push   $0xbc
     a58:	e9 b3 f7 ff ff       	jmp    0x210
     a5d:	fa                   	cli    
     a5e:	6a 00                	push   $0x0
     a60:	68 bd 00 00 00       	push   $0xbd
     a65:	e9 a6 f7 ff ff       	jmp    0x210
     a6a:	fa                   	cli    
     a6b:	6a 00                	push   $0x0
     a6d:	68 be 00 00 00       	push   $0xbe
     a72:	e9 99 f7 ff ff       	jmp    0x210
     a77:	fa                   	cli    
     a78:	6a 00                	push   $0x0
     a7a:	68 bf 00 00 00       	push   $0xbf
     a7f:	e9 8c f7 ff ff       	jmp    0x210
     a84:	fa                   	cli    
     a85:	6a 00                	push   $0x0
     a87:	68 c0 00 00 00       	push   $0xc0
     a8c:	e9 7f f7 ff ff       	jmp    0x210
     a91:	fa                   	cli    
     a92:	6a 00                	push   $0x0
     a94:	68 c1 00 00 00       	push   $0xc1
     a99:	e9 72 f7 ff ff       	jmp    0x210
     a9e:	fa                   	cli    
     a9f:	6a 00                	push   $0x0
     aa1:	68 c2 00 00 00       	push   $0xc2
     aa6:	e9 65 f7 ff ff       	jmp    0x210
     aab:	fa                   	cli    
     aac:	6a 00                	push   $0x0
     aae:	68 c3 00 00 00       	push   $0xc3
     ab3:	e9 58 f7 ff ff       	jmp    0x210
     ab8:	fa                   	cli    
     ab9:	6a 00                	push   $0x0
     abb:	68 c4 00 00 00       	push   $0xc4
     ac0:	e9 4b f7 ff ff       	jmp    0x210
     ac5:	fa                   	cli    
     ac6:	6a 00                	push   $0x0
     ac8:	68 c5 00 00 00       	push   $0xc5
     acd:	e9 3e f7 ff ff       	jmp    0x210
     ad2:	fa                   	cli    
     ad3:	6a 00                	push   $0x0
     ad5:	68 c6 00 00 00       	push   $0xc6
     ada:	e9 31 f7 ff ff       	jmp    0x210
     adf:	fa                   	cli    
     ae0:	6a 00                	push   $0x0
     ae2:	68 c7 00 00 00       	push   $0xc7
     ae7:	e9 24 f7 ff ff       	jmp    0x210
     aec:	fa                   	cli    
     aed:	6a 00                	push   $0x0
     aef:	68 c8 00 00 00       	push   $0xc8
     af4:	e9 17 f7 ff ff       	jmp    0x210
     af9:	fa                   	cli    
     afa:	6a 00                	push   $0x0
     afc:	68 c9 00 00 00       	push   $0xc9
     b01:	e9 0a f7 ff ff       	jmp    0x210
     b06:	fa                   	cli    
     b07:	6a 00                	push   $0x0
     b09:	68 ca 00 00 00       	push   $0xca
     b0e:	e9 fd f6 ff ff       	jmp    0x210
     b13:	fa                   	cli    
     b14:	6a 00                	push   $0x0
     b16:	68 cb 00 00 00       	push   $0xcb
     b1b:	e9 f0 f6 ff ff       	jmp    0x210
     b20:	fa                   	cli    
     b21:	6a 00                	push   $0x0
     b23:	68 cc 00 00 00       	push   $0xcc
     b28:	e9 e3 f6 ff ff       	jmp    0x210
     b2d:	fa                   	cli    
     b2e:	6a 00                	push   $0x0
     b30:	68 cd 00 00 00       	push   $0xcd
     b35:	e9 d6 f6 ff ff       	jmp    0x210
     b3a:	fa                   	cli    
     b3b:	6a 00                	push   $0x0
     b3d:	68 ce 00 00 00       	push   $0xce
     b42:	e9 c9 f6 ff ff       	jmp    0x210
     b47:	fa                   	cli    
     b48:	6a 00                	push   $0x0
     b4a:	68 cf 00 00 00       	push   $0xcf
     b4f:	e9 bc f6 ff ff       	jmp    0x210
     b54:	fa                   	cli    
     b55:	6a 00                	push   $0x0
     b57:	68 d0 00 00 00       	push   $0xd0
     b5c:	e9 af f6 ff ff       	jmp    0x210
     b61:	fa                   	cli    
     b62:	6a 00                	push   $0x0
     b64:	68 d1 00 00 00       	push   $0xd1
     b69:	e9 a2 f6 ff ff       	jmp    0x210
     b6e:	fa                   	cli    
     b6f:	6a 00                	push   $0x0
     b71:	68 d2 00 00 00       	push   $0xd2
     b76:	e9 95 f6 ff ff       	jmp    0x210
     b7b:	fa                   	cli    
     b7c:	6a 00                	push   $0x0
     b7e:	68 d3 00 00 00       	push   $0xd3
     b83:	e9 88 f6 ff ff       	jmp    0x210
     b88:	fa                   	cli    
     b89:	6a 00                	push   $0x0
     b8b:	68 d4 00 00 00       	push   $0xd4
     b90:	e9 7b f6 ff ff       	jmp    0x210
     b95:	fa                   	cli    
     b96:	6a 00                	push   $0x0
     b98:	68 d5 00 00 00       	push   $0xd5
     b9d:	e9 6e f6 ff ff       	jmp    0x210
     ba2:	fa                   	cli    
     ba3:	6a 00                	push   $0x0
     ba5:	68 d6 00 00 00       	push   $0xd6
     baa:	e9 61 f6 ff ff       	jmp    0x210
     baf:	fa                   	cli    
     bb0:	6a 00                	push   $0x0
     bb2:	68 d7 00 00 00       	push   $0xd7
     bb7:	e9 54 f6 ff ff       	jmp    0x210
     bbc:	fa                   	cli    
     bbd:	6a 00                	push   $0x0
     bbf:	68 d8 00 00 00       	push   $0xd8
     bc4:	e9 47 f6 ff ff       	jmp    0x210
     bc9:	fa                   	cli    
     bca:	6a 00                	push   $0x0
     bcc:	68 d9 00 00 00       	push   $0xd9
     bd1:	e9 3a f6 ff ff       	jmp    0x210
     bd6:	fa                   	cli    
     bd7:	6a 00                	push   $0x0
     bd9:	68 da 00 00 00       	push   $0xda
     bde:	e9 2d f6 ff ff       	jmp    0x210
     be3:	fa                   	cli    
     be4:	6a 00                	push   $0x0
     be6:	68 db 00 00 00       	push   $0xdb
     beb:	e9 20 f6 ff ff       	jmp    0x210
     bf0:	fa                   	cli    
     bf1:	6a 00                	push   $0x0
     bf3:	68 dc 00 00 00       	push   $0xdc
     bf8:	e9 13 f6 ff ff       	jmp    0x210
     bfd:	fa                   	cli    
     bfe:	6a 00                	push   $0x0
     c00:	68 dd 00 00 00       	push   $0xdd
     c05:	e9 06 f6 ff ff       	jmp    0x210
     c0a:	fa                   	cli    
     c0b:	6a 00                	push   $0x0
     c0d:	68 de 00 00 00       	push   $0xde
     c12:	e9 f9 f5 ff ff       	jmp    0x210
     c17:	fa                   	cli    
     c18:	6a 00                	push   $0x0
     c1a:	68 df 00 00 00       	push   $0xdf
     c1f:	e9 ec f5 ff ff       	jmp    0x210
     c24:	fa                   	cli    
     c25:	6a 00                	push   $0x0
     c27:	68 e0 00 00 00       	push   $0xe0
     c2c:	e9 df f5 ff ff       	jmp    0x210
     c31:	fa                   	cli    
     c32:	6a 00                	push   $0x0
     c34:	68 e1 00 00 00       	push   $0xe1
     c39:	e9 d2 f5 ff ff       	jmp    0x210
     c3e:	fa                   	cli    
     c3f:	6a 00                	push   $0x0
     c41:	68 e2 00 00 00       	push   $0xe2
     c46:	e9 c5 f5 ff ff       	jmp    0x210
     c4b:	fa                   	cli    
     c4c:	6a 00                	push   $0x0
     c4e:	68 e3 00 00 00       	push   $0xe3
     c53:	e9 b8 f5 ff ff       	jmp    0x210
     c58:	fa                   	cli    
     c59:	6a 00                	push   $0x0
     c5b:	68 e4 00 00 00       	push   $0xe4
     c60:	e9 ab f5 ff ff       	jmp    0x210
     c65:	fa                   	cli    
     c66:	6a 00                	push   $0x0
     c68:	68 e5 00 00 00       	push   $0xe5
     c6d:	e9 9e f5 ff ff       	jmp    0x210
     c72:	fa                   	cli    
     c73:	6a 00                	push   $0x0
     c75:	68 e6 00 00 00       	push   $0xe6
     c7a:	e9 91 f5 ff ff       	jmp    0x210
     c7f:	fa                   	cli    
     c80:	6a 00                	push   $0x0
     c82:	68 e7 00 00 00       	push   $0xe7
     c87:	e9 84 f5 ff ff       	jmp    0x210
     c8c:	fa                   	cli    
     c8d:	6a 00                	push   $0x0
     c8f:	68 e8 00 00 00       	push   $0xe8
     c94:	e9 77 f5 ff ff       	jmp    0x210
     c99:	fa                   	cli    
     c9a:	6a 00                	push   $0x0
     c9c:	68 e9 00 00 00       	push   $0xe9
     ca1:	e9 6a f5 ff ff       	jmp    0x210
     ca6:	fa                   	cli    
     ca7:	6a 00                	push   $0x0
     ca9:	68 ea 00 00 00       	push   $0xea
     cae:	e9 5d f5 ff ff       	jmp    0x210
     cb3:	fa                   	cli    
     cb4:	6a 00                	push   $0x0
     cb6:	68 eb 00 00 00       	push   $0xeb
     cbb:	e9 50 f5 ff ff       	jmp    0x210
     cc0:	fa                   	cli    
     cc1:	6a 00                	push   $0x0
     cc3:	68 ec 00 00 00       	push   $0xec
     cc8:	e9 43 f5 ff ff       	jmp    0x210
     ccd:	fa                   	cli    
     cce:	6a 00                	push   $0x0
     cd0:	68 ed 00 00 00       	push   $0xed
     cd5:	e9 36 f5 ff ff       	jmp    0x210
     cda:	fa                   	cli    
     cdb:	6a 00                	push   $0x0
     cdd:	68 ee 00 00 00       	push   $0xee
     ce2:	e9 29 f5 ff ff       	jmp    0x210
     ce7:	fa                   	cli    
     ce8:	6a 00                	push   $0x0
     cea:	68 ef 00 00 00       	push   $0xef
     cef:	e9 1c f5 ff ff       	jmp    0x210
     cf4:	fa                   	cli    
     cf5:	6a 00                	push   $0x0
     cf7:	68 f0 00 00 00       	push   $0xf0
     cfc:	e9 0f f5 ff ff       	jmp    0x210
     d01:	fa                   	cli    
     d02:	6a 00                	push   $0x0
     d04:	68 f1 00 00 00       	push   $0xf1
     d09:	e9 02 f5 ff ff       	jmp    0x210
     d0e:	fa                   	cli    
     d0f:	6a 00                	push   $0x0
     d11:	68 f2 00 00 00       	push   $0xf2
     d16:	e9 f5 f4 ff ff       	jmp    0x210
     d1b:	fa                   	cli    
     d1c:	6a 00                	push   $0x0
     d1e:	68 f3 00 00 00       	push   $0xf3
     d23:	e9 e8 f4 ff ff       	jmp    0x210
     d28:	fa                   	cli    
     d29:	6a 00                	push   $0x0
     d2b:	68 f4 00 00 00       	push   $0xf4
     d30:	e9 db f4 ff ff       	jmp    0x210
     d35:	fa                   	cli    
     d36:	6a 00                	push   $0x0
     d38:	68 f5 00 00 00       	push   $0xf5
     d3d:	e9 ce f4 ff ff       	jmp    0x210
     d42:	fa                   	cli    
     d43:	6a 00                	push   $0x0
     d45:	68 f6 00 00 00       	push   $0xf6
     d4a:	e9 c1 f4 ff ff       	jmp    0x210
     d4f:	fa                   	cli    
     d50:	6a 00                	push   $0x0
     d52:	68 f7 00 00 00       	push   $0xf7
     d57:	e9 b4 f4 ff ff       	jmp    0x210
     d5c:	fa                   	cli    
     d5d:	6a 00                	push   $0x0
     d5f:	68 f8 00 00 00       	push   $0xf8
     d64:	e9 a7 f4 ff ff       	jmp    0x210
     d69:	fa                   	cli    
     d6a:	6a 00                	push   $0x0
     d6c:	68 f9 00 00 00       	push   $0xf9
     d71:	e9 9a f4 ff ff       	jmp    0x210
     d76:	fa                   	cli    
     d77:	6a 00                	push   $0x0
     d79:	68 fa 00 00 00       	push   $0xfa
     d7e:	e9 8d f4 ff ff       	jmp    0x210
     d83:	fa                   	cli    
     d84:	6a 00                	push   $0x0
     d86:	68 fb 00 00 00       	push   $0xfb
     d8b:	e9 80 f4 ff ff       	jmp    0x210
     d90:	fa                   	cli    
     d91:	6a 00                	push   $0x0
     d93:	68 fc 00 00 00       	push   $0xfc
     d98:	e9 73 f4 ff ff       	jmp    0x210
     d9d:	fa                   	cli    
     d9e:	6a 00                	push   $0x0
     da0:	68 fd 00 00 00       	push   $0xfd
     da5:	e9 66 f4 ff ff       	jmp    0x210
     daa:	fa                   	cli    
     dab:	6a 00                	push   $0x0
     dad:	68 fe 00 00 00       	push   $0xfe
     db2:	e9 59 f4 ff ff       	jmp    0x210
     db7:	fa                   	cli    
     db8:	6a 00                	push   $0x0
     dba:	68 ff 00 00 00       	push   $0xff
     dbf:	e9 4c f4 ff ff       	jmp    0x210
     dc4:	fa                   	cli    
     dc5:	6a 00                	push   $0x0
     dc7:	6a 20                	push   $0x20
     dc9:	e9 6d f4 ff ff       	jmp    0x23b
     dce:	fa                   	cli    
     dcf:	6a 01                	push   $0x1
     dd1:	6a 21                	push   $0x21
     dd3:	e9 63 f4 ff ff       	jmp    0x23b
     dd8:	fa                   	cli    
     dd9:	6a 02                	push   $0x2
     ddb:	6a 22                	push   $0x22
     ddd:	e9 59 f4 ff ff       	jmp    0x23b
     de2:	fa                   	cli    
     de3:	6a 03                	push   $0x3
     de5:	6a 23                	push   $0x23
     de7:	e9 4f f4 ff ff       	jmp    0x23b
     dec:	fa                   	cli    
     ded:	6a 04                	push   $0x4
     def:	6a 24                	push   $0x24
     df1:	e9 45 f4 ff ff       	jmp    0x23b
     df6:	fa                   	cli    
     df7:	6a 05                	push   $0x5
     df9:	6a 25                	push   $0x25
     dfb:	e9 3b f4 ff ff       	jmp    0x23b
     e00:	fa                   	cli    
     e01:	6a 06                	push   $0x6
     e03:	6a 26                	push   $0x26
     e05:	e9 31 f4 ff ff       	jmp    0x23b
     e0a:	fa                   	cli    
     e0b:	6a 07                	push   $0x7
     e0d:	6a 27                	push   $0x27
     e0f:	e9 27 f4 ff ff       	jmp    0x23b
     e14:	fa                   	cli    
     e15:	6a 08                	push   $0x8
     e17:	6a 28                	push   $0x28
     e19:	e9 1d f4 ff ff       	jmp    0x23b
     e1e:	fa                   	cli    
     e1f:	6a 09                	push   $0x9
     e21:	6a 29                	push   $0x29
     e23:	e9 13 f4 ff ff       	jmp    0x23b
     e28:	fa                   	cli    
     e29:	6a 0a                	push   $0xa
     e2b:	6a 2a                	push   $0x2a
     e2d:	e9 09 f4 ff ff       	jmp    0x23b
     e32:	fa                   	cli    
     e33:	6a 0b                	push   $0xb
     e35:	6a 2b                	push   $0x2b
     e37:	e9 ff f3 ff ff       	jmp    0x23b
     e3c:	fa                   	cli    
     e3d:	6a 0c                	push   $0xc
     e3f:	6a 2c                	push   $0x2c
     e41:	e9 f5 f3 ff ff       	jmp    0x23b
     e46:	fa                   	cli    
     e47:	6a 0d                	push   $0xd
     e49:	6a 2d                	push   $0x2d
     e4b:	e9 eb f3 ff ff       	jmp    0x23b
     e50:	fa                   	cli    
     e51:	6a 0e                	push   $0xe
     e53:	6a 2e                	push   $0x2e
     e55:	e9 e1 f3 ff ff       	jmp    0x23b
     e5a:	fa                   	cli    
     e5b:	6a 0f                	push   $0xf
     e5d:	6a 2f                	push   $0x2f
     e5f:	e9 d7 f3 ff ff       	jmp    0x23b
     e64:	66 90                	xchg   %ax,%ax
     e66:	66 90                	xchg   %ax,%ax
     e68:	66 90                	xchg   %ax,%ax
     e6a:	66 90                	xchg   %ax,%ax
     e6c:	66 90                	xchg   %ax,%ax
     e6e:	66 90                	xchg   %ax,%ax
     e70:	60                   	pusha  
     e71:	89 e2                	mov    %esp,%edx
     e73:	fa                   	cli    
     e74:	31 c9                	xor    %ecx,%ecx
     e76:	0f 20 db             	mov    %cr3,%ebx
     e79:	0f 22 d9             	mov    %ecx,%cr3
     e7c:	0f 01 15 0b 7d 00 00 	lgdtl  0x7d0b
     e83:	0f 01 1d 13 7d 00 00 	lidtl  0x7d13
     e8a:	ea 21 7c 00 00 30 00 	ljmp   $0x30,$0x7c21
     e91:	b8 38 00 8e d8       	mov    $0xd88e0038,%eax
     e96:	8e c0                	mov    %eax,%es
     e98:	8e e0                	mov    %eax,%fs
     e9a:	8e e8                	mov    %eax,%gs
     e9c:	8e d0                	mov    %eax,%ss
     e9e:	0f 20 c0             	mov    %cr0,%eax
     ea1:	24 fe                	and    $0xfe,%al
     ea3:	0f 22 c0             	mov    %eax,%cr0
     ea6:	ea 3b 7c 00 00 31 c0 	ljmp   $0xc031,$0x7c3b
     ead:	8e d8                	mov    %eax,%ds
     eaf:	8e c0                	mov    %eax,%es
     eb1:	8e e0                	mov    %eax,%fs
     eb3:	8e e8                	mov    %eax,%gs
     eb5:	8e d0                	mov    %eax,%ss
     eb7:	bc 00 8c fb 60       	mov    $0x60fb8c00,%esp
     ebc:	8c d1                	mov    %ss,%ecx
     ebe:	51                   	push   %ecx
     ebf:	8c e9                	mov    %gs,%ecx
     ec1:	51                   	push   %ecx
     ec2:	8c e1                	mov    %fs,%ecx
     ec4:	51                   	push   %ecx
     ec5:	8c c1                	mov    %es,%ecx
     ec7:	51                   	push   %ecx
     ec8:	8c d9                	mov    %ds,%ecx
     eca:	51                   	push   %ecx
     ecb:	9c                   	pushf  
     ecc:	89 e0                	mov    %esp,%eax
     ece:	66 bf c3 8b          	mov    $0x8bc3,%di
     ed2:	00 00                	add    %al,(%eax)
     ed4:	ab                   	stos   %eax,%es:(%edi)
     ed5:	66 bc 1b 7d          	mov    $0x7d1b,%sp
     ed9:	00 00                	add    %al,(%eax)
     edb:	61                   	popa   
     edc:	bc 00 9c cd 00       	mov    $0xcd9c00,%esp
     ee1:	66 bc 37 7d          	mov    $0x7d37,%sp
     ee5:	00 00                	add    %al,(%eax)
     ee7:	83 c4 1c             	add    $0x1c,%esp
     eea:	9c                   	pushf  
     eeb:	8c d1                	mov    %ss,%ecx
     eed:	51                   	push   %ecx
     eee:	8c e9                	mov    %gs,%ecx
     ef0:	51                   	push   %ecx
     ef1:	8c e1                	mov    %fs,%ecx
     ef3:	51                   	push   %ecx
     ef4:	8c c1                	mov    %es,%ecx
     ef6:	51                   	push   %ecx
     ef7:	8c d9                	mov    %ds,%ecx
     ef9:	51                   	push   %ecx
     efa:	60                   	pusha  
     efb:	66 be c3 8b          	mov    $0x8bc3,%si
     eff:	00 00                	add    %al,(%eax)
     f01:	ad                   	lods   %ds:(%esi),%eax
     f02:	89 c4                	mov    %eax,%esp
     f04:	9d                   	popf   
     f05:	59                   	pop    %ecx
     f06:	8e d9                	mov    %ecx,%ds
     f08:	59                   	pop    %ecx
     f09:	8e c1                	mov    %ecx,%es
     f0b:	59                   	pop    %ecx
     f0c:	8e e1                	mov    %ecx,%fs
     f0e:	59                   	pop    %ecx
     f0f:	8e e9                	mov    %ecx,%gs
     f11:	59                   	pop    %ecx
     f12:	8e d1                	mov    %ecx,%ss
     f14:	61                   	popa   
     f15:	0f 20 c0             	mov    %cr0,%eax
     f18:	66 40                	inc    %ax
     f1a:	0f 22 c0             	mov    %eax,%cr0
     f1d:	ea b2 7c 08 00 66 b8 	ljmp   $0xb866,$0x87cb2
     f24:	10 00                	adc    %al,(%eax)
     f26:	8e d8                	mov    %eax,%ds
     f28:	8e c0                	mov    %eax,%es
     f2a:	8e e0                	mov    %eax,%fs
     f2c:	8e e8                	mov    %eax,%gs
     f2e:	8e d0                	mov    %eax,%ss
     f30:	0f 22 db             	mov    %ebx,%cr3
     f33:	89 d4                	mov    %edx,%esp
     f35:	fb                   	sti    
     f36:	61                   	popa   
     f37:	c3                   	ret    
	...
     fa4:	00 00                	add    %al,(%eax)
     fa6:	00 aa aa aa aa aa    	add    %ch,-0x55555556(%edx)
     fac:	aa                   	stos   %al,%es:(%edi)
     fad:	aa                   	stos   %al,%es:(%edi)
     fae:	aa                   	stos   %al,%es:(%edi)
     faf:	aa                   	stos   %al,%es:(%edi)
     fb0:	aa                   	stos   %al,%es:(%edi)
     fb1:	aa                   	stos   %al,%es:(%edi)
     fb2:	aa                   	stos   %al,%es:(%edi)
     fb3:	aa                   	stos   %al,%es:(%edi)
     fb4:	aa                   	stos   %al,%es:(%edi)
     fb5:	aa                   	stos   %al,%es:(%edi)
     fb6:	aa                   	stos   %al,%es:(%edi)
     fb7:	aa                   	stos   %al,%es:(%edi)
     fb8:	aa                   	stos   %al,%es:(%edi)
     fb9:	aa                   	stos   %al,%es:(%edi)
     fba:	aa                   	stos   %al,%es:(%edi)
     fbb:	aa                   	stos   %al,%es:(%edi)
     fbc:	aa                   	stos   %al,%es:(%edi)
     fbd:	aa                   	stos   %al,%es:(%edi)
     fbe:	aa                   	stos   %al,%es:(%edi)
     fbf:	aa                   	stos   %al,%es:(%edi)
     fc0:	aa                   	stos   %al,%es:(%edi)
     fc1:	aa                   	stos   %al,%es:(%edi)
     fc2:	aa                   	stos   %al,%es:(%edi)
     fc3:	00 00                	add    %al,(%eax)
     fc5:	55                   	push   %ebp
     fc6:	89 e5                	mov    %esp,%ebp
     fc8:	83 ec 08             	sub    $0x8,%esp
     fcb:	e8 1f 00 00 00       	call   0xfef
     fd0:	e8 0d 1b 00 00       	call   0x2ae2
     fd5:	e8 d5 1c 00 00       	call   0x2caf
     fda:	e8 67 1e 00 00       	call   0x2e46
     fdf:	90                   	nop
     fe0:	c9                   	leave  
     fe1:	c3                   	ret    
     fe2:	55                   	push   %ebp
     fe3:	89 e5                	mov    %esp,%ebp
     fe5:	83 ec 08             	sub    $0x8,%esp
     fe8:	e8 d8 ff ff ff       	call   0xfc5
     fed:	eb fe                	jmp    0xfed
     fef:	55                   	push   %ebp
     ff0:	89 e5                	mov    %esp,%ebp
     ff2:	83 ec 10             	sub    $0x10,%esp
     ff5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
     ffc:	eb 1a                	jmp    0x1018
     ffe:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1001:	05 00 80 0b 00       	add    $0xb8000,%eax
    1006:	c6 00 30             	movb   $0x30,(%eax)
    1009:	8b 45 fc             	mov    -0x4(%ebp),%eax
    100c:	05 01 80 0b 00       	add    $0xb8001,%eax
    1011:	c6 00 00             	movb   $0x0,(%eax)
    1014:	83 45 fc 02          	addl   $0x2,-0x4(%ebp)
    1018:	81 7d fc 9f 0f 00 00 	cmpl   $0xf9f,-0x4(%ebp)
    101f:	7e dd                	jle    0xffe
    1021:	90                   	nop
    1022:	c9                   	leave  
    1023:	c3                   	ret    
    1024:	55                   	push   %ebp
    1025:	89 e5                	mov    %esp,%ebp
    1027:	83 ec 08             	sub    $0x8,%esp
    102a:	8b 55 08             	mov    0x8(%ebp),%edx
    102d:	8b 45 0c             	mov    0xc(%ebp),%eax
    1030:	88 55 fc             	mov    %dl,-0x4(%ebp)
    1033:	88 45 f8             	mov    %al,-0x8(%ebp)
    1036:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
    103a:	89 d0                	mov    %edx,%eax
    103c:	c1 e0 02             	shl    $0x2,%eax
    103f:	01 d0                	add    %edx,%eax
    1041:	c1 e0 04             	shl    $0x4,%eax
    1044:	89 c2                	mov    %eax,%edx
    1046:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    104a:	01 d0                	add    %edx,%eax
    104c:	01 c0                	add    %eax,%eax
    104e:	c9                   	leave  
    104f:	c3                   	ret    
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	53                   	push   %ebx
    1054:	83 ec 20             	sub    $0x20,%esp
    1057:	8b 5d 08             	mov    0x8(%ebp),%ebx
    105a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    105d:	8b 55 10             	mov    0x10(%ebp),%edx
    1060:	8b 45 14             	mov    0x14(%ebp),%eax
    1063:	88 5d e8             	mov    %bl,-0x18(%ebp)
    1066:	88 4d e4             	mov    %cl,-0x1c(%ebp)
    1069:	88 55 e0             	mov    %dl,-0x20(%ebp)
    106c:	88 45 dc             	mov    %al,-0x24(%ebp)
    106f:	80 7d e0 4f          	cmpb   $0x4f,-0x20(%ebp)
    1073:	77 06                	ja     0x107b
    1075:	80 7d dc 18          	cmpb   $0x18,-0x24(%ebp)
    1079:	76 07                	jbe    0x1082
    107b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1080:	eb 38                	jmp    0x10ba
    1082:	0f b6 55 dc          	movzbl -0x24(%ebp),%edx
    1086:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    108a:	52                   	push   %edx
    108b:	50                   	push   %eax
    108c:	e8 93 ff ff ff       	call   0x1024
    1091:	83 c4 08             	add    $0x8,%esp
    1094:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1097:	8b 45 f8             	mov    -0x8(%ebp),%eax
    109a:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
    10a0:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    10a4:	88 02                	mov    %al,(%edx)
    10a6:	8b 45 f8             	mov    -0x8(%ebp),%eax
    10a9:	8d 90 01 80 0b 00    	lea    0xb8001(%eax),%edx
    10af:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    10b3:	88 02                	mov    %al,(%edx)
    10b5:	b8 01 00 00 00       	mov    $0x1,%eax
    10ba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    10bd:	c9                   	leave  
    10be:	c3                   	ret    
    10bf:	55                   	push   %ebp
    10c0:	89 e5                	mov    %esp,%ebp
    10c2:	56                   	push   %esi
    10c3:	53                   	push   %ebx
    10c4:	83 ec 1c             	sub    $0x1c,%esp
    10c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    10ca:	8b 55 10             	mov    0x10(%ebp),%edx
    10cd:	8b 45 14             	mov    0x14(%ebp),%eax
    10d0:	88 4d e4             	mov    %cl,-0x1c(%ebp)
    10d3:	88 55 e0             	mov    %dl,-0x20(%ebp)
    10d6:	88 45 dc             	mov    %al,-0x24(%ebp)
    10d9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    10e0:	80 7d e0 4f          	cmpb   $0x4f,-0x20(%ebp)
    10e4:	77 06                	ja     0x10ec
    10e6:	80 7d dc 18          	cmpb   $0x18,-0x24(%ebp)
    10ea:	76 07                	jbe    0x10f3
    10ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    10f1:	eb 53                	jmp    0x1146
    10f3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    10fa:	eb 38                	jmp    0x1134
    10fc:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    1100:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1103:	89 c2                	mov    %eax,%edx
    1105:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    1109:	01 d0                	add    %edx,%eax
    110b:	0f b6 c8             	movzbl %al,%ecx
    110e:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    1112:	8b 75 08             	mov    0x8(%ebp),%esi
    1115:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1118:	01 f0                	add    %esi,%eax
    111a:	0f b6 00             	movzbl (%eax),%eax
    111d:	0f be c0             	movsbl %al,%eax
    1120:	53                   	push   %ebx
    1121:	51                   	push   %ecx
    1122:	52                   	push   %edx
    1123:	50                   	push   %eax
    1124:	e8 27 ff ff ff       	call   0x1050
    1129:	83 c4 10             	add    $0x10,%esp
    112c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1130:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1134:	8b 55 08             	mov    0x8(%ebp),%edx
    1137:	8b 45 f0             	mov    -0x10(%ebp),%eax
    113a:	01 d0                	add    %edx,%eax
    113c:	0f b6 00             	movzbl (%eax),%eax
    113f:	84 c0                	test   %al,%al
    1141:	75 b9                	jne    0x10fc
    1143:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1146:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1149:	5b                   	pop    %ebx
    114a:	5e                   	pop    %esi
    114b:	5d                   	pop    %ebp
    114c:	c3                   	ret    
    114d:	55                   	push   %ebp
    114e:	89 e5                	mov    %esp,%ebp
    1150:	83 ec 28             	sub    $0x28,%esp
    1153:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1156:	8b 55 10             	mov    0x10(%ebp),%edx
    1159:	8b 45 14             	mov    0x14(%ebp),%eax
    115c:	88 4d e4             	mov    %cl,-0x1c(%ebp)
    115f:	88 55 e0             	mov    %dl,-0x20(%ebp)
    1162:	88 45 dc             	mov    %al,-0x24(%ebp)
    1165:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    116c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1173:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    117a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1181:	80 7d e0 4f          	cmpb   $0x4f,-0x20(%ebp)
    1185:	77 06                	ja     0x118d
    1187:	80 7d dc 18          	cmpb   $0x18,-0x24(%ebp)
    118b:	76 07                	jbe    0x1194
    118d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1192:	eb 2f                	jmp    0x11c3
    1194:	83 ec 04             	sub    $0x4,%esp
    1197:	6a 0a                	push   $0xa
    1199:	8d 45 e8             	lea    -0x18(%ebp),%eax
    119c:	50                   	push   %eax
    119d:	ff 75 08             	push   0x8(%ebp)
    11a0:	e8 27 02 00 00       	call   0x13cc
    11a5:	83 c4 10             	add    $0x10,%esp
    11a8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
    11ac:	0f b6 55 e0          	movzbl -0x20(%ebp),%edx
    11b0:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    11b4:	51                   	push   %ecx
    11b5:	52                   	push   %edx
    11b6:	50                   	push   %eax
    11b7:	8d 45 e8             	lea    -0x18(%ebp),%eax
    11ba:	50                   	push   %eax
    11bb:	e8 ff fe ff ff       	call   0x10bf
    11c0:	83 c4 10             	add    $0x10,%esp
    11c3:	c9                   	leave  
    11c4:	c3                   	ret    
    11c5:	55                   	push   %ebp
    11c6:	89 e5                	mov    %esp,%ebp
    11c8:	56                   	push   %esi
    11c9:	53                   	push   %ebx
    11ca:	83 ec 20             	sub    $0x20,%esp
    11cd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    11d0:	8b 55 10             	mov    0x10(%ebp),%edx
    11d3:	8b 45 14             	mov    0x14(%ebp),%eax
    11d6:	88 4d e4             	mov    %cl,-0x1c(%ebp)
    11d9:	88 55 e0             	mov    %dl,-0x20(%ebp)
    11dc:	88 45 dc             	mov    %al,-0x24(%ebp)
    11df:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    11e6:	80 7d e0 4f          	cmpb   $0x4f,-0x20(%ebp)
    11ea:	77 06                	ja     0x11f2
    11ec:	80 7d dc 18          	cmpb   $0x18,-0x24(%ebp)
    11f0:	76 0a                	jbe    0x11fc
    11f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11f7:	e9 6d 01 00 00       	jmp    0x1369
    11fc:	8d 45 18             	lea    0x18(%ebp),%eax
    11ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1202:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1209:	e9 45 01 00 00       	jmp    0x1353
    120e:	8b 55 08             	mov    0x8(%ebp),%edx
    1211:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1214:	01 d0                	add    %edx,%eax
    1216:	0f b6 00             	movzbl (%eax),%eax
    1219:	3c 25                	cmp    $0x25,%al
    121b:	0f 85 fb 00 00 00    	jne    0x131c
    1221:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1225:	8b 55 08             	mov    0x8(%ebp),%edx
    1228:	8b 45 f0             	mov    -0x10(%ebp),%eax
    122b:	01 d0                	add    %edx,%eax
    122d:	0f b6 00             	movzbl (%eax),%eax
    1230:	0f be c0             	movsbl %al,%eax
    1233:	83 f8 64             	cmp    $0x64,%eax
    1236:	74 0f                	je     0x1247
    1238:	83 f8 73             	cmp    $0x73,%eax
    123b:	74 3f                	je     0x127c
    123d:	83 f8 63             	cmp    $0x63,%eax
    1240:	74 6f                	je     0x12b1
    1242:	e9 9f 00 00 00       	jmp    0x12e6
    1247:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    124b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    124e:	89 c2                	mov    %eax,%edx
    1250:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    1254:	01 d0                	add    %edx,%eax
    1256:	0f b6 c8             	movzbl %al,%ecx
    1259:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    125d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1260:	8d 70 04             	lea    0x4(%eax),%esi
    1263:	89 75 ec             	mov    %esi,-0x14(%ebp)
    1266:	8b 00                	mov    (%eax),%eax
    1268:	53                   	push   %ebx
    1269:	51                   	push   %ecx
    126a:	52                   	push   %edx
    126b:	50                   	push   %eax
    126c:	e8 dc fe ff ff       	call   0x114d
    1271:	83 c4 10             	add    $0x10,%esp
    1274:	01 45 f4             	add    %eax,-0xc(%ebp)
    1277:	e9 d3 00 00 00       	jmp    0x134f
    127c:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    1280:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1283:	89 c2                	mov    %eax,%edx
    1285:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    1289:	01 d0                	add    %edx,%eax
    128b:	0f b6 c8             	movzbl %al,%ecx
    128e:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    1292:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1295:	8d 70 04             	lea    0x4(%eax),%esi
    1298:	89 75 ec             	mov    %esi,-0x14(%ebp)
    129b:	8b 00                	mov    (%eax),%eax
    129d:	53                   	push   %ebx
    129e:	51                   	push   %ecx
    129f:	52                   	push   %edx
    12a0:	50                   	push   %eax
    12a1:	e8 19 fe ff ff       	call   0x10bf
    12a6:	83 c4 10             	add    $0x10,%esp
    12a9:	01 45 f4             	add    %eax,-0xc(%ebp)
    12ac:	e9 9e 00 00 00       	jmp    0x134f
    12b1:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    12b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12b8:	89 c2                	mov    %eax,%edx
    12ba:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    12be:	01 d0                	add    %edx,%eax
    12c0:	0f b6 c8             	movzbl %al,%ecx
    12c3:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    12c7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    12ca:	8d 70 04             	lea    0x4(%eax),%esi
    12cd:	89 75 ec             	mov    %esi,-0x14(%ebp)
    12d0:	8b 00                	mov    (%eax),%eax
    12d2:	0f be c0             	movsbl %al,%eax
    12d5:	53                   	push   %ebx
    12d6:	51                   	push   %ecx
    12d7:	52                   	push   %edx
    12d8:	50                   	push   %eax
    12d9:	e8 72 fd ff ff       	call   0x1050
    12de:	83 c4 10             	add    $0x10,%esp
    12e1:	01 45 f4             	add    %eax,-0xc(%ebp)
    12e4:	eb 69                	jmp    0x134f
    12e6:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    12ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12ed:	89 c2                	mov    %eax,%edx
    12ef:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    12f3:	01 d0                	add    %edx,%eax
    12f5:	0f b6 c8             	movzbl %al,%ecx
    12f8:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    12fc:	8b 75 08             	mov    0x8(%ebp),%esi
    12ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1302:	01 f0                	add    %esi,%eax
    1304:	0f b6 00             	movzbl (%eax),%eax
    1307:	0f be c0             	movsbl %al,%eax
    130a:	53                   	push   %ebx
    130b:	51                   	push   %ecx
    130c:	52                   	push   %edx
    130d:	50                   	push   %eax
    130e:	e8 3d fd ff ff       	call   0x1050
    1313:	83 c4 10             	add    $0x10,%esp
    1316:	01 45 f4             	add    %eax,-0xc(%ebp)
    1319:	90                   	nop
    131a:	eb 33                	jmp    0x134f
    131c:	0f b6 5d dc          	movzbl -0x24(%ebp),%ebx
    1320:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1323:	89 c2                	mov    %eax,%edx
    1325:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
    1329:	01 d0                	add    %edx,%eax
    132b:	0f b6 c8             	movzbl %al,%ecx
    132e:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    1332:	8b 75 08             	mov    0x8(%ebp),%esi
    1335:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1338:	01 f0                	add    %esi,%eax
    133a:	0f b6 00             	movzbl (%eax),%eax
    133d:	0f be c0             	movsbl %al,%eax
    1340:	53                   	push   %ebx
    1341:	51                   	push   %ecx
    1342:	52                   	push   %edx
    1343:	50                   	push   %eax
    1344:	e8 07 fd ff ff       	call   0x1050
    1349:	83 c4 10             	add    $0x10,%esp
    134c:	01 45 f4             	add    %eax,-0xc(%ebp)
    134f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1353:	8b 55 08             	mov    0x8(%ebp),%edx
    1356:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1359:	01 d0                	add    %edx,%eax
    135b:	0f b6 00             	movzbl (%eax),%eax
    135e:	84 c0                	test   %al,%al
    1360:	0f 85 a8 fe ff ff    	jne    0x120e
    1366:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1369:	8d 65 f8             	lea    -0x8(%ebp),%esp
    136c:	5b                   	pop    %ebx
    136d:	5e                   	pop    %esi
    136e:	5d                   	pop    %ebp
    136f:	c3                   	ret    
    1370:	55                   	push   %ebp
    1371:	89 e5                	mov    %esp,%ebp
    1373:	83 ec 10             	sub    $0x10,%esp
    1376:	8b 45 08             	mov    0x8(%ebp),%eax
    1379:	89 45 fc             	mov    %eax,-0x4(%ebp)
    137c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    1380:	74 47                	je     0x13c9
    1382:	eb 04                	jmp    0x1388
    1384:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    1388:	8b 45 fc             	mov    -0x4(%ebp),%eax
    138b:	0f b6 00             	movzbl (%eax),%eax
    138e:	84 c0                	test   %al,%al
    1390:	75 f2                	jne    0x1384
    1392:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
    1396:	eb 29                	jmp    0x13c1
    1398:	8b 45 08             	mov    0x8(%ebp),%eax
    139b:	0f b6 00             	movzbl (%eax),%eax
    139e:	88 45 fb             	mov    %al,-0x5(%ebp)
    13a1:	8b 45 08             	mov    0x8(%ebp),%eax
    13a4:	8d 50 01             	lea    0x1(%eax),%edx
    13a7:	89 55 08             	mov    %edx,0x8(%ebp)
    13aa:	8b 55 fc             	mov    -0x4(%ebp),%edx
    13ad:	0f b6 12             	movzbl (%edx),%edx
    13b0:	88 10                	mov    %dl,(%eax)
    13b2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    13b5:	8d 50 ff             	lea    -0x1(%eax),%edx
    13b8:	89 55 fc             	mov    %edx,-0x4(%ebp)
    13bb:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
    13bf:	88 10                	mov    %dl,(%eax)
    13c1:	8b 45 08             	mov    0x8(%ebp),%eax
    13c4:	3b 45 fc             	cmp    -0x4(%ebp),%eax
    13c7:	72 cf                	jb     0x1398
    13c9:	90                   	nop
    13ca:	c9                   	leave  
    13cb:	c3                   	ret    
    13cc:	55                   	push   %ebp
    13cd:	89 e5                	mov    %esp,%ebp
    13cf:	83 ec 28             	sub    $0x28,%esp
    13d2:	8b 45 10             	mov    0x10(%ebp),%eax
    13d5:	88 45 e4             	mov    %al,-0x1c(%ebp)
    13d8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    13df:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    13e6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    13ea:	75 23                	jne    0x140f
    13ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
    13ef:	8d 50 01             	lea    0x1(%eax),%edx
    13f2:	89 55 f4             	mov    %edx,-0xc(%ebp)
    13f5:	89 c2                	mov    %eax,%edx
    13f7:	8b 45 0c             	mov    0xc(%ebp),%eax
    13fa:	01 d0                	add    %edx,%eax
    13fc:	c6 00 30             	movb   $0x30,(%eax)
    13ff:	8b 55 f4             	mov    -0xc(%ebp),%edx
    1402:	8b 45 0c             	mov    0xc(%ebp),%eax
    1405:	01 d0                	add    %edx,%eax
    1407:	c6 00 00             	movb   $0x0,(%eax)
    140a:	e9 94 00 00 00       	jmp    0x14a3
    140f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    1413:	79 56                	jns    0x146b
    1415:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
    1419:	75 50                	jne    0x146b
    141b:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    1422:	f7 5d 08             	negl   0x8(%ebp)
    1425:	eb 44                	jmp    0x146b
    1427:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
    142b:	8b 45 08             	mov    0x8(%ebp),%eax
    142e:	99                   	cltd   
    142f:	f7 f9                	idiv   %ecx
    1431:	89 55 ec             	mov    %edx,-0x14(%ebp)
    1434:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
    1438:	7e 0a                	jle    0x1444
    143a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    143d:	83 c0 57             	add    $0x57,%eax
    1440:	89 c1                	mov    %eax,%ecx
    1442:	eb 08                	jmp    0x144c
    1444:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1447:	83 c0 30             	add    $0x30,%eax
    144a:	89 c1                	mov    %eax,%ecx
    144c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    144f:	8d 50 01             	lea    0x1(%eax),%edx
    1452:	89 55 f4             	mov    %edx,-0xc(%ebp)
    1455:	89 c2                	mov    %eax,%edx
    1457:	8b 45 0c             	mov    0xc(%ebp),%eax
    145a:	01 d0                	add    %edx,%eax
    145c:	88 08                	mov    %cl,(%eax)
    145e:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
    1462:	8b 45 08             	mov    0x8(%ebp),%eax
    1465:	99                   	cltd   
    1466:	f7 f9                	idiv   %ecx
    1468:	89 45 08             	mov    %eax,0x8(%ebp)
    146b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    146f:	75 b6                	jne    0x1427
    1471:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1475:	74 13                	je     0x148a
    1477:	8b 45 f4             	mov    -0xc(%ebp),%eax
    147a:	8d 50 01             	lea    0x1(%eax),%edx
    147d:	89 55 f4             	mov    %edx,-0xc(%ebp)
    1480:	89 c2                	mov    %eax,%edx
    1482:	8b 45 0c             	mov    0xc(%ebp),%eax
    1485:	01 d0                	add    %edx,%eax
    1487:	c6 00 2d             	movb   $0x2d,(%eax)
    148a:	8b 55 f4             	mov    -0xc(%ebp),%edx
    148d:	8b 45 0c             	mov    0xc(%ebp),%eax
    1490:	01 d0                	add    %edx,%eax
    1492:	c6 00 00             	movb   $0x0,(%eax)
    1495:	83 ec 0c             	sub    $0xc,%esp
    1498:	ff 75 0c             	push   0xc(%ebp)
    149b:	e8 d0 fe ff ff       	call   0x1370
    14a0:	83 c4 10             	add    $0x10,%esp
    14a3:	c9                   	leave  
    14a4:	c3                   	ret    
    14a5:	55                   	push   %ebp
    14a6:	89 e5                	mov    %esp,%ebp
    14a8:	83 ec 10             	sub    $0x10,%esp
    14ab:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    14af:	75 07                	jne    0x14b8
    14b1:	b8 00 00 00 00       	mov    $0x0,%eax
    14b6:	eb 1f                	jmp    0x14d7
    14b8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    14bf:	eb 04                	jmp    0x14c5
    14c1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    14c5:	8b 55 08             	mov    0x8(%ebp),%edx
    14c8:	8b 45 fc             	mov    -0x4(%ebp),%eax
    14cb:	01 d0                	add    %edx,%eax
    14cd:	0f b6 00             	movzbl (%eax),%eax
    14d0:	84 c0                	test   %al,%al
    14d2:	75 ed                	jne    0x14c1
    14d4:	8b 45 fc             	mov    -0x4(%ebp),%eax
    14d7:	c9                   	leave  
    14d8:	c3                   	ret    
    14d9:	55                   	push   %ebp
    14da:	89 e5                	mov    %esp,%ebp
    14dc:	83 ec 10             	sub    $0x10,%esp
    14df:	8b 45 08             	mov    0x8(%ebp),%eax
    14e2:	89 45 fc             	mov    %eax,-0x4(%ebp)
    14e5:	eb 0e                	jmp    0x14f5
    14e7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    14ea:	8d 50 01             	lea    0x1(%eax),%edx
    14ed:	89 55 fc             	mov    %edx,-0x4(%ebp)
    14f0:	8b 55 0c             	mov    0xc(%ebp),%edx
    14f3:	88 10                	mov    %dl,(%eax)
    14f5:	8b 45 10             	mov    0x10(%ebp),%eax
    14f8:	8d 50 ff             	lea    -0x1(%eax),%edx
    14fb:	89 55 10             	mov    %edx,0x10(%ebp)
    14fe:	85 c0                	test   %eax,%eax
    1500:	75 e5                	jne    0x14e7
    1502:	90                   	nop
    1503:	c9                   	leave  
    1504:	c3                   	ret    
    1505:	55                   	push   %ebp
    1506:	89 e5                	mov    %esp,%ebp
    1508:	83 ec 10             	sub    $0x10,%esp
    150b:	8b 45 08             	mov    0x8(%ebp),%eax
    150e:	89 45 fc             	mov    %eax,-0x4(%ebp)
    1511:	8b 45 0c             	mov    0xc(%ebp),%eax
    1514:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1517:	eb 17                	jmp    0x1530
    1519:	8b 55 f8             	mov    -0x8(%ebp),%edx
    151c:	8d 42 01             	lea    0x1(%edx),%eax
    151f:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1522:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1525:	8d 48 01             	lea    0x1(%eax),%ecx
    1528:	89 4d fc             	mov    %ecx,-0x4(%ebp)
    152b:	0f b6 12             	movzbl (%edx),%edx
    152e:	88 10                	mov    %dl,(%eax)
    1530:	8b 45 10             	mov    0x10(%ebp),%eax
    1533:	8d 50 ff             	lea    -0x1(%eax),%edx
    1536:	89 55 10             	mov    %edx,0x10(%ebp)
    1539:	85 c0                	test   %eax,%eax
    153b:	75 dc                	jne    0x1519
    153d:	90                   	nop
    153e:	c9                   	leave  
    153f:	c3                   	ret    
    1540:	55                   	push   %ebp
    1541:	89 e5                	mov    %esp,%ebp
    1543:	0f 01 1d 54 c1 00 00 	lidtl  0xc154
    154a:	90                   	nop
    154b:	5d                   	pop    %ebp
    154c:	c3                   	ret    
    154d:	55                   	push   %ebp
    154e:	89 e5                	mov    %esp,%ebp
    1550:	53                   	push   %ebx
    1551:	83 ec 0c             	sub    $0xc,%esp
    1554:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1557:	8b 55 10             	mov    0x10(%ebp),%edx
    155a:	8b 45 14             	mov    0x14(%ebp),%eax
    155d:	88 4d f8             	mov    %cl,-0x8(%ebp)
    1560:	66 89 55 f4          	mov    %dx,-0xc(%ebp)
    1564:	88 45 f0             	mov    %al,-0x10(%ebp)
    1567:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    156b:	8b 55 0c             	mov    0xc(%ebp),%edx
    156e:	89 d3                	mov    %edx,%ebx
    1570:	8b 55 0c             	mov    0xc(%ebp),%edx
    1573:	c1 ea 10             	shr    $0x10,%edx
    1576:	89 d1                	mov    %edx,%ecx
    1578:	66 89 1c c5 60 c1 00 	mov    %bx,0xc160(,%eax,8)
    157f:	00 
    1580:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
    1584:	66 89 14 c5 62 c1 00 	mov    %dx,0xc162(,%eax,8)
    158b:	00 
    158c:	c6 04 c5 64 c1 00 00 	movb   $0x0,0xc164(,%eax,8)
    1593:	00 
    1594:	0f b6 55 f0          	movzbl -0x10(%ebp),%edx
    1598:	88 14 c5 65 c1 00 00 	mov    %dl,0xc165(,%eax,8)
    159f:	66 89 0c c5 66 c1 00 	mov    %cx,0xc166(,%eax,8)
    15a6:	00 
    15a7:	90                   	nop
    15a8:	83 c4 0c             	add    $0xc,%esp
    15ab:	5b                   	pop    %ebx
    15ac:	5d                   	pop    %ebp
    15ad:	c3                   	ret    
    15ae:	55                   	push   %ebp
    15af:	89 e5                	mov    %esp,%ebp
    15b1:	83 ec 10             	sub    $0x10,%esp
    15b4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    15bb:	eb 1e                	jmp    0x15db
    15bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    15c0:	0f b6 04 c5 65 c1 00 	movzbl 0xc165(,%eax,8),%eax
    15c7:	00 
    15c8:	83 c8 80             	or     $0xffffff80,%eax
    15cb:	89 c2                	mov    %eax,%edx
    15cd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    15d0:	88 14 c5 65 c1 00 00 	mov    %dl,0xc165(,%eax,8)
    15d7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    15db:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
    15e2:	76 d9                	jbe    0x15bd
    15e4:	90                   	nop
    15e5:	c9                   	leave  
    15e6:	c3                   	ret    
    15e7:	55                   	push   %ebp
    15e8:	89 e5                	mov    %esp,%ebp
    15ea:	83 ec 04             	sub    $0x4,%esp
    15ed:	8b 45 08             	mov    0x8(%ebp),%eax
    15f0:	88 45 fc             	mov    %al,-0x4(%ebp)
    15f3:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    15f7:	0f b6 14 c5 65 c1 00 	movzbl 0xc165(,%eax,8),%edx
    15fe:	00 
    15ff:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    1603:	83 e2 7f             	and    $0x7f,%edx
    1606:	88 14 c5 65 c1 00 00 	mov    %dl,0xc165(,%eax,8)
    160d:	90                   	nop
    160e:	c9                   	leave  
    160f:	c3                   	ret    
    1610:	55                   	push   %ebp
    1611:	89 e5                	mov    %esp,%ebp
    1613:	83 ec 04             	sub    $0x4,%esp
    1616:	8b 45 08             	mov    0x8(%ebp),%eax
    1619:	88 45 fc             	mov    %al,-0x4(%ebp)
    161c:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    1620:	0f b6 14 c5 65 c1 00 	movzbl 0xc165(,%eax,8),%edx
    1627:	00 
    1628:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    162c:	83 ca 80             	or     $0xffffff80,%edx
    162f:	88 14 c5 65 c1 00 00 	mov    %dl,0xc165(,%eax,8)
    1636:	90                   	nop
    1637:	c9                   	leave  
    1638:	c3                   	ret    
    1639:	55                   	push   %ebp
    163a:	89 e5                	mov    %esp,%ebp
    163c:	c7 05 56 c1 00 00 00 	movl   $0x0,0xc156
    1643:	00 00 00 
    1646:	66 c7 05 54 c1 00 00 	movw   $0x3ff,0xc154
    164d:	ff 03 
    164f:	90                   	nop
    1650:	5d                   	pop    %ebp
    1651:	c3                   	ret    
    1652:	55                   	push   %ebp
    1653:	89 e5                	mov    %esp,%ebp
    1655:	83 ec 08             	sub    $0x8,%esp
    1658:	6a 0e                	push   $0xe
    165a:	6a 08                	push   $0x8
    165c:	68 66 7e 00 00       	push   $0x7e66
    1661:	6a 00                	push   $0x0
    1663:	e8 e5 fe ff ff       	call   0x154d
    1668:	83 c4 10             	add    $0x10,%esp
    166b:	6a 0e                	push   $0xe
    166d:	6a 08                	push   $0x8
    166f:	68 6d 7e 00 00       	push   $0x7e6d
    1674:	6a 01                	push   $0x1
    1676:	e8 d2 fe ff ff       	call   0x154d
    167b:	83 c4 10             	add    $0x10,%esp
    167e:	6a 0e                	push   $0xe
    1680:	6a 08                	push   $0x8
    1682:	68 74 7e 00 00       	push   $0x7e74
    1687:	6a 02                	push   $0x2
    1689:	e8 bf fe ff ff       	call   0x154d
    168e:	83 c4 10             	add    $0x10,%esp
    1691:	6a 0e                	push   $0xe
    1693:	6a 08                	push   $0x8
    1695:	68 7b 7e 00 00       	push   $0x7e7b
    169a:	6a 03                	push   $0x3
    169c:	e8 ac fe ff ff       	call   0x154d
    16a1:	83 c4 10             	add    $0x10,%esp
    16a4:	6a 0e                	push   $0xe
    16a6:	6a 08                	push   $0x8
    16a8:	68 82 7e 00 00       	push   $0x7e82
    16ad:	6a 04                	push   $0x4
    16af:	e8 99 fe ff ff       	call   0x154d
    16b4:	83 c4 10             	add    $0x10,%esp
    16b7:	6a 0e                	push   $0xe
    16b9:	6a 08                	push   $0x8
    16bb:	68 89 7e 00 00       	push   $0x7e89
    16c0:	6a 05                	push   $0x5
    16c2:	e8 86 fe ff ff       	call   0x154d
    16c7:	83 c4 10             	add    $0x10,%esp
    16ca:	6a 0e                	push   $0xe
    16cc:	6a 08                	push   $0x8
    16ce:	68 90 7e 00 00       	push   $0x7e90
    16d3:	6a 06                	push   $0x6
    16d5:	e8 73 fe ff ff       	call   0x154d
    16da:	83 c4 10             	add    $0x10,%esp
    16dd:	6a 0e                	push   $0xe
    16df:	6a 08                	push   $0x8
    16e1:	68 9a 7e 00 00       	push   $0x7e9a
    16e6:	6a 07                	push   $0x7
    16e8:	e8 60 fe ff ff       	call   0x154d
    16ed:	83 c4 10             	add    $0x10,%esp
    16f0:	6a 0e                	push   $0xe
    16f2:	6a 08                	push   $0x8
    16f4:	68 a4 7e 00 00       	push   $0x7ea4
    16f9:	6a 08                	push   $0x8
    16fb:	e8 4d fe ff ff       	call   0x154d
    1700:	83 c4 10             	add    $0x10,%esp
    1703:	6a 0e                	push   $0xe
    1705:	6a 08                	push   $0x8
    1707:	68 ac 7e 00 00       	push   $0x7eac
    170c:	6a 09                	push   $0x9
    170e:	e8 3a fe ff ff       	call   0x154d
    1713:	83 c4 10             	add    $0x10,%esp
    1716:	6a 0e                	push   $0xe
    1718:	6a 08                	push   $0x8
    171a:	68 b6 7e 00 00       	push   $0x7eb6
    171f:	6a 0a                	push   $0xa
    1721:	e8 27 fe ff ff       	call   0x154d
    1726:	83 c4 10             	add    $0x10,%esp
    1729:	6a 0e                	push   $0xe
    172b:	6a 08                	push   $0x8
    172d:	68 be 7e 00 00       	push   $0x7ebe
    1732:	6a 0b                	push   $0xb
    1734:	e8 14 fe ff ff       	call   0x154d
    1739:	83 c4 10             	add    $0x10,%esp
    173c:	6a 0e                	push   $0xe
    173e:	6a 08                	push   $0x8
    1740:	68 c6 7e 00 00       	push   $0x7ec6
    1745:	6a 0c                	push   $0xc
    1747:	e8 01 fe ff ff       	call   0x154d
    174c:	83 c4 10             	add    $0x10,%esp
    174f:	6a 0e                	push   $0xe
    1751:	6a 08                	push   $0x8
    1753:	68 ce 7e 00 00       	push   $0x7ece
    1758:	6a 0d                	push   $0xd
    175a:	e8 ee fd ff ff       	call   0x154d
    175f:	83 c4 10             	add    $0x10,%esp
    1762:	6a 0e                	push   $0xe
    1764:	6a 08                	push   $0x8
    1766:	68 d6 7e 00 00       	push   $0x7ed6
    176b:	6a 0e                	push   $0xe
    176d:	e8 db fd ff ff       	call   0x154d
    1772:	83 c4 10             	add    $0x10,%esp
    1775:	6a 0e                	push   $0xe
    1777:	6a 08                	push   $0x8
    1779:	68 de 7e 00 00       	push   $0x7ede
    177e:	6a 0f                	push   $0xf
    1780:	e8 c8 fd ff ff       	call   0x154d
    1785:	83 c4 10             	add    $0x10,%esp
    1788:	6a 0e                	push   $0xe
    178a:	6a 08                	push   $0x8
    178c:	68 e8 7e 00 00       	push   $0x7ee8
    1791:	6a 10                	push   $0x10
    1793:	e8 b5 fd ff ff       	call   0x154d
    1798:	83 c4 10             	add    $0x10,%esp
    179b:	6a 0e                	push   $0xe
    179d:	6a 08                	push   $0x8
    179f:	68 f2 7e 00 00       	push   $0x7ef2
    17a4:	6a 11                	push   $0x11
    17a6:	e8 a2 fd ff ff       	call   0x154d
    17ab:	83 c4 10             	add    $0x10,%esp
    17ae:	6a 0e                	push   $0xe
    17b0:	6a 08                	push   $0x8
    17b2:	68 fa 7e 00 00       	push   $0x7efa
    17b7:	6a 12                	push   $0x12
    17b9:	e8 8f fd ff ff       	call   0x154d
    17be:	83 c4 10             	add    $0x10,%esp
    17c1:	6a 0e                	push   $0xe
    17c3:	6a 08                	push   $0x8
    17c5:	68 04 7f 00 00       	push   $0x7f04
    17ca:	6a 13                	push   $0x13
    17cc:	e8 7c fd ff ff       	call   0x154d
    17d1:	83 c4 10             	add    $0x10,%esp
    17d4:	6a 0e                	push   $0xe
    17d6:	6a 08                	push   $0x8
    17d8:	68 0e 7f 00 00       	push   $0x7f0e
    17dd:	6a 14                	push   $0x14
    17df:	e8 69 fd ff ff       	call   0x154d
    17e4:	83 c4 10             	add    $0x10,%esp
    17e7:	6a 0e                	push   $0xe
    17e9:	6a 08                	push   $0x8
    17eb:	68 18 7f 00 00       	push   $0x7f18
    17f0:	6a 15                	push   $0x15
    17f2:	e8 56 fd ff ff       	call   0x154d
    17f7:	83 c4 10             	add    $0x10,%esp
    17fa:	6a 0e                	push   $0xe
    17fc:	6a 08                	push   $0x8
    17fe:	68 20 7f 00 00       	push   $0x7f20
    1803:	6a 16                	push   $0x16
    1805:	e8 43 fd ff ff       	call   0x154d
    180a:	83 c4 10             	add    $0x10,%esp
    180d:	6a 0e                	push   $0xe
    180f:	6a 08                	push   $0x8
    1811:	68 2a 7f 00 00       	push   $0x7f2a
    1816:	6a 17                	push   $0x17
    1818:	e8 30 fd ff ff       	call   0x154d
    181d:	83 c4 10             	add    $0x10,%esp
    1820:	6a 0e                	push   $0xe
    1822:	6a 08                	push   $0x8
    1824:	68 34 7f 00 00       	push   $0x7f34
    1829:	6a 18                	push   $0x18
    182b:	e8 1d fd ff ff       	call   0x154d
    1830:	83 c4 10             	add    $0x10,%esp
    1833:	6a 0e                	push   $0xe
    1835:	6a 08                	push   $0x8
    1837:	68 3e 7f 00 00       	push   $0x7f3e
    183c:	6a 19                	push   $0x19
    183e:	e8 0a fd ff ff       	call   0x154d
    1843:	83 c4 10             	add    $0x10,%esp
    1846:	6a 0e                	push   $0xe
    1848:	6a 08                	push   $0x8
    184a:	68 48 7f 00 00       	push   $0x7f48
    184f:	6a 1a                	push   $0x1a
    1851:	e8 f7 fc ff ff       	call   0x154d
    1856:	83 c4 10             	add    $0x10,%esp
    1859:	6a 0e                	push   $0xe
    185b:	6a 08                	push   $0x8
    185d:	68 52 7f 00 00       	push   $0x7f52
    1862:	6a 1b                	push   $0x1b
    1864:	e8 e4 fc ff ff       	call   0x154d
    1869:	83 c4 10             	add    $0x10,%esp
    186c:	6a 0e                	push   $0xe
    186e:	6a 08                	push   $0x8
    1870:	68 5c 7f 00 00       	push   $0x7f5c
    1875:	6a 1c                	push   $0x1c
    1877:	e8 d1 fc ff ff       	call   0x154d
    187c:	83 c4 10             	add    $0x10,%esp
    187f:	6a 0e                	push   $0xe
    1881:	6a 08                	push   $0x8
    1883:	68 66 7f 00 00       	push   $0x7f66
    1888:	6a 1d                	push   $0x1d
    188a:	e8 be fc ff ff       	call   0x154d
    188f:	83 c4 10             	add    $0x10,%esp
    1892:	6a 0e                	push   $0xe
    1894:	6a 08                	push   $0x8
    1896:	68 70 7f 00 00       	push   $0x7f70
    189b:	6a 1e                	push   $0x1e
    189d:	e8 ab fc ff ff       	call   0x154d
    18a2:	83 c4 10             	add    $0x10,%esp
    18a5:	6a 0e                	push   $0xe
    18a7:	6a 08                	push   $0x8
    18a9:	68 7a 7f 00 00       	push   $0x7f7a
    18ae:	6a 1f                	push   $0x1f
    18b0:	e8 98 fc ff ff       	call   0x154d
    18b5:	83 c4 10             	add    $0x10,%esp
    18b8:	6a 0e                	push   $0xe
    18ba:	6a 08                	push   $0x8
    18bc:	68 c4 89 00 00       	push   $0x89c4
    18c1:	6a 20                	push   $0x20
    18c3:	e8 85 fc ff ff       	call   0x154d
    18c8:	83 c4 10             	add    $0x10,%esp
    18cb:	6a 0e                	push   $0xe
    18cd:	6a 08                	push   $0x8
    18cf:	68 ce 89 00 00       	push   $0x89ce
    18d4:	6a 21                	push   $0x21
    18d6:	e8 72 fc ff ff       	call   0x154d
    18db:	83 c4 10             	add    $0x10,%esp
    18de:	6a 0e                	push   $0xe
    18e0:	6a 08                	push   $0x8
    18e2:	68 d8 89 00 00       	push   $0x89d8
    18e7:	6a 22                	push   $0x22
    18e9:	e8 5f fc ff ff       	call   0x154d
    18ee:	83 c4 10             	add    $0x10,%esp
    18f1:	6a 0e                	push   $0xe
    18f3:	6a 08                	push   $0x8
    18f5:	68 e2 89 00 00       	push   $0x89e2
    18fa:	6a 23                	push   $0x23
    18fc:	e8 4c fc ff ff       	call   0x154d
    1901:	83 c4 10             	add    $0x10,%esp
    1904:	6a 0e                	push   $0xe
    1906:	6a 08                	push   $0x8
    1908:	68 ec 89 00 00       	push   $0x89ec
    190d:	6a 24                	push   $0x24
    190f:	e8 39 fc ff ff       	call   0x154d
    1914:	83 c4 10             	add    $0x10,%esp
    1917:	6a 0e                	push   $0xe
    1919:	6a 08                	push   $0x8
    191b:	68 f6 89 00 00       	push   $0x89f6
    1920:	6a 25                	push   $0x25
    1922:	e8 26 fc ff ff       	call   0x154d
    1927:	83 c4 10             	add    $0x10,%esp
    192a:	6a 0e                	push   $0xe
    192c:	6a 08                	push   $0x8
    192e:	68 00 8a 00 00       	push   $0x8a00
    1933:	6a 26                	push   $0x26
    1935:	e8 13 fc ff ff       	call   0x154d
    193a:	83 c4 10             	add    $0x10,%esp
    193d:	6a 0e                	push   $0xe
    193f:	6a 08                	push   $0x8
    1941:	68 0a 8a 00 00       	push   $0x8a0a
    1946:	6a 27                	push   $0x27
    1948:	e8 00 fc ff ff       	call   0x154d
    194d:	83 c4 10             	add    $0x10,%esp
    1950:	6a 0e                	push   $0xe
    1952:	6a 08                	push   $0x8
    1954:	68 14 8a 00 00       	push   $0x8a14
    1959:	6a 28                	push   $0x28
    195b:	e8 ed fb ff ff       	call   0x154d
    1960:	83 c4 10             	add    $0x10,%esp
    1963:	6a 0e                	push   $0xe
    1965:	6a 08                	push   $0x8
    1967:	68 1e 8a 00 00       	push   $0x8a1e
    196c:	6a 29                	push   $0x29
    196e:	e8 da fb ff ff       	call   0x154d
    1973:	83 c4 10             	add    $0x10,%esp
    1976:	6a 0e                	push   $0xe
    1978:	6a 08                	push   $0x8
    197a:	68 28 8a 00 00       	push   $0x8a28
    197f:	6a 2a                	push   $0x2a
    1981:	e8 c7 fb ff ff       	call   0x154d
    1986:	83 c4 10             	add    $0x10,%esp
    1989:	6a 0e                	push   $0xe
    198b:	6a 08                	push   $0x8
    198d:	68 32 8a 00 00       	push   $0x8a32
    1992:	6a 2b                	push   $0x2b
    1994:	e8 b4 fb ff ff       	call   0x154d
    1999:	83 c4 10             	add    $0x10,%esp
    199c:	6a 0e                	push   $0xe
    199e:	6a 08                	push   $0x8
    19a0:	68 3c 8a 00 00       	push   $0x8a3c
    19a5:	6a 2c                	push   $0x2c
    19a7:	e8 a1 fb ff ff       	call   0x154d
    19ac:	83 c4 10             	add    $0x10,%esp
    19af:	6a 0e                	push   $0xe
    19b1:	6a 08                	push   $0x8
    19b3:	68 46 8a 00 00       	push   $0x8a46
    19b8:	6a 2d                	push   $0x2d
    19ba:	e8 8e fb ff ff       	call   0x154d
    19bf:	83 c4 10             	add    $0x10,%esp
    19c2:	6a 0e                	push   $0xe
    19c4:	6a 08                	push   $0x8
    19c6:	68 50 8a 00 00       	push   $0x8a50
    19cb:	6a 2e                	push   $0x2e
    19cd:	e8 7b fb ff ff       	call   0x154d
    19d2:	83 c4 10             	add    $0x10,%esp
    19d5:	6a 0e                	push   $0xe
    19d7:	6a 08                	push   $0x8
    19d9:	68 5a 8a 00 00       	push   $0x8a5a
    19de:	6a 2f                	push   $0x2f
    19e0:	e8 68 fb ff ff       	call   0x154d
    19e5:	83 c4 10             	add    $0x10,%esp
    19e8:	6a 0e                	push   $0xe
    19ea:	6a 08                	push   $0x8
    19ec:	68 24 80 00 00       	push   $0x8024
    19f1:	6a 30                	push   $0x30
    19f3:	e8 55 fb ff ff       	call   0x154d
    19f8:	83 c4 10             	add    $0x10,%esp
    19fb:	6a 0e                	push   $0xe
    19fd:	6a 08                	push   $0x8
    19ff:	68 2e 80 00 00       	push   $0x802e
    1a04:	6a 31                	push   $0x31
    1a06:	e8 42 fb ff ff       	call   0x154d
    1a0b:	83 c4 10             	add    $0x10,%esp
    1a0e:	6a 0e                	push   $0xe
    1a10:	6a 08                	push   $0x8
    1a12:	68 38 80 00 00       	push   $0x8038
    1a17:	6a 32                	push   $0x32
    1a19:	e8 2f fb ff ff       	call   0x154d
    1a1e:	83 c4 10             	add    $0x10,%esp
    1a21:	6a 0e                	push   $0xe
    1a23:	6a 08                	push   $0x8
    1a25:	68 42 80 00 00       	push   $0x8042
    1a2a:	6a 33                	push   $0x33
    1a2c:	e8 1c fb ff ff       	call   0x154d
    1a31:	83 c4 10             	add    $0x10,%esp
    1a34:	6a 0e                	push   $0xe
    1a36:	6a 08                	push   $0x8
    1a38:	68 4c 80 00 00       	push   $0x804c
    1a3d:	6a 34                	push   $0x34
    1a3f:	e8 09 fb ff ff       	call   0x154d
    1a44:	83 c4 10             	add    $0x10,%esp
    1a47:	6a 0e                	push   $0xe
    1a49:	6a 08                	push   $0x8
    1a4b:	68 56 80 00 00       	push   $0x8056
    1a50:	6a 35                	push   $0x35
    1a52:	e8 f6 fa ff ff       	call   0x154d
    1a57:	83 c4 10             	add    $0x10,%esp
    1a5a:	6a 0e                	push   $0xe
    1a5c:	6a 08                	push   $0x8
    1a5e:	68 60 80 00 00       	push   $0x8060
    1a63:	6a 36                	push   $0x36
    1a65:	e8 e3 fa ff ff       	call   0x154d
    1a6a:	83 c4 10             	add    $0x10,%esp
    1a6d:	6a 0e                	push   $0xe
    1a6f:	6a 08                	push   $0x8
    1a71:	68 6a 80 00 00       	push   $0x806a
    1a76:	6a 37                	push   $0x37
    1a78:	e8 d0 fa ff ff       	call   0x154d
    1a7d:	83 c4 10             	add    $0x10,%esp
    1a80:	6a 0e                	push   $0xe
    1a82:	6a 08                	push   $0x8
    1a84:	68 74 80 00 00       	push   $0x8074
    1a89:	6a 38                	push   $0x38
    1a8b:	e8 bd fa ff ff       	call   0x154d
    1a90:	83 c4 10             	add    $0x10,%esp
    1a93:	6a 0e                	push   $0xe
    1a95:	6a 08                	push   $0x8
    1a97:	68 7e 80 00 00       	push   $0x807e
    1a9c:	6a 39                	push   $0x39
    1a9e:	e8 aa fa ff ff       	call   0x154d
    1aa3:	83 c4 10             	add    $0x10,%esp
    1aa6:	6a 0e                	push   $0xe
    1aa8:	6a 08                	push   $0x8
    1aaa:	68 88 80 00 00       	push   $0x8088
    1aaf:	6a 3a                	push   $0x3a
    1ab1:	e8 97 fa ff ff       	call   0x154d
    1ab6:	83 c4 10             	add    $0x10,%esp
    1ab9:	6a 0e                	push   $0xe
    1abb:	6a 08                	push   $0x8
    1abd:	68 92 80 00 00       	push   $0x8092
    1ac2:	6a 3b                	push   $0x3b
    1ac4:	e8 84 fa ff ff       	call   0x154d
    1ac9:	83 c4 10             	add    $0x10,%esp
    1acc:	6a 0e                	push   $0xe
    1ace:	6a 08                	push   $0x8
    1ad0:	68 9c 80 00 00       	push   $0x809c
    1ad5:	6a 3c                	push   $0x3c
    1ad7:	e8 71 fa ff ff       	call   0x154d
    1adc:	83 c4 10             	add    $0x10,%esp
    1adf:	6a 0e                	push   $0xe
    1ae1:	6a 08                	push   $0x8
    1ae3:	68 a6 80 00 00       	push   $0x80a6
    1ae8:	6a 3d                	push   $0x3d
    1aea:	e8 5e fa ff ff       	call   0x154d
    1aef:	83 c4 10             	add    $0x10,%esp
    1af2:	6a 0e                	push   $0xe
    1af4:	6a 08                	push   $0x8
    1af6:	68 b0 80 00 00       	push   $0x80b0
    1afb:	6a 3e                	push   $0x3e
    1afd:	e8 4b fa ff ff       	call   0x154d
    1b02:	83 c4 10             	add    $0x10,%esp
    1b05:	6a 0e                	push   $0xe
    1b07:	6a 08                	push   $0x8
    1b09:	68 ba 80 00 00       	push   $0x80ba
    1b0e:	6a 3f                	push   $0x3f
    1b10:	e8 38 fa ff ff       	call   0x154d
    1b15:	83 c4 10             	add    $0x10,%esp
    1b18:	6a 0e                	push   $0xe
    1b1a:	6a 08                	push   $0x8
    1b1c:	68 c4 80 00 00       	push   $0x80c4
    1b21:	6a 40                	push   $0x40
    1b23:	e8 25 fa ff ff       	call   0x154d
    1b28:	83 c4 10             	add    $0x10,%esp
    1b2b:	6a 0e                	push   $0xe
    1b2d:	6a 08                	push   $0x8
    1b2f:	68 ce 80 00 00       	push   $0x80ce
    1b34:	6a 41                	push   $0x41
    1b36:	e8 12 fa ff ff       	call   0x154d
    1b3b:	83 c4 10             	add    $0x10,%esp
    1b3e:	6a 0e                	push   $0xe
    1b40:	6a 08                	push   $0x8
    1b42:	68 d8 80 00 00       	push   $0x80d8
    1b47:	6a 42                	push   $0x42
    1b49:	e8 ff f9 ff ff       	call   0x154d
    1b4e:	83 c4 10             	add    $0x10,%esp
    1b51:	6a 0e                	push   $0xe
    1b53:	6a 08                	push   $0x8
    1b55:	68 e2 80 00 00       	push   $0x80e2
    1b5a:	6a 43                	push   $0x43
    1b5c:	e8 ec f9 ff ff       	call   0x154d
    1b61:	83 c4 10             	add    $0x10,%esp
    1b64:	6a 0e                	push   $0xe
    1b66:	6a 08                	push   $0x8
    1b68:	68 ec 80 00 00       	push   $0x80ec
    1b6d:	6a 44                	push   $0x44
    1b6f:	e8 d9 f9 ff ff       	call   0x154d
    1b74:	83 c4 10             	add    $0x10,%esp
    1b77:	6a 0e                	push   $0xe
    1b79:	6a 08                	push   $0x8
    1b7b:	68 f6 80 00 00       	push   $0x80f6
    1b80:	6a 45                	push   $0x45
    1b82:	e8 c6 f9 ff ff       	call   0x154d
    1b87:	83 c4 10             	add    $0x10,%esp
    1b8a:	6a 0e                	push   $0xe
    1b8c:	6a 08                	push   $0x8
    1b8e:	68 00 81 00 00       	push   $0x8100
    1b93:	6a 46                	push   $0x46
    1b95:	e8 b3 f9 ff ff       	call   0x154d
    1b9a:	83 c4 10             	add    $0x10,%esp
    1b9d:	6a 0e                	push   $0xe
    1b9f:	6a 08                	push   $0x8
    1ba1:	68 0a 81 00 00       	push   $0x810a
    1ba6:	6a 47                	push   $0x47
    1ba8:	e8 a0 f9 ff ff       	call   0x154d
    1bad:	83 c4 10             	add    $0x10,%esp
    1bb0:	6a 0e                	push   $0xe
    1bb2:	6a 08                	push   $0x8
    1bb4:	68 14 81 00 00       	push   $0x8114
    1bb9:	6a 48                	push   $0x48
    1bbb:	e8 8d f9 ff ff       	call   0x154d
    1bc0:	83 c4 10             	add    $0x10,%esp
    1bc3:	6a 0e                	push   $0xe
    1bc5:	6a 08                	push   $0x8
    1bc7:	68 1e 81 00 00       	push   $0x811e
    1bcc:	6a 49                	push   $0x49
    1bce:	e8 7a f9 ff ff       	call   0x154d
    1bd3:	83 c4 10             	add    $0x10,%esp
    1bd6:	6a 0e                	push   $0xe
    1bd8:	6a 08                	push   $0x8
    1bda:	68 28 81 00 00       	push   $0x8128
    1bdf:	6a 4a                	push   $0x4a
    1be1:	e8 67 f9 ff ff       	call   0x154d
    1be6:	83 c4 10             	add    $0x10,%esp
    1be9:	6a 0e                	push   $0xe
    1beb:	6a 08                	push   $0x8
    1bed:	68 32 81 00 00       	push   $0x8132
    1bf2:	6a 4b                	push   $0x4b
    1bf4:	e8 54 f9 ff ff       	call   0x154d
    1bf9:	83 c4 10             	add    $0x10,%esp
    1bfc:	6a 0e                	push   $0xe
    1bfe:	6a 08                	push   $0x8
    1c00:	68 3c 81 00 00       	push   $0x813c
    1c05:	6a 4c                	push   $0x4c
    1c07:	e8 41 f9 ff ff       	call   0x154d
    1c0c:	83 c4 10             	add    $0x10,%esp
    1c0f:	6a 0e                	push   $0xe
    1c11:	6a 08                	push   $0x8
    1c13:	68 46 81 00 00       	push   $0x8146
    1c18:	6a 4d                	push   $0x4d
    1c1a:	e8 2e f9 ff ff       	call   0x154d
    1c1f:	83 c4 10             	add    $0x10,%esp
    1c22:	6a 0e                	push   $0xe
    1c24:	6a 08                	push   $0x8
    1c26:	68 50 81 00 00       	push   $0x8150
    1c2b:	6a 4e                	push   $0x4e
    1c2d:	e8 1b f9 ff ff       	call   0x154d
    1c32:	83 c4 10             	add    $0x10,%esp
    1c35:	6a 0e                	push   $0xe
    1c37:	6a 08                	push   $0x8
    1c39:	68 5a 81 00 00       	push   $0x815a
    1c3e:	6a 4f                	push   $0x4f
    1c40:	e8 08 f9 ff ff       	call   0x154d
    1c45:	83 c4 10             	add    $0x10,%esp
    1c48:	6a 0e                	push   $0xe
    1c4a:	6a 08                	push   $0x8
    1c4c:	68 64 81 00 00       	push   $0x8164
    1c51:	6a 50                	push   $0x50
    1c53:	e8 f5 f8 ff ff       	call   0x154d
    1c58:	83 c4 10             	add    $0x10,%esp
    1c5b:	6a 0e                	push   $0xe
    1c5d:	6a 08                	push   $0x8
    1c5f:	68 6e 81 00 00       	push   $0x816e
    1c64:	6a 51                	push   $0x51
    1c66:	e8 e2 f8 ff ff       	call   0x154d
    1c6b:	83 c4 10             	add    $0x10,%esp
    1c6e:	6a 0e                	push   $0xe
    1c70:	6a 08                	push   $0x8
    1c72:	68 78 81 00 00       	push   $0x8178
    1c77:	6a 52                	push   $0x52
    1c79:	e8 cf f8 ff ff       	call   0x154d
    1c7e:	83 c4 10             	add    $0x10,%esp
    1c81:	6a 0e                	push   $0xe
    1c83:	6a 08                	push   $0x8
    1c85:	68 82 81 00 00       	push   $0x8182
    1c8a:	6a 53                	push   $0x53
    1c8c:	e8 bc f8 ff ff       	call   0x154d
    1c91:	83 c4 10             	add    $0x10,%esp
    1c94:	6a 0e                	push   $0xe
    1c96:	6a 08                	push   $0x8
    1c98:	68 8c 81 00 00       	push   $0x818c
    1c9d:	6a 54                	push   $0x54
    1c9f:	e8 a9 f8 ff ff       	call   0x154d
    1ca4:	83 c4 10             	add    $0x10,%esp
    1ca7:	6a 0e                	push   $0xe
    1ca9:	6a 08                	push   $0x8
    1cab:	68 96 81 00 00       	push   $0x8196
    1cb0:	6a 55                	push   $0x55
    1cb2:	e8 96 f8 ff ff       	call   0x154d
    1cb7:	83 c4 10             	add    $0x10,%esp
    1cba:	6a 0e                	push   $0xe
    1cbc:	6a 08                	push   $0x8
    1cbe:	68 a0 81 00 00       	push   $0x81a0
    1cc3:	6a 56                	push   $0x56
    1cc5:	e8 83 f8 ff ff       	call   0x154d
    1cca:	83 c4 10             	add    $0x10,%esp
    1ccd:	6a 0e                	push   $0xe
    1ccf:	6a 08                	push   $0x8
    1cd1:	68 aa 81 00 00       	push   $0x81aa
    1cd6:	6a 57                	push   $0x57
    1cd8:	e8 70 f8 ff ff       	call   0x154d
    1cdd:	83 c4 10             	add    $0x10,%esp
    1ce0:	6a 0e                	push   $0xe
    1ce2:	6a 08                	push   $0x8
    1ce4:	68 b4 81 00 00       	push   $0x81b4
    1ce9:	6a 58                	push   $0x58
    1ceb:	e8 5d f8 ff ff       	call   0x154d
    1cf0:	83 c4 10             	add    $0x10,%esp
    1cf3:	6a 0e                	push   $0xe
    1cf5:	6a 08                	push   $0x8
    1cf7:	68 be 81 00 00       	push   $0x81be
    1cfc:	6a 59                	push   $0x59
    1cfe:	e8 4a f8 ff ff       	call   0x154d
    1d03:	83 c4 10             	add    $0x10,%esp
    1d06:	6a 0e                	push   $0xe
    1d08:	6a 08                	push   $0x8
    1d0a:	68 c8 81 00 00       	push   $0x81c8
    1d0f:	6a 5a                	push   $0x5a
    1d11:	e8 37 f8 ff ff       	call   0x154d
    1d16:	83 c4 10             	add    $0x10,%esp
    1d19:	6a 0e                	push   $0xe
    1d1b:	6a 08                	push   $0x8
    1d1d:	68 d2 81 00 00       	push   $0x81d2
    1d22:	6a 5b                	push   $0x5b
    1d24:	e8 24 f8 ff ff       	call   0x154d
    1d29:	83 c4 10             	add    $0x10,%esp
    1d2c:	6a 0e                	push   $0xe
    1d2e:	6a 08                	push   $0x8
    1d30:	68 dc 81 00 00       	push   $0x81dc
    1d35:	6a 5c                	push   $0x5c
    1d37:	e8 11 f8 ff ff       	call   0x154d
    1d3c:	83 c4 10             	add    $0x10,%esp
    1d3f:	6a 0e                	push   $0xe
    1d41:	6a 08                	push   $0x8
    1d43:	68 e6 81 00 00       	push   $0x81e6
    1d48:	6a 5d                	push   $0x5d
    1d4a:	e8 fe f7 ff ff       	call   0x154d
    1d4f:	83 c4 10             	add    $0x10,%esp
    1d52:	6a 0e                	push   $0xe
    1d54:	6a 08                	push   $0x8
    1d56:	68 f0 81 00 00       	push   $0x81f0
    1d5b:	6a 5e                	push   $0x5e
    1d5d:	e8 eb f7 ff ff       	call   0x154d
    1d62:	83 c4 10             	add    $0x10,%esp
    1d65:	6a 0e                	push   $0xe
    1d67:	6a 08                	push   $0x8
    1d69:	68 fa 81 00 00       	push   $0x81fa
    1d6e:	6a 5f                	push   $0x5f
    1d70:	e8 d8 f7 ff ff       	call   0x154d
    1d75:	83 c4 10             	add    $0x10,%esp
    1d78:	6a 0e                	push   $0xe
    1d7a:	6a 08                	push   $0x8
    1d7c:	68 04 82 00 00       	push   $0x8204
    1d81:	6a 60                	push   $0x60
    1d83:	e8 c5 f7 ff ff       	call   0x154d
    1d88:	83 c4 10             	add    $0x10,%esp
    1d8b:	6a 0e                	push   $0xe
    1d8d:	6a 08                	push   $0x8
    1d8f:	68 0e 82 00 00       	push   $0x820e
    1d94:	6a 61                	push   $0x61
    1d96:	e8 b2 f7 ff ff       	call   0x154d
    1d9b:	83 c4 10             	add    $0x10,%esp
    1d9e:	6a 0e                	push   $0xe
    1da0:	6a 08                	push   $0x8
    1da2:	68 18 82 00 00       	push   $0x8218
    1da7:	6a 62                	push   $0x62
    1da9:	e8 9f f7 ff ff       	call   0x154d
    1dae:	83 c4 10             	add    $0x10,%esp
    1db1:	6a 0e                	push   $0xe
    1db3:	6a 08                	push   $0x8
    1db5:	68 22 82 00 00       	push   $0x8222
    1dba:	6a 63                	push   $0x63
    1dbc:	e8 8c f7 ff ff       	call   0x154d
    1dc1:	83 c4 10             	add    $0x10,%esp
    1dc4:	6a 0e                	push   $0xe
    1dc6:	6a 08                	push   $0x8
    1dc8:	68 2c 82 00 00       	push   $0x822c
    1dcd:	6a 64                	push   $0x64
    1dcf:	e8 79 f7 ff ff       	call   0x154d
    1dd4:	83 c4 10             	add    $0x10,%esp
    1dd7:	6a 0e                	push   $0xe
    1dd9:	6a 08                	push   $0x8
    1ddb:	68 36 82 00 00       	push   $0x8236
    1de0:	6a 65                	push   $0x65
    1de2:	e8 66 f7 ff ff       	call   0x154d
    1de7:	83 c4 10             	add    $0x10,%esp
    1dea:	6a 0e                	push   $0xe
    1dec:	6a 08                	push   $0x8
    1dee:	68 40 82 00 00       	push   $0x8240
    1df3:	6a 66                	push   $0x66
    1df5:	e8 53 f7 ff ff       	call   0x154d
    1dfa:	83 c4 10             	add    $0x10,%esp
    1dfd:	6a 0e                	push   $0xe
    1dff:	6a 08                	push   $0x8
    1e01:	68 4a 82 00 00       	push   $0x824a
    1e06:	6a 67                	push   $0x67
    1e08:	e8 40 f7 ff ff       	call   0x154d
    1e0d:	83 c4 10             	add    $0x10,%esp
    1e10:	6a 0e                	push   $0xe
    1e12:	6a 08                	push   $0x8
    1e14:	68 54 82 00 00       	push   $0x8254
    1e19:	6a 68                	push   $0x68
    1e1b:	e8 2d f7 ff ff       	call   0x154d
    1e20:	83 c4 10             	add    $0x10,%esp
    1e23:	6a 0e                	push   $0xe
    1e25:	6a 08                	push   $0x8
    1e27:	68 5e 82 00 00       	push   $0x825e
    1e2c:	6a 69                	push   $0x69
    1e2e:	e8 1a f7 ff ff       	call   0x154d
    1e33:	83 c4 10             	add    $0x10,%esp
    1e36:	6a 0e                	push   $0xe
    1e38:	6a 08                	push   $0x8
    1e3a:	68 68 82 00 00       	push   $0x8268
    1e3f:	6a 6a                	push   $0x6a
    1e41:	e8 07 f7 ff ff       	call   0x154d
    1e46:	83 c4 10             	add    $0x10,%esp
    1e49:	6a 0e                	push   $0xe
    1e4b:	6a 08                	push   $0x8
    1e4d:	68 72 82 00 00       	push   $0x8272
    1e52:	6a 6b                	push   $0x6b
    1e54:	e8 f4 f6 ff ff       	call   0x154d
    1e59:	83 c4 10             	add    $0x10,%esp
    1e5c:	6a 0e                	push   $0xe
    1e5e:	6a 08                	push   $0x8
    1e60:	68 7c 82 00 00       	push   $0x827c
    1e65:	6a 6c                	push   $0x6c
    1e67:	e8 e1 f6 ff ff       	call   0x154d
    1e6c:	83 c4 10             	add    $0x10,%esp
    1e6f:	6a 0e                	push   $0xe
    1e71:	6a 08                	push   $0x8
    1e73:	68 86 82 00 00       	push   $0x8286
    1e78:	6a 6d                	push   $0x6d
    1e7a:	e8 ce f6 ff ff       	call   0x154d
    1e7f:	83 c4 10             	add    $0x10,%esp
    1e82:	6a 0e                	push   $0xe
    1e84:	6a 08                	push   $0x8
    1e86:	68 90 82 00 00       	push   $0x8290
    1e8b:	6a 6e                	push   $0x6e
    1e8d:	e8 bb f6 ff ff       	call   0x154d
    1e92:	83 c4 10             	add    $0x10,%esp
    1e95:	6a 0e                	push   $0xe
    1e97:	6a 08                	push   $0x8
    1e99:	68 9a 82 00 00       	push   $0x829a
    1e9e:	6a 6f                	push   $0x6f
    1ea0:	e8 a8 f6 ff ff       	call   0x154d
    1ea5:	83 c4 10             	add    $0x10,%esp
    1ea8:	6a 0e                	push   $0xe
    1eaa:	6a 08                	push   $0x8
    1eac:	68 a4 82 00 00       	push   $0x82a4
    1eb1:	6a 70                	push   $0x70
    1eb3:	e8 95 f6 ff ff       	call   0x154d
    1eb8:	83 c4 10             	add    $0x10,%esp
    1ebb:	6a 0e                	push   $0xe
    1ebd:	6a 08                	push   $0x8
    1ebf:	68 ae 82 00 00       	push   $0x82ae
    1ec4:	6a 71                	push   $0x71
    1ec6:	e8 82 f6 ff ff       	call   0x154d
    1ecb:	83 c4 10             	add    $0x10,%esp
    1ece:	6a 0e                	push   $0xe
    1ed0:	6a 08                	push   $0x8
    1ed2:	68 b8 82 00 00       	push   $0x82b8
    1ed7:	6a 72                	push   $0x72
    1ed9:	e8 6f f6 ff ff       	call   0x154d
    1ede:	83 c4 10             	add    $0x10,%esp
    1ee1:	6a 0e                	push   $0xe
    1ee3:	6a 08                	push   $0x8
    1ee5:	68 c2 82 00 00       	push   $0x82c2
    1eea:	6a 73                	push   $0x73
    1eec:	e8 5c f6 ff ff       	call   0x154d
    1ef1:	83 c4 10             	add    $0x10,%esp
    1ef4:	6a 0e                	push   $0xe
    1ef6:	6a 08                	push   $0x8
    1ef8:	68 cc 82 00 00       	push   $0x82cc
    1efd:	6a 74                	push   $0x74
    1eff:	e8 49 f6 ff ff       	call   0x154d
    1f04:	83 c4 10             	add    $0x10,%esp
    1f07:	6a 0e                	push   $0xe
    1f09:	6a 08                	push   $0x8
    1f0b:	68 d6 82 00 00       	push   $0x82d6
    1f10:	6a 75                	push   $0x75
    1f12:	e8 36 f6 ff ff       	call   0x154d
    1f17:	83 c4 10             	add    $0x10,%esp
    1f1a:	6a 0e                	push   $0xe
    1f1c:	6a 08                	push   $0x8
    1f1e:	68 e0 82 00 00       	push   $0x82e0
    1f23:	6a 76                	push   $0x76
    1f25:	e8 23 f6 ff ff       	call   0x154d
    1f2a:	83 c4 10             	add    $0x10,%esp
    1f2d:	6a 0e                	push   $0xe
    1f2f:	6a 08                	push   $0x8
    1f31:	68 ea 82 00 00       	push   $0x82ea
    1f36:	6a 77                	push   $0x77
    1f38:	e8 10 f6 ff ff       	call   0x154d
    1f3d:	83 c4 10             	add    $0x10,%esp
    1f40:	6a 0e                	push   $0xe
    1f42:	6a 08                	push   $0x8
    1f44:	68 f4 82 00 00       	push   $0x82f4
    1f49:	6a 78                	push   $0x78
    1f4b:	e8 fd f5 ff ff       	call   0x154d
    1f50:	83 c4 10             	add    $0x10,%esp
    1f53:	6a 0e                	push   $0xe
    1f55:	6a 08                	push   $0x8
    1f57:	68 fe 82 00 00       	push   $0x82fe
    1f5c:	6a 79                	push   $0x79
    1f5e:	e8 ea f5 ff ff       	call   0x154d
    1f63:	83 c4 10             	add    $0x10,%esp
    1f66:	6a 0e                	push   $0xe
    1f68:	6a 08                	push   $0x8
    1f6a:	68 08 83 00 00       	push   $0x8308
    1f6f:	6a 7a                	push   $0x7a
    1f71:	e8 d7 f5 ff ff       	call   0x154d
    1f76:	83 c4 10             	add    $0x10,%esp
    1f79:	6a 0e                	push   $0xe
    1f7b:	6a 08                	push   $0x8
    1f7d:	68 12 83 00 00       	push   $0x8312
    1f82:	6a 7b                	push   $0x7b
    1f84:	e8 c4 f5 ff ff       	call   0x154d
    1f89:	83 c4 10             	add    $0x10,%esp
    1f8c:	6a 0e                	push   $0xe
    1f8e:	6a 08                	push   $0x8
    1f90:	68 1c 83 00 00       	push   $0x831c
    1f95:	6a 7c                	push   $0x7c
    1f97:	e8 b1 f5 ff ff       	call   0x154d
    1f9c:	83 c4 10             	add    $0x10,%esp
    1f9f:	6a 0e                	push   $0xe
    1fa1:	6a 08                	push   $0x8
    1fa3:	68 26 83 00 00       	push   $0x8326
    1fa8:	6a 7d                	push   $0x7d
    1faa:	e8 9e f5 ff ff       	call   0x154d
    1faf:	83 c4 10             	add    $0x10,%esp
    1fb2:	6a 0e                	push   $0xe
    1fb4:	6a 08                	push   $0x8
    1fb6:	68 30 83 00 00       	push   $0x8330
    1fbb:	6a 7e                	push   $0x7e
    1fbd:	e8 8b f5 ff ff       	call   0x154d
    1fc2:	83 c4 10             	add    $0x10,%esp
    1fc5:	6a 0e                	push   $0xe
    1fc7:	6a 08                	push   $0x8
    1fc9:	68 3a 83 00 00       	push   $0x833a
    1fce:	6a 7f                	push   $0x7f
    1fd0:	e8 78 f5 ff ff       	call   0x154d
    1fd5:	83 c4 10             	add    $0x10,%esp
    1fd8:	6a 0e                	push   $0xe
    1fda:	6a 08                	push   $0x8
    1fdc:	68 44 83 00 00       	push   $0x8344
    1fe1:	68 80 00 00 00       	push   $0x80
    1fe6:	e8 62 f5 ff ff       	call   0x154d
    1feb:	83 c4 10             	add    $0x10,%esp
    1fee:	6a 0e                	push   $0xe
    1ff0:	6a 08                	push   $0x8
    1ff2:	68 51 83 00 00       	push   $0x8351
    1ff7:	68 81 00 00 00       	push   $0x81
    1ffc:	e8 4c f5 ff ff       	call   0x154d
    2001:	83 c4 10             	add    $0x10,%esp
    2004:	6a 0e                	push   $0xe
    2006:	6a 08                	push   $0x8
    2008:	68 5e 83 00 00       	push   $0x835e
    200d:	68 82 00 00 00       	push   $0x82
    2012:	e8 36 f5 ff ff       	call   0x154d
    2017:	83 c4 10             	add    $0x10,%esp
    201a:	6a 0e                	push   $0xe
    201c:	6a 08                	push   $0x8
    201e:	68 6b 83 00 00       	push   $0x836b
    2023:	68 83 00 00 00       	push   $0x83
    2028:	e8 20 f5 ff ff       	call   0x154d
    202d:	83 c4 10             	add    $0x10,%esp
    2030:	6a 0e                	push   $0xe
    2032:	6a 08                	push   $0x8
    2034:	68 78 83 00 00       	push   $0x8378
    2039:	68 84 00 00 00       	push   $0x84
    203e:	e8 0a f5 ff ff       	call   0x154d
    2043:	83 c4 10             	add    $0x10,%esp
    2046:	6a 0e                	push   $0xe
    2048:	6a 08                	push   $0x8
    204a:	68 85 83 00 00       	push   $0x8385
    204f:	68 85 00 00 00       	push   $0x85
    2054:	e8 f4 f4 ff ff       	call   0x154d
    2059:	83 c4 10             	add    $0x10,%esp
    205c:	6a 0e                	push   $0xe
    205e:	6a 08                	push   $0x8
    2060:	68 92 83 00 00       	push   $0x8392
    2065:	68 86 00 00 00       	push   $0x86
    206a:	e8 de f4 ff ff       	call   0x154d
    206f:	83 c4 10             	add    $0x10,%esp
    2072:	6a 0e                	push   $0xe
    2074:	6a 08                	push   $0x8
    2076:	68 9f 83 00 00       	push   $0x839f
    207b:	68 87 00 00 00       	push   $0x87
    2080:	e8 c8 f4 ff ff       	call   0x154d
    2085:	83 c4 10             	add    $0x10,%esp
    2088:	6a 0e                	push   $0xe
    208a:	6a 08                	push   $0x8
    208c:	68 ac 83 00 00       	push   $0x83ac
    2091:	68 88 00 00 00       	push   $0x88
    2096:	e8 b2 f4 ff ff       	call   0x154d
    209b:	83 c4 10             	add    $0x10,%esp
    209e:	6a 0e                	push   $0xe
    20a0:	6a 08                	push   $0x8
    20a2:	68 b9 83 00 00       	push   $0x83b9
    20a7:	68 89 00 00 00       	push   $0x89
    20ac:	e8 9c f4 ff ff       	call   0x154d
    20b1:	83 c4 10             	add    $0x10,%esp
    20b4:	6a 0e                	push   $0xe
    20b6:	6a 08                	push   $0x8
    20b8:	68 c6 83 00 00       	push   $0x83c6
    20bd:	68 8a 00 00 00       	push   $0x8a
    20c2:	e8 86 f4 ff ff       	call   0x154d
    20c7:	83 c4 10             	add    $0x10,%esp
    20ca:	6a 0e                	push   $0xe
    20cc:	6a 08                	push   $0x8
    20ce:	68 d3 83 00 00       	push   $0x83d3
    20d3:	68 8b 00 00 00       	push   $0x8b
    20d8:	e8 70 f4 ff ff       	call   0x154d
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	6a 0e                	push   $0xe
    20e2:	6a 08                	push   $0x8
    20e4:	68 e0 83 00 00       	push   $0x83e0
    20e9:	68 8c 00 00 00       	push   $0x8c
    20ee:	e8 5a f4 ff ff       	call   0x154d
    20f3:	83 c4 10             	add    $0x10,%esp
    20f6:	6a 0e                	push   $0xe
    20f8:	6a 08                	push   $0x8
    20fa:	68 ed 83 00 00       	push   $0x83ed
    20ff:	68 8d 00 00 00       	push   $0x8d
    2104:	e8 44 f4 ff ff       	call   0x154d
    2109:	83 c4 10             	add    $0x10,%esp
    210c:	6a 0e                	push   $0xe
    210e:	6a 08                	push   $0x8
    2110:	68 fa 83 00 00       	push   $0x83fa
    2115:	68 8e 00 00 00       	push   $0x8e
    211a:	e8 2e f4 ff ff       	call   0x154d
    211f:	83 c4 10             	add    $0x10,%esp
    2122:	6a 0e                	push   $0xe
    2124:	6a 08                	push   $0x8
    2126:	68 07 84 00 00       	push   $0x8407
    212b:	68 8f 00 00 00       	push   $0x8f
    2130:	e8 18 f4 ff ff       	call   0x154d
    2135:	83 c4 10             	add    $0x10,%esp
    2138:	6a 0e                	push   $0xe
    213a:	6a 08                	push   $0x8
    213c:	68 14 84 00 00       	push   $0x8414
    2141:	68 90 00 00 00       	push   $0x90
    2146:	e8 02 f4 ff ff       	call   0x154d
    214b:	83 c4 10             	add    $0x10,%esp
    214e:	6a 0e                	push   $0xe
    2150:	6a 08                	push   $0x8
    2152:	68 21 84 00 00       	push   $0x8421
    2157:	68 91 00 00 00       	push   $0x91
    215c:	e8 ec f3 ff ff       	call   0x154d
    2161:	83 c4 10             	add    $0x10,%esp
    2164:	6a 0e                	push   $0xe
    2166:	6a 08                	push   $0x8
    2168:	68 2e 84 00 00       	push   $0x842e
    216d:	68 92 00 00 00       	push   $0x92
    2172:	e8 d6 f3 ff ff       	call   0x154d
    2177:	83 c4 10             	add    $0x10,%esp
    217a:	6a 0e                	push   $0xe
    217c:	6a 08                	push   $0x8
    217e:	68 3b 84 00 00       	push   $0x843b
    2183:	68 93 00 00 00       	push   $0x93
    2188:	e8 c0 f3 ff ff       	call   0x154d
    218d:	83 c4 10             	add    $0x10,%esp
    2190:	6a 0e                	push   $0xe
    2192:	6a 08                	push   $0x8
    2194:	68 48 84 00 00       	push   $0x8448
    2199:	68 94 00 00 00       	push   $0x94
    219e:	e8 aa f3 ff ff       	call   0x154d
    21a3:	83 c4 10             	add    $0x10,%esp
    21a6:	6a 0e                	push   $0xe
    21a8:	6a 08                	push   $0x8
    21aa:	68 55 84 00 00       	push   $0x8455
    21af:	68 95 00 00 00       	push   $0x95
    21b4:	e8 94 f3 ff ff       	call   0x154d
    21b9:	83 c4 10             	add    $0x10,%esp
    21bc:	6a 0e                	push   $0xe
    21be:	6a 08                	push   $0x8
    21c0:	68 62 84 00 00       	push   $0x8462
    21c5:	68 96 00 00 00       	push   $0x96
    21ca:	e8 7e f3 ff ff       	call   0x154d
    21cf:	83 c4 10             	add    $0x10,%esp
    21d2:	6a 0e                	push   $0xe
    21d4:	6a 08                	push   $0x8
    21d6:	68 6f 84 00 00       	push   $0x846f
    21db:	68 97 00 00 00       	push   $0x97
    21e0:	e8 68 f3 ff ff       	call   0x154d
    21e5:	83 c4 10             	add    $0x10,%esp
    21e8:	6a 0e                	push   $0xe
    21ea:	6a 08                	push   $0x8
    21ec:	68 7c 84 00 00       	push   $0x847c
    21f1:	68 98 00 00 00       	push   $0x98
    21f6:	e8 52 f3 ff ff       	call   0x154d
    21fb:	83 c4 10             	add    $0x10,%esp
    21fe:	6a 0e                	push   $0xe
    2200:	6a 08                	push   $0x8
    2202:	68 89 84 00 00       	push   $0x8489
    2207:	68 99 00 00 00       	push   $0x99
    220c:	e8 3c f3 ff ff       	call   0x154d
    2211:	83 c4 10             	add    $0x10,%esp
    2214:	6a 0e                	push   $0xe
    2216:	6a 08                	push   $0x8
    2218:	68 96 84 00 00       	push   $0x8496
    221d:	68 9a 00 00 00       	push   $0x9a
    2222:	e8 26 f3 ff ff       	call   0x154d
    2227:	83 c4 10             	add    $0x10,%esp
    222a:	6a 0e                	push   $0xe
    222c:	6a 08                	push   $0x8
    222e:	68 a3 84 00 00       	push   $0x84a3
    2233:	68 9b 00 00 00       	push   $0x9b
    2238:	e8 10 f3 ff ff       	call   0x154d
    223d:	83 c4 10             	add    $0x10,%esp
    2240:	6a 0e                	push   $0xe
    2242:	6a 08                	push   $0x8
    2244:	68 b0 84 00 00       	push   $0x84b0
    2249:	68 9c 00 00 00       	push   $0x9c
    224e:	e8 fa f2 ff ff       	call   0x154d
    2253:	83 c4 10             	add    $0x10,%esp
    2256:	6a 0e                	push   $0xe
    2258:	6a 08                	push   $0x8
    225a:	68 bd 84 00 00       	push   $0x84bd
    225f:	68 9d 00 00 00       	push   $0x9d
    2264:	e8 e4 f2 ff ff       	call   0x154d
    2269:	83 c4 10             	add    $0x10,%esp
    226c:	6a 0e                	push   $0xe
    226e:	6a 08                	push   $0x8
    2270:	68 ca 84 00 00       	push   $0x84ca
    2275:	68 9e 00 00 00       	push   $0x9e
    227a:	e8 ce f2 ff ff       	call   0x154d
    227f:	83 c4 10             	add    $0x10,%esp
    2282:	6a 0e                	push   $0xe
    2284:	6a 08                	push   $0x8
    2286:	68 d7 84 00 00       	push   $0x84d7
    228b:	68 9f 00 00 00       	push   $0x9f
    2290:	e8 b8 f2 ff ff       	call   0x154d
    2295:	83 c4 10             	add    $0x10,%esp
    2298:	6a 0e                	push   $0xe
    229a:	6a 08                	push   $0x8
    229c:	68 e4 84 00 00       	push   $0x84e4
    22a1:	68 a0 00 00 00       	push   $0xa0
    22a6:	e8 a2 f2 ff ff       	call   0x154d
    22ab:	83 c4 10             	add    $0x10,%esp
    22ae:	6a 0e                	push   $0xe
    22b0:	6a 08                	push   $0x8
    22b2:	68 f1 84 00 00       	push   $0x84f1
    22b7:	68 a1 00 00 00       	push   $0xa1
    22bc:	e8 8c f2 ff ff       	call   0x154d
    22c1:	83 c4 10             	add    $0x10,%esp
    22c4:	6a 0e                	push   $0xe
    22c6:	6a 08                	push   $0x8
    22c8:	68 fe 84 00 00       	push   $0x84fe
    22cd:	68 a2 00 00 00       	push   $0xa2
    22d2:	e8 76 f2 ff ff       	call   0x154d
    22d7:	83 c4 10             	add    $0x10,%esp
    22da:	6a 0e                	push   $0xe
    22dc:	6a 08                	push   $0x8
    22de:	68 0b 85 00 00       	push   $0x850b
    22e3:	68 a3 00 00 00       	push   $0xa3
    22e8:	e8 60 f2 ff ff       	call   0x154d
    22ed:	83 c4 10             	add    $0x10,%esp
    22f0:	6a 0e                	push   $0xe
    22f2:	6a 08                	push   $0x8
    22f4:	68 18 85 00 00       	push   $0x8518
    22f9:	68 a4 00 00 00       	push   $0xa4
    22fe:	e8 4a f2 ff ff       	call   0x154d
    2303:	83 c4 10             	add    $0x10,%esp
    2306:	6a 0e                	push   $0xe
    2308:	6a 08                	push   $0x8
    230a:	68 25 85 00 00       	push   $0x8525
    230f:	68 a5 00 00 00       	push   $0xa5
    2314:	e8 34 f2 ff ff       	call   0x154d
    2319:	83 c4 10             	add    $0x10,%esp
    231c:	6a 0e                	push   $0xe
    231e:	6a 08                	push   $0x8
    2320:	68 32 85 00 00       	push   $0x8532
    2325:	68 a6 00 00 00       	push   $0xa6
    232a:	e8 1e f2 ff ff       	call   0x154d
    232f:	83 c4 10             	add    $0x10,%esp
    2332:	6a 0e                	push   $0xe
    2334:	6a 08                	push   $0x8
    2336:	68 3f 85 00 00       	push   $0x853f
    233b:	68 a7 00 00 00       	push   $0xa7
    2340:	e8 08 f2 ff ff       	call   0x154d
    2345:	83 c4 10             	add    $0x10,%esp
    2348:	6a 0e                	push   $0xe
    234a:	6a 08                	push   $0x8
    234c:	68 4c 85 00 00       	push   $0x854c
    2351:	68 a8 00 00 00       	push   $0xa8
    2356:	e8 f2 f1 ff ff       	call   0x154d
    235b:	83 c4 10             	add    $0x10,%esp
    235e:	6a 0e                	push   $0xe
    2360:	6a 08                	push   $0x8
    2362:	68 59 85 00 00       	push   $0x8559
    2367:	68 a9 00 00 00       	push   $0xa9
    236c:	e8 dc f1 ff ff       	call   0x154d
    2371:	83 c4 10             	add    $0x10,%esp
    2374:	6a 0e                	push   $0xe
    2376:	6a 08                	push   $0x8
    2378:	68 66 85 00 00       	push   $0x8566
    237d:	68 aa 00 00 00       	push   $0xaa
    2382:	e8 c6 f1 ff ff       	call   0x154d
    2387:	83 c4 10             	add    $0x10,%esp
    238a:	6a 0e                	push   $0xe
    238c:	6a 08                	push   $0x8
    238e:	68 73 85 00 00       	push   $0x8573
    2393:	68 ab 00 00 00       	push   $0xab
    2398:	e8 b0 f1 ff ff       	call   0x154d
    239d:	83 c4 10             	add    $0x10,%esp
    23a0:	6a 0e                	push   $0xe
    23a2:	6a 08                	push   $0x8
    23a4:	68 80 85 00 00       	push   $0x8580
    23a9:	68 ac 00 00 00       	push   $0xac
    23ae:	e8 9a f1 ff ff       	call   0x154d
    23b3:	83 c4 10             	add    $0x10,%esp
    23b6:	6a 0e                	push   $0xe
    23b8:	6a 08                	push   $0x8
    23ba:	68 8d 85 00 00       	push   $0x858d
    23bf:	68 ad 00 00 00       	push   $0xad
    23c4:	e8 84 f1 ff ff       	call   0x154d
    23c9:	83 c4 10             	add    $0x10,%esp
    23cc:	6a 0e                	push   $0xe
    23ce:	6a 08                	push   $0x8
    23d0:	68 9a 85 00 00       	push   $0x859a
    23d5:	68 ae 00 00 00       	push   $0xae
    23da:	e8 6e f1 ff ff       	call   0x154d
    23df:	83 c4 10             	add    $0x10,%esp
    23e2:	6a 0e                	push   $0xe
    23e4:	6a 08                	push   $0x8
    23e6:	68 a7 85 00 00       	push   $0x85a7
    23eb:	68 af 00 00 00       	push   $0xaf
    23f0:	e8 58 f1 ff ff       	call   0x154d
    23f5:	83 c4 10             	add    $0x10,%esp
    23f8:	6a 0e                	push   $0xe
    23fa:	6a 08                	push   $0x8
    23fc:	68 b4 85 00 00       	push   $0x85b4
    2401:	68 b0 00 00 00       	push   $0xb0
    2406:	e8 42 f1 ff ff       	call   0x154d
    240b:	83 c4 10             	add    $0x10,%esp
    240e:	6a 0e                	push   $0xe
    2410:	6a 08                	push   $0x8
    2412:	68 c1 85 00 00       	push   $0x85c1
    2417:	68 b1 00 00 00       	push   $0xb1
    241c:	e8 2c f1 ff ff       	call   0x154d
    2421:	83 c4 10             	add    $0x10,%esp
    2424:	6a 0e                	push   $0xe
    2426:	6a 08                	push   $0x8
    2428:	68 ce 85 00 00       	push   $0x85ce
    242d:	68 b2 00 00 00       	push   $0xb2
    2432:	e8 16 f1 ff ff       	call   0x154d
    2437:	83 c4 10             	add    $0x10,%esp
    243a:	6a 0e                	push   $0xe
    243c:	6a 08                	push   $0x8
    243e:	68 db 85 00 00       	push   $0x85db
    2443:	68 b3 00 00 00       	push   $0xb3
    2448:	e8 00 f1 ff ff       	call   0x154d
    244d:	83 c4 10             	add    $0x10,%esp
    2450:	6a 0e                	push   $0xe
    2452:	6a 08                	push   $0x8
    2454:	68 e8 85 00 00       	push   $0x85e8
    2459:	68 b4 00 00 00       	push   $0xb4
    245e:	e8 ea f0 ff ff       	call   0x154d
    2463:	83 c4 10             	add    $0x10,%esp
    2466:	6a 0e                	push   $0xe
    2468:	6a 08                	push   $0x8
    246a:	68 f5 85 00 00       	push   $0x85f5
    246f:	68 b5 00 00 00       	push   $0xb5
    2474:	e8 d4 f0 ff ff       	call   0x154d
    2479:	83 c4 10             	add    $0x10,%esp
    247c:	6a 0e                	push   $0xe
    247e:	6a 08                	push   $0x8
    2480:	68 02 86 00 00       	push   $0x8602
    2485:	68 b6 00 00 00       	push   $0xb6
    248a:	e8 be f0 ff ff       	call   0x154d
    248f:	83 c4 10             	add    $0x10,%esp
    2492:	6a 0e                	push   $0xe
    2494:	6a 08                	push   $0x8
    2496:	68 0f 86 00 00       	push   $0x860f
    249b:	68 b7 00 00 00       	push   $0xb7
    24a0:	e8 a8 f0 ff ff       	call   0x154d
    24a5:	83 c4 10             	add    $0x10,%esp
    24a8:	6a 0e                	push   $0xe
    24aa:	6a 08                	push   $0x8
    24ac:	68 1c 86 00 00       	push   $0x861c
    24b1:	68 b8 00 00 00       	push   $0xb8
    24b6:	e8 92 f0 ff ff       	call   0x154d
    24bb:	83 c4 10             	add    $0x10,%esp
    24be:	6a 0e                	push   $0xe
    24c0:	6a 08                	push   $0x8
    24c2:	68 29 86 00 00       	push   $0x8629
    24c7:	68 b9 00 00 00       	push   $0xb9
    24cc:	e8 7c f0 ff ff       	call   0x154d
    24d1:	83 c4 10             	add    $0x10,%esp
    24d4:	6a 0e                	push   $0xe
    24d6:	6a 08                	push   $0x8
    24d8:	68 36 86 00 00       	push   $0x8636
    24dd:	68 ba 00 00 00       	push   $0xba
    24e2:	e8 66 f0 ff ff       	call   0x154d
    24e7:	83 c4 10             	add    $0x10,%esp
    24ea:	6a 0e                	push   $0xe
    24ec:	6a 08                	push   $0x8
    24ee:	68 43 86 00 00       	push   $0x8643
    24f3:	68 bb 00 00 00       	push   $0xbb
    24f8:	e8 50 f0 ff ff       	call   0x154d
    24fd:	83 c4 10             	add    $0x10,%esp
    2500:	6a 0e                	push   $0xe
    2502:	6a 08                	push   $0x8
    2504:	68 50 86 00 00       	push   $0x8650
    2509:	68 bc 00 00 00       	push   $0xbc
    250e:	e8 3a f0 ff ff       	call   0x154d
    2513:	83 c4 10             	add    $0x10,%esp
    2516:	6a 0e                	push   $0xe
    2518:	6a 08                	push   $0x8
    251a:	68 5d 86 00 00       	push   $0x865d
    251f:	68 bd 00 00 00       	push   $0xbd
    2524:	e8 24 f0 ff ff       	call   0x154d
    2529:	83 c4 10             	add    $0x10,%esp
    252c:	6a 0e                	push   $0xe
    252e:	6a 08                	push   $0x8
    2530:	68 6a 86 00 00       	push   $0x866a
    2535:	68 be 00 00 00       	push   $0xbe
    253a:	e8 0e f0 ff ff       	call   0x154d
    253f:	83 c4 10             	add    $0x10,%esp
    2542:	6a 0e                	push   $0xe
    2544:	6a 08                	push   $0x8
    2546:	68 77 86 00 00       	push   $0x8677
    254b:	68 bf 00 00 00       	push   $0xbf
    2550:	e8 f8 ef ff ff       	call   0x154d
    2555:	83 c4 10             	add    $0x10,%esp
    2558:	6a 0e                	push   $0xe
    255a:	6a 08                	push   $0x8
    255c:	68 84 86 00 00       	push   $0x8684
    2561:	68 c0 00 00 00       	push   $0xc0
    2566:	e8 e2 ef ff ff       	call   0x154d
    256b:	83 c4 10             	add    $0x10,%esp
    256e:	6a 0e                	push   $0xe
    2570:	6a 08                	push   $0x8
    2572:	68 91 86 00 00       	push   $0x8691
    2577:	68 c1 00 00 00       	push   $0xc1
    257c:	e8 cc ef ff ff       	call   0x154d
    2581:	83 c4 10             	add    $0x10,%esp
    2584:	6a 0e                	push   $0xe
    2586:	6a 08                	push   $0x8
    2588:	68 9e 86 00 00       	push   $0x869e
    258d:	68 c2 00 00 00       	push   $0xc2
    2592:	e8 b6 ef ff ff       	call   0x154d
    2597:	83 c4 10             	add    $0x10,%esp
    259a:	6a 0e                	push   $0xe
    259c:	6a 08                	push   $0x8
    259e:	68 ab 86 00 00       	push   $0x86ab
    25a3:	68 c3 00 00 00       	push   $0xc3
    25a8:	e8 a0 ef ff ff       	call   0x154d
    25ad:	83 c4 10             	add    $0x10,%esp
    25b0:	6a 0e                	push   $0xe
    25b2:	6a 08                	push   $0x8
    25b4:	68 b8 86 00 00       	push   $0x86b8
    25b9:	68 c4 00 00 00       	push   $0xc4
    25be:	e8 8a ef ff ff       	call   0x154d
    25c3:	83 c4 10             	add    $0x10,%esp
    25c6:	6a 0e                	push   $0xe
    25c8:	6a 08                	push   $0x8
    25ca:	68 c5 86 00 00       	push   $0x86c5
    25cf:	68 c5 00 00 00       	push   $0xc5
    25d4:	e8 74 ef ff ff       	call   0x154d
    25d9:	83 c4 10             	add    $0x10,%esp
    25dc:	6a 0e                	push   $0xe
    25de:	6a 08                	push   $0x8
    25e0:	68 d2 86 00 00       	push   $0x86d2
    25e5:	68 c6 00 00 00       	push   $0xc6
    25ea:	e8 5e ef ff ff       	call   0x154d
    25ef:	83 c4 10             	add    $0x10,%esp
    25f2:	6a 0e                	push   $0xe
    25f4:	6a 08                	push   $0x8
    25f6:	68 df 86 00 00       	push   $0x86df
    25fb:	68 c7 00 00 00       	push   $0xc7
    2600:	e8 48 ef ff ff       	call   0x154d
    2605:	83 c4 10             	add    $0x10,%esp
    2608:	6a 0e                	push   $0xe
    260a:	6a 08                	push   $0x8
    260c:	68 ec 86 00 00       	push   $0x86ec
    2611:	68 c8 00 00 00       	push   $0xc8
    2616:	e8 32 ef ff ff       	call   0x154d
    261b:	83 c4 10             	add    $0x10,%esp
    261e:	6a 0e                	push   $0xe
    2620:	6a 08                	push   $0x8
    2622:	68 f9 86 00 00       	push   $0x86f9
    2627:	68 c9 00 00 00       	push   $0xc9
    262c:	e8 1c ef ff ff       	call   0x154d
    2631:	83 c4 10             	add    $0x10,%esp
    2634:	6a 0e                	push   $0xe
    2636:	6a 08                	push   $0x8
    2638:	68 06 87 00 00       	push   $0x8706
    263d:	68 ca 00 00 00       	push   $0xca
    2642:	e8 06 ef ff ff       	call   0x154d
    2647:	83 c4 10             	add    $0x10,%esp
    264a:	6a 0e                	push   $0xe
    264c:	6a 08                	push   $0x8
    264e:	68 13 87 00 00       	push   $0x8713
    2653:	68 cb 00 00 00       	push   $0xcb
    2658:	e8 f0 ee ff ff       	call   0x154d
    265d:	83 c4 10             	add    $0x10,%esp
    2660:	6a 0e                	push   $0xe
    2662:	6a 08                	push   $0x8
    2664:	68 20 87 00 00       	push   $0x8720
    2669:	68 cc 00 00 00       	push   $0xcc
    266e:	e8 da ee ff ff       	call   0x154d
    2673:	83 c4 10             	add    $0x10,%esp
    2676:	6a 0e                	push   $0xe
    2678:	6a 08                	push   $0x8
    267a:	68 2d 87 00 00       	push   $0x872d
    267f:	68 cd 00 00 00       	push   $0xcd
    2684:	e8 c4 ee ff ff       	call   0x154d
    2689:	83 c4 10             	add    $0x10,%esp
    268c:	6a 0e                	push   $0xe
    268e:	6a 08                	push   $0x8
    2690:	68 3a 87 00 00       	push   $0x873a
    2695:	68 ce 00 00 00       	push   $0xce
    269a:	e8 ae ee ff ff       	call   0x154d
    269f:	83 c4 10             	add    $0x10,%esp
    26a2:	6a 0e                	push   $0xe
    26a4:	6a 08                	push   $0x8
    26a6:	68 47 87 00 00       	push   $0x8747
    26ab:	68 cf 00 00 00       	push   $0xcf
    26b0:	e8 98 ee ff ff       	call   0x154d
    26b5:	83 c4 10             	add    $0x10,%esp
    26b8:	6a 0e                	push   $0xe
    26ba:	6a 08                	push   $0x8
    26bc:	68 54 87 00 00       	push   $0x8754
    26c1:	68 d0 00 00 00       	push   $0xd0
    26c6:	e8 82 ee ff ff       	call   0x154d
    26cb:	83 c4 10             	add    $0x10,%esp
    26ce:	6a 0e                	push   $0xe
    26d0:	6a 08                	push   $0x8
    26d2:	68 61 87 00 00       	push   $0x8761
    26d7:	68 d1 00 00 00       	push   $0xd1
    26dc:	e8 6c ee ff ff       	call   0x154d
    26e1:	83 c4 10             	add    $0x10,%esp
    26e4:	6a 0e                	push   $0xe
    26e6:	6a 08                	push   $0x8
    26e8:	68 6e 87 00 00       	push   $0x876e
    26ed:	68 d2 00 00 00       	push   $0xd2
    26f2:	e8 56 ee ff ff       	call   0x154d
    26f7:	83 c4 10             	add    $0x10,%esp
    26fa:	6a 0e                	push   $0xe
    26fc:	6a 08                	push   $0x8
    26fe:	68 7b 87 00 00       	push   $0x877b
    2703:	68 d3 00 00 00       	push   $0xd3
    2708:	e8 40 ee ff ff       	call   0x154d
    270d:	83 c4 10             	add    $0x10,%esp
    2710:	6a 0e                	push   $0xe
    2712:	6a 08                	push   $0x8
    2714:	68 88 87 00 00       	push   $0x8788
    2719:	68 d4 00 00 00       	push   $0xd4
    271e:	e8 2a ee ff ff       	call   0x154d
    2723:	83 c4 10             	add    $0x10,%esp
    2726:	6a 0e                	push   $0xe
    2728:	6a 08                	push   $0x8
    272a:	68 95 87 00 00       	push   $0x8795
    272f:	68 d5 00 00 00       	push   $0xd5
    2734:	e8 14 ee ff ff       	call   0x154d
    2739:	83 c4 10             	add    $0x10,%esp
    273c:	6a 0e                	push   $0xe
    273e:	6a 08                	push   $0x8
    2740:	68 a2 87 00 00       	push   $0x87a2
    2745:	68 d6 00 00 00       	push   $0xd6
    274a:	e8 fe ed ff ff       	call   0x154d
    274f:	83 c4 10             	add    $0x10,%esp
    2752:	6a 0e                	push   $0xe
    2754:	6a 08                	push   $0x8
    2756:	68 af 87 00 00       	push   $0x87af
    275b:	68 d7 00 00 00       	push   $0xd7
    2760:	e8 e8 ed ff ff       	call   0x154d
    2765:	83 c4 10             	add    $0x10,%esp
    2768:	6a 0e                	push   $0xe
    276a:	6a 08                	push   $0x8
    276c:	68 bc 87 00 00       	push   $0x87bc
    2771:	68 d8 00 00 00       	push   $0xd8
    2776:	e8 d2 ed ff ff       	call   0x154d
    277b:	83 c4 10             	add    $0x10,%esp
    277e:	6a 0e                	push   $0xe
    2780:	6a 08                	push   $0x8
    2782:	68 c9 87 00 00       	push   $0x87c9
    2787:	68 d9 00 00 00       	push   $0xd9
    278c:	e8 bc ed ff ff       	call   0x154d
    2791:	83 c4 10             	add    $0x10,%esp
    2794:	6a 0e                	push   $0xe
    2796:	6a 08                	push   $0x8
    2798:	68 d6 87 00 00       	push   $0x87d6
    279d:	68 da 00 00 00       	push   $0xda
    27a2:	e8 a6 ed ff ff       	call   0x154d
    27a7:	83 c4 10             	add    $0x10,%esp
    27aa:	6a 0e                	push   $0xe
    27ac:	6a 08                	push   $0x8
    27ae:	68 e3 87 00 00       	push   $0x87e3
    27b3:	68 db 00 00 00       	push   $0xdb
    27b8:	e8 90 ed ff ff       	call   0x154d
    27bd:	83 c4 10             	add    $0x10,%esp
    27c0:	6a 0e                	push   $0xe
    27c2:	6a 08                	push   $0x8
    27c4:	68 f0 87 00 00       	push   $0x87f0
    27c9:	68 dc 00 00 00       	push   $0xdc
    27ce:	e8 7a ed ff ff       	call   0x154d
    27d3:	83 c4 10             	add    $0x10,%esp
    27d6:	6a 0e                	push   $0xe
    27d8:	6a 08                	push   $0x8
    27da:	68 fd 87 00 00       	push   $0x87fd
    27df:	68 dd 00 00 00       	push   $0xdd
    27e4:	e8 64 ed ff ff       	call   0x154d
    27e9:	83 c4 10             	add    $0x10,%esp
    27ec:	6a 0e                	push   $0xe
    27ee:	6a 08                	push   $0x8
    27f0:	68 0a 88 00 00       	push   $0x880a
    27f5:	68 de 00 00 00       	push   $0xde
    27fa:	e8 4e ed ff ff       	call   0x154d
    27ff:	83 c4 10             	add    $0x10,%esp
    2802:	6a 0e                	push   $0xe
    2804:	6a 08                	push   $0x8
    2806:	68 17 88 00 00       	push   $0x8817
    280b:	68 df 00 00 00       	push   $0xdf
    2810:	e8 38 ed ff ff       	call   0x154d
    2815:	83 c4 10             	add    $0x10,%esp
    2818:	6a 0e                	push   $0xe
    281a:	6a 08                	push   $0x8
    281c:	68 24 88 00 00       	push   $0x8824
    2821:	68 e0 00 00 00       	push   $0xe0
    2826:	e8 22 ed ff ff       	call   0x154d
    282b:	83 c4 10             	add    $0x10,%esp
    282e:	6a 0e                	push   $0xe
    2830:	6a 08                	push   $0x8
    2832:	68 31 88 00 00       	push   $0x8831
    2837:	68 e1 00 00 00       	push   $0xe1
    283c:	e8 0c ed ff ff       	call   0x154d
    2841:	83 c4 10             	add    $0x10,%esp
    2844:	6a 0e                	push   $0xe
    2846:	6a 08                	push   $0x8
    2848:	68 3e 88 00 00       	push   $0x883e
    284d:	68 e2 00 00 00       	push   $0xe2
    2852:	e8 f6 ec ff ff       	call   0x154d
    2857:	83 c4 10             	add    $0x10,%esp
    285a:	6a 0e                	push   $0xe
    285c:	6a 08                	push   $0x8
    285e:	68 4b 88 00 00       	push   $0x884b
    2863:	68 e3 00 00 00       	push   $0xe3
    2868:	e8 e0 ec ff ff       	call   0x154d
    286d:	83 c4 10             	add    $0x10,%esp
    2870:	6a 0e                	push   $0xe
    2872:	6a 08                	push   $0x8
    2874:	68 58 88 00 00       	push   $0x8858
    2879:	68 e4 00 00 00       	push   $0xe4
    287e:	e8 ca ec ff ff       	call   0x154d
    2883:	83 c4 10             	add    $0x10,%esp
    2886:	6a 0e                	push   $0xe
    2888:	6a 08                	push   $0x8
    288a:	68 65 88 00 00       	push   $0x8865
    288f:	68 e5 00 00 00       	push   $0xe5
    2894:	e8 b4 ec ff ff       	call   0x154d
    2899:	83 c4 10             	add    $0x10,%esp
    289c:	6a 0e                	push   $0xe
    289e:	6a 08                	push   $0x8
    28a0:	68 72 88 00 00       	push   $0x8872
    28a5:	68 e6 00 00 00       	push   $0xe6
    28aa:	e8 9e ec ff ff       	call   0x154d
    28af:	83 c4 10             	add    $0x10,%esp
    28b2:	6a 0e                	push   $0xe
    28b4:	6a 08                	push   $0x8
    28b6:	68 7f 88 00 00       	push   $0x887f
    28bb:	68 e7 00 00 00       	push   $0xe7
    28c0:	e8 88 ec ff ff       	call   0x154d
    28c5:	83 c4 10             	add    $0x10,%esp
    28c8:	6a 0e                	push   $0xe
    28ca:	6a 08                	push   $0x8
    28cc:	68 8c 88 00 00       	push   $0x888c
    28d1:	68 e8 00 00 00       	push   $0xe8
    28d6:	e8 72 ec ff ff       	call   0x154d
    28db:	83 c4 10             	add    $0x10,%esp
    28de:	6a 0e                	push   $0xe
    28e0:	6a 08                	push   $0x8
    28e2:	68 99 88 00 00       	push   $0x8899
    28e7:	68 e9 00 00 00       	push   $0xe9
    28ec:	e8 5c ec ff ff       	call   0x154d
    28f1:	83 c4 10             	add    $0x10,%esp
    28f4:	6a 0e                	push   $0xe
    28f6:	6a 08                	push   $0x8
    28f8:	68 a6 88 00 00       	push   $0x88a6
    28fd:	68 ea 00 00 00       	push   $0xea
    2902:	e8 46 ec ff ff       	call   0x154d
    2907:	83 c4 10             	add    $0x10,%esp
    290a:	6a 0e                	push   $0xe
    290c:	6a 08                	push   $0x8
    290e:	68 b3 88 00 00       	push   $0x88b3
    2913:	68 eb 00 00 00       	push   $0xeb
    2918:	e8 30 ec ff ff       	call   0x154d
    291d:	83 c4 10             	add    $0x10,%esp
    2920:	6a 0e                	push   $0xe
    2922:	6a 08                	push   $0x8
    2924:	68 c0 88 00 00       	push   $0x88c0
    2929:	68 ec 00 00 00       	push   $0xec
    292e:	e8 1a ec ff ff       	call   0x154d
    2933:	83 c4 10             	add    $0x10,%esp
    2936:	6a 0e                	push   $0xe
    2938:	6a 08                	push   $0x8
    293a:	68 cd 88 00 00       	push   $0x88cd
    293f:	68 ed 00 00 00       	push   $0xed
    2944:	e8 04 ec ff ff       	call   0x154d
    2949:	83 c4 10             	add    $0x10,%esp
    294c:	6a 0e                	push   $0xe
    294e:	6a 08                	push   $0x8
    2950:	68 da 88 00 00       	push   $0x88da
    2955:	68 ee 00 00 00       	push   $0xee
    295a:	e8 ee eb ff ff       	call   0x154d
    295f:	83 c4 10             	add    $0x10,%esp
    2962:	6a 0e                	push   $0xe
    2964:	6a 08                	push   $0x8
    2966:	68 e7 88 00 00       	push   $0x88e7
    296b:	68 ef 00 00 00       	push   $0xef
    2970:	e8 d8 eb ff ff       	call   0x154d
    2975:	83 c4 10             	add    $0x10,%esp
    2978:	6a 0e                	push   $0xe
    297a:	6a 08                	push   $0x8
    297c:	68 f4 88 00 00       	push   $0x88f4
    2981:	68 f0 00 00 00       	push   $0xf0
    2986:	e8 c2 eb ff ff       	call   0x154d
    298b:	83 c4 10             	add    $0x10,%esp
    298e:	6a 0e                	push   $0xe
    2990:	6a 08                	push   $0x8
    2992:	68 01 89 00 00       	push   $0x8901
    2997:	68 f1 00 00 00       	push   $0xf1
    299c:	e8 ac eb ff ff       	call   0x154d
    29a1:	83 c4 10             	add    $0x10,%esp
    29a4:	6a 0e                	push   $0xe
    29a6:	6a 08                	push   $0x8
    29a8:	68 0e 89 00 00       	push   $0x890e
    29ad:	68 f2 00 00 00       	push   $0xf2
    29b2:	e8 96 eb ff ff       	call   0x154d
    29b7:	83 c4 10             	add    $0x10,%esp
    29ba:	6a 0e                	push   $0xe
    29bc:	6a 08                	push   $0x8
    29be:	68 1b 89 00 00       	push   $0x891b
    29c3:	68 f3 00 00 00       	push   $0xf3
    29c8:	e8 80 eb ff ff       	call   0x154d
    29cd:	83 c4 10             	add    $0x10,%esp
    29d0:	6a 0e                	push   $0xe
    29d2:	6a 08                	push   $0x8
    29d4:	68 28 89 00 00       	push   $0x8928
    29d9:	68 f4 00 00 00       	push   $0xf4
    29de:	e8 6a eb ff ff       	call   0x154d
    29e3:	83 c4 10             	add    $0x10,%esp
    29e6:	6a 0e                	push   $0xe
    29e8:	6a 08                	push   $0x8
    29ea:	68 35 89 00 00       	push   $0x8935
    29ef:	68 f5 00 00 00       	push   $0xf5
    29f4:	e8 54 eb ff ff       	call   0x154d
    29f9:	83 c4 10             	add    $0x10,%esp
    29fc:	6a 0e                	push   $0xe
    29fe:	6a 08                	push   $0x8
    2a00:	68 42 89 00 00       	push   $0x8942
    2a05:	68 f6 00 00 00       	push   $0xf6
    2a0a:	e8 3e eb ff ff       	call   0x154d
    2a0f:	83 c4 10             	add    $0x10,%esp
    2a12:	6a 0e                	push   $0xe
    2a14:	6a 08                	push   $0x8
    2a16:	68 4f 89 00 00       	push   $0x894f
    2a1b:	68 f7 00 00 00       	push   $0xf7
    2a20:	e8 28 eb ff ff       	call   0x154d
    2a25:	83 c4 10             	add    $0x10,%esp
    2a28:	6a 0e                	push   $0xe
    2a2a:	6a 08                	push   $0x8
    2a2c:	68 5c 89 00 00       	push   $0x895c
    2a31:	68 f8 00 00 00       	push   $0xf8
    2a36:	e8 12 eb ff ff       	call   0x154d
    2a3b:	83 c4 10             	add    $0x10,%esp
    2a3e:	6a 0e                	push   $0xe
    2a40:	6a 08                	push   $0x8
    2a42:	68 69 89 00 00       	push   $0x8969
    2a47:	68 f9 00 00 00       	push   $0xf9
    2a4c:	e8 fc ea ff ff       	call   0x154d
    2a51:	83 c4 10             	add    $0x10,%esp
    2a54:	6a 0e                	push   $0xe
    2a56:	6a 08                	push   $0x8
    2a58:	68 76 89 00 00       	push   $0x8976
    2a5d:	68 fa 00 00 00       	push   $0xfa
    2a62:	e8 e6 ea ff ff       	call   0x154d
    2a67:	83 c4 10             	add    $0x10,%esp
    2a6a:	6a 0e                	push   $0xe
    2a6c:	6a 08                	push   $0x8
    2a6e:	68 83 89 00 00       	push   $0x8983
    2a73:	68 fb 00 00 00       	push   $0xfb
    2a78:	e8 d0 ea ff ff       	call   0x154d
    2a7d:	83 c4 10             	add    $0x10,%esp
    2a80:	6a 0e                	push   $0xe
    2a82:	6a 08                	push   $0x8
    2a84:	68 90 89 00 00       	push   $0x8990
    2a89:	68 fc 00 00 00       	push   $0xfc
    2a8e:	e8 ba ea ff ff       	call   0x154d
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	6a 0e                	push   $0xe
    2a98:	6a 08                	push   $0x8
    2a9a:	68 9d 89 00 00       	push   $0x899d
    2a9f:	68 fd 00 00 00       	push   $0xfd
    2aa4:	e8 a4 ea ff ff       	call   0x154d
    2aa9:	83 c4 10             	add    $0x10,%esp
    2aac:	6a 0e                	push   $0xe
    2aae:	6a 08                	push   $0x8
    2ab0:	68 aa 89 00 00       	push   $0x89aa
    2ab5:	68 fe 00 00 00       	push   $0xfe
    2aba:	e8 8e ea ff ff       	call   0x154d
    2abf:	83 c4 10             	add    $0x10,%esp
    2ac2:	6a 0e                	push   $0xe
    2ac4:	6a 08                	push   $0x8
    2ac6:	68 b7 89 00 00       	push   $0x89b7
    2acb:	68 ff 00 00 00       	push   $0xff
    2ad0:	e8 78 ea ff ff       	call   0x154d
    2ad5:	83 c4 10             	add    $0x10,%esp
    2ad8:	90                   	nop
    2ad9:	c9                   	leave  
    2ada:	c3                   	ret    
    2adb:	55                   	push   %ebp
    2adc:	89 e5                	mov    %esp,%ebp
    2ade:	fb                   	sti    
    2adf:	90                   	nop
    2ae0:	5d                   	pop    %ebp
    2ae1:	c3                   	ret    
    2ae2:	55                   	push   %ebp
    2ae3:	89 e5                	mov    %esp,%ebp
    2ae5:	83 ec 08             	sub    $0x8,%esp
    2ae8:	e8 65 eb ff ff       	call   0x1652
    2aed:	e8 bc ea ff ff       	call   0x15ae
    2af2:	e8 ca 00 00 00       	call   0x2bc1
    2af7:	83 ec 0c             	sub    $0xc,%esp
    2afa:	68 80 00 00 00       	push   $0x80
    2aff:	e8 e3 ea ff ff       	call   0x15e7
    2b04:	83 c4 10             	add    $0x10,%esp
    2b07:	e8 34 ea ff ff       	call   0x1540
    2b0c:	e8 ca ff ff ff       	call   0x2adb
    2b11:	90                   	nop
    2b12:	c9                   	leave  
    2b13:	c3                   	ret    
    2b14:	55                   	push   %ebp
    2b15:	89 e5                	mov    %esp,%ebp
    2b17:	83 ec 08             	sub    $0x8,%esp
    2b1a:	8b 45 08             	mov    0x8(%ebp),%eax
    2b1d:	8b 40 24             	mov    0x24(%eax),%eax
    2b20:	8b 04 85 60 c9 00 00 	mov    0xc960(,%eax,4),%eax
    2b27:	85 c0                	test   %eax,%eax
    2b29:	74 18                	je     0x2b43
    2b2b:	8b 45 08             	mov    0x8(%ebp),%eax
    2b2e:	8b 40 24             	mov    0x24(%eax),%eax
    2b31:	8b 04 85 60 c9 00 00 	mov    0xc960(,%eax,4),%eax
    2b38:	83 ec 0c             	sub    $0xc,%esp
    2b3b:	ff 75 08             	push   0x8(%ebp)
    2b3e:	ff d0                	call   *%eax
    2b40:	83 c4 10             	add    $0x10,%esp
    2b43:	90                   	nop
    2b44:	c9                   	leave  
    2b45:	c3                   	ret    
    2b46:	55                   	push   %ebp
    2b47:	89 e5                	mov    %esp,%ebp
    2b49:	83 ec 08             	sub    $0x8,%esp
    2b4c:	8b 45 08             	mov    0x8(%ebp),%eax
    2b4f:	8b 40 24             	mov    0x24(%eax),%eax
    2b52:	83 f8 27             	cmp    $0x27,%eax
    2b55:	76 12                	jbe    0x2b69
    2b57:	83 ec 08             	sub    $0x8,%esp
    2b5a:	6a 20                	push   $0x20
    2b5c:	68 a0 00 00 00       	push   $0xa0
    2b61:	e8 2a 01 00 00       	call   0x2c90
    2b66:	83 c4 10             	add    $0x10,%esp
    2b69:	83 ec 08             	sub    $0x8,%esp
    2b6c:	6a 20                	push   $0x20
    2b6e:	6a 20                	push   $0x20
    2b70:	e8 1b 01 00 00       	call   0x2c90
    2b75:	83 c4 10             	add    $0x10,%esp
    2b78:	8b 45 08             	mov    0x8(%ebp),%eax
    2b7b:	8b 40 24             	mov    0x24(%eax),%eax
    2b7e:	8b 04 85 60 c9 00 00 	mov    0xc960(,%eax,4),%eax
    2b85:	85 c0                	test   %eax,%eax
    2b87:	74 18                	je     0x2ba1
    2b89:	8b 45 08             	mov    0x8(%ebp),%eax
    2b8c:	8b 40 24             	mov    0x24(%eax),%eax
    2b8f:	8b 04 85 60 c9 00 00 	mov    0xc960(,%eax,4),%eax
    2b96:	83 ec 0c             	sub    $0xc,%esp
    2b99:	ff 75 08             	push   0x8(%ebp)
    2b9c:	ff d0                	call   *%eax
    2b9e:	83 c4 10             	add    $0x10,%esp
    2ba1:	90                   	nop
    2ba2:	c9                   	leave  
    2ba3:	c3                   	ret    
    2ba4:	55                   	push   %ebp
    2ba5:	89 e5                	mov    %esp,%ebp
    2ba7:	83 ec 04             	sub    $0x4,%esp
    2baa:	8b 45 08             	mov    0x8(%ebp),%eax
    2bad:	88 45 fc             	mov    %al,-0x4(%ebp)
    2bb0:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    2bb4:	8b 55 0c             	mov    0xc(%ebp),%edx
    2bb7:	89 14 85 60 c9 00 00 	mov    %edx,0xc960(,%eax,4)
    2bbe:	90                   	nop
    2bbf:	c9                   	leave  
    2bc0:	c3                   	ret    
    2bc1:	55                   	push   %ebp
    2bc2:	89 e5                	mov    %esp,%ebp
    2bc4:	83 ec 08             	sub    $0x8,%esp
    2bc7:	83 ec 08             	sub    $0x8,%esp
    2bca:	6a 11                	push   $0x11
    2bcc:	6a 20                	push   $0x20
    2bce:	e8 bd 00 00 00       	call   0x2c90
    2bd3:	83 c4 10             	add    $0x10,%esp
    2bd6:	83 ec 08             	sub    $0x8,%esp
    2bd9:	6a 11                	push   $0x11
    2bdb:	68 a0 00 00 00       	push   $0xa0
    2be0:	e8 ab 00 00 00       	call   0x2c90
    2be5:	83 c4 10             	add    $0x10,%esp
    2be8:	83 ec 08             	sub    $0x8,%esp
    2beb:	6a 20                	push   $0x20
    2bed:	6a 21                	push   $0x21
    2bef:	e8 9c 00 00 00       	call   0x2c90
    2bf4:	83 c4 10             	add    $0x10,%esp
    2bf7:	83 ec 08             	sub    $0x8,%esp
    2bfa:	6a 28                	push   $0x28
    2bfc:	68 a1 00 00 00       	push   $0xa1
    2c01:	e8 8a 00 00 00       	call   0x2c90
    2c06:	83 c4 10             	add    $0x10,%esp
    2c09:	83 ec 08             	sub    $0x8,%esp
    2c0c:	6a 04                	push   $0x4
    2c0e:	6a 21                	push   $0x21
    2c10:	e8 7b 00 00 00       	call   0x2c90
    2c15:	83 c4 10             	add    $0x10,%esp
    2c18:	83 ec 08             	sub    $0x8,%esp
    2c1b:	6a 02                	push   $0x2
    2c1d:	68 a1 00 00 00       	push   $0xa1
    2c22:	e8 69 00 00 00       	call   0x2c90
    2c27:	83 c4 10             	add    $0x10,%esp
    2c2a:	83 ec 08             	sub    $0x8,%esp
    2c2d:	6a 01                	push   $0x1
    2c2f:	6a 21                	push   $0x21
    2c31:	e8 5a 00 00 00       	call   0x2c90
    2c36:	83 c4 10             	add    $0x10,%esp
    2c39:	83 ec 08             	sub    $0x8,%esp
    2c3c:	6a 01                	push   $0x1
    2c3e:	68 a1 00 00 00       	push   $0xa1
    2c43:	e8 48 00 00 00       	call   0x2c90
    2c48:	83 c4 10             	add    $0x10,%esp
    2c4b:	83 ec 08             	sub    $0x8,%esp
    2c4e:	6a 00                	push   $0x0
    2c50:	6a 21                	push   $0x21
    2c52:	e8 39 00 00 00       	call   0x2c90
    2c57:	83 c4 10             	add    $0x10,%esp
    2c5a:	83 ec 08             	sub    $0x8,%esp
    2c5d:	6a 00                	push   $0x0
    2c5f:	68 a1 00 00 00       	push   $0xa1
    2c64:	e8 27 00 00 00       	call   0x2c90
    2c69:	83 c4 10             	add    $0x10,%esp
    2c6c:	90                   	nop
    2c6d:	c9                   	leave  
    2c6e:	c3                   	ret    
    2c6f:	55                   	push   %ebp
    2c70:	89 e5                	mov    %esp,%ebp
    2c72:	83 ec 14             	sub    $0x14,%esp
    2c75:	8b 45 08             	mov    0x8(%ebp),%eax
    2c78:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    2c7c:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
    2c80:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    2c84:	89 c2                	mov    %eax,%edx
    2c86:	ec                   	in     (%dx),%al
    2c87:	88 45 ff             	mov    %al,-0x1(%ebp)
    2c8a:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
    2c8e:	c9                   	leave  
    2c8f:	c3                   	ret    
    2c90:	55                   	push   %ebp
    2c91:	89 e5                	mov    %esp,%ebp
    2c93:	83 ec 08             	sub    $0x8,%esp
    2c96:	8b 55 08             	mov    0x8(%ebp),%edx
    2c99:	8b 45 0c             	mov    0xc(%ebp),%eax
    2c9c:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
    2ca0:	88 45 f8             	mov    %al,-0x8(%ebp)
    2ca3:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    2ca7:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
    2cab:	ee                   	out    %al,(%dx)
    2cac:	90                   	nop
    2cad:	c9                   	leave  
    2cae:	c3                   	ret    
    2caf:	55                   	push   %ebp
    2cb0:	89 e5                	mov    %esp,%ebp
    2cb2:	83 ec 28             	sub    $0x28,%esp
    2cb5:	c7 45 df 49 6e 69 74 	movl   $0x74696e49,-0x21(%ebp)
    2cbc:	c7 45 e3 69 61 6c 69 	movl   $0x696c6169,-0x1d(%ebp)
    2cc3:	c7 45 e7 7a 69 6e 67 	movl   $0x676e697a,-0x19(%ebp)
    2cca:	c7 45 eb 20 6b 65 79 	movl   $0x79656b20,-0x15(%ebp)
    2cd1:	c7 45 ef 62 6f 61 72 	movl   $0x72616f62,-0x11(%ebp)
    2cd8:	c7 45 f3 64 2e 2e 2e 	movl   $0x2e2e2e64,-0xd(%ebp)
    2cdf:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
    2ce3:	83 ec 08             	sub    $0x8,%esp
    2ce6:	68 17 a9 00 00       	push   $0xa917
    2ceb:	6a 21                	push   $0x21
    2ced:	e8 b2 fe ff ff       	call   0x2ba4
    2cf2:	83 c4 10             	add    $0x10,%esp
    2cf5:	83 ec 0c             	sub    $0xc,%esp
    2cf8:	6a 21                	push   $0x21
    2cfa:	e8 11 e9 ff ff       	call   0x1610
    2cff:	83 c4 10             	add    $0x10,%esp
    2d02:	6a 02                	push   $0x2
    2d04:	6a 00                	push   $0x0
    2d06:	6a 0f                	push   $0xf
    2d08:	8d 45 df             	lea    -0x21(%ebp),%eax
    2d0b:	50                   	push   %eax
    2d0c:	e8 b4 e4 ff ff       	call   0x11c5
    2d11:	83 c4 10             	add    $0x10,%esp
    2d14:	90                   	nop
    2d15:	c9                   	leave  
    2d16:	c3                   	ret    
    2d17:	55                   	push   %ebp
    2d18:	89 e5                	mov    %esp,%ebp
    2d1a:	83 ec 28             	sub    $0x28,%esp
    2d1d:	83 ec 0c             	sub    $0xc,%esp
    2d20:	6a 60                	push   $0x60
    2d22:	e8 48 ff ff ff       	call   0x2c6f
    2d27:	83 c4 10             	add    $0x10,%esp
    2d2a:	88 45 f7             	mov    %al,-0x9(%ebp)
    2d2d:	80 7d f7 39          	cmpb   $0x39,-0x9(%ebp)
    2d31:	77 43                	ja     0x2d76
    2d33:	c7 45 e1 4b 65 79 62 	movl   $0x6279654b,-0x1f(%ebp)
    2d3a:	c7 45 e5 6f 61 72 64 	movl   $0x6472616f,-0x1b(%ebp)
    2d41:	c7 45 e9 20 69 6e 74 	movl   $0x746e6920,-0x17(%ebp)
    2d48:	c7 45 ed 65 72 72 75 	movl   $0x75727265,-0x13(%ebp)
    2d4f:	c7 45 f1 70 74 20 25 	movl   $0x25207470,-0xf(%ebp)
    2d56:	66 c7 45 f5 64 00    	movw   $0x64,-0xb(%ebp)
    2d5c:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2d60:	83 ec 0c             	sub    $0xc,%esp
    2d63:	50                   	push   %eax
    2d64:	6a 05                	push   $0x5
    2d66:	6a 00                	push   $0x0
    2d68:	6a 0f                	push   $0xf
    2d6a:	8d 45 e1             	lea    -0x1f(%ebp),%eax
    2d6d:	50                   	push   %eax
    2d6e:	e8 52 e4 ff ff       	call   0x11c5
    2d73:	83 c4 20             	add    $0x20,%esp
    2d76:	90                   	nop
    2d77:	c9                   	leave  
    2d78:	c3                   	ret    
    2d79:	55                   	push   %ebp
    2d7a:	89 e5                	mov    %esp,%ebp
    2d7c:	83 ec 18             	sub    $0x18,%esp
    2d7f:	66 c7 45 f0 00 00    	movw   $0x0,-0x10(%ebp)
    2d85:	c6 45 f2 00          	movb   $0x0,-0xe(%ebp)
    2d89:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
    2d8d:	83 ec 0c             	sub    $0xc,%esp
    2d90:	6a 0f                	push   $0xf
    2d92:	68 9a 00 00 00       	push   $0x9a
    2d97:	6a ff                	push   $0xffffffff
    2d99:	ff 75 f0             	push   -0x10(%ebp)
    2d9c:	6a 06                	push   $0x6
    2d9e:	e8 bd 00 00 00       	call   0x2e60
    2da3:	83 c4 20             	add    $0x20,%esp
    2da6:	66 c7 45 f4 00 00    	movw   $0x0,-0xc(%ebp)
    2dac:	c6 45 f6 00          	movb   $0x0,-0xa(%ebp)
    2db0:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
    2db4:	83 ec 0c             	sub    $0xc,%esp
    2db7:	6a 0f                	push   $0xf
    2db9:	68 92 00 00 00       	push   $0x92
    2dbe:	6a ff                	push   $0xffffffff
    2dc0:	ff 75 f4             	push   -0xc(%ebp)
    2dc3:	6a 07                	push   $0x7
    2dc5:	e8 96 00 00 00       	call   0x2e60
    2dca:	83 c4 20             	add    $0x20,%esp
    2dcd:	e8 14 01 00 00       	call   0x2ee6
    2dd2:	e8 62 e8 ff ff       	call   0x1639
    2dd7:	90                   	nop
    2dd8:	c9                   	leave  
    2dd9:	c3                   	ret    
    2dda:	55                   	push   %ebp
    2ddb:	89 e5                	mov    %esp,%ebp
    2ddd:	83 ec 48             	sub    $0x48,%esp
    2de0:	b9 00 00 00 00       	mov    $0x0,%ecx
    2de5:	b8 1c 00 00 00       	mov    $0x1c,%eax
    2dea:	83 e0 fc             	and    $0xfffffffc,%eax
    2ded:	89 c2                	mov    %eax,%edx
    2def:	b8 00 00 00 00       	mov    $0x0,%eax
    2df4:	89 4c 05 dc          	mov    %ecx,-0x24(%ebp,%eax,1)
    2df8:	83 c0 04             	add    $0x4,%eax
    2dfb:	39 d0                	cmp    %edx,%eax
    2dfd:	72 f5                	jb     0x2df4
    2dff:	b9 00 00 00 00       	mov    $0x0,%ecx
    2e04:	b8 1c 00 00 00       	mov    $0x1c,%eax
    2e09:	83 e0 fc             	and    $0xfffffffc,%eax
    2e0c:	89 c2                	mov    %eax,%edx
    2e0e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e13:	89 4c 05 c0          	mov    %ecx,-0x40(%ebp,%eax,1)
    2e17:	83 c0 04             	add    $0x4,%eax
    2e1a:	39 d0                	cmp    %edx,%eax
    2e1c:	72 f5                	jb     0x2e13
    2e1e:	66 c7 45 ea 00 4f    	movw   $0x4f00,-0x16(%ebp)
    2e24:	66 c7 45 dc 00 7e    	movw   $0x7e00,-0x24(%ebp)
    2e2a:	83 ec 04             	sub    $0x4,%esp
    2e2d:	8d 45 c0             	lea    -0x40(%ebp),%eax
    2e30:	50                   	push   %eax
    2e31:	8d 45 dc             	lea    -0x24(%ebp),%eax
    2e34:	50                   	push   %eax
    2e35:	6a 10                	push   $0x10
    2e37:	e8 1e 00 00 00       	call   0x2e5a
    2e3c:	83 c4 10             	add    $0x10,%esp
    2e3f:	b8 00 00 00 00       	mov    $0x0,%eax
    2e44:	c9                   	leave  
    2e45:	c3                   	ret    
    2e46:	55                   	push   %ebp
    2e47:	89 e5                	mov    %esp,%ebp
    2e49:	83 ec 08             	sub    $0x8,%esp
    2e4c:	e8 28 ff ff ff       	call   0x2d79
    2e51:	e8 84 ff ff ff       	call   0x2dda
    2e56:	85 c0                	test   %eax,%eax
    2e58:	c9                   	leave  
    2e59:	c3                   	ret    
    2e5a:	55                   	push   %ebp
    2e5b:	89 e5                	mov    %esp,%ebp
    2e5d:	90                   	nop
    2e5e:	5d                   	pop    %ebp
    2e5f:	c3                   	ret    
    2e60:	55                   	push   %ebp
    2e61:	89 e5                	mov    %esp,%ebp
    2e63:	57                   	push   %edi
    2e64:	56                   	push   %esi
    2e65:	53                   	push   %ebx
    2e66:	83 ec 0c             	sub    $0xc,%esp
    2e69:	8b 4d 08             	mov    0x8(%ebp),%ecx
    2e6c:	8b 55 14             	mov    0x14(%ebp),%edx
    2e6f:	8b 45 18             	mov    0x18(%ebp),%eax
    2e72:	88 4d f0             	mov    %cl,-0x10(%ebp)
    2e75:	88 55 ec             	mov    %dl,-0x14(%ebp)
    2e78:	88 45 e8             	mov    %al,-0x18(%ebp)
    2e7b:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
    2e7f:	8b 55 10             	mov    0x10(%ebp),%edx
    2e82:	89 d6                	mov    %edx,%esi
    2e84:	0f b7 5d 0c          	movzwl 0xc(%ebp),%ebx
    2e88:	0f b6 4d 0e          	movzbl 0xe(%ebp),%ecx
    2e8c:	8b 55 10             	mov    0x10(%ebp),%edx
    2e8f:	c1 ea 10             	shr    $0x10,%edx
    2e92:	89 d7                	mov    %edx,%edi
    2e94:	83 e7 0f             	and    $0xf,%edi
    2e97:	0f b6 55 e8          	movzbl -0x18(%ebp),%edx
    2e9b:	83 e2 10             	and    $0x10,%edx
    2e9e:	09 d7                	or     %edx,%edi
    2ea0:	89 fa                	mov    %edi,%edx
    2ea2:	88 55 eb             	mov    %dl,-0x15(%ebp)
    2ea5:	0f b6 55 0f          	movzbl 0xf(%ebp),%edx
    2ea9:	66 89 34 c5 60 cd 00 	mov    %si,0xcd60(,%eax,8)
    2eb0:	00 
    2eb1:	66 89 1c c5 62 cd 00 	mov    %bx,0xcd62(,%eax,8)
    2eb8:	00 
    2eb9:	88 0c c5 64 cd 00 00 	mov    %cl,0xcd64(,%eax,8)
    2ec0:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
    2ec4:	88 0c c5 65 cd 00 00 	mov    %cl,0xcd65(,%eax,8)
    2ecb:	0f b6 5d eb          	movzbl -0x15(%ebp),%ebx
    2ecf:	88 1c c5 66 cd 00 00 	mov    %bl,0xcd66(,%eax,8)
    2ed6:	88 14 c5 67 cd 00 00 	mov    %dl,0xcd67(,%eax,8)
    2edd:	90                   	nop
    2ede:	83 c4 0c             	add    $0xc,%esp
    2ee1:	5b                   	pop    %ebx
    2ee2:	5e                   	pop    %esi
    2ee3:	5f                   	pop    %edi
    2ee4:	5d                   	pop    %ebp
    2ee5:	c3                   	ret    
    2ee6:	55                   	push   %ebp
    2ee7:	89 e5                	mov    %esp,%ebp
    2ee9:	66 c7 05 a0 cd 00 00 	movw   $0x3f,0xcda0
    2ef0:	3f 00 
    2ef2:	b8 60 cd 00 00       	mov    $0xcd60,%eax
    2ef7:	a3 a2 cd 00 00       	mov    %eax,0xcda2
    2efc:	90                   	nop
    2efd:	5d                   	pop    %ebp
    2efe:	c3                   	ret    
    2eff:	00 14 00             	add    %dl,(%eax,%eax,1)
    2f02:	00 00                	add    %al,(%eax)
    2f04:	00 00                	add    %al,(%eax)
    2f06:	00 00                	add    %al,(%eax)
    2f08:	01 7a 52             	add    %edi,0x52(%edx)
    2f0b:	00 01                	add    %al,(%ecx)
    2f0d:	7c 08                	jl     0x2f17
    2f0f:	01 1b                	add    %ebx,(%ebx)
    2f11:	0c 04                	or     $0x4,%al
    2f13:	04 88                	add    $0x88,%al
    2f15:	01 00                	add    %eax,(%eax)
    2f17:	00 1c 00             	add    %bl,(%eax,%eax,1)
    2f1a:	00 00                	add    %al,(%eax)
    2f1c:	1c 00                	sbb    $0x0,%al
    2f1e:	00 00                	add    %al,(%eax)
    2f20:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    2f21:	e0 ff                	loopne 0x2f22
    2f23:	ff 1d 00 00 00 00    	lcall  *0x0
    2f29:	41                   	inc    %ecx
    2f2a:	0e                   	push   %cs
    2f2b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    2f31:	59                   	pop    %ecx
    2f32:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    2f35:	04 00                	add    $0x0,%al
    2f37:	00 18                	add    %bl,(%eax)
    2f39:	00 00                	add    %al,(%eax)
    2f3b:	00 3c 00             	add    %bh,(%eax,%eax,1)
    2f3e:	00 00                	add    %al,(%eax)
    2f40:	a2 e0 ff ff 0d       	mov    %al,0xdffffe0
    2f45:	00 00                	add    %al,(%eax)
    2f47:	00 00                	add    %al,(%eax)
    2f49:	41                   	inc    %ecx
    2f4a:	0e                   	push   %cs
    2f4b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    2f51:	00 00                	add    %al,(%eax)
    2f53:	00 14 00             	add    %dl,(%eax,%eax,1)
    2f56:	00 00                	add    %al,(%eax)
    2f58:	00 00                	add    %al,(%eax)
    2f5a:	00 00                	add    %al,(%eax)
    2f5c:	01 7a 52             	add    %edi,0x52(%edx)
    2f5f:	00 01                	add    %al,(%ecx)
    2f61:	7c 08                	jl     0x2f6b
    2f63:	01 1b                	add    %ebx,(%ebx)
    2f65:	0c 04                	or     $0x4,%al
    2f67:	04 88                	add    $0x88,%al
    2f69:	01 00                	add    %eax,(%eax)
    2f6b:	00 1c 00             	add    %bl,(%eax,%eax,1)
    2f6e:	00 00                	add    %al,(%eax)
    2f70:	1c 00                	sbb    $0x0,%al
    2f72:	00 00                	add    %al,(%eax)
    2f74:	7b e0                	jnp    0x2f56
    2f76:	ff                   	(bad)  
    2f77:	ff 35 00 00 00 00    	push   0x0
    2f7d:	41                   	inc    %ecx
    2f7e:	0e                   	push   %cs
    2f7f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    2f85:	71 c5                	jno    0x2f4c
    2f87:	0c 04                	or     $0x4,%al
    2f89:	04 00                	add    $0x0,%al
    2f8b:	00 14 00             	add    %dl,(%eax,%eax,1)
    2f8e:	00 00                	add    %al,(%eax)
    2f90:	00 00                	add    %al,(%eax)
    2f92:	00 00                	add    %al,(%eax)
    2f94:	01 7a 52             	add    %edi,0x52(%edx)
    2f97:	00 01                	add    %al,(%ecx)
    2f99:	7c 08                	jl     0x2fa3
    2f9b:	01 1b                	add    %ebx,(%ebx)
    2f9d:	0c 04                	or     $0x4,%al
    2f9f:	04 88                	add    $0x88,%al
    2fa1:	01 00                	add    %eax,(%eax)
    2fa3:	00 1c 00             	add    %bl,(%eax,%eax,1)
    2fa6:	00 00                	add    %al,(%eax)
    2fa8:	1c 00                	sbb    $0x0,%al
    2faa:	00 00                	add    %al,(%eax)
    2fac:	78 e0                	js     0x2f8e
    2fae:	ff                   	(bad)  
    2faf:	ff 2c 00             	ljmp   *(%eax,%eax,1)
    2fb2:	00 00                	add    %al,(%eax)
    2fb4:	00 41 0e             	add    %al,0xe(%ecx)
    2fb7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    2fbd:	68 c5 0c 04 04       	push   $0x4040cc5
    2fc2:	00 00                	add    %al,(%eax)
    2fc4:	20 00                	and    %al,(%eax)
    2fc6:	00 00                	add    %al,(%eax)
    2fc8:	3c 00                	cmp    $0x0,%al
    2fca:	00 00                	add    %al,(%eax)
    2fcc:	84 e0                	test   %ah,%al
    2fce:	ff                   	(bad)  
    2fcf:	ff 6f 00             	ljmp   *0x0(%edi)
    2fd2:	00 00                	add    %al,(%eax)
    2fd4:	00 41 0e             	add    %al,0xe(%ecx)
    2fd7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    2fdd:	44                   	inc    %esp
    2fde:	83 03 02             	addl   $0x2,(%ebx)
    2fe1:	67 c5 c3 0c          	(bad)
    2fe5:	04 04                	add    $0x4,%al
    2fe7:	00 24 00             	add    %ah,(%eax,%eax,1)
    2fea:	00 00                	add    %al,(%eax)
    2fec:	60                   	pusha  
    2fed:	00 00                	add    %al,(%eax)
    2fef:	00 cf                	add    %cl,%bh
    2ff1:	e0 ff                	loopne 0x2ff2
    2ff3:	ff 8e 00 00 00 00    	decl   0x0(%esi)
    2ff9:	41                   	inc    %ecx
    2ffa:	0e                   	push   %cs
    2ffb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3001:	45                   	inc    %ebp
    3002:	86 03                	xchg   %al,(%ebx)
    3004:	83 04 02 83          	addl   $0xffffff83,(%edx,%eax,1)
    3008:	c3                   	ret    
    3009:	41                   	inc    %ecx
    300a:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
    300e:	04 04                	add    $0x4,%al
    3010:	1c 00                	sbb    $0x0,%al
    3012:	00 00                	add    %al,(%eax)
    3014:	88 00                	mov    %al,(%eax)
    3016:	00 00                	add    %al,(%eax)
    3018:	35 e1 ff ff 78       	xor    $0x78ffffe1,%eax
    301d:	00 00                	add    %al,(%eax)
    301f:	00 00                	add    %al,(%eax)
    3021:	41                   	inc    %ecx
    3022:	0e                   	push   %cs
    3023:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3029:	02 74 c5 0c          	add    0xc(%ebp,%eax,8),%dh
    302d:	04 04                	add    $0x4,%al
    302f:	00 28                	add    %ch,(%eax)
    3031:	00 00                	add    %al,(%eax)
    3033:	00 a8 00 00 00 8d    	add    %ch,-0x73000000(%eax)
    3039:	e1 ff                	loope  0x303a
    303b:	ff ab 01 00 00 00    	ljmp   *0x1(%ebx)
    3041:	41                   	inc    %ecx
    3042:	0e                   	push   %cs
    3043:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3049:	45                   	inc    %ebp
    304a:	86 03                	xchg   %al,(%ebx)
    304c:	83 04 03 a0          	addl   $0xffffffa0,(%ebx,%eax,1)
    3050:	01 c3                	add    %eax,%ebx
    3052:	41                   	inc    %ecx
    3053:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
    3057:	04 04                	add    $0x4,%al
    3059:	00 00                	add    %al,(%eax)
    305b:	00 14 00             	add    %dl,(%eax,%eax,1)
    305e:	00 00                	add    %al,(%eax)
    3060:	00 00                	add    %al,(%eax)
    3062:	00 00                	add    %al,(%eax)
    3064:	01 7a 52             	add    %edi,0x52(%edx)
    3067:	00 01                	add    %al,(%ecx)
    3069:	7c 08                	jl     0x3073
    306b:	01 1b                	add    %ebx,(%ebx)
    306d:	0c 04                	or     $0x4,%al
    306f:	04 88                	add    $0x88,%al
    3071:	01 00                	add    %eax,(%eax)
    3073:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3076:	00 00                	add    %al,(%eax)
    3078:	1c 00                	sbb    $0x0,%al
    307a:	00 00                	add    %al,(%eax)
    307c:	f4                   	hlt    
    307d:	e2 ff                	loop   0x307e
    307f:	ff 5c 00 00          	lcall  *0x0(%eax,%eax,1)
    3083:	00 00                	add    %al,(%eax)
    3085:	41                   	inc    %ecx
    3086:	0e                   	push   %cs
    3087:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    308d:	02 58 c5             	add    -0x3b(%eax),%bl
    3090:	0c 04                	or     $0x4,%al
    3092:	04 00                	add    $0x0,%al
    3094:	14 00                	adc    $0x0,%al
    3096:	00 00                	add    %al,(%eax)
    3098:	00 00                	add    %al,(%eax)
    309a:	00 00                	add    %al,(%eax)
    309c:	01 7a 52             	add    %edi,0x52(%edx)
    309f:	00 01                	add    %al,(%ecx)
    30a1:	7c 08                	jl     0x30ab
    30a3:	01 1b                	add    %ebx,(%ebx)
    30a5:	0c 04                	or     $0x4,%al
    30a7:	04 88                	add    $0x88,%al
    30a9:	01 00                	add    %eax,(%eax)
    30ab:	00 1c 00             	add    %bl,(%eax,%eax,1)
    30ae:	00 00                	add    %al,(%eax)
    30b0:	1c 00                	sbb    $0x0,%al
    30b2:	00 00                	add    %al,(%eax)
    30b4:	18 e3                	sbb    %ah,%bl
    30b6:	ff                   	(bad)  
    30b7:	ff                   	(bad)  
    30b8:	d9 00                	flds   (%eax)
    30ba:	00 00                	add    %al,(%eax)
    30bc:	00 41 0e             	add    %al,0xe(%ecx)
    30bf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    30c5:	02 d5                	add    %ch,%dl
    30c7:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    30ca:	04 00                	add    $0x0,%al
    30cc:	14 00                	adc    $0x0,%al
    30ce:	00 00                	add    %al,(%eax)
    30d0:	00 00                	add    %al,(%eax)
    30d2:	00 00                	add    %al,(%eax)
    30d4:	01 7a 52             	add    %edi,0x52(%edx)
    30d7:	00 01                	add    %al,(%ecx)
    30d9:	7c 08                	jl     0x30e3
    30db:	01 1b                	add    %ebx,(%ebx)
    30dd:	0c 04                	or     $0x4,%al
    30df:	04 88                	add    $0x88,%al
    30e1:	01 00                	add    %eax,(%eax)
    30e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
    30e6:	00 00                	add    %al,(%eax)
    30e8:	1c 00                	sbb    $0x0,%al
    30ea:	00 00                	add    %al,(%eax)
    30ec:	b9 e3 ff ff 34       	mov    $0x34ffffe3,%ecx
    30f1:	00 00                	add    %al,(%eax)
    30f3:	00 00                	add    %al,(%eax)
    30f5:	41                   	inc    %ecx
    30f6:	0e                   	push   %cs
    30f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    30fd:	70 c5                	jo     0x30c4
    30ff:	0c 04                	or     $0x4,%al
    3101:	04 00                	add    $0x0,%al
    3103:	00 14 00             	add    %dl,(%eax,%eax,1)
    3106:	00 00                	add    %al,(%eax)
    3108:	00 00                	add    %al,(%eax)
    310a:	00 00                	add    %al,(%eax)
    310c:	01 7a 52             	add    %edi,0x52(%edx)
    310f:	00 01                	add    %al,(%ecx)
    3111:	7c 08                	jl     0x311b
    3113:	01 1b                	add    %ebx,(%ebx)
    3115:	0c 04                	or     $0x4,%al
    3117:	04 88                	add    $0x88,%al
    3119:	01 00                	add    %eax,(%eax)
    311b:	00 1c 00             	add    %bl,(%eax,%eax,1)
    311e:	00 00                	add    %al,(%eax)
    3120:	1c 00                	sbb    $0x0,%al
    3122:	00 00                	add    %al,(%eax)
    3124:	b5 e3                	mov    $0xe3,%ch
    3126:	ff                   	(bad)  
    3127:	ff 2c 00             	ljmp   *(%eax,%eax,1)
    312a:	00 00                	add    %al,(%eax)
    312c:	00 41 0e             	add    %al,0xe(%ecx)
    312f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3135:	68 c5 0c 04 04       	push   $0x4040cc5
    313a:	00 00                	add    %al,(%eax)
    313c:	14 00                	adc    $0x0,%al
    313e:	00 00                	add    %al,(%eax)
    3140:	00 00                	add    %al,(%eax)
    3142:	00 00                	add    %al,(%eax)
    3144:	01 7a 52             	add    %edi,0x52(%edx)
    3147:	00 01                	add    %al,(%ecx)
    3149:	7c 08                	jl     0x3153
    314b:	01 1b                	add    %ebx,(%ebx)
    314d:	0c 04                	or     $0x4,%al
    314f:	04 88                	add    $0x88,%al
    3151:	01 00                	add    %eax,(%eax)
    3153:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3156:	00 00                	add    %al,(%eax)
    3158:	1c 00                	sbb    $0x0,%al
    315a:	00 00                	add    %al,(%eax)
    315c:	a9 e3 ff ff 3b       	test   $0x3bffffe3,%eax
    3161:	00 00                	add    %al,(%eax)
    3163:	00 00                	add    %al,(%eax)
    3165:	41                   	inc    %ecx
    3166:	0e                   	push   %cs
    3167:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    316d:	77 c5                	ja     0x3134
    316f:	0c 04                	or     $0x4,%al
    3171:	04 00                	add    $0x0,%al
    3173:	00 14 00             	add    %dl,(%eax,%eax,1)
    3176:	00 00                	add    %al,(%eax)
    3178:	00 00                	add    %al,(%eax)
    317a:	00 00                	add    %al,(%eax)
    317c:	01 7a 52             	add    %edi,0x52(%edx)
    317f:	00 01                	add    %al,(%ecx)
    3181:	7c 08                	jl     0x318b
    3183:	01 1b                	add    %ebx,(%ebx)
    3185:	0c 04                	or     $0x4,%al
    3187:	04 88                	add    $0x88,%al
    3189:	01 00                	add    %eax,(%eax)
    318b:	00 1c 00             	add    %bl,(%eax,%eax,1)
    318e:	00 00                	add    %al,(%eax)
    3190:	1c 00                	sbb    $0x0,%al
    3192:	00 00                	add    %al,(%eax)
    3194:	ac                   	lods   %ds:(%esi),%al
    3195:	e3 ff                	jecxz  0x3196
    3197:	ff 0d 00 00 00 00    	decl   0x0
    319d:	41                   	inc    %ecx
    319e:	0e                   	push   %cs
    319f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    31a5:	49                   	dec    %ecx
    31a6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    31a9:	04 00                	add    $0x0,%al
    31ab:	00 20                	add    %ah,(%eax)
    31ad:	00 00                	add    %al,(%eax)
    31af:	00 3c 00             	add    %bh,(%eax,%eax,1)
    31b2:	00 00                	add    %al,(%eax)
    31b4:	99                   	cltd   
    31b5:	e3 ff                	jecxz  0x31b6
    31b7:	ff 61 00             	jmp    *0x0(%ecx)
    31ba:	00 00                	add    %al,(%eax)
    31bc:	00 41 0e             	add    %al,0xe(%ecx)
    31bf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    31c5:	44                   	inc    %esp
    31c6:	83 03 02             	addl   $0x2,(%ebx)
    31c9:	58                   	pop    %eax
    31ca:	c3                   	ret    
    31cb:	41                   	inc    %ecx
    31cc:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    31cf:	04 1c                	add    $0x1c,%al
    31d1:	00 00                	add    %al,(%eax)
    31d3:	00 60 00             	add    %ah,0x0(%eax)
    31d6:	00 00                	add    %al,(%eax)
    31d8:	d6                   	(bad)  
    31d9:	e3 ff                	jecxz  0x31da
    31db:	ff                   	(bad)  
    31dc:	39 00                	cmp    %eax,(%eax)
    31de:	00 00                	add    %al,(%eax)
    31e0:	00 41 0e             	add    %al,0xe(%ecx)
    31e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    31e9:	75 c5                	jne    0x31b0
    31eb:	0c 04                	or     $0x4,%al
    31ed:	04 00                	add    $0x0,%al
    31ef:	00 1c 00             	add    %bl,(%eax,%eax,1)
    31f2:	00 00                	add    %al,(%eax)
    31f4:	80 00 00             	addb   $0x0,(%eax)
    31f7:	00 ef                	add    %ch,%bh
    31f9:	e3 ff                	jecxz  0x31fa
    31fb:	ff 29                	ljmp   *(%ecx)
    31fd:	00 00                	add    %al,(%eax)
    31ff:	00 00                	add    %al,(%eax)
    3201:	41                   	inc    %ecx
    3202:	0e                   	push   %cs
    3203:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3209:	65 c5 0c 04          	lds    %gs:(%esp,%eax,1),%ecx
    320d:	04 00                	add    $0x0,%al
    320f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3212:	00 00                	add    %al,(%eax)
    3214:	a0 00 00 00 f8       	mov    0xf8000000,%al
    3219:	e3 ff                	jecxz  0x321a
    321b:	ff 29                	ljmp   *(%ecx)
    321d:	00 00                	add    %al,(%eax)
    321f:	00 00                	add    %al,(%eax)
    3221:	41                   	inc    %ecx
    3222:	0e                   	push   %cs
    3223:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3229:	65 c5 0c 04          	lds    %gs:(%esp,%eax,1),%ecx
    322d:	04 00                	add    $0x0,%al
    322f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3232:	00 00                	add    %al,(%eax)
    3234:	c0 00 00             	rolb   $0x0,(%eax)
    3237:	00 01                	add    %al,(%ecx)
    3239:	e4 ff                	in     $0xff,%al
    323b:	ff 19                	lcall  *(%ecx)
    323d:	00 00                	add    %al,(%eax)
    323f:	00 00                	add    %al,(%eax)
    3241:	41                   	inc    %ecx
    3242:	0e                   	push   %cs
    3243:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3249:	55                   	push   %ebp
    324a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    324d:	04 00                	add    $0x0,%al
    324f:	00 14 00             	add    %dl,(%eax,%eax,1)
    3252:	00 00                	add    %al,(%eax)
    3254:	00 00                	add    %al,(%eax)
    3256:	00 00                	add    %al,(%eax)
    3258:	01 7a 52             	add    %edi,0x52(%edx)
    325b:	00 01                	add    %al,(%ecx)
    325d:	7c 08                	jl     0x3267
    325f:	01 1b                	add    %ebx,(%ebx)
    3261:	0c 04                	or     $0x4,%al
    3263:	04 88                	add    $0x88,%al
    3265:	01 00                	add    %eax,(%eax)
    3267:	00 1c 00             	add    %bl,(%eax,%eax,1)
    326a:	00 00                	add    %al,(%eax)
    326c:	1c 00                	sbb    $0x0,%al
    326e:	00 00                	add    %al,(%eax)
    3270:	e2 e3                	loop   0x3255
    3272:	ff                   	(bad)  
    3273:	ff 89 14 00 00 00    	decl   0x14(%ecx)
    3279:	41                   	inc    %ecx
    327a:	0e                   	push   %cs
    327b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3281:	03 85 14 c5 0c 04    	add    0x40cc514(%ebp),%eax
    3287:	04 1c                	add    $0x1c,%al
    3289:	00 00                	add    %al,(%eax)
    328b:	00 3c 00             	add    %bh,(%eax,%eax,1)
    328e:	00 00                	add    %al,(%eax)
    3290:	4b                   	dec    %ebx
    3291:	f8                   	clc    
    3292:	ff                   	(bad)  
    3293:	ff 07                	incl   (%edi)
    3295:	00 00                	add    %al,(%eax)
    3297:	00 00                	add    %al,(%eax)
    3299:	41                   	inc    %ecx
    329a:	0e                   	push   %cs
    329b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    32a1:	43                   	inc    %ebx
    32a2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    32a5:	04 00                	add    $0x0,%al
    32a7:	00 1c 00             	add    %bl,(%eax,%eax,1)
    32aa:	00 00                	add    %al,(%eax)
    32ac:	5c                   	pop    %esp
    32ad:	00 00                	add    %al,(%eax)
    32af:	00 32                	add    %dh,(%edx)
    32b1:	f8                   	clc    
    32b2:	ff                   	(bad)  
    32b3:	ff 32                	push   (%edx)
    32b5:	00 00                	add    %al,(%eax)
    32b7:	00 00                	add    %al,(%eax)
    32b9:	41                   	inc    %ecx
    32ba:	0e                   	push   %cs
    32bb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    32c1:	6e                   	outsb  %ds:(%esi),(%dx)
    32c2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    32c5:	04 00                	add    $0x0,%al
    32c7:	00 14 00             	add    %dl,(%eax,%eax,1)
    32ca:	00 00                	add    %al,(%eax)
    32cc:	00 00                	add    %al,(%eax)
    32ce:	00 00                	add    %al,(%eax)
    32d0:	01 7a 52             	add    %edi,0x52(%edx)
    32d3:	00 01                	add    %al,(%ecx)
    32d5:	7c 08                	jl     0x32df
    32d7:	01 1b                	add    %ebx,(%ebx)
    32d9:	0c 04                	or     $0x4,%al
    32db:	04 88                	add    $0x88,%al
    32dd:	01 00                	add    %eax,(%eax)
    32df:	00 1c 00             	add    %bl,(%eax,%eax,1)
    32e2:	00 00                	add    %al,(%eax)
    32e4:	1c 00                	sbb    $0x0,%al
    32e6:	00 00                	add    %al,(%eax)
    32e8:	2c f8                	sub    $0xf8,%al
    32ea:	ff                   	(bad)  
    32eb:	ff 32                	push   (%edx)
    32ed:	00 00                	add    %al,(%eax)
    32ef:	00 00                	add    %al,(%eax)
    32f1:	41                   	inc    %ecx
    32f2:	0e                   	push   %cs
    32f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    32f9:	6e                   	outsb  %ds:(%esi),(%dx)
    32fa:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    32fd:	04 00                	add    $0x0,%al
    32ff:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3302:	00 00                	add    %al,(%eax)
    3304:	3c 00                	cmp    $0x0,%al
    3306:	00 00                	add    %al,(%eax)
    3308:	3e f8                	ds clc 
    330a:	ff                   	(bad)  
    330b:	ff 5e 00             	lcall  *0x0(%esi)
    330e:	00 00                	add    %al,(%eax)
    3310:	00 41 0e             	add    %al,0xe(%ecx)
    3313:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3319:	02 5a c5             	add    -0x3b(%edx),%bl
    331c:	0c 04                	or     $0x4,%al
    331e:	04 00                	add    $0x0,%al
    3320:	1c 00                	sbb    $0x0,%al
    3322:	00 00                	add    %al,(%eax)
    3324:	5c                   	pop    %esp
    3325:	00 00                	add    %al,(%eax)
    3327:	00 7c f8 ff          	add    %bh,-0x1(%eax,%edi,8)
    332b:	ff 1d 00 00 00 00    	lcall  *0x0
    3331:	41                   	inc    %ecx
    3332:	0e                   	push   %cs
    3333:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3339:	59                   	pop    %ecx
    333a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    333d:	04 00                	add    $0x0,%al
    333f:	00 14 00             	add    %dl,(%eax,%eax,1)
    3342:	00 00                	add    %al,(%eax)
    3344:	00 00                	add    %al,(%eax)
    3346:	00 00                	add    %al,(%eax)
    3348:	01 7a 52             	add    %edi,0x52(%edx)
    334b:	00 01                	add    %al,(%ecx)
    334d:	7c 08                	jl     0x3357
    334f:	01 1b                	add    %ebx,(%ebx)
    3351:	0c 04                	or     $0x4,%al
    3353:	04 88                	add    $0x88,%al
    3355:	01 00                	add    %eax,(%eax)
    3357:	00 1c 00             	add    %bl,(%eax,%eax,1)
    335a:	00 00                	add    %al,(%eax)
    335c:	1c 00                	sbb    $0x0,%al
    335e:	00 00                	add    %al,(%eax)
    3360:	61                   	popa   
    3361:	f8                   	clc    
    3362:	ff                   	(bad)  
    3363:	ff ae 00 00 00 00    	ljmp   *0x0(%esi)
    3369:	41                   	inc    %ecx
    336a:	0e                   	push   %cs
    336b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3371:	02 aa c5 0c 04 04    	add    0x4040cc5(%edx),%ch
    3377:	00 14 00             	add    %dl,(%eax,%eax,1)
    337a:	00 00                	add    %al,(%eax)
    337c:	00 00                	add    %al,(%eax)
    337e:	00 00                	add    %al,(%eax)
    3380:	01 7a 52             	add    %edi,0x52(%edx)
    3383:	00 01                	add    %al,(%ecx)
    3385:	7c 08                	jl     0x338f
    3387:	01 1b                	add    %ebx,(%ebx)
    3389:	0c 04                	or     $0x4,%al
    338b:	04 88                	add    $0x88,%al
    338d:	01 00                	add    %eax,(%eax)
    338f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3392:	00 00                	add    %al,(%eax)
    3394:	1c 00                	sbb    $0x0,%al
    3396:	00 00                	add    %al,(%eax)
    3398:	d7                   	xlat   %ds:(%ebx)
    3399:	f8                   	clc    
    339a:	ff                   	(bad)  
    339b:	ff 21                	jmp    *(%ecx)
    339d:	00 00                	add    %al,(%eax)
    339f:	00 00                	add    %al,(%eax)
    33a1:	41                   	inc    %ecx
    33a2:	0e                   	push   %cs
    33a3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    33a9:	5d                   	pop    %ebp
    33aa:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    33ad:	04 00                	add    $0x0,%al
    33af:	00 1c 00             	add    %bl,(%eax,%eax,1)
    33b2:	00 00                	add    %al,(%eax)
    33b4:	3c 00                	cmp    $0x0,%al
    33b6:	00 00                	add    %al,(%eax)
    33b8:	d8 f8                	fdivr  %st(0),%st
    33ba:	ff                   	(bad)  
    33bb:	ff 1f                	lcall  *(%edi)
    33bd:	00 00                	add    %al,(%eax)
    33bf:	00 00                	add    %al,(%eax)
    33c1:	41                   	inc    %ecx
    33c2:	0e                   	push   %cs
    33c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    33c9:	5b                   	pop    %ebx
    33ca:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    33cd:	04 00                	add    $0x0,%al
    33cf:	00 14 00             	add    %dl,(%eax,%eax,1)
    33d2:	00 00                	add    %al,(%eax)
    33d4:	00 00                	add    %al,(%eax)
    33d6:	00 00                	add    %al,(%eax)
    33d8:	01 7a 52             	add    %edi,0x52(%edx)
    33db:	00 01                	add    %al,(%ecx)
    33dd:	7c 08                	jl     0x33e7
    33df:	01 1b                	add    %ebx,(%ebx)
    33e1:	0c 04                	or     $0x4,%al
    33e3:	04 88                	add    $0x88,%al
    33e5:	01 00                	add    %eax,(%eax)
    33e7:	00 1c 00             	add    %bl,(%eax,%eax,1)
    33ea:	00 00                	add    %al,(%eax)
    33ec:	1c 00                	sbb    $0x0,%al
    33ee:	00 00                	add    %al,(%eax)
    33f0:	bf f8 ff ff 68       	mov    $0x68fffff8,%edi
    33f5:	00 00                	add    %al,(%eax)
    33f7:	00 00                	add    %al,(%eax)
    33f9:	41                   	inc    %ecx
    33fa:	0e                   	push   %cs
    33fb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3401:	02 64 c5 0c          	add    0xc(%ebp,%eax,8),%ah
    3405:	04 04                	add    $0x4,%al
    3407:	00 14 00             	add    %dl,(%eax,%eax,1)
    340a:	00 00                	add    %al,(%eax)
    340c:	00 00                	add    %al,(%eax)
    340e:	00 00                	add    %al,(%eax)
    3410:	01 7a 52             	add    %edi,0x52(%edx)
    3413:	00 01                	add    %al,(%ecx)
    3415:	7c 08                	jl     0x341f
    3417:	01 1b                	add    %ebx,(%ebx)
    3419:	0c 04                	or     $0x4,%al
    341b:	04 88                	add    $0x88,%al
    341d:	01 00                	add    %eax,(%eax)
    341f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    3422:	00 00                	add    %al,(%eax)
    3424:	1c 00                	sbb    $0x0,%al
    3426:	00 00                	add    %al,(%eax)
    3428:	ef                   	out    %eax,(%dx)
    3429:	f8                   	clc    
    342a:	ff                   	(bad)  
    342b:	ff 62 00             	jmp    *0x0(%edx)
    342e:	00 00                	add    %al,(%eax)
    3430:	00 41 0e             	add    %al,0xe(%ecx)
    3433:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3439:	02 5e c5             	add    -0x3b(%esi),%bl
    343c:	0c 04                	or     $0x4,%al
    343e:	04 00                	add    $0x0,%al
    3440:	14 00                	adc    $0x0,%al
    3442:	00 00                	add    %al,(%eax)
    3444:	00 00                	add    %al,(%eax)
    3446:	00 00                	add    %al,(%eax)
    3448:	01 7a 52             	add    %edi,0x52(%edx)
    344b:	00 01                	add    %al,(%ecx)
    344d:	7c 08                	jl     0x3457
    344f:	01 1b                	add    %ebx,(%ebx)
    3451:	0c 04                	or     $0x4,%al
    3453:	04 88                	add    $0x88,%al
    3455:	01 00                	add    %eax,(%eax)
    3457:	00 1c 00             	add    %bl,(%eax,%eax,1)
    345a:	00 00                	add    %al,(%eax)
    345c:	1c 00                	sbb    $0x0,%al
    345e:	00 00                	add    %al,(%eax)
    3460:	19 f9                	sbb    %edi,%ecx
    3462:	ff                   	(bad)  
    3463:	ff 61 00             	jmp    *0x0(%ecx)
    3466:	00 00                	add    %al,(%eax)
    3468:	00 41 0e             	add    %al,0xe(%ecx)
    346b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3471:	02 5d c5             	add    -0x3b(%ebp),%bl
    3474:	0c 04                	or     $0x4,%al
    3476:	04 00                	add    $0x0,%al
    3478:	1c 00                	sbb    $0x0,%al
    347a:	00 00                	add    %al,(%eax)
    347c:	3c 00                	cmp    $0x0,%al
    347e:	00 00                	add    %al,(%eax)
    3480:	5a                   	pop    %edx
    3481:	f9                   	stc    
    3482:	ff                   	(bad)  
    3483:	ff 6c 00 00          	ljmp   *0x0(%eax,%eax,1)
    3487:	00 00                	add    %al,(%eax)
    3489:	41                   	inc    %ecx
    348a:	0e                   	push   %cs
    348b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3491:	02 68 c5             	add    -0x3b(%eax),%ch
    3494:	0c 04                	or     $0x4,%al
    3496:	04 00                	add    $0x0,%al
    3498:	1c 00                	sbb    $0x0,%al
    349a:	00 00                	add    %al,(%eax)
    349c:	5c                   	pop    %esp
    349d:	00 00                	add    %al,(%eax)
    349f:	00 a6 f9 ff ff 14    	add    %ah,0x14fffff9(%esi)
    34a5:	00 00                	add    %al,(%eax)
    34a7:	00 00                	add    %al,(%eax)
    34a9:	41                   	inc    %ecx
    34aa:	0e                   	push   %cs
    34ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    34b1:	50                   	push   %eax
    34b2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    34b5:	04 00                	add    $0x0,%al
    34b7:	00 14 00             	add    %dl,(%eax,%eax,1)
    34ba:	00 00                	add    %al,(%eax)
    34bc:	00 00                	add    %al,(%eax)
    34be:	00 00                	add    %al,(%eax)
    34c0:	01 7a 52             	add    %edi,0x52(%edx)
    34c3:	00 01                	add    %al,(%ecx)
    34c5:	7c 08                	jl     0x34cf
    34c7:	01 1b                	add    %ebx,(%ebx)
    34c9:	0c 04                	or     $0x4,%al
    34cb:	04 88                	add    $0x88,%al
    34cd:	01 00                	add    %eax,(%eax)
    34cf:	00 1c 00             	add    %bl,(%eax,%eax,1)
    34d2:	00 00                	add    %al,(%eax)
    34d4:	1c 00                	sbb    $0x0,%al
    34d6:	00 00                	add    %al,(%eax)
    34d8:	82 f9 ff             	cmp    $0xff,%cl
    34db:	ff 06                	incl   (%esi)
    34dd:	00 00                	add    %al,(%eax)
    34df:	00 00                	add    %al,(%eax)
    34e1:	41                   	inc    %ecx
    34e2:	0e                   	push   %cs
    34e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    34e9:	42                   	inc    %edx
    34ea:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    34ed:	04 00                	add    $0x0,%al
    34ef:	00 14 00             	add    %dl,(%eax,%eax,1)
    34f2:	00 00                	add    %al,(%eax)
    34f4:	00 00                	add    %al,(%eax)
    34f6:	00 00                	add    %al,(%eax)
    34f8:	01 7a 52             	add    %edi,0x52(%edx)
    34fb:	00 01                	add    %al,(%ecx)
    34fd:	7c 08                	jl     0x3507
    34ff:	01 1b                	add    %ebx,(%ebx)
    3501:	0c 04                	or     $0x4,%al
    3503:	04 88                	add    $0x88,%al
    3505:	01 00                	add    %eax,(%eax)
    3507:	00 28                	add    %ch,(%eax)
    3509:	00 00                	add    %al,(%eax)
    350b:	00 1c 00             	add    %bl,(%eax,%eax,1)
    350e:	00 00                	add    %al,(%eax)
    3510:	50                   	push   %eax
    3511:	f9                   	stc    
    3512:	ff                   	(bad)  
    3513:	ff 86 00 00 00 00    	incl   0x0(%esi)
    3519:	41                   	inc    %ecx
    351a:	0e                   	push   %cs
    351b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    3521:	46                   	inc    %esi
    3522:	87 03                	xchg   %eax,(%ebx)
    3524:	86 04 83             	xchg   %al,(%ebx,%eax,4)
    3527:	05 02 79 c3 41       	add    $0x41c37902,%eax
    352c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
    3530:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    3533:	04 1c                	add    $0x1c,%al
    3535:	00 00                	add    %al,(%eax)
    3537:	00 48 00             	add    %cl,0x0(%eax)
    353a:	00 00                	add    %al,(%eax)
    353c:	aa                   	stos   %al,%es:(%edi)
    353d:	f9                   	stc    
    353e:	ff                   	(bad)  
    353f:	ff 19                	lcall  *(%ecx)
    3541:	00 00                	add    %al,(%eax)
    3543:	00 00                	add    %al,(%eax)
    3545:	41                   	inc    %ecx
    3546:	0e                   	push   %cs
    3547:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    354d:	55                   	push   %ebp
    354e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    3551:	04 00                	add    $0x0,%al
	...
    4553:	00 ff                	add    %bh,%bh
    4555:	07                   	pop    %es
    4556:	60                   	pusha  
    4557:	c1 00 00             	roll   $0x0,(%eax)
	...
