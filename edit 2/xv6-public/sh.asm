
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
       9:	eb 0e                	jmp    19 <main+0x19>
       b:	90                   	nop
       c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      10:	83 f8 02             	cmp    $0x2,%eax
      13:	0f 8f cf 00 00 00    	jg     e8 <main+0xe8>
  while((fd = open("console", O_RDWR)) >= 0){
      19:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
      20:	00 
      21:	c7 04 24 f9 13 00 00 	movl   $0x13f9,(%esp)
      28:	e8 a5 0e 00 00       	call   ed2 <open>
      2d:	85 c0                	test   %eax,%eax
      2f:	79 df                	jns    10 <main+0x10>
      31:	eb 20                	jmp    53 <main+0x53>
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
      33:	c7 04 24 00 1a 00 00 	movl   $0x1a00,(%esp)
      3a:	e8 b1 0b 00 00       	call   bf0 <parsecmd>
      3f:	89 04 24             	mov    %eax,(%esp)
      42:	e8 79 01 00 00       	call   1c0 <runcmd>
    wait(0);
      47:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      4e:	e8 47 0e 00 00       	call   e9a <wait>
  while(getcmd(buf, sizeof(buf)) >= 0){
      53:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
      5a:	00 
      5b:	c7 04 24 00 1a 00 00 	movl   $0x1a00,(%esp)
      62:	e8 99 00 00 00       	call   100 <getcmd>
      67:	85 c0                	test   %eax,%eax
      69:	78 6d                	js     d8 <main+0xd8>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      6b:	80 3d 00 1a 00 00 63 	cmpb   $0x63,0x1a00
      72:	75 09                	jne    7d <main+0x7d>
      74:	80 3d 01 1a 00 00 64 	cmpb   $0x64,0x1a01
      7b:	74 0b                	je     88 <main+0x88>
    if(fork1() == 0)
      7d:	e8 0e 01 00 00       	call   190 <fork1>
      82:	85 c0                	test   %eax,%eax
      84:	75 c1                	jne    47 <main+0x47>
      86:	eb ab                	jmp    33 <main+0x33>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      88:	80 3d 02 1a 00 00 20 	cmpb   $0x20,0x1a02
      8f:	90                   	nop
      90:	75 eb                	jne    7d <main+0x7d>
      buf[strlen(buf)-1] = 0;  // chop \n
      92:	c7 04 24 00 1a 00 00 	movl   $0x1a00,(%esp)
      99:	e8 52 0c 00 00       	call   cf0 <strlen>
      if(chdir(buf+3) < 0)
      9e:	c7 04 24 03 1a 00 00 	movl   $0x1a03,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      a5:	c6 80 ff 19 00 00 00 	movb   $0x0,0x19ff(%eax)
      if(chdir(buf+3) < 0)
      ac:	e8 51 0e 00 00       	call   f02 <chdir>
      b1:	85 c0                	test   %eax,%eax
      b3:	79 9e                	jns    53 <main+0x53>
        printf(2, "cannot cd %s\n", buf+3);
      b5:	c7 44 24 08 03 1a 00 	movl   $0x1a03,0x8(%esp)
      bc:	00 
      bd:	c7 44 24 04 01 14 00 	movl   $0x1401,0x4(%esp)
      c4:	00 
      c5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
      cc:	e8 1f 0f 00 00       	call   ff0 <printf>
      d1:	eb 80                	jmp    53 <main+0x53>
      d3:	90                   	nop
      d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }
  exit(0);
      d8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      df:	e8 ae 0d 00 00       	call   e92 <exit>
  return 0;
}
      e4:	31 c0                	xor    %eax,%eax
      e6:	c9                   	leave  
      e7:	c3                   	ret    
      close(fd);
      e8:	89 04 24             	mov    %eax,(%esp)
      eb:	e8 ca 0d 00 00       	call   eba <close>
      break;
      f0:	e9 5e ff ff ff       	jmp    53 <main+0x53>
      f5:	66 90                	xchg   %ax,%ax
      f7:	66 90                	xchg   %ax,%ax
      f9:	66 90                	xchg   %ax,%ax
      fb:	66 90                	xchg   %ax,%ax
      fd:	66 90                	xchg   %ax,%ax
      ff:	90                   	nop

00000100 <getcmd>:
{
     100:	55                   	push   %ebp
     101:	89 e5                	mov    %esp,%ebp
     103:	56                   	push   %esi
     104:	53                   	push   %ebx
     105:	83 ec 10             	sub    $0x10,%esp
     108:	8b 5d 08             	mov    0x8(%ebp),%ebx
     10b:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     10e:	c7 44 24 04 58 13 00 	movl   $0x1358,0x4(%esp)
     115:	00 
     116:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     11d:	e8 ce 0e 00 00       	call   ff0 <printf>
  memset(buf, 0, nbuf);
     122:	89 74 24 08          	mov    %esi,0x8(%esp)
     126:	89 1c 24             	mov    %ebx,(%esp)
     129:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     130:	00 
     131:	e8 ea 0b 00 00       	call   d20 <memset>
  gets(buf, nbuf);
     136:	89 74 24 04          	mov    %esi,0x4(%esp)
     13a:	89 1c 24             	mov    %ebx,(%esp)
     13d:	e8 3e 0c 00 00       	call   d80 <gets>
  if(buf[0] == 0) // EOF
     142:	31 c0                	xor    %eax,%eax
     144:	80 3b 00             	cmpb   $0x0,(%ebx)
     147:	0f 94 c0             	sete   %al
}
     14a:	83 c4 10             	add    $0x10,%esp
     14d:	5b                   	pop    %ebx
  if(buf[0] == 0) // EOF
     14e:	f7 d8                	neg    %eax
}
     150:	5e                   	pop    %esi
     151:	5d                   	pop    %ebp
     152:	c3                   	ret    
     153:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000160 <panic>:

void
panic(char *s)
{
     160:	55                   	push   %ebp
     161:	89 e5                	mov    %esp,%ebp
     163:	83 ec 18             	sub    $0x18,%esp
  printf(2, "%s\n", s);
     166:	8b 45 08             	mov    0x8(%ebp),%eax
     169:	c7 44 24 04 f5 13 00 	movl   $0x13f5,0x4(%esp)
     170:	00 
     171:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     178:	89 44 24 08          	mov    %eax,0x8(%esp)
     17c:	e8 6f 0e 00 00       	call   ff0 <printf>
  exit(0);
     181:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
}
     188:	c9                   	leave  
  exit(0);
     189:	e9 04 0d 00 00       	jmp    e92 <exit>
     18e:	66 90                	xchg   %ax,%ax

00000190 <fork1>:

int
fork1(void)
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 18             	sub    $0x18,%esp
  int pid;

  pid = fork();
     196:	e8 ef 0c 00 00       	call   e8a <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 08                	je     1a8 <fork1+0x18>
    panic("fork");
  return pid;
}
     1a0:	c9                   	leave  
     1a1:	c3                   	ret    
     1a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    panic("fork");
     1a8:	c7 04 24 5b 13 00 00 	movl   $0x135b,(%esp)
     1af:	89 45 f4             	mov    %eax,-0xc(%ebp)
     1b2:	e8 a9 ff ff ff       	call   160 <panic>
     1b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
     1ba:	c9                   	leave  
     1bb:	c3                   	ret    
     1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001c0 <runcmd>:
{
     1c0:	55                   	push   %ebp
     1c1:	89 e5                	mov    %esp,%ebp
     1c3:	53                   	push   %ebx
     1c4:	83 ec 24             	sub    $0x24,%esp
     1c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ca:	85 db                	test   %ebx,%ebx
     1cc:	0f 84 9e 01 00 00    	je     370 <runcmd+0x1b0>
  switch(cmd->type){
     1d2:	83 3b 05             	cmpl   $0x5,(%ebx)
     1d5:	77 09                	ja     1e0 <runcmd+0x20>
     1d7:	8b 03                	mov    (%ebx),%eax
     1d9:	ff 24 85 10 14 00 00 	jmp    *0x1410(,%eax,4)
    panic("runcmd");
     1e0:	c7 04 24 60 13 00 00 	movl   $0x1360,(%esp)
     1e7:	e8 74 ff ff ff       	call   160 <panic>
    if(ecmd->argv[0] == 0)
     1ec:	8b 43 04             	mov    0x4(%ebx),%eax
     1ef:	85 c0                	test   %eax,%eax
     1f1:	0f 84 d1 01 00 00    	je     3c8 <runcmd+0x208>
    exec(ecmd->argv[0], ecmd->argv);
     1f7:	8d 53 04             	lea    0x4(%ebx),%edx
     1fa:	89 54 24 04          	mov    %edx,0x4(%esp)
     1fe:	89 04 24             	mov    %eax,(%esp)
     201:	e8 c4 0c 00 00       	call   eca <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     206:	8b 43 04             	mov    0x4(%ebx),%eax
     209:	c7 44 24 04 67 13 00 	movl   $0x1367,0x4(%esp)
     210:	00 
     211:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     218:	89 44 24 08          	mov    %eax,0x8(%esp)
     21c:	e8 cf 0d 00 00       	call   ff0 <printf>
  exit(0);
     221:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     228:	e8 65 0c 00 00       	call   e92 <exit>
}
     22d:	83 c4 24             	add    $0x24,%esp
     230:	5b                   	pop    %ebx
     231:	5d                   	pop    %ebp
     232:	c3                   	ret    
     233:	90                   	nop
     234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fork1() == 0)
     238:	e8 53 ff ff ff       	call   190 <fork1>
     23d:	85 c0                	test   %eax,%eax
     23f:	90                   	nop
     240:	75 df                	jne    221 <runcmd+0x61>
      runcmd(bcmd->cmd);
     242:	8b 43 04             	mov    0x4(%ebx),%eax
     245:	89 04 24             	mov    %eax,(%esp)
     248:	e8 73 ff ff ff       	call   1c0 <runcmd>
     24d:	eb d2                	jmp    221 <runcmd+0x61>
     24f:	90                   	nop
    close(rcmd->fd);
     250:	8b 43 14             	mov    0x14(%ebx),%eax
     253:	89 04 24             	mov    %eax,(%esp)
     256:	e8 5f 0c 00 00       	call   eba <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     25b:	8b 43 10             	mov    0x10(%ebx),%eax
     25e:	89 44 24 04          	mov    %eax,0x4(%esp)
     262:	8b 43 08             	mov    0x8(%ebx),%eax
     265:	89 04 24             	mov    %eax,(%esp)
     268:	e8 65 0c 00 00       	call   ed2 <open>
     26d:	85 c0                	test   %eax,%eax
     26f:	79 d1                	jns    242 <runcmd+0x82>
      printf(2, "open %s failed\n", rcmd->file);
     271:	8b 43 08             	mov    0x8(%ebx),%eax
     274:	c7 44 24 04 77 13 00 	movl   $0x1377,0x4(%esp)
     27b:	00 
     27c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     283:	89 44 24 08          	mov    %eax,0x8(%esp)
     287:	e8 64 0d 00 00       	call   ff0 <printf>
      exit(0);
     28c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     293:	e8 fa 0b 00 00       	call   e92 <exit>
     298:	eb a8                	jmp    242 <runcmd+0x82>
     29a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pipe(p) < 0)
     2a0:	8d 45 f0             	lea    -0x10(%ebp),%eax
     2a3:	89 04 24             	mov    %eax,(%esp)
     2a6:	e8 f7 0b 00 00       	call   ea2 <pipe>
     2ab:	85 c0                	test   %eax,%eax
     2ad:	0f 88 2d 01 00 00    	js     3e0 <runcmd+0x220>
    if(fork1() == 0){
     2b3:	e8 d8 fe ff ff       	call   190 <fork1>
     2b8:	85 c0                	test   %eax,%eax
     2ba:	0f 84 c8 00 00 00    	je     388 <runcmd+0x1c8>
    if(fork1() == 0){
     2c0:	e8 cb fe ff ff       	call   190 <fork1>
     2c5:	85 c0                	test   %eax,%eax
     2c7:	75 38                	jne    301 <runcmd+0x141>
      close(0);
     2c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     2d0:	e8 e5 0b 00 00       	call   eba <close>
      dup(p[0]);
     2d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
     2d8:	89 04 24             	mov    %eax,(%esp)
     2db:	e8 2a 0c 00 00       	call   f0a <dup>
      close(p[0]);
     2e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
     2e3:	89 04 24             	mov    %eax,(%esp)
     2e6:	e8 cf 0b 00 00       	call   eba <close>
      close(p[1]);
     2eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
     2ee:	89 04 24             	mov    %eax,(%esp)
     2f1:	e8 c4 0b 00 00       	call   eba <close>
      runcmd(pcmd->right);
     2f6:	8b 43 08             	mov    0x8(%ebx),%eax
     2f9:	89 04 24             	mov    %eax,(%esp)
     2fc:	e8 bf fe ff ff       	call   1c0 <runcmd>
    close(p[0]);
     301:	8b 45 f0             	mov    -0x10(%ebp),%eax
     304:	89 04 24             	mov    %eax,(%esp)
     307:	e8 ae 0b 00 00       	call   eba <close>
    close(p[1]);
     30c:	8b 45 f4             	mov    -0xc(%ebp),%eax
     30f:	89 04 24             	mov    %eax,(%esp)
     312:	e8 a3 0b 00 00       	call   eba <close>
    wait(0);
     317:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     31e:	e8 77 0b 00 00       	call   e9a <wait>
    wait(0);
     323:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     32a:	e8 6b 0b 00 00       	call   e9a <wait>
    break;
     32f:	e9 ed fe ff ff       	jmp    221 <runcmd+0x61>
     334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fork1() == 0)
     338:	e8 53 fe ff ff       	call   190 <fork1>
     33d:	85 c0                	test   %eax,%eax
     33f:	90                   	nop
     340:	75 0b                	jne    34d <runcmd+0x18d>
      runcmd(lcmd->left);
     342:	8b 43 04             	mov    0x4(%ebx),%eax
     345:	89 04 24             	mov    %eax,(%esp)
     348:	e8 73 fe ff ff       	call   1c0 <runcmd>
    wait(0);
     34d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     354:	e8 41 0b 00 00       	call   e9a <wait>
    runcmd(lcmd->right);
     359:	8b 43 08             	mov    0x8(%ebx),%eax
     35c:	89 04 24             	mov    %eax,(%esp)
     35f:	e8 5c fe ff ff       	call   1c0 <runcmd>
    break;
     364:	e9 b8 fe ff ff       	jmp    221 <runcmd+0x61>
     369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
     370:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     377:	e8 16 0b 00 00       	call   e92 <exit>
     37c:	e9 51 fe ff ff       	jmp    1d2 <runcmd+0x12>
     381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      close(1);
     388:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     38f:	e8 26 0b 00 00       	call   eba <close>
      dup(p[1]);
     394:	8b 45 f4             	mov    -0xc(%ebp),%eax
     397:	89 04 24             	mov    %eax,(%esp)
     39a:	e8 6b 0b 00 00       	call   f0a <dup>
      close(p[0]);
     39f:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3a2:	89 04 24             	mov    %eax,(%esp)
     3a5:	e8 10 0b 00 00       	call   eba <close>
      close(p[1]);
     3aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
     3ad:	89 04 24             	mov    %eax,(%esp)
     3b0:	e8 05 0b 00 00       	call   eba <close>
      runcmd(pcmd->left);
     3b5:	8b 43 04             	mov    0x4(%ebx),%eax
     3b8:	89 04 24             	mov    %eax,(%esp)
     3bb:	e8 00 fe ff ff       	call   1c0 <runcmd>
     3c0:	e9 fb fe ff ff       	jmp    2c0 <runcmd+0x100>
     3c5:	8d 76 00             	lea    0x0(%esi),%esi
      exit(0);
     3c8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3cf:	e8 be 0a 00 00       	call   e92 <exit>
     3d4:	8b 43 04             	mov    0x4(%ebx),%eax
     3d7:	e9 1b fe ff ff       	jmp    1f7 <runcmd+0x37>
     3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      panic("pipe");
     3e0:	c7 04 24 87 13 00 00 	movl   $0x1387,(%esp)
     3e7:	e8 74 fd ff ff       	call   160 <panic>
     3ec:	e9 c2 fe ff ff       	jmp    2b3 <runcmd+0xf3>
     3f1:	eb 0d                	jmp    400 <execcmd>
     3f3:	90                   	nop
     3f4:	90                   	nop
     3f5:	90                   	nop
     3f6:	90                   	nop
     3f7:	90                   	nop
     3f8:	90                   	nop
     3f9:	90                   	nop
     3fa:	90                   	nop
     3fb:	90                   	nop
     3fc:	90                   	nop
     3fd:	90                   	nop
     3fe:	90                   	nop
     3ff:	90                   	nop

00000400 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	53                   	push   %ebx
     404:	83 ec 14             	sub    $0x14,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     407:	c7 04 24 54 00 00 00 	movl   $0x54,(%esp)
     40e:	e8 5d 0e 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     413:	c7 44 24 08 54 00 00 	movl   $0x54,0x8(%esp)
     41a:	00 
     41b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     422:	00 
  cmd = malloc(sizeof(*cmd));
     423:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     425:	89 04 24             	mov    %eax,(%esp)
     428:	e8 f3 08 00 00       	call   d20 <memset>
  cmd->type = EXEC;
  return (struct cmd*)cmd;
}
     42d:	89 d8                	mov    %ebx,%eax
  cmd->type = EXEC;
     42f:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
}
     435:	83 c4 14             	add    $0x14,%esp
     438:	5b                   	pop    %ebx
     439:	5d                   	pop    %ebp
     43a:	c3                   	ret    
     43b:	90                   	nop
     43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	53                   	push   %ebx
     444:	83 ec 14             	sub    $0x14,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     447:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
     44e:	e8 1d 0e 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     453:	c7 44 24 08 18 00 00 	movl   $0x18,0x8(%esp)
     45a:	00 
     45b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     462:	00 
     463:	89 04 24             	mov    %eax,(%esp)
  cmd = malloc(sizeof(*cmd));
     466:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     468:	e8 b3 08 00 00       	call   d20 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     46d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     470:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     476:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     479:	8b 45 0c             	mov    0xc(%ebp),%eax
     47c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     47f:	8b 45 10             	mov    0x10(%ebp),%eax
     482:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     485:	8b 45 14             	mov    0x14(%ebp),%eax
     488:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     48b:	8b 45 18             	mov    0x18(%ebp),%eax
     48e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     491:	83 c4 14             	add    $0x14,%esp
     494:	89 d8                	mov    %ebx,%eax
     496:	5b                   	pop    %ebx
     497:	5d                   	pop    %ebp
     498:	c3                   	ret    
     499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	53                   	push   %ebx
     4a4:	83 ec 14             	sub    $0x14,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4a7:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     4ae:	e8 bd 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4b3:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     4ba:	00 
     4bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4c2:	00 
     4c3:	89 04 24             	mov    %eax,(%esp)
  cmd = malloc(sizeof(*cmd));
     4c6:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4c8:	e8 53 08 00 00       	call   d20 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     4cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     4d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     4d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     4d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     4df:	83 c4 14             	add    $0x14,%esp
     4e2:	89 d8                	mov    %ebx,%eax
     4e4:	5b                   	pop    %ebx
     4e5:	5d                   	pop    %ebp
     4e6:	c3                   	ret    
     4e7:	89 f6                	mov    %esi,%esi
     4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     4f0:	55                   	push   %ebp
     4f1:	89 e5                	mov    %esp,%ebp
     4f3:	53                   	push   %ebx
     4f4:	83 ec 14             	sub    $0x14,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4f7:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
     4fe:	e8 6d 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     503:	c7 44 24 08 0c 00 00 	movl   $0xc,0x8(%esp)
     50a:	00 
     50b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     512:	00 
     513:	89 04 24             	mov    %eax,(%esp)
  cmd = malloc(sizeof(*cmd));
     516:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     518:	e8 03 08 00 00       	call   d20 <memset>
  cmd->type = LIST;
  cmd->left = left;
     51d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     520:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     526:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     529:	8b 45 0c             	mov    0xc(%ebp),%eax
     52c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     52f:	83 c4 14             	add    $0x14,%esp
     532:	89 d8                	mov    %ebx,%eax
     534:	5b                   	pop    %ebx
     535:	5d                   	pop    %ebp
     536:	c3                   	ret    
     537:	89 f6                	mov    %esi,%esi
     539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000540 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     540:	55                   	push   %ebp
     541:	89 e5                	mov    %esp,%ebp
     543:	53                   	push   %ebx
     544:	83 ec 14             	sub    $0x14,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     547:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     54e:	e8 1d 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     553:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
     55a:	00 
     55b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     562:	00 
     563:	89 04 24             	mov    %eax,(%esp)
  cmd = malloc(sizeof(*cmd));
     566:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     568:	e8 b3 07 00 00       	call   d20 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     56d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     570:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     576:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     579:	83 c4 14             	add    $0x14,%esp
     57c:	89 d8                	mov    %ebx,%eax
     57e:	5b                   	pop    %ebx
     57f:	5d                   	pop    %ebp
     580:	c3                   	ret    
     581:	eb 0d                	jmp    590 <gettoken>
     583:	90                   	nop
     584:	90                   	nop
     585:	90                   	nop
     586:	90                   	nop
     587:	90                   	nop
     588:	90                   	nop
     589:	90                   	nop
     58a:	90                   	nop
     58b:	90                   	nop
     58c:	90                   	nop
     58d:	90                   	nop
     58e:	90                   	nop
     58f:	90                   	nop

00000590 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     590:	55                   	push   %ebp
     591:	89 e5                	mov    %esp,%ebp
     593:	57                   	push   %edi
     594:	56                   	push   %esi
     595:	53                   	push   %ebx
     596:	83 ec 1c             	sub    $0x1c,%esp
  char *s;
  int ret;

  s = *ps;
     599:	8b 45 08             	mov    0x8(%ebp),%eax
{
     59c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     59f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     5a2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     5a4:	39 df                	cmp    %ebx,%edi
     5a6:	72 0f                	jb     5b7 <gettoken+0x27>
     5a8:	eb 24                	jmp    5ce <gettoken+0x3e>
     5aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     5b0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     5b3:	39 df                	cmp    %ebx,%edi
     5b5:	74 17                	je     5ce <gettoken+0x3e>
     5b7:	0f be 07             	movsbl (%edi),%eax
     5ba:	c7 04 24 f0 19 00 00 	movl   $0x19f0,(%esp)
     5c1:	89 44 24 04          	mov    %eax,0x4(%esp)
     5c5:	e8 76 07 00 00       	call   d40 <strchr>
     5ca:	85 c0                	test   %eax,%eax
     5cc:	75 e2                	jne    5b0 <gettoken+0x20>
  if(q)
     5ce:	85 f6                	test   %esi,%esi
     5d0:	74 02                	je     5d4 <gettoken+0x44>
    *q = s;
     5d2:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     5d4:	0f b6 0f             	movzbl (%edi),%ecx
     5d7:	0f be f1             	movsbl %cl,%esi
  switch(*s){
     5da:	80 f9 29             	cmp    $0x29,%cl
  ret = *s;
     5dd:	89 f0                	mov    %esi,%eax
  switch(*s){
     5df:	7f 4f                	jg     630 <gettoken+0xa0>
     5e1:	80 f9 28             	cmp    $0x28,%cl
     5e4:	7d 55                	jge    63b <gettoken+0xab>
     5e6:	84 c9                	test   %cl,%cl
     5e8:	0f 85 ca 00 00 00    	jne    6b8 <gettoken+0x128>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     5ee:	8b 45 14             	mov    0x14(%ebp),%eax
     5f1:	85 c0                	test   %eax,%eax
     5f3:	74 05                	je     5fa <gettoken+0x6a>
    *eq = s;
     5f5:	8b 45 14             	mov    0x14(%ebp),%eax
     5f8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     5fa:	39 df                	cmp    %ebx,%edi
     5fc:	72 09                	jb     607 <gettoken+0x77>
     5fe:	eb 1e                	jmp    61e <gettoken+0x8e>
    s++;
     600:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     603:	39 df                	cmp    %ebx,%edi
     605:	74 17                	je     61e <gettoken+0x8e>
     607:	0f be 07             	movsbl (%edi),%eax
     60a:	c7 04 24 f0 19 00 00 	movl   $0x19f0,(%esp)
     611:	89 44 24 04          	mov    %eax,0x4(%esp)
     615:	e8 26 07 00 00       	call   d40 <strchr>
     61a:	85 c0                	test   %eax,%eax
     61c:	75 e2                	jne    600 <gettoken+0x70>
  *ps = s;
     61e:	8b 45 08             	mov    0x8(%ebp),%eax
     621:	89 38                	mov    %edi,(%eax)
  return ret;
}
     623:	83 c4 1c             	add    $0x1c,%esp
     626:	89 f0                	mov    %esi,%eax
     628:	5b                   	pop    %ebx
     629:	5e                   	pop    %esi
     62a:	5f                   	pop    %edi
     62b:	5d                   	pop    %ebp
     62c:	c3                   	ret    
     62d:	8d 76 00             	lea    0x0(%esi),%esi
  switch(*s){
     630:	80 f9 3e             	cmp    $0x3e,%cl
     633:	75 0b                	jne    640 <gettoken+0xb0>
    if(*s == '>'){
     635:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     639:	74 6d                	je     6a8 <gettoken+0x118>
    s++;
     63b:	83 c7 01             	add    $0x1,%edi
     63e:	eb ae                	jmp    5ee <gettoken+0x5e>
  switch(*s){
     640:	7f 56                	jg     698 <gettoken+0x108>
     642:	83 e9 3b             	sub    $0x3b,%ecx
     645:	80 f9 01             	cmp    $0x1,%cl
     648:	76 f1                	jbe    63b <gettoken+0xab>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     64a:	39 fb                	cmp    %edi,%ebx
     64c:	77 2b                	ja     679 <gettoken+0xe9>
     64e:	66 90                	xchg   %ax,%ax
     650:	eb 3b                	jmp    68d <gettoken+0xfd>
     652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     658:	0f be 07             	movsbl (%edi),%eax
     65b:	c7 04 24 e8 19 00 00 	movl   $0x19e8,(%esp)
     662:	89 44 24 04          	mov    %eax,0x4(%esp)
     666:	e8 d5 06 00 00       	call   d40 <strchr>
     66b:	85 c0                	test   %eax,%eax
     66d:	75 1e                	jne    68d <gettoken+0xfd>
      s++;
     66f:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     672:	39 df                	cmp    %ebx,%edi
     674:	74 17                	je     68d <gettoken+0xfd>
     676:	0f be 07             	movsbl (%edi),%eax
     679:	89 44 24 04          	mov    %eax,0x4(%esp)
     67d:	c7 04 24 f0 19 00 00 	movl   $0x19f0,(%esp)
     684:	e8 b7 06 00 00       	call   d40 <strchr>
     689:	85 c0                	test   %eax,%eax
     68b:	74 cb                	je     658 <gettoken+0xc8>
    ret = 'a';
     68d:	be 61 00 00 00       	mov    $0x61,%esi
     692:	e9 57 ff ff ff       	jmp    5ee <gettoken+0x5e>
     697:	90                   	nop
  switch(*s){
     698:	80 f9 7c             	cmp    $0x7c,%cl
     69b:	74 9e                	je     63b <gettoken+0xab>
     69d:	8d 76 00             	lea    0x0(%esi),%esi
     6a0:	eb a8                	jmp    64a <gettoken+0xba>
     6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      s++;
     6a8:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     6ab:	be 2b 00 00 00       	mov    $0x2b,%esi
     6b0:	e9 39 ff ff ff       	jmp    5ee <gettoken+0x5e>
     6b5:	8d 76 00             	lea    0x0(%esi),%esi
  switch(*s){
     6b8:	80 f9 26             	cmp    $0x26,%cl
     6bb:	75 8d                	jne    64a <gettoken+0xba>
     6bd:	e9 79 ff ff ff       	jmp    63b <gettoken+0xab>
     6c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     6d0:	55                   	push   %ebp
     6d1:	89 e5                	mov    %esp,%ebp
     6d3:	57                   	push   %edi
     6d4:	56                   	push   %esi
     6d5:	53                   	push   %ebx
     6d6:	83 ec 1c             	sub    $0x1c,%esp
     6d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     6dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     6df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     6e1:	39 f3                	cmp    %esi,%ebx
     6e3:	72 0a                	jb     6ef <peek+0x1f>
     6e5:	eb 1f                	jmp    706 <peek+0x36>
     6e7:	90                   	nop
    s++;
     6e8:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     6eb:	39 f3                	cmp    %esi,%ebx
     6ed:	74 17                	je     706 <peek+0x36>
     6ef:	0f be 03             	movsbl (%ebx),%eax
     6f2:	c7 04 24 f0 19 00 00 	movl   $0x19f0,(%esp)
     6f9:	89 44 24 04          	mov    %eax,0x4(%esp)
     6fd:	e8 3e 06 00 00       	call   d40 <strchr>
     702:	85 c0                	test   %eax,%eax
     704:	75 e2                	jne    6e8 <peek+0x18>
  *ps = s;
     706:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     708:	0f be 13             	movsbl (%ebx),%edx
     70b:	31 c0                	xor    %eax,%eax
     70d:	84 d2                	test   %dl,%dl
     70f:	74 17                	je     728 <peek+0x58>
     711:	8b 45 10             	mov    0x10(%ebp),%eax
     714:	89 54 24 04          	mov    %edx,0x4(%esp)
     718:	89 04 24             	mov    %eax,(%esp)
     71b:	e8 20 06 00 00       	call   d40 <strchr>
     720:	85 c0                	test   %eax,%eax
     722:	0f 95 c0             	setne  %al
     725:	0f b6 c0             	movzbl %al,%eax
}
     728:	83 c4 1c             	add    $0x1c,%esp
     72b:	5b                   	pop    %ebx
     72c:	5e                   	pop    %esi
     72d:	5f                   	pop    %edi
     72e:	5d                   	pop    %ebp
     72f:	c3                   	ret    

00000730 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     730:	55                   	push   %ebp
     731:	89 e5                	mov    %esp,%ebp
     733:	57                   	push   %edi
     734:	56                   	push   %esi
     735:	53                   	push   %ebx
     736:	83 ec 3c             	sub    $0x3c,%esp
     739:	8b 7d 0c             	mov    0xc(%ebp),%edi
     73c:	8b 75 10             	mov    0x10(%ebp),%esi
     73f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     740:	c7 44 24 08 a9 13 00 	movl   $0x13a9,0x8(%esp)
     747:	00 
     748:	89 74 24 04          	mov    %esi,0x4(%esp)
     74c:	89 3c 24             	mov    %edi,(%esp)
     74f:	e8 7c ff ff ff       	call   6d0 <peek>
     754:	85 c0                	test   %eax,%eax
     756:	0f 84 a4 00 00 00    	je     800 <parseredirs+0xd0>
    tok = gettoken(ps, es, 0, 0);
     75c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     763:	00 
     764:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     76b:	00 
     76c:	89 74 24 04          	mov    %esi,0x4(%esp)
     770:	89 3c 24             	mov    %edi,(%esp)
     773:	e8 18 fe ff ff       	call   590 <gettoken>
    if(gettoken(ps, es, &q, &eq) != 'a')
     778:	89 74 24 04          	mov    %esi,0x4(%esp)
     77c:	89 3c 24             	mov    %edi,(%esp)
    tok = gettoken(ps, es, 0, 0);
     77f:	89 c3                	mov    %eax,%ebx
    if(gettoken(ps, es, &q, &eq) != 'a')
     781:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     784:	89 44 24 0c          	mov    %eax,0xc(%esp)
     788:	8d 45 e0             	lea    -0x20(%ebp),%eax
     78b:	89 44 24 08          	mov    %eax,0x8(%esp)
     78f:	e8 fc fd ff ff       	call   590 <gettoken>
     794:	83 f8 61             	cmp    $0x61,%eax
     797:	74 0c                	je     7a5 <parseredirs+0x75>
      panic("missing file for redirection");
     799:	c7 04 24 8c 13 00 00 	movl   $0x138c,(%esp)
     7a0:	e8 bb f9 ff ff       	call   160 <panic>
    switch(tok){
     7a5:	83 fb 3c             	cmp    $0x3c,%ebx
     7a8:	74 3e                	je     7e8 <parseredirs+0xb8>
     7aa:	83 fb 3e             	cmp    $0x3e,%ebx
     7ad:	74 05                	je     7b4 <parseredirs+0x84>
     7af:	83 fb 2b             	cmp    $0x2b,%ebx
     7b2:	75 8c                	jne    740 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     7b4:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
     7bb:	00 
     7bc:	c7 44 24 0c 01 02 00 	movl   $0x201,0xc(%esp)
     7c3:	00 
     7c4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     7c7:	89 44 24 08          	mov    %eax,0x8(%esp)
     7cb:	8b 45 e0             	mov    -0x20(%ebp),%eax
     7ce:	89 44 24 04          	mov    %eax,0x4(%esp)
     7d2:	8b 45 08             	mov    0x8(%ebp),%eax
     7d5:	89 04 24             	mov    %eax,(%esp)
     7d8:	e8 63 fc ff ff       	call   440 <redircmd>
     7dd:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     7e0:	e9 5b ff ff ff       	jmp    740 <parseredirs+0x10>
     7e5:	8d 76 00             	lea    0x0(%esi),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     7e8:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
     7ef:	00 
     7f0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     7f7:	00 
     7f8:	eb ca                	jmp    7c4 <parseredirs+0x94>
     7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     800:	8b 45 08             	mov    0x8(%ebp),%eax
     803:	83 c4 3c             	add    $0x3c,%esp
     806:	5b                   	pop    %ebx
     807:	5e                   	pop    %esi
     808:	5f                   	pop    %edi
     809:	5d                   	pop    %ebp
     80a:	c3                   	ret    
     80b:	90                   	nop
     80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000810 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     810:	55                   	push   %ebp
     811:	89 e5                	mov    %esp,%ebp
     813:	57                   	push   %edi
     814:	56                   	push   %esi
     815:	53                   	push   %ebx
     816:	83 ec 3c             	sub    $0x3c,%esp
     819:	8b 75 08             	mov    0x8(%ebp),%esi
     81c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     81f:	c7 44 24 08 ac 13 00 	movl   $0x13ac,0x8(%esp)
     826:	00 
     827:	89 34 24             	mov    %esi,(%esp)
     82a:	89 7c 24 04          	mov    %edi,0x4(%esp)
     82e:	e8 9d fe ff ff       	call   6d0 <peek>
     833:	85 c0                	test   %eax,%eax
     835:	0f 85 dd 00 00 00    	jne    918 <parseexec+0x108>
    return parseblock(ps, es);

  ret = execcmd();
     83b:	e8 c0 fb ff ff       	call   400 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     840:	89 7c 24 08          	mov    %edi,0x8(%esp)
     844:	89 74 24 04          	mov    %esi,0x4(%esp)
     848:	89 04 24             	mov    %eax,(%esp)
  ret = execcmd();
     84b:	89 c3                	mov    %eax,%ebx
     84d:	89 45 cc             	mov    %eax,-0x34(%ebp)
  ret = parseredirs(ret, ps, es);
     850:	e8 db fe ff ff       	call   730 <parseredirs>
  argc = 0;
     855:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  ret = parseredirs(ret, ps, es);
     85c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  while(!peek(ps, es, "|)&;")){
     85f:	eb 20                	jmp    881 <parseexec+0x71>
     861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     868:	8b 45 d0             	mov    -0x30(%ebp),%eax
     86b:	83 c3 04             	add    $0x4,%ebx
     86e:	89 7c 24 08          	mov    %edi,0x8(%esp)
     872:	89 74 24 04          	mov    %esi,0x4(%esp)
     876:	89 04 24             	mov    %eax,(%esp)
     879:	e8 b2 fe ff ff       	call   730 <parseredirs>
     87e:	89 45 d0             	mov    %eax,-0x30(%ebp)
  while(!peek(ps, es, "|)&;")){
     881:	c7 44 24 08 c3 13 00 	movl   $0x13c3,0x8(%esp)
     888:	00 
     889:	89 7c 24 04          	mov    %edi,0x4(%esp)
     88d:	89 34 24             	mov    %esi,(%esp)
     890:	e8 3b fe ff ff       	call   6d0 <peek>
     895:	85 c0                	test   %eax,%eax
     897:	75 57                	jne    8f0 <parseexec+0xe0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     899:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     89c:	89 44 24 0c          	mov    %eax,0xc(%esp)
     8a0:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8a3:	89 44 24 08          	mov    %eax,0x8(%esp)
     8a7:	89 7c 24 04          	mov    %edi,0x4(%esp)
     8ab:	89 34 24             	mov    %esi,(%esp)
     8ae:	e8 dd fc ff ff       	call   590 <gettoken>
     8b3:	85 c0                	test   %eax,%eax
     8b5:	74 39                	je     8f0 <parseexec+0xe0>
    if(tok != 'a')
     8b7:	83 f8 61             	cmp    $0x61,%eax
     8ba:	74 0c                	je     8c8 <parseexec+0xb8>
      panic("syntax");
     8bc:	c7 04 24 ae 13 00 00 	movl   $0x13ae,(%esp)
     8c3:	e8 98 f8 ff ff       	call   160 <panic>
    cmd->argv[argc] = q;
     8c8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    argc++;
     8cb:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    if(argc >= MAXARGS)
     8cf:	83 7d d4 09          	cmpl   $0x9,-0x2c(%ebp)
    cmd->argv[argc] = q;
     8d3:	89 43 04             	mov    %eax,0x4(%ebx)
    cmd->eargv[argc] = eq;
     8d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     8d9:	89 43 2c             	mov    %eax,0x2c(%ebx)
    if(argc >= MAXARGS)
     8dc:	7e 8a                	jle    868 <parseexec+0x58>
      panic("too many args");
     8de:	c7 04 24 b5 13 00 00 	movl   $0x13b5,(%esp)
     8e5:	e8 76 f8 ff ff       	call   160 <panic>
     8ea:	e9 79 ff ff ff       	jmp    868 <parseexec+0x58>
     8ef:	90                   	nop
     8f0:	8b 45 cc             	mov    -0x34(%ebp),%eax
     8f3:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     8f6:	8d 04 90             	lea    (%eax,%edx,4),%eax
  }
  cmd->argv[argc] = 0;
     8f9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     900:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  return ret;
     907:	8b 45 d0             	mov    -0x30(%ebp),%eax
}
     90a:	83 c4 3c             	add    $0x3c,%esp
     90d:	5b                   	pop    %ebx
     90e:	5e                   	pop    %esi
     90f:	5f                   	pop    %edi
     910:	5d                   	pop    %ebp
     911:	c3                   	ret    
     912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     918:	89 7c 24 04          	mov    %edi,0x4(%esp)
     91c:	89 34 24             	mov    %esi,(%esp)
     91f:	e8 4c 01 00 00       	call   a70 <parseblock>
}
     924:	83 c4 3c             	add    $0x3c,%esp
     927:	5b                   	pop    %ebx
     928:	5e                   	pop    %esi
     929:	5f                   	pop    %edi
     92a:	5d                   	pop    %ebp
     92b:	c3                   	ret    
     92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000930 <parsepipe>:
{
     930:	55                   	push   %ebp
     931:	89 e5                	mov    %esp,%ebp
     933:	57                   	push   %edi
     934:	56                   	push   %esi
     935:	53                   	push   %ebx
     936:	83 ec 1c             	sub    $0x1c,%esp
     939:	8b 5d 08             	mov    0x8(%ebp),%ebx
     93c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     93f:	89 1c 24             	mov    %ebx,(%esp)
     942:	89 74 24 04          	mov    %esi,0x4(%esp)
     946:	e8 c5 fe ff ff       	call   810 <parseexec>
  if(peek(ps, es, "|")){
     94b:	c7 44 24 08 c8 13 00 	movl   $0x13c8,0x8(%esp)
     952:	00 
     953:	89 74 24 04          	mov    %esi,0x4(%esp)
     957:	89 1c 24             	mov    %ebx,(%esp)
  cmd = parseexec(ps, es);
     95a:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     95c:	e8 6f fd ff ff       	call   6d0 <peek>
     961:	85 c0                	test   %eax,%eax
     963:	75 0b                	jne    970 <parsepipe+0x40>
}
     965:	83 c4 1c             	add    $0x1c,%esp
     968:	89 f8                	mov    %edi,%eax
     96a:	5b                   	pop    %ebx
     96b:	5e                   	pop    %esi
     96c:	5f                   	pop    %edi
     96d:	5d                   	pop    %ebp
     96e:	c3                   	ret    
     96f:	90                   	nop
    gettoken(ps, es, 0, 0);
     970:	89 74 24 04          	mov    %esi,0x4(%esp)
     974:	89 1c 24             	mov    %ebx,(%esp)
     977:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     97e:	00 
     97f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     986:	00 
     987:	e8 04 fc ff ff       	call   590 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     98c:	89 74 24 04          	mov    %esi,0x4(%esp)
     990:	89 1c 24             	mov    %ebx,(%esp)
     993:	e8 98 ff ff ff       	call   930 <parsepipe>
     998:	89 7d 08             	mov    %edi,0x8(%ebp)
     99b:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     99e:	83 c4 1c             	add    $0x1c,%esp
     9a1:	5b                   	pop    %ebx
     9a2:	5e                   	pop    %esi
     9a3:	5f                   	pop    %edi
     9a4:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9a5:	e9 f6 fa ff ff       	jmp    4a0 <pipecmd>
     9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009b0 <parseline>:
{
     9b0:	55                   	push   %ebp
     9b1:	89 e5                	mov    %esp,%ebp
     9b3:	57                   	push   %edi
     9b4:	56                   	push   %esi
     9b5:	53                   	push   %ebx
     9b6:	83 ec 1c             	sub    $0x1c,%esp
     9b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     9bf:	89 1c 24             	mov    %ebx,(%esp)
     9c2:	89 74 24 04          	mov    %esi,0x4(%esp)
     9c6:	e8 65 ff ff ff       	call   930 <parsepipe>
     9cb:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     9cd:	eb 27                	jmp    9f6 <parseline+0x46>
     9cf:	90                   	nop
    gettoken(ps, es, 0, 0);
     9d0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     9d7:	00 
     9d8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     9df:	00 
     9e0:	89 74 24 04          	mov    %esi,0x4(%esp)
     9e4:	89 1c 24             	mov    %ebx,(%esp)
     9e7:	e8 a4 fb ff ff       	call   590 <gettoken>
    cmd = backcmd(cmd);
     9ec:	89 3c 24             	mov    %edi,(%esp)
     9ef:	e8 4c fb ff ff       	call   540 <backcmd>
     9f4:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     9f6:	c7 44 24 08 ca 13 00 	movl   $0x13ca,0x8(%esp)
     9fd:	00 
     9fe:	89 74 24 04          	mov    %esi,0x4(%esp)
     a02:	89 1c 24             	mov    %ebx,(%esp)
     a05:	e8 c6 fc ff ff       	call   6d0 <peek>
     a0a:	85 c0                	test   %eax,%eax
     a0c:	75 c2                	jne    9d0 <parseline+0x20>
  if(peek(ps, es, ";")){
     a0e:	c7 44 24 08 c6 13 00 	movl   $0x13c6,0x8(%esp)
     a15:	00 
     a16:	89 74 24 04          	mov    %esi,0x4(%esp)
     a1a:	89 1c 24             	mov    %ebx,(%esp)
     a1d:	e8 ae fc ff ff       	call   6d0 <peek>
     a22:	85 c0                	test   %eax,%eax
     a24:	75 0a                	jne    a30 <parseline+0x80>
}
     a26:	83 c4 1c             	add    $0x1c,%esp
     a29:	89 f8                	mov    %edi,%eax
     a2b:	5b                   	pop    %ebx
     a2c:	5e                   	pop    %esi
     a2d:	5f                   	pop    %edi
     a2e:	5d                   	pop    %ebp
     a2f:	c3                   	ret    
    gettoken(ps, es, 0, 0);
     a30:	89 74 24 04          	mov    %esi,0x4(%esp)
     a34:	89 1c 24             	mov    %ebx,(%esp)
     a37:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a3e:	00 
     a3f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     a46:	00 
     a47:	e8 44 fb ff ff       	call   590 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a4c:	89 74 24 04          	mov    %esi,0x4(%esp)
     a50:	89 1c 24             	mov    %ebx,(%esp)
     a53:	e8 58 ff ff ff       	call   9b0 <parseline>
     a58:	89 7d 08             	mov    %edi,0x8(%ebp)
     a5b:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     a5e:	83 c4 1c             	add    $0x1c,%esp
     a61:	5b                   	pop    %ebx
     a62:	5e                   	pop    %esi
     a63:	5f                   	pop    %edi
     a64:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     a65:	e9 86 fa ff ff       	jmp    4f0 <listcmd>
     a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000a70 <parseblock>:
{
     a70:	55                   	push   %ebp
     a71:	89 e5                	mov    %esp,%ebp
     a73:	57                   	push   %edi
     a74:	56                   	push   %esi
     a75:	53                   	push   %ebx
     a76:	83 ec 1c             	sub    $0x1c,%esp
     a79:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a7c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a7f:	c7 44 24 08 ac 13 00 	movl   $0x13ac,0x8(%esp)
     a86:	00 
     a87:	89 1c 24             	mov    %ebx,(%esp)
     a8a:	89 74 24 04          	mov    %esi,0x4(%esp)
     a8e:	e8 3d fc ff ff       	call   6d0 <peek>
     a93:	85 c0                	test   %eax,%eax
     a95:	0f 84 85 00 00 00    	je     b20 <parseblock+0xb0>
  gettoken(ps, es, 0, 0);
     a9b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     aa2:	00 
     aa3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     aaa:	00 
     aab:	89 74 24 04          	mov    %esi,0x4(%esp)
     aaf:	89 1c 24             	mov    %ebx,(%esp)
     ab2:	e8 d9 fa ff ff       	call   590 <gettoken>
  cmd = parseline(ps, es);
     ab7:	89 74 24 04          	mov    %esi,0x4(%esp)
     abb:	89 1c 24             	mov    %ebx,(%esp)
     abe:	e8 ed fe ff ff       	call   9b0 <parseline>
  if(!peek(ps, es, ")"))
     ac3:	c7 44 24 08 e8 13 00 	movl   $0x13e8,0x8(%esp)
     aca:	00 
     acb:	89 74 24 04          	mov    %esi,0x4(%esp)
     acf:	89 1c 24             	mov    %ebx,(%esp)
  cmd = parseline(ps, es);
     ad2:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     ad4:	e8 f7 fb ff ff       	call   6d0 <peek>
     ad9:	85 c0                	test   %eax,%eax
     adb:	75 0c                	jne    ae9 <parseblock+0x79>
    panic("syntax - missing )");
     add:	c7 04 24 d7 13 00 00 	movl   $0x13d7,(%esp)
     ae4:	e8 77 f6 ff ff       	call   160 <panic>
  gettoken(ps, es, 0, 0);
     ae9:	89 74 24 04          	mov    %esi,0x4(%esp)
     aed:	89 1c 24             	mov    %ebx,(%esp)
     af0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     af7:	00 
     af8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     aff:	00 
     b00:	e8 8b fa ff ff       	call   590 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b05:	89 74 24 08          	mov    %esi,0x8(%esp)
     b09:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     b0d:	89 3c 24             	mov    %edi,(%esp)
     b10:	e8 1b fc ff ff       	call   730 <parseredirs>
}
     b15:	83 c4 1c             	add    $0x1c,%esp
     b18:	5b                   	pop    %ebx
     b19:	5e                   	pop    %esi
     b1a:	5f                   	pop    %edi
     b1b:	5d                   	pop    %ebp
     b1c:	c3                   	ret    
     b1d:	8d 76 00             	lea    0x0(%esi),%esi
    panic("parseblock");
     b20:	c7 04 24 cc 13 00 00 	movl   $0x13cc,(%esp)
     b27:	e8 34 f6 ff ff       	call   160 <panic>
     b2c:	e9 6a ff ff ff       	jmp    a9b <parseblock+0x2b>
     b31:	eb 0d                	jmp    b40 <nulterminate>
     b33:	90                   	nop
     b34:	90                   	nop
     b35:	90                   	nop
     b36:	90                   	nop
     b37:	90                   	nop
     b38:	90                   	nop
     b39:	90                   	nop
     b3a:	90                   	nop
     b3b:	90                   	nop
     b3c:	90                   	nop
     b3d:	90                   	nop
     b3e:	90                   	nop
     b3f:	90                   	nop

00000b40 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     b40:	55                   	push   %ebp
     b41:	89 e5                	mov    %esp,%ebp
     b43:	53                   	push   %ebx
     b44:	83 ec 14             	sub    $0x14,%esp
     b47:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b4a:	85 db                	test   %ebx,%ebx
     b4c:	0f 84 8e 00 00 00    	je     be0 <nulterminate+0xa0>
    return 0;

  switch(cmd->type){
     b52:	83 3b 05             	cmpl   $0x5,(%ebx)
     b55:	77 49                	ja     ba0 <nulterminate+0x60>
     b57:	8b 03                	mov    (%ebx),%eax
     b59:	ff 24 85 28 14 00 00 	jmp    *0x1428(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     b60:	8b 43 04             	mov    0x4(%ebx),%eax
     b63:	89 04 24             	mov    %eax,(%esp)
     b66:	e8 d5 ff ff ff       	call   b40 <nulterminate>
    nulterminate(lcmd->right);
     b6b:	8b 43 08             	mov    0x8(%ebx),%eax
     b6e:	89 04 24             	mov    %eax,(%esp)
     b71:	e8 ca ff ff ff       	call   b40 <nulterminate>
    break;
     b76:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     b78:	83 c4 14             	add    $0x14,%esp
     b7b:	5b                   	pop    %ebx
     b7c:	5d                   	pop    %ebp
     b7d:	c3                   	ret    
     b7e:	66 90                	xchg   %ax,%ax
    for(i=0; ecmd->argv[i]; i++)
     b80:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b83:	89 d8                	mov    %ebx,%eax
     b85:	85 c9                	test   %ecx,%ecx
     b87:	74 17                	je     ba0 <nulterminate+0x60>
     b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      *ecmd->eargv[i] = 0;
     b90:	8b 50 2c             	mov    0x2c(%eax),%edx
     b93:	83 c0 04             	add    $0x4,%eax
     b96:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b99:	8b 50 04             	mov    0x4(%eax),%edx
     b9c:	85 d2                	test   %edx,%edx
     b9e:	75 f0                	jne    b90 <nulterminate+0x50>
}
     ba0:	83 c4 14             	add    $0x14,%esp
  switch(cmd->type){
     ba3:	89 d8                	mov    %ebx,%eax
}
     ba5:	5b                   	pop    %ebx
     ba6:	5d                   	pop    %ebp
     ba7:	c3                   	ret    
    nulterminate(bcmd->cmd);
     ba8:	8b 43 04             	mov    0x4(%ebx),%eax
     bab:	89 04 24             	mov    %eax,(%esp)
     bae:	e8 8d ff ff ff       	call   b40 <nulterminate>
}
     bb3:	83 c4 14             	add    $0x14,%esp
    break;
     bb6:	89 d8                	mov    %ebx,%eax
}
     bb8:	5b                   	pop    %ebx
     bb9:	5d                   	pop    %ebp
     bba:	c3                   	ret    
     bbb:	90                   	nop
     bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(rcmd->cmd);
     bc0:	8b 43 04             	mov    0x4(%ebx),%eax
     bc3:	89 04 24             	mov    %eax,(%esp)
     bc6:	e8 75 ff ff ff       	call   b40 <nulterminate>
    *rcmd->efile = 0;
     bcb:	8b 43 0c             	mov    0xc(%ebx),%eax
     bce:	c6 00 00             	movb   $0x0,(%eax)
}
     bd1:	83 c4 14             	add    $0x14,%esp
    break;
     bd4:	89 d8                	mov    %ebx,%eax
}
     bd6:	5b                   	pop    %ebx
     bd7:	5d                   	pop    %ebp
     bd8:	c3                   	ret    
     bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return 0;
     be0:	31 c0                	xor    %eax,%eax
     be2:	eb 94                	jmp    b78 <nulterminate+0x38>
     be4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     bea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000bf0 <parsecmd>:
{
     bf0:	55                   	push   %ebp
     bf1:	89 e5                	mov    %esp,%ebp
     bf3:	56                   	push   %esi
     bf4:	53                   	push   %ebx
     bf5:	83 ec 10             	sub    $0x10,%esp
  es = s + strlen(s);
     bf8:	8b 5d 08             	mov    0x8(%ebp),%ebx
     bfb:	89 1c 24             	mov    %ebx,(%esp)
     bfe:	e8 ed 00 00 00       	call   cf0 <strlen>
     c03:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     c05:	8d 45 08             	lea    0x8(%ebp),%eax
     c08:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     c0c:	89 04 24             	mov    %eax,(%esp)
     c0f:	e8 9c fd ff ff       	call   9b0 <parseline>
  peek(&s, es, "");
     c14:	c7 44 24 08 76 13 00 	movl   $0x1376,0x8(%esp)
     c1b:	00 
     c1c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  cmd = parseline(&s, es);
     c20:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c22:	8d 45 08             	lea    0x8(%ebp),%eax
     c25:	89 04 24             	mov    %eax,(%esp)
     c28:	e8 a3 fa ff ff       	call   6d0 <peek>
  if(s != es){
     c2d:	8b 45 08             	mov    0x8(%ebp),%eax
     c30:	39 d8                	cmp    %ebx,%eax
     c32:	74 24                	je     c58 <parsecmd+0x68>
    printf(2, "leftovers: %s\n", s);
     c34:	89 44 24 08          	mov    %eax,0x8(%esp)
     c38:	c7 44 24 04 ea 13 00 	movl   $0x13ea,0x4(%esp)
     c3f:	00 
     c40:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     c47:	e8 a4 03 00 00       	call   ff0 <printf>
    panic("syntax");
     c4c:	c7 04 24 ae 13 00 00 	movl   $0x13ae,(%esp)
     c53:	e8 08 f5 ff ff       	call   160 <panic>
  nulterminate(cmd);
     c58:	89 34 24             	mov    %esi,(%esp)
     c5b:	e8 e0 fe ff ff       	call   b40 <nulterminate>
}
     c60:	83 c4 10             	add    $0x10,%esp
     c63:	89 f0                	mov    %esi,%eax
     c65:	5b                   	pop    %ebx
     c66:	5e                   	pop    %esi
     c67:	5d                   	pop    %ebp
     c68:	c3                   	ret    
     c69:	66 90                	xchg   %ax,%ax
     c6b:	66 90                	xchg   %ax,%ax
     c6d:	66 90                	xchg   %ax,%ax
     c6f:	90                   	nop

00000c70 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	8b 45 08             	mov    0x8(%ebp),%eax
     c76:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     c79:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c7a:	89 c2                	mov    %eax,%edx
     c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c80:	83 c1 01             	add    $0x1,%ecx
     c83:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     c87:	83 c2 01             	add    $0x1,%edx
     c8a:	84 db                	test   %bl,%bl
     c8c:	88 5a ff             	mov    %bl,-0x1(%edx)
     c8f:	75 ef                	jne    c80 <strcpy+0x10>
    ;
  return os;
}
     c91:	5b                   	pop    %ebx
     c92:	5d                   	pop    %ebp
     c93:	c3                   	ret    
     c94:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c9a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ca0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     ca0:	55                   	push   %ebp
     ca1:	89 e5                	mov    %esp,%ebp
     ca3:	8b 55 08             	mov    0x8(%ebp),%edx
     ca6:	53                   	push   %ebx
     ca7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     caa:	0f b6 02             	movzbl (%edx),%eax
     cad:	84 c0                	test   %al,%al
     caf:	74 2d                	je     cde <strcmp+0x3e>
     cb1:	0f b6 19             	movzbl (%ecx),%ebx
     cb4:	38 d8                	cmp    %bl,%al
     cb6:	74 0e                	je     cc6 <strcmp+0x26>
     cb8:	eb 2b                	jmp    ce5 <strcmp+0x45>
     cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cc0:	38 c8                	cmp    %cl,%al
     cc2:	75 15                	jne    cd9 <strcmp+0x39>
    p++, q++;
     cc4:	89 d9                	mov    %ebx,%ecx
     cc6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     cc9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     ccc:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     ccf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
     cd3:	84 c0                	test   %al,%al
     cd5:	75 e9                	jne    cc0 <strcmp+0x20>
     cd7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     cd9:	29 c8                	sub    %ecx,%eax
}
     cdb:	5b                   	pop    %ebx
     cdc:	5d                   	pop    %ebp
     cdd:	c3                   	ret    
     cde:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
     ce1:	31 c0                	xor    %eax,%eax
     ce3:	eb f4                	jmp    cd9 <strcmp+0x39>
     ce5:	0f b6 cb             	movzbl %bl,%ecx
     ce8:	eb ef                	jmp    cd9 <strcmp+0x39>
     cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000cf0 <strlen>:

uint
strlen(const char *s)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     cf6:	80 39 00             	cmpb   $0x0,(%ecx)
     cf9:	74 12                	je     d0d <strlen+0x1d>
     cfb:	31 d2                	xor    %edx,%edx
     cfd:	8d 76 00             	lea    0x0(%esi),%esi
     d00:	83 c2 01             	add    $0x1,%edx
     d03:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d07:	89 d0                	mov    %edx,%eax
     d09:	75 f5                	jne    d00 <strlen+0x10>
    ;
  return n;
}
     d0b:	5d                   	pop    %ebp
     d0c:	c3                   	ret    
  for(n = 0; s[n]; n++)
     d0d:	31 c0                	xor    %eax,%eax
}
     d0f:	5d                   	pop    %ebp
     d10:	c3                   	ret    
     d11:	eb 0d                	jmp    d20 <memset>
     d13:	90                   	nop
     d14:	90                   	nop
     d15:	90                   	nop
     d16:	90                   	nop
     d17:	90                   	nop
     d18:	90                   	nop
     d19:	90                   	nop
     d1a:	90                   	nop
     d1b:	90                   	nop
     d1c:	90                   	nop
     d1d:	90                   	nop
     d1e:	90                   	nop
     d1f:	90                   	nop

00000d20 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d20:	55                   	push   %ebp
     d21:	89 e5                	mov    %esp,%ebp
     d23:	8b 55 08             	mov    0x8(%ebp),%edx
     d26:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d27:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d2a:	8b 45 0c             	mov    0xc(%ebp),%eax
     d2d:	89 d7                	mov    %edx,%edi
     d2f:	fc                   	cld    
     d30:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d32:	89 d0                	mov    %edx,%eax
     d34:	5f                   	pop    %edi
     d35:	5d                   	pop    %ebp
     d36:	c3                   	ret    
     d37:	89 f6                	mov    %esi,%esi
     d39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d40 <strchr>:

char*
strchr(const char *s, char c)
{
     d40:	55                   	push   %ebp
     d41:	89 e5                	mov    %esp,%ebp
     d43:	8b 45 08             	mov    0x8(%ebp),%eax
     d46:	53                   	push   %ebx
     d47:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     d4a:	0f b6 18             	movzbl (%eax),%ebx
     d4d:	84 db                	test   %bl,%bl
     d4f:	74 1d                	je     d6e <strchr+0x2e>
    if(*s == c)
     d51:	38 d3                	cmp    %dl,%bl
     d53:	89 d1                	mov    %edx,%ecx
     d55:	75 0d                	jne    d64 <strchr+0x24>
     d57:	eb 17                	jmp    d70 <strchr+0x30>
     d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d60:	38 ca                	cmp    %cl,%dl
     d62:	74 0c                	je     d70 <strchr+0x30>
  for(; *s; s++)
     d64:	83 c0 01             	add    $0x1,%eax
     d67:	0f b6 10             	movzbl (%eax),%edx
     d6a:	84 d2                	test   %dl,%dl
     d6c:	75 f2                	jne    d60 <strchr+0x20>
      return (char*)s;
  return 0;
     d6e:	31 c0                	xor    %eax,%eax
}
     d70:	5b                   	pop    %ebx
     d71:	5d                   	pop    %ebp
     d72:	c3                   	ret    
     d73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d80 <gets>:

char*
gets(char *buf, int max)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	57                   	push   %edi
     d84:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d85:	31 f6                	xor    %esi,%esi
{
     d87:	53                   	push   %ebx
     d88:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
     d8b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
     d8e:	eb 31                	jmp    dc1 <gets+0x41>
    cc = read(0, &c, 1);
     d90:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     d97:	00 
     d98:	89 7c 24 04          	mov    %edi,0x4(%esp)
     d9c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     da3:	e8 02 01 00 00       	call   eaa <read>
    if(cc < 1)
     da8:	85 c0                	test   %eax,%eax
     daa:	7e 1d                	jle    dc9 <gets+0x49>
      break;
    buf[i++] = c;
     dac:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
     db0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
     db2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     db5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
     db7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     dbb:	74 0c                	je     dc9 <gets+0x49>
     dbd:	3c 0a                	cmp    $0xa,%al
     dbf:	74 08                	je     dc9 <gets+0x49>
  for(i=0; i+1 < max; ){
     dc1:	8d 5e 01             	lea    0x1(%esi),%ebx
     dc4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     dc7:	7c c7                	jl     d90 <gets+0x10>
      break;
  }
  buf[i] = '\0';
     dc9:	8b 45 08             	mov    0x8(%ebp),%eax
     dcc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     dd0:	83 c4 2c             	add    $0x2c,%esp
     dd3:	5b                   	pop    %ebx
     dd4:	5e                   	pop    %esi
     dd5:	5f                   	pop    %edi
     dd6:	5d                   	pop    %ebp
     dd7:	c3                   	ret    
     dd8:	90                   	nop
     dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000de0 <stat>:

int
stat(const char *n, struct stat *st)
{
     de0:	55                   	push   %ebp
     de1:	89 e5                	mov    %esp,%ebp
     de3:	56                   	push   %esi
     de4:	53                   	push   %ebx
     de5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     de8:	8b 45 08             	mov    0x8(%ebp),%eax
     deb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     df2:	00 
     df3:	89 04 24             	mov    %eax,(%esp)
     df6:	e8 d7 00 00 00       	call   ed2 <open>
  if(fd < 0)
     dfb:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
     dfd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
     dff:	78 27                	js     e28 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     e01:	8b 45 0c             	mov    0xc(%ebp),%eax
     e04:	89 1c 24             	mov    %ebx,(%esp)
     e07:	89 44 24 04          	mov    %eax,0x4(%esp)
     e0b:	e8 da 00 00 00       	call   eea <fstat>
  close(fd);
     e10:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     e13:	89 c6                	mov    %eax,%esi
  close(fd);
     e15:	e8 a0 00 00 00       	call   eba <close>
  return r;
     e1a:	89 f0                	mov    %esi,%eax
}
     e1c:	83 c4 10             	add    $0x10,%esp
     e1f:	5b                   	pop    %ebx
     e20:	5e                   	pop    %esi
     e21:	5d                   	pop    %ebp
     e22:	c3                   	ret    
     e23:	90                   	nop
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
     e28:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     e2d:	eb ed                	jmp    e1c <stat+0x3c>
     e2f:	90                   	nop

00000e30 <atoi>:

int
atoi(const char *s)
{
     e30:	55                   	push   %ebp
     e31:	89 e5                	mov    %esp,%ebp
     e33:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e36:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e37:	0f be 11             	movsbl (%ecx),%edx
     e3a:	8d 42 d0             	lea    -0x30(%edx),%eax
     e3d:	3c 09                	cmp    $0x9,%al
  n = 0;
     e3f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     e44:	77 17                	ja     e5d <atoi+0x2d>
     e46:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     e48:	83 c1 01             	add    $0x1,%ecx
     e4b:	8d 04 80             	lea    (%eax,%eax,4),%eax
     e4e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     e52:	0f be 11             	movsbl (%ecx),%edx
     e55:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e58:	80 fb 09             	cmp    $0x9,%bl
     e5b:	76 eb                	jbe    e48 <atoi+0x18>
  return n;
}
     e5d:	5b                   	pop    %ebx
     e5e:	5d                   	pop    %ebp
     e5f:	c3                   	ret    

00000e60 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e60:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e61:	31 d2                	xor    %edx,%edx
{
     e63:	89 e5                	mov    %esp,%ebp
     e65:	56                   	push   %esi
     e66:	8b 45 08             	mov    0x8(%ebp),%eax
     e69:	53                   	push   %ebx
     e6a:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e6d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
     e70:	85 db                	test   %ebx,%ebx
     e72:	7e 12                	jle    e86 <memmove+0x26>
     e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e78:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e7c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e7f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     e82:	39 da                	cmp    %ebx,%edx
     e84:	75 f2                	jne    e78 <memmove+0x18>
  return vdst;
}
     e86:	5b                   	pop    %ebx
     e87:	5e                   	pop    %esi
     e88:	5d                   	pop    %ebp
     e89:	c3                   	ret    

00000e8a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e8a:	b8 01 00 00 00       	mov    $0x1,%eax
     e8f:	cd 40                	int    $0x40
     e91:	c3                   	ret    

00000e92 <exit>:
SYSCALL(exit)
     e92:	b8 02 00 00 00       	mov    $0x2,%eax
     e97:	cd 40                	int    $0x40
     e99:	c3                   	ret    

00000e9a <wait>:
SYSCALL(wait)
     e9a:	b8 03 00 00 00       	mov    $0x3,%eax
     e9f:	cd 40                	int    $0x40
     ea1:	c3                   	ret    

00000ea2 <pipe>:
SYSCALL(pipe)
     ea2:	b8 04 00 00 00       	mov    $0x4,%eax
     ea7:	cd 40                	int    $0x40
     ea9:	c3                   	ret    

00000eaa <read>:
SYSCALL(read)
     eaa:	b8 05 00 00 00       	mov    $0x5,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <write>:
SYSCALL(write)
     eb2:	b8 10 00 00 00       	mov    $0x10,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <close>:
SYSCALL(close)
     eba:	b8 15 00 00 00       	mov    $0x15,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    

00000ec2 <kill>:
SYSCALL(kill)
     ec2:	b8 06 00 00 00       	mov    $0x6,%eax
     ec7:	cd 40                	int    $0x40
     ec9:	c3                   	ret    

00000eca <exec>:
SYSCALL(exec)
     eca:	b8 07 00 00 00       	mov    $0x7,%eax
     ecf:	cd 40                	int    $0x40
     ed1:	c3                   	ret    

00000ed2 <open>:
SYSCALL(open)
     ed2:	b8 0f 00 00 00       	mov    $0xf,%eax
     ed7:	cd 40                	int    $0x40
     ed9:	c3                   	ret    

00000eda <mknod>:
SYSCALL(mknod)
     eda:	b8 11 00 00 00       	mov    $0x11,%eax
     edf:	cd 40                	int    $0x40
     ee1:	c3                   	ret    

00000ee2 <unlink>:
SYSCALL(unlink)
     ee2:	b8 12 00 00 00       	mov    $0x12,%eax
     ee7:	cd 40                	int    $0x40
     ee9:	c3                   	ret    

00000eea <fstat>:
SYSCALL(fstat)
     eea:	b8 08 00 00 00       	mov    $0x8,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    

00000ef2 <link>:
SYSCALL(link)
     ef2:	b8 13 00 00 00       	mov    $0x13,%eax
     ef7:	cd 40                	int    $0x40
     ef9:	c3                   	ret    

00000efa <mkdir>:
SYSCALL(mkdir)
     efa:	b8 14 00 00 00       	mov    $0x14,%eax
     eff:	cd 40                	int    $0x40
     f01:	c3                   	ret    

00000f02 <chdir>:
SYSCALL(chdir)
     f02:	b8 09 00 00 00       	mov    $0x9,%eax
     f07:	cd 40                	int    $0x40
     f09:	c3                   	ret    

00000f0a <dup>:
SYSCALL(dup)
     f0a:	b8 0a 00 00 00       	mov    $0xa,%eax
     f0f:	cd 40                	int    $0x40
     f11:	c3                   	ret    

00000f12 <getpid>:
SYSCALL(getpid)
     f12:	b8 0b 00 00 00       	mov    $0xb,%eax
     f17:	cd 40                	int    $0x40
     f19:	c3                   	ret    

00000f1a <sbrk>:
SYSCALL(sbrk)
     f1a:	b8 0c 00 00 00       	mov    $0xc,%eax
     f1f:	cd 40                	int    $0x40
     f21:	c3                   	ret    

00000f22 <sleep>:
SYSCALL(sleep)
     f22:	b8 0d 00 00 00       	mov    $0xd,%eax
     f27:	cd 40                	int    $0x40
     f29:	c3                   	ret    

00000f2a <uptime>:
SYSCALL(uptime)
     f2a:	b8 0e 00 00 00       	mov    $0xe,%eax
     f2f:	cd 40                	int    $0x40
     f31:	c3                   	ret    

00000f32 <hello>:
SYSCALL(hello)
     f32:	b8 18 00 00 00       	mov    $0x18,%eax
     f37:	cd 40                	int    $0x40
     f39:	c3                   	ret    

00000f3a <waitpid>:
SYSCALL(waitpid)
     f3a:	b8 19 00 00 00       	mov    $0x19,%eax
     f3f:	cd 40                	int    $0x40
     f41:	c3                   	ret    

00000f42 <setpriority>:
SYSCALL(setpriority)
     f42:	b8 1a 00 00 00       	mov    $0x1a,%eax
     f47:	cd 40                	int    $0x40
     f49:	c3                   	ret    
     f4a:	66 90                	xchg   %ax,%ax
     f4c:	66 90                	xchg   %ax,%ax
     f4e:	66 90                	xchg   %ax,%ax

00000f50 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f50:	55                   	push   %ebp
     f51:	89 e5                	mov    %esp,%ebp
     f53:	57                   	push   %edi
     f54:	56                   	push   %esi
     f55:	89 c6                	mov    %eax,%esi
     f57:	53                   	push   %ebx
     f58:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     f5b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f5e:	85 db                	test   %ebx,%ebx
     f60:	74 09                	je     f6b <printint+0x1b>
     f62:	89 d0                	mov    %edx,%eax
     f64:	c1 e8 1f             	shr    $0x1f,%eax
     f67:	84 c0                	test   %al,%al
     f69:	75 75                	jne    fe0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     f6b:	89 d0                	mov    %edx,%eax
  neg = 0;
     f6d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     f74:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
     f77:	31 ff                	xor    %edi,%edi
     f79:	89 ce                	mov    %ecx,%esi
     f7b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f7e:	eb 02                	jmp    f82 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
     f80:	89 cf                	mov    %ecx,%edi
     f82:	31 d2                	xor    %edx,%edx
     f84:	f7 f6                	div    %esi
     f86:	8d 4f 01             	lea    0x1(%edi),%ecx
     f89:	0f b6 92 47 14 00 00 	movzbl 0x1447(%edx),%edx
  }while((x /= base) != 0);
     f90:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     f92:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     f95:	75 e9                	jne    f80 <printint+0x30>
  if(neg)
     f97:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
     f9a:	89 c8                	mov    %ecx,%eax
     f9c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
     f9f:	85 d2                	test   %edx,%edx
     fa1:	74 08                	je     fab <printint+0x5b>
    buf[i++] = '-';
     fa3:	8d 4f 02             	lea    0x2(%edi),%ecx
     fa6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
     fab:	8d 79 ff             	lea    -0x1(%ecx),%edi
     fae:	66 90                	xchg   %ax,%ax
     fb0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
     fb5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
     fb8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     fbf:	00 
     fc0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     fc4:	89 34 24             	mov    %esi,(%esp)
     fc7:	88 45 d7             	mov    %al,-0x29(%ebp)
     fca:	e8 e3 fe ff ff       	call   eb2 <write>
  while(--i >= 0)
     fcf:	83 ff ff             	cmp    $0xffffffff,%edi
     fd2:	75 dc                	jne    fb0 <printint+0x60>
    putc(fd, buf[i]);
}
     fd4:	83 c4 4c             	add    $0x4c,%esp
     fd7:	5b                   	pop    %ebx
     fd8:	5e                   	pop    %esi
     fd9:	5f                   	pop    %edi
     fda:	5d                   	pop    %ebp
     fdb:	c3                   	ret    
     fdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
     fe0:	89 d0                	mov    %edx,%eax
     fe2:	f7 d8                	neg    %eax
    neg = 1;
     fe4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
     feb:	eb 87                	jmp    f74 <printint+0x24>
     fed:	8d 76 00             	lea    0x0(%esi),%esi

00000ff0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     ff0:	55                   	push   %ebp
     ff1:	89 e5                	mov    %esp,%ebp
     ff3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
     ff4:	31 ff                	xor    %edi,%edi
{
     ff6:	56                   	push   %esi
     ff7:	53                   	push   %ebx
     ff8:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ffb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
     ffe:	8d 45 10             	lea    0x10(%ebp),%eax
{
    1001:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    1004:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    1007:	0f b6 13             	movzbl (%ebx),%edx
    100a:	83 c3 01             	add    $0x1,%ebx
    100d:	84 d2                	test   %dl,%dl
    100f:	75 39                	jne    104a <printf+0x5a>
    1011:	e9 c2 00 00 00       	jmp    10d8 <printf+0xe8>
    1016:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1018:	83 fa 25             	cmp    $0x25,%edx
    101b:	0f 84 bf 00 00 00    	je     10e0 <printf+0xf0>
  write(fd, &c, 1);
    1021:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1024:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    102b:	00 
    102c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1030:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    1033:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    1036:	e8 77 fe ff ff       	call   eb2 <write>
    103b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    103e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1042:	84 d2                	test   %dl,%dl
    1044:	0f 84 8e 00 00 00    	je     10d8 <printf+0xe8>
    if(state == 0){
    104a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    104c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    104f:	74 c7                	je     1018 <printf+0x28>
      }
    } else if(state == '%'){
    1051:	83 ff 25             	cmp    $0x25,%edi
    1054:	75 e5                	jne    103b <printf+0x4b>
      if(c == 'd'){
    1056:	83 fa 64             	cmp    $0x64,%edx
    1059:	0f 84 31 01 00 00    	je     1190 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    105f:	25 f7 00 00 00       	and    $0xf7,%eax
    1064:	83 f8 70             	cmp    $0x70,%eax
    1067:	0f 84 83 00 00 00    	je     10f0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    106d:	83 fa 73             	cmp    $0x73,%edx
    1070:	0f 84 a2 00 00 00    	je     1118 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1076:	83 fa 63             	cmp    $0x63,%edx
    1079:	0f 84 35 01 00 00    	je     11b4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    107f:	83 fa 25             	cmp    $0x25,%edx
    1082:	0f 84 e0 00 00 00    	je     1168 <printf+0x178>
  write(fd, &c, 1);
    1088:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    108b:	83 c3 01             	add    $0x1,%ebx
    108e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1095:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1096:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    1098:	89 44 24 04          	mov    %eax,0x4(%esp)
    109c:	89 34 24             	mov    %esi,(%esp)
    109f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    10a2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    10a6:	e8 07 fe ff ff       	call   eb2 <write>
        putc(fd, c);
    10ab:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    10ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
    10b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    10b8:	00 
    10b9:	89 44 24 04          	mov    %eax,0x4(%esp)
    10bd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    10c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    10c3:	e8 ea fd ff ff       	call   eb2 <write>
  for(i = 0; fmt[i]; i++){
    10c8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    10cc:	84 d2                	test   %dl,%dl
    10ce:	0f 85 76 ff ff ff    	jne    104a <printf+0x5a>
    10d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    10d8:	83 c4 3c             	add    $0x3c,%esp
    10db:	5b                   	pop    %ebx
    10dc:	5e                   	pop    %esi
    10dd:	5f                   	pop    %edi
    10de:	5d                   	pop    %ebp
    10df:	c3                   	ret    
        state = '%';
    10e0:	bf 25 00 00 00       	mov    $0x25,%edi
    10e5:	e9 51 ff ff ff       	jmp    103b <printf+0x4b>
    10ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    10f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    10f3:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    10f8:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    10fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1101:	8b 10                	mov    (%eax),%edx
    1103:	89 f0                	mov    %esi,%eax
    1105:	e8 46 fe ff ff       	call   f50 <printint>
        ap++;
    110a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    110e:	e9 28 ff ff ff       	jmp    103b <printf+0x4b>
    1113:	90                   	nop
    1114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1118:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    111b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    111f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    1121:	b8 40 14 00 00       	mov    $0x1440,%eax
    1126:	85 ff                	test   %edi,%edi
    1128:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    112b:	0f b6 07             	movzbl (%edi),%eax
    112e:	84 c0                	test   %al,%al
    1130:	74 2a                	je     115c <printf+0x16c>
    1132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1138:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    113b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    113e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    1141:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1148:	00 
    1149:	89 44 24 04          	mov    %eax,0x4(%esp)
    114d:	89 34 24             	mov    %esi,(%esp)
    1150:	e8 5d fd ff ff       	call   eb2 <write>
        while(*s != 0){
    1155:	0f b6 07             	movzbl (%edi),%eax
    1158:	84 c0                	test   %al,%al
    115a:	75 dc                	jne    1138 <printf+0x148>
      state = 0;
    115c:	31 ff                	xor    %edi,%edi
    115e:	e9 d8 fe ff ff       	jmp    103b <printf+0x4b>
    1163:	90                   	nop
    1164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1168:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    116b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    116d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1174:	00 
    1175:	89 44 24 04          	mov    %eax,0x4(%esp)
    1179:	89 34 24             	mov    %esi,(%esp)
    117c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1180:	e8 2d fd ff ff       	call   eb2 <write>
    1185:	e9 b1 fe ff ff       	jmp    103b <printf+0x4b>
    118a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1190:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1193:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    1198:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    119b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11a2:	8b 10                	mov    (%eax),%edx
    11a4:	89 f0                	mov    %esi,%eax
    11a6:	e8 a5 fd ff ff       	call   f50 <printint>
        ap++;
    11ab:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    11af:	e9 87 fe ff ff       	jmp    103b <printf+0x4b>
        putc(fd, *ap);
    11b4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    11b7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    11b9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    11bb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    11c2:	00 
    11c3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    11c6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    11c9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    11cc:	89 44 24 04          	mov    %eax,0x4(%esp)
    11d0:	e8 dd fc ff ff       	call   eb2 <write>
        ap++;
    11d5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    11d9:	e9 5d fe ff ff       	jmp    103b <printf+0x4b>
    11de:	66 90                	xchg   %ax,%ax

000011e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11e1:	a1 64 1a 00 00       	mov    0x1a64,%eax
{
    11e6:	89 e5                	mov    %esp,%ebp
    11e8:	57                   	push   %edi
    11e9:	56                   	push   %esi
    11ea:	53                   	push   %ebx
    11eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11ee:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    11f0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f3:	39 d0                	cmp    %edx,%eax
    11f5:	72 11                	jb     1208 <free+0x28>
    11f7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11f8:	39 c8                	cmp    %ecx,%eax
    11fa:	72 04                	jb     1200 <free+0x20>
    11fc:	39 ca                	cmp    %ecx,%edx
    11fe:	72 10                	jb     1210 <free+0x30>
    1200:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1202:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1204:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1206:	73 f0                	jae    11f8 <free+0x18>
    1208:	39 ca                	cmp    %ecx,%edx
    120a:	72 04                	jb     1210 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    120c:	39 c8                	cmp    %ecx,%eax
    120e:	72 f0                	jb     1200 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1210:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1213:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    1216:	39 cf                	cmp    %ecx,%edi
    1218:	74 1e                	je     1238 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    121a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    121d:	8b 48 04             	mov    0x4(%eax),%ecx
    1220:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    1223:	39 f2                	cmp    %esi,%edx
    1225:	74 28                	je     124f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1227:	89 10                	mov    %edx,(%eax)
  freep = p;
    1229:	a3 64 1a 00 00       	mov    %eax,0x1a64
}
    122e:	5b                   	pop    %ebx
    122f:	5e                   	pop    %esi
    1230:	5f                   	pop    %edi
    1231:	5d                   	pop    %ebp
    1232:	c3                   	ret    
    1233:	90                   	nop
    1234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1238:	03 71 04             	add    0x4(%ecx),%esi
    123b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    123e:	8b 08                	mov    (%eax),%ecx
    1240:	8b 09                	mov    (%ecx),%ecx
    1242:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1245:	8b 48 04             	mov    0x4(%eax),%ecx
    1248:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    124b:	39 f2                	cmp    %esi,%edx
    124d:	75 d8                	jne    1227 <free+0x47>
    p->s.size += bp->s.size;
    124f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    1252:	a3 64 1a 00 00       	mov    %eax,0x1a64
    p->s.size += bp->s.size;
    1257:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    125a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    125d:	89 10                	mov    %edx,(%eax)
}
    125f:	5b                   	pop    %ebx
    1260:	5e                   	pop    %esi
    1261:	5f                   	pop    %edi
    1262:	5d                   	pop    %ebp
    1263:	c3                   	ret    
    1264:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    126a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001270 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1270:	55                   	push   %ebp
    1271:	89 e5                	mov    %esp,%ebp
    1273:	57                   	push   %edi
    1274:	56                   	push   %esi
    1275:	53                   	push   %ebx
    1276:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1279:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    127c:	8b 1d 64 1a 00 00    	mov    0x1a64,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1282:	8d 48 07             	lea    0x7(%eax),%ecx
    1285:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1288:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    128a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    128d:	0f 84 9b 00 00 00    	je     132e <malloc+0xbe>
    1293:	8b 13                	mov    (%ebx),%edx
    1295:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1298:	39 fe                	cmp    %edi,%esi
    129a:	76 64                	jbe    1300 <malloc+0x90>
    129c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    12a3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    12a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    12ab:	eb 0e                	jmp    12bb <malloc+0x4b>
    12ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12b0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12b2:	8b 78 04             	mov    0x4(%eax),%edi
    12b5:	39 fe                	cmp    %edi,%esi
    12b7:	76 4f                	jbe    1308 <malloc+0x98>
    12b9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12bb:	3b 15 64 1a 00 00    	cmp    0x1a64,%edx
    12c1:	75 ed                	jne    12b0 <malloc+0x40>
  if(nu < 4096)
    12c3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    12c6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    12cc:	bf 00 10 00 00       	mov    $0x1000,%edi
    12d1:	0f 43 fe             	cmovae %esi,%edi
    12d4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    12d7:	89 04 24             	mov    %eax,(%esp)
    12da:	e8 3b fc ff ff       	call   f1a <sbrk>
  if(p == (char*)-1)
    12df:	83 f8 ff             	cmp    $0xffffffff,%eax
    12e2:	74 18                	je     12fc <malloc+0x8c>
  hp->s.size = nu;
    12e4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    12e7:	83 c0 08             	add    $0x8,%eax
    12ea:	89 04 24             	mov    %eax,(%esp)
    12ed:	e8 ee fe ff ff       	call   11e0 <free>
  return freep;
    12f2:	8b 15 64 1a 00 00    	mov    0x1a64,%edx
      if((p = morecore(nunits)) == 0)
    12f8:	85 d2                	test   %edx,%edx
    12fa:	75 b4                	jne    12b0 <malloc+0x40>
        return 0;
    12fc:	31 c0                	xor    %eax,%eax
    12fe:	eb 20                	jmp    1320 <malloc+0xb0>
    if(p->s.size >= nunits){
    1300:	89 d0                	mov    %edx,%eax
    1302:	89 da                	mov    %ebx,%edx
    1304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1308:	39 fe                	cmp    %edi,%esi
    130a:	74 1c                	je     1328 <malloc+0xb8>
        p->s.size -= nunits;
    130c:	29 f7                	sub    %esi,%edi
    130e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    1311:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    1314:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    1317:	89 15 64 1a 00 00    	mov    %edx,0x1a64
      return (void*)(p + 1);
    131d:	83 c0 08             	add    $0x8,%eax
  }
}
    1320:	83 c4 1c             	add    $0x1c,%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    1328:	8b 08                	mov    (%eax),%ecx
    132a:	89 0a                	mov    %ecx,(%edx)
    132c:	eb e9                	jmp    1317 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    132e:	c7 05 64 1a 00 00 68 	movl   $0x1a68,0x1a64
    1335:	1a 00 00 
    base.s.size = 0;
    1338:	ba 68 1a 00 00       	mov    $0x1a68,%edx
    base.s.ptr = freep = prevp = &base;
    133d:	c7 05 68 1a 00 00 68 	movl   $0x1a68,0x1a68
    1344:	1a 00 00 
    base.s.size = 0;
    1347:	c7 05 6c 1a 00 00 00 	movl   $0x0,0x1a6c
    134e:	00 00 00 
    1351:	e9 46 ff ff ff       	jmp    129c <malloc+0x2c>
