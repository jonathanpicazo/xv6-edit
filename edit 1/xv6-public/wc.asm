
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
  int fd, i;

  if(argc <= 1){
   6:	bb 01 00 00 00       	mov    $0x1,%ebx
{
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(argc <= 1){
  14:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  18:	7f 25                	jg     3f <main+0x3f>
  1a:	eb 65                	jmp    81 <main+0x81>
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(0);
    }
    wc(fd, argv[i]);
  20:	8b 14 9e             	mov    (%esi,%ebx,4),%edx
  for(i = 1; i < argc; i++){
  23:	83 c3 01             	add    $0x1,%ebx
    wc(fd, argv[i]);
  26:	89 3c 24             	mov    %edi,(%esp)
  29:	89 54 24 04          	mov    %edx,0x4(%esp)
  2d:	e8 8e 00 00 00       	call   c0 <wc>
    close(fd);
  32:	89 3c 24             	mov    %edi,(%esp)
  35:	e8 c0 03 00 00       	call   3fa <close>
  for(i = 1; i < argc; i++){
  3a:	3b 5d 08             	cmp    0x8(%ebp),%ebx
  3d:	74 69                	je     a8 <main+0xa8>
    if((fd = open(argv[i], 0)) < 0){
  3f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  46:	00 
  47:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
  4a:	89 04 24             	mov    %eax,(%esp)
  4d:	e8 c0 03 00 00       	call   412 <open>
  52:	85 c0                	test   %eax,%eax
  54:	89 c7                	mov    %eax,%edi
  56:	79 c8                	jns    20 <main+0x20>
      printf(1, "wc: cannot open %s\n", argv[i]);
  58:	8b 14 9e             	mov    (%esi,%ebx,4),%edx
  5b:	c7 44 24 04 b9 08 00 	movl   $0x8b9,0x4(%esp)
  62:	00 
  63:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  6a:	89 54 24 08          	mov    %edx,0x8(%esp)
  6e:	e8 bd 04 00 00       	call   530 <printf>
      exit(0);
  73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  7a:	e8 53 03 00 00       	call   3d2 <exit>
  7f:	eb 9f                	jmp    20 <main+0x20>
    wc(0, "");
  81:	c7 44 24 04 ab 08 00 	movl   $0x8ab,0x4(%esp)
  88:	00 
  89:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  90:	e8 2b 00 00 00       	call   c0 <wc>
    exit(0);
  95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  9c:	e8 31 03 00 00       	call   3d2 <exit>
  a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  }
  exit(0);
  a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  af:	e8 1e 03 00 00       	call   3d2 <exit>
  return 0;
}
  b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
  b7:	31 c0                	xor    %eax,%eax
  b9:	5b                   	pop    %ebx
  ba:	5e                   	pop    %esi
  bb:	5f                   	pop    %edi
  bc:	5d                   	pop    %ebp
  bd:	c3                   	ret    
  be:	66 90                	xchg   %ax,%ax

000000c0 <wc>:
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  inword = 0;
  c5:	31 f6                	xor    %esi,%esi
{
  c7:	53                   	push   %ebx
  l = w = c = 0;
  c8:	31 db                	xor    %ebx,%ebx
{
  ca:	83 ec 3c             	sub    $0x3c,%esp
  l = w = c = 0;
  cd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  d4:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  db:	90                   	nop
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
  e0:	8b 45 08             	mov    0x8(%ebp),%eax
  e3:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
  ea:	00 
  eb:	c7 44 24 04 c0 0b 00 	movl   $0xbc0,0x4(%esp)
  f2:	00 
  f3:	89 04 24             	mov    %eax,(%esp)
  f6:	e8 ef 02 00 00       	call   3ea <read>
  fb:	83 f8 00             	cmp    $0x0,%eax
  fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 101:	7e 54                	jle    157 <wc+0x97>
 103:	31 ff                	xor    %edi,%edi
 105:	eb 0b                	jmp    112 <wc+0x52>
 107:	90                   	nop
        inword = 0;
 108:	31 f6                	xor    %esi,%esi
    for(i=0; i<n; i++){
 10a:	83 c7 01             	add    $0x1,%edi
 10d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
 110:	74 38                	je     14a <wc+0x8a>
      if(buf[i] == '\n')
 112:	0f be 87 c0 0b 00 00 	movsbl 0xbc0(%edi),%eax
        l++;
 119:	31 c9                	xor    %ecx,%ecx
      if(strchr(" \r\t\n\v", buf[i]))
 11b:	c7 04 24 96 08 00 00 	movl   $0x896,(%esp)
        l++;
 122:	3c 0a                	cmp    $0xa,%al
 124:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 127:	89 44 24 04          	mov    %eax,0x4(%esp)
        l++;
 12b:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 12d:	e8 4e 01 00 00       	call   280 <strchr>
 132:	85 c0                	test   %eax,%eax
 134:	75 d2                	jne    108 <wc+0x48>
      else if(!inword){
 136:	85 f6                	test   %esi,%esi
 138:	75 16                	jne    150 <wc+0x90>
        w++;
 13a:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    for(i=0; i<n; i++){
 13e:	83 c7 01             	add    $0x1,%edi
 141:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
        inword = 1;
 144:	66 be 01 00          	mov    $0x1,%si
    for(i=0; i<n; i++){
 148:	75 c8                	jne    112 <wc+0x52>
 14a:	01 7d dc             	add    %edi,-0x24(%ebp)
 14d:	eb 91                	jmp    e0 <wc+0x20>
 14f:	90                   	nop
 150:	be 01 00 00 00       	mov    $0x1,%esi
 155:	eb b3                	jmp    10a <wc+0x4a>
  if(n < 0){
 157:	75 35                	jne    18e <wc+0xce>
  printf(1, "%d %d %d %s\n", l, w, c, name);
 159:	8b 45 0c             	mov    0xc(%ebp),%eax
 15c:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 160:	c7 44 24 04 ac 08 00 	movl   $0x8ac,0x4(%esp)
 167:	00 
 168:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 16f:	89 44 24 14          	mov    %eax,0x14(%esp)
 173:	8b 45 dc             	mov    -0x24(%ebp),%eax
 176:	89 44 24 10          	mov    %eax,0x10(%esp)
 17a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 17d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 181:	e8 aa 03 00 00       	call   530 <printf>
}
 186:	83 c4 3c             	add    $0x3c,%esp
 189:	5b                   	pop    %ebx
 18a:	5e                   	pop    %esi
 18b:	5f                   	pop    %edi
 18c:	5d                   	pop    %ebp
 18d:	c3                   	ret    
    printf(1, "wc: read error\n");
 18e:	c7 44 24 04 9c 08 00 	movl   $0x89c,0x4(%esp)
 195:	00 
 196:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 19d:	e8 8e 03 00 00       	call   530 <printf>
    exit(0);
 1a2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1a9:	e8 24 02 00 00       	call   3d2 <exit>
 1ae:	eb a9                	jmp    159 <wc+0x99>

000001b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 45 08             	mov    0x8(%ebp),%eax
 1b6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1b9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ba:	89 c2                	mov    %eax,%edx
 1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c0:	83 c1 01             	add    $0x1,%ecx
 1c3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1c7:	83 c2 01             	add    $0x1,%edx
 1ca:	84 db                	test   %bl,%bl
 1cc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1cf:	75 ef                	jne    1c0 <strcpy+0x10>
    ;
  return os;
}
 1d1:	5b                   	pop    %ebx
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 55 08             	mov    0x8(%ebp),%edx
 1e6:	53                   	push   %ebx
 1e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ea:	0f b6 02             	movzbl (%edx),%eax
 1ed:	84 c0                	test   %al,%al
 1ef:	74 2d                	je     21e <strcmp+0x3e>
 1f1:	0f b6 19             	movzbl (%ecx),%ebx
 1f4:	38 d8                	cmp    %bl,%al
 1f6:	74 0e                	je     206 <strcmp+0x26>
 1f8:	eb 2b                	jmp    225 <strcmp+0x45>
 1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 200:	38 c8                	cmp    %cl,%al
 202:	75 15                	jne    219 <strcmp+0x39>
    p++, q++;
 204:	89 d9                	mov    %ebx,%ecx
 206:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 209:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 20c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 20f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 213:	84 c0                	test   %al,%al
 215:	75 e9                	jne    200 <strcmp+0x20>
 217:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 219:	29 c8                	sub    %ecx,%eax
}
 21b:	5b                   	pop    %ebx
 21c:	5d                   	pop    %ebp
 21d:	c3                   	ret    
 21e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 221:	31 c0                	xor    %eax,%eax
 223:	eb f4                	jmp    219 <strcmp+0x39>
 225:	0f b6 cb             	movzbl %bl,%ecx
 228:	eb ef                	jmp    219 <strcmp+0x39>
 22a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000230 <strlen>:

uint
strlen(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 39 00             	cmpb   $0x0,(%ecx)
 239:	74 12                	je     24d <strlen+0x1d>
 23b:	31 d2                	xor    %edx,%edx
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c2 01             	add    $0x1,%edx
 243:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 247:	89 d0                	mov    %edx,%eax
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 24d:	31 c0                	xor    %eax,%eax
}
 24f:	5d                   	pop    %ebp
 250:	c3                   	ret    
 251:	eb 0d                	jmp    260 <memset>
 253:	90                   	nop
 254:	90                   	nop
 255:	90                   	nop
 256:	90                   	nop
 257:	90                   	nop
 258:	90                   	nop
 259:	90                   	nop
 25a:	90                   	nop
 25b:	90                   	nop
 25c:	90                   	nop
 25d:	90                   	nop
 25e:	90                   	nop
 25f:	90                   	nop

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 55 08             	mov    0x8(%ebp),%edx
 266:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	89 d0                	mov    %edx,%eax
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    
 277:	89 f6                	mov    %esi,%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 45 08             	mov    0x8(%ebp),%eax
 286:	53                   	push   %ebx
 287:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 28a:	0f b6 18             	movzbl (%eax),%ebx
 28d:	84 db                	test   %bl,%bl
 28f:	74 1d                	je     2ae <strchr+0x2e>
    if(*s == c)
 291:	38 d3                	cmp    %dl,%bl
 293:	89 d1                	mov    %edx,%ecx
 295:	75 0d                	jne    2a4 <strchr+0x24>
 297:	eb 17                	jmp    2b0 <strchr+0x30>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	38 ca                	cmp    %cl,%dl
 2a2:	74 0c                	je     2b0 <strchr+0x30>
  for(; *s; s++)
 2a4:	83 c0 01             	add    $0x1,%eax
 2a7:	0f b6 10             	movzbl (%eax),%edx
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strchr+0x20>
      return (char*)s;
  return 0;
 2ae:	31 c0                	xor    %eax,%eax
}
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2c5:	31 f6                	xor    %esi,%esi
{
 2c7:	53                   	push   %ebx
 2c8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 2cb:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 2ce:	eb 31                	jmp    301 <gets+0x41>
    cc = read(0, &c, 1);
 2d0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 2d7:	00 
 2d8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 02 01 00 00       	call   3ea <read>
    if(cc < 1)
 2e8:	85 c0                	test   %eax,%eax
 2ea:	7e 1d                	jle    309 <gets+0x49>
      break;
    buf[i++] = c;
 2ec:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 2f0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 2f2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 2f5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 2f7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2fb:	74 0c                	je     309 <gets+0x49>
 2fd:	3c 0a                	cmp    $0xa,%al
 2ff:	74 08                	je     309 <gets+0x49>
  for(i=0; i+1 < max; ){
 301:	8d 5e 01             	lea    0x1(%esi),%ebx
 304:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 307:	7c c7                	jl     2d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 309:	8b 45 08             	mov    0x8(%ebp),%eax
 30c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 310:	83 c4 2c             	add    $0x2c,%esp
 313:	5b                   	pop    %ebx
 314:	5e                   	pop    %esi
 315:	5f                   	pop    %edi
 316:	5d                   	pop    %ebp
 317:	c3                   	ret    
 318:	90                   	nop
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <stat>:

int
stat(const char *n, struct stat *st)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
 325:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 328:	8b 45 08             	mov    0x8(%ebp),%eax
 32b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 332:	00 
 333:	89 04 24             	mov    %eax,(%esp)
 336:	e8 d7 00 00 00       	call   412 <open>
  if(fd < 0)
 33b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 33d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 33f:	78 27                	js     368 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 341:	8b 45 0c             	mov    0xc(%ebp),%eax
 344:	89 1c 24             	mov    %ebx,(%esp)
 347:	89 44 24 04          	mov    %eax,0x4(%esp)
 34b:	e8 da 00 00 00       	call   42a <fstat>
  close(fd);
 350:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 353:	89 c6                	mov    %eax,%esi
  close(fd);
 355:	e8 a0 00 00 00       	call   3fa <close>
  return r;
 35a:	89 f0                	mov    %esi,%eax
}
 35c:	83 c4 10             	add    $0x10,%esp
 35f:	5b                   	pop    %ebx
 360:	5e                   	pop    %esi
 361:	5d                   	pop    %ebp
 362:	c3                   	ret    
 363:	90                   	nop
 364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 368:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 36d:	eb ed                	jmp    35c <stat+0x3c>
 36f:	90                   	nop

00000370 <atoi>:

int
atoi(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 4d 08             	mov    0x8(%ebp),%ecx
 376:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 377:	0f be 11             	movsbl (%ecx),%edx
 37a:	8d 42 d0             	lea    -0x30(%edx),%eax
 37d:	3c 09                	cmp    $0x9,%al
  n = 0;
 37f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 384:	77 17                	ja     39d <atoi+0x2d>
 386:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 388:	83 c1 01             	add    $0x1,%ecx
 38b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 38e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 392:	0f be 11             	movsbl (%ecx),%edx
 395:	8d 5a d0             	lea    -0x30(%edx),%ebx
 398:	80 fb 09             	cmp    $0x9,%bl
 39b:	76 eb                	jbe    388 <atoi+0x18>
  return n;
}
 39d:	5b                   	pop    %ebx
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    

000003a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3a1:	31 d2                	xor    %edx,%edx
{
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	56                   	push   %esi
 3a6:	8b 45 08             	mov    0x8(%ebp),%eax
 3a9:	53                   	push   %ebx
 3aa:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3ad:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 3b0:	85 db                	test   %ebx,%ebx
 3b2:	7e 12                	jle    3c6 <memmove+0x26>
 3b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3b8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3bc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3bf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3c2:	39 da                	cmp    %ebx,%edx
 3c4:	75 f2                	jne    3b8 <memmove+0x18>
  return vdst;
}
 3c6:	5b                   	pop    %ebx
 3c7:	5e                   	pop    %esi
 3c8:	5d                   	pop    %ebp
 3c9:	c3                   	ret    

000003ca <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3ca:	b8 01 00 00 00       	mov    $0x1,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <exit>:
SYSCALL(exit)
 3d2:	b8 02 00 00 00       	mov    $0x2,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <wait>:
SYSCALL(wait)
 3da:	b8 03 00 00 00       	mov    $0x3,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <pipe>:
SYSCALL(pipe)
 3e2:	b8 04 00 00 00       	mov    $0x4,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <read>:
SYSCALL(read)
 3ea:	b8 05 00 00 00       	mov    $0x5,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <write>:
SYSCALL(write)
 3f2:	b8 10 00 00 00       	mov    $0x10,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <close>:
SYSCALL(close)
 3fa:	b8 15 00 00 00       	mov    $0x15,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <kill>:
SYSCALL(kill)
 402:	b8 06 00 00 00       	mov    $0x6,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <exec>:
SYSCALL(exec)
 40a:	b8 07 00 00 00       	mov    $0x7,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <open>:
SYSCALL(open)
 412:	b8 0f 00 00 00       	mov    $0xf,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <mknod>:
SYSCALL(mknod)
 41a:	b8 11 00 00 00       	mov    $0x11,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <unlink>:
SYSCALL(unlink)
 422:	b8 12 00 00 00       	mov    $0x12,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <fstat>:
SYSCALL(fstat)
 42a:	b8 08 00 00 00       	mov    $0x8,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <link>:
SYSCALL(link)
 432:	b8 13 00 00 00       	mov    $0x13,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <mkdir>:
SYSCALL(mkdir)
 43a:	b8 14 00 00 00       	mov    $0x14,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <chdir>:
SYSCALL(chdir)
 442:	b8 09 00 00 00       	mov    $0x9,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <dup>:
SYSCALL(dup)
 44a:	b8 0a 00 00 00       	mov    $0xa,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <getpid>:
SYSCALL(getpid)
 452:	b8 0b 00 00 00       	mov    $0xb,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <sbrk>:
SYSCALL(sbrk)
 45a:	b8 0c 00 00 00       	mov    $0xc,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <sleep>:
SYSCALL(sleep)
 462:	b8 0d 00 00 00       	mov    $0xd,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <uptime>:
SYSCALL(uptime)
 46a:	b8 0e 00 00 00       	mov    $0xe,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <hello>:
SYSCALL(hello)
 472:	b8 18 00 00 00       	mov    $0x18,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <waitpid>:
SYSCALL(waitpid)
 47a:	b8 19 00 00 00       	mov    $0x19,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    
 482:	66 90                	xchg   %ax,%ax
 484:	66 90                	xchg   %ax,%ax
 486:	66 90                	xchg   %ax,%ax
 488:	66 90                	xchg   %ax,%ax
 48a:	66 90                	xchg   %ax,%ax
 48c:	66 90                	xchg   %ax,%ax
 48e:	66 90                	xchg   %ax,%ax

00000490 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	89 c6                	mov    %eax,%esi
 497:	53                   	push   %ebx
 498:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 49b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 49e:	85 db                	test   %ebx,%ebx
 4a0:	74 09                	je     4ab <printint+0x1b>
 4a2:	89 d0                	mov    %edx,%eax
 4a4:	c1 e8 1f             	shr    $0x1f,%eax
 4a7:	84 c0                	test   %al,%al
 4a9:	75 75                	jne    520 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4ab:	89 d0                	mov    %edx,%eax
  neg = 0;
 4ad:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4b4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 4b7:	31 ff                	xor    %edi,%edi
 4b9:	89 ce                	mov    %ecx,%esi
 4bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4be:	eb 02                	jmp    4c2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 4c0:	89 cf                	mov    %ecx,%edi
 4c2:	31 d2                	xor    %edx,%edx
 4c4:	f7 f6                	div    %esi
 4c6:	8d 4f 01             	lea    0x1(%edi),%ecx
 4c9:	0f b6 92 d4 08 00 00 	movzbl 0x8d4(%edx),%edx
  }while((x /= base) != 0);
 4d0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 4d2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4d5:	75 e9                	jne    4c0 <printint+0x30>
  if(neg)
 4d7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 4da:	89 c8                	mov    %ecx,%eax
 4dc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 4df:	85 d2                	test   %edx,%edx
 4e1:	74 08                	je     4eb <printint+0x5b>
    buf[i++] = '-';
 4e3:	8d 4f 02             	lea    0x2(%edi),%ecx
 4e6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 4eb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 4ee:	66 90                	xchg   %ax,%ax
 4f0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 4f5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 4f8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4ff:	00 
 500:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 504:	89 34 24             	mov    %esi,(%esp)
 507:	88 45 d7             	mov    %al,-0x29(%ebp)
 50a:	e8 e3 fe ff ff       	call   3f2 <write>
  while(--i >= 0)
 50f:	83 ff ff             	cmp    $0xffffffff,%edi
 512:	75 dc                	jne    4f0 <printint+0x60>
    putc(fd, buf[i]);
}
 514:	83 c4 4c             	add    $0x4c,%esp
 517:	5b                   	pop    %ebx
 518:	5e                   	pop    %esi
 519:	5f                   	pop    %edi
 51a:	5d                   	pop    %ebp
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 520:	89 d0                	mov    %edx,%eax
 522:	f7 d8                	neg    %eax
    neg = 1;
 524:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 52b:	eb 87                	jmp    4b4 <printint+0x24>
 52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 534:	31 ff                	xor    %edi,%edi
{
 536:	56                   	push   %esi
 537:	53                   	push   %ebx
 538:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 53b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 53e:	8d 45 10             	lea    0x10(%ebp),%eax
{
 541:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 544:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 547:	0f b6 13             	movzbl (%ebx),%edx
 54a:	83 c3 01             	add    $0x1,%ebx
 54d:	84 d2                	test   %dl,%dl
 54f:	75 39                	jne    58a <printf+0x5a>
 551:	e9 c2 00 00 00       	jmp    618 <printf+0xe8>
 556:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 558:	83 fa 25             	cmp    $0x25,%edx
 55b:	0f 84 bf 00 00 00    	je     620 <printf+0xf0>
  write(fd, &c, 1);
 561:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 564:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 56b:	00 
 56c:	89 44 24 04          	mov    %eax,0x4(%esp)
 570:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 573:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 576:	e8 77 fe ff ff       	call   3f2 <write>
 57b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 57e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 582:	84 d2                	test   %dl,%dl
 584:	0f 84 8e 00 00 00    	je     618 <printf+0xe8>
    if(state == 0){
 58a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 58c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 58f:	74 c7                	je     558 <printf+0x28>
      }
    } else if(state == '%'){
 591:	83 ff 25             	cmp    $0x25,%edi
 594:	75 e5                	jne    57b <printf+0x4b>
      if(c == 'd'){
 596:	83 fa 64             	cmp    $0x64,%edx
 599:	0f 84 31 01 00 00    	je     6d0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 59f:	25 f7 00 00 00       	and    $0xf7,%eax
 5a4:	83 f8 70             	cmp    $0x70,%eax
 5a7:	0f 84 83 00 00 00    	je     630 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5ad:	83 fa 73             	cmp    $0x73,%edx
 5b0:	0f 84 a2 00 00 00    	je     658 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5b6:	83 fa 63             	cmp    $0x63,%edx
 5b9:	0f 84 35 01 00 00    	je     6f4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5bf:	83 fa 25             	cmp    $0x25,%edx
 5c2:	0f 84 e0 00 00 00    	je     6a8 <printf+0x178>
  write(fd, &c, 1);
 5c8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5cb:	83 c3 01             	add    $0x1,%ebx
 5ce:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5d5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5d6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 5d8:	89 44 24 04          	mov    %eax,0x4(%esp)
 5dc:	89 34 24             	mov    %esi,(%esp)
 5df:	89 55 d0             	mov    %edx,-0x30(%ebp)
 5e2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 5e6:	e8 07 fe ff ff       	call   3f2 <write>
        putc(fd, c);
 5eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 5ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5f1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5f8:	00 
 5f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 5fd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 600:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 603:	e8 ea fd ff ff       	call   3f2 <write>
  for(i = 0; fmt[i]; i++){
 608:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 60c:	84 d2                	test   %dl,%dl
 60e:	0f 85 76 ff ff ff    	jne    58a <printf+0x5a>
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 618:	83 c4 3c             	add    $0x3c,%esp
 61b:	5b                   	pop    %ebx
 61c:	5e                   	pop    %esi
 61d:	5f                   	pop    %edi
 61e:	5d                   	pop    %ebp
 61f:	c3                   	ret    
        state = '%';
 620:	bf 25 00 00 00       	mov    $0x25,%edi
 625:	e9 51 ff ff ff       	jmp    57b <printf+0x4b>
 62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 630:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 633:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 638:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 63a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 641:	8b 10                	mov    (%eax),%edx
 643:	89 f0                	mov    %esi,%eax
 645:	e8 46 fe ff ff       	call   490 <printint>
        ap++;
 64a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 64e:	e9 28 ff ff ff       	jmp    57b <printf+0x4b>
 653:	90                   	nop
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 658:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 65b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 65f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 661:	b8 cd 08 00 00       	mov    $0x8cd,%eax
 666:	85 ff                	test   %edi,%edi
 668:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 66b:	0f b6 07             	movzbl (%edi),%eax
 66e:	84 c0                	test   %al,%al
 670:	74 2a                	je     69c <printf+0x16c>
 672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 678:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 67b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 67e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 681:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 688:	00 
 689:	89 44 24 04          	mov    %eax,0x4(%esp)
 68d:	89 34 24             	mov    %esi,(%esp)
 690:	e8 5d fd ff ff       	call   3f2 <write>
        while(*s != 0){
 695:	0f b6 07             	movzbl (%edi),%eax
 698:	84 c0                	test   %al,%al
 69a:	75 dc                	jne    678 <printf+0x148>
      state = 0;
 69c:	31 ff                	xor    %edi,%edi
 69e:	e9 d8 fe ff ff       	jmp    57b <printf+0x4b>
 6a3:	90                   	nop
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 6a8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 6ab:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 6ad:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6b4:	00 
 6b5:	89 44 24 04          	mov    %eax,0x4(%esp)
 6b9:	89 34 24             	mov    %esi,(%esp)
 6bc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 6c0:	e8 2d fd ff ff       	call   3f2 <write>
 6c5:	e9 b1 fe ff ff       	jmp    57b <printf+0x4b>
 6ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 6d0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 6d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 6d8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 6db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 6e2:	8b 10                	mov    (%eax),%edx
 6e4:	89 f0                	mov    %esi,%eax
 6e6:	e8 a5 fd ff ff       	call   490 <printint>
        ap++;
 6eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6ef:	e9 87 fe ff ff       	jmp    57b <printf+0x4b>
        putc(fd, *ap);
 6f4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 6f7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 6f9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6fb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 702:	00 
 703:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 706:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 709:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 70c:	89 44 24 04          	mov    %eax,0x4(%esp)
 710:	e8 dd fc ff ff       	call   3f2 <write>
        ap++;
 715:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 719:	e9 5d fe ff ff       	jmp    57b <printf+0x4b>
 71e:	66 90                	xchg   %ax,%ax

00000720 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 720:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 721:	a1 a0 0b 00 00       	mov    0xba0,%eax
{
 726:	89 e5                	mov    %esp,%ebp
 728:	57                   	push   %edi
 729:	56                   	push   %esi
 72a:	53                   	push   %ebx
 72b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 72e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 730:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 733:	39 d0                	cmp    %edx,%eax
 735:	72 11                	jb     748 <free+0x28>
 737:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 738:	39 c8                	cmp    %ecx,%eax
 73a:	72 04                	jb     740 <free+0x20>
 73c:	39 ca                	cmp    %ecx,%edx
 73e:	72 10                	jb     750 <free+0x30>
 740:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 742:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 744:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 746:	73 f0                	jae    738 <free+0x18>
 748:	39 ca                	cmp    %ecx,%edx
 74a:	72 04                	jb     750 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 74c:	39 c8                	cmp    %ecx,%eax
 74e:	72 f0                	jb     740 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 750:	8b 73 fc             	mov    -0x4(%ebx),%esi
 753:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 756:	39 cf                	cmp    %ecx,%edi
 758:	74 1e                	je     778 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 75a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 75d:	8b 48 04             	mov    0x4(%eax),%ecx
 760:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 763:	39 f2                	cmp    %esi,%edx
 765:	74 28                	je     78f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 767:	89 10                	mov    %edx,(%eax)
  freep = p;
 769:	a3 a0 0b 00 00       	mov    %eax,0xba0
}
 76e:	5b                   	pop    %ebx
 76f:	5e                   	pop    %esi
 770:	5f                   	pop    %edi
 771:	5d                   	pop    %ebp
 772:	c3                   	ret    
 773:	90                   	nop
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 778:	03 71 04             	add    0x4(%ecx),%esi
 77b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 77e:	8b 08                	mov    (%eax),%ecx
 780:	8b 09                	mov    (%ecx),%ecx
 782:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 785:	8b 48 04             	mov    0x4(%eax),%ecx
 788:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 78b:	39 f2                	cmp    %esi,%edx
 78d:	75 d8                	jne    767 <free+0x47>
    p->s.size += bp->s.size;
 78f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 792:	a3 a0 0b 00 00       	mov    %eax,0xba0
    p->s.size += bp->s.size;
 797:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 79a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 79d:	89 10                	mov    %edx,(%eax)
}
 79f:	5b                   	pop    %ebx
 7a0:	5e                   	pop    %esi
 7a1:	5f                   	pop    %edi
 7a2:	5d                   	pop    %ebp
 7a3:	c3                   	ret    
 7a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000007b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
 7b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7bc:	8b 1d a0 0b 00 00    	mov    0xba0,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7c2:	8d 48 07             	lea    0x7(%eax),%ecx
 7c5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 7c8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7ca:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 7cd:	0f 84 9b 00 00 00    	je     86e <malloc+0xbe>
 7d3:	8b 13                	mov    (%ebx),%edx
 7d5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7d8:	39 fe                	cmp    %edi,%esi
 7da:	76 64                	jbe    840 <malloc+0x90>
 7dc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 7e3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 7e8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7eb:	eb 0e                	jmp    7fb <malloc+0x4b>
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7f0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7f2:	8b 78 04             	mov    0x4(%eax),%edi
 7f5:	39 fe                	cmp    %edi,%esi
 7f7:	76 4f                	jbe    848 <malloc+0x98>
 7f9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7fb:	3b 15 a0 0b 00 00    	cmp    0xba0,%edx
 801:	75 ed                	jne    7f0 <malloc+0x40>
  if(nu < 4096)
 803:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 806:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 80c:	bf 00 10 00 00       	mov    $0x1000,%edi
 811:	0f 43 fe             	cmovae %esi,%edi
 814:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 817:	89 04 24             	mov    %eax,(%esp)
 81a:	e8 3b fc ff ff       	call   45a <sbrk>
  if(p == (char*)-1)
 81f:	83 f8 ff             	cmp    $0xffffffff,%eax
 822:	74 18                	je     83c <malloc+0x8c>
  hp->s.size = nu;
 824:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 827:	83 c0 08             	add    $0x8,%eax
 82a:	89 04 24             	mov    %eax,(%esp)
 82d:	e8 ee fe ff ff       	call   720 <free>
  return freep;
 832:	8b 15 a0 0b 00 00    	mov    0xba0,%edx
      if((p = morecore(nunits)) == 0)
 838:	85 d2                	test   %edx,%edx
 83a:	75 b4                	jne    7f0 <malloc+0x40>
        return 0;
 83c:	31 c0                	xor    %eax,%eax
 83e:	eb 20                	jmp    860 <malloc+0xb0>
    if(p->s.size >= nunits){
 840:	89 d0                	mov    %edx,%eax
 842:	89 da                	mov    %ebx,%edx
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 848:	39 fe                	cmp    %edi,%esi
 84a:	74 1c                	je     868 <malloc+0xb8>
        p->s.size -= nunits;
 84c:	29 f7                	sub    %esi,%edi
 84e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 851:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 854:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 857:	89 15 a0 0b 00 00    	mov    %edx,0xba0
      return (void*)(p + 1);
 85d:	83 c0 08             	add    $0x8,%eax
  }
}
 860:	83 c4 1c             	add    $0x1c,%esp
 863:	5b                   	pop    %ebx
 864:	5e                   	pop    %esi
 865:	5f                   	pop    %edi
 866:	5d                   	pop    %ebp
 867:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 868:	8b 08                	mov    (%eax),%ecx
 86a:	89 0a                	mov    %ecx,(%edx)
 86c:	eb e9                	jmp    857 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 86e:	c7 05 a0 0b 00 00 a4 	movl   $0xba4,0xba0
 875:	0b 00 00 
    base.s.size = 0;
 878:	ba a4 0b 00 00       	mov    $0xba4,%edx
    base.s.ptr = freep = prevp = &base;
 87d:	c7 05 a4 0b 00 00 a4 	movl   $0xba4,0xba4
 884:	0b 00 00 
    base.s.size = 0;
 887:	c7 05 a8 0b 00 00 00 	movl   $0x0,0xba8
 88e:	00 00 00 
 891:	e9 46 ff ff ff       	jmp    7dc <malloc+0x2c>
