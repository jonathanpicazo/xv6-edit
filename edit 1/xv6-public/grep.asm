
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 e4 f0             	and    $0xfffffff0,%esp
   9:	83 ec 10             	sub    $0x10,%esp
   c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  int fd, i;
  char *pattern;

  if(argc <= 1){
   f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  13:	0f 8e 85 00 00 00    	jle    9e <main+0x9e>
    printf(2, "usage: grep pattern [file ...]\n");
    exit(0);
  }
  pattern = argv[1];
  19:	8b 43 04             	mov    0x4(%ebx),%eax

  if(argc <= 2){
  1c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
  pattern = argv[1];
  20:	89 44 24 0c          	mov    %eax,0xc(%esp)
  if(argc <= 2){
  24:	0f 84 cc 00 00 00    	je     f6 <main+0xf6>
  2a:	be 02 00 00 00       	mov    $0x2,%esi
  2f:	eb 2b                	jmp    5c <main+0x5c>
  31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 2; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit(0);
    }
    grep(pattern, fd);
  38:	8b 44 24 0c          	mov    0xc(%esp),%eax
  for(i = 2; i < argc; i++){
  3c:	83 c6 01             	add    $0x1,%esi
    grep(pattern, fd);
  3f:	89 7c 24 04          	mov    %edi,0x4(%esp)
  43:	89 04 24             	mov    %eax,(%esp)
  46:	e8 15 02 00 00       	call   260 <grep>
    close(fd);
  4b:	89 3c 24             	mov    %edi,(%esp)
  4e:	e8 67 05 00 00       	call   5ba <close>
  for(i = 2; i < argc; i++){
  53:	39 75 08             	cmp    %esi,0x8(%ebp)
  56:	0f 8e 84 00 00 00    	jle    e0 <main+0xe0>
    if((fd = open(argv[i], 0)) < 0){
  5c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  63:	00 
  64:	8b 04 b3             	mov    (%ebx,%esi,4),%eax
  67:	89 04 24             	mov    %eax,(%esp)
  6a:	e8 63 05 00 00       	call   5d2 <open>
  6f:	85 c0                	test   %eax,%eax
  71:	89 c7                	mov    %eax,%edi
  73:	79 c3                	jns    38 <main+0x38>
      printf(1, "grep: cannot open %s\n", argv[i]);
  75:	8b 0c b3             	mov    (%ebx,%esi,4),%ecx
  78:	c7 44 24 04 78 0a 00 	movl   $0xa78,0x4(%esp)
  7f:	00 
  80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  87:	89 4c 24 08          	mov    %ecx,0x8(%esp)
  8b:	e8 60 06 00 00       	call   6f0 <printf>
      exit(0);
  90:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  97:	e8 f6 04 00 00       	call   592 <exit>
  9c:	eb 9a                	jmp    38 <main+0x38>
    printf(2, "usage: grep pattern [file ...]\n");
  9e:	c7 44 24 04 58 0a 00 	movl   $0xa58,0x4(%esp)
  a5:	00 
  a6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  ad:	e8 3e 06 00 00       	call   6f0 <printf>
    exit(0);
  b2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  b9:	e8 d4 04 00 00       	call   592 <exit>
    grep(pattern, 0);
  be:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  c5:	00 
  c6:	8b 43 04             	mov    0x4(%ebx),%eax
  c9:	89 04 24             	mov    %eax,(%esp)
  cc:	e8 8f 01 00 00       	call   260 <grep>
    exit(0);
  d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  d8:	e8 b5 04 00 00       	call   592 <exit>
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  }
  exit(0);
  e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  e7:	e8 a6 04 00 00       	call   592 <exit>
  return 0;
}
  ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
  ef:	31 c0                	xor    %eax,%eax
  f1:	5b                   	pop    %ebx
  f2:	5e                   	pop    %esi
  f3:	5f                   	pop    %edi
  f4:	5d                   	pop    %ebp
  f5:	c3                   	ret    
    grep(pattern, 0);
  f6:	8b 44 24 0c          	mov    0xc(%esp),%eax
  fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 101:	00 
 102:	89 04 24             	mov    %eax,(%esp)
 105:	e8 56 01 00 00       	call   260 <grep>
    exit(0);
 10a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 111:	e8 7c 04 00 00       	call   592 <exit>
 116:	eb c8                	jmp    e0 <main+0xe0>
 118:	66 90                	xchg   %ax,%ax
 11a:	66 90                	xchg   %ax,%ax
 11c:	66 90                	xchg   %ax,%ax
 11e:	66 90                	xchg   %ax,%ax

00000120 <matchstar>:
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	56                   	push   %esi
 125:	53                   	push   %ebx
 126:	83 ec 1c             	sub    $0x1c,%esp
 129:	8b 75 08             	mov    0x8(%ebp),%esi
 12c:	8b 7d 0c             	mov    0xc(%ebp),%edi
 12f:	8b 5d 10             	mov    0x10(%ebp),%ebx
 132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
 138:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 13c:	89 3c 24             	mov    %edi,(%esp)
 13f:	e8 3c 00 00 00       	call   180 <matchhere>
 144:	85 c0                	test   %eax,%eax
 146:	75 20                	jne    168 <matchstar+0x48>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 148:	0f be 13             	movsbl (%ebx),%edx
 14b:	84 d2                	test   %dl,%dl
 14d:	74 0c                	je     15b <matchstar+0x3b>
 14f:	83 c3 01             	add    $0x1,%ebx
 152:	39 f2                	cmp    %esi,%edx
 154:	74 e2                	je     138 <matchstar+0x18>
 156:	83 fe 2e             	cmp    $0x2e,%esi
 159:	74 dd                	je     138 <matchstar+0x18>
  return 0;
}
 15b:	83 c4 1c             	add    $0x1c,%esp
 15e:	5b                   	pop    %ebx
 15f:	5e                   	pop    %esi
 160:	5f                   	pop    %edi
 161:	5d                   	pop    %ebp
 162:	c3                   	ret    
 163:	90                   	nop
 164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 168:	83 c4 1c             	add    $0x1c,%esp
      return 1;
 16b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 170:	5b                   	pop    %ebx
 171:	5e                   	pop    %esi
 172:	5f                   	pop    %edi
 173:	5d                   	pop    %ebp
 174:	c3                   	ret    
 175:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <matchhere>:
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	53                   	push   %ebx
 184:	83 ec 14             	sub    $0x14,%esp
 187:	8b 55 08             	mov    0x8(%ebp),%edx
 18a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  if(re[0] == '\0')
 18d:	0f be 02             	movsbl (%edx),%eax
 190:	84 c0                	test   %al,%al
 192:	75 20                	jne    1b4 <matchhere+0x34>
 194:	eb 42                	jmp    1d8 <matchhere+0x58>
 196:	66 90                	xchg   %ax,%ax
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 198:	0f b6 19             	movzbl (%ecx),%ebx
 19b:	84 db                	test   %bl,%bl
 19d:	74 31                	je     1d0 <matchhere+0x50>
 19f:	3c 2e                	cmp    $0x2e,%al
 1a1:	74 04                	je     1a7 <matchhere+0x27>
 1a3:	38 d8                	cmp    %bl,%al
 1a5:	75 29                	jne    1d0 <matchhere+0x50>
    return matchhere(re+1, text+1);
 1a7:	83 c2 01             	add    $0x1,%edx
  if(re[0] == '\0')
 1aa:	0f be 02             	movsbl (%edx),%eax
    return matchhere(re+1, text+1);
 1ad:	83 c1 01             	add    $0x1,%ecx
  if(re[0] == '\0')
 1b0:	84 c0                	test   %al,%al
 1b2:	74 24                	je     1d8 <matchhere+0x58>
  if(re[1] == '*')
 1b4:	0f b6 5a 01          	movzbl 0x1(%edx),%ebx
 1b8:	80 fb 2a             	cmp    $0x2a,%bl
 1bb:	74 2b                	je     1e8 <matchhere+0x68>
  if(re[0] == '$' && re[1] == '\0')
 1bd:	3c 24                	cmp    $0x24,%al
 1bf:	75 d7                	jne    198 <matchhere+0x18>
 1c1:	84 db                	test   %bl,%bl
 1c3:	74 3c                	je     201 <matchhere+0x81>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 1c5:	0f b6 19             	movzbl (%ecx),%ebx
 1c8:	84 db                	test   %bl,%bl
 1ca:	75 d7                	jne    1a3 <matchhere+0x23>
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1d0:	31 c0                	xor    %eax,%eax
}
 1d2:	83 c4 14             	add    $0x14,%esp
 1d5:	5b                   	pop    %ebx
 1d6:	5d                   	pop    %ebp
 1d7:	c3                   	ret    
 1d8:	83 c4 14             	add    $0x14,%esp
    return 1;
 1db:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1e0:	5b                   	pop    %ebx
 1e1:	5d                   	pop    %ebp
 1e2:	c3                   	ret    
 1e3:	90                   	nop
 1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return matchstar(re[0], re+2, text);
 1e8:	83 c2 02             	add    $0x2,%edx
 1eb:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 1ef:	89 54 24 04          	mov    %edx,0x4(%esp)
 1f3:	89 04 24             	mov    %eax,(%esp)
 1f6:	e8 25 ff ff ff       	call   120 <matchstar>
}
 1fb:	83 c4 14             	add    $0x14,%esp
 1fe:	5b                   	pop    %ebx
 1ff:	5d                   	pop    %ebp
 200:	c3                   	ret    
    return *text == '\0';
 201:	31 c0                	xor    %eax,%eax
 203:	80 39 00             	cmpb   $0x0,(%ecx)
 206:	0f 94 c0             	sete   %al
 209:	eb c7                	jmp    1d2 <matchhere+0x52>
 20b:	90                   	nop
 20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000210 <match>:
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	56                   	push   %esi
 214:	53                   	push   %ebx
 215:	83 ec 10             	sub    $0x10,%esp
 218:	8b 75 08             	mov    0x8(%ebp),%esi
 21b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '^')
 21e:	80 3e 5e             	cmpb   $0x5e,(%esi)
 221:	75 0e                	jne    231 <match+0x21>
 223:	eb 28                	jmp    24d <match+0x3d>
 225:	8d 76 00             	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 228:	83 c3 01             	add    $0x1,%ebx
 22b:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
 22f:	74 15                	je     246 <match+0x36>
    if(matchhere(re, text))
 231:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 235:	89 34 24             	mov    %esi,(%esp)
 238:	e8 43 ff ff ff       	call   180 <matchhere>
 23d:	85 c0                	test   %eax,%eax
 23f:	74 e7                	je     228 <match+0x18>
      return 1;
 241:	b8 01 00 00 00       	mov    $0x1,%eax
}
 246:	83 c4 10             	add    $0x10,%esp
 249:	5b                   	pop    %ebx
 24a:	5e                   	pop    %esi
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
    return matchhere(re+1, text);
 24d:	83 c6 01             	add    $0x1,%esi
 250:	89 75 08             	mov    %esi,0x8(%ebp)
}
 253:	83 c4 10             	add    $0x10,%esp
 256:	5b                   	pop    %ebx
 257:	5e                   	pop    %esi
 258:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 259:	e9 22 ff ff ff       	jmp    180 <matchhere>
 25e:	66 90                	xchg   %ax,%ax

00000260 <grep>:
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	56                   	push   %esi
 265:	53                   	push   %ebx
 266:	83 ec 1c             	sub    $0x1c,%esp
 269:	8b 75 08             	mov    0x8(%ebp),%esi
  m = 0;
 26c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 273:	90                   	nop
 274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 278:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 27b:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 280:	29 d0                	sub    %edx,%eax
 282:	89 44 24 08          	mov    %eax,0x8(%esp)
 286:	89 d0                	mov    %edx,%eax
 288:	05 20 0e 00 00       	add    $0xe20,%eax
 28d:	89 44 24 04          	mov    %eax,0x4(%esp)
 291:	8b 45 0c             	mov    0xc(%ebp),%eax
 294:	89 04 24             	mov    %eax,(%esp)
 297:	e8 0e 03 00 00       	call   5aa <read>
 29c:	85 c0                	test   %eax,%eax
 29e:	0f 8e b8 00 00 00    	jle    35c <grep+0xfc>
    m += n;
 2a4:	01 45 e4             	add    %eax,-0x1c(%ebp)
    p = buf;
 2a7:	bb 20 0e 00 00       	mov    $0xe20,%ebx
    buf[m] = '\0';
 2ac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 2af:	c6 80 20 0e 00 00 00 	movb   $0x0,0xe20(%eax)
 2b6:	66 90                	xchg   %ax,%ax
    while((q = strchr(p, '\n')) != 0){
 2b8:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 2bf:	00 
 2c0:	89 1c 24             	mov    %ebx,(%esp)
 2c3:	e8 78 01 00 00       	call   440 <strchr>
 2c8:	85 c0                	test   %eax,%eax
 2ca:	89 c7                	mov    %eax,%edi
 2cc:	74 42                	je     310 <grep+0xb0>
      *q = 0;
 2ce:	c6 07 00             	movb   $0x0,(%edi)
      if(match(pattern, p)){
 2d1:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2d5:	89 34 24             	mov    %esi,(%esp)
 2d8:	e8 33 ff ff ff       	call   210 <match>
 2dd:	85 c0                	test   %eax,%eax
 2df:	75 07                	jne    2e8 <grep+0x88>
 2e1:	8d 5f 01             	lea    0x1(%edi),%ebx
 2e4:	eb d2                	jmp    2b8 <grep+0x58>
 2e6:	66 90                	xchg   %ax,%ax
        *q = '\n';
 2e8:	c6 07 0a             	movb   $0xa,(%edi)
        write(1, p, q+1 - p);
 2eb:	83 c7 01             	add    $0x1,%edi
 2ee:	89 f8                	mov    %edi,%eax
 2f0:	29 d8                	sub    %ebx,%eax
 2f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2f6:	89 fb                	mov    %edi,%ebx
 2f8:	89 44 24 08          	mov    %eax,0x8(%esp)
 2fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 303:	e8 aa 02 00 00       	call   5b2 <write>
 308:	eb ae                	jmp    2b8 <grep+0x58>
 30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(p == buf)
 310:	81 fb 20 0e 00 00    	cmp    $0xe20,%ebx
 316:	74 38                	je     350 <grep+0xf0>
    if(m > 0){
 318:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 31b:	85 c0                	test   %eax,%eax
 31d:	0f 8e 55 ff ff ff    	jle    278 <grep+0x18>
      m -= p - buf;
 323:	b8 20 0e 00 00       	mov    $0xe20,%eax
 328:	29 d8                	sub    %ebx,%eax
 32a:	01 45 e4             	add    %eax,-0x1c(%ebp)
      memmove(buf, p, m);
 32d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 330:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 334:	c7 04 24 20 0e 00 00 	movl   $0xe20,(%esp)
 33b:	89 44 24 08          	mov    %eax,0x8(%esp)
 33f:	e8 1c 02 00 00       	call   560 <memmove>
 344:	e9 2f ff ff ff       	jmp    278 <grep+0x18>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      m = 0;
 350:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 357:	e9 1c ff ff ff       	jmp    278 <grep+0x18>
}
 35c:	83 c4 1c             	add    $0x1c,%esp
 35f:	5b                   	pop    %ebx
 360:	5e                   	pop    %esi
 361:	5f                   	pop    %edi
 362:	5d                   	pop    %ebp
 363:	c3                   	ret    
 364:	66 90                	xchg   %ax,%ax
 366:	66 90                	xchg   %ax,%ax
 368:	66 90                	xchg   %ax,%ax
 36a:	66 90                	xchg   %ax,%ax
 36c:	66 90                	xchg   %ax,%ax
 36e:	66 90                	xchg   %ax,%ax

00000370 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 45 08             	mov    0x8(%ebp),%eax
 376:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 379:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 37a:	89 c2                	mov    %eax,%edx
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 380:	83 c1 01             	add    $0x1,%ecx
 383:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 387:	83 c2 01             	add    $0x1,%edx
 38a:	84 db                	test   %bl,%bl
 38c:	88 5a ff             	mov    %bl,-0x1(%edx)
 38f:	75 ef                	jne    380 <strcpy+0x10>
    ;
  return os;
}
 391:	5b                   	pop    %ebx
 392:	5d                   	pop    %ebp
 393:	c3                   	ret    
 394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 39a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 55 08             	mov    0x8(%ebp),%edx
 3a6:	53                   	push   %ebx
 3a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3aa:	0f b6 02             	movzbl (%edx),%eax
 3ad:	84 c0                	test   %al,%al
 3af:	74 2d                	je     3de <strcmp+0x3e>
 3b1:	0f b6 19             	movzbl (%ecx),%ebx
 3b4:	38 d8                	cmp    %bl,%al
 3b6:	74 0e                	je     3c6 <strcmp+0x26>
 3b8:	eb 2b                	jmp    3e5 <strcmp+0x45>
 3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3c0:	38 c8                	cmp    %cl,%al
 3c2:	75 15                	jne    3d9 <strcmp+0x39>
    p++, q++;
 3c4:	89 d9                	mov    %ebx,%ecx
 3c6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 3c9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3cc:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3cf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 3d3:	84 c0                	test   %al,%al
 3d5:	75 e9                	jne    3c0 <strcmp+0x20>
 3d7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 3d9:	29 c8                	sub    %ecx,%eax
}
 3db:	5b                   	pop    %ebx
 3dc:	5d                   	pop    %ebp
 3dd:	c3                   	ret    
 3de:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 3e1:	31 c0                	xor    %eax,%eax
 3e3:	eb f4                	jmp    3d9 <strcmp+0x39>
 3e5:	0f b6 cb             	movzbl %bl,%ecx
 3e8:	eb ef                	jmp    3d9 <strcmp+0x39>
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <strlen>:

uint
strlen(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3f6:	80 39 00             	cmpb   $0x0,(%ecx)
 3f9:	74 12                	je     40d <strlen+0x1d>
 3fb:	31 d2                	xor    %edx,%edx
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
 400:	83 c2 01             	add    $0x1,%edx
 403:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 407:	89 d0                	mov    %edx,%eax
 409:	75 f5                	jne    400 <strlen+0x10>
    ;
  return n;
}
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 40d:	31 c0                	xor    %eax,%eax
}
 40f:	5d                   	pop    %ebp
 410:	c3                   	ret    
 411:	eb 0d                	jmp    420 <memset>
 413:	90                   	nop
 414:	90                   	nop
 415:	90                   	nop
 416:	90                   	nop
 417:	90                   	nop
 418:	90                   	nop
 419:	90                   	nop
 41a:	90                   	nop
 41b:	90                   	nop
 41c:	90                   	nop
 41d:	90                   	nop
 41e:	90                   	nop
 41f:	90                   	nop

00000420 <memset>:

void*
memset(void *dst, int c, uint n)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 55 08             	mov    0x8(%ebp),%edx
 426:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 427:	8b 4d 10             	mov    0x10(%ebp),%ecx
 42a:	8b 45 0c             	mov    0xc(%ebp),%eax
 42d:	89 d7                	mov    %edx,%edi
 42f:	fc                   	cld    
 430:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 432:	89 d0                	mov    %edx,%eax
 434:	5f                   	pop    %edi
 435:	5d                   	pop    %ebp
 436:	c3                   	ret    
 437:	89 f6                	mov    %esi,%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <strchr>:

char*
strchr(const char *s, char c)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	53                   	push   %ebx
 447:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 44a:	0f b6 18             	movzbl (%eax),%ebx
 44d:	84 db                	test   %bl,%bl
 44f:	74 1d                	je     46e <strchr+0x2e>
    if(*s == c)
 451:	38 d3                	cmp    %dl,%bl
 453:	89 d1                	mov    %edx,%ecx
 455:	75 0d                	jne    464 <strchr+0x24>
 457:	eb 17                	jmp    470 <strchr+0x30>
 459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 460:	38 ca                	cmp    %cl,%dl
 462:	74 0c                	je     470 <strchr+0x30>
  for(; *s; s++)
 464:	83 c0 01             	add    $0x1,%eax
 467:	0f b6 10             	movzbl (%eax),%edx
 46a:	84 d2                	test   %dl,%dl
 46c:	75 f2                	jne    460 <strchr+0x20>
      return (char*)s;
  return 0;
 46e:	31 c0                	xor    %eax,%eax
}
 470:	5b                   	pop    %ebx
 471:	5d                   	pop    %ebp
 472:	c3                   	ret    
 473:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <gets>:

char*
gets(char *buf, int max)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 485:	31 f6                	xor    %esi,%esi
{
 487:	53                   	push   %ebx
 488:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 48b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 48e:	eb 31                	jmp    4c1 <gets+0x41>
    cc = read(0, &c, 1);
 490:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 497:	00 
 498:	89 7c 24 04          	mov    %edi,0x4(%esp)
 49c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4a3:	e8 02 01 00 00       	call   5aa <read>
    if(cc < 1)
 4a8:	85 c0                	test   %eax,%eax
 4aa:	7e 1d                	jle    4c9 <gets+0x49>
      break;
    buf[i++] = c;
 4ac:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 4b0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 4b2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 4b5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 4b7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4bb:	74 0c                	je     4c9 <gets+0x49>
 4bd:	3c 0a                	cmp    $0xa,%al
 4bf:	74 08                	je     4c9 <gets+0x49>
  for(i=0; i+1 < max; ){
 4c1:	8d 5e 01             	lea    0x1(%esi),%ebx
 4c4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4c7:	7c c7                	jl     490 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4c9:	8b 45 08             	mov    0x8(%ebp),%eax
 4cc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4d0:	83 c4 2c             	add    $0x2c,%esp
 4d3:	5b                   	pop    %ebx
 4d4:	5e                   	pop    %esi
 4d5:	5f                   	pop    %edi
 4d6:	5d                   	pop    %ebp
 4d7:	c3                   	ret    
 4d8:	90                   	nop
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004e0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	56                   	push   %esi
 4e4:	53                   	push   %ebx
 4e5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4e8:	8b 45 08             	mov    0x8(%ebp),%eax
 4eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 4f2:	00 
 4f3:	89 04 24             	mov    %eax,(%esp)
 4f6:	e8 d7 00 00 00       	call   5d2 <open>
  if(fd < 0)
 4fb:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 4fd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 4ff:	78 27                	js     528 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 501:	8b 45 0c             	mov    0xc(%ebp),%eax
 504:	89 1c 24             	mov    %ebx,(%esp)
 507:	89 44 24 04          	mov    %eax,0x4(%esp)
 50b:	e8 da 00 00 00       	call   5ea <fstat>
  close(fd);
 510:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 513:	89 c6                	mov    %eax,%esi
  close(fd);
 515:	e8 a0 00 00 00       	call   5ba <close>
  return r;
 51a:	89 f0                	mov    %esi,%eax
}
 51c:	83 c4 10             	add    $0x10,%esp
 51f:	5b                   	pop    %ebx
 520:	5e                   	pop    %esi
 521:	5d                   	pop    %ebp
 522:	c3                   	ret    
 523:	90                   	nop
 524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 528:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 52d:	eb ed                	jmp    51c <stat+0x3c>
 52f:	90                   	nop

00000530 <atoi>:

int
atoi(const char *s)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	8b 4d 08             	mov    0x8(%ebp),%ecx
 536:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 537:	0f be 11             	movsbl (%ecx),%edx
 53a:	8d 42 d0             	lea    -0x30(%edx),%eax
 53d:	3c 09                	cmp    $0x9,%al
  n = 0;
 53f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 544:	77 17                	ja     55d <atoi+0x2d>
 546:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 548:	83 c1 01             	add    $0x1,%ecx
 54b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 54e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 552:	0f be 11             	movsbl (%ecx),%edx
 555:	8d 5a d0             	lea    -0x30(%edx),%ebx
 558:	80 fb 09             	cmp    $0x9,%bl
 55b:	76 eb                	jbe    548 <atoi+0x18>
  return n;
}
 55d:	5b                   	pop    %ebx
 55e:	5d                   	pop    %ebp
 55f:	c3                   	ret    

00000560 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 560:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 561:	31 d2                	xor    %edx,%edx
{
 563:	89 e5                	mov    %esp,%ebp
 565:	56                   	push   %esi
 566:	8b 45 08             	mov    0x8(%ebp),%eax
 569:	53                   	push   %ebx
 56a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 56d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 570:	85 db                	test   %ebx,%ebx
 572:	7e 12                	jle    586 <memmove+0x26>
 574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 578:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 57c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 57f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 582:	39 da                	cmp    %ebx,%edx
 584:	75 f2                	jne    578 <memmove+0x18>
  return vdst;
}
 586:	5b                   	pop    %ebx
 587:	5e                   	pop    %esi
 588:	5d                   	pop    %ebp
 589:	c3                   	ret    

0000058a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 58a:	b8 01 00 00 00       	mov    $0x1,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <exit>:
SYSCALL(exit)
 592:	b8 02 00 00 00       	mov    $0x2,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <wait>:
SYSCALL(wait)
 59a:	b8 03 00 00 00       	mov    $0x3,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <pipe>:
SYSCALL(pipe)
 5a2:	b8 04 00 00 00       	mov    $0x4,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <read>:
SYSCALL(read)
 5aa:	b8 05 00 00 00       	mov    $0x5,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <write>:
SYSCALL(write)
 5b2:	b8 10 00 00 00       	mov    $0x10,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <close>:
SYSCALL(close)
 5ba:	b8 15 00 00 00       	mov    $0x15,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <kill>:
SYSCALL(kill)
 5c2:	b8 06 00 00 00       	mov    $0x6,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <exec>:
SYSCALL(exec)
 5ca:	b8 07 00 00 00       	mov    $0x7,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <open>:
SYSCALL(open)
 5d2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <mknod>:
SYSCALL(mknod)
 5da:	b8 11 00 00 00       	mov    $0x11,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <unlink>:
SYSCALL(unlink)
 5e2:	b8 12 00 00 00       	mov    $0x12,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <fstat>:
SYSCALL(fstat)
 5ea:	b8 08 00 00 00       	mov    $0x8,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <link>:
SYSCALL(link)
 5f2:	b8 13 00 00 00       	mov    $0x13,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <mkdir>:
SYSCALL(mkdir)
 5fa:	b8 14 00 00 00       	mov    $0x14,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <chdir>:
SYSCALL(chdir)
 602:	b8 09 00 00 00       	mov    $0x9,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <dup>:
SYSCALL(dup)
 60a:	b8 0a 00 00 00       	mov    $0xa,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <getpid>:
SYSCALL(getpid)
 612:	b8 0b 00 00 00       	mov    $0xb,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <sbrk>:
SYSCALL(sbrk)
 61a:	b8 0c 00 00 00       	mov    $0xc,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <sleep>:
SYSCALL(sleep)
 622:	b8 0d 00 00 00       	mov    $0xd,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <uptime>:
SYSCALL(uptime)
 62a:	b8 0e 00 00 00       	mov    $0xe,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <hello>:
SYSCALL(hello)
 632:	b8 18 00 00 00       	mov    $0x18,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <waitpid>:
SYSCALL(waitpid)
 63a:	b8 19 00 00 00       	mov    $0x19,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    
 642:	66 90                	xchg   %ax,%ax
 644:	66 90                	xchg   %ax,%ax
 646:	66 90                	xchg   %ax,%ax
 648:	66 90                	xchg   %ax,%ax
 64a:	66 90                	xchg   %ax,%ax
 64c:	66 90                	xchg   %ax,%ax
 64e:	66 90                	xchg   %ax,%ax

00000650 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	89 c6                	mov    %eax,%esi
 657:	53                   	push   %ebx
 658:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 65b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 65e:	85 db                	test   %ebx,%ebx
 660:	74 09                	je     66b <printint+0x1b>
 662:	89 d0                	mov    %edx,%eax
 664:	c1 e8 1f             	shr    $0x1f,%eax
 667:	84 c0                	test   %al,%al
 669:	75 75                	jne    6e0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 66b:	89 d0                	mov    %edx,%eax
  neg = 0;
 66d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 674:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 677:	31 ff                	xor    %edi,%edi
 679:	89 ce                	mov    %ecx,%esi
 67b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 67e:	eb 02                	jmp    682 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 680:	89 cf                	mov    %ecx,%edi
 682:	31 d2                	xor    %edx,%edx
 684:	f7 f6                	div    %esi
 686:	8d 4f 01             	lea    0x1(%edi),%ecx
 689:	0f b6 92 95 0a 00 00 	movzbl 0xa95(%edx),%edx
  }while((x /= base) != 0);
 690:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 692:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 695:	75 e9                	jne    680 <printint+0x30>
  if(neg)
 697:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 69a:	89 c8                	mov    %ecx,%eax
 69c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 69f:	85 d2                	test   %edx,%edx
 6a1:	74 08                	je     6ab <printint+0x5b>
    buf[i++] = '-';
 6a3:	8d 4f 02             	lea    0x2(%edi),%ecx
 6a6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 6ab:	8d 79 ff             	lea    -0x1(%ecx),%edi
 6ae:	66 90                	xchg   %ax,%ax
 6b0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 6b5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 6b8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6bf:	00 
 6c0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 6c4:	89 34 24             	mov    %esi,(%esp)
 6c7:	88 45 d7             	mov    %al,-0x29(%ebp)
 6ca:	e8 e3 fe ff ff       	call   5b2 <write>
  while(--i >= 0)
 6cf:	83 ff ff             	cmp    $0xffffffff,%edi
 6d2:	75 dc                	jne    6b0 <printint+0x60>
    putc(fd, buf[i]);
}
 6d4:	83 c4 4c             	add    $0x4c,%esp
 6d7:	5b                   	pop    %ebx
 6d8:	5e                   	pop    %esi
 6d9:	5f                   	pop    %edi
 6da:	5d                   	pop    %ebp
 6db:	c3                   	ret    
 6dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 6e0:	89 d0                	mov    %edx,%eax
 6e2:	f7 d8                	neg    %eax
    neg = 1;
 6e4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 6eb:	eb 87                	jmp    674 <printint+0x24>
 6ed:	8d 76 00             	lea    0x0(%esi),%esi

000006f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 6f4:	31 ff                	xor    %edi,%edi
{
 6f6:	56                   	push   %esi
 6f7:	53                   	push   %ebx
 6f8:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6fb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 6fe:	8d 45 10             	lea    0x10(%ebp),%eax
{
 701:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 704:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 707:	0f b6 13             	movzbl (%ebx),%edx
 70a:	83 c3 01             	add    $0x1,%ebx
 70d:	84 d2                	test   %dl,%dl
 70f:	75 39                	jne    74a <printf+0x5a>
 711:	e9 c2 00 00 00       	jmp    7d8 <printf+0xe8>
 716:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 718:	83 fa 25             	cmp    $0x25,%edx
 71b:	0f 84 bf 00 00 00    	je     7e0 <printf+0xf0>
  write(fd, &c, 1);
 721:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 724:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 72b:	00 
 72c:	89 44 24 04          	mov    %eax,0x4(%esp)
 730:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 733:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 736:	e8 77 fe ff ff       	call   5b2 <write>
 73b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 73e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 742:	84 d2                	test   %dl,%dl
 744:	0f 84 8e 00 00 00    	je     7d8 <printf+0xe8>
    if(state == 0){
 74a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 74c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 74f:	74 c7                	je     718 <printf+0x28>
      }
    } else if(state == '%'){
 751:	83 ff 25             	cmp    $0x25,%edi
 754:	75 e5                	jne    73b <printf+0x4b>
      if(c == 'd'){
 756:	83 fa 64             	cmp    $0x64,%edx
 759:	0f 84 31 01 00 00    	je     890 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 75f:	25 f7 00 00 00       	and    $0xf7,%eax
 764:	83 f8 70             	cmp    $0x70,%eax
 767:	0f 84 83 00 00 00    	je     7f0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 76d:	83 fa 73             	cmp    $0x73,%edx
 770:	0f 84 a2 00 00 00    	je     818 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 776:	83 fa 63             	cmp    $0x63,%edx
 779:	0f 84 35 01 00 00    	je     8b4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 77f:	83 fa 25             	cmp    $0x25,%edx
 782:	0f 84 e0 00 00 00    	je     868 <printf+0x178>
  write(fd, &c, 1);
 788:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 78b:	83 c3 01             	add    $0x1,%ebx
 78e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 795:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 796:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 798:	89 44 24 04          	mov    %eax,0x4(%esp)
 79c:	89 34 24             	mov    %esi,(%esp)
 79f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 7a2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 7a6:	e8 07 fe ff ff       	call   5b2 <write>
        putc(fd, c);
 7ab:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 7ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7b8:	00 
 7b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 7bd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 7c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7c3:	e8 ea fd ff ff       	call   5b2 <write>
  for(i = 0; fmt[i]; i++){
 7c8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7cc:	84 d2                	test   %dl,%dl
 7ce:	0f 85 76 ff ff ff    	jne    74a <printf+0x5a>
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 7d8:	83 c4 3c             	add    $0x3c,%esp
 7db:	5b                   	pop    %ebx
 7dc:	5e                   	pop    %esi
 7dd:	5f                   	pop    %edi
 7de:	5d                   	pop    %ebp
 7df:	c3                   	ret    
        state = '%';
 7e0:	bf 25 00 00 00       	mov    $0x25,%edi
 7e5:	e9 51 ff ff ff       	jmp    73b <printf+0x4b>
 7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7f3:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 7f8:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 7fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 801:	8b 10                	mov    (%eax),%edx
 803:	89 f0                	mov    %esi,%eax
 805:	e8 46 fe ff ff       	call   650 <printint>
        ap++;
 80a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 80e:	e9 28 ff ff ff       	jmp    73b <printf+0x4b>
 813:	90                   	nop
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 818:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 81b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 81f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 821:	b8 8e 0a 00 00       	mov    $0xa8e,%eax
 826:	85 ff                	test   %edi,%edi
 828:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 82b:	0f b6 07             	movzbl (%edi),%eax
 82e:	84 c0                	test   %al,%al
 830:	74 2a                	je     85c <printf+0x16c>
 832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 838:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 83b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 83e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 841:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 848:	00 
 849:	89 44 24 04          	mov    %eax,0x4(%esp)
 84d:	89 34 24             	mov    %esi,(%esp)
 850:	e8 5d fd ff ff       	call   5b2 <write>
        while(*s != 0){
 855:	0f b6 07             	movzbl (%edi),%eax
 858:	84 c0                	test   %al,%al
 85a:	75 dc                	jne    838 <printf+0x148>
      state = 0;
 85c:	31 ff                	xor    %edi,%edi
 85e:	e9 d8 fe ff ff       	jmp    73b <printf+0x4b>
 863:	90                   	nop
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 868:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 86b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 86d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 874:	00 
 875:	89 44 24 04          	mov    %eax,0x4(%esp)
 879:	89 34 24             	mov    %esi,(%esp)
 87c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 880:	e8 2d fd ff ff       	call   5b2 <write>
 885:	e9 b1 fe ff ff       	jmp    73b <printf+0x4b>
 88a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 890:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 893:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 898:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 89b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8a2:	8b 10                	mov    (%eax),%edx
 8a4:	89 f0                	mov    %esi,%eax
 8a6:	e8 a5 fd ff ff       	call   650 <printint>
        ap++;
 8ab:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8af:	e9 87 fe ff ff       	jmp    73b <printf+0x4b>
        putc(fd, *ap);
 8b4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 8b7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 8b9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8bb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8c2:	00 
 8c3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 8c6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 8c9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8d0:	e8 dd fc ff ff       	call   5b2 <write>
        ap++;
 8d5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8d9:	e9 5d fe ff ff       	jmp    73b <printf+0x4b>
 8de:	66 90                	xchg   %ax,%ax

000008e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	a1 00 0e 00 00       	mov    0xe00,%eax
{
 8e6:	89 e5                	mov    %esp,%ebp
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	53                   	push   %ebx
 8eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8ee:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 8f0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f3:	39 d0                	cmp    %edx,%eax
 8f5:	72 11                	jb     908 <free+0x28>
 8f7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f8:	39 c8                	cmp    %ecx,%eax
 8fa:	72 04                	jb     900 <free+0x20>
 8fc:	39 ca                	cmp    %ecx,%edx
 8fe:	72 10                	jb     910 <free+0x30>
 900:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 902:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 904:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 906:	73 f0                	jae    8f8 <free+0x18>
 908:	39 ca                	cmp    %ecx,%edx
 90a:	72 04                	jb     910 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 90c:	39 c8                	cmp    %ecx,%eax
 90e:	72 f0                	jb     900 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 910:	8b 73 fc             	mov    -0x4(%ebx),%esi
 913:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 916:	39 cf                	cmp    %ecx,%edi
 918:	74 1e                	je     938 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 91a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 91d:	8b 48 04             	mov    0x4(%eax),%ecx
 920:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 923:	39 f2                	cmp    %esi,%edx
 925:	74 28                	je     94f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 927:	89 10                	mov    %edx,(%eax)
  freep = p;
 929:	a3 00 0e 00 00       	mov    %eax,0xe00
}
 92e:	5b                   	pop    %ebx
 92f:	5e                   	pop    %esi
 930:	5f                   	pop    %edi
 931:	5d                   	pop    %ebp
 932:	c3                   	ret    
 933:	90                   	nop
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 938:	03 71 04             	add    0x4(%ecx),%esi
 93b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 93e:	8b 08                	mov    (%eax),%ecx
 940:	8b 09                	mov    (%ecx),%ecx
 942:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 945:	8b 48 04             	mov    0x4(%eax),%ecx
 948:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 94b:	39 f2                	cmp    %esi,%edx
 94d:	75 d8                	jne    927 <free+0x47>
    p->s.size += bp->s.size;
 94f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 952:	a3 00 0e 00 00       	mov    %eax,0xe00
    p->s.size += bp->s.size;
 957:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 95a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 95d:	89 10                	mov    %edx,(%eax)
}
 95f:	5b                   	pop    %ebx
 960:	5e                   	pop    %esi
 961:	5f                   	pop    %edi
 962:	5d                   	pop    %ebp
 963:	c3                   	ret    
 964:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 96a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000970 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
 976:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 979:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 97c:	8b 1d 00 0e 00 00    	mov    0xe00,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 982:	8d 48 07             	lea    0x7(%eax),%ecx
 985:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 988:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 98a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 98d:	0f 84 9b 00 00 00    	je     a2e <malloc+0xbe>
 993:	8b 13                	mov    (%ebx),%edx
 995:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 998:	39 fe                	cmp    %edi,%esi
 99a:	76 64                	jbe    a00 <malloc+0x90>
 99c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 9a3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 9a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9ab:	eb 0e                	jmp    9bb <malloc+0x4b>
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9b2:	8b 78 04             	mov    0x4(%eax),%edi
 9b5:	39 fe                	cmp    %edi,%esi
 9b7:	76 4f                	jbe    a08 <malloc+0x98>
 9b9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9bb:	3b 15 00 0e 00 00    	cmp    0xe00,%edx
 9c1:	75 ed                	jne    9b0 <malloc+0x40>
  if(nu < 4096)
 9c3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9c6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 9cc:	bf 00 10 00 00       	mov    $0x1000,%edi
 9d1:	0f 43 fe             	cmovae %esi,%edi
 9d4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 9d7:	89 04 24             	mov    %eax,(%esp)
 9da:	e8 3b fc ff ff       	call   61a <sbrk>
  if(p == (char*)-1)
 9df:	83 f8 ff             	cmp    $0xffffffff,%eax
 9e2:	74 18                	je     9fc <malloc+0x8c>
  hp->s.size = nu;
 9e4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 9e7:	83 c0 08             	add    $0x8,%eax
 9ea:	89 04 24             	mov    %eax,(%esp)
 9ed:	e8 ee fe ff ff       	call   8e0 <free>
  return freep;
 9f2:	8b 15 00 0e 00 00    	mov    0xe00,%edx
      if((p = morecore(nunits)) == 0)
 9f8:	85 d2                	test   %edx,%edx
 9fa:	75 b4                	jne    9b0 <malloc+0x40>
        return 0;
 9fc:	31 c0                	xor    %eax,%eax
 9fe:	eb 20                	jmp    a20 <malloc+0xb0>
    if(p->s.size >= nunits){
 a00:	89 d0                	mov    %edx,%eax
 a02:	89 da                	mov    %ebx,%edx
 a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 a08:	39 fe                	cmp    %edi,%esi
 a0a:	74 1c                	je     a28 <malloc+0xb8>
        p->s.size -= nunits;
 a0c:	29 f7                	sub    %esi,%edi
 a0e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 a11:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 a14:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a17:	89 15 00 0e 00 00    	mov    %edx,0xe00
      return (void*)(p + 1);
 a1d:	83 c0 08             	add    $0x8,%eax
  }
}
 a20:	83 c4 1c             	add    $0x1c,%esp
 a23:	5b                   	pop    %ebx
 a24:	5e                   	pop    %esi
 a25:	5f                   	pop    %edi
 a26:	5d                   	pop    %ebp
 a27:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 a28:	8b 08                	mov    (%eax),%ecx
 a2a:	89 0a                	mov    %ecx,(%edx)
 a2c:	eb e9                	jmp    a17 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 a2e:	c7 05 00 0e 00 00 04 	movl   $0xe04,0xe00
 a35:	0e 00 00 
    base.s.size = 0;
 a38:	ba 04 0e 00 00       	mov    $0xe04,%edx
    base.s.ptr = freep = prevp = &base;
 a3d:	c7 05 04 0e 00 00 04 	movl   $0xe04,0xe04
 a44:	0e 00 00 
    base.s.size = 0;
 a47:	c7 05 08 0e 00 00 00 	movl   $0x0,0xe08
 a4e:	00 00 00 
 a51:	e9 46 ff ff ff       	jmp    99c <malloc+0x2c>
