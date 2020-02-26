
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 26 5b 00 	movl   $0x5b26,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 b3 47 00 00       	call   47d0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 3a 5b 00 00 	movl   $0x5b3a,(%esp)
      2c:	e8 81 46 00 00       	call   46b2 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 a4 62 00 	movl   $0x62a4,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 87 47 00 00       	call   47d0 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 1d 46 00 00       	call   4672 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 3a 5b 00 00 	movl   $0x5b3a,(%esp)
      64:	e8 49 46 00 00       	call   46b2 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 29 46 00 00       	call   469a <close>

  argptest();
      71:	e8 2a 43 00 00       	call   43a0 <argptest>
  createdelete();
      76:	e8 95 15 00 00       	call   1610 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 7b 20 00 00       	call   2100 <linkunlink>
  concreate();
      85:	e8 d6 1c 00 00       	call   1d60 <concreate>
  fourfiles();
      8a:	e8 01 13 00 00       	call   1390 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 eb 10 00 00       	call   1180 <sharedfd>

  bigargtest();
      95:	e8 16 3f 00 00       	call   3fb0 <bigargtest>
  bigwrite();
      9a:	e8 b1 2c 00 00       	call   2d50 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 0b 3f 00 00       	call   3fb0 <bigargtest>
  bsstest();
      a5:	e8 86 3e 00 00       	call   3f30 <bsstest>
  sbrktest();
      aa:	e8 c1 38 00 00       	call   3970 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 9b 3d 00 00       	call   3e50 <validatetest>

  opentest();
      b5:	e8 66 04 00 00       	call   520 <opentest>
  writetest();
      ba:	e8 21 05 00 00       	call   5e0 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 5b 07 00 00       	call   820 <writetest1>
  createtest();
      c5:	e8 76 09 00 00       	call   a40 <createtest>

  openiputtest();
      ca:	e8 f1 02 00 00       	call   3c0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 ab 01 00 00       	call   280 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 b1 0f 00 00       	call   1090 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 ab 0b 00 00       	call   c90 <pipe1>
  preempt();
      e5:	e8 86 0d 00 00       	call   e70 <preempt>
  exitwait();
      ea:	e8 f1 0e 00 00       	call   fe0 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 5b 31 00 00       	call   3250 <rmdot>
  fourteen();
      f5:	e8 96 2f 00 00       	call   3090 <fourteen>
  bigfile();
      fa:	e8 51 2d 00 00       	call   2e50 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 ab 22 00 00       	call   23b0 <subdir>
  linktest();
     105:	e8 b6 19 00 00       	call   1ac0 <linktest>
  unlinkread();
     10a:	e8 a1 17 00 00       	call   18b0 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 3b 33 00 00       	call   3450 <dirfile>
  iref();
     115:	e8 f6 35 00 00       	call   3710 <iref>
  forktest();
     11a:	e8 41 37 00 00       	call   3860 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 0b 21 00 00       	call   2230 <bigdir>

  uio();
     125:	e8 c6 41 00 00       	call   42f0 <uio>

  exectest();
     12a:	e8 01 0b 00 00       	call   c30 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 37 45 00 00       	call   4672 <exit>
  return 0;
}
     13b:	31 c0                	xor    %eax,%eax
     13d:	c9                   	leave  
     13e:	c3                   	ret    
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     14b:	c7 44 24 04 cc 4b 00 	movl   $0x4bcc,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 75 46 00 00       	call   47d0 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 5f 4b 00 00 	movl   $0x4b5f,(%esp)
     162:	e8 73 45 00 00       	call   46da <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 7d                	js     1e8 <iputtest+0xa8>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 5f 4b 00 00 	movl   $0x4b5f,(%esp)
     172:	e8 6b 45 00 00       	call   46e2 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	0f 88 a1 00 00 00    	js     220 <iputtest+0xe0>
  if(unlink("../iputdir") < 0){
     17f:	c7 04 24 5c 4b 00 00 	movl   $0x4b5c,(%esp)
     186:	e8 37 45 00 00       	call   46c2 <unlink>
     18b:	85 c0                	test   %eax,%eax
     18d:	0f 88 c5 00 00 00    	js     258 <iputtest+0x118>
  if(chdir("/") < 0){
     193:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
     19a:	e8 43 45 00 00       	call   46e2 <chdir>
     19f:	85 c0                	test   %eax,%eax
     1a1:	78 1d                	js     1c0 <iputtest+0x80>
  printf(stdout, "iput test ok\n");
     1a3:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     1a8:	c7 44 24 04 04 4c 00 	movl   $0x4c04,0x4(%esp)
     1af:	00 
     1b0:	89 04 24             	mov    %eax,(%esp)
     1b3:	e8 18 46 00 00       	call   47d0 <printf>
}
     1b8:	c9                   	leave  
     1b9:	c3                   	ret    
     1ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(stdout, "chdir / failed\n");
     1c0:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     1c5:	c7 44 24 04 83 4b 00 	movl   $0x4b83,0x4(%esp)
     1cc:	00 
     1cd:	89 04 24             	mov    %eax,(%esp)
     1d0:	e8 fb 45 00 00       	call   47d0 <printf>
    exit(0);
     1d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1dc:	e8 91 44 00 00       	call   4672 <exit>
     1e1:	eb c0                	jmp    1a3 <iputtest+0x63>
     1e3:	90                   	nop
     1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "mkdir failed\n");
     1e8:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     1ed:	c7 44 24 04 38 4b 00 	movl   $0x4b38,0x4(%esp)
     1f4:	00 
     1f5:	89 04 24             	mov    %eax,(%esp)
     1f8:	e8 d3 45 00 00       	call   47d0 <printf>
    exit(0);
     1fd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     204:	e8 69 44 00 00       	call   4672 <exit>
  if(chdir("iputdir") < 0){
     209:	c7 04 24 5f 4b 00 00 	movl   $0x4b5f,(%esp)
     210:	e8 cd 44 00 00       	call   46e2 <chdir>
     215:	85 c0                	test   %eax,%eax
     217:	0f 89 62 ff ff ff    	jns    17f <iputtest+0x3f>
     21d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "chdir iputdir failed\n");
     220:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     225:	c7 44 24 04 46 4b 00 	movl   $0x4b46,0x4(%esp)
     22c:	00 
     22d:	89 04 24             	mov    %eax,(%esp)
     230:	e8 9b 45 00 00       	call   47d0 <printf>
    exit(0);
     235:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     23c:	e8 31 44 00 00       	call   4672 <exit>
  if(unlink("../iputdir") < 0){
     241:	c7 04 24 5c 4b 00 00 	movl   $0x4b5c,(%esp)
     248:	e8 75 44 00 00       	call   46c2 <unlink>
     24d:	85 c0                	test   %eax,%eax
     24f:	0f 89 3e ff ff ff    	jns    193 <iputtest+0x53>
     255:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "unlink ../iputdir failed\n");
     258:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     25d:	c7 44 24 04 67 4b 00 	movl   $0x4b67,0x4(%esp)
     264:	00 
     265:	89 04 24             	mov    %eax,(%esp)
     268:	e8 63 45 00 00       	call   47d0 <printf>
    exit(0);
     26d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     274:	e8 f9 43 00 00       	call   4672 <exit>
     279:	e9 15 ff ff ff       	jmp    193 <iputtest+0x53>
     27e:	66 90                	xchg   %ax,%ax

00000280 <exitiputtest>:
{
     280:	55                   	push   %ebp
     281:	89 e5                	mov    %esp,%ebp
     283:	83 ec 28             	sub    $0x28,%esp
  printf(stdout, "exitiput test\n");
     286:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     28b:	c7 44 24 04 93 4b 00 	movl   $0x4b93,0x4(%esp)
     292:	00 
     293:	89 04 24             	mov    %eax,(%esp)
     296:	e8 35 45 00 00       	call   47d0 <printf>
  pid = fork();
     29b:	e8 ca 43 00 00       	call   466a <fork>
  if(pid < 0){
     2a0:	85 c0                	test   %eax,%eax
  pid = fork();
     2a2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pid < 0){
     2a5:	78 71                	js     318 <exitiputtest+0x98>
  if(pid == 0){
     2a7:	85 c0                	test   %eax,%eax
     2a9:	74 25                	je     2d0 <exitiputtest+0x50>
  wait(&pid);
     2ab:	8d 45 f4             	lea    -0xc(%ebp),%eax
     2ae:	89 04 24             	mov    %eax,(%esp)
     2b1:	e8 c4 43 00 00       	call   467a <wait>
  printf(stdout, "exitiput test ok\n");
     2b6:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     2bb:	c7 44 24 04 b6 4b 00 	movl   $0x4bb6,0x4(%esp)
     2c2:	00 
     2c3:	89 04 24             	mov    %eax,(%esp)
     2c6:	e8 05 45 00 00       	call   47d0 <printf>
}
     2cb:	c9                   	leave  
     2cc:	c3                   	ret    
     2cd:	8d 76 00             	lea    0x0(%esi),%esi
    if(mkdir("iputdir") < 0){
     2d0:	c7 04 24 5f 4b 00 00 	movl   $0x4b5f,(%esp)
     2d7:	e8 fe 43 00 00       	call   46da <mkdir>
     2dc:	85 c0                	test   %eax,%eax
     2de:	0f 88 b4 00 00 00    	js     398 <exitiputtest+0x118>
    if(chdir("iputdir") < 0){
     2e4:	c7 04 24 5f 4b 00 00 	movl   $0x4b5f,(%esp)
     2eb:	e8 f2 43 00 00       	call   46e2 <chdir>
     2f0:	85 c0                	test   %eax,%eax
     2f2:	78 7c                	js     370 <exitiputtest+0xf0>
    if(unlink("../iputdir") < 0){
     2f4:	c7 04 24 5c 4b 00 00 	movl   $0x4b5c,(%esp)
     2fb:	e8 c2 43 00 00       	call   46c2 <unlink>
     300:	85 c0                	test   %eax,%eax
     302:	78 44                	js     348 <exitiputtest+0xc8>
    exit(0);
     304:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     30b:	e8 62 43 00 00       	call   4672 <exit>
     310:	eb 99                	jmp    2ab <exitiputtest+0x2b>
     312:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(stdout, "fork failed\n");
     318:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     31d:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
     324:	00 
     325:	89 04 24             	mov    %eax,(%esp)
     328:	e8 a3 44 00 00       	call   47d0 <printf>
    exit(0);
     32d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     334:	e8 39 43 00 00       	call   4672 <exit>
     339:	8b 45 f4             	mov    -0xc(%ebp),%eax
     33c:	e9 66 ff ff ff       	jmp    2a7 <exitiputtest+0x27>
     341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     348:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     34d:	c7 44 24 04 67 4b 00 	movl   $0x4b67,0x4(%esp)
     354:	00 
     355:	89 04 24             	mov    %eax,(%esp)
     358:	e8 73 44 00 00       	call   47d0 <printf>
      exit(0);
     35d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     364:	e8 09 43 00 00       	call   4672 <exit>
     369:	eb 99                	jmp    304 <exitiputtest+0x84>
     36b:	90                   	nop
     36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "child chdir failed\n");
     370:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     375:	c7 44 24 04 a2 4b 00 	movl   $0x4ba2,0x4(%esp)
     37c:	00 
     37d:	89 04 24             	mov    %eax,(%esp)
     380:	e8 4b 44 00 00       	call   47d0 <printf>
      exit(0);
     385:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     38c:	e8 e1 42 00 00       	call   4672 <exit>
     391:	e9 5e ff ff ff       	jmp    2f4 <exitiputtest+0x74>
     396:	66 90                	xchg   %ax,%ax
      printf(stdout, "mkdir failed\n");
     398:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     39d:	c7 44 24 04 38 4b 00 	movl   $0x4b38,0x4(%esp)
     3a4:	00 
     3a5:	89 04 24             	mov    %eax,(%esp)
     3a8:	e8 23 44 00 00       	call   47d0 <printf>
      exit(0);
     3ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3b4:	e8 b9 42 00 00       	call   4672 <exit>
     3b9:	e9 26 ff ff ff       	jmp    2e4 <exitiputtest+0x64>
     3be:	66 90                	xchg   %ax,%ax

000003c0 <openiputtest>:
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 28             	sub    $0x28,%esp
  printf(stdout, "openiput test\n");
     3c6:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     3cb:	c7 44 24 04 c8 4b 00 	movl   $0x4bc8,0x4(%esp)
     3d2:	00 
     3d3:	89 04 24             	mov    %eax,(%esp)
     3d6:	e8 f5 43 00 00       	call   47d0 <printf>
  if(mkdir("oidir") < 0){
     3db:	c7 04 24 d7 4b 00 00 	movl   $0x4bd7,(%esp)
     3e2:	e8 f3 42 00 00       	call   46da <mkdir>
     3e7:	85 c0                	test   %eax,%eax
     3e9:	0f 88 c9 00 00 00    	js     4b8 <openiputtest+0xf8>
  pid = fork();
     3ef:	e8 76 42 00 00       	call   466a <fork>
  if(pid < 0){
     3f4:	85 c0                	test   %eax,%eax
  pid = fork();
     3f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pid < 0){
     3f9:	0f 88 f1 00 00 00    	js     4f0 <openiputtest+0x130>
  if(pid == 0){
     3ff:	85 c0                	test   %eax,%eax
     401:	74 65                	je     468 <openiputtest+0xa8>
  sleep(1);
     403:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     40a:	e8 f3 42 00 00       	call   4702 <sleep>
  if(unlink("oidir") != 0){
     40f:	c7 04 24 d7 4b 00 00 	movl   $0x4bd7,(%esp)
     416:	e8 a7 42 00 00       	call   46c2 <unlink>
     41b:	85 c0                	test   %eax,%eax
     41d:	74 21                	je     440 <openiputtest+0x80>
    printf(stdout, "unlink failed\n");
     41f:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     424:	c7 44 24 04 f1 4b 00 	movl   $0x4bf1,0x4(%esp)
     42b:	00 
     42c:	89 04 24             	mov    %eax,(%esp)
     42f:	e8 9c 43 00 00       	call   47d0 <printf>
    exit(0);
     434:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     43b:	e8 32 42 00 00       	call   4672 <exit>
  wait(&pid);
     440:	8d 45 f4             	lea    -0xc(%ebp),%eax
     443:	89 04 24             	mov    %eax,(%esp)
     446:	e8 2f 42 00 00       	call   467a <wait>
  printf(stdout, "openiput test ok\n");
     44b:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     450:	c7 44 24 04 00 4c 00 	movl   $0x4c00,0x4(%esp)
     457:	00 
     458:	89 04 24             	mov    %eax,(%esp)
     45b:	e8 70 43 00 00       	call   47d0 <printf>
}
     460:	c9                   	leave  
     461:	c3                   	ret    
     462:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int fd = open("oidir", O_RDWR);
     468:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     46f:	00 
     470:	c7 04 24 d7 4b 00 00 	movl   $0x4bd7,(%esp)
     477:	e8 36 42 00 00       	call   46b2 <open>
    if(fd >= 0){
     47c:	85 c0                	test   %eax,%eax
     47e:	78 21                	js     4a1 <openiputtest+0xe1>
      printf(stdout, "open directory for write succeeded\n");
     480:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     485:	c7 44 24 04 5c 5b 00 	movl   $0x5b5c,0x4(%esp)
     48c:	00 
     48d:	89 04 24             	mov    %eax,(%esp)
     490:	e8 3b 43 00 00       	call   47d0 <printf>
      exit(0);
     495:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     49c:	e8 d1 41 00 00       	call   4672 <exit>
    exit(0);
     4a1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4a8:	e8 c5 41 00 00       	call   4672 <exit>
     4ad:	e9 51 ff ff ff       	jmp    403 <openiputtest+0x43>
     4b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(stdout, "mkdir oidir failed\n");
     4b8:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     4bd:	c7 44 24 04 dd 4b 00 	movl   $0x4bdd,0x4(%esp)
     4c4:	00 
     4c5:	89 04 24             	mov    %eax,(%esp)
     4c8:	e8 03 43 00 00       	call   47d0 <printf>
    exit(0);
     4cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4d4:	e8 99 41 00 00       	call   4672 <exit>
  pid = fork();
     4d9:	e8 8c 41 00 00       	call   466a <fork>
  if(pid < 0){
     4de:	85 c0                	test   %eax,%eax
  pid = fork();
     4e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pid < 0){
     4e3:	0f 89 16 ff ff ff    	jns    3ff <openiputtest+0x3f>
     4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "fork failed\n");
     4f0:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     4f5:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
     4fc:	00 
     4fd:	89 04 24             	mov    %eax,(%esp)
     500:	e8 cb 42 00 00       	call   47d0 <printf>
    exit(0);
     505:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     50c:	e8 61 41 00 00       	call   4672 <exit>
     511:	8b 45 f4             	mov    -0xc(%ebp),%eax
     514:	e9 e6 fe ff ff       	jmp    3ff <openiputtest+0x3f>
     519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <opentest>:
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     526:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     52b:	c7 44 24 04 12 4c 00 	movl   $0x4c12,0x4(%esp)
     532:	00 
     533:	89 04 24             	mov    %eax,(%esp)
     536:	e8 95 42 00 00       	call   47d0 <printf>
  fd = open("echo", 0);
     53b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     542:	00 
     543:	c7 04 24 1d 4c 00 00 	movl   $0x4c1d,(%esp)
     54a:	e8 63 41 00 00       	call   46b2 <open>
  if(fd < 0){
     54f:	85 c0                	test   %eax,%eax
     551:	78 5d                	js     5b0 <opentest+0x90>
  close(fd);
     553:	89 04 24             	mov    %eax,(%esp)
     556:	e8 3f 41 00 00       	call   469a <close>
  fd = open("doesnotexist", 0);
     55b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     562:	00 
     563:	c7 04 24 35 4c 00 00 	movl   $0x4c35,(%esp)
     56a:	e8 43 41 00 00       	call   46b2 <open>
  if(fd >= 0){
     56f:	85 c0                	test   %eax,%eax
     571:	78 21                	js     594 <opentest+0x74>
    printf(stdout, "open doesnotexist succeeded!\n");
     573:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     578:	c7 44 24 04 42 4c 00 	movl   $0x4c42,0x4(%esp)
     57f:	00 
     580:	89 04 24             	mov    %eax,(%esp)
     583:	e8 48 42 00 00       	call   47d0 <printf>
    exit(0);
     588:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     58f:	e8 de 40 00 00       	call   4672 <exit>
  printf(stdout, "open test ok\n");
     594:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     599:	c7 44 24 04 60 4c 00 	movl   $0x4c60,0x4(%esp)
     5a0:	00 
     5a1:	89 04 24             	mov    %eax,(%esp)
     5a4:	e8 27 42 00 00       	call   47d0 <printf>
}
     5a9:	c9                   	leave  
     5aa:	c3                   	ret    
     5ab:	90                   	nop
     5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "open echo failed!\n");
     5b0:	8b 15 d4 6b 00 00    	mov    0x6bd4,%edx
     5b6:	c7 44 24 04 22 4c 00 	movl   $0x4c22,0x4(%esp)
     5bd:	00 
     5be:	89 45 f4             	mov    %eax,-0xc(%ebp)
     5c1:	89 14 24             	mov    %edx,(%esp)
     5c4:	e8 07 42 00 00       	call   47d0 <printf>
    exit(0);
     5c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5d0:	e8 9d 40 00 00       	call   4672 <exit>
     5d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
     5d8:	e9 76 ff ff ff       	jmp    553 <opentest+0x33>
     5dd:	8d 76 00             	lea    0x0(%esi),%esi

000005e0 <writetest>:
{
     5e0:	55                   	push   %ebp
     5e1:	89 e5                	mov    %esp,%ebp
     5e3:	56                   	push   %esi
     5e4:	53                   	push   %ebx
     5e5:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     5e8:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     5ed:	c7 44 24 04 6e 4c 00 	movl   $0x4c6e,0x4(%esp)
     5f4:	00 
     5f5:	89 04 24             	mov    %eax,(%esp)
     5f8:	e8 d3 41 00 00       	call   47d0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     5fd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     604:	00 
     605:	c7 04 24 7f 4c 00 00 	movl   $0x4c7f,(%esp)
     60c:	e8 a1 40 00 00       	call   46b2 <open>
  if(fd >= 0){
     611:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     613:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     615:	0f 88 ae 01 00 00    	js     7c9 <writetest+0x1e9>
    printf(stdout, "creat small succeeded; ok\n");
     61b:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     620:	c7 44 24 04 85 4c 00 	movl   $0x4c85,0x4(%esp)
     627:	00 
     628:	89 04 24             	mov    %eax,(%esp)
     62b:	e8 a0 41 00 00       	call   47d0 <printf>
{
     630:	31 db                	xor    %ebx,%ebx
     632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     638:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     63f:	00 
     640:	c7 44 24 04 bc 4c 00 	movl   $0x4cbc,0x4(%esp)
     647:	00 
     648:	89 34 24             	mov    %esi,(%esp)
     64b:	e8 42 40 00 00       	call   4692 <write>
     650:	83 f8 0a             	cmp    $0xa,%eax
     653:	74 25                	je     67a <writetest+0x9a>
      printf(stdout, "error: write aa %d new file failed\n", i);
     655:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     65a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     65e:	c7 44 24 04 80 5b 00 	movl   $0x5b80,0x4(%esp)
     665:	00 
     666:	89 04 24             	mov    %eax,(%esp)
     669:	e8 62 41 00 00       	call   47d0 <printf>
      exit(0);
     66e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     675:	e8 f8 3f 00 00       	call   4672 <exit>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     67a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     681:	00 
     682:	c7 44 24 04 c7 4c 00 	movl   $0x4cc7,0x4(%esp)
     689:	00 
     68a:	89 34 24             	mov    %esi,(%esp)
     68d:	e8 00 40 00 00       	call   4692 <write>
     692:	83 f8 0a             	cmp    $0xa,%eax
     695:	74 25                	je     6bc <writetest+0xdc>
      printf(stdout, "error: write bb %d new file failed\n", i);
     697:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     69c:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     6a0:	c7 44 24 04 a4 5b 00 	movl   $0x5ba4,0x4(%esp)
     6a7:	00 
     6a8:	89 04 24             	mov    %eax,(%esp)
     6ab:	e8 20 41 00 00       	call   47d0 <printf>
      exit(0);
     6b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6b7:	e8 b6 3f 00 00       	call   4672 <exit>
  for(i = 0; i < 100; i++){
     6bc:	83 c3 01             	add    $0x1,%ebx
     6bf:	83 fb 64             	cmp    $0x64,%ebx
     6c2:	0f 85 70 ff ff ff    	jne    638 <writetest+0x58>
  printf(stdout, "writes ok\n");
     6c8:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     6cd:	c7 44 24 04 d2 4c 00 	movl   $0x4cd2,0x4(%esp)
     6d4:	00 
     6d5:	89 04 24             	mov    %eax,(%esp)
     6d8:	e8 f3 40 00 00       	call   47d0 <printf>
  close(fd);
     6dd:	89 34 24             	mov    %esi,(%esp)
     6e0:	e8 b5 3f 00 00       	call   469a <close>
  fd = open("small", O_RDONLY);
     6e5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6ec:	00 
     6ed:	c7 04 24 7f 4c 00 00 	movl   $0x4c7f,(%esp)
     6f4:	e8 b9 3f 00 00       	call   46b2 <open>
  if(fd >= 0){
     6f9:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     6fb:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6fd:	0f 88 a0 00 00 00    	js     7a3 <writetest+0x1c3>
    printf(stdout, "open small succeeded ok\n");
     703:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     708:	c7 44 24 04 dd 4c 00 	movl   $0x4cdd,0x4(%esp)
     70f:	00 
     710:	89 04 24             	mov    %eax,(%esp)
     713:	e8 b8 40 00 00       	call   47d0 <printf>
  i = read(fd, buf, 2000);
     718:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     71f:	00 
     720:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     727:	00 
     728:	89 1c 24             	mov    %ebx,(%esp)
     72b:	e8 5a 3f 00 00       	call   468a <read>
  if(i == 2000){
     730:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     735:	74 55                	je     78c <writetest+0x1ac>
    printf(stdout, "read failed\n");
     737:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     73c:	c7 44 24 04 3d 50 00 	movl   $0x503d,0x4(%esp)
     743:	00 
     744:	89 04 24             	mov    %eax,(%esp)
     747:	e8 84 40 00 00       	call   47d0 <printf>
    exit(0);
     74c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     753:	e8 1a 3f 00 00       	call   4672 <exit>
  close(fd);
     758:	89 1c 24             	mov    %ebx,(%esp)
     75b:	e8 3a 3f 00 00       	call   469a <close>
  if(unlink("small") < 0){
     760:	c7 04 24 7f 4c 00 00 	movl   $0x4c7f,(%esp)
     767:	e8 56 3f 00 00       	call   46c2 <unlink>
     76c:	85 c0                	test   %eax,%eax
     76e:	78 7f                	js     7ef <writetest+0x20f>
  printf(stdout, "small file test ok\n");
     770:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     775:	c7 44 24 04 39 4d 00 	movl   $0x4d39,0x4(%esp)
     77c:	00 
     77d:	89 04 24             	mov    %eax,(%esp)
     780:	e8 4b 40 00 00       	call   47d0 <printf>
}
     785:	83 c4 10             	add    $0x10,%esp
     788:	5b                   	pop    %ebx
     789:	5e                   	pop    %esi
     78a:	5d                   	pop    %ebp
     78b:	c3                   	ret    
    printf(stdout, "read succeeded ok\n");
     78c:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     791:	c7 44 24 04 11 4d 00 	movl   $0x4d11,0x4(%esp)
     798:	00 
     799:	89 04 24             	mov    %eax,(%esp)
     79c:	e8 2f 40 00 00       	call   47d0 <printf>
     7a1:	eb b5                	jmp    758 <writetest+0x178>
    printf(stdout, "error: open small failed!\n");
     7a3:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     7a8:	c7 44 24 04 f6 4c 00 	movl   $0x4cf6,0x4(%esp)
     7af:	00 
     7b0:	89 04 24             	mov    %eax,(%esp)
     7b3:	e8 18 40 00 00       	call   47d0 <printf>
    exit(0);
     7b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7bf:	e8 ae 3e 00 00       	call   4672 <exit>
     7c4:	e9 4f ff ff ff       	jmp    718 <writetest+0x138>
    printf(stdout, "error: creat small failed!\n");
     7c9:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     7ce:	c7 44 24 04 a0 4c 00 	movl   $0x4ca0,0x4(%esp)
     7d5:	00 
     7d6:	89 04 24             	mov    %eax,(%esp)
     7d9:	e8 f2 3f 00 00       	call   47d0 <printf>
    exit(0);
     7de:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7e5:	e8 88 3e 00 00       	call   4672 <exit>
     7ea:	e9 41 fe ff ff       	jmp    630 <writetest+0x50>
    printf(stdout, "unlink small failed\n");
     7ef:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     7f4:	c7 44 24 04 24 4d 00 	movl   $0x4d24,0x4(%esp)
     7fb:	00 
     7fc:	89 04 24             	mov    %eax,(%esp)
     7ff:	e8 cc 3f 00 00       	call   47d0 <printf>
    exit(0);
     804:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     80b:	e8 62 3e 00 00       	call   4672 <exit>
     810:	e9 5b ff ff ff       	jmp    770 <writetest+0x190>
     815:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000820 <writetest1>:
{
     820:	55                   	push   %ebp
     821:	89 e5                	mov    %esp,%ebp
     823:	56                   	push   %esi
     824:	53                   	push   %ebx
     825:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     828:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     82d:	c7 44 24 04 4d 4d 00 	movl   $0x4d4d,0x4(%esp)
     834:	00 
     835:	89 04 24             	mov    %eax,(%esp)
     838:	e8 93 3f 00 00       	call   47d0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     83d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     844:	00 
     845:	c7 04 24 c7 4d 00 00 	movl   $0x4dc7,(%esp)
     84c:	e8 61 3e 00 00       	call   46b2 <open>
  if(fd < 0){
     851:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     853:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     855:	0f 88 68 01 00 00    	js     9c3 <writetest1+0x1a3>
{
     85b:	31 db                	xor    %ebx,%ebx
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     860:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     867:	00 
     868:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     86f:	00 
     870:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     873:	89 1d c0 93 00 00    	mov    %ebx,0x93c0
    if(write(fd, buf, 512) != 512){
     879:	e8 14 3e 00 00       	call   4692 <write>
     87e:	3d 00 02 00 00       	cmp    $0x200,%eax
     883:	74 25                	je     8aa <writetest1+0x8a>
      printf(stdout, "error: write big file failed\n", i);
     885:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     88a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     88e:	c7 44 24 04 77 4d 00 	movl   $0x4d77,0x4(%esp)
     895:	00 
     896:	89 04 24             	mov    %eax,(%esp)
     899:	e8 32 3f 00 00       	call   47d0 <printf>
      exit(0);
     89e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8a5:	e8 c8 3d 00 00       	call   4672 <exit>
  for(i = 0; i < MAXFILE; i++){
     8aa:	83 c3 01             	add    $0x1,%ebx
     8ad:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     8b3:	75 ab                	jne    860 <writetest1+0x40>
  close(fd);
     8b5:	89 34 24             	mov    %esi,(%esp)
     8b8:	e8 dd 3d 00 00       	call   469a <close>
  fd = open("big", O_RDONLY);
     8bd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     8c4:	00 
     8c5:	c7 04 24 c7 4d 00 00 	movl   $0x4dc7,(%esp)
     8cc:	e8 e1 3d 00 00       	call   46b2 <open>
  if(fd < 0){
     8d1:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     8d3:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     8d5:	0f 88 c2 00 00 00    	js     99d <writetest1+0x17d>
{
     8db:	31 db                	xor    %ebx,%ebx
     8dd:	eb 62                	jmp    941 <writetest1+0x121>
     8df:	90                   	nop
    } else if(i != 512){
     8e0:	3d 00 02 00 00       	cmp    $0x200,%eax
     8e5:	74 25                	je     90c <writetest1+0xec>
      printf(stdout, "read failed %d\n", i);
     8e7:	89 44 24 08          	mov    %eax,0x8(%esp)
     8eb:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     8f0:	c7 44 24 04 cb 4d 00 	movl   $0x4dcb,0x4(%esp)
     8f7:	00 
     8f8:	89 04 24             	mov    %eax,(%esp)
     8fb:	e8 d0 3e 00 00       	call   47d0 <printf>
      exit(0);
     900:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     907:	e8 66 3d 00 00       	call   4672 <exit>
    if(((int*)buf)[0] != n){
     90c:	a1 c0 93 00 00       	mov    0x93c0,%eax
     911:	39 d8                	cmp    %ebx,%eax
     913:	74 29                	je     93e <writetest1+0x11e>
      printf(stdout, "read content of block %d is %d\n",
     915:	89 44 24 0c          	mov    %eax,0xc(%esp)
     919:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     91e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     922:	c7 44 24 04 c8 5b 00 	movl   $0x5bc8,0x4(%esp)
     929:	00 
     92a:	89 04 24             	mov    %eax,(%esp)
     92d:	e8 9e 3e 00 00       	call   47d0 <printf>
      exit(0);
     932:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     939:	e8 34 3d 00 00       	call   4672 <exit>
    n++;
     93e:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     941:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     948:	00 
     949:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     950:	00 
     951:	89 34 24             	mov    %esi,(%esp)
     954:	e8 31 3d 00 00       	call   468a <read>
    if(i == 0){
     959:	85 c0                	test   %eax,%eax
     95b:	75 83                	jne    8e0 <writetest1+0xc0>
      if(n == MAXFILE - 1){
     95d:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     963:	0f 84 a6 00 00 00    	je     a0f <writetest1+0x1ef>
  close(fd);
     969:	89 34 24             	mov    %esi,(%esp)
     96c:	e8 29 3d 00 00       	call   469a <close>
  if(unlink("big") < 0){
     971:	c7 04 24 c7 4d 00 00 	movl   $0x4dc7,(%esp)
     978:	e8 45 3d 00 00       	call   46c2 <unlink>
     97d:	85 c0                	test   %eax,%eax
     97f:	78 68                	js     9e9 <writetest1+0x1c9>
  printf(stdout, "big files ok\n");
     981:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     986:	c7 44 24 04 ee 4d 00 	movl   $0x4dee,0x4(%esp)
     98d:	00 
     98e:	89 04 24             	mov    %eax,(%esp)
     991:	e8 3a 3e 00 00       	call   47d0 <printf>
}
     996:	83 c4 10             	add    $0x10,%esp
     999:	5b                   	pop    %ebx
     99a:	5e                   	pop    %esi
     99b:	5d                   	pop    %ebp
     99c:	c3                   	ret    
    printf(stdout, "error: open big failed!\n");
     99d:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     9a2:	c7 44 24 04 95 4d 00 	movl   $0x4d95,0x4(%esp)
     9a9:	00 
     9aa:	89 04 24             	mov    %eax,(%esp)
     9ad:	e8 1e 3e 00 00       	call   47d0 <printf>
    exit(0);
     9b2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b9:	e8 b4 3c 00 00       	call   4672 <exit>
     9be:	e9 18 ff ff ff       	jmp    8db <writetest1+0xbb>
    printf(stdout, "error: creat big failed!\n");
     9c3:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     9c8:	c7 44 24 04 5d 4d 00 	movl   $0x4d5d,0x4(%esp)
     9cf:	00 
     9d0:	89 04 24             	mov    %eax,(%esp)
     9d3:	e8 f8 3d 00 00       	call   47d0 <printf>
    exit(0);
     9d8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9df:	e8 8e 3c 00 00       	call   4672 <exit>
     9e4:	e9 72 fe ff ff       	jmp    85b <writetest1+0x3b>
    printf(stdout, "unlink big failed\n");
     9e9:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     9ee:	c7 44 24 04 db 4d 00 	movl   $0x4ddb,0x4(%esp)
     9f5:	00 
     9f6:	89 04 24             	mov    %eax,(%esp)
     9f9:	e8 d2 3d 00 00       	call   47d0 <printf>
    exit(0);
     9fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a05:	e8 68 3c 00 00       	call   4672 <exit>
     a0a:	e9 72 ff ff ff       	jmp    981 <writetest1+0x161>
        printf(stdout, "read only %d blocks from big", n);
     a0f:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     a14:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     a1b:	00 
     a1c:	c7 44 24 04 ae 4d 00 	movl   $0x4dae,0x4(%esp)
     a23:	00 
     a24:	89 04 24             	mov    %eax,(%esp)
     a27:	e8 a4 3d 00 00       	call   47d0 <printf>
        exit(0);
     a2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a33:	e8 3a 3c 00 00       	call   4672 <exit>
     a38:	e9 2c ff ff ff       	jmp    969 <writetest1+0x149>
     a3d:	8d 76 00             	lea    0x0(%esi),%esi

00000a40 <createtest>:
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	53                   	push   %ebx
  name[2] = '\0';
     a44:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     a49:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     a4c:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     a51:	c7 44 24 04 e8 5b 00 	movl   $0x5be8,0x4(%esp)
     a58:	00 
     a59:	89 04 24             	mov    %eax,(%esp)
     a5c:	e8 6f 3d 00 00       	call   47d0 <printf>
  name[0] = 'a';
     a61:	c6 05 c0 b3 00 00 61 	movb   $0x61,0xb3c0
  name[2] = '\0';
     a68:	c6 05 c2 b3 00 00 00 	movb   $0x0,0xb3c2
     a6f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     a70:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     a77:	00 
     a78:	c7 04 24 c0 b3 00 00 	movl   $0xb3c0,(%esp)
    name[1] = '0' + i;
     a7f:	88 1d c1 b3 00 00    	mov    %bl,0xb3c1
     a85:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     a88:	e8 25 3c 00 00       	call   46b2 <open>
    close(fd);
     a8d:	89 04 24             	mov    %eax,(%esp)
     a90:	e8 05 3c 00 00       	call   469a <close>
  for(i = 0; i < 52; i++){
     a95:	80 fb 64             	cmp    $0x64,%bl
     a98:	75 d6                	jne    a70 <createtest+0x30>
  name[0] = 'a';
     a9a:	c6 05 c0 b3 00 00 61 	movb   $0x61,0xb3c0
  name[2] = '\0';
     aa1:	bb 30 00 00 00       	mov    $0x30,%ebx
     aa6:	c6 05 c2 b3 00 00 00 	movb   $0x0,0xb3c2
     aad:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     ab0:	88 1d c1 b3 00 00    	mov    %bl,0xb3c1
     ab6:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     ab9:	c7 04 24 c0 b3 00 00 	movl   $0xb3c0,(%esp)
     ac0:	e8 fd 3b 00 00       	call   46c2 <unlink>
  for(i = 0; i < 52; i++){
     ac5:	80 fb 64             	cmp    $0x64,%bl
     ac8:	75 e6                	jne    ab0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     aca:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     acf:	c7 44 24 04 10 5c 00 	movl   $0x5c10,0x4(%esp)
     ad6:	00 
     ad7:	89 04 24             	mov    %eax,(%esp)
     ada:	e8 f1 3c 00 00       	call   47d0 <printf>
}
     adf:	83 c4 14             	add    $0x14,%esp
     ae2:	5b                   	pop    %ebx
     ae3:	5d                   	pop    %ebp
     ae4:	c3                   	ret    
     ae5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ae9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000af0 <dirtest>:
{
     af0:	55                   	push   %ebp
     af1:	89 e5                	mov    %esp,%ebp
     af3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     af6:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     afb:	c7 44 24 04 fc 4d 00 	movl   $0x4dfc,0x4(%esp)
     b02:	00 
     b03:	89 04 24             	mov    %eax,(%esp)
     b06:	e8 c5 3c 00 00       	call   47d0 <printf>
  if(mkdir("dir0") < 0){
     b0b:	c7 04 24 08 4e 00 00 	movl   $0x4e08,(%esp)
     b12:	e8 c3 3b 00 00       	call   46da <mkdir>
     b17:	85 c0                	test   %eax,%eax
     b19:	78 7d                	js     b98 <dirtest+0xa8>
  if(chdir("dir0") < 0){
     b1b:	c7 04 24 08 4e 00 00 	movl   $0x4e08,(%esp)
     b22:	e8 bb 3b 00 00       	call   46e2 <chdir>
     b27:	85 c0                	test   %eax,%eax
     b29:	0f 88 a1 00 00 00    	js     bd0 <dirtest+0xe0>
  if(chdir("..") < 0){
     b2f:	c7 04 24 ad 53 00 00 	movl   $0x53ad,(%esp)
     b36:	e8 a7 3b 00 00       	call   46e2 <chdir>
     b3b:	85 c0                	test   %eax,%eax
     b3d:	0f 88 c5 00 00 00    	js     c08 <dirtest+0x118>
  if(unlink("dir0") < 0){
     b43:	c7 04 24 08 4e 00 00 	movl   $0x4e08,(%esp)
     b4a:	e8 73 3b 00 00       	call   46c2 <unlink>
     b4f:	85 c0                	test   %eax,%eax
     b51:	78 1d                	js     b70 <dirtest+0x80>
  printf(stdout, "mkdir test ok\n");
     b53:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     b58:	c7 44 24 04 45 4e 00 	movl   $0x4e45,0x4(%esp)
     b5f:	00 
     b60:	89 04 24             	mov    %eax,(%esp)
     b63:	e8 68 3c 00 00       	call   47d0 <printf>
}
     b68:	c9                   	leave  
     b69:	c3                   	ret    
     b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(stdout, "unlink dir0 failed\n");
     b70:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     b75:	c7 44 24 04 31 4e 00 	movl   $0x4e31,0x4(%esp)
     b7c:	00 
     b7d:	89 04 24             	mov    %eax,(%esp)
     b80:	e8 4b 3c 00 00       	call   47d0 <printf>
    exit(0);
     b85:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b8c:	e8 e1 3a 00 00       	call   4672 <exit>
     b91:	eb c0                	jmp    b53 <dirtest+0x63>
     b93:	90                   	nop
     b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "mkdir failed\n");
     b98:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     b9d:	c7 44 24 04 38 4b 00 	movl   $0x4b38,0x4(%esp)
     ba4:	00 
     ba5:	89 04 24             	mov    %eax,(%esp)
     ba8:	e8 23 3c 00 00       	call   47d0 <printf>
    exit(0);
     bad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bb4:	e8 b9 3a 00 00       	call   4672 <exit>
  if(chdir("dir0") < 0){
     bb9:	c7 04 24 08 4e 00 00 	movl   $0x4e08,(%esp)
     bc0:	e8 1d 3b 00 00       	call   46e2 <chdir>
     bc5:	85 c0                	test   %eax,%eax
     bc7:	0f 89 62 ff ff ff    	jns    b2f <dirtest+0x3f>
     bcd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "chdir dir0 failed\n");
     bd0:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     bd5:	c7 44 24 04 0d 4e 00 	movl   $0x4e0d,0x4(%esp)
     bdc:	00 
     bdd:	89 04 24             	mov    %eax,(%esp)
     be0:	e8 eb 3b 00 00       	call   47d0 <printf>
    exit(0);
     be5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bec:	e8 81 3a 00 00       	call   4672 <exit>
  if(chdir("..") < 0){
     bf1:	c7 04 24 ad 53 00 00 	movl   $0x53ad,(%esp)
     bf8:	e8 e5 3a 00 00       	call   46e2 <chdir>
     bfd:	85 c0                	test   %eax,%eax
     bff:	0f 89 3e ff ff ff    	jns    b43 <dirtest+0x53>
     c05:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "chdir .. failed\n");
     c08:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     c0d:	c7 44 24 04 20 4e 00 	movl   $0x4e20,0x4(%esp)
     c14:	00 
     c15:	89 04 24             	mov    %eax,(%esp)
     c18:	e8 b3 3b 00 00       	call   47d0 <printf>
    exit(0);
     c1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c24:	e8 49 3a 00 00       	call   4672 <exit>
     c29:	e9 15 ff ff ff       	jmp    b43 <dirtest+0x53>
     c2e:	66 90                	xchg   %ax,%ax

00000c30 <exectest>:
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     c36:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     c3b:	c7 44 24 04 54 4e 00 	movl   $0x4e54,0x4(%esp)
     c42:	00 
     c43:	89 04 24             	mov    %eax,(%esp)
     c46:	e8 85 3b 00 00       	call   47d0 <printf>
  if(exec("echo", echoargv) < 0){
     c4b:	c7 44 24 04 d8 6b 00 	movl   $0x6bd8,0x4(%esp)
     c52:	00 
     c53:	c7 04 24 1d 4c 00 00 	movl   $0x4c1d,(%esp)
     c5a:	e8 4b 3a 00 00       	call   46aa <exec>
     c5f:	85 c0                	test   %eax,%eax
     c61:	78 05                	js     c68 <exectest+0x38>
}
     c63:	c9                   	leave  
     c64:	c3                   	ret    
     c65:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "exec echo failed\n");
     c68:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
     c6d:	c7 44 24 04 5f 4e 00 	movl   $0x4e5f,0x4(%esp)
     c74:	00 
     c75:	89 04 24             	mov    %eax,(%esp)
     c78:	e8 53 3b 00 00       	call   47d0 <printf>
    exit(0);
     c7d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c84:	e8 e9 39 00 00       	call   4672 <exit>
}
     c89:	c9                   	leave  
     c8a:	c3                   	ret    
     c8b:	90                   	nop
     c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c90 <pipe1>:
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	57                   	push   %edi
     c94:	56                   	push   %esi
     c95:	53                   	push   %ebx
     c96:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     c99:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c9c:	89 04 24             	mov    %eax,(%esp)
     c9f:	e8 de 39 00 00       	call   4682 <pipe>
     ca4:	85 c0                	test   %eax,%eax
     ca6:	0f 85 3e 01 00 00    	jne    dea <pipe1+0x15a>
  pid = fork();
     cac:	e8 b9 39 00 00       	call   466a <fork>
  if(pid == 0){
     cb1:	83 f8 00             	cmp    $0x0,%eax
  pid = fork();
     cb4:	89 45 dc             	mov    %eax,-0x24(%ebp)
  if(pid == 0){
     cb7:	0f 84 90 00 00 00    	je     d4d <pipe1+0xbd>
  } else if(pid > 0){
     cbd:	0f 8e 4c 01 00 00    	jle    e0f <pipe1+0x17f>
    close(fds[1]);
     cc3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     cc6:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     ccb:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     ccd:	89 04 24             	mov    %eax,(%esp)
     cd0:	e8 c5 39 00 00       	call   469a <close>
    total = 0;
     cd5:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     cdc:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cdf:	89 7c 24 08          	mov    %edi,0x8(%esp)
     ce3:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     cea:	00 
     ceb:	89 04 24             	mov    %eax,(%esp)
     cee:	e8 97 39 00 00       	call   468a <read>
     cf3:	85 c0                	test   %eax,%eax
     cf5:	0f 8e 2a 01 00 00    	jle    e25 <pipe1+0x195>
     cfb:	89 d9                	mov    %ebx,%ecx
     cfd:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     d00:	f7 d9                	neg    %ecx
     d02:	eb 06                	jmp    d0a <pipe1+0x7a>
     d04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     d08:	89 d3                	mov    %edx,%ebx
     d0a:	38 9c 0b c0 93 00 00 	cmp    %bl,0x93c0(%ebx,%ecx,1)
     d11:	8d 53 01             	lea    0x1(%ebx),%edx
     d14:	75 1b                	jne    d31 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     d16:	39 f2                	cmp    %esi,%edx
     d18:	75 ee                	jne    d08 <pipe1+0x78>
      cc = cc * 2;
     d1a:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     d1c:	89 f3                	mov    %esi,%ebx
      total += n;
     d1e:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     d21:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     d27:	b8 00 20 00 00       	mov    $0x2000,%eax
     d2c:	0f 43 f8             	cmovae %eax,%edi
     d2f:	eb ab                	jmp    cdc <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     d31:	c7 44 24 04 8e 4e 00 	movl   $0x4e8e,0x4(%esp)
     d38:	00 
     d39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d40:	e8 8b 3a 00 00       	call   47d0 <printf>
}
     d45:	83 c4 2c             	add    $0x2c,%esp
     d48:	5b                   	pop    %ebx
     d49:	5e                   	pop    %esi
     d4a:	5f                   	pop    %edi
     d4b:	5d                   	pop    %ebp
     d4c:	c3                   	ret    
    close(fds[0]);
     d4d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     d50:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     d52:	89 04 24             	mov    %eax,(%esp)
     d55:	e8 40 39 00 00       	call   469a <close>
     d5a:	89 f2                	mov    %esi,%edx
{
     d5c:	89 f0                	mov    %esi,%eax
     d5e:	8d 9e 09 04 00 00    	lea    0x409(%esi),%ebx
     d64:	f7 da                	neg    %edx
     d66:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     d68:	88 84 02 c0 93 00 00 	mov    %al,0x93c0(%edx,%eax,1)
     d6f:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
     d72:	39 d8                	cmp    %ebx,%eax
     d74:	75 f2                	jne    d68 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     d76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     d79:	89 de                	mov    %ebx,%esi
     d7b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     d82:	00 
     d83:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     d8a:	00 
     d8b:	89 04 24             	mov    %eax,(%esp)
     d8e:	e8 ff 38 00 00       	call   4692 <write>
     d93:	3d 09 04 00 00       	cmp    $0x409,%eax
     d98:	74 20                	je     dba <pipe1+0x12a>
        printf(1, "pipe1 oops 1\n");
     d9a:	c7 44 24 04 80 4e 00 	movl   $0x4e80,0x4(%esp)
     da1:	00 
     da2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     da9:	e8 22 3a 00 00       	call   47d0 <printf>
        exit(0);
     dae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     db5:	e8 b8 38 00 00       	call   4672 <exit>
    for(n = 0; n < 5; n++){
     dba:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     dc0:	75 98                	jne    d5a <pipe1+0xca>
    exit(0);
     dc2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dc9:	e8 a4 38 00 00       	call   4672 <exit>
  printf(1, "pipe1 ok\n");
     dce:	c7 44 24 04 c2 4e 00 	movl   $0x4ec2,0x4(%esp)
     dd5:	00 
     dd6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ddd:	e8 ee 39 00 00       	call   47d0 <printf>
}
     de2:	83 c4 2c             	add    $0x2c,%esp
     de5:	5b                   	pop    %ebx
     de6:	5e                   	pop    %esi
     de7:	5f                   	pop    %edi
     de8:	5d                   	pop    %ebp
     de9:	c3                   	ret    
    printf(1, "pipe() failed\n");
     dea:	c7 44 24 04 71 4e 00 	movl   $0x4e71,0x4(%esp)
     df1:	00 
     df2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     df9:	e8 d2 39 00 00       	call   47d0 <printf>
    exit(0);
     dfe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e05:	e8 68 38 00 00       	call   4672 <exit>
     e0a:	e9 9d fe ff ff       	jmp    cac <pipe1+0x1c>
    printf(1, "fork() failed\n");
     e0f:	c7 44 24 04 b3 4e 00 	movl   $0x4eb3,0x4(%esp)
     e16:	00 
     e17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e1e:	e8 ad 39 00 00       	call   47d0 <printf>
     e23:	eb 9d                	jmp    dc2 <pipe1+0x132>
    if(total != 5 * 1033){
     e25:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e28:	3d 2d 14 00 00       	cmp    $0x142d,%eax
     e2d:	74 24                	je     e53 <pipe1+0x1c3>
      printf(1, "pipe1 oops 3 total %d\n", total);
     e2f:	89 44 24 08          	mov    %eax,0x8(%esp)
     e33:	c7 44 24 04 9c 4e 00 	movl   $0x4e9c,0x4(%esp)
     e3a:	00 
     e3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e42:	e8 89 39 00 00       	call   47d0 <printf>
      exit(0);
     e47:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e4e:	e8 1f 38 00 00       	call   4672 <exit>
    close(fds[0]);
     e53:	8b 45 e0             	mov    -0x20(%ebp),%eax
     e56:	89 04 24             	mov    %eax,(%esp)
     e59:	e8 3c 38 00 00       	call   469a <close>
    wait(&pid);
     e5e:	8d 45 dc             	lea    -0x24(%ebp),%eax
     e61:	89 04 24             	mov    %eax,(%esp)
     e64:	e8 11 38 00 00       	call   467a <wait>
     e69:	e9 60 ff ff ff       	jmp    dce <pipe1+0x13e>
     e6e:	66 90                	xchg   %ax,%ax

00000e70 <preempt>:
{
     e70:	55                   	push   %ebp
     e71:	89 e5                	mov    %esp,%ebp
     e73:	83 ec 38             	sub    $0x38,%esp
  printf(1, "preempt: ");
     e76:	c7 44 24 04 cc 4e 00 	movl   $0x4ecc,0x4(%esp)
     e7d:	00 
     e7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e85:	e8 46 39 00 00       	call   47d0 <printf>
  pid1 = fork();
     e8a:	e8 db 37 00 00       	call   466a <fork>
  if(pid1 == 0)
     e8f:	85 c0                	test   %eax,%eax
  pid1 = fork();
     e91:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid1 == 0)
     e94:	75 02                	jne    e98 <preempt+0x28>
     e96:	eb fe                	jmp    e96 <preempt+0x26>
  pid2 = fork();
     e98:	e8 cd 37 00 00       	call   466a <fork>
  if(pid2 == 0)
     e9d:	85 c0                	test   %eax,%eax
  pid2 = fork();
     e9f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  if(pid2 == 0)
     ea2:	75 02                	jne    ea6 <preempt+0x36>
     ea4:	eb fe                	jmp    ea4 <preempt+0x34>
  pipe(pfds);
     ea6:	8d 45 f0             	lea    -0x10(%ebp),%eax
     ea9:	89 04 24             	mov    %eax,(%esp)
     eac:	e8 d1 37 00 00       	call   4682 <pipe>
  pid3 = fork();
     eb1:	e8 b4 37 00 00       	call   466a <fork>
  if(pid3 == 0){
     eb6:	85 c0                	test   %eax,%eax
  pid3 = fork();
     eb8:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if(pid3 == 0){
     ebb:	75 4c                	jne    f09 <preempt+0x99>
    close(pfds[0]);
     ebd:	8b 45 f0             	mov    -0x10(%ebp),%eax
     ec0:	89 04 24             	mov    %eax,(%esp)
     ec3:	e8 d2 37 00 00       	call   469a <close>
    if(write(pfds[1], "x", 1) != 1)
     ec8:	8b 45 f4             	mov    -0xc(%ebp),%eax
     ecb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     ed2:	00 
     ed3:	c7 44 24 04 91 54 00 	movl   $0x5491,0x4(%esp)
     eda:	00 
     edb:	89 04 24             	mov    %eax,(%esp)
     ede:	e8 af 37 00 00       	call   4692 <write>
     ee3:	83 f8 01             	cmp    $0x1,%eax
     ee6:	74 14                	je     efc <preempt+0x8c>
      printf(1, "preempt write error");
     ee8:	c7 44 24 04 d6 4e 00 	movl   $0x4ed6,0x4(%esp)
     eef:	00 
     ef0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ef7:	e8 d4 38 00 00       	call   47d0 <printf>
    close(pfds[1]);
     efc:	8b 45 f4             	mov    -0xc(%ebp),%eax
     eff:	89 04 24             	mov    %eax,(%esp)
     f02:	e8 93 37 00 00       	call   469a <close>
     f07:	eb fe                	jmp    f07 <preempt+0x97>
  close(pfds[1]);
     f09:	8b 45 f4             	mov    -0xc(%ebp),%eax
     f0c:	89 04 24             	mov    %eax,(%esp)
     f0f:	e8 86 37 00 00       	call   469a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     f14:	8b 45 f0             	mov    -0x10(%ebp),%eax
     f17:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     f1e:	00 
     f1f:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
     f26:	00 
     f27:	89 04 24             	mov    %eax,(%esp)
     f2a:	e8 5b 37 00 00       	call   468a <read>
     f2f:	83 f8 01             	cmp    $0x1,%eax
     f32:	74 16                	je     f4a <preempt+0xda>
    printf(1, "preempt read error");
     f34:	c7 44 24 04 ea 4e 00 	movl   $0x4eea,0x4(%esp)
     f3b:	00 
     f3c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f43:	e8 88 38 00 00       	call   47d0 <printf>
}
     f48:	c9                   	leave  
     f49:	c3                   	ret    
  close(pfds[0]);
     f4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
     f4d:	89 04 24             	mov    %eax,(%esp)
     f50:	e8 45 37 00 00       	call   469a <close>
  printf(1, "kill... ");
     f55:	c7 44 24 04 fd 4e 00 	movl   $0x4efd,0x4(%esp)
     f5c:	00 
     f5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f64:	e8 67 38 00 00       	call   47d0 <printf>
  kill(pid1);
     f69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     f6c:	89 04 24             	mov    %eax,(%esp)
     f6f:	e8 2e 37 00 00       	call   46a2 <kill>
  kill(pid2);
     f74:	8b 45 e8             	mov    -0x18(%ebp),%eax
     f77:	89 04 24             	mov    %eax,(%esp)
     f7a:	e8 23 37 00 00       	call   46a2 <kill>
  kill(pid3);
     f7f:	8b 45 ec             	mov    -0x14(%ebp),%eax
     f82:	89 04 24             	mov    %eax,(%esp)
     f85:	e8 18 37 00 00       	call   46a2 <kill>
  printf(1, "wait... ");
     f8a:	c7 44 24 04 06 4f 00 	movl   $0x4f06,0x4(%esp)
     f91:	00 
     f92:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f99:	e8 32 38 00 00       	call   47d0 <printf>
  wait(&pid1);
     f9e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     fa1:	89 04 24             	mov    %eax,(%esp)
     fa4:	e8 d1 36 00 00       	call   467a <wait>
  wait(&pid2);
     fa9:	8d 45 e8             	lea    -0x18(%ebp),%eax
     fac:	89 04 24             	mov    %eax,(%esp)
     faf:	e8 c6 36 00 00       	call   467a <wait>
  wait(&pid3);
     fb4:	8d 45 ec             	lea    -0x14(%ebp),%eax
     fb7:	89 04 24             	mov    %eax,(%esp)
     fba:	e8 bb 36 00 00       	call   467a <wait>
  printf(1, "preempt ok\n");
     fbf:	c7 44 24 04 0f 4f 00 	movl   $0x4f0f,0x4(%esp)
     fc6:	00 
     fc7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     fce:	e8 fd 37 00 00       	call   47d0 <printf>
     fd3:	e9 70 ff ff ff       	jmp    f48 <preempt+0xd8>
     fd8:	90                   	nop
     fd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000fe0 <exitwait>:
{
     fe0:	55                   	push   %ebp
     fe1:	89 e5                	mov    %esp,%ebp
     fe3:	56                   	push   %esi
     fe4:	53                   	push   %ebx
     fe5:	bb 64 00 00 00       	mov    $0x64,%ebx
     fea:	83 ec 20             	sub    $0x20,%esp
      if(wait(&pid) != pid){
     fed:	8d 75 f4             	lea    -0xc(%ebp),%esi
     ff0:	eb 18                	jmp    100a <exitwait+0x2a>
     ff2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ff8:	89 34 24             	mov    %esi,(%esp)
     ffb:	e8 7a 36 00 00       	call   467a <wait>
    1000:	3b 45 f4             	cmp    -0xc(%ebp),%eax
    1003:	75 63                	jne    1068 <exitwait+0x88>
  for(i = 0; i < 100; i++){
    1005:	83 eb 01             	sub    $0x1,%ebx
    1008:	74 1f                	je     1029 <exitwait+0x49>
    pid = fork();
    100a:	e8 5b 36 00 00       	call   466a <fork>
    if(pid < 0){
    100f:	85 c0                	test   %eax,%eax
    pid = fork();
    1011:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(pid < 0){
    1014:	78 32                	js     1048 <exitwait+0x68>
    if(pid){
    1016:	75 e0                	jne    ff8 <exitwait+0x18>
      exit(0);
    1018:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    101f:	e8 4e 36 00 00       	call   4672 <exit>
  for(i = 0; i < 100; i++){
    1024:	83 eb 01             	sub    $0x1,%ebx
    1027:	75 e1                	jne    100a <exitwait+0x2a>
  printf(1, "exitwait ok\n");
    1029:	c7 44 24 04 2b 4f 00 	movl   $0x4f2b,0x4(%esp)
    1030:	00 
    1031:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1038:	e8 93 37 00 00       	call   47d0 <printf>
}
    103d:	83 c4 20             	add    $0x20,%esp
    1040:	5b                   	pop    %ebx
    1041:	5e                   	pop    %esi
    1042:	5d                   	pop    %ebp
    1043:	c3                   	ret    
    1044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
    1048:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    104f:	00 
    1050:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1057:	e8 74 37 00 00       	call   47d0 <printf>
}
    105c:	83 c4 20             	add    $0x20,%esp
    105f:	5b                   	pop    %ebx
    1060:	5e                   	pop    %esi
    1061:	5d                   	pop    %ebp
    1062:	c3                   	ret    
    1063:	90                   	nop
    1064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
    1068:	c7 44 24 04 1b 4f 00 	movl   $0x4f1b,0x4(%esp)
    106f:	00 
    1070:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1077:	e8 54 37 00 00       	call   47d0 <printf>
}
    107c:	83 c4 20             	add    $0x20,%esp
    107f:	5b                   	pop    %ebx
    1080:	5e                   	pop    %esi
    1081:	5d                   	pop    %ebp
    1082:	c3                   	ret    
    1083:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1089:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001090 <mem>:
{
    1090:	55                   	push   %ebp
    1091:	89 e5                	mov    %esp,%ebp
    1093:	57                   	push   %edi
    1094:	56                   	push   %esi
    1095:	53                   	push   %ebx
  if((pid = fork()) == 0){
    1096:	31 db                	xor    %ebx,%ebx
{
    1098:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "mem test\n");
    109b:	c7 44 24 04 38 4f 00 	movl   $0x4f38,0x4(%esp)
    10a2:	00 
    10a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10aa:	e8 21 37 00 00       	call   47d0 <printf>
  ppid = getpid();
    10af:	e8 3e 36 00 00       	call   46f2 <getpid>
    10b4:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    10b6:	e8 af 35 00 00       	call   466a <fork>
    10bb:	85 c0                	test   %eax,%eax
    10bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    10c0:	74 0a                	je     10cc <mem+0x3c>
    10c2:	eb 76                	jmp    113a <mem+0xaa>
    10c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      *(char**)m2 = m1;
    10c8:	89 18                	mov    %ebx,(%eax)
    10ca:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
    10cc:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
    10d3:	e8 78 39 00 00       	call   4a50 <malloc>
    10d8:	85 c0                	test   %eax,%eax
    10da:	75 ec                	jne    10c8 <mem+0x38>
    while(m1){
    10dc:	85 db                	test   %ebx,%ebx
    10de:	75 0a                	jne    10ea <mem+0x5a>
    10e0:	eb 16                	jmp    10f8 <mem+0x68>
    10e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
    10e8:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
    10ea:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    10ec:	89 1c 24             	mov    %ebx,(%esp)
    10ef:	e8 cc 38 00 00       	call   49c0 <free>
    while(m1){
    10f4:	85 ff                	test   %edi,%edi
    10f6:	75 f0                	jne    10e8 <mem+0x58>
    m1 = malloc(1024*20);
    10f8:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
    10ff:	e8 4c 39 00 00       	call   4a50 <malloc>
    if(m1 == 0){
    1104:	85 c0                	test   %eax,%eax
    m1 = malloc(1024*20);
    1106:	89 c3                	mov    %eax,%ebx
    if(m1 == 0){
    1108:	74 43                	je     114d <mem+0xbd>
    free(m1);
    110a:	89 1c 24             	mov    %ebx,(%esp)
    110d:	e8 ae 38 00 00       	call   49c0 <free>
    printf(1, "mem ok\n");
    1112:	c7 44 24 04 5c 4f 00 	movl   $0x4f5c,0x4(%esp)
    1119:	00 
    111a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1121:	e8 aa 36 00 00       	call   47d0 <printf>
    exit(0);
    1126:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    112d:	e8 40 35 00 00       	call   4672 <exit>
}
    1132:	83 c4 2c             	add    $0x2c,%esp
    1135:	5b                   	pop    %ebx
    1136:	5e                   	pop    %esi
    1137:	5f                   	pop    %edi
    1138:	5d                   	pop    %ebp
    1139:	c3                   	ret    
    wait(&pid);
    113a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    113d:	89 04 24             	mov    %eax,(%esp)
    1140:	e8 35 35 00 00       	call   467a <wait>
}
    1145:	83 c4 2c             	add    $0x2c,%esp
    1148:	5b                   	pop    %ebx
    1149:	5e                   	pop    %esi
    114a:	5f                   	pop    %edi
    114b:	5d                   	pop    %ebp
    114c:	c3                   	ret    
      printf(1, "couldn't allocate mem?!!\n");
    114d:	c7 44 24 04 42 4f 00 	movl   $0x4f42,0x4(%esp)
    1154:	00 
    1155:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    115c:	e8 6f 36 00 00       	call   47d0 <printf>
      kill(ppid);
    1161:	89 34 24             	mov    %esi,(%esp)
    1164:	e8 39 35 00 00       	call   46a2 <kill>
      exit(0);
    1169:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1170:	e8 fd 34 00 00       	call   4672 <exit>
    1175:	eb 93                	jmp    110a <mem+0x7a>
    1177:	89 f6                	mov    %esi,%esi
    1179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001180 <sharedfd>:
{
    1180:	55                   	push   %ebp
    1181:	89 e5                	mov    %esp,%ebp
    1183:	57                   	push   %edi
    1184:	56                   	push   %esi
    1185:	53                   	push   %ebx
    1186:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
    1189:	c7 44 24 04 64 4f 00 	movl   $0x4f64,0x4(%esp)
    1190:	00 
    1191:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1198:	e8 33 36 00 00       	call   47d0 <printf>
  unlink("sharedfd");
    119d:	c7 04 24 73 4f 00 00 	movl   $0x4f73,(%esp)
    11a4:	e8 19 35 00 00       	call   46c2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    11a9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    11b0:	00 
    11b1:	c7 04 24 73 4f 00 00 	movl   $0x4f73,(%esp)
    11b8:	e8 f5 34 00 00       	call   46b2 <open>
  if(fd < 0){
    11bd:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
    11bf:	89 c7                	mov    %eax,%edi
  if(fd < 0){
    11c1:	0f 88 89 01 00 00    	js     1350 <sharedfd+0x1d0>
  pid = fork();
    11c7:	e8 9e 34 00 00       	call   466a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    11cc:	8d 75 de             	lea    -0x22(%ebp),%esi
    11cf:	bb e8 03 00 00       	mov    $0x3e8,%ebx
    11d4:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    11db:	00 
    11dc:	89 34 24             	mov    %esi,(%esp)
    11df:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    11e2:	89 45 d8             	mov    %eax,-0x28(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    11e5:	19 c0                	sbb    %eax,%eax
    11e7:	83 e0 f3             	and    $0xfffffff3,%eax
    11ea:	83 c0 70             	add    $0x70,%eax
    11ed:	89 44 24 04          	mov    %eax,0x4(%esp)
    11f1:	e8 0a 33 00 00       	call   4500 <memset>
    11f6:	eb 05                	jmp    11fd <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
    11f8:	83 eb 01             	sub    $0x1,%ebx
    11fb:	74 2d                	je     122a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    11fd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1204:	00 
    1205:	89 74 24 04          	mov    %esi,0x4(%esp)
    1209:	89 3c 24             	mov    %edi,(%esp)
    120c:	e8 81 34 00 00       	call   4692 <write>
    1211:	83 f8 0a             	cmp    $0xa,%eax
    1214:	74 e2                	je     11f8 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
    1216:	c7 44 24 04 64 5c 00 	movl   $0x5c64,0x4(%esp)
    121d:	00 
    121e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1225:	e8 a6 35 00 00       	call   47d0 <printf>
  if(pid == 0)
    122a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    122d:	85 c0                	test   %eax,%eax
    122f:	0f 84 94 00 00 00    	je     12c9 <sharedfd+0x149>
    wait(&pid);
    1235:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1238:	89 04 24             	mov    %eax,(%esp)
    123b:	e8 3a 34 00 00       	call   467a <wait>
  close(fd);
    1240:	89 3c 24             	mov    %edi,(%esp)
    1243:	e8 52 34 00 00       	call   469a <close>
  fd = open("sharedfd", 0);
    1248:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    124f:	00 
    1250:	c7 04 24 73 4f 00 00 	movl   $0x4f73,(%esp)
    1257:	e8 56 34 00 00       	call   46b2 <open>
  if(fd < 0){
    125c:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    125e:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1261:	0f 88 05 01 00 00    	js     136c <sharedfd+0x1ec>
    1267:	31 d2                	xor    %edx,%edx
    1269:	31 db                	xor    %ebx,%ebx
    126b:	8d 7d e8             	lea    -0x18(%ebp),%edi
    126e:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1278:	8b 45 d0             	mov    -0x30(%ebp),%eax
    127b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1282:	00 
    1283:	89 74 24 04          	mov    %esi,0x4(%esp)
    1287:	89 04 24             	mov    %eax,(%esp)
    128a:	e8 fb 33 00 00       	call   468a <read>
    128f:	85 c0                	test   %eax,%eax
    1291:	7e 47                	jle    12da <sharedfd+0x15a>
    1293:	89 f0                	mov    %esi,%eax
    1295:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1298:	eb 18                	jmp    12b2 <sharedfd+0x132>
    129a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
    12a0:	80 f9 70             	cmp    $0x70,%cl
    12a3:	0f 94 c1             	sete   %cl
    12a6:	83 c0 01             	add    $0x1,%eax
    12a9:	0f b6 c9             	movzbl %cl,%ecx
    12ac:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    12ae:	39 f8                	cmp    %edi,%eax
    12b0:	74 12                	je     12c4 <sharedfd+0x144>
      if(buf[i] == 'c')
    12b2:	0f b6 08             	movzbl (%eax),%ecx
    12b5:	80 f9 63             	cmp    $0x63,%cl
    12b8:	75 e6                	jne    12a0 <sharedfd+0x120>
    12ba:	83 c0 01             	add    $0x1,%eax
        nc++;
    12bd:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    12c0:	39 f8                	cmp    %edi,%eax
    12c2:	75 ee                	jne    12b2 <sharedfd+0x132>
    12c4:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    12c7:	eb af                	jmp    1278 <sharedfd+0xf8>
    exit(0);
    12c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12d0:	e8 9d 33 00 00       	call   4672 <exit>
    12d5:	e9 66 ff ff ff       	jmp    1240 <sharedfd+0xc0>
  close(fd);
    12da:	8b 45 d0             	mov    -0x30(%ebp),%eax
    12dd:	89 04 24             	mov    %eax,(%esp)
    12e0:	e8 b5 33 00 00       	call   469a <close>
  unlink("sharedfd");
    12e5:	c7 04 24 73 4f 00 00 	movl   $0x4f73,(%esp)
    12ec:	e8 d1 33 00 00       	call   46c2 <unlink>
  if(nc == 10000 && np == 10000){
    12f1:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    12f7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    12fa:	75 08                	jne    1304 <sharedfd+0x184>
    12fc:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1302:	74 30                	je     1334 <sharedfd+0x1b4>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1304:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    1308:	89 54 24 08          	mov    %edx,0x8(%esp)
    130c:	c7 44 24 04 89 4f 00 	movl   $0x4f89,0x4(%esp)
    1313:	00 
    1314:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    131b:	e8 b0 34 00 00       	call   47d0 <printf>
    exit(0);
    1320:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1327:	e8 46 33 00 00       	call   4672 <exit>
}
    132c:	83 c4 3c             	add    $0x3c,%esp
    132f:	5b                   	pop    %ebx
    1330:	5e                   	pop    %esi
    1331:	5f                   	pop    %edi
    1332:	5d                   	pop    %ebp
    1333:	c3                   	ret    
    printf(1, "sharedfd ok\n");
    1334:	c7 44 24 04 7c 4f 00 	movl   $0x4f7c,0x4(%esp)
    133b:	00 
    133c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1343:	e8 88 34 00 00       	call   47d0 <printf>
}
    1348:	83 c4 3c             	add    $0x3c,%esp
    134b:	5b                   	pop    %ebx
    134c:	5e                   	pop    %esi
    134d:	5f                   	pop    %edi
    134e:	5d                   	pop    %ebp
    134f:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    1350:	c7 44 24 04 38 5c 00 	movl   $0x5c38,0x4(%esp)
    1357:	00 
    1358:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    135f:	e8 6c 34 00 00       	call   47d0 <printf>
}
    1364:	83 c4 3c             	add    $0x3c,%esp
    1367:	5b                   	pop    %ebx
    1368:	5e                   	pop    %esi
    1369:	5f                   	pop    %edi
    136a:	5d                   	pop    %ebp
    136b:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    136c:	c7 44 24 04 84 5c 00 	movl   $0x5c84,0x4(%esp)
    1373:	00 
    1374:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    137b:	e8 50 34 00 00       	call   47d0 <printf>
}
    1380:	83 c4 3c             	add    $0x3c,%esp
    1383:	5b                   	pop    %ebx
    1384:	5e                   	pop    %esi
    1385:	5f                   	pop    %edi
    1386:	5d                   	pop    %ebp
    1387:	c3                   	ret    
    1388:	90                   	nop
    1389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001390 <fourfiles>:
{
    1390:	55                   	push   %ebp
    1391:	89 e5                	mov    %esp,%ebp
    1393:	57                   	push   %edi
    1394:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    1395:	be 30 00 00 00       	mov    $0x30,%esi
{
    139a:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    139b:	bb 9e 4f 00 00       	mov    $0x4f9e,%ebx
{
    13a0:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "fourfiles test\n");
    13a3:	c7 44 24 04 a4 4f 00 	movl   $0x4fa4,0x4(%esp)
    13aa:	00 
    13ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    13b2:	c7 45 d8 9e 4f 00 00 	movl   $0x4f9e,-0x28(%ebp)
    13b9:	c7 45 dc e7 50 00 00 	movl   $0x50e7,-0x24(%ebp)
    13c0:	c7 45 e0 eb 50 00 00 	movl   $0x50eb,-0x20(%ebp)
    13c7:	c7 45 e4 a1 4f 00 00 	movl   $0x4fa1,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    13ce:	e8 fd 33 00 00       	call   47d0 <printf>
    unlink(fname);
    13d3:	89 1c 24             	mov    %ebx,(%esp)
    13d6:	e8 e7 32 00 00       	call   46c2 <unlink>
    pid = fork();
    13db:	e8 8a 32 00 00       	call   466a <fork>
    if(pid < 0){
    13e0:	85 c0                	test   %eax,%eax
    pid = fork();
    13e2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    if(pid < 0){
    13e5:	0f 88 d1 01 00 00    	js     15bc <fourfiles+0x22c>
    if(pid == 0){
    13eb:	85 c0                	test   %eax,%eax
    13ed:	74 15                	je     1404 <fourfiles+0x74>
    13ef:	83 c6 01             	add    $0x1,%esi
  for(pi = 0; pi < 4; pi++){
    13f2:	83 fe 34             	cmp    $0x34,%esi
    13f5:	0f 84 a0 00 00 00    	je     149b <fourfiles+0x10b>
    13fb:	8b 9c b5 18 ff ff ff 	mov    -0xe8(%ebp,%esi,4),%ebx
    1402:	eb cf                	jmp    13d3 <fourfiles+0x43>
      fd = open(fname, O_CREATE | O_RDWR);
    1404:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    140b:	00 
    140c:	89 1c 24             	mov    %ebx,(%esp)
    140f:	e8 9e 32 00 00       	call   46b2 <open>
      if(fd < 0){
    1414:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1416:	89 c7                	mov    %eax,%edi
      if(fd < 0){
    1418:	0f 88 c6 01 00 00    	js     15e4 <fourfiles+0x254>
      memset(buf, '0'+pi, 512);
    141e:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    1425:	00 
    1426:	bb 0c 00 00 00       	mov    $0xc,%ebx
    142b:	89 74 24 04          	mov    %esi,0x4(%esp)
    142f:	c7 04 24 c0 93 00 00 	movl   $0x93c0,(%esp)
    1436:	e8 c5 30 00 00       	call   4500 <memset>
        if((n = write(fd, buf, 500)) != 500){
    143b:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1442:	00 
    1443:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    144a:	00 
    144b:	89 3c 24             	mov    %edi,(%esp)
    144e:	e8 3f 32 00 00       	call   4692 <write>
    1453:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1458:	74 24                	je     147e <fourfiles+0xee>
          printf(1, "write failed %d\n", n);
    145a:	89 44 24 08          	mov    %eax,0x8(%esp)
    145e:	c7 44 24 04 b4 4f 00 	movl   $0x4fb4,0x4(%esp)
    1465:	00 
    1466:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    146d:	e8 5e 33 00 00       	call   47d0 <printf>
          exit(0);
    1472:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1479:	e8 f4 31 00 00       	call   4672 <exit>
      for(i = 0; i < 12; i++){
    147e:	83 eb 01             	sub    $0x1,%ebx
    1481:	75 b8                	jne    143b <fourfiles+0xab>
      exit(0);
    1483:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    148a:	83 c6 01             	add    $0x1,%esi
    148d:	e8 e0 31 00 00       	call   4672 <exit>
  for(pi = 0; pi < 4; pi++){
    1492:	83 fe 34             	cmp    $0x34,%esi
    1495:	0f 85 60 ff ff ff    	jne    13fb <fourfiles+0x6b>
    wait(&pid);
    149b:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
    149e:	be 30 00 00 00       	mov    $0x30,%esi
    14a3:	89 1c 24             	mov    %ebx,(%esp)
    14a6:	e8 cf 31 00 00       	call   467a <wait>
    14ab:	89 1c 24             	mov    %ebx,(%esp)
    14ae:	e8 c7 31 00 00       	call   467a <wait>
    14b3:	89 1c 24             	mov    %ebx,(%esp)
    14b6:	e8 bf 31 00 00       	call   467a <wait>
    14bb:	89 1c 24             	mov    %ebx,(%esp)
    14be:	e8 b7 31 00 00       	call   467a <wait>
    14c3:	c7 45 bc 9e 4f 00 00 	movl   $0x4f9e,-0x44(%ebp)
    fd = open(fname, 0);
    14ca:	8b 45 bc             	mov    -0x44(%ebp),%eax
    14cd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    14d4:	00 
    14d5:	89 04 24             	mov    %eax,(%esp)
    14d8:	e8 d5 31 00 00       	call   46b2 <open>
    total = 0;
    14dd:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    fd = open(fname, 0);
    14e4:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    14e7:	90                   	nop
    while((n = read(fd, buf, sizeof(buf))) > 0){
    14e8:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    14eb:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    14f2:	00 
    14f3:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    14fa:	00 
    14fb:	89 04 24             	mov    %eax,(%esp)
    14fe:	e8 87 31 00 00       	call   468a <read>
    1503:	85 c0                	test   %eax,%eax
    1505:	89 c3                	mov    %eax,%ebx
    1507:	7e 3e                	jle    1547 <fourfiles+0x1b7>
    1509:	31 ff                	xor    %edi,%edi
    150b:	90                   	nop
    150c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if(buf[j] != '0'+i){
    1510:	0f be 87 c0 93 00 00 	movsbl 0x93c0(%edi),%eax
    1517:	39 f0                	cmp    %esi,%eax
    1519:	74 20                	je     153b <fourfiles+0x1ab>
          printf(1, "wrong char\n");
    151b:	c7 44 24 04 c5 4f 00 	movl   $0x4fc5,0x4(%esp)
    1522:	00 
    1523:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    152a:	e8 a1 32 00 00       	call   47d0 <printf>
          exit(0);
    152f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1536:	e8 37 31 00 00       	call   4672 <exit>
      for(j = 0; j < n; j++){
    153b:	83 c7 01             	add    $0x1,%edi
    153e:	39 df                	cmp    %ebx,%edi
    1540:	75 ce                	jne    1510 <fourfiles+0x180>
      total += n;
    1542:	01 7d c0             	add    %edi,-0x40(%ebp)
    1545:	eb a1                	jmp    14e8 <fourfiles+0x158>
    close(fd);
    1547:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    154a:	89 04 24             	mov    %eax,(%esp)
    154d:	e8 48 31 00 00       	call   469a <close>
    if(total != 12*500){
    1552:	8b 45 c0             	mov    -0x40(%ebp),%eax
    1555:	3d 70 17 00 00       	cmp    $0x1770,%eax
    155a:	74 24                	je     1580 <fourfiles+0x1f0>
      printf(1, "wrong length %d\n", total);
    155c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1560:	c7 44 24 04 d1 4f 00 	movl   $0x4fd1,0x4(%esp)
    1567:	00 
    1568:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    156f:	e8 5c 32 00 00       	call   47d0 <printf>
      exit(0);
    1574:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    157b:	e8 f2 30 00 00       	call   4672 <exit>
    unlink(fname);
    1580:	8b 45 bc             	mov    -0x44(%ebp),%eax
    1583:	89 04 24             	mov    %eax,(%esp)
    1586:	e8 37 31 00 00       	call   46c2 <unlink>
  for(i = 0; i < 2; i++){
    158b:	83 fe 31             	cmp    $0x31,%esi
    158e:	74 10                	je     15a0 <fourfiles+0x210>
    1590:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1593:	be 31 00 00 00       	mov    $0x31,%esi
    1598:	89 45 bc             	mov    %eax,-0x44(%ebp)
    159b:	e9 2a ff ff ff       	jmp    14ca <fourfiles+0x13a>
  printf(1, "fourfiles ok\n");
    15a0:	c7 44 24 04 e2 4f 00 	movl   $0x4fe2,0x4(%esp)
    15a7:	00 
    15a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15af:	e8 1c 32 00 00       	call   47d0 <printf>
}
    15b4:	83 c4 4c             	add    $0x4c,%esp
    15b7:	5b                   	pop    %ebx
    15b8:	5e                   	pop    %esi
    15b9:	5f                   	pop    %edi
    15ba:	5d                   	pop    %ebp
    15bb:	c3                   	ret    
      printf(1, "fork failed\n");
    15bc:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    15c3:	00 
    15c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15cb:	e8 00 32 00 00       	call   47d0 <printf>
      exit(0);
    15d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15d7:	e8 96 30 00 00       	call   4672 <exit>
    15dc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    15df:	e9 07 fe ff ff       	jmp    13eb <fourfiles+0x5b>
        printf(1, "create failed\n");
    15e4:	c7 44 24 04 3f 52 00 	movl   $0x523f,0x4(%esp)
    15eb:	00 
    15ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15f3:	e8 d8 31 00 00       	call   47d0 <printf>
        exit(0);
    15f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15ff:	e8 6e 30 00 00       	call   4672 <exit>
    1604:	e9 15 fe ff ff       	jmp    141e <fourfiles+0x8e>
    1609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001610 <createdelete>:
{
    1610:	55                   	push   %ebp
    1611:	89 e5                	mov    %esp,%ebp
    1613:	57                   	push   %edi
    1614:	56                   	push   %esi
    1615:	53                   	push   %ebx
    1616:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "createdelete test\n");
    1619:	c7 44 24 04 f0 4f 00 	movl   $0x4ff0,0x4(%esp)
    1620:	00 
    1621:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1624:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    162b:	e8 a0 31 00 00       	call   47d0 <printf>
    1630:	c6 45 b7 70          	movb   $0x70,-0x49(%ebp)
    pid = fork();
    1634:	e8 31 30 00 00       	call   466a <fork>
    if(pid < 0){
    1639:	85 c0                	test   %eax,%eax
    pid = fork();
    163b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    if(pid < 0){
    163e:	0f 88 41 02 00 00    	js     1885 <createdelete+0x275>
    if(pid == 0){
    1644:	85 c0                	test   %eax,%eax
    1646:	0f 85 98 00 00 00    	jne    16e4 <createdelete+0xd4>
      name[0] = 'p' + pi;
    164c:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      name[2] = '\0';
    1650:	be 01 00 00 00       	mov    $0x1,%esi
    1655:	31 db                	xor    %ebx,%ebx
    1657:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
      name[0] = 'p' + pi;
    165b:	88 45 c8             	mov    %al,-0x38(%ebp)
    165e:	eb 0b                	jmp    166b <createdelete+0x5b>
      for(i = 0; i < N; i++){
    1660:	83 fe 14             	cmp    $0x14,%esi
    1663:	74 73                	je     16d8 <createdelete+0xc8>
    1665:	83 c3 01             	add    $0x1,%ebx
    1668:	83 c6 01             	add    $0x1,%esi
    166b:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    166e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1675:	00 
    1676:	89 3c 24             	mov    %edi,(%esp)
    1679:	88 45 c9             	mov    %al,-0x37(%ebp)
    167c:	e8 31 30 00 00       	call   46b2 <open>
        if(fd < 0){
    1681:	85 c0                	test   %eax,%eax
    1683:	0f 88 5f 01 00 00    	js     17e8 <createdelete+0x1d8>
        close(fd);
    1689:	89 04 24             	mov    %eax,(%esp)
    168c:	e8 09 30 00 00       	call   469a <close>
        if(i > 0 && (i % 2 ) == 0){
    1691:	85 db                	test   %ebx,%ebx
    1693:	74 d0                	je     1665 <createdelete+0x55>
    1695:	f6 c3 01             	test   $0x1,%bl
    1698:	75 c6                	jne    1660 <createdelete+0x50>
          name[1] = '0' + (i / 2);
    169a:	89 d8                	mov    %ebx,%eax
    169c:	d1 f8                	sar    %eax
    169e:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    16a1:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    16a4:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    16a7:	e8 16 30 00 00       	call   46c2 <unlink>
    16ac:	85 c0                	test   %eax,%eax
    16ae:	79 b0                	jns    1660 <createdelete+0x50>
            printf(1, "unlink failed\n");
    16b0:	c7 44 24 04 f1 4b 00 	movl   $0x4bf1,0x4(%esp)
    16b7:	00 
    16b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16bf:	e8 0c 31 00 00       	call   47d0 <printf>
            exit(0);
    16c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16cb:	e8 a2 2f 00 00       	call   4672 <exit>
      for(i = 0; i < N; i++){
    16d0:	83 fe 14             	cmp    $0x14,%esi
    16d3:	75 90                	jne    1665 <createdelete+0x55>
    16d5:	8d 76 00             	lea    0x0(%esi),%esi
      exit(0);
    16d8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16df:	e8 8e 2f 00 00       	call   4672 <exit>
    16e4:	80 45 b7 01          	addb   $0x1,-0x49(%ebp)
  for(pi = 0; pi < 4; pi++){
    16e8:	80 7d b7 74          	cmpb   $0x74,-0x49(%ebp)
    16ec:	0f 85 42 ff ff ff    	jne    1634 <createdelete+0x24>
    wait(&pid);
    16f2:	8d 5d c4             	lea    -0x3c(%ebp),%ebx
  for(i = 0; i < N; i++){
    16f5:	31 f6                	xor    %esi,%esi
    wait(&pid);
    16f7:	89 1c 24             	mov    %ebx,(%esp)
    16fa:	e8 7b 2f 00 00       	call   467a <wait>
    16ff:	89 1c 24             	mov    %ebx,(%esp)
    1702:	e8 73 2f 00 00       	call   467a <wait>
    1707:	89 1c 24             	mov    %ebx,(%esp)
    170a:	e8 6b 2f 00 00       	call   467a <wait>
    170f:	89 1c 24             	mov    %ebx,(%esp)
    1712:	e8 63 2f 00 00       	call   467a <wait>
  name[0] = name[1] = name[2] = 0;
    1717:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    171b:	90                   	nop
    171c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1720:	85 f6                	test   %esi,%esi
      name[2] = '\0';
    1722:	bb 70 00 00 00       	mov    $0x70,%ebx
    1727:	8d 46 30             	lea    0x30(%esi),%eax
    172a:	0f 94 45 b7          	sete   -0x49(%ebp)
    172e:	83 fe 09             	cmp    $0x9,%esi
    1731:	88 45 b0             	mov    %al,-0x50(%ebp)
    1734:	0f 9f c0             	setg   %al
    1737:	08 45 b7             	or     %al,-0x49(%ebp)
    173a:	8d 46 ff             	lea    -0x1(%esi),%eax
    173d:	89 45 ac             	mov    %eax,-0x54(%ebp)
      name[1] = '0' + i;
    1740:	0f b6 45 b0          	movzbl -0x50(%ebp),%eax
      fd = open(name, 0);
    1744:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    174b:	00 
    174c:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    174f:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1752:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1755:	e8 58 2f 00 00       	call   46b2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    175a:	80 7d b7 00          	cmpb   $0x0,-0x49(%ebp)
    175e:	0f 84 b4 00 00 00    	je     1818 <createdelete+0x208>
    1764:	85 c0                	test   %eax,%eax
    1766:	0f 88 e4 00 00 00    	js     1850 <createdelete+0x240>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    176c:	83 7d ac 08          	cmpl   $0x8,-0x54(%ebp)
    1770:	0f 86 aa 00 00 00    	jbe    1820 <createdelete+0x210>
        close(fd);
    1776:	89 04 24             	mov    %eax,(%esp)
    1779:	e8 1c 2f 00 00       	call   469a <close>
    177e:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    1781:	80 fb 74             	cmp    $0x74,%bl
    1784:	75 ba                	jne    1740 <createdelete+0x130>
  for(i = 0; i < N; i++){
    1786:	83 c6 01             	add    $0x1,%esi
    1789:	83 fe 14             	cmp    $0x14,%esi
    178c:	75 92                	jne    1720 <createdelete+0x110>
    178e:	be 70 00 00 00       	mov    $0x70,%esi
    1793:	90                   	nop
    1794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1798:	8d 46 c0             	lea    -0x40(%esi),%eax
    179b:	bb 04 00 00 00       	mov    $0x4,%ebx
    17a0:	88 45 b7             	mov    %al,-0x49(%ebp)
      name[0] = 'p' + i;
    17a3:	89 f0                	mov    %esi,%eax
    17a5:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    17a8:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      unlink(name);
    17ac:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    17af:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    17b2:	e8 0b 2f 00 00       	call   46c2 <unlink>
    for(pi = 0; pi < 4; pi++){
    17b7:	83 eb 01             	sub    $0x1,%ebx
    17ba:	75 e7                	jne    17a3 <createdelete+0x193>
    17bc:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    17bf:	89 f0                	mov    %esi,%eax
    17c1:	3c 84                	cmp    $0x84,%al
    17c3:	75 d3                	jne    1798 <createdelete+0x188>
  printf(1, "createdelete ok\n");
    17c5:	c7 44 24 04 03 50 00 	movl   $0x5003,0x4(%esp)
    17cc:	00 
    17cd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17d4:	e8 f7 2f 00 00       	call   47d0 <printf>
}
    17d9:	83 c4 5c             	add    $0x5c,%esp
    17dc:	5b                   	pop    %ebx
    17dd:	5e                   	pop    %esi
    17de:	5f                   	pop    %edi
    17df:	5d                   	pop    %ebp
    17e0:	c3                   	ret    
    17e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
          printf(1, "create failed\n");
    17e8:	c7 44 24 04 3f 52 00 	movl   $0x523f,0x4(%esp)
    17ef:	00 
    17f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
    17fa:	e8 d1 2f 00 00       	call   47d0 <printf>
          exit(0);
    17ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1806:	e8 67 2e 00 00       	call   4672 <exit>
    180b:	8b 45 b0             	mov    -0x50(%ebp),%eax
    180e:	e9 76 fe ff ff       	jmp    1689 <createdelete+0x79>
    1813:	90                   	nop
    1814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1818:	85 c0                	test   %eax,%eax
    181a:	0f 88 5e ff ff ff    	js     177e <createdelete+0x16e>
        printf(1, "oops createdelete %s did exist\n", name);
    1820:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1824:	c7 44 24 04 d4 5c 00 	movl   $0x5cd4,0x4(%esp)
    182b:	00 
    182c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1833:	89 45 a8             	mov    %eax,-0x58(%ebp)
    1836:	e8 95 2f 00 00       	call   47d0 <printf>
        exit(0);
    183b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1842:	e8 2b 2e 00 00       	call   4672 <exit>
    1847:	8b 45 a8             	mov    -0x58(%ebp),%eax
    184a:	e9 27 ff ff ff       	jmp    1776 <createdelete+0x166>
    184f:	90                   	nop
        printf(1, "oops createdelete %s didn't exist\n", name);
    1850:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1854:	83 c3 01             	add    $0x1,%ebx
    1857:	c7 44 24 04 b0 5c 00 	movl   $0x5cb0,0x4(%esp)
    185e:	00 
    185f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1866:	e8 65 2f 00 00       	call   47d0 <printf>
        exit(0);
    186b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1872:	e8 fb 2d 00 00       	call   4672 <exit>
    for(pi = 0; pi < 4; pi++){
    1877:	80 fb 74             	cmp    $0x74,%bl
    187a:	0f 85 c0 fe ff ff    	jne    1740 <createdelete+0x130>
    1880:	e9 01 ff ff ff       	jmp    1786 <createdelete+0x176>
      printf(1, "fork failed\n");
    1885:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    188c:	00 
    188d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1894:	e8 37 2f 00 00       	call   47d0 <printf>
      exit(0);
    1899:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18a0:	e8 cd 2d 00 00       	call   4672 <exit>
    18a5:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    18a8:	e9 97 fd ff ff       	jmp    1644 <createdelete+0x34>
    18ad:	8d 76 00             	lea    0x0(%esi),%esi

000018b0 <unlinkread>:
{
    18b0:	55                   	push   %ebp
    18b1:	89 e5                	mov    %esp,%ebp
    18b3:	56                   	push   %esi
    18b4:	53                   	push   %ebx
    18b5:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    18b8:	c7 44 24 04 14 50 00 	movl   $0x5014,0x4(%esp)
    18bf:	00 
    18c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18c7:	e8 04 2f 00 00       	call   47d0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    18cc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    18d3:	00 
    18d4:	c7 04 24 25 50 00 00 	movl   $0x5025,(%esp)
    18db:	e8 d2 2d 00 00       	call   46b2 <open>
  if(fd < 0){
    18e0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    18e2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    18e4:	0f 88 ae 01 00 00    	js     1a98 <unlinkread+0x1e8>
  write(fd, "hello", 5);
    18ea:	89 1c 24             	mov    %ebx,(%esp)
    18ed:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    18f4:	00 
    18f5:	c7 44 24 04 4a 50 00 	movl   $0x504a,0x4(%esp)
    18fc:	00 
    18fd:	e8 90 2d 00 00       	call   4692 <write>
  close(fd);
    1902:	89 1c 24             	mov    %ebx,(%esp)
    1905:	e8 90 2d 00 00       	call   469a <close>
  fd = open("unlinkread", O_RDWR);
    190a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1911:	00 
    1912:	c7 04 24 25 50 00 00 	movl   $0x5025,(%esp)
    1919:	e8 94 2d 00 00       	call   46b2 <open>
  if(fd < 0){
    191e:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1920:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1922:	0f 88 48 01 00 00    	js     1a70 <unlinkread+0x1c0>
  if(unlink("unlinkread") != 0){
    1928:	c7 04 24 25 50 00 00 	movl   $0x5025,(%esp)
    192f:	e8 8e 2d 00 00       	call   46c2 <unlink>
    1934:	85 c0                	test   %eax,%eax
    1936:	0f 85 0c 01 00 00    	jne    1a48 <unlinkread+0x198>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    193c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1943:	00 
    1944:	c7 04 24 25 50 00 00 	movl   $0x5025,(%esp)
    194b:	e8 62 2d 00 00       	call   46b2 <open>
  write(fd1, "yyy", 3);
    1950:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1957:	00 
    1958:	c7 44 24 04 82 50 00 	movl   $0x5082,0x4(%esp)
    195f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1960:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1962:	89 04 24             	mov    %eax,(%esp)
    1965:	e8 28 2d 00 00       	call   4692 <write>
  close(fd1);
    196a:	89 34 24             	mov    %esi,(%esp)
    196d:	e8 28 2d 00 00       	call   469a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1972:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1979:	00 
    197a:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    1981:	00 
    1982:	89 1c 24             	mov    %ebx,(%esp)
    1985:	e8 00 2d 00 00       	call   468a <read>
    198a:	83 f8 05             	cmp    $0x5,%eax
    198d:	74 20                	je     19af <unlinkread+0xff>
    printf(1, "unlinkread read failed");
    198f:	c7 44 24 04 86 50 00 	movl   $0x5086,0x4(%esp)
    1996:	00 
    1997:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    199e:	e8 2d 2e 00 00       	call   47d0 <printf>
    exit(0);
    19a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19aa:	e8 c3 2c 00 00       	call   4672 <exit>
  if(buf[0] != 'h'){
    19af:	80 3d c0 93 00 00 68 	cmpb   $0x68,0x93c0
    19b6:	74 20                	je     19d8 <unlinkread+0x128>
    printf(1, "unlinkread wrong data\n");
    19b8:	c7 44 24 04 9d 50 00 	movl   $0x509d,0x4(%esp)
    19bf:	00 
    19c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c7:	e8 04 2e 00 00       	call   47d0 <printf>
    exit(0);
    19cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19d3:	e8 9a 2c 00 00       	call   4672 <exit>
  if(write(fd, buf, 10) != 10){
    19d8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    19df:	00 
    19e0:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    19e7:	00 
    19e8:	89 1c 24             	mov    %ebx,(%esp)
    19eb:	e8 a2 2c 00 00       	call   4692 <write>
    19f0:	83 f8 0a             	cmp    $0xa,%eax
    19f3:	74 20                	je     1a15 <unlinkread+0x165>
    printf(1, "unlinkread write failed\n");
    19f5:	c7 44 24 04 b4 50 00 	movl   $0x50b4,0x4(%esp)
    19fc:	00 
    19fd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a04:	e8 c7 2d 00 00       	call   47d0 <printf>
    exit(0);
    1a09:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a10:	e8 5d 2c 00 00       	call   4672 <exit>
  close(fd);
    1a15:	89 1c 24             	mov    %ebx,(%esp)
    1a18:	e8 7d 2c 00 00       	call   469a <close>
  unlink("unlinkread");
    1a1d:	c7 04 24 25 50 00 00 	movl   $0x5025,(%esp)
    1a24:	e8 99 2c 00 00       	call   46c2 <unlink>
  printf(1, "unlinkread ok\n");
    1a29:	c7 44 24 04 cd 50 00 	movl   $0x50cd,0x4(%esp)
    1a30:	00 
    1a31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a38:	e8 93 2d 00 00       	call   47d0 <printf>
}
    1a3d:	83 c4 10             	add    $0x10,%esp
    1a40:	5b                   	pop    %ebx
    1a41:	5e                   	pop    %esi
    1a42:	5d                   	pop    %ebp
    1a43:	c3                   	ret    
    1a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink unlinkread failed\n");
    1a48:	c7 44 24 04 68 50 00 	movl   $0x5068,0x4(%esp)
    1a4f:	00 
    1a50:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a57:	e8 74 2d 00 00       	call   47d0 <printf>
    exit(0);
    1a5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a63:	e8 0a 2c 00 00       	call   4672 <exit>
    1a68:	e9 cf fe ff ff       	jmp    193c <unlinkread+0x8c>
    1a6d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "open unlinkread failed\n");
    1a70:	c7 44 24 04 50 50 00 	movl   $0x5050,0x4(%esp)
    1a77:	00 
    1a78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a7f:	e8 4c 2d 00 00       	call   47d0 <printf>
    exit(0);
    1a84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a8b:	e8 e2 2b 00 00       	call   4672 <exit>
    1a90:	e9 93 fe ff ff       	jmp    1928 <unlinkread+0x78>
    1a95:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "create unlinkread failed\n");
    1a98:	c7 44 24 04 30 50 00 	movl   $0x5030,0x4(%esp)
    1a9f:	00 
    1aa0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1aa7:	e8 24 2d 00 00       	call   47d0 <printf>
    exit(0);
    1aac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ab3:	e8 ba 2b 00 00       	call   4672 <exit>
    1ab8:	e9 2d fe ff ff       	jmp    18ea <unlinkread+0x3a>
    1abd:	8d 76 00             	lea    0x0(%esi),%esi

00001ac0 <linktest>:
{
    1ac0:	55                   	push   %ebp
    1ac1:	89 e5                	mov    %esp,%ebp
    1ac3:	53                   	push   %ebx
    1ac4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    1ac7:	c7 44 24 04 dc 50 00 	movl   $0x50dc,0x4(%esp)
    1ace:	00 
    1acf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ad6:	e8 f5 2c 00 00       	call   47d0 <printf>
  unlink("lf1");
    1adb:	c7 04 24 e6 50 00 00 	movl   $0x50e6,(%esp)
    1ae2:	e8 db 2b 00 00       	call   46c2 <unlink>
  unlink("lf2");
    1ae7:	c7 04 24 ea 50 00 00 	movl   $0x50ea,(%esp)
    1aee:	e8 cf 2b 00 00       	call   46c2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    1af3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1afa:	00 
    1afb:	c7 04 24 e6 50 00 00 	movl   $0x50e6,(%esp)
    1b02:	e8 ab 2b 00 00       	call   46b2 <open>
  if(fd < 0){
    1b07:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1b09:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1b0b:	0f 88 d7 01 00 00    	js     1ce8 <linktest+0x228>
  if(write(fd, "hello", 5) != 5){
    1b11:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1b18:	00 
    1b19:	c7 44 24 04 4a 50 00 	movl   $0x504a,0x4(%esp)
    1b20:	00 
    1b21:	89 1c 24             	mov    %ebx,(%esp)
    1b24:	e8 69 2b 00 00       	call   4692 <write>
    1b29:	83 f8 05             	cmp    $0x5,%eax
    1b2c:	74 20                	je     1b4e <linktest+0x8e>
    printf(1, "write lf1 failed\n");
    1b2e:	c7 44 24 04 01 51 00 	movl   $0x5101,0x4(%esp)
    1b35:	00 
    1b36:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1b3d:	e8 8e 2c 00 00       	call   47d0 <printf>
    exit(0);
    1b42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b49:	e8 24 2b 00 00       	call   4672 <exit>
  close(fd);
    1b4e:	89 1c 24             	mov    %ebx,(%esp)
    1b51:	e8 44 2b 00 00       	call   469a <close>
  if(link("lf1", "lf2") < 0){
    1b56:	c7 44 24 04 ea 50 00 	movl   $0x50ea,0x4(%esp)
    1b5d:	00 
    1b5e:	c7 04 24 e6 50 00 00 	movl   $0x50e6,(%esp)
    1b65:	e8 68 2b 00 00       	call   46d2 <link>
    1b6a:	85 c0                	test   %eax,%eax
    1b6c:	0f 88 9e 01 00 00    	js     1d10 <linktest+0x250>
  unlink("lf1");
    1b72:	c7 04 24 e6 50 00 00 	movl   $0x50e6,(%esp)
    1b79:	e8 44 2b 00 00       	call   46c2 <unlink>
  if(open("lf1", 0) >= 0){
    1b7e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b85:	00 
    1b86:	c7 04 24 e6 50 00 00 	movl   $0x50e6,(%esp)
    1b8d:	e8 20 2b 00 00       	call   46b2 <open>
    1b92:	85 c0                	test   %eax,%eax
    1b94:	78 20                	js     1bb6 <linktest+0xf6>
    printf(1, "unlinked lf1 but it is still there!\n");
    1b96:	c7 44 24 04 f4 5c 00 	movl   $0x5cf4,0x4(%esp)
    1b9d:	00 
    1b9e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ba5:	e8 26 2c 00 00       	call   47d0 <printf>
    exit(0);
    1baa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bb1:	e8 bc 2a 00 00       	call   4672 <exit>
  fd = open("lf2", 0);
    1bb6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bbd:	00 
    1bbe:	c7 04 24 ea 50 00 00 	movl   $0x50ea,(%esp)
    1bc5:	e8 e8 2a 00 00       	call   46b2 <open>
  if(fd < 0){
    1bca:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1bcc:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1bce:	0f 88 64 01 00 00    	js     1d38 <linktest+0x278>
  if(read(fd, buf, sizeof(buf)) != 5){
    1bd4:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1bdb:	00 
    1bdc:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    1be3:	00 
    1be4:	89 1c 24             	mov    %ebx,(%esp)
    1be7:	e8 9e 2a 00 00       	call   468a <read>
    1bec:	83 f8 05             	cmp    $0x5,%eax
    1bef:	74 20                	je     1c11 <linktest+0x151>
    printf(1, "read lf2 failed\n");
    1bf1:	c7 44 24 04 39 51 00 	movl   $0x5139,0x4(%esp)
    1bf8:	00 
    1bf9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c00:	e8 cb 2b 00 00       	call   47d0 <printf>
    exit(0);
    1c05:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c0c:	e8 61 2a 00 00       	call   4672 <exit>
  close(fd);
    1c11:	89 1c 24             	mov    %ebx,(%esp)
    1c14:	e8 81 2a 00 00       	call   469a <close>
  if(link("lf2", "lf2") >= 0){
    1c19:	c7 44 24 04 ea 50 00 	movl   $0x50ea,0x4(%esp)
    1c20:	00 
    1c21:	c7 04 24 ea 50 00 00 	movl   $0x50ea,(%esp)
    1c28:	e8 a5 2a 00 00       	call   46d2 <link>
    1c2d:	85 c0                	test   %eax,%eax
    1c2f:	78 20                	js     1c51 <linktest+0x191>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1c31:	c7 44 24 04 4a 51 00 	movl   $0x514a,0x4(%esp)
    1c38:	00 
    1c39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c40:	e8 8b 2b 00 00       	call   47d0 <printf>
    exit(0);
    1c45:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c4c:	e8 21 2a 00 00       	call   4672 <exit>
  unlink("lf2");
    1c51:	c7 04 24 ea 50 00 00 	movl   $0x50ea,(%esp)
    1c58:	e8 65 2a 00 00       	call   46c2 <unlink>
  if(link("lf2", "lf1") >= 0){
    1c5d:	c7 44 24 04 e6 50 00 	movl   $0x50e6,0x4(%esp)
    1c64:	00 
    1c65:	c7 04 24 ea 50 00 00 	movl   $0x50ea,(%esp)
    1c6c:	e8 61 2a 00 00       	call   46d2 <link>
    1c71:	85 c0                	test   %eax,%eax
    1c73:	78 20                	js     1c95 <linktest+0x1d5>
    printf(1, "link non-existant succeeded! oops\n");
    1c75:	c7 44 24 04 1c 5d 00 	movl   $0x5d1c,0x4(%esp)
    1c7c:	00 
    1c7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c84:	e8 47 2b 00 00       	call   47d0 <printf>
    exit(0);
    1c89:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c90:	e8 dd 29 00 00       	call   4672 <exit>
  if(link(".", "lf1") >= 0){
    1c95:	c7 44 24 04 e6 50 00 	movl   $0x50e6,0x4(%esp)
    1c9c:	00 
    1c9d:	c7 04 24 ae 53 00 00 	movl   $0x53ae,(%esp)
    1ca4:	e8 29 2a 00 00       	call   46d2 <link>
    1ca9:	85 c0                	test   %eax,%eax
    1cab:	78 20                	js     1ccd <linktest+0x20d>
    printf(1, "link . lf1 succeeded! oops\n");
    1cad:	c7 44 24 04 68 51 00 	movl   $0x5168,0x4(%esp)
    1cb4:	00 
    1cb5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cbc:	e8 0f 2b 00 00       	call   47d0 <printf>
    exit(0);
    1cc1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1cc8:	e8 a5 29 00 00       	call   4672 <exit>
  printf(1, "linktest ok\n");
    1ccd:	c7 44 24 04 84 51 00 	movl   $0x5184,0x4(%esp)
    1cd4:	00 
    1cd5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cdc:	e8 ef 2a 00 00       	call   47d0 <printf>
}
    1ce1:	83 c4 14             	add    $0x14,%esp
    1ce4:	5b                   	pop    %ebx
    1ce5:	5d                   	pop    %ebp
    1ce6:	c3                   	ret    
    1ce7:	90                   	nop
    printf(1, "create lf1 failed\n");
    1ce8:	c7 44 24 04 ee 50 00 	movl   $0x50ee,0x4(%esp)
    1cef:	00 
    1cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf7:	e8 d4 2a 00 00       	call   47d0 <printf>
    exit(0);
    1cfc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d03:	e8 6a 29 00 00       	call   4672 <exit>
    1d08:	e9 04 fe ff ff       	jmp    1b11 <linktest+0x51>
    1d0d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link lf1 lf2 failed\n");
    1d10:	c7 44 24 04 13 51 00 	movl   $0x5113,0x4(%esp)
    1d17:	00 
    1d18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d1f:	e8 ac 2a 00 00       	call   47d0 <printf>
    exit(0);
    1d24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d2b:	e8 42 29 00 00       	call   4672 <exit>
    1d30:	e9 3d fe ff ff       	jmp    1b72 <linktest+0xb2>
    1d35:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "open lf2 failed\n");
    1d38:	c7 44 24 04 28 51 00 	movl   $0x5128,0x4(%esp)
    1d3f:	00 
    1d40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d47:	e8 84 2a 00 00       	call   47d0 <printf>
    exit(0);
    1d4c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d53:	e8 1a 29 00 00       	call   4672 <exit>
    1d58:	e9 77 fe ff ff       	jmp    1bd4 <linktest+0x114>
    1d5d:	8d 76 00             	lea    0x0(%esi),%esi

00001d60 <concreate>:
{
    1d60:	55                   	push   %ebp
    1d61:	89 e5                	mov    %esp,%ebp
    1d63:	57                   	push   %edi
    1d64:	56                   	push   %esi
    1d65:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    1d66:	31 db                	xor    %ebx,%ebx
{
    1d68:	83 ec 6c             	sub    $0x6c,%esp
  printf(1, "concreate test\n");
    1d6b:	c7 44 24 04 91 51 00 	movl   $0x5191,0x4(%esp)
    1d72:	00 
    1d73:	8d 75 a9             	lea    -0x57(%ebp),%esi
    1d76:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      wait(&pid);
    1d7d:	8d 7d ac             	lea    -0x54(%ebp),%edi
  printf(1, "concreate test\n");
    1d80:	e8 4b 2a 00 00       	call   47d0 <printf>
  file[0] = 'C';
    1d85:	c6 45 a9 43          	movb   $0x43,-0x57(%ebp)
  file[2] = '\0';
    1d89:	c6 45 ab 00          	movb   $0x0,-0x55(%ebp)
    1d8d:	eb 58                	jmp    1de7 <concreate+0x87>
    1d8f:	90                   	nop
    if(pid && (i % 3) == 1){
    1d90:	89 d8                	mov    %ebx,%eax
    1d92:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1d97:	f7 ea                	imul   %edx
    1d99:	89 d8                	mov    %ebx,%eax
    1d9b:	c1 f8 1f             	sar    $0x1f,%eax
    1d9e:	89 d9                	mov    %ebx,%ecx
    1da0:	29 c2                	sub    %eax,%edx
    1da2:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1da5:	29 c1                	sub    %eax,%ecx
    1da7:	83 f9 01             	cmp    $0x1,%ecx
    1daa:	74 71                	je     1e1d <concreate+0xbd>
      fd = open(file, O_CREATE | O_RDWR);
    1dac:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1db3:	00 
    1db4:	89 34 24             	mov    %esi,(%esp)
    1db7:	e8 f6 28 00 00       	call   46b2 <open>
      if(fd < 0){
    1dbc:	85 c0                	test   %eax,%eax
    1dbe:	0f 88 1c 01 00 00    	js     1ee0 <concreate+0x180>
      close(fd);
    1dc4:	89 04 24             	mov    %eax,(%esp)
    1dc7:	e8 ce 28 00 00       	call   469a <close>
    if(pid == 0)
    1dcc:	8b 45 ac             	mov    -0x54(%ebp),%eax
    1dcf:	85 c0                	test   %eax,%eax
    1dd1:	75 65                	jne    1e38 <concreate+0xd8>
      exit(0);
    1dd3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1dda:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    1ddd:	e8 90 28 00 00       	call   4672 <exit>
  for(i = 0; i < 40; i++){
    1de2:	83 fb 28             	cmp    $0x28,%ebx
    1de5:	74 61                	je     1e48 <concreate+0xe8>
    1de7:	8d 43 30             	lea    0x30(%ebx),%eax
    unlink(file);
    1dea:	89 34 24             	mov    %esi,(%esp)
    1ded:	88 45 aa             	mov    %al,-0x56(%ebp)
    1df0:	e8 cd 28 00 00       	call   46c2 <unlink>
    pid = fork();
    1df5:	e8 70 28 00 00       	call   466a <fork>
    if(pid && (i % 3) == 1){
    1dfa:	85 c0                	test   %eax,%eax
    pid = fork();
    1dfc:	89 45 ac             	mov    %eax,-0x54(%ebp)
    if(pid && (i % 3) == 1){
    1dff:	75 8f                	jne    1d90 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1e01:	b8 67 66 66 66       	mov    $0x66666667,%eax
    if(pid && (i % 3) == 1){
    1e06:	89 d9                	mov    %ebx,%ecx
    } else if(pid == 0 && (i % 5) == 1){
    1e08:	f7 eb                	imul   %ebx
    1e0a:	89 d8                	mov    %ebx,%eax
    1e0c:	c1 f8 1f             	sar    $0x1f,%eax
    1e0f:	d1 fa                	sar    %edx
    1e11:	29 c2                	sub    %eax,%edx
    1e13:	8d 04 92             	lea    (%edx,%edx,4),%eax
    if(pid && (i % 3) == 1){
    1e16:	29 c1                	sub    %eax,%ecx
    1e18:	83 f9 01             	cmp    $0x1,%ecx
    1e1b:	75 8f                	jne    1dac <concreate+0x4c>
      link("C0", file);
    1e1d:	89 74 24 04          	mov    %esi,0x4(%esp)
    1e21:	c7 04 24 a1 51 00 00 	movl   $0x51a1,(%esp)
    1e28:	e8 a5 28 00 00       	call   46d2 <link>
    if(pid == 0)
    1e2d:	8b 45 ac             	mov    -0x54(%ebp),%eax
    1e30:	85 c0                	test   %eax,%eax
    1e32:	74 9f                	je     1dd3 <concreate+0x73>
    1e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      wait(&pid);
    1e38:	89 3c 24             	mov    %edi,(%esp)
  for(i = 0; i < 40; i++){
    1e3b:	83 c3 01             	add    $0x1,%ebx
      wait(&pid);
    1e3e:	e8 37 28 00 00       	call   467a <wait>
  for(i = 0; i < 40; i++){
    1e43:	83 fb 28             	cmp    $0x28,%ebx
    1e46:	75 9f                	jne    1de7 <concreate+0x87>
  memset(fa, 0, sizeof(fa));
    1e48:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1e4b:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1e52:	00 
    1e53:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1e56:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1e5d:	00 
    1e5e:	89 04 24             	mov    %eax,(%esp)
    1e61:	e8 9a 26 00 00       	call   4500 <memset>
  fd = open(".", 0);
    1e66:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1e6d:	00 
    1e6e:	c7 04 24 ae 53 00 00 	movl   $0x53ae,(%esp)
    1e75:	e8 38 28 00 00       	call   46b2 <open>
  n = 0;
    1e7a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1e81:	89 c3                	mov    %eax,%ebx
    1e83:	90                   	nop
    1e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1e88:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1e8f:	00 
    1e90:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1e94:	89 1c 24             	mov    %ebx,(%esp)
    1e97:	e8 ee 27 00 00       	call   468a <read>
    1e9c:	85 c0                	test   %eax,%eax
    1e9e:	7e 70                	jle    1f10 <concreate+0x1b0>
    if(de.inum == 0)
    1ea0:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1ea5:	74 e1                	je     1e88 <concreate+0x128>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1ea7:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1eab:	75 db                	jne    1e88 <concreate+0x128>
    1ead:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1eb1:	75 d5                	jne    1e88 <concreate+0x128>
      i = de.name[1] - '0';
    1eb3:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1eb7:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1eba:	83 f8 27             	cmp    $0x27,%eax
    1ebd:	0f 87 d2 01 00 00    	ja     2095 <concreate+0x335>
      if(fa[i]){
    1ec3:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1ec8:	0f 85 ff 01 00 00    	jne    20cd <concreate+0x36d>
      fa[i] = 1;
    1ece:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1ed3:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1ed7:	eb af                	jmp    1e88 <concreate+0x128>
    1ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "concreate create %s failed\n", file);
    1ee0:	89 74 24 08          	mov    %esi,0x8(%esp)
    1ee4:	c7 44 24 04 a4 51 00 	movl   $0x51a4,0x4(%esp)
    1eeb:	00 
    1eec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ef3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    1ef6:	e8 d5 28 00 00       	call   47d0 <printf>
        exit(0);
    1efb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1f02:	e8 6b 27 00 00       	call   4672 <exit>
    1f07:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    1f0a:	e9 b5 fe ff ff       	jmp    1dc4 <concreate+0x64>
    1f0f:	90                   	nop
  close(fd);
    1f10:	89 1c 24             	mov    %ebx,(%esp)
    1f13:	e8 82 27 00 00       	call   469a <close>
  if(n != 40){
    1f18:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1f1c:	74 20                	je     1f3e <concreate+0x1de>
    printf(1, "concreate not enough files in directory listing\n");
    1f1e:	c7 44 24 04 40 5d 00 	movl   $0x5d40,0x4(%esp)
    1f25:	00 
    1f26:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f2d:	e8 9e 28 00 00       	call   47d0 <printf>
    exit(0);
    1f32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1f39:	e8 34 27 00 00       	call   4672 <exit>
  n = 0;
    1f3e:	31 db                	xor    %ebx,%ebx
    if(((i % 3) == 0 && pid == 0) ||
    1f40:	bf 56 55 55 55       	mov    $0x55555556,%edi
    1f45:	e9 8c 00 00 00       	jmp    1fd6 <concreate+0x276>
    1f4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1f50:	8b 4d ac             	mov    -0x54(%ebp),%ecx
    1f53:	85 c9                	test   %ecx,%ecx
    1f55:	0f 85 b9 00 00 00    	jne    2014 <concreate+0x2b4>
      close(open(file, 0));
    1f5b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1f62:	00 
    1f63:	89 34 24             	mov    %esi,(%esp)
    1f66:	e8 47 27 00 00       	call   46b2 <open>
    1f6b:	89 04 24             	mov    %eax,(%esp)
    1f6e:	e8 27 27 00 00       	call   469a <close>
      close(open(file, 0));
    1f73:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1f7a:	00 
    1f7b:	89 34 24             	mov    %esi,(%esp)
    1f7e:	e8 2f 27 00 00       	call   46b2 <open>
    1f83:	89 04 24             	mov    %eax,(%esp)
    1f86:	e8 0f 27 00 00       	call   469a <close>
      close(open(file, 0));
    1f8b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1f92:	00 
    1f93:	89 34 24             	mov    %esi,(%esp)
    1f96:	e8 17 27 00 00       	call   46b2 <open>
    1f9b:	89 04 24             	mov    %eax,(%esp)
    1f9e:	e8 f7 26 00 00       	call   469a <close>
      close(open(file, 0));
    1fa3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1faa:	00 
    1fab:	89 34 24             	mov    %esi,(%esp)
    1fae:	e8 ff 26 00 00       	call   46b2 <open>
    1fb3:	89 04 24             	mov    %eax,(%esp)
    1fb6:	e8 df 26 00 00       	call   469a <close>
    if(pid == 0)
    1fbb:	8b 45 ac             	mov    -0x54(%ebp),%eax
    1fbe:	85 c0                	test   %eax,%eax
    1fc0:	75 79                	jne    203b <concreate+0x2db>
      exit(0);
    1fc2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1fc9:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    1fcc:	e8 a1 26 00 00       	call   4672 <exit>
  for(i = 0; i < 40; i++){
    1fd1:	83 fb 28             	cmp    $0x28,%ebx
    1fd4:	74 78                	je     204e <concreate+0x2ee>
    1fd6:	8d 43 30             	lea    0x30(%ebx),%eax
    1fd9:	88 45 aa             	mov    %al,-0x56(%ebp)
    pid = fork();
    1fdc:	e8 89 26 00 00       	call   466a <fork>
    if(pid < 0){
    1fe1:	85 c0                	test   %eax,%eax
    pid = fork();
    1fe3:	89 45 ac             	mov    %eax,-0x54(%ebp)
    if(pid < 0){
    1fe6:	0f 88 84 00 00 00    	js     2070 <concreate+0x310>
    if(((i % 3) == 0 && pid == 0) ||
    1fec:	89 d8                	mov    %ebx,%eax
    1fee:	f7 ef                	imul   %edi
    1ff0:	89 d8                	mov    %ebx,%eax
    1ff2:	c1 f8 1f             	sar    $0x1f,%eax
    1ff5:	29 c2                	sub    %eax,%edx
    1ff7:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1ffa:	89 da                	mov    %ebx,%edx
    1ffc:	29 c2                	sub    %eax,%edx
    1ffe:	0f 84 4c ff ff ff    	je     1f50 <concreate+0x1f0>
    2004:	83 fa 01             	cmp    $0x1,%edx
    2007:	75 0b                	jne    2014 <concreate+0x2b4>
       ((i % 3) == 1 && pid != 0)){
    2009:	8b 55 ac             	mov    -0x54(%ebp),%edx
    200c:	85 d2                	test   %edx,%edx
    200e:	0f 85 47 ff ff ff    	jne    1f5b <concreate+0x1fb>
      unlink(file);
    2014:	89 34 24             	mov    %esi,(%esp)
    2017:	e8 a6 26 00 00       	call   46c2 <unlink>
      unlink(file);
    201c:	89 34 24             	mov    %esi,(%esp)
    201f:	e8 9e 26 00 00       	call   46c2 <unlink>
      unlink(file);
    2024:	89 34 24             	mov    %esi,(%esp)
    2027:	e8 96 26 00 00       	call   46c2 <unlink>
      unlink(file);
    202c:	89 34 24             	mov    %esi,(%esp)
    202f:	e8 8e 26 00 00       	call   46c2 <unlink>
    if(pid == 0)
    2034:	8b 45 ac             	mov    -0x54(%ebp),%eax
    2037:	85 c0                	test   %eax,%eax
    2039:	74 87                	je     1fc2 <concreate+0x262>
      wait(&pid);
    203b:	8d 45 ac             	lea    -0x54(%ebp),%eax
  for(i = 0; i < 40; i++){
    203e:	83 c3 01             	add    $0x1,%ebx
      wait(&pid);
    2041:	89 04 24             	mov    %eax,(%esp)
    2044:	e8 31 26 00 00       	call   467a <wait>
  for(i = 0; i < 40; i++){
    2049:	83 fb 28             	cmp    $0x28,%ebx
    204c:	75 88                	jne    1fd6 <concreate+0x276>
  printf(1, "concreate ok\n");
    204e:	c7 44 24 04 f6 51 00 	movl   $0x51f6,0x4(%esp)
    2055:	00 
    2056:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    205d:	e8 6e 27 00 00       	call   47d0 <printf>
}
    2062:	83 c4 6c             	add    $0x6c,%esp
    2065:	5b                   	pop    %ebx
    2066:	5e                   	pop    %esi
    2067:	5f                   	pop    %edi
    2068:	5d                   	pop    %ebp
    2069:	c3                   	ret    
    206a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    2070:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    2077:	00 
    2078:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    207f:	e8 4c 27 00 00       	call   47d0 <printf>
      exit(0);
    2084:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    208b:	e8 e2 25 00 00       	call   4672 <exit>
    2090:	e9 57 ff ff ff       	jmp    1fec <concreate+0x28c>
    2095:	89 45 a0             	mov    %eax,-0x60(%ebp)
        printf(1, "concreate weird file %s\n", de.name);
    2098:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    209b:	89 44 24 08          	mov    %eax,0x8(%esp)
    209f:	c7 44 24 04 c0 51 00 	movl   $0x51c0,0x4(%esp)
    20a6:	00 
    20a7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    20ae:	e8 1d 27 00 00       	call   47d0 <printf>
        exit(0);
    20b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    20ba:	e8 b3 25 00 00       	call   4672 <exit>
    20bf:	8b 45 a0             	mov    -0x60(%ebp),%eax
      if(fa[i]){
    20c2:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    20c7:	0f 84 01 fe ff ff    	je     1ece <concreate+0x16e>
    20cd:	89 45 a0             	mov    %eax,-0x60(%ebp)
        printf(1, "concreate duplicate file %s\n", de.name);
    20d0:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    20d3:	89 44 24 08          	mov    %eax,0x8(%esp)
    20d7:	c7 44 24 04 d9 51 00 	movl   $0x51d9,0x4(%esp)
    20de:	00 
    20df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    20e6:	e8 e5 26 00 00       	call   47d0 <printf>
        exit(0);
    20eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    20f2:	e8 7b 25 00 00       	call   4672 <exit>
    20f7:	8b 45 a0             	mov    -0x60(%ebp),%eax
    20fa:	e9 cf fd ff ff       	jmp    1ece <concreate+0x16e>
    20ff:	90                   	nop

00002100 <linkunlink>:
{
    2100:	55                   	push   %ebp
    2101:	89 e5                	mov    %esp,%ebp
    2103:	57                   	push   %edi
    2104:	56                   	push   %esi
    2105:	53                   	push   %ebx
    2106:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "linkunlink test\n");
    2109:	c7 44 24 04 04 52 00 	movl   $0x5204,0x4(%esp)
    2110:	00 
    2111:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2118:	e8 b3 26 00 00       	call   47d0 <printf>
  unlink("x");
    211d:	c7 04 24 91 54 00 00 	movl   $0x5491,(%esp)
    2124:	e8 99 25 00 00       	call   46c2 <unlink>
  pid = fork();
    2129:	e8 3c 25 00 00       	call   466a <fork>
  if(pid < 0){
    212e:	85 c0                	test   %eax,%eax
  pid = fork();
    2130:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    2133:	0f 88 c5 00 00 00    	js     21fe <linkunlink+0xfe>
  unsigned int x = (pid ? 1 : 97);
    2139:	83 f8 01             	cmp    $0x1,%eax
    213c:	bb 64 00 00 00       	mov    $0x64,%ebx
    2141:	19 ff                	sbb    %edi,%edi
    if((x % 3) == 0){
    2143:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    2148:	83 e7 60             	and    $0x60,%edi
    214b:	83 c7 01             	add    $0x1,%edi
    214e:	eb 1a                	jmp    216a <linkunlink+0x6a>
    } else if((x % 3) == 1){
    2150:	83 fa 01             	cmp    $0x1,%edx
    2153:	0f 84 7f 00 00 00    	je     21d8 <linkunlink+0xd8>
      unlink("x");
    2159:	c7 04 24 91 54 00 00 	movl   $0x5491,(%esp)
    2160:	e8 5d 25 00 00       	call   46c2 <unlink>
  for(i = 0; i < 100; i++){
    2165:	83 eb 01             	sub    $0x1,%ebx
    2168:	74 3c                	je     21a6 <linkunlink+0xa6>
    x = x * 1103515245 + 12345;
    216a:	69 ff 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%edi
    2170:	81 c7 39 30 00 00    	add    $0x3039,%edi
    if((x % 3) == 0){
    2176:	89 f8                	mov    %edi,%eax
    2178:	f7 e6                	mul    %esi
    217a:	d1 ea                	shr    %edx
    217c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    217f:	89 fa                	mov    %edi,%edx
    2181:	29 c2                	sub    %eax,%edx
    2183:	75 cb                	jne    2150 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2185:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    218c:	00 
    218d:	c7 04 24 91 54 00 00 	movl   $0x5491,(%esp)
    2194:	e8 19 25 00 00       	call   46b2 <open>
    2199:	89 04 24             	mov    %eax,(%esp)
    219c:	e8 f9 24 00 00       	call   469a <close>
  for(i = 0; i < 100; i++){
    21a1:	83 eb 01             	sub    $0x1,%ebx
    21a4:	75 c4                	jne    216a <linkunlink+0x6a>
  if(pid)
    21a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    21a9:	85 c0                	test   %eax,%eax
    21ab:	75 44                	jne    21f1 <linkunlink+0xf1>
    exit(0);
    21ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    21b4:	e8 b9 24 00 00       	call   4672 <exit>
  printf(1, "linkunlink ok\n");
    21b9:	c7 44 24 04 19 52 00 	movl   $0x5219,0x4(%esp)
    21c0:	00 
    21c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    21c8:	e8 03 26 00 00       	call   47d0 <printf>
}
    21cd:	83 c4 2c             	add    $0x2c,%esp
    21d0:	5b                   	pop    %ebx
    21d1:	5e                   	pop    %esi
    21d2:	5f                   	pop    %edi
    21d3:	5d                   	pop    %ebp
    21d4:	c3                   	ret    
    21d5:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    21d8:	c7 44 24 04 91 54 00 	movl   $0x5491,0x4(%esp)
    21df:	00 
    21e0:	c7 04 24 15 52 00 00 	movl   $0x5215,(%esp)
    21e7:	e8 e6 24 00 00       	call   46d2 <link>
    21ec:	e9 74 ff ff ff       	jmp    2165 <linkunlink+0x65>
    wait(&pid);
    21f1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    21f4:	89 04 24             	mov    %eax,(%esp)
    21f7:	e8 7e 24 00 00       	call   467a <wait>
    21fc:	eb bb                	jmp    21b9 <linkunlink+0xb9>
    printf(1, "fork failed\n");
    21fe:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    2205:	00 
    2206:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    220d:	e8 be 25 00 00       	call   47d0 <printf>
    exit(0);
    2212:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2219:	e8 54 24 00 00       	call   4672 <exit>
    221e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2221:	e9 13 ff ff ff       	jmp    2139 <linkunlink+0x39>
    2226:	8d 76 00             	lea    0x0(%esi),%esi
    2229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002230 <bigdir>:
{
    2230:	55                   	push   %ebp
    2231:	89 e5                	mov    %esp,%ebp
    2233:	56                   	push   %esi
    2234:	53                   	push   %ebx
    2235:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    2238:	c7 44 24 04 28 52 00 	movl   $0x5228,0x4(%esp)
    223f:	00 
    2240:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2247:	e8 84 25 00 00       	call   47d0 <printf>
  unlink("bd");
    224c:	c7 04 24 35 52 00 00 	movl   $0x5235,(%esp)
    2253:	e8 6a 24 00 00       	call   46c2 <unlink>
  fd = open("bd", O_CREATE);
    2258:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    225f:	00 
    2260:	c7 04 24 35 52 00 00 	movl   $0x5235,(%esp)
    2267:	e8 46 24 00 00       	call   46b2 <open>
  if(fd < 0){
    226c:	85 c0                	test   %eax,%eax
    226e:	0f 88 0f 01 00 00    	js     2383 <bigdir+0x153>
  close(fd);
    2274:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    2277:	31 db                	xor    %ebx,%ebx
  close(fd);
    2279:	e8 1c 24 00 00       	call   469a <close>
    227e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    2281:	eb 10                	jmp    2293 <bigdir+0x63>
    2283:	90                   	nop
    2284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    2288:	83 c3 01             	add    $0x1,%ebx
    228b:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2291:	74 5d                	je     22f0 <bigdir+0xc0>
    name[1] = '0' + (i / 64);
    2293:	89 d8                	mov    %ebx,%eax
    2295:	c1 f8 06             	sar    $0x6,%eax
    2298:	83 c0 30             	add    $0x30,%eax
    229b:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    229e:	89 d8                	mov    %ebx,%eax
    22a0:	83 e0 3f             	and    $0x3f,%eax
    22a3:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    22a6:	89 74 24 04          	mov    %esi,0x4(%esp)
    22aa:	c7 04 24 35 52 00 00 	movl   $0x5235,(%esp)
    name[0] = 'x';
    22b1:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    22b5:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    22b8:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    22bc:	e8 11 24 00 00       	call   46d2 <link>
    22c1:	85 c0                	test   %eax,%eax
    22c3:	74 c3                	je     2288 <bigdir+0x58>
      printf(1, "bigdir link failed\n");
    22c5:	c7 44 24 04 4e 52 00 	movl   $0x524e,0x4(%esp)
    22cc:	00 
  for(i = 0; i < 500; i++){
    22cd:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir link failed\n");
    22d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    22d7:	e8 f4 24 00 00       	call   47d0 <printf>
      exit(0);
    22dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22e3:	e8 8a 23 00 00       	call   4672 <exit>
  for(i = 0; i < 500; i++){
    22e8:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22ee:	75 a3                	jne    2293 <bigdir+0x63>
  unlink("bd");
    22f0:	c7 04 24 35 52 00 00 	movl   $0x5235,(%esp)
  for(i = 0; i < 500; i++){
    22f7:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    22fa:	e8 c3 23 00 00       	call   46c2 <unlink>
    22ff:	eb 12                	jmp    2313 <bigdir+0xe3>
    2301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    2308:	83 c3 01             	add    $0x1,%ebx
    230b:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2311:	74 55                	je     2368 <bigdir+0x138>
    name[1] = '0' + (i / 64);
    2313:	89 d8                	mov    %ebx,%eax
    2315:	c1 f8 06             	sar    $0x6,%eax
    2318:	83 c0 30             	add    $0x30,%eax
    231b:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    231e:	89 d8                	mov    %ebx,%eax
    2320:	83 e0 3f             	and    $0x3f,%eax
    2323:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    2326:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    2329:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    232d:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    2330:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    2334:	e8 89 23 00 00       	call   46c2 <unlink>
    2339:	85 c0                	test   %eax,%eax
    233b:	74 cb                	je     2308 <bigdir+0xd8>
      printf(1, "bigdir unlink failed");
    233d:	c7 44 24 04 62 52 00 	movl   $0x5262,0x4(%esp)
    2344:	00 
  for(i = 0; i < 500; i++){
    2345:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir unlink failed");
    2348:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    234f:	e8 7c 24 00 00       	call   47d0 <printf>
      exit(0);
    2354:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    235b:	e8 12 23 00 00       	call   4672 <exit>
  for(i = 0; i < 500; i++){
    2360:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2366:	75 ab                	jne    2313 <bigdir+0xe3>
  printf(1, "bigdir ok\n");
    2368:	c7 44 24 04 77 52 00 	movl   $0x5277,0x4(%esp)
    236f:	00 
    2370:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2377:	e8 54 24 00 00       	call   47d0 <printf>
}
    237c:	83 c4 20             	add    $0x20,%esp
    237f:	5b                   	pop    %ebx
    2380:	5e                   	pop    %esi
    2381:	5d                   	pop    %ebp
    2382:	c3                   	ret    
    printf(1, "bigdir create failed\n");
    2383:	c7 44 24 04 38 52 00 	movl   $0x5238,0x4(%esp)
    238a:	00 
    238b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2392:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    2395:	e8 36 24 00 00       	call   47d0 <printf>
    exit(0);
    239a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23a1:	e8 cc 22 00 00       	call   4672 <exit>
    23a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    23a9:	e9 c6 fe ff ff       	jmp    2274 <bigdir+0x44>
    23ae:	66 90                	xchg   %ax,%ax

000023b0 <subdir>:
{
    23b0:	55                   	push   %ebp
    23b1:	89 e5                	mov    %esp,%ebp
    23b3:	53                   	push   %ebx
    23b4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    23b7:	c7 44 24 04 82 52 00 	movl   $0x5282,0x4(%esp)
    23be:	00 
    23bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23c6:	e8 05 24 00 00       	call   47d0 <printf>
  unlink("ff");
    23cb:	c7 04 24 0b 53 00 00 	movl   $0x530b,(%esp)
    23d2:	e8 eb 22 00 00       	call   46c2 <unlink>
  if(mkdir("dd") != 0){
    23d7:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    23de:	e8 f7 22 00 00       	call   46da <mkdir>
    23e3:	85 c0                	test   %eax,%eax
    23e5:	0f 85 35 05 00 00    	jne    2920 <subdir+0x570>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    23eb:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    23f2:	00 
    23f3:	c7 04 24 e1 52 00 00 	movl   $0x52e1,(%esp)
    23fa:	e8 b3 22 00 00       	call   46b2 <open>
  if(fd < 0){
    23ff:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2401:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2403:	0f 88 17 09 00 00    	js     2d20 <subdir+0x970>
  write(fd, "ff", 2);
    2409:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2410:	00 
    2411:	c7 44 24 04 0b 53 00 	movl   $0x530b,0x4(%esp)
    2418:	00 
    2419:	89 1c 24             	mov    %ebx,(%esp)
    241c:	e8 71 22 00 00       	call   4692 <write>
  close(fd);
    2421:	89 1c 24             	mov    %ebx,(%esp)
    2424:	e8 71 22 00 00       	call   469a <close>
  if(unlink("dd") >= 0){
    2429:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    2430:	e8 8d 22 00 00       	call   46c2 <unlink>
    2435:	85 c0                	test   %eax,%eax
    2437:	78 20                	js     2459 <subdir+0xa9>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2439:	c7 44 24 04 74 5d 00 	movl   $0x5d74,0x4(%esp)
    2440:	00 
    2441:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2448:	e8 83 23 00 00       	call   47d0 <printf>
    exit(0);
    244d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2454:	e8 19 22 00 00       	call   4672 <exit>
  if(mkdir("/dd/dd") != 0){
    2459:	c7 04 24 bc 52 00 00 	movl   $0x52bc,(%esp)
    2460:	e8 75 22 00 00       	call   46da <mkdir>
    2465:	85 c0                	test   %eax,%eax
    2467:	0f 85 8b 04 00 00    	jne    28f8 <subdir+0x548>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    246d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2474:	00 
    2475:	c7 04 24 de 52 00 00 	movl   $0x52de,(%esp)
    247c:	e8 31 22 00 00       	call   46b2 <open>
  if(fd < 0){
    2481:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2483:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2485:	0f 88 1d 08 00 00    	js     2ca8 <subdir+0x8f8>
  write(fd, "FF", 2);
    248b:	89 1c 24             	mov    %ebx,(%esp)
    248e:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2495:	00 
    2496:	c7 44 24 04 ff 52 00 	movl   $0x52ff,0x4(%esp)
    249d:	00 
    249e:	e8 ef 21 00 00       	call   4692 <write>
  close(fd);
    24a3:	89 1c 24             	mov    %ebx,(%esp)
    24a6:	e8 ef 21 00 00       	call   469a <close>
  fd = open("dd/dd/../ff", 0);
    24ab:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    24b2:	00 
    24b3:	c7 04 24 02 53 00 00 	movl   $0x5302,(%esp)
    24ba:	e8 f3 21 00 00       	call   46b2 <open>
  if(fd < 0){
    24bf:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    24c1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    24c3:	0f 88 07 08 00 00    	js     2cd0 <subdir+0x920>
  cc = read(fd, buf, sizeof(buf));
    24c9:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    24d0:	00 
    24d1:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    24d8:	00 
    24d9:	89 1c 24             	mov    %ebx,(%esp)
    24dc:	e8 a9 21 00 00       	call   468a <read>
  if(cc != 2 || buf[0] != 'f'){
    24e1:	83 f8 02             	cmp    $0x2,%eax
    24e4:	0f 84 f6 03 00 00    	je     28e0 <subdir+0x530>
    printf(1, "dd/dd/../ff wrong content\n");
    24ea:	c7 44 24 04 27 53 00 	movl   $0x5327,0x4(%esp)
    24f1:	00 
    24f2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24f9:	e8 d2 22 00 00       	call   47d0 <printf>
    exit(0);
    24fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2505:	e8 68 21 00 00       	call   4672 <exit>
  close(fd);
    250a:	89 1c 24             	mov    %ebx,(%esp)
    250d:	e8 88 21 00 00       	call   469a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2512:	c7 44 24 04 42 53 00 	movl   $0x5342,0x4(%esp)
    2519:	00 
    251a:	c7 04 24 de 52 00 00 	movl   $0x52de,(%esp)
    2521:	e8 ac 21 00 00       	call   46d2 <link>
    2526:	85 c0                	test   %eax,%eax
    2528:	0f 85 52 07 00 00    	jne    2c80 <subdir+0x8d0>
  if(unlink("dd/dd/ff") != 0){
    252e:	c7 04 24 de 52 00 00 	movl   $0x52de,(%esp)
    2535:	e8 88 21 00 00       	call   46c2 <unlink>
    253a:	85 c0                	test   %eax,%eax
    253c:	0f 85 16 07 00 00    	jne    2c58 <subdir+0x8a8>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2542:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2549:	00 
    254a:	c7 04 24 de 52 00 00 	movl   $0x52de,(%esp)
    2551:	e8 5c 21 00 00       	call   46b2 <open>
    2556:	85 c0                	test   %eax,%eax
    2558:	78 20                	js     257a <subdir+0x1ca>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    255a:	c7 44 24 04 c0 5d 00 	movl   $0x5dc0,0x4(%esp)
    2561:	00 
    2562:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2569:	e8 62 22 00 00       	call   47d0 <printf>
    exit(0);
    256e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2575:	e8 f8 20 00 00       	call   4672 <exit>
  if(chdir("dd") != 0){
    257a:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    2581:	e8 5c 21 00 00       	call   46e2 <chdir>
    2586:	85 c0                	test   %eax,%eax
    2588:	0f 85 a2 06 00 00    	jne    2c30 <subdir+0x880>
  if(chdir("dd/../../dd") != 0){
    258e:	c7 04 24 76 53 00 00 	movl   $0x5376,(%esp)
    2595:	e8 48 21 00 00       	call   46e2 <chdir>
    259a:	85 c0                	test   %eax,%eax
    259c:	0f 85 66 06 00 00    	jne    2c08 <subdir+0x858>
  if(chdir("dd/../../../dd") != 0){
    25a2:	c7 04 24 9c 53 00 00 	movl   $0x539c,(%esp)
    25a9:	e8 34 21 00 00       	call   46e2 <chdir>
    25ae:	85 c0                	test   %eax,%eax
    25b0:	0f 85 2a 06 00 00    	jne    2be0 <subdir+0x830>
  if(chdir("./..") != 0){
    25b6:	c7 04 24 ab 53 00 00 	movl   $0x53ab,(%esp)
    25bd:	e8 20 21 00 00       	call   46e2 <chdir>
    25c2:	85 c0                	test   %eax,%eax
    25c4:	0f 85 ee 05 00 00    	jne    2bb8 <subdir+0x808>
  fd = open("dd/dd/ffff", 0);
    25ca:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    25d1:	00 
    25d2:	c7 04 24 42 53 00 00 	movl   $0x5342,(%esp)
    25d9:	e8 d4 20 00 00       	call   46b2 <open>
  if(fd < 0){
    25de:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    25e0:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    25e2:	0f 88 10 07 00 00    	js     2cf8 <subdir+0x948>
  if(read(fd, buf, sizeof(buf)) != 2){
    25e8:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    25ef:	00 
    25f0:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    25f7:	00 
    25f8:	89 1c 24             	mov    %ebx,(%esp)
    25fb:	e8 8a 20 00 00       	call   468a <read>
    2600:	83 f8 02             	cmp    $0x2,%eax
    2603:	74 20                	je     2625 <subdir+0x275>
    printf(1, "read dd/dd/ffff wrong len\n");
    2605:	c7 44 24 04 db 53 00 	movl   $0x53db,0x4(%esp)
    260c:	00 
    260d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2614:	e8 b7 21 00 00       	call   47d0 <printf>
    exit(0);
    2619:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2620:	e8 4d 20 00 00       	call   4672 <exit>
  close(fd);
    2625:	89 1c 24             	mov    %ebx,(%esp)
    2628:	e8 6d 20 00 00       	call   469a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    262d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2634:	00 
    2635:	c7 04 24 de 52 00 00 	movl   $0x52de,(%esp)
    263c:	e8 71 20 00 00       	call   46b2 <open>
    2641:	85 c0                	test   %eax,%eax
    2643:	78 20                	js     2665 <subdir+0x2b5>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2645:	c7 44 24 04 e4 5d 00 	movl   $0x5de4,0x4(%esp)
    264c:	00 
    264d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2654:	e8 77 21 00 00       	call   47d0 <printf>
    exit(0);
    2659:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2660:	e8 0d 20 00 00       	call   4672 <exit>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2665:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    266c:	00 
    266d:	c7 04 24 f6 53 00 00 	movl   $0x53f6,(%esp)
    2674:	e8 39 20 00 00       	call   46b2 <open>
    2679:	85 c0                	test   %eax,%eax
    267b:	78 20                	js     269d <subdir+0x2ed>
    printf(1, "create dd/ff/ff succeeded!\n");
    267d:	c7 44 24 04 ff 53 00 	movl   $0x53ff,0x4(%esp)
    2684:	00 
    2685:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    268c:	e8 3f 21 00 00       	call   47d0 <printf>
    exit(0);
    2691:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2698:	e8 d5 1f 00 00       	call   4672 <exit>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    269d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    26a4:	00 
    26a5:	c7 04 24 1b 54 00 00 	movl   $0x541b,(%esp)
    26ac:	e8 01 20 00 00       	call   46b2 <open>
    26b1:	85 c0                	test   %eax,%eax
    26b3:	78 20                	js     26d5 <subdir+0x325>
    printf(1, "create dd/xx/ff succeeded!\n");
    26b5:	c7 44 24 04 24 54 00 	movl   $0x5424,0x4(%esp)
    26bc:	00 
    26bd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26c4:	e8 07 21 00 00       	call   47d0 <printf>
    exit(0);
    26c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d0:	e8 9d 1f 00 00       	call   4672 <exit>
  if(open("dd", O_CREATE) >= 0){
    26d5:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    26dc:	00 
    26dd:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    26e4:	e8 c9 1f 00 00       	call   46b2 <open>
    26e9:	85 c0                	test   %eax,%eax
    26eb:	78 20                	js     270d <subdir+0x35d>
    printf(1, "create dd succeeded!\n");
    26ed:	c7 44 24 04 40 54 00 	movl   $0x5440,0x4(%esp)
    26f4:	00 
    26f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fc:	e8 cf 20 00 00       	call   47d0 <printf>
    exit(0);
    2701:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2708:	e8 65 1f 00 00       	call   4672 <exit>
  if(open("dd", O_RDWR) >= 0){
    270d:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2714:	00 
    2715:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    271c:	e8 91 1f 00 00       	call   46b2 <open>
    2721:	85 c0                	test   %eax,%eax
    2723:	78 20                	js     2745 <subdir+0x395>
    printf(1, "open dd rdwr succeeded!\n");
    2725:	c7 44 24 04 56 54 00 	movl   $0x5456,0x4(%esp)
    272c:	00 
    272d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2734:	e8 97 20 00 00       	call   47d0 <printf>
    exit(0);
    2739:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2740:	e8 2d 1f 00 00       	call   4672 <exit>
  if(open("dd", O_WRONLY) >= 0){
    2745:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    274c:	00 
    274d:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    2754:	e8 59 1f 00 00       	call   46b2 <open>
    2759:	85 c0                	test   %eax,%eax
    275b:	78 20                	js     277d <subdir+0x3cd>
    printf(1, "open dd wronly succeeded!\n");
    275d:	c7 44 24 04 6f 54 00 	movl   $0x546f,0x4(%esp)
    2764:	00 
    2765:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    276c:	e8 5f 20 00 00       	call   47d0 <printf>
    exit(0);
    2771:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2778:	e8 f5 1e 00 00       	call   4672 <exit>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    277d:	c7 44 24 04 8a 54 00 	movl   $0x548a,0x4(%esp)
    2784:	00 
    2785:	c7 04 24 f6 53 00 00 	movl   $0x53f6,(%esp)
    278c:	e8 41 1f 00 00       	call   46d2 <link>
    2791:	85 c0                	test   %eax,%eax
    2793:	0f 84 f7 03 00 00    	je     2b90 <subdir+0x7e0>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2799:	c7 44 24 04 8a 54 00 	movl   $0x548a,0x4(%esp)
    27a0:	00 
    27a1:	c7 04 24 1b 54 00 00 	movl   $0x541b,(%esp)
    27a8:	e8 25 1f 00 00       	call   46d2 <link>
    27ad:	85 c0                	test   %eax,%eax
    27af:	0f 84 b3 03 00 00    	je     2b68 <subdir+0x7b8>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    27b5:	c7 44 24 04 42 53 00 	movl   $0x5342,0x4(%esp)
    27bc:	00 
    27bd:	c7 04 24 e1 52 00 00 	movl   $0x52e1,(%esp)
    27c4:	e8 09 1f 00 00       	call   46d2 <link>
    27c9:	85 c0                	test   %eax,%eax
    27cb:	0f 84 6f 03 00 00    	je     2b40 <subdir+0x790>
  if(mkdir("dd/ff/ff") == 0){
    27d1:	c7 04 24 f6 53 00 00 	movl   $0x53f6,(%esp)
    27d8:	e8 fd 1e 00 00       	call   46da <mkdir>
    27dd:	85 c0                	test   %eax,%eax
    27df:	0f 84 33 03 00 00    	je     2b18 <subdir+0x768>
  if(mkdir("dd/xx/ff") == 0){
    27e5:	c7 04 24 1b 54 00 00 	movl   $0x541b,(%esp)
    27ec:	e8 e9 1e 00 00       	call   46da <mkdir>
    27f1:	85 c0                	test   %eax,%eax
    27f3:	0f 84 f7 02 00 00    	je     2af0 <subdir+0x740>
  if(mkdir("dd/dd/ffff") == 0){
    27f9:	c7 04 24 42 53 00 00 	movl   $0x5342,(%esp)
    2800:	e8 d5 1e 00 00       	call   46da <mkdir>
    2805:	85 c0                	test   %eax,%eax
    2807:	0f 84 bb 02 00 00    	je     2ac8 <subdir+0x718>
  if(unlink("dd/xx/ff") == 0){
    280d:	c7 04 24 1b 54 00 00 	movl   $0x541b,(%esp)
    2814:	e8 a9 1e 00 00       	call   46c2 <unlink>
    2819:	85 c0                	test   %eax,%eax
    281b:	0f 84 7f 02 00 00    	je     2aa0 <subdir+0x6f0>
  if(unlink("dd/ff/ff") == 0){
    2821:	c7 04 24 f6 53 00 00 	movl   $0x53f6,(%esp)
    2828:	e8 95 1e 00 00       	call   46c2 <unlink>
    282d:	85 c0                	test   %eax,%eax
    282f:	0f 84 43 02 00 00    	je     2a78 <subdir+0x6c8>
  if(chdir("dd/ff") == 0){
    2835:	c7 04 24 e1 52 00 00 	movl   $0x52e1,(%esp)
    283c:	e8 a1 1e 00 00       	call   46e2 <chdir>
    2841:	85 c0                	test   %eax,%eax
    2843:	0f 84 07 02 00 00    	je     2a50 <subdir+0x6a0>
  if(chdir("dd/xx") == 0){
    2849:	c7 04 24 8d 54 00 00 	movl   $0x548d,(%esp)
    2850:	e8 8d 1e 00 00       	call   46e2 <chdir>
    2855:	85 c0                	test   %eax,%eax
    2857:	0f 84 cb 01 00 00    	je     2a28 <subdir+0x678>
  if(unlink("dd/dd/ffff") != 0){
    285d:	c7 04 24 42 53 00 00 	movl   $0x5342,(%esp)
    2864:	e8 59 1e 00 00       	call   46c2 <unlink>
    2869:	85 c0                	test   %eax,%eax
    286b:	0f 85 8f 01 00 00    	jne    2a00 <subdir+0x650>
  if(unlink("dd/ff") != 0){
    2871:	c7 04 24 e1 52 00 00 	movl   $0x52e1,(%esp)
    2878:	e8 45 1e 00 00       	call   46c2 <unlink>
    287d:	85 c0                	test   %eax,%eax
    287f:	0f 85 53 01 00 00    	jne    29d8 <subdir+0x628>
  if(unlink("dd") == 0){
    2885:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    288c:	e8 31 1e 00 00       	call   46c2 <unlink>
    2891:	85 c0                	test   %eax,%eax
    2893:	0f 84 af 00 00 00    	je     2948 <subdir+0x598>
  if(unlink("dd/dd") < 0){
    2899:	c7 04 24 bd 52 00 00 	movl   $0x52bd,(%esp)
    28a0:	e8 1d 1e 00 00       	call   46c2 <unlink>
    28a5:	85 c0                	test   %eax,%eax
    28a7:	0f 88 cf 00 00 00    	js     297c <subdir+0x5cc>
  if(unlink("dd") < 0){
    28ad:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    28b4:	e8 09 1e 00 00       	call   46c2 <unlink>
    28b9:	85 c0                	test   %eax,%eax
    28bb:	0f 88 ef 00 00 00    	js     29b0 <subdir+0x600>
  printf(1, "subdir ok\n");
    28c1:	c7 44 24 04 8a 55 00 	movl   $0x558a,0x4(%esp)
    28c8:	00 
    28c9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28d0:	e8 fb 1e 00 00       	call   47d0 <printf>
}
    28d5:	83 c4 14             	add    $0x14,%esp
    28d8:	5b                   	pop    %ebx
    28d9:	5d                   	pop    %ebp
    28da:	c3                   	ret    
    28db:	90                   	nop
    28dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(cc != 2 || buf[0] != 'f'){
    28e0:	80 3d c0 93 00 00 66 	cmpb   $0x66,0x93c0
    28e7:	0f 85 fd fb ff ff    	jne    24ea <subdir+0x13a>
    28ed:	e9 18 fc ff ff       	jmp    250a <subdir+0x15a>
    28f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "subdir mkdir dd/dd failed\n");
    28f8:	c7 44 24 04 c3 52 00 	movl   $0x52c3,0x4(%esp)
    28ff:	00 
    2900:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2907:	e8 c4 1e 00 00       	call   47d0 <printf>
    exit(0);
    290c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2913:	e8 5a 1d 00 00       	call   4672 <exit>
    2918:	e9 50 fb ff ff       	jmp    246d <subdir+0xbd>
    291d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "subdir mkdir dd failed\n");
    2920:	c7 44 24 04 8f 52 00 	movl   $0x528f,0x4(%esp)
    2927:	00 
    2928:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    292f:	e8 9c 1e 00 00       	call   47d0 <printf>
    exit(0);
    2934:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    293b:	e8 32 1d 00 00       	call   4672 <exit>
    2940:	e9 a6 fa ff ff       	jmp    23eb <subdir+0x3b>
    2945:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink non-empty dd succeeded!\n");
    2948:	c7 44 24 04 78 5e 00 	movl   $0x5e78,0x4(%esp)
    294f:	00 
    2950:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2957:	e8 74 1e 00 00       	call   47d0 <printf>
    exit(0);
    295c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2963:	e8 0a 1d 00 00       	call   4672 <exit>
  if(unlink("dd/dd") < 0){
    2968:	c7 04 24 bd 52 00 00 	movl   $0x52bd,(%esp)
    296f:	e8 4e 1d 00 00       	call   46c2 <unlink>
    2974:	85 c0                	test   %eax,%eax
    2976:	0f 89 31 ff ff ff    	jns    28ad <subdir+0x4fd>
    printf(1, "unlink dd/dd failed\n");
    297c:	c7 44 24 04 63 55 00 	movl   $0x5563,0x4(%esp)
    2983:	00 
    2984:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    298b:	e8 40 1e 00 00       	call   47d0 <printf>
    exit(0);
    2990:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2997:	e8 d6 1c 00 00       	call   4672 <exit>
  if(unlink("dd") < 0){
    299c:	c7 04 24 a8 53 00 00 	movl   $0x53a8,(%esp)
    29a3:	e8 1a 1d 00 00       	call   46c2 <unlink>
    29a8:	85 c0                	test   %eax,%eax
    29aa:	0f 89 11 ff ff ff    	jns    28c1 <subdir+0x511>
    printf(1, "unlink dd failed\n");
    29b0:	c7 44 24 04 78 55 00 	movl   $0x5578,0x4(%esp)
    29b7:	00 
    29b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29bf:	e8 0c 1e 00 00       	call   47d0 <printf>
    exit(0);
    29c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29cb:	e8 a2 1c 00 00       	call   4672 <exit>
    29d0:	e9 ec fe ff ff       	jmp    28c1 <subdir+0x511>
    29d5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dd/ff failed\n");
    29d8:	c7 44 24 04 4e 55 00 	movl   $0x554e,0x4(%esp)
    29df:	00 
    29e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29e7:	e8 e4 1d 00 00       	call   47d0 <printf>
    exit(0);
    29ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29f3:	e8 7a 1c 00 00       	call   4672 <exit>
    29f8:	e9 88 fe ff ff       	jmp    2885 <subdir+0x4d5>
    29fd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    2a00:	c7 44 24 04 4d 53 00 	movl   $0x534d,0x4(%esp)
    2a07:	00 
    2a08:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a0f:	e8 bc 1d 00 00       	call   47d0 <printf>
    exit(0);
    2a14:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a1b:	e8 52 1c 00 00       	call   4672 <exit>
    2a20:	e9 4c fe ff ff       	jmp    2871 <subdir+0x4c1>
    2a25:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dd/xx succeeded!\n");
    2a28:	c7 44 24 04 36 55 00 	movl   $0x5536,0x4(%esp)
    2a2f:	00 
    2a30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a37:	e8 94 1d 00 00       	call   47d0 <printf>
    exit(0);
    2a3c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a43:	e8 2a 1c 00 00       	call   4672 <exit>
    2a48:	e9 10 fe ff ff       	jmp    285d <subdir+0x4ad>
    2a4d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dd/ff succeeded!\n");
    2a50:	c7 44 24 04 1e 55 00 	movl   $0x551e,0x4(%esp)
    2a57:	00 
    2a58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a5f:	e8 6c 1d 00 00       	call   47d0 <printf>
    exit(0);
    2a64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a6b:	e8 02 1c 00 00       	call   4672 <exit>
    2a70:	e9 d4 fd ff ff       	jmp    2849 <subdir+0x499>
    2a75:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dd/ff/ff succeeded!\n");
    2a78:	c7 44 24 04 02 55 00 	movl   $0x5502,0x4(%esp)
    2a7f:	00 
    2a80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a87:	e8 44 1d 00 00       	call   47d0 <printf>
    exit(0);
    2a8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a93:	e8 da 1b 00 00       	call   4672 <exit>
    2a98:	e9 98 fd ff ff       	jmp    2835 <subdir+0x485>
    2a9d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2aa0:	c7 44 24 04 e6 54 00 	movl   $0x54e6,0x4(%esp)
    2aa7:	00 
    2aa8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2aaf:	e8 1c 1d 00 00       	call   47d0 <printf>
    exit(0);
    2ab4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2abb:	e8 b2 1b 00 00       	call   4672 <exit>
    2ac0:	e9 5c fd ff ff       	jmp    2821 <subdir+0x471>
    2ac5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2ac8:	c7 44 24 04 c9 54 00 	movl   $0x54c9,0x4(%esp)
    2acf:	00 
    2ad0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ad7:	e8 f4 1c 00 00       	call   47d0 <printf>
    exit(0);
    2adc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ae3:	e8 8a 1b 00 00       	call   4672 <exit>
    2ae8:	e9 20 fd ff ff       	jmp    280d <subdir+0x45d>
    2aed:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2af0:	c7 44 24 04 ae 54 00 	movl   $0x54ae,0x4(%esp)
    2af7:	00 
    2af8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2aff:	e8 cc 1c 00 00       	call   47d0 <printf>
    exit(0);
    2b04:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b0b:	e8 62 1b 00 00       	call   4672 <exit>
    2b10:	e9 e4 fc ff ff       	jmp    27f9 <subdir+0x449>
    2b15:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2b18:	c7 44 24 04 93 54 00 	movl   $0x5493,0x4(%esp)
    2b1f:	00 
    2b20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b27:	e8 a4 1c 00 00       	call   47d0 <printf>
    exit(0);
    2b2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b33:	e8 3a 1b 00 00       	call   4672 <exit>
    2b38:	e9 a8 fc ff ff       	jmp    27e5 <subdir+0x435>
    2b3d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2b40:	c7 44 24 04 54 5e 00 	movl   $0x5e54,0x4(%esp)
    2b47:	00 
    2b48:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b4f:	e8 7c 1c 00 00       	call   47d0 <printf>
    exit(0);
    2b54:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b5b:	e8 12 1b 00 00       	call   4672 <exit>
    2b60:	e9 6c fc ff ff       	jmp    27d1 <subdir+0x421>
    2b65:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2b68:	c7 44 24 04 30 5e 00 	movl   $0x5e30,0x4(%esp)
    2b6f:	00 
    2b70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b77:	e8 54 1c 00 00       	call   47d0 <printf>
    exit(0);
    2b7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b83:	e8 ea 1a 00 00       	call   4672 <exit>
    2b88:	e9 28 fc ff ff       	jmp    27b5 <subdir+0x405>
    2b8d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2b90:	c7 44 24 04 0c 5e 00 	movl   $0x5e0c,0x4(%esp)
    2b97:	00 
    2b98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b9f:	e8 2c 1c 00 00       	call   47d0 <printf>
    exit(0);
    2ba4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bab:	e8 c2 1a 00 00       	call   4672 <exit>
    2bb0:	e9 e4 fb ff ff       	jmp    2799 <subdir+0x3e9>
    2bb5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir ./.. failed\n");
    2bb8:	c7 44 24 04 b0 53 00 	movl   $0x53b0,0x4(%esp)
    2bbf:	00 
    2bc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bc7:	e8 04 1c 00 00       	call   47d0 <printf>
    exit(0);
    2bcc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bd3:	e8 9a 1a 00 00       	call   4672 <exit>
    2bd8:	e9 ed f9 ff ff       	jmp    25ca <subdir+0x21a>
    2bdd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2be0:	c7 44 24 04 82 53 00 	movl   $0x5382,0x4(%esp)
    2be7:	00 
    2be8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bef:	e8 dc 1b 00 00       	call   47d0 <printf>
    exit(0);
    2bf4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bfb:	e8 72 1a 00 00       	call   4672 <exit>
    2c00:	e9 b1 f9 ff ff       	jmp    25b6 <subdir+0x206>
    2c05:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2c08:	c7 44 24 04 82 53 00 	movl   $0x5382,0x4(%esp)
    2c0f:	00 
    2c10:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c17:	e8 b4 1b 00 00       	call   47d0 <printf>
    exit(0);
    2c1c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c23:	e8 4a 1a 00 00       	call   4672 <exit>
    2c28:	e9 75 f9 ff ff       	jmp    25a2 <subdir+0x1f2>
    2c2d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dd failed\n");
    2c30:	c7 44 24 04 65 53 00 	movl   $0x5365,0x4(%esp)
    2c37:	00 
    2c38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c3f:	e8 8c 1b 00 00       	call   47d0 <printf>
    exit(0);
    2c44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c4b:	e8 22 1a 00 00       	call   4672 <exit>
    2c50:	e9 39 f9 ff ff       	jmp    258e <subdir+0x1de>
    2c55:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    2c58:	c7 44 24 04 4d 53 00 	movl   $0x534d,0x4(%esp)
    2c5f:	00 
    2c60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c67:	e8 64 1b 00 00       	call   47d0 <printf>
    exit(0);
    2c6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c73:	e8 fa 19 00 00       	call   4672 <exit>
    2c78:	e9 c5 f8 ff ff       	jmp    2542 <subdir+0x192>
    2c7d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2c80:	c7 44 24 04 9c 5d 00 	movl   $0x5d9c,0x4(%esp)
    2c87:	00 
    2c88:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c8f:	e8 3c 1b 00 00       	call   47d0 <printf>
    exit(0);
    2c94:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c9b:	e8 d2 19 00 00       	call   4672 <exit>
    2ca0:	e9 89 f8 ff ff       	jmp    252e <subdir+0x17e>
    2ca5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "create dd/dd/ff failed\n");
    2ca8:	c7 44 24 04 e7 52 00 	movl   $0x52e7,0x4(%esp)
    2caf:	00 
    2cb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cb7:	e8 14 1b 00 00       	call   47d0 <printf>
    exit(0);
    2cbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cc3:	e8 aa 19 00 00       	call   4672 <exit>
    2cc8:	e9 be f7 ff ff       	jmp    248b <subdir+0xdb>
    2ccd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "open dd/dd/../ff failed\n");
    2cd0:	c7 44 24 04 0e 53 00 	movl   $0x530e,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 ec 1a 00 00       	call   47d0 <printf>
    exit(0);
    2ce4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ceb:	e8 82 19 00 00       	call   4672 <exit>
    2cf0:	e9 d4 f7 ff ff       	jmp    24c9 <subdir+0x119>
    2cf5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "open dd/dd/ffff failed\n");
    2cf8:	c7 44 24 04 c3 53 00 	movl   $0x53c3,0x4(%esp)
    2cff:	00 
    2d00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d07:	e8 c4 1a 00 00       	call   47d0 <printf>
    exit(0);
    2d0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d13:	e8 5a 19 00 00       	call   4672 <exit>
    2d18:	e9 cb f8 ff ff       	jmp    25e8 <subdir+0x238>
    2d1d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "create dd/ff failed\n");
    2d20:	c7 44 24 04 a7 52 00 	movl   $0x52a7,0x4(%esp)
    2d27:	00 
    2d28:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d2f:	e8 9c 1a 00 00       	call   47d0 <printf>
    exit(0);
    2d34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d3b:	e8 32 19 00 00       	call   4672 <exit>
    2d40:	e9 c4 f6 ff ff       	jmp    2409 <subdir+0x59>
    2d45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002d50 <bigwrite>:
{
    2d50:	55                   	push   %ebp
    2d51:	89 e5                	mov    %esp,%ebp
    2d53:	57                   	push   %edi
    2d54:	56                   	push   %esi
    2d55:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2d56:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    2d5b:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigwrite test\n");
    2d5e:	c7 44 24 04 95 55 00 	movl   $0x5595,0x4(%esp)
    2d65:	00 
    2d66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d6d:	e8 5e 1a 00 00       	call   47d0 <printf>
  unlink("bigwrite");
    2d72:	c7 04 24 a4 55 00 00 	movl   $0x55a4,(%esp)
    2d79:	e8 44 19 00 00       	call   46c2 <unlink>
    2d7e:	eb 6c                	jmp    2dec <bigwrite+0x9c>
  for(sz = 499; sz < 12*512; sz += 471){
    2d80:	be 02 00 00 00       	mov    $0x2,%esi
      int cc = write(fd, buf, sz);
    2d85:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2d89:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    2d90:	00 
    2d91:	89 3c 24             	mov    %edi,(%esp)
    2d94:	e8 f9 18 00 00       	call   4692 <write>
      if(cc != sz){
    2d99:	39 d8                	cmp    %ebx,%eax
    2d9b:	74 28                	je     2dc5 <bigwrite+0x75>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2d9d:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2da1:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2da5:	c7 44 24 04 c5 55 00 	movl   $0x55c5,0x4(%esp)
    2dac:	00 
    2dad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2db4:	e8 17 1a 00 00       	call   47d0 <printf>
        exit(0);
    2db9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dc0:	e8 ad 18 00 00       	call   4672 <exit>
    for(i = 0; i < 2; i++){
    2dc5:	83 ee 01             	sub    $0x1,%esi
    2dc8:	75 bb                	jne    2d85 <bigwrite+0x35>
    close(fd);
    2dca:	89 3c 24             	mov    %edi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2dcd:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2dd3:	e8 c2 18 00 00       	call   469a <close>
    unlink("bigwrite");
    2dd8:	c7 04 24 a4 55 00 00 	movl   $0x55a4,(%esp)
    2ddf:	e8 de 18 00 00       	call   46c2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2de4:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2dea:	74 44                	je     2e30 <bigwrite+0xe0>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2dec:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2df3:	00 
    2df4:	c7 04 24 a4 55 00 00 	movl   $0x55a4,(%esp)
    2dfb:	e8 b2 18 00 00       	call   46b2 <open>
    if(fd < 0){
    2e00:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2e02:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    2e04:	0f 89 76 ff ff ff    	jns    2d80 <bigwrite+0x30>
      printf(1, "cannot create bigwrite\n");
    2e0a:	c7 44 24 04 ad 55 00 	movl   $0x55ad,0x4(%esp)
    2e11:	00 
    2e12:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e19:	e8 b2 19 00 00       	call   47d0 <printf>
      exit(0);
    2e1e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e25:	e8 48 18 00 00       	call   4672 <exit>
    2e2a:	e9 51 ff ff ff       	jmp    2d80 <bigwrite+0x30>
    2e2f:	90                   	nop
  printf(1, "bigwrite ok\n");
    2e30:	c7 44 24 04 d7 55 00 	movl   $0x55d7,0x4(%esp)
    2e37:	00 
    2e38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e3f:	e8 8c 19 00 00       	call   47d0 <printf>
}
    2e44:	83 c4 1c             	add    $0x1c,%esp
    2e47:	5b                   	pop    %ebx
    2e48:	5e                   	pop    %esi
    2e49:	5f                   	pop    %edi
    2e4a:	5d                   	pop    %ebp
    2e4b:	c3                   	ret    
    2e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002e50 <bigfile>:
{
    2e50:	55                   	push   %ebp
    2e51:	89 e5                	mov    %esp,%ebp
    2e53:	57                   	push   %edi
    2e54:	56                   	push   %esi
    2e55:	53                   	push   %ebx
    2e56:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    2e59:	c7 44 24 04 e4 55 00 	movl   $0x55e4,0x4(%esp)
    2e60:	00 
    2e61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e68:	e8 63 19 00 00       	call   47d0 <printf>
  unlink("bigfile");
    2e6d:	c7 04 24 00 56 00 00 	movl   $0x5600,(%esp)
    2e74:	e8 49 18 00 00       	call   46c2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e79:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2e80:	00 
    2e81:	c7 04 24 00 56 00 00 	movl   $0x5600,(%esp)
    2e88:	e8 25 18 00 00       	call   46b2 <open>
  if(fd < 0){
    2e8d:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e8f:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2e91:	0f 88 ac 01 00 00    	js     3043 <bigfile+0x1f3>
{
    2e97:	31 db                	xor    %ebx,%ebx
    2e99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2ea0:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2ea7:	00 
    2ea8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    2eac:	c7 04 24 c0 93 00 00 	movl   $0x93c0,(%esp)
    2eb3:	e8 48 16 00 00       	call   4500 <memset>
    if(write(fd, buf, 600) != 600){
    2eb8:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2ebf:	00 
    2ec0:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    2ec7:	00 
    2ec8:	89 34 24             	mov    %esi,(%esp)
    2ecb:	e8 c2 17 00 00       	call   4692 <write>
    2ed0:	3d 58 02 00 00       	cmp    $0x258,%eax
    2ed5:	74 20                	je     2ef7 <bigfile+0xa7>
      printf(1, "write bigfile failed\n");
    2ed7:	c7 44 24 04 08 56 00 	movl   $0x5608,0x4(%esp)
    2ede:	00 
    2edf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee6:	e8 e5 18 00 00       	call   47d0 <printf>
      exit(0);
    2eeb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ef2:	e8 7b 17 00 00       	call   4672 <exit>
  for(i = 0; i < 20; i++){
    2ef7:	83 c3 01             	add    $0x1,%ebx
    2efa:	83 fb 14             	cmp    $0x14,%ebx
    2efd:	75 a1                	jne    2ea0 <bigfile+0x50>
  close(fd);
    2eff:	89 34 24             	mov    %esi,(%esp)
    2f02:	e8 93 17 00 00       	call   469a <close>
  fd = open("bigfile", 0);
    2f07:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f0e:	00 
    2f0f:	c7 04 24 00 56 00 00 	movl   $0x5600,(%esp)
    2f16:	e8 97 17 00 00       	call   46b2 <open>
  if(fd < 0){
    2f1b:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2f1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(fd < 0){
    2f20:	0f 88 42 01 00 00    	js     3068 <bigfile+0x218>
{
    2f26:	31 f6                	xor    %esi,%esi
    2f28:	31 db                	xor    %ebx,%ebx
    2f2a:	eb 43                	jmp    2f6f <bigfile+0x11f>
    2f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(buf[0] != i/2 || buf[299] != i/2){
    2f30:	0f be 15 c0 93 00 00 	movsbl 0x93c0,%edx
    2f37:	89 d9                	mov    %ebx,%ecx
    2f39:	d1 f9                	sar    %ecx
    2f3b:	39 ca                	cmp    %ecx,%edx
    2f3d:	75 0b                	jne    2f4a <bigfile+0xfa>
    2f3f:	0f be 0d eb 94 00 00 	movsbl 0x94eb,%ecx
    2f46:	39 ca                	cmp    %ecx,%edx
    2f48:	74 20                	je     2f6a <bigfile+0x11a>
      printf(1, "read bigfile wrong data\n");
    2f4a:	c7 44 24 04 5c 56 00 	movl   $0x565c,0x4(%esp)
    2f51:	00 
    2f52:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f59:	e8 72 18 00 00       	call   47d0 <printf>
      exit(0);
    2f5e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f65:	e8 08 17 00 00       	call   4672 <exit>
    total += cc;
    2f6a:	01 fe                	add    %edi,%esi
  for(i = 0; ; i++){
    2f6c:	83 c3 01             	add    $0x1,%ebx
    cc = read(fd, buf, 300);
    2f6f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2f72:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2f79:	00 
    2f7a:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    2f81:	00 
    2f82:	89 04 24             	mov    %eax,(%esp)
    2f85:	e8 00 17 00 00       	call   468a <read>
    if(cc < 0){
    2f8a:	85 c0                	test   %eax,%eax
    cc = read(fd, buf, 300);
    2f8c:	89 c7                	mov    %eax,%edi
    if(cc < 0){
    2f8e:	78 30                	js     2fc0 <bigfile+0x170>
    if(cc == 0)
    2f90:	74 56                	je     2fe8 <bigfile+0x198>
    if(cc != 300){
    2f92:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2f97:	74 97                	je     2f30 <bigfile+0xe0>
      printf(1, "short read bigfile\n");
    2f99:	c7 44 24 04 48 56 00 	movl   $0x5648,0x4(%esp)
    2fa0:	00 
    2fa1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2fa8:	e8 23 18 00 00       	call   47d0 <printf>
      exit(0);
    2fad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fb4:	e8 b9 16 00 00       	call   4672 <exit>
    2fb9:	e9 72 ff ff ff       	jmp    2f30 <bigfile+0xe0>
    2fbe:	66 90                	xchg   %ax,%ax
      printf(1, "read bigfile failed\n");
    2fc0:	c7 44 24 04 33 56 00 	movl   $0x5633,0x4(%esp)
    2fc7:	00 
    2fc8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2fcf:	e8 fc 17 00 00       	call   47d0 <printf>
      exit(0);
    2fd4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fdb:	e8 92 16 00 00       	call   4672 <exit>
    2fe0:	eb b7                	jmp    2f99 <bigfile+0x149>
    2fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  close(fd);
    2fe8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2feb:	89 04 24             	mov    %eax,(%esp)
    2fee:	e8 a7 16 00 00       	call   469a <close>
  if(total != 20*600){
    2ff3:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    2ff9:	74 20                	je     301b <bigfile+0x1cb>
    printf(1, "read bigfile wrong total\n");
    2ffb:	c7 44 24 04 75 56 00 	movl   $0x5675,0x4(%esp)
    3002:	00 
    3003:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    300a:	e8 c1 17 00 00       	call   47d0 <printf>
    exit(0);
    300f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3016:	e8 57 16 00 00       	call   4672 <exit>
  unlink("bigfile");
    301b:	c7 04 24 00 56 00 00 	movl   $0x5600,(%esp)
    3022:	e8 9b 16 00 00       	call   46c2 <unlink>
  printf(1, "bigfile test ok\n");
    3027:	c7 44 24 04 8f 56 00 	movl   $0x568f,0x4(%esp)
    302e:	00 
    302f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3036:	e8 95 17 00 00       	call   47d0 <printf>
}
    303b:	83 c4 1c             	add    $0x1c,%esp
    303e:	5b                   	pop    %ebx
    303f:	5e                   	pop    %esi
    3040:	5f                   	pop    %edi
    3041:	5d                   	pop    %ebp
    3042:	c3                   	ret    
    printf(1, "cannot create bigfile");
    3043:	c7 44 24 04 f2 55 00 	movl   $0x55f2,0x4(%esp)
    304a:	00 
    304b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3052:	e8 79 17 00 00       	call   47d0 <printf>
    exit(0);
    3057:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    305e:	e8 0f 16 00 00       	call   4672 <exit>
    3063:	e9 2f fe ff ff       	jmp    2e97 <bigfile+0x47>
    printf(1, "cannot open bigfile\n");
    3068:	c7 44 24 04 1e 56 00 	movl   $0x561e,0x4(%esp)
    306f:	00 
    3070:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3077:	e8 54 17 00 00       	call   47d0 <printf>
    exit(0);
    307c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3083:	e8 ea 15 00 00       	call   4672 <exit>
    3088:	e9 99 fe ff ff       	jmp    2f26 <bigfile+0xd6>
    308d:	8d 76 00             	lea    0x0(%esi),%esi

00003090 <fourteen>:
{
    3090:	55                   	push   %ebp
    3091:	89 e5                	mov    %esp,%ebp
    3093:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    3096:	c7 44 24 04 a0 56 00 	movl   $0x56a0,0x4(%esp)
    309d:	00 
    309e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a5:	e8 26 17 00 00       	call   47d0 <printf>
  if(mkdir("12345678901234") != 0){
    30aa:	c7 04 24 db 56 00 00 	movl   $0x56db,(%esp)
    30b1:	e8 24 16 00 00       	call   46da <mkdir>
    30b6:	85 c0                	test   %eax,%eax
    30b8:	0f 85 02 01 00 00    	jne    31c0 <fourteen+0x130>
  if(mkdir("12345678901234/123456789012345") != 0){
    30be:	c7 04 24 98 5e 00 00 	movl   $0x5e98,(%esp)
    30c5:	e8 10 16 00 00       	call   46da <mkdir>
    30ca:	85 c0                	test   %eax,%eax
    30cc:	0f 85 c6 00 00 00    	jne    3198 <fourteen+0x108>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    30d2:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    30d9:	00 
    30da:	c7 04 24 e8 5e 00 00 	movl   $0x5ee8,(%esp)
    30e1:	e8 cc 15 00 00       	call   46b2 <open>
  if(fd < 0){
    30e6:	85 c0                	test   %eax,%eax
    30e8:	0f 88 2a 01 00 00    	js     3218 <fourteen+0x188>
  close(fd);
    30ee:	89 04 24             	mov    %eax,(%esp)
    30f1:	e8 a4 15 00 00       	call   469a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    30f6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    30fd:	00 
    30fe:	c7 04 24 58 5f 00 00 	movl   $0x5f58,(%esp)
    3105:	e8 a8 15 00 00       	call   46b2 <open>
  if(fd < 0){
    310a:	85 c0                	test   %eax,%eax
    310c:	0f 88 d6 00 00 00    	js     31e8 <fourteen+0x158>
  close(fd);
    3112:	89 04 24             	mov    %eax,(%esp)
    3115:	e8 80 15 00 00       	call   469a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    311a:	c7 04 24 cc 56 00 00 	movl   $0x56cc,(%esp)
    3121:	e8 b4 15 00 00       	call   46da <mkdir>
    3126:	85 c0                	test   %eax,%eax
    3128:	74 46                	je     3170 <fourteen+0xe0>
  if(mkdir("123456789012345/12345678901234") == 0){
    312a:	c7 04 24 f4 5f 00 00 	movl   $0x5ff4,(%esp)
    3131:	e8 a4 15 00 00       	call   46da <mkdir>
    3136:	85 c0                	test   %eax,%eax
    3138:	75 20                	jne    315a <fourteen+0xca>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    313a:	c7 44 24 04 14 60 00 	movl   $0x6014,0x4(%esp)
    3141:	00 
    3142:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3149:	e8 82 16 00 00       	call   47d0 <printf>
    exit(0);
    314e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3155:	e8 18 15 00 00       	call   4672 <exit>
  printf(1, "fourteen ok\n");
    315a:	c7 44 24 04 ea 56 00 	movl   $0x56ea,0x4(%esp)
    3161:	00 
    3162:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3169:	e8 62 16 00 00       	call   47d0 <printf>
}
    316e:	c9                   	leave  
    316f:	c3                   	ret    
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3170:	c7 44 24 04 c4 5f 00 	movl   $0x5fc4,0x4(%esp)
    3177:	00 
    3178:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    317f:	e8 4c 16 00 00       	call   47d0 <printf>
    exit(0);
    3184:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    318b:	e8 e2 14 00 00       	call   4672 <exit>
    3190:	eb 98                	jmp    312a <fourteen+0x9a>
    3192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    3198:	c7 44 24 04 b8 5e 00 	movl   $0x5eb8,0x4(%esp)
    319f:	00 
    31a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31a7:	e8 24 16 00 00       	call   47d0 <printf>
    exit(0);
    31ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31b3:	e8 ba 14 00 00       	call   4672 <exit>
    31b8:	e9 15 ff ff ff       	jmp    30d2 <fourteen+0x42>
    31bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir 12345678901234 failed\n");
    31c0:	c7 44 24 04 af 56 00 	movl   $0x56af,0x4(%esp)
    31c7:	00 
    31c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31cf:	e8 fc 15 00 00       	call   47d0 <printf>
    exit(0);
    31d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31db:	e8 92 14 00 00       	call   4672 <exit>
    31e0:	e9 d9 fe ff ff       	jmp    30be <fourteen+0x2e>
    31e5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    31e8:	c7 44 24 04 88 5f 00 	movl   $0x5f88,0x4(%esp)
    31ef:	00 
    31f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
    31fa:	e8 d1 15 00 00       	call   47d0 <printf>
    exit(0);
    31ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3206:	e8 67 14 00 00       	call   4672 <exit>
    320b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    320e:	e9 ff fe ff ff       	jmp    3112 <fourteen+0x82>
    3213:	90                   	nop
    3214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    3218:	c7 44 24 04 18 5f 00 	movl   $0x5f18,0x4(%esp)
    321f:	00 
    3220:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3227:	89 45 f4             	mov    %eax,-0xc(%ebp)
    322a:	e8 a1 15 00 00       	call   47d0 <printf>
    exit(0);
    322f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3236:	e8 37 14 00 00       	call   4672 <exit>
    323b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    323e:	e9 ab fe ff ff       	jmp    30ee <fourteen+0x5e>
    3243:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003250 <rmdot>:
{
    3250:	55                   	push   %ebp
    3251:	89 e5                	mov    %esp,%ebp
    3253:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    3256:	c7 44 24 04 f7 56 00 	movl   $0x56f7,0x4(%esp)
    325d:	00 
    325e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3265:	e8 66 15 00 00       	call   47d0 <printf>
  if(mkdir("dots") != 0){
    326a:	c7 04 24 03 57 00 00 	movl   $0x5703,(%esp)
    3271:	e8 64 14 00 00       	call   46da <mkdir>
    3276:	85 c0                	test   %eax,%eax
    3278:	0f 85 aa 01 00 00    	jne    3428 <rmdot+0x1d8>
  if(chdir("dots") != 0){
    327e:	c7 04 24 03 57 00 00 	movl   $0x5703,(%esp)
    3285:	e8 58 14 00 00       	call   46e2 <chdir>
    328a:	85 c0                	test   %eax,%eax
    328c:	0f 85 6e 01 00 00    	jne    3400 <rmdot+0x1b0>
  if(unlink(".") == 0){
    3292:	c7 04 24 ae 53 00 00 	movl   $0x53ae,(%esp)
    3299:	e8 24 14 00 00       	call   46c2 <unlink>
    329e:	85 c0                	test   %eax,%eax
    32a0:	0f 84 32 01 00 00    	je     33d8 <rmdot+0x188>
  if(unlink("..") == 0){
    32a6:	c7 04 24 ad 53 00 00 	movl   $0x53ad,(%esp)
    32ad:	e8 10 14 00 00       	call   46c2 <unlink>
    32b2:	85 c0                	test   %eax,%eax
    32b4:	0f 84 f6 00 00 00    	je     33b0 <rmdot+0x160>
  if(chdir("/") != 0){
    32ba:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
    32c1:	e8 1c 14 00 00       	call   46e2 <chdir>
    32c6:	85 c0                	test   %eax,%eax
    32c8:	0f 85 ba 00 00 00    	jne    3388 <rmdot+0x138>
  if(unlink("dots/.") == 0){
    32ce:	c7 04 24 4b 57 00 00 	movl   $0x574b,(%esp)
    32d5:	e8 e8 13 00 00       	call   46c2 <unlink>
    32da:	85 c0                	test   %eax,%eax
    32dc:	0f 84 7e 00 00 00    	je     3360 <rmdot+0x110>
  if(unlink("dots/..") == 0){
    32e2:	c7 04 24 69 57 00 00 	movl   $0x5769,(%esp)
    32e9:	e8 d4 13 00 00       	call   46c2 <unlink>
    32ee:	85 c0                	test   %eax,%eax
    32f0:	74 46                	je     3338 <rmdot+0xe8>
  if(unlink("dots") != 0){
    32f2:	c7 04 24 03 57 00 00 	movl   $0x5703,(%esp)
    32f9:	e8 c4 13 00 00       	call   46c2 <unlink>
    32fe:	85 c0                	test   %eax,%eax
    3300:	74 20                	je     3322 <rmdot+0xd2>
    printf(1, "unlink dots failed!\n");
    3302:	c7 44 24 04 89 57 00 	movl   $0x5789,0x4(%esp)
    3309:	00 
    330a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3311:	e8 ba 14 00 00       	call   47d0 <printf>
    exit(0);
    3316:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    331d:	e8 50 13 00 00       	call   4672 <exit>
  printf(1, "rmdot ok\n");
    3322:	c7 44 24 04 9e 57 00 	movl   $0x579e,0x4(%esp)
    3329:	00 
    332a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3331:	e8 9a 14 00 00       	call   47d0 <printf>
}
    3336:	c9                   	leave  
    3337:	c3                   	ret    
    printf(1, "unlink dots/.. worked!\n");
    3338:	c7 44 24 04 71 57 00 	movl   $0x5771,0x4(%esp)
    333f:	00 
    3340:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3347:	e8 84 14 00 00       	call   47d0 <printf>
    exit(0);
    334c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3353:	e8 1a 13 00 00       	call   4672 <exit>
    3358:	eb 98                	jmp    32f2 <rmdot+0xa2>
    335a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "unlink dots/. worked!\n");
    3360:	c7 44 24 04 52 57 00 	movl   $0x5752,0x4(%esp)
    3367:	00 
    3368:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    336f:	e8 5c 14 00 00       	call   47d0 <printf>
    exit(0);
    3374:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    337b:	e8 f2 12 00 00       	call   4672 <exit>
    3380:	e9 5d ff ff ff       	jmp    32e2 <rmdot+0x92>
    3385:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir / failed\n");
    3388:	c7 44 24 04 83 4b 00 	movl   $0x4b83,0x4(%esp)
    338f:	00 
    3390:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3397:	e8 34 14 00 00       	call   47d0 <printf>
    exit(0);
    339c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33a3:	e8 ca 12 00 00       	call   4672 <exit>
    33a8:	e9 21 ff ff ff       	jmp    32ce <rmdot+0x7e>
    33ad:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "rm .. worked!\n");
    33b0:	c7 44 24 04 3c 57 00 	movl   $0x573c,0x4(%esp)
    33b7:	00 
    33b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33bf:	e8 0c 14 00 00       	call   47d0 <printf>
    exit(0);
    33c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33cb:	e8 a2 12 00 00       	call   4672 <exit>
    33d0:	e9 e5 fe ff ff       	jmp    32ba <rmdot+0x6a>
    33d5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "rm . worked!\n");
    33d8:	c7 44 24 04 2e 57 00 	movl   $0x572e,0x4(%esp)
    33df:	00 
    33e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33e7:	e8 e4 13 00 00       	call   47d0 <printf>
    exit(0);
    33ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33f3:	e8 7a 12 00 00       	call   4672 <exit>
    33f8:	e9 a9 fe ff ff       	jmp    32a6 <rmdot+0x56>
    33fd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "chdir dots failed\n");
    3400:	c7 44 24 04 1b 57 00 	movl   $0x571b,0x4(%esp)
    3407:	00 
    3408:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    340f:	e8 bc 13 00 00       	call   47d0 <printf>
    exit(0);
    3414:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    341b:	e8 52 12 00 00       	call   4672 <exit>
    3420:	e9 6d fe ff ff       	jmp    3292 <rmdot+0x42>
    3425:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir dots failed\n");
    3428:	c7 44 24 04 08 57 00 	movl   $0x5708,0x4(%esp)
    342f:	00 
    3430:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3437:	e8 94 13 00 00       	call   47d0 <printf>
    exit(0);
    343c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3443:	e8 2a 12 00 00       	call   4672 <exit>
    3448:	e9 31 fe ff ff       	jmp    327e <rmdot+0x2e>
    344d:	8d 76 00             	lea    0x0(%esi),%esi

00003450 <dirfile>:
{
    3450:	55                   	push   %ebp
    3451:	89 e5                	mov    %esp,%ebp
    3453:	53                   	push   %ebx
    3454:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    3457:	c7 44 24 04 a8 57 00 	movl   $0x57a8,0x4(%esp)
    345e:	00 
    345f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3466:	e8 65 13 00 00       	call   47d0 <printf>
  fd = open("dirfile", O_CREATE);
    346b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3472:	00 
    3473:	c7 04 24 b5 57 00 00 	movl   $0x57b5,(%esp)
    347a:	e8 33 12 00 00       	call   46b2 <open>
  if(fd < 0){
    347f:	85 c0                	test   %eax,%eax
    3481:	0f 88 59 02 00 00    	js     36e0 <dirfile+0x290>
  close(fd);
    3487:	89 04 24             	mov    %eax,(%esp)
    348a:	e8 0b 12 00 00       	call   469a <close>
  if(chdir("dirfile") == 0){
    348f:	c7 04 24 b5 57 00 00 	movl   $0x57b5,(%esp)
    3496:	e8 47 12 00 00       	call   46e2 <chdir>
    349b:	85 c0                	test   %eax,%eax
    349d:	0f 84 75 01 00 00    	je     3618 <dirfile+0x1c8>
  fd = open("dirfile/xx", 0);
    34a3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    34aa:	00 
    34ab:	c7 04 24 ee 57 00 00 	movl   $0x57ee,(%esp)
    34b2:	e8 fb 11 00 00       	call   46b2 <open>
  if(fd >= 0){
    34b7:	85 c0                	test   %eax,%eax
    34b9:	78 20                	js     34db <dirfile+0x8b>
    printf(1, "create dirfile/xx succeeded!\n");
    34bb:	c7 44 24 04 f9 57 00 	movl   $0x57f9,0x4(%esp)
    34c2:	00 
    34c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    34ca:	e8 01 13 00 00       	call   47d0 <printf>
    exit(0);
    34cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34d6:	e8 97 11 00 00       	call   4672 <exit>
  fd = open("dirfile/xx", O_CREATE);
    34db:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    34e2:	00 
    34e3:	c7 04 24 ee 57 00 00 	movl   $0x57ee,(%esp)
    34ea:	e8 c3 11 00 00       	call   46b2 <open>
  if(fd >= 0){
    34ef:	85 c0                	test   %eax,%eax
    34f1:	78 20                	js     3513 <dirfile+0xc3>
    printf(1, "create dirfile/xx succeeded!\n");
    34f3:	c7 44 24 04 f9 57 00 	movl   $0x57f9,0x4(%esp)
    34fa:	00 
    34fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3502:	e8 c9 12 00 00       	call   47d0 <printf>
    exit(0);
    3507:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    350e:	e8 5f 11 00 00       	call   4672 <exit>
  if(mkdir("dirfile/xx") == 0){
    3513:	c7 04 24 ee 57 00 00 	movl   $0x57ee,(%esp)
    351a:	e8 bb 11 00 00       	call   46da <mkdir>
    351f:	85 c0                	test   %eax,%eax
    3521:	0f 84 91 01 00 00    	je     36b8 <dirfile+0x268>
  if(unlink("dirfile/xx") == 0){
    3527:	c7 04 24 ee 57 00 00 	movl   $0x57ee,(%esp)
    352e:	e8 8f 11 00 00       	call   46c2 <unlink>
    3533:	85 c0                	test   %eax,%eax
    3535:	0f 84 55 01 00 00    	je     3690 <dirfile+0x240>
  if(link("README", "dirfile/xx") == 0){
    353b:	c7 44 24 04 ee 57 00 	movl   $0x57ee,0x4(%esp)
    3542:	00 
    3543:	c7 04 24 52 58 00 00 	movl   $0x5852,(%esp)
    354a:	e8 83 11 00 00       	call   46d2 <link>
    354f:	85 c0                	test   %eax,%eax
    3551:	0f 84 11 01 00 00    	je     3668 <dirfile+0x218>
  if(unlink("dirfile") != 0){
    3557:	c7 04 24 b5 57 00 00 	movl   $0x57b5,(%esp)
    355e:	e8 5f 11 00 00       	call   46c2 <unlink>
    3563:	85 c0                	test   %eax,%eax
    3565:	0f 85 d5 00 00 00    	jne    3640 <dirfile+0x1f0>
  fd = open(".", O_RDWR);
    356b:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    3572:	00 
    3573:	c7 04 24 ae 53 00 00 	movl   $0x53ae,(%esp)
    357a:	e8 33 11 00 00       	call   46b2 <open>
  if(fd >= 0){
    357f:	85 c0                	test   %eax,%eax
    3581:	78 20                	js     35a3 <dirfile+0x153>
    printf(1, "open . for writing succeeded!\n");
    3583:	c7 44 24 04 68 60 00 	movl   $0x6068,0x4(%esp)
    358a:	00 
    358b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3592:	e8 39 12 00 00       	call   47d0 <printf>
    exit(0);
    3597:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    359e:	e8 cf 10 00 00       	call   4672 <exit>
  fd = open(".", 0);
    35a3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    35aa:	00 
    35ab:	c7 04 24 ae 53 00 00 	movl   $0x53ae,(%esp)
    35b2:	e8 fb 10 00 00       	call   46b2 <open>
  if(write(fd, "x", 1) > 0){
    35b7:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35be:	00 
    35bf:	c7 44 24 04 91 54 00 	movl   $0x5491,0x4(%esp)
    35c6:	00 
    35c7:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    35ca:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    35cc:	e8 c1 10 00 00       	call   4692 <write>
    35d1:	85 c0                	test   %eax,%eax
    35d3:	7e 20                	jle    35f5 <dirfile+0x1a5>
    printf(1, "write . succeeded!\n");
    35d5:	c7 44 24 04 71 58 00 	movl   $0x5871,0x4(%esp)
    35dc:	00 
    35dd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    35e4:	e8 e7 11 00 00       	call   47d0 <printf>
    exit(0);
    35e9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35f0:	e8 7d 10 00 00       	call   4672 <exit>
  close(fd);
    35f5:	89 1c 24             	mov    %ebx,(%esp)
    35f8:	e8 9d 10 00 00       	call   469a <close>
  printf(1, "dir vs file OK\n");
    35fd:	c7 44 24 04 85 58 00 	movl   $0x5885,0x4(%esp)
    3604:	00 
    3605:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    360c:	e8 bf 11 00 00       	call   47d0 <printf>
}
    3611:	83 c4 14             	add    $0x14,%esp
    3614:	5b                   	pop    %ebx
    3615:	5d                   	pop    %ebp
    3616:	c3                   	ret    
    3617:	90                   	nop
    printf(1, "chdir dirfile succeeded!\n");
    3618:	c7 44 24 04 d4 57 00 	movl   $0x57d4,0x4(%esp)
    361f:	00 
    3620:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3627:	e8 a4 11 00 00       	call   47d0 <printf>
    exit(0);
    362c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3633:	e8 3a 10 00 00       	call   4672 <exit>
    3638:	e9 66 fe ff ff       	jmp    34a3 <dirfile+0x53>
    363d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dirfile failed!\n");
    3640:	c7 44 24 04 59 58 00 	movl   $0x5859,0x4(%esp)
    3647:	00 
    3648:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    364f:	e8 7c 11 00 00       	call   47d0 <printf>
    exit(0);
    3654:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    365b:	e8 12 10 00 00       	call   4672 <exit>
    3660:	e9 06 ff ff ff       	jmp    356b <dirfile+0x11b>
    3665:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "link to dirfile/xx succeeded!\n");
    3668:	c7 44 24 04 48 60 00 	movl   $0x6048,0x4(%esp)
    366f:	00 
    3670:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3677:	e8 54 11 00 00       	call   47d0 <printf>
    exit(0);
    367c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3683:	e8 ea 0f 00 00       	call   4672 <exit>
    3688:	e9 ca fe ff ff       	jmp    3557 <dirfile+0x107>
    368d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "unlink dirfile/xx succeeded!\n");
    3690:	c7 44 24 04 34 58 00 	movl   $0x5834,0x4(%esp)
    3697:	00 
    3698:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    369f:	e8 2c 11 00 00       	call   47d0 <printf>
    exit(0);
    36a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36ab:	e8 c2 0f 00 00       	call   4672 <exit>
    36b0:	e9 86 fe ff ff       	jmp    353b <dirfile+0xeb>
    36b5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "mkdir dirfile/xx succeeded!\n");
    36b8:	c7 44 24 04 17 58 00 	movl   $0x5817,0x4(%esp)
    36bf:	00 
    36c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36c7:	e8 04 11 00 00       	call   47d0 <printf>
    exit(0);
    36cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36d3:	e8 9a 0f 00 00       	call   4672 <exit>
    36d8:	e9 4a fe ff ff       	jmp    3527 <dirfile+0xd7>
    36dd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "create dirfile failed\n");
    36e0:	c7 44 24 04 bd 57 00 	movl   $0x57bd,0x4(%esp)
    36e7:	00 
    36e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36ef:	89 45 f4             	mov    %eax,-0xc(%ebp)
    36f2:	e8 d9 10 00 00       	call   47d0 <printf>
    exit(0);
    36f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36fe:	e8 6f 0f 00 00       	call   4672 <exit>
    3703:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3706:	e9 7c fd ff ff       	jmp    3487 <dirfile+0x37>
    370b:	90                   	nop
    370c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003710 <iref>:
{
    3710:	55                   	push   %ebp
    3711:	89 e5                	mov    %esp,%ebp
    3713:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3714:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3719:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    371c:	c7 44 24 04 95 58 00 	movl   $0x5895,0x4(%esp)
    3723:	00 
    3724:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    372b:	e8 a0 10 00 00       	call   47d0 <printf>
    3730:	e9 88 00 00 00       	jmp    37bd <iref+0xad>
    3735:	8d 76 00             	lea    0x0(%esi),%esi
    if(chdir("irefd") != 0){
    3738:	c7 04 24 a6 58 00 00 	movl   $0x58a6,(%esp)
    373f:	e8 9e 0f 00 00       	call   46e2 <chdir>
    3744:	85 c0                	test   %eax,%eax
    3746:	0f 85 b9 00 00 00    	jne    3805 <iref+0xf5>
    mkdir("");
    374c:	c7 04 24 5b 4f 00 00 	movl   $0x4f5b,(%esp)
    3753:	e8 82 0f 00 00       	call   46da <mkdir>
    link("README", "");
    3758:	c7 44 24 04 5b 4f 00 	movl   $0x4f5b,0x4(%esp)
    375f:	00 
    3760:	c7 04 24 52 58 00 00 	movl   $0x5852,(%esp)
    3767:	e8 66 0f 00 00       	call   46d2 <link>
    fd = open("", O_CREATE);
    376c:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3773:	00 
    3774:	c7 04 24 5b 4f 00 00 	movl   $0x4f5b,(%esp)
    377b:	e8 32 0f 00 00       	call   46b2 <open>
    if(fd >= 0)
    3780:	85 c0                	test   %eax,%eax
    3782:	78 08                	js     378c <iref+0x7c>
      close(fd);
    3784:	89 04 24             	mov    %eax,(%esp)
    3787:	e8 0e 0f 00 00       	call   469a <close>
    fd = open("xx", O_CREATE);
    378c:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3793:	00 
    3794:	c7 04 24 90 54 00 00 	movl   $0x5490,(%esp)
    379b:	e8 12 0f 00 00       	call   46b2 <open>
    if(fd >= 0)
    37a0:	85 c0                	test   %eax,%eax
    37a2:	78 08                	js     37ac <iref+0x9c>
      close(fd);
    37a4:	89 04 24             	mov    %eax,(%esp)
    37a7:	e8 ee 0e 00 00       	call   469a <close>
    unlink("xx");
    37ac:	c7 04 24 90 54 00 00 	movl   $0x5490,(%esp)
    37b3:	e8 0a 0f 00 00       	call   46c2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    37b8:	83 eb 01             	sub    $0x1,%ebx
    37bb:	74 73                	je     3830 <iref+0x120>
    if(mkdir("irefd") != 0){
    37bd:	c7 04 24 a6 58 00 00 	movl   $0x58a6,(%esp)
    37c4:	e8 11 0f 00 00       	call   46da <mkdir>
    37c9:	85 c0                	test   %eax,%eax
    37cb:	0f 84 67 ff ff ff    	je     3738 <iref+0x28>
      printf(1, "mkdir irefd failed\n");
    37d1:	c7 44 24 04 ac 58 00 	movl   $0x58ac,0x4(%esp)
    37d8:	00 
    37d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    37e0:	e8 eb 0f 00 00       	call   47d0 <printf>
      exit(0);
    37e5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37ec:	e8 81 0e 00 00       	call   4672 <exit>
    if(chdir("irefd") != 0){
    37f1:	c7 04 24 a6 58 00 00 	movl   $0x58a6,(%esp)
    37f8:	e8 e5 0e 00 00       	call   46e2 <chdir>
    37fd:	85 c0                	test   %eax,%eax
    37ff:	0f 84 47 ff ff ff    	je     374c <iref+0x3c>
      printf(1, "chdir irefd failed\n");
    3805:	c7 44 24 04 c0 58 00 	movl   $0x58c0,0x4(%esp)
    380c:	00 
    380d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3814:	e8 b7 0f 00 00       	call   47d0 <printf>
      exit(0);
    3819:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3820:	e8 4d 0e 00 00       	call   4672 <exit>
    3825:	e9 22 ff ff ff       	jmp    374c <iref+0x3c>
    382a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  chdir("/");
    3830:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
    3837:	e8 a6 0e 00 00       	call   46e2 <chdir>
  printf(1, "empty file name OK\n");
    383c:	c7 44 24 04 d4 58 00 	movl   $0x58d4,0x4(%esp)
    3843:	00 
    3844:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    384b:	e8 80 0f 00 00       	call   47d0 <printf>
}
    3850:	83 c4 14             	add    $0x14,%esp
    3853:	5b                   	pop    %ebx
    3854:	5d                   	pop    %ebp
    3855:	c3                   	ret    
    3856:	8d 76 00             	lea    0x0(%esi),%esi
    3859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003860 <forktest>:
{
    3860:	55                   	push   %ebp
    3861:	89 e5                	mov    %esp,%ebp
    3863:	56                   	push   %esi
    3864:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3865:	31 db                	xor    %ebx,%ebx
{
    3867:	83 ec 20             	sub    $0x20,%esp
  printf(1, "fork test\n");
    386a:	c7 44 24 04 e8 58 00 	movl   $0x58e8,0x4(%esp)
    3871:	00 
    3872:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3879:	e8 52 0f 00 00       	call   47d0 <printf>
    387e:	eb 0b                	jmp    388b <forktest+0x2b>
  for(n=0; n<1000; n++){
    3880:	83 c3 01             	add    $0x1,%ebx
    3883:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3889:	74 25                	je     38b0 <forktest+0x50>
    pid = fork();
    388b:	e8 da 0d 00 00       	call   466a <fork>
    if(pid < 0)
    3890:	85 c0                	test   %eax,%eax
    pid = fork();
    3892:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(pid < 0)
    3895:	78 41                	js     38d8 <forktest+0x78>
    if(pid == 0)
    3897:	75 e7                	jne    3880 <forktest+0x20>
      exit(0);
    3899:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(n=0; n<1000; n++){
    38a0:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    38a3:	e8 ca 0d 00 00       	call   4672 <exit>
  for(n=0; n<1000; n++){
    38a8:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    38ae:	75 db                	jne    388b <forktest+0x2b>
    printf(1, "fork claimed to work 1000 times!\n");
    38b0:	c7 44 24 04 88 60 00 	movl   $0x6088,0x4(%esp)
    38b7:	00 
    38b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    38bf:	e8 0c 0f 00 00       	call   47d0 <printf>
    exit(0);
    38c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38cb:	e8 a2 0d 00 00       	call   4672 <exit>
    38d0:	eb 0e                	jmp    38e0 <forktest+0x80>
    38d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(; n > 0; n--){
    38d8:	85 db                	test   %ebx,%ebx
    38da:	0f 84 88 00 00 00    	je     3968 <forktest+0x108>
    38e0:	8d 75 f4             	lea    -0xc(%ebp),%esi
    38e3:	eb 08                	jmp    38ed <forktest+0x8d>
    38e5:	8d 76 00             	lea    0x0(%esi),%esi
    38e8:	83 eb 01             	sub    $0x1,%ebx
    38eb:	74 33                	je     3920 <forktest+0xc0>
    if(wait(&pid) < 0){
    38ed:	89 34 24             	mov    %esi,(%esp)
    38f0:	e8 85 0d 00 00       	call   467a <wait>
    38f5:	85 c0                	test   %eax,%eax
    38f7:	79 ef                	jns    38e8 <forktest+0x88>
      printf(1, "wait stopped early\n");
    38f9:	c7 44 24 04 f3 58 00 	movl   $0x58f3,0x4(%esp)
    3900:	00 
    3901:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3908:	e8 c3 0e 00 00       	call   47d0 <printf>
      exit(0);
    390d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3914:	e8 59 0d 00 00       	call   4672 <exit>
  for(; n > 0; n--){
    3919:	83 eb 01             	sub    $0x1,%ebx
    391c:	75 cf                	jne    38ed <forktest+0x8d>
    391e:	66 90                	xchg   %ax,%ax
  if(wait(&pid) != -1){
    3920:	89 34 24             	mov    %esi,(%esp)
    3923:	e8 52 0d 00 00       	call   467a <wait>
    3928:	83 f8 ff             	cmp    $0xffffffff,%eax
    392b:	74 20                	je     394d <forktest+0xed>
    printf(1, "wait got too many\n");
    392d:	c7 44 24 04 07 59 00 	movl   $0x5907,0x4(%esp)
    3934:	00 
    3935:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    393c:	e8 8f 0e 00 00       	call   47d0 <printf>
    exit(0);
    3941:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3948:	e8 25 0d 00 00       	call   4672 <exit>
  printf(1, "fork test OK\n");
    394d:	c7 44 24 04 1a 59 00 	movl   $0x591a,0x4(%esp)
    3954:	00 
    3955:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    395c:	e8 6f 0e 00 00       	call   47d0 <printf>
}
    3961:	83 c4 20             	add    $0x20,%esp
    3964:	5b                   	pop    %ebx
    3965:	5e                   	pop    %esi
    3966:	5d                   	pop    %ebp
    3967:	c3                   	ret    
    3968:	8d 75 f4             	lea    -0xc(%ebp),%esi
    396b:	eb b3                	jmp    3920 <forktest+0xc0>
    396d:	8d 76 00             	lea    0x0(%esi),%esi

00003970 <sbrktest>:
{
    3970:	55                   	push   %ebp
    3971:	89 e5                	mov    %esp,%ebp
    3973:	57                   	push   %edi
    3974:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    3975:	31 f6                	xor    %esi,%esi
{
    3977:	53                   	push   %ebx
    3978:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    397b:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3980:	c7 44 24 04 28 59 00 	movl   $0x5928,0x4(%esp)
    3987:	00 
    3988:	89 04 24             	mov    %eax,(%esp)
    398b:	e8 40 0e 00 00       	call   47d0 <printf>
  oldbrk = sbrk(0);
    3990:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3997:	e8 5e 0d 00 00       	call   46fa <sbrk>
  a = sbrk(0);
    399c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    39a3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    39a6:	e8 4f 0d 00 00       	call   46fa <sbrk>
    39ab:	89 c7                	mov    %eax,%edi
    39ad:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    39b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39b7:	e8 3e 0d 00 00       	call   46fa <sbrk>
    if(b != a){
    39bc:	39 f8                	cmp    %edi,%eax
    b = sbrk(1);
    39be:	89 c3                	mov    %eax,%ebx
    if(b != a){
    39c0:	74 2d                	je     39ef <sbrktest+0x7f>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    39c2:	89 44 24 10          	mov    %eax,0x10(%esp)
    39c6:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    39cb:	89 7c 24 0c          	mov    %edi,0xc(%esp)
    39cf:	89 74 24 08          	mov    %esi,0x8(%esp)
    39d3:	c7 44 24 04 33 59 00 	movl   $0x5933,0x4(%esp)
    39da:	00 
    39db:	89 04 24             	mov    %eax,(%esp)
    39de:	e8 ed 0d 00 00       	call   47d0 <printf>
      exit(0);
    39e3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39ea:	e8 83 0c 00 00       	call   4672 <exit>
  for(i = 0; i < 5000; i++){
    39ef:	83 c6 01             	add    $0x1,%esi
    39f2:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    *b = 1;
    39f8:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    39fb:	8d 7b 01             	lea    0x1(%ebx),%edi
  for(i = 0; i < 5000; i++){
    39fe:	75 b0                	jne    39b0 <sbrktest+0x40>
  pid = fork();
    3a00:	e8 65 0c 00 00       	call   466a <fork>
  if(pid < 0){
    3a05:	85 c0                	test   %eax,%eax
  pid = fork();
    3a07:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  if(pid < 0){
    3a0a:	0f 88 76 03 00 00    	js     3d86 <sbrktest+0x416>
  c = sbrk(1);
    3a10:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  if(c != a + 1){
    3a17:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    3a1a:	e8 db 0c 00 00       	call   46fa <sbrk>
  c = sbrk(1);
    3a1f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a26:	e8 cf 0c 00 00       	call   46fa <sbrk>
  if(c != a + 1){
    3a2b:	39 d8                	cmp    %ebx,%eax
    3a2d:	74 21                	je     3a50 <sbrktest+0xe0>
    printf(stdout, "sbrk test failed post-fork\n");
    3a2f:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3a34:	c7 44 24 04 65 59 00 	movl   $0x5965,0x4(%esp)
    3a3b:	00 
    3a3c:	89 04 24             	mov    %eax,(%esp)
    3a3f:	e8 8c 0d 00 00       	call   47d0 <printf>
    exit(0);
    3a44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a4b:	e8 22 0c 00 00       	call   4672 <exit>
  if(pid == 0)
    3a50:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    3a53:	85 c0                	test   %eax,%eax
    3a55:	75 0c                	jne    3a63 <sbrktest+0xf3>
    exit(0);
    3a57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a5e:	e8 0f 0c 00 00       	call   4672 <exit>
  wait(&pid);
    3a63:	8d 7d b4             	lea    -0x4c(%ebp),%edi
    3a66:	89 3c 24             	mov    %edi,(%esp)
    3a69:	e8 0c 0c 00 00       	call   467a <wait>
  a = sbrk(0);
    3a6e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a75:	e8 80 0c 00 00       	call   46fa <sbrk>
  amt = (BIG) - (uint)a;
    3a7a:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3a7f:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    3a81:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    3a83:	89 14 24             	mov    %edx,(%esp)
    3a86:	e8 6f 0c 00 00       	call   46fa <sbrk>
  if (p != a) {
    3a8b:	39 d8                	cmp    %ebx,%eax
    3a8d:	74 21                	je     3ab0 <sbrktest+0x140>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3a8f:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3a94:	c7 44 24 04 ac 60 00 	movl   $0x60ac,0x4(%esp)
    3a9b:	00 
    3a9c:	89 04 24             	mov    %eax,(%esp)
    3a9f:	e8 2c 0d 00 00       	call   47d0 <printf>
    exit(0);
    3aa4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3aab:	e8 c2 0b 00 00       	call   4672 <exit>
  *lastaddr = 99;
    3ab0:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3ab7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3abe:	e8 37 0c 00 00       	call   46fa <sbrk>
  c = sbrk(-4096);
    3ac3:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3aca:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    3acc:	e8 29 0c 00 00       	call   46fa <sbrk>
  if(c == (char*)0xffffffff){
    3ad1:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ad4:	0f 84 3d 03 00 00    	je     3e17 <sbrktest+0x4a7>
  c = sbrk(0);
    3ada:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ae1:	e8 14 0c 00 00       	call   46fa <sbrk>
  if(c != a - 4096){
    3ae6:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    3aec:	39 d0                	cmp    %edx,%eax
    3aee:	74 29                	je     3b19 <sbrktest+0x1a9>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3af0:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3af4:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3af9:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3afd:	c7 44 24 04 ec 60 00 	movl   $0x60ec,0x4(%esp)
    3b04:	00 
    3b05:	89 04 24             	mov    %eax,(%esp)
    3b08:	e8 c3 0c 00 00       	call   47d0 <printf>
    exit(0);
    3b0d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b14:	e8 59 0b 00 00       	call   4672 <exit>
  a = sbrk(0);
    3b19:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b20:	e8 d5 0b 00 00       	call   46fa <sbrk>
  c = sbrk(4096);
    3b25:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    3b2c:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    3b2e:	e8 c7 0b 00 00       	call   46fa <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3b33:	39 d8                	cmp    %ebx,%eax
  c = sbrk(4096);
    3b35:	89 c6                	mov    %eax,%esi
  if(c != a || sbrk(0) != a + 4096){
    3b37:	0f 84 bb 02 00 00    	je     3df8 <sbrktest+0x488>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3b3d:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3b42:	89 74 24 0c          	mov    %esi,0xc(%esp)
    3b46:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3b4a:	c7 44 24 04 24 61 00 	movl   $0x6124,0x4(%esp)
    3b51:	00 
    3b52:	89 04 24             	mov    %eax,(%esp)
    3b55:	e8 76 0c 00 00       	call   47d0 <printf>
    exit(0);
    3b5a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b61:	e8 0c 0b 00 00       	call   4672 <exit>
  if(*lastaddr == 99){
    3b66:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3b6d:	0f 84 5f 02 00 00    	je     3dd2 <sbrktest+0x462>
  a = sbrk(0);
    3b73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b7a:	e8 7b 0b 00 00       	call   46fa <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3b7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3b86:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3b88:	e8 6d 0b 00 00       	call   46fa <sbrk>
    3b8d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3b90:	29 c1                	sub    %eax,%ecx
    3b92:	89 0c 24             	mov    %ecx,(%esp)
    3b95:	e8 60 0b 00 00       	call   46fa <sbrk>
  if(c != a){
    3b9a:	39 d8                	cmp    %ebx,%eax
    3b9c:	74 29                	je     3bc7 <sbrktest+0x257>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3b9e:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3ba2:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3ba7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3bab:	c7 44 24 04 7c 61 00 	movl   $0x617c,0x4(%esp)
    3bb2:	00 
    3bb3:	89 04 24             	mov    %eax,(%esp)
    3bb6:	e8 15 0c 00 00       	call   47d0 <printf>
    exit(0);
    3bbb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bc2:	e8 ab 0a 00 00       	call   4672 <exit>
  for(i = 0; i < 5000; i++){
    3bc7:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3bcc:	eb 18                	jmp    3be6 <sbrktest+0x276>
    3bce:	66 90                	xchg   %ax,%ax
    wait(&pid);
    3bd0:	89 3c 24             	mov    %edi,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3bd3:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(&pid);
    3bd9:	e8 9c 0a 00 00       	call   467a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3bde:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    3be4:	74 73                	je     3c59 <sbrktest+0x2e9>
    ppid = getpid();
    3be6:	e8 07 0b 00 00       	call   46f2 <getpid>
    3beb:	89 c6                	mov    %eax,%esi
    pid = fork();
    3bed:	e8 78 0a 00 00       	call   466a <fork>
    if(pid < 0){
    3bf2:	85 c0                	test   %eax,%eax
    pid = fork();
    3bf4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    if(pid < 0){
    3bf7:	78 3a                	js     3c33 <sbrktest+0x2c3>
    if(pid == 0){
    3bf9:	85 c0                	test   %eax,%eax
    3bfb:	75 d3                	jne    3bd0 <sbrktest+0x260>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3bfd:	0f be 03             	movsbl (%ebx),%eax
    3c00:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3c04:	c7 44 24 04 9c 59 00 	movl   $0x599c,0x4(%esp)
    3c0b:	00 
    3c0c:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3c10:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3c15:	89 04 24             	mov    %eax,(%esp)
    3c18:	e8 b3 0b 00 00       	call   47d0 <printf>
      kill(ppid);
    3c1d:	89 34 24             	mov    %esi,(%esp)
    3c20:	e8 7d 0a 00 00       	call   46a2 <kill>
      exit(0);
    3c25:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c2c:	e8 41 0a 00 00       	call   4672 <exit>
    3c31:	eb 9d                	jmp    3bd0 <sbrktest+0x260>
      printf(stdout, "fork failed\n");
    3c33:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3c38:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    3c3f:	00 
    3c40:	89 04 24             	mov    %eax,(%esp)
    3c43:	e8 88 0b 00 00       	call   47d0 <printf>
      exit(0);
    3c48:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c4f:	e8 1e 0a 00 00       	call   4672 <exit>
    3c54:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    3c57:	eb a0                	jmp    3bf9 <sbrktest+0x289>
  if(pipe(fds) != 0){
    3c59:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3c5c:	89 04 24             	mov    %eax,(%esp)
    3c5f:	e8 1e 0a 00 00       	call   4682 <pipe>
    3c64:	85 c0                	test   %eax,%eax
    3c66:	74 20                	je     3c88 <sbrktest+0x318>
    printf(1, "pipe() failed\n");
    3c68:	c7 44 24 04 71 4e 00 	movl   $0x4e71,0x4(%esp)
    3c6f:	00 
    3c70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c77:	e8 54 0b 00 00       	call   47d0 <printf>
    exit(0);
    3c7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c83:	e8 ea 09 00 00       	call   4672 <exit>
    3c88:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3c8b:	8d 7d c0             	lea    -0x40(%ebp),%edi
      read(fds[0], &scratch, 1);
    3c8e:	8d 75 b3             	lea    -0x4d(%ebp),%esi
    if((pids[i] = fork()) == 0){
    3c91:	e8 d4 09 00 00       	call   466a <fork>
    3c96:	85 c0                	test   %eax,%eax
    3c98:	89 07                	mov    %eax,(%edi)
    3c9a:	0f 84 a2 00 00 00    	je     3d42 <sbrktest+0x3d2>
    if(pids[i] != -1)
    3ca0:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ca3:	74 17                	je     3cbc <sbrktest+0x34c>
      read(fds[0], &scratch, 1);
    3ca5:	8b 45 b8             	mov    -0x48(%ebp),%eax
    3ca8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3caf:	00 
    3cb0:	89 74 24 04          	mov    %esi,0x4(%esp)
    3cb4:	89 04 24             	mov    %eax,(%esp)
    3cb7:	e8 ce 09 00 00       	call   468a <read>
    3cbc:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3cbf:	39 df                	cmp    %ebx,%edi
    3cc1:	75 ce                	jne    3c91 <sbrktest+0x321>
  c = sbrk(4096);
    3cc3:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3cca:	8d 7d c0             	lea    -0x40(%ebp),%edi
    3ccd:	e8 28 0a 00 00       	call   46fa <sbrk>
    3cd2:	89 c6                	mov    %eax,%esi
    if(pids[i] == -1)
    3cd4:	8b 07                	mov    (%edi),%eax
    3cd6:	83 f8 ff             	cmp    $0xffffffff,%eax
    3cd9:	74 10                	je     3ceb <sbrktest+0x37b>
    kill(pids[i]);
    3cdb:	89 04 24             	mov    %eax,(%esp)
    3cde:	e8 bf 09 00 00       	call   46a2 <kill>
    wait(&pids[i]);
    3ce3:	89 3c 24             	mov    %edi,(%esp)
    3ce6:	e8 8f 09 00 00       	call   467a <wait>
    3ceb:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3cee:	39 df                	cmp    %ebx,%edi
    3cf0:	75 e2                	jne    3cd4 <sbrktest+0x364>
  if(c == (char*)0xffffffff){
    3cf2:	83 fe ff             	cmp    $0xffffffff,%esi
    3cf5:	0f 84 b1 00 00 00    	je     3dac <sbrktest+0x43c>
  if(sbrk(0) > oldbrk)
    3cfb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d02:	e8 f3 09 00 00       	call   46fa <sbrk>
    3d07:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3d0a:	73 19                	jae    3d25 <sbrktest+0x3b5>
    sbrk(-(sbrk(0) - oldbrk));
    3d0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d13:	e8 e2 09 00 00       	call   46fa <sbrk>
    3d18:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3d1b:	29 c1                	sub    %eax,%ecx
    3d1d:	89 0c 24             	mov    %ecx,(%esp)
    3d20:	e8 d5 09 00 00       	call   46fa <sbrk>
  printf(stdout, "sbrk test OK\n");
    3d25:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3d2a:	c7 44 24 04 d0 59 00 	movl   $0x59d0,0x4(%esp)
    3d31:	00 
    3d32:	89 04 24             	mov    %eax,(%esp)
    3d35:	e8 96 0a 00 00       	call   47d0 <printf>
}
    3d3a:	83 c4 6c             	add    $0x6c,%esp
    3d3d:	5b                   	pop    %ebx
    3d3e:	5e                   	pop    %esi
    3d3f:	5f                   	pop    %edi
    3d40:	5d                   	pop    %ebp
    3d41:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3d42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d49:	e8 ac 09 00 00       	call   46fa <sbrk>
    3d4e:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3d53:	29 c2                	sub    %eax,%edx
    3d55:	89 14 24             	mov    %edx,(%esp)
    3d58:	e8 9d 09 00 00       	call   46fa <sbrk>
      write(fds[1], "x", 1);
    3d5d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    3d60:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3d67:	00 
    3d68:	c7 44 24 04 91 54 00 	movl   $0x5491,0x4(%esp)
    3d6f:	00 
    3d70:	89 04 24             	mov    %eax,(%esp)
    3d73:	e8 1a 09 00 00       	call   4692 <write>
      for(;;) sleep(1000);
    3d78:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    3d7f:	e8 7e 09 00 00       	call   4702 <sleep>
    3d84:	eb f2                	jmp    3d78 <sbrktest+0x408>
    printf(stdout, "sbrk test fork failed\n");
    3d86:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3d8b:	c7 44 24 04 4e 59 00 	movl   $0x594e,0x4(%esp)
    3d92:	00 
    3d93:	89 04 24             	mov    %eax,(%esp)
    3d96:	e8 35 0a 00 00       	call   47d0 <printf>
    exit(0);
    3d9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3da2:	e8 cb 08 00 00       	call   4672 <exit>
    3da7:	e9 64 fc ff ff       	jmp    3a10 <sbrktest+0xa0>
    printf(stdout, "failed sbrk leaked memory\n");
    3dac:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3db1:	c7 44 24 04 b5 59 00 	movl   $0x59b5,0x4(%esp)
    3db8:	00 
    3db9:	89 04 24             	mov    %eax,(%esp)
    3dbc:	e8 0f 0a 00 00       	call   47d0 <printf>
    exit(0);
    3dc1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3dc8:	e8 a5 08 00 00       	call   4672 <exit>
    3dcd:	e9 29 ff ff ff       	jmp    3cfb <sbrktest+0x38b>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3dd2:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3dd7:	c7 44 24 04 4c 61 00 	movl   $0x614c,0x4(%esp)
    3dde:	00 
    3ddf:	89 04 24             	mov    %eax,(%esp)
    3de2:	e8 e9 09 00 00       	call   47d0 <printf>
    exit(0);
    3de7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3dee:	e8 7f 08 00 00       	call   4672 <exit>
    3df3:	e9 7b fd ff ff       	jmp    3b73 <sbrktest+0x203>
  if(c != a || sbrk(0) != a + 4096){
    3df8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3dff:	e8 f6 08 00 00       	call   46fa <sbrk>
    3e04:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3e0a:	39 d0                	cmp    %edx,%eax
    3e0c:	0f 85 2b fd ff ff    	jne    3b3d <sbrktest+0x1cd>
    3e12:	e9 4f fd ff ff       	jmp    3b66 <sbrktest+0x1f6>
    printf(stdout, "sbrk could not deallocate\n");
    3e17:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3e1c:	c7 44 24 04 81 59 00 	movl   $0x5981,0x4(%esp)
    3e23:	00 
    3e24:	89 04 24             	mov    %eax,(%esp)
    3e27:	e8 a4 09 00 00       	call   47d0 <printf>
    exit(0);
    3e2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e33:	e8 3a 08 00 00       	call   4672 <exit>
    3e38:	e9 9d fc ff ff       	jmp    3ada <sbrktest+0x16a>
    3e3d:	8d 76 00             	lea    0x0(%esi),%esi

00003e40 <validateint>:
{
    3e40:	55                   	push   %ebp
    3e41:	89 e5                	mov    %esp,%ebp
}
    3e43:	5d                   	pop    %ebp
    3e44:	c3                   	ret    
    3e45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e50 <validatetest>:
{
    3e50:	55                   	push   %ebp
    3e51:	89 e5                	mov    %esp,%ebp
    3e53:	56                   	push   %esi
    3e54:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3e55:	31 db                	xor    %ebx,%ebx
{
    3e57:	83 ec 20             	sub    $0x20,%esp
  printf(stdout, "validate test\n");
    3e5a:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3e5f:	c7 44 24 04 de 59 00 	movl   $0x59de,0x4(%esp)
    3e66:	00 
    3e67:	8d 75 f4             	lea    -0xc(%ebp),%esi
    3e6a:	89 04 24             	mov    %eax,(%esp)
    3e6d:	e8 5e 09 00 00       	call   47d0 <printf>
    3e72:	eb 73                	jmp    3ee7 <validatetest+0x97>
    3e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    sleep(0);
    3e78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e7f:	e8 7e 08 00 00       	call   4702 <sleep>
    sleep(0);
    3e84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e8b:	e8 72 08 00 00       	call   4702 <sleep>
    kill(pid);
    3e90:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e93:	89 04 24             	mov    %eax,(%esp)
    3e96:	e8 07 08 00 00       	call   46a2 <kill>
    wait(&pid);
    3e9b:	89 34 24             	mov    %esi,(%esp)
    3e9e:	e8 d7 07 00 00       	call   467a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    3ea3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    3ea7:	c7 04 24 ed 59 00 00 	movl   $0x59ed,(%esp)
    3eae:	e8 1f 08 00 00       	call   46d2 <link>
    3eb3:	83 f8 ff             	cmp    $0xffffffff,%eax
    3eb6:	74 21                	je     3ed9 <validatetest+0x89>
      printf(stdout, "link should not succeed\n");
    3eb8:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3ebd:	c7 44 24 04 f8 59 00 	movl   $0x59f8,0x4(%esp)
    3ec4:	00 
    3ec5:	89 04 24             	mov    %eax,(%esp)
    3ec8:	e8 03 09 00 00       	call   47d0 <printf>
      exit(0);
    3ecd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ed4:	e8 99 07 00 00       	call   4672 <exit>
  for(p = 0; p <= (uint)hi; p += 4096){
    3ed9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3edf:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3ee5:	74 21                	je     3f08 <validatetest+0xb8>
    if((pid = fork()) == 0){
    3ee7:	e8 7e 07 00 00       	call   466a <fork>
    3eec:	85 c0                	test   %eax,%eax
    3eee:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ef1:	75 85                	jne    3e78 <validatetest+0x28>
      exit(0);
    3ef3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3efa:	e8 73 07 00 00       	call   4672 <exit>
    3eff:	e9 74 ff ff ff       	jmp    3e78 <validatetest+0x28>
    3f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(stdout, "validate ok\n");
    3f08:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3f0d:	c7 44 24 04 11 5a 00 	movl   $0x5a11,0x4(%esp)
    3f14:	00 
    3f15:	89 04 24             	mov    %eax,(%esp)
    3f18:	e8 b3 08 00 00       	call   47d0 <printf>
}
    3f1d:	83 c4 20             	add    $0x20,%esp
    3f20:	5b                   	pop    %ebx
    3f21:	5e                   	pop    %esi
    3f22:	5d                   	pop    %ebp
    3f23:	c3                   	ret    
    3f24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3f2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003f30 <bsstest>:
{
    3f30:	55                   	push   %ebp
    3f31:	89 e5                	mov    %esp,%ebp
    3f33:	53                   	push   %ebx
  for(i = 0; i < sizeof(uninit); i++){
    3f34:	31 db                	xor    %ebx,%ebx
{
    3f36:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "bss test\n");
    3f39:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3f3e:	c7 44 24 04 1e 5a 00 	movl   $0x5a1e,0x4(%esp)
    3f45:	00 
    3f46:	89 04 24             	mov    %eax,(%esp)
    3f49:	e8 82 08 00 00       	call   47d0 <printf>
    3f4e:	eb 0b                	jmp    3f5b <bsstest+0x2b>
  for(i = 0; i < sizeof(uninit); i++){
    3f50:	83 c3 01             	add    $0x1,%ebx
    3f53:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3f59:	74 35                	je     3f90 <bsstest+0x60>
    if(uninit[i] != '\0'){
    3f5b:	80 bb a0 6c 00 00 00 	cmpb   $0x0,0x6ca0(%ebx)
    3f62:	74 ec                	je     3f50 <bsstest+0x20>
      printf(stdout, "bss test failed\n");
    3f64:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
  for(i = 0; i < sizeof(uninit); i++){
    3f69:	83 c3 01             	add    $0x1,%ebx
      printf(stdout, "bss test failed\n");
    3f6c:	c7 44 24 04 28 5a 00 	movl   $0x5a28,0x4(%esp)
    3f73:	00 
    3f74:	89 04 24             	mov    %eax,(%esp)
    3f77:	e8 54 08 00 00       	call   47d0 <printf>
      exit(0);
    3f7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3f83:	e8 ea 06 00 00       	call   4672 <exit>
  for(i = 0; i < sizeof(uninit); i++){
    3f88:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3f8e:	75 cb                	jne    3f5b <bsstest+0x2b>
  printf(stdout, "bss test ok\n");
    3f90:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3f95:	c7 44 24 04 39 5a 00 	movl   $0x5a39,0x4(%esp)
    3f9c:	00 
    3f9d:	89 04 24             	mov    %eax,(%esp)
    3fa0:	e8 2b 08 00 00       	call   47d0 <printf>
}
    3fa5:	83 c4 14             	add    $0x14,%esp
    3fa8:	5b                   	pop    %ebx
    3fa9:	5d                   	pop    %ebp
    3faa:	c3                   	ret    
    3fab:	90                   	nop
    3fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003fb0 <bigargtest>:
{
    3fb0:	55                   	push   %ebp
    3fb1:	89 e5                	mov    %esp,%ebp
    3fb3:	83 ec 28             	sub    $0x28,%esp
  unlink("bigarg-ok");
    3fb6:	c7 04 24 46 5a 00 00 	movl   $0x5a46,(%esp)
    3fbd:	e8 00 07 00 00       	call   46c2 <unlink>
  pid = fork();
    3fc2:	e8 a3 06 00 00       	call   466a <fork>
  if(pid == 0){
    3fc7:	85 c0                	test   %eax,%eax
  pid = fork();
    3fc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pid == 0){
    3fcc:	74 32                	je     4000 <bigargtest+0x50>
    3fce:	66 90                	xchg   %ax,%ax
  } else if(pid < 0){
    3fd0:	0f 89 ad 00 00 00    	jns    4083 <bigargtest+0xd3>
    printf(stdout, "bigargtest: fork failed\n");
    3fd6:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    3fdb:	c7 44 24 04 6d 5a 00 	movl   $0x5a6d,0x4(%esp)
    3fe2:	00 
    3fe3:	89 04 24             	mov    %eax,(%esp)
    3fe6:	e8 e5 07 00 00       	call   47d0 <printf>
    exit(0);
    3feb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ff2:	e8 7b 06 00 00       	call   4672 <exit>
    3ff7:	e9 87 00 00 00       	jmp    4083 <bigargtest+0xd3>
    3ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    4000:	c7 04 85 00 6c 00 00 	movl   $0x61a0,0x6c00(,%eax,4)
    4007:	a0 61 00 00 
    for(i = 0; i < MAXARG-1; i++)
    400b:	83 c0 01             	add    $0x1,%eax
    400e:	83 f8 1f             	cmp    $0x1f,%eax
    4011:	75 ed                	jne    4000 <bigargtest+0x50>
    printf(stdout, "bigarg test\n");
    4013:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    4018:	c7 44 24 04 50 5a 00 	movl   $0x5a50,0x4(%esp)
    401f:	00 
    args[MAXARG-1] = 0;
    4020:	c7 05 7c 6c 00 00 00 	movl   $0x0,0x6c7c
    4027:	00 00 00 
    printf(stdout, "bigarg test\n");
    402a:	89 04 24             	mov    %eax,(%esp)
    402d:	e8 9e 07 00 00       	call   47d0 <printf>
    exec("echo", args);
    4032:	c7 44 24 04 00 6c 00 	movl   $0x6c00,0x4(%esp)
    4039:	00 
    403a:	c7 04 24 1d 4c 00 00 	movl   $0x4c1d,(%esp)
    4041:	e8 64 06 00 00       	call   46aa <exec>
    printf(stdout, "bigarg test ok\n");
    4046:	a1 d4 6b 00 00       	mov    0x6bd4,%eax
    404b:	c7 44 24 04 5d 5a 00 	movl   $0x5a5d,0x4(%esp)
    4052:	00 
    4053:	89 04 24             	mov    %eax,(%esp)
    4056:	e8 75 07 00 00       	call   47d0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    405b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    4062:	00 
    4063:	c7 04 24 46 5a 00 00 	movl   $0x5a46,(%esp)
    406a:	e8 43 06 00 00       	call   46b2 <open>
    close(fd);
    406f:	89 04 24             	mov    %eax,(%esp)
    4072:	e8 23 06 00 00       	call   469a <close>
    exit(0);
    4077:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    407e:	e8 ef 05 00 00       	call   4672 <exit>
  wait(&pid);
    4083:	8d 45 f4             	lea    -0xc(%ebp),%eax
    4086:	89 04 24             	mov    %eax,(%esp)
    4089:	e8 ec 05 00 00       	call   467a <wait>
  fd = open("bigarg-ok", 0);
    408e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    4095:	00 
    4096:	c7 04 24 46 5a 00 00 	movl   $0x5a46,(%esp)
    409d:	e8 10 06 00 00       	call   46b2 <open>
  if(fd < 0){
    40a2:	85 c0                	test   %eax,%eax
    40a4:	78 1a                	js     40c0 <bigargtest+0x110>
  close(fd);
    40a6:	89 04 24             	mov    %eax,(%esp)
    40a9:	e8 ec 05 00 00       	call   469a <close>
  unlink("bigarg-ok");
    40ae:	c7 04 24 46 5a 00 00 	movl   $0x5a46,(%esp)
    40b5:	e8 08 06 00 00       	call   46c2 <unlink>
}
    40ba:	c9                   	leave  
    40bb:	c3                   	ret    
    40bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "bigarg test failed!\n");
    40c0:	8b 15 d4 6b 00 00    	mov    0x6bd4,%edx
    40c6:	c7 44 24 04 86 5a 00 	movl   $0x5a86,0x4(%esp)
    40cd:	00 
    40ce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    40d1:	89 14 24             	mov    %edx,(%esp)
    40d4:	e8 f7 06 00 00       	call   47d0 <printf>
    exit(0);
    40d9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    40e0:	e8 8d 05 00 00       	call   4672 <exit>
    40e5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    40e8:	eb bc                	jmp    40a6 <bigargtest+0xf6>
    40ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000040f0 <fsfull>:
{
    40f0:	55                   	push   %ebp
    40f1:	89 e5                	mov    %esp,%ebp
    40f3:	57                   	push   %edi
    40f4:	56                   	push   %esi
    40f5:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    40f6:	31 db                	xor    %ebx,%ebx
{
    40f8:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    40fb:	c7 44 24 04 9b 5a 00 	movl   $0x5a9b,0x4(%esp)
    4102:	00 
    4103:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    410a:	e8 c1 06 00 00       	call   47d0 <printf>
    410f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    4110:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    4115:	89 d9                	mov    %ebx,%ecx
    4117:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    4119:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    411b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    411e:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    4120:	c7 44 24 04 a8 5a 00 	movl   $0x5aa8,0x4(%esp)
    4127:	00 
    4128:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    412f:	c1 fa 06             	sar    $0x6,%edx
    4132:	29 ca                	sub    %ecx,%edx
    4134:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4137:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    413d:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4140:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    4145:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    4149:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    414d:	29 d6                	sub    %edx,%esi
    414f:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    4151:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4156:	c1 fe 1f             	sar    $0x1f,%esi
    4159:	c1 fa 05             	sar    $0x5,%edx
    415c:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    415e:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    4163:	83 c2 30             	add    $0x30,%edx
    4166:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4169:	f7 eb                	imul   %ebx
    416b:	c1 fa 05             	sar    $0x5,%edx
    416e:	29 ca                	sub    %ecx,%edx
    4170:	6b d2 64             	imul   $0x64,%edx,%edx
    4173:	29 d7                	sub    %edx,%edi
    4175:	89 f8                	mov    %edi,%eax
    4177:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    4179:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    417b:	c1 ff 1f             	sar    $0x1f,%edi
    417e:	c1 fa 02             	sar    $0x2,%edx
    4181:	29 fa                	sub    %edi,%edx
    4183:	83 c2 30             	add    $0x30,%edx
    4186:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    4189:	f7 ee                	imul   %esi
    418b:	c1 fa 02             	sar    $0x2,%edx
    418e:	29 ca                	sub    %ecx,%edx
    4190:	89 d9                	mov    %ebx,%ecx
    4192:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4195:	01 c0                	add    %eax,%eax
    4197:	29 c1                	sub    %eax,%ecx
    4199:	89 c8                	mov    %ecx,%eax
    419b:	83 c0 30             	add    $0x30,%eax
    419e:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    41a1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    41a4:	89 44 24 08          	mov    %eax,0x8(%esp)
    41a8:	e8 23 06 00 00       	call   47d0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    41ad:	8d 45 a8             	lea    -0x58(%ebp),%eax
    41b0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    41b7:	00 
    41b8:	89 04 24             	mov    %eax,(%esp)
    41bb:	e8 f2 04 00 00       	call   46b2 <open>
    if(fd < 0){
    41c0:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    41c2:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    41c4:	78 57                	js     421d <fsfull+0x12d>
    41c6:	31 f6                	xor    %esi,%esi
    41c8:	eb 08                	jmp    41d2 <fsfull+0xe2>
    41ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    41d0:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    41d2:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    41d9:	00 
    41da:	c7 44 24 04 c0 93 00 	movl   $0x93c0,0x4(%esp)
    41e1:	00 
    41e2:	89 3c 24             	mov    %edi,(%esp)
    41e5:	e8 a8 04 00 00       	call   4692 <write>
      if(cc < 512)
    41ea:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    41ef:	7f df                	jg     41d0 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    41f1:	89 74 24 08          	mov    %esi,0x8(%esp)
    41f5:	c7 44 24 04 c4 5a 00 	movl   $0x5ac4,0x4(%esp)
    41fc:	00 
    41fd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4204:	e8 c7 05 00 00       	call   47d0 <printf>
    close(fd);
    4209:	89 3c 24             	mov    %edi,(%esp)
    420c:	e8 89 04 00 00       	call   469a <close>
    if(total == 0)
    4211:	85 f6                	test   %esi,%esi
    4213:	74 23                	je     4238 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    4215:	83 c3 01             	add    $0x1,%ebx
  }
    4218:	e9 f3 fe ff ff       	jmp    4110 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    421d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4220:	89 44 24 08          	mov    %eax,0x8(%esp)
    4224:	c7 44 24 04 b4 5a 00 	movl   $0x5ab4,0x4(%esp)
    422b:	00 
    422c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4233:	e8 98 05 00 00       	call   47d0 <printf>
    name[1] = '0' + nfiles / 1000;
    4238:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    423d:	89 d9                	mov    %ebx,%ecx
    423f:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    4241:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    4243:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    4246:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    4248:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    424c:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    4250:	c1 fa 06             	sar    $0x6,%edx
    4253:	29 ca                	sub    %ecx,%edx
    4255:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4258:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    425e:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4261:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4266:	29 d6                	sub    %edx,%esi
    4268:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    426a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    426f:	c1 fe 1f             	sar    $0x1f,%esi
    4272:	c1 fa 05             	sar    $0x5,%edx
    4275:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    4277:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    427c:	83 c2 30             	add    $0x30,%edx
    427f:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4282:	f7 eb                	imul   %ebx
    4284:	c1 fa 05             	sar    $0x5,%edx
    4287:	29 ca                	sub    %ecx,%edx
    4289:	6b d2 64             	imul   $0x64,%edx,%edx
    428c:	29 d7                	sub    %edx,%edi
    428e:	89 f8                	mov    %edi,%eax
    4290:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    4292:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4294:	c1 ff 1f             	sar    $0x1f,%edi
    4297:	c1 fa 02             	sar    $0x2,%edx
    429a:	29 fa                	sub    %edi,%edx
    429c:	83 c2 30             	add    $0x30,%edx
    429f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    42a2:	f7 ee                	imul   %esi
    42a4:	c1 fa 02             	sar    $0x2,%edx
    42a7:	29 ca                	sub    %ecx,%edx
    42a9:	89 d9                	mov    %ebx,%ecx
    42ab:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    42ae:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    42b1:	01 c0                	add    %eax,%eax
    42b3:	29 c1                	sub    %eax,%ecx
    42b5:	89 c8                	mov    %ecx,%eax
    42b7:	83 c0 30             	add    $0x30,%eax
    42ba:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    42bd:	8d 45 a8             	lea    -0x58(%ebp),%eax
    42c0:	89 04 24             	mov    %eax,(%esp)
    42c3:	e8 fa 03 00 00       	call   46c2 <unlink>
  while(nfiles >= 0){
    42c8:	83 fb ff             	cmp    $0xffffffff,%ebx
    42cb:	0f 85 67 ff ff ff    	jne    4238 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    42d1:	c7 44 24 04 d4 5a 00 	movl   $0x5ad4,0x4(%esp)
    42d8:	00 
    42d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    42e0:	e8 eb 04 00 00       	call   47d0 <printf>
}
    42e5:	83 c4 5c             	add    $0x5c,%esp
    42e8:	5b                   	pop    %ebx
    42e9:	5e                   	pop    %esi
    42ea:	5f                   	pop    %edi
    42eb:	5d                   	pop    %ebp
    42ec:	c3                   	ret    
    42ed:	8d 76 00             	lea    0x0(%esi),%esi

000042f0 <uio>:
{
    42f0:	55                   	push   %ebp
    42f1:	89 e5                	mov    %esp,%ebp
    42f3:	83 ec 28             	sub    $0x28,%esp
  printf(1, "uio test\n");
    42f6:	c7 44 24 04 ea 5a 00 	movl   $0x5aea,0x4(%esp)
    42fd:	00 
    42fe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4305:	e8 c6 04 00 00       	call   47d0 <printf>
  pid = fork();
    430a:	e8 5b 03 00 00       	call   466a <fork>
  if(pid == 0){
    430f:	85 c0                	test   %eax,%eax
  pid = fork();
    4311:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pid == 0){
    4314:	74 2a                	je     4340 <uio+0x50>
  } else if(pid < 0){
    4316:	78 58                	js     4370 <uio+0x80>
  wait(&pid);
    4318:	8d 45 f4             	lea    -0xc(%ebp),%eax
    431b:	89 04 24             	mov    %eax,(%esp)
    431e:	e8 57 03 00 00       	call   467a <wait>
  printf(1, "uio test done\n");
    4323:	c7 44 24 04 f4 5a 00 	movl   $0x5af4,0x4(%esp)
    432a:	00 
    432b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4332:	e8 99 04 00 00       	call   47d0 <printf>
}
    4337:	c9                   	leave  
    4338:	c3                   	ret    
    4339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    4340:	ba 70 00 00 00       	mov    $0x70,%edx
    4345:	b8 09 00 00 00       	mov    $0x9,%eax
    434a:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    434b:	b2 71                	mov    $0x71,%dl
    434d:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    434e:	c7 44 24 04 80 62 00 	movl   $0x6280,0x4(%esp)
    4355:	00 
    4356:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    435d:	e8 6e 04 00 00       	call   47d0 <printf>
    exit(0);
    4362:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4369:	e8 04 03 00 00       	call   4672 <exit>
    436e:	eb a8                	jmp    4318 <uio+0x28>
    printf (1, "fork failed\n");
    4370:	c7 44 24 04 79 5a 00 	movl   $0x5a79,0x4(%esp)
    4377:	00 
    4378:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    437f:	e8 4c 04 00 00       	call   47d0 <printf>
    exit(0);
    4384:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    438b:	e8 e2 02 00 00       	call   4672 <exit>
    4390:	eb 86                	jmp    4318 <uio+0x28>
    4392:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000043a0 <argptest>:
{
    43a0:	55                   	push   %ebp
    43a1:	89 e5                	mov    %esp,%ebp
    43a3:	53                   	push   %ebx
    43a4:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    43a7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    43ae:	00 
    43af:	c7 04 24 03 5b 00 00 	movl   $0x5b03,(%esp)
    43b6:	e8 f7 02 00 00       	call   46b2 <open>
  if (fd < 0) {
    43bb:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    43bd:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    43bf:	78 47                	js     4408 <argptest+0x68>
  read(fd, sbrk(0) - 1, -1);
    43c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    43c8:	e8 2d 03 00 00       	call   46fa <sbrk>
    43cd:	89 1c 24             	mov    %ebx,(%esp)
    43d0:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    43d7:	ff 
    43d8:	83 e8 01             	sub    $0x1,%eax
    43db:	89 44 24 04          	mov    %eax,0x4(%esp)
    43df:	e8 a6 02 00 00       	call   468a <read>
  close(fd);
    43e4:	89 1c 24             	mov    %ebx,(%esp)
    43e7:	e8 ae 02 00 00       	call   469a <close>
  printf(1, "arg test passed\n");
    43ec:	c7 44 24 04 15 5b 00 	movl   $0x5b15,0x4(%esp)
    43f3:	00 
    43f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    43fb:	e8 d0 03 00 00       	call   47d0 <printf>
}
    4400:	83 c4 14             	add    $0x14,%esp
    4403:	5b                   	pop    %ebx
    4404:	5d                   	pop    %ebp
    4405:	c3                   	ret    
    4406:	66 90                	xchg   %ax,%ax
    printf(2, "open failed\n");
    4408:	c7 44 24 04 08 5b 00 	movl   $0x5b08,0x4(%esp)
    440f:	00 
    4410:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    4417:	e8 b4 03 00 00       	call   47d0 <printf>
    exit(0);
    441c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4423:	e8 4a 02 00 00       	call   4672 <exit>
    4428:	eb 97                	jmp    43c1 <argptest+0x21>
    442a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004430 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    4430:	69 05 d0 6b 00 00 0d 	imul   $0x19660d,0x6bd0,%eax
    4437:	66 19 00 
{
    443a:	55                   	push   %ebp
    443b:	89 e5                	mov    %esp,%ebp
}
    443d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    443e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4443:	a3 d0 6b 00 00       	mov    %eax,0x6bd0
}
    4448:	c3                   	ret    
    4449:	66 90                	xchg   %ax,%ax
    444b:	66 90                	xchg   %ax,%ax
    444d:	66 90                	xchg   %ax,%ax
    444f:	90                   	nop

00004450 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    4450:	55                   	push   %ebp
    4451:	89 e5                	mov    %esp,%ebp
    4453:	8b 45 08             	mov    0x8(%ebp),%eax
    4456:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    4459:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    445a:	89 c2                	mov    %eax,%edx
    445c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4460:	83 c1 01             	add    $0x1,%ecx
    4463:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    4467:	83 c2 01             	add    $0x1,%edx
    446a:	84 db                	test   %bl,%bl
    446c:	88 5a ff             	mov    %bl,-0x1(%edx)
    446f:	75 ef                	jne    4460 <strcpy+0x10>
    ;
  return os;
}
    4471:	5b                   	pop    %ebx
    4472:	5d                   	pop    %ebp
    4473:	c3                   	ret    
    4474:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    447a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004480 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    4480:	55                   	push   %ebp
    4481:	89 e5                	mov    %esp,%ebp
    4483:	8b 55 08             	mov    0x8(%ebp),%edx
    4486:	53                   	push   %ebx
    4487:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    448a:	0f b6 02             	movzbl (%edx),%eax
    448d:	84 c0                	test   %al,%al
    448f:	74 2d                	je     44be <strcmp+0x3e>
    4491:	0f b6 19             	movzbl (%ecx),%ebx
    4494:	38 d8                	cmp    %bl,%al
    4496:	74 0e                	je     44a6 <strcmp+0x26>
    4498:	eb 2b                	jmp    44c5 <strcmp+0x45>
    449a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    44a0:	38 c8                	cmp    %cl,%al
    44a2:	75 15                	jne    44b9 <strcmp+0x39>
    p++, q++;
    44a4:	89 d9                	mov    %ebx,%ecx
    44a6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    44a9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    44ac:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    44af:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    44b3:	84 c0                	test   %al,%al
    44b5:	75 e9                	jne    44a0 <strcmp+0x20>
    44b7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    44b9:	29 c8                	sub    %ecx,%eax
}
    44bb:	5b                   	pop    %ebx
    44bc:	5d                   	pop    %ebp
    44bd:	c3                   	ret    
    44be:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    44c1:	31 c0                	xor    %eax,%eax
    44c3:	eb f4                	jmp    44b9 <strcmp+0x39>
    44c5:	0f b6 cb             	movzbl %bl,%ecx
    44c8:	eb ef                	jmp    44b9 <strcmp+0x39>
    44ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000044d0 <strlen>:

uint
strlen(const char *s)
{
    44d0:	55                   	push   %ebp
    44d1:	89 e5                	mov    %esp,%ebp
    44d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    44d6:	80 39 00             	cmpb   $0x0,(%ecx)
    44d9:	74 12                	je     44ed <strlen+0x1d>
    44db:	31 d2                	xor    %edx,%edx
    44dd:	8d 76 00             	lea    0x0(%esi),%esi
    44e0:	83 c2 01             	add    $0x1,%edx
    44e3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    44e7:	89 d0                	mov    %edx,%eax
    44e9:	75 f5                	jne    44e0 <strlen+0x10>
    ;
  return n;
}
    44eb:	5d                   	pop    %ebp
    44ec:	c3                   	ret    
  for(n = 0; s[n]; n++)
    44ed:	31 c0                	xor    %eax,%eax
}
    44ef:	5d                   	pop    %ebp
    44f0:	c3                   	ret    
    44f1:	eb 0d                	jmp    4500 <memset>
    44f3:	90                   	nop
    44f4:	90                   	nop
    44f5:	90                   	nop
    44f6:	90                   	nop
    44f7:	90                   	nop
    44f8:	90                   	nop
    44f9:	90                   	nop
    44fa:	90                   	nop
    44fb:	90                   	nop
    44fc:	90                   	nop
    44fd:	90                   	nop
    44fe:	90                   	nop
    44ff:	90                   	nop

00004500 <memset>:

void*
memset(void *dst, int c, uint n)
{
    4500:	55                   	push   %ebp
    4501:	89 e5                	mov    %esp,%ebp
    4503:	8b 55 08             	mov    0x8(%ebp),%edx
    4506:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    4507:	8b 4d 10             	mov    0x10(%ebp),%ecx
    450a:	8b 45 0c             	mov    0xc(%ebp),%eax
    450d:	89 d7                	mov    %edx,%edi
    450f:	fc                   	cld    
    4510:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    4512:	89 d0                	mov    %edx,%eax
    4514:	5f                   	pop    %edi
    4515:	5d                   	pop    %ebp
    4516:	c3                   	ret    
    4517:	89 f6                	mov    %esi,%esi
    4519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004520 <strchr>:

char*
strchr(const char *s, char c)
{
    4520:	55                   	push   %ebp
    4521:	89 e5                	mov    %esp,%ebp
    4523:	8b 45 08             	mov    0x8(%ebp),%eax
    4526:	53                   	push   %ebx
    4527:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    452a:	0f b6 18             	movzbl (%eax),%ebx
    452d:	84 db                	test   %bl,%bl
    452f:	74 1d                	je     454e <strchr+0x2e>
    if(*s == c)
    4531:	38 d3                	cmp    %dl,%bl
    4533:	89 d1                	mov    %edx,%ecx
    4535:	75 0d                	jne    4544 <strchr+0x24>
    4537:	eb 17                	jmp    4550 <strchr+0x30>
    4539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4540:	38 ca                	cmp    %cl,%dl
    4542:	74 0c                	je     4550 <strchr+0x30>
  for(; *s; s++)
    4544:	83 c0 01             	add    $0x1,%eax
    4547:	0f b6 10             	movzbl (%eax),%edx
    454a:	84 d2                	test   %dl,%dl
    454c:	75 f2                	jne    4540 <strchr+0x20>
      return (char*)s;
  return 0;
    454e:	31 c0                	xor    %eax,%eax
}
    4550:	5b                   	pop    %ebx
    4551:	5d                   	pop    %ebp
    4552:	c3                   	ret    
    4553:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004560 <gets>:

char*
gets(char *buf, int max)
{
    4560:	55                   	push   %ebp
    4561:	89 e5                	mov    %esp,%ebp
    4563:	57                   	push   %edi
    4564:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4565:	31 f6                	xor    %esi,%esi
{
    4567:	53                   	push   %ebx
    4568:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    456b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    456e:	eb 31                	jmp    45a1 <gets+0x41>
    cc = read(0, &c, 1);
    4570:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4577:	00 
    4578:	89 7c 24 04          	mov    %edi,0x4(%esp)
    457c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4583:	e8 02 01 00 00       	call   468a <read>
    if(cc < 1)
    4588:	85 c0                	test   %eax,%eax
    458a:	7e 1d                	jle    45a9 <gets+0x49>
      break;
    buf[i++] = c;
    458c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    4590:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    4592:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    4595:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    4597:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    459b:	74 0c                	je     45a9 <gets+0x49>
    459d:	3c 0a                	cmp    $0xa,%al
    459f:	74 08                	je     45a9 <gets+0x49>
  for(i=0; i+1 < max; ){
    45a1:	8d 5e 01             	lea    0x1(%esi),%ebx
    45a4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    45a7:	7c c7                	jl     4570 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    45a9:	8b 45 08             	mov    0x8(%ebp),%eax
    45ac:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    45b0:	83 c4 2c             	add    $0x2c,%esp
    45b3:	5b                   	pop    %ebx
    45b4:	5e                   	pop    %esi
    45b5:	5f                   	pop    %edi
    45b6:	5d                   	pop    %ebp
    45b7:	c3                   	ret    
    45b8:	90                   	nop
    45b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000045c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    45c0:	55                   	push   %ebp
    45c1:	89 e5                	mov    %esp,%ebp
    45c3:	56                   	push   %esi
    45c4:	53                   	push   %ebx
    45c5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    45c8:	8b 45 08             	mov    0x8(%ebp),%eax
    45cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    45d2:	00 
    45d3:	89 04 24             	mov    %eax,(%esp)
    45d6:	e8 d7 00 00 00       	call   46b2 <open>
  if(fd < 0)
    45db:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    45dd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    45df:	78 27                	js     4608 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    45e1:	8b 45 0c             	mov    0xc(%ebp),%eax
    45e4:	89 1c 24             	mov    %ebx,(%esp)
    45e7:	89 44 24 04          	mov    %eax,0x4(%esp)
    45eb:	e8 da 00 00 00       	call   46ca <fstat>
  close(fd);
    45f0:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    45f3:	89 c6                	mov    %eax,%esi
  close(fd);
    45f5:	e8 a0 00 00 00       	call   469a <close>
  return r;
    45fa:	89 f0                	mov    %esi,%eax
}
    45fc:	83 c4 10             	add    $0x10,%esp
    45ff:	5b                   	pop    %ebx
    4600:	5e                   	pop    %esi
    4601:	5d                   	pop    %ebp
    4602:	c3                   	ret    
    4603:	90                   	nop
    4604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    4608:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    460d:	eb ed                	jmp    45fc <stat+0x3c>
    460f:	90                   	nop

00004610 <atoi>:

int
atoi(const char *s)
{
    4610:	55                   	push   %ebp
    4611:	89 e5                	mov    %esp,%ebp
    4613:	8b 4d 08             	mov    0x8(%ebp),%ecx
    4616:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    4617:	0f be 11             	movsbl (%ecx),%edx
    461a:	8d 42 d0             	lea    -0x30(%edx),%eax
    461d:	3c 09                	cmp    $0x9,%al
  n = 0;
    461f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    4624:	77 17                	ja     463d <atoi+0x2d>
    4626:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    4628:	83 c1 01             	add    $0x1,%ecx
    462b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    462e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    4632:	0f be 11             	movsbl (%ecx),%edx
    4635:	8d 5a d0             	lea    -0x30(%edx),%ebx
    4638:	80 fb 09             	cmp    $0x9,%bl
    463b:	76 eb                	jbe    4628 <atoi+0x18>
  return n;
}
    463d:	5b                   	pop    %ebx
    463e:	5d                   	pop    %ebp
    463f:	c3                   	ret    

00004640 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    4640:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    4641:	31 d2                	xor    %edx,%edx
{
    4643:	89 e5                	mov    %esp,%ebp
    4645:	56                   	push   %esi
    4646:	8b 45 08             	mov    0x8(%ebp),%eax
    4649:	53                   	push   %ebx
    464a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    464d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    4650:	85 db                	test   %ebx,%ebx
    4652:	7e 12                	jle    4666 <memmove+0x26>
    4654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    4658:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    465c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    465f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    4662:	39 da                	cmp    %ebx,%edx
    4664:	75 f2                	jne    4658 <memmove+0x18>
  return vdst;
}
    4666:	5b                   	pop    %ebx
    4667:	5e                   	pop    %esi
    4668:	5d                   	pop    %ebp
    4669:	c3                   	ret    

0000466a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    466a:	b8 01 00 00 00       	mov    $0x1,%eax
    466f:	cd 40                	int    $0x40
    4671:	c3                   	ret    

00004672 <exit>:
SYSCALL(exit)
    4672:	b8 02 00 00 00       	mov    $0x2,%eax
    4677:	cd 40                	int    $0x40
    4679:	c3                   	ret    

0000467a <wait>:
SYSCALL(wait)
    467a:	b8 03 00 00 00       	mov    $0x3,%eax
    467f:	cd 40                	int    $0x40
    4681:	c3                   	ret    

00004682 <pipe>:
SYSCALL(pipe)
    4682:	b8 04 00 00 00       	mov    $0x4,%eax
    4687:	cd 40                	int    $0x40
    4689:	c3                   	ret    

0000468a <read>:
SYSCALL(read)
    468a:	b8 05 00 00 00       	mov    $0x5,%eax
    468f:	cd 40                	int    $0x40
    4691:	c3                   	ret    

00004692 <write>:
SYSCALL(write)
    4692:	b8 10 00 00 00       	mov    $0x10,%eax
    4697:	cd 40                	int    $0x40
    4699:	c3                   	ret    

0000469a <close>:
SYSCALL(close)
    469a:	b8 15 00 00 00       	mov    $0x15,%eax
    469f:	cd 40                	int    $0x40
    46a1:	c3                   	ret    

000046a2 <kill>:
SYSCALL(kill)
    46a2:	b8 06 00 00 00       	mov    $0x6,%eax
    46a7:	cd 40                	int    $0x40
    46a9:	c3                   	ret    

000046aa <exec>:
SYSCALL(exec)
    46aa:	b8 07 00 00 00       	mov    $0x7,%eax
    46af:	cd 40                	int    $0x40
    46b1:	c3                   	ret    

000046b2 <open>:
SYSCALL(open)
    46b2:	b8 0f 00 00 00       	mov    $0xf,%eax
    46b7:	cd 40                	int    $0x40
    46b9:	c3                   	ret    

000046ba <mknod>:
SYSCALL(mknod)
    46ba:	b8 11 00 00 00       	mov    $0x11,%eax
    46bf:	cd 40                	int    $0x40
    46c1:	c3                   	ret    

000046c2 <unlink>:
SYSCALL(unlink)
    46c2:	b8 12 00 00 00       	mov    $0x12,%eax
    46c7:	cd 40                	int    $0x40
    46c9:	c3                   	ret    

000046ca <fstat>:
SYSCALL(fstat)
    46ca:	b8 08 00 00 00       	mov    $0x8,%eax
    46cf:	cd 40                	int    $0x40
    46d1:	c3                   	ret    

000046d2 <link>:
SYSCALL(link)
    46d2:	b8 13 00 00 00       	mov    $0x13,%eax
    46d7:	cd 40                	int    $0x40
    46d9:	c3                   	ret    

000046da <mkdir>:
SYSCALL(mkdir)
    46da:	b8 14 00 00 00       	mov    $0x14,%eax
    46df:	cd 40                	int    $0x40
    46e1:	c3                   	ret    

000046e2 <chdir>:
SYSCALL(chdir)
    46e2:	b8 09 00 00 00       	mov    $0x9,%eax
    46e7:	cd 40                	int    $0x40
    46e9:	c3                   	ret    

000046ea <dup>:
SYSCALL(dup)
    46ea:	b8 0a 00 00 00       	mov    $0xa,%eax
    46ef:	cd 40                	int    $0x40
    46f1:	c3                   	ret    

000046f2 <getpid>:
SYSCALL(getpid)
    46f2:	b8 0b 00 00 00       	mov    $0xb,%eax
    46f7:	cd 40                	int    $0x40
    46f9:	c3                   	ret    

000046fa <sbrk>:
SYSCALL(sbrk)
    46fa:	b8 0c 00 00 00       	mov    $0xc,%eax
    46ff:	cd 40                	int    $0x40
    4701:	c3                   	ret    

00004702 <sleep>:
SYSCALL(sleep)
    4702:	b8 0d 00 00 00       	mov    $0xd,%eax
    4707:	cd 40                	int    $0x40
    4709:	c3                   	ret    

0000470a <uptime>:
SYSCALL(uptime)
    470a:	b8 0e 00 00 00       	mov    $0xe,%eax
    470f:	cd 40                	int    $0x40
    4711:	c3                   	ret    

00004712 <hello>:
SYSCALL(hello)
    4712:	b8 18 00 00 00       	mov    $0x18,%eax
    4717:	cd 40                	int    $0x40
    4719:	c3                   	ret    

0000471a <waitpid>:
SYSCALL(waitpid)
    471a:	b8 19 00 00 00       	mov    $0x19,%eax
    471f:	cd 40                	int    $0x40
    4721:	c3                   	ret    

00004722 <setpriority>:
SYSCALL(setpriority)
    4722:	b8 1a 00 00 00       	mov    $0x1a,%eax
    4727:	cd 40                	int    $0x40
    4729:	c3                   	ret    
    472a:	66 90                	xchg   %ax,%ax
    472c:	66 90                	xchg   %ax,%ax
    472e:	66 90                	xchg   %ax,%ax

00004730 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4730:	55                   	push   %ebp
    4731:	89 e5                	mov    %esp,%ebp
    4733:	57                   	push   %edi
    4734:	56                   	push   %esi
    4735:	89 c6                	mov    %eax,%esi
    4737:	53                   	push   %ebx
    4738:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    473b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    473e:	85 db                	test   %ebx,%ebx
    4740:	74 09                	je     474b <printint+0x1b>
    4742:	89 d0                	mov    %edx,%eax
    4744:	c1 e8 1f             	shr    $0x1f,%eax
    4747:	84 c0                	test   %al,%al
    4749:	75 75                	jne    47c0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    474b:	89 d0                	mov    %edx,%eax
  neg = 0;
    474d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    4754:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    4757:	31 ff                	xor    %edi,%edi
    4759:	89 ce                	mov    %ecx,%esi
    475b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    475e:	eb 02                	jmp    4762 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    4760:	89 cf                	mov    %ecx,%edi
    4762:	31 d2                	xor    %edx,%edx
    4764:	f7 f6                	div    %esi
    4766:	8d 4f 01             	lea    0x1(%edi),%ecx
    4769:	0f b6 92 d7 62 00 00 	movzbl 0x62d7(%edx),%edx
  }while((x /= base) != 0);
    4770:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    4772:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    4775:	75 e9                	jne    4760 <printint+0x30>
  if(neg)
    4777:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    477a:	89 c8                	mov    %ecx,%eax
    477c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    477f:	85 d2                	test   %edx,%edx
    4781:	74 08                	je     478b <printint+0x5b>
    buf[i++] = '-';
    4783:	8d 4f 02             	lea    0x2(%edi),%ecx
    4786:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    478b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    478e:	66 90                	xchg   %ax,%ax
    4790:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    4795:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    4798:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    479f:	00 
    47a0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    47a4:	89 34 24             	mov    %esi,(%esp)
    47a7:	88 45 d7             	mov    %al,-0x29(%ebp)
    47aa:	e8 e3 fe ff ff       	call   4692 <write>
  while(--i >= 0)
    47af:	83 ff ff             	cmp    $0xffffffff,%edi
    47b2:	75 dc                	jne    4790 <printint+0x60>
    putc(fd, buf[i]);
}
    47b4:	83 c4 4c             	add    $0x4c,%esp
    47b7:	5b                   	pop    %ebx
    47b8:	5e                   	pop    %esi
    47b9:	5f                   	pop    %edi
    47ba:	5d                   	pop    %ebp
    47bb:	c3                   	ret    
    47bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    47c0:	89 d0                	mov    %edx,%eax
    47c2:	f7 d8                	neg    %eax
    neg = 1;
    47c4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    47cb:	eb 87                	jmp    4754 <printint+0x24>
    47cd:	8d 76 00             	lea    0x0(%esi),%esi

000047d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    47d0:	55                   	push   %ebp
    47d1:	89 e5                	mov    %esp,%ebp
    47d3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    47d4:	31 ff                	xor    %edi,%edi
{
    47d6:	56                   	push   %esi
    47d7:	53                   	push   %ebx
    47d8:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47db:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    47de:	8d 45 10             	lea    0x10(%ebp),%eax
{
    47e1:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    47e4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    47e7:	0f b6 13             	movzbl (%ebx),%edx
    47ea:	83 c3 01             	add    $0x1,%ebx
    47ed:	84 d2                	test   %dl,%dl
    47ef:	75 39                	jne    482a <printf+0x5a>
    47f1:	e9 c2 00 00 00       	jmp    48b8 <printf+0xe8>
    47f6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    47f8:	83 fa 25             	cmp    $0x25,%edx
    47fb:	0f 84 bf 00 00 00    	je     48c0 <printf+0xf0>
  write(fd, &c, 1);
    4801:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4804:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    480b:	00 
    480c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4810:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    4813:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    4816:	e8 77 fe ff ff       	call   4692 <write>
    481b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    481e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    4822:	84 d2                	test   %dl,%dl
    4824:	0f 84 8e 00 00 00    	je     48b8 <printf+0xe8>
    if(state == 0){
    482a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    482c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    482f:	74 c7                	je     47f8 <printf+0x28>
      }
    } else if(state == '%'){
    4831:	83 ff 25             	cmp    $0x25,%edi
    4834:	75 e5                	jne    481b <printf+0x4b>
      if(c == 'd'){
    4836:	83 fa 64             	cmp    $0x64,%edx
    4839:	0f 84 31 01 00 00    	je     4970 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    483f:	25 f7 00 00 00       	and    $0xf7,%eax
    4844:	83 f8 70             	cmp    $0x70,%eax
    4847:	0f 84 83 00 00 00    	je     48d0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    484d:	83 fa 73             	cmp    $0x73,%edx
    4850:	0f 84 a2 00 00 00    	je     48f8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    4856:	83 fa 63             	cmp    $0x63,%edx
    4859:	0f 84 35 01 00 00    	je     4994 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    485f:	83 fa 25             	cmp    $0x25,%edx
    4862:	0f 84 e0 00 00 00    	je     4948 <printf+0x178>
  write(fd, &c, 1);
    4868:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    486b:	83 c3 01             	add    $0x1,%ebx
    486e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4875:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4876:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    4878:	89 44 24 04          	mov    %eax,0x4(%esp)
    487c:	89 34 24             	mov    %esi,(%esp)
    487f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    4882:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    4886:	e8 07 fe ff ff       	call   4692 <write>
        putc(fd, c);
    488b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    488e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4891:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4898:	00 
    4899:	89 44 24 04          	mov    %eax,0x4(%esp)
    489d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    48a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    48a3:	e8 ea fd ff ff       	call   4692 <write>
  for(i = 0; fmt[i]; i++){
    48a8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    48ac:	84 d2                	test   %dl,%dl
    48ae:	0f 85 76 ff ff ff    	jne    482a <printf+0x5a>
    48b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    48b8:	83 c4 3c             	add    $0x3c,%esp
    48bb:	5b                   	pop    %ebx
    48bc:	5e                   	pop    %esi
    48bd:	5f                   	pop    %edi
    48be:	5d                   	pop    %ebp
    48bf:	c3                   	ret    
        state = '%';
    48c0:	bf 25 00 00 00       	mov    $0x25,%edi
    48c5:	e9 51 ff ff ff       	jmp    481b <printf+0x4b>
    48ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    48d0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    48d3:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    48d8:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    48da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    48e1:	8b 10                	mov    (%eax),%edx
    48e3:	89 f0                	mov    %esi,%eax
    48e5:	e8 46 fe ff ff       	call   4730 <printint>
        ap++;
    48ea:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    48ee:	e9 28 ff ff ff       	jmp    481b <printf+0x4b>
    48f3:	90                   	nop
    48f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    48f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    48fb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    48ff:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4901:	b8 d0 62 00 00       	mov    $0x62d0,%eax
    4906:	85 ff                	test   %edi,%edi
    4908:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    490b:	0f b6 07             	movzbl (%edi),%eax
    490e:	84 c0                	test   %al,%al
    4910:	74 2a                	je     493c <printf+0x16c>
    4912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4918:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    491b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    491e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    4921:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4928:	00 
    4929:	89 44 24 04          	mov    %eax,0x4(%esp)
    492d:	89 34 24             	mov    %esi,(%esp)
    4930:	e8 5d fd ff ff       	call   4692 <write>
        while(*s != 0){
    4935:	0f b6 07             	movzbl (%edi),%eax
    4938:	84 c0                	test   %al,%al
    493a:	75 dc                	jne    4918 <printf+0x148>
      state = 0;
    493c:	31 ff                	xor    %edi,%edi
    493e:	e9 d8 fe ff ff       	jmp    481b <printf+0x4b>
    4943:	90                   	nop
    4944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    4948:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    494b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    494d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4954:	00 
    4955:	89 44 24 04          	mov    %eax,0x4(%esp)
    4959:	89 34 24             	mov    %esi,(%esp)
    495c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    4960:	e8 2d fd ff ff       	call   4692 <write>
    4965:	e9 b1 fe ff ff       	jmp    481b <printf+0x4b>
    496a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    4970:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4973:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    4978:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    497b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4982:	8b 10                	mov    (%eax),%edx
    4984:	89 f0                	mov    %esi,%eax
    4986:	e8 a5 fd ff ff       	call   4730 <printint>
        ap++;
    498b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    498f:	e9 87 fe ff ff       	jmp    481b <printf+0x4b>
        putc(fd, *ap);
    4994:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    4997:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    4999:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    499b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    49a2:	00 
    49a3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    49a6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    49a9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    49ac:	89 44 24 04          	mov    %eax,0x4(%esp)
    49b0:	e8 dd fc ff ff       	call   4692 <write>
        ap++;
    49b5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    49b9:	e9 5d fe ff ff       	jmp    481b <printf+0x4b>
    49be:	66 90                	xchg   %ax,%ax

000049c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    49c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    49c1:	a1 80 6c 00 00       	mov    0x6c80,%eax
{
    49c6:	89 e5                	mov    %esp,%ebp
    49c8:	57                   	push   %edi
    49c9:	56                   	push   %esi
    49ca:	53                   	push   %ebx
    49cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    49ce:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    49d0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    49d3:	39 d0                	cmp    %edx,%eax
    49d5:	72 11                	jb     49e8 <free+0x28>
    49d7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    49d8:	39 c8                	cmp    %ecx,%eax
    49da:	72 04                	jb     49e0 <free+0x20>
    49dc:	39 ca                	cmp    %ecx,%edx
    49de:	72 10                	jb     49f0 <free+0x30>
    49e0:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    49e2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    49e4:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    49e6:	73 f0                	jae    49d8 <free+0x18>
    49e8:	39 ca                	cmp    %ecx,%edx
    49ea:	72 04                	jb     49f0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    49ec:	39 c8                	cmp    %ecx,%eax
    49ee:	72 f0                	jb     49e0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    49f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    49f3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    49f6:	39 cf                	cmp    %ecx,%edi
    49f8:	74 1e                	je     4a18 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    49fa:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    49fd:	8b 48 04             	mov    0x4(%eax),%ecx
    4a00:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4a03:	39 f2                	cmp    %esi,%edx
    4a05:	74 28                	je     4a2f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4a07:	89 10                	mov    %edx,(%eax)
  freep = p;
    4a09:	a3 80 6c 00 00       	mov    %eax,0x6c80
}
    4a0e:	5b                   	pop    %ebx
    4a0f:	5e                   	pop    %esi
    4a10:	5f                   	pop    %edi
    4a11:	5d                   	pop    %ebp
    4a12:	c3                   	ret    
    4a13:	90                   	nop
    4a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4a18:	03 71 04             	add    0x4(%ecx),%esi
    4a1b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4a1e:	8b 08                	mov    (%eax),%ecx
    4a20:	8b 09                	mov    (%ecx),%ecx
    4a22:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4a25:	8b 48 04             	mov    0x4(%eax),%ecx
    4a28:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4a2b:	39 f2                	cmp    %esi,%edx
    4a2d:	75 d8                	jne    4a07 <free+0x47>
    p->s.size += bp->s.size;
    4a2f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    4a32:	a3 80 6c 00 00       	mov    %eax,0x6c80
    p->s.size += bp->s.size;
    4a37:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4a3a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4a3d:	89 10                	mov    %edx,(%eax)
}
    4a3f:	5b                   	pop    %ebx
    4a40:	5e                   	pop    %esi
    4a41:	5f                   	pop    %edi
    4a42:	5d                   	pop    %ebp
    4a43:	c3                   	ret    
    4a44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4a4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004a50 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4a50:	55                   	push   %ebp
    4a51:	89 e5                	mov    %esp,%ebp
    4a53:	57                   	push   %edi
    4a54:	56                   	push   %esi
    4a55:	53                   	push   %ebx
    4a56:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a59:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    4a5c:	8b 1d 80 6c 00 00    	mov    0x6c80,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a62:	8d 48 07             	lea    0x7(%eax),%ecx
    4a65:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    4a68:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a6a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    4a6d:	0f 84 9b 00 00 00    	je     4b0e <malloc+0xbe>
    4a73:	8b 13                	mov    (%ebx),%edx
    4a75:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4a78:	39 fe                	cmp    %edi,%esi
    4a7a:	76 64                	jbe    4ae0 <malloc+0x90>
    4a7c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    4a83:	bb 00 80 00 00       	mov    $0x8000,%ebx
    4a88:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    4a8b:	eb 0e                	jmp    4a9b <malloc+0x4b>
    4a8d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4a90:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4a92:	8b 78 04             	mov    0x4(%eax),%edi
    4a95:	39 fe                	cmp    %edi,%esi
    4a97:	76 4f                	jbe    4ae8 <malloc+0x98>
    4a99:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4a9b:	3b 15 80 6c 00 00    	cmp    0x6c80,%edx
    4aa1:	75 ed                	jne    4a90 <malloc+0x40>
  if(nu < 4096)
    4aa3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4aa6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    4aac:	bf 00 10 00 00       	mov    $0x1000,%edi
    4ab1:	0f 43 fe             	cmovae %esi,%edi
    4ab4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    4ab7:	89 04 24             	mov    %eax,(%esp)
    4aba:	e8 3b fc ff ff       	call   46fa <sbrk>
  if(p == (char*)-1)
    4abf:	83 f8 ff             	cmp    $0xffffffff,%eax
    4ac2:	74 18                	je     4adc <malloc+0x8c>
  hp->s.size = nu;
    4ac4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    4ac7:	83 c0 08             	add    $0x8,%eax
    4aca:	89 04 24             	mov    %eax,(%esp)
    4acd:	e8 ee fe ff ff       	call   49c0 <free>
  return freep;
    4ad2:	8b 15 80 6c 00 00    	mov    0x6c80,%edx
      if((p = morecore(nunits)) == 0)
    4ad8:	85 d2                	test   %edx,%edx
    4ada:	75 b4                	jne    4a90 <malloc+0x40>
        return 0;
    4adc:	31 c0                	xor    %eax,%eax
    4ade:	eb 20                	jmp    4b00 <malloc+0xb0>
    if(p->s.size >= nunits){
    4ae0:	89 d0                	mov    %edx,%eax
    4ae2:	89 da                	mov    %ebx,%edx
    4ae4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4ae8:	39 fe                	cmp    %edi,%esi
    4aea:	74 1c                	je     4b08 <malloc+0xb8>
        p->s.size -= nunits;
    4aec:	29 f7                	sub    %esi,%edi
    4aee:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4af1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4af4:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4af7:	89 15 80 6c 00 00    	mov    %edx,0x6c80
      return (void*)(p + 1);
    4afd:	83 c0 08             	add    $0x8,%eax
  }
}
    4b00:	83 c4 1c             	add    $0x1c,%esp
    4b03:	5b                   	pop    %ebx
    4b04:	5e                   	pop    %esi
    4b05:	5f                   	pop    %edi
    4b06:	5d                   	pop    %ebp
    4b07:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4b08:	8b 08                	mov    (%eax),%ecx
    4b0a:	89 0a                	mov    %ecx,(%edx)
    4b0c:	eb e9                	jmp    4af7 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    4b0e:	c7 05 80 6c 00 00 84 	movl   $0x6c84,0x6c80
    4b15:	6c 00 00 
    base.s.size = 0;
    4b18:	ba 84 6c 00 00       	mov    $0x6c84,%edx
    base.s.ptr = freep = prevp = &base;
    4b1d:	c7 05 84 6c 00 00 84 	movl   $0x6c84,0x6c84
    4b24:	6c 00 00 
    base.s.size = 0;
    4b27:	c7 05 88 6c 00 00 00 	movl   $0x0,0x6c88
    4b2e:	00 00 00 
    4b31:	e9 46 ff ff ff       	jmp    4a7c <malloc+0x2c>
