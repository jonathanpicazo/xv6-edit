
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 10             	sub    $0x10,%esp
  forktest();
   9:	e8 42 00 00 00       	call   50 <forktest>
  exit(0);
   e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  15:	e8 78 03 00 00       	call   392 <exit>
  return 0;
}
  1a:	31 c0                	xor    %eax,%eax
  1c:	c9                   	leave  
  1d:	c3                   	ret    
  1e:	66 90                	xchg   %ax,%ax

00000020 <printf>:
{
  20:	55                   	push   %ebp
  21:	89 e5                	mov    %esp,%ebp
  23:	53                   	push   %ebx
  24:	83 ec 14             	sub    $0x14,%esp
  27:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  2a:	89 1c 24             	mov    %ebx,(%esp)
  2d:	e8 be 01 00 00       	call   1f0 <strlen>
  32:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  36:	89 44 24 08          	mov    %eax,0x8(%esp)
  3a:	8b 45 08             	mov    0x8(%ebp),%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 6d 03 00 00       	call   3b2 <write>
}
  45:	83 c4 14             	add    $0x14,%esp
  48:	5b                   	pop    %ebx
  49:	5d                   	pop    %ebp
  4a:	c3                   	ret    
  4b:	90                   	nop
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000050 <forktest>:
{
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	56                   	push   %esi
  54:	53                   	push   %ebx
  for(n=0; n<N; n++){
  55:	31 db                	xor    %ebx,%ebx
{
  57:	83 ec 20             	sub    $0x20,%esp
  printf(1, "fork test\n");
  5a:	c7 44 24 04 4c 04 00 	movl   $0x44c,0x4(%esp)
  61:	00 
  62:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  69:	e8 b2 ff ff ff       	call   20 <printf>
  6e:	eb 0b                	jmp    7b <forktest+0x2b>
  for(n=0; n<N; n++){
  70:	83 c3 01             	add    $0x1,%ebx
  73:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  79:	74 25                	je     a0 <forktest+0x50>
    pid = fork();
  7b:	e8 0a 03 00 00       	call   38a <fork>
    if(pid < 0)
  80:	85 c0                	test   %eax,%eax
    pid = fork();
  82:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(pid < 0)
  85:	78 51                	js     d8 <forktest+0x88>
    if(pid == 0)
  87:	75 e7                	jne    70 <forktest+0x20>
      exit(0);
  89:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(n=0; n<N; n++){
  90:	83 c3 01             	add    $0x1,%ebx
      exit(0);
  93:	e8 fa 02 00 00       	call   392 <exit>
  for(n=0; n<N; n++){
  98:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  9e:	75 db                	jne    7b <forktest+0x2b>
  write(fd, s, strlen(s));
  a0:	c7 04 24 8c 04 00 00 	movl   $0x48c,(%esp)
  a7:	e8 44 01 00 00       	call   1f0 <strlen>
  ac:	c7 44 24 04 8c 04 00 	movl   $0x48c,0x4(%esp)
  b3:	00 
  b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  bb:	89 44 24 08          	mov    %eax,0x8(%esp)
  bf:	e8 ee 02 00 00       	call   3b2 <write>
    exit(0);
  c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  cb:	e8 c2 02 00 00       	call   392 <exit>
  d0:	eb 0e                	jmp    e0 <forktest+0x90>
  d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(; n > 0; n--){
  d8:	85 db                	test   %ebx,%ebx
  da:	0f 84 88 00 00 00    	je     168 <forktest+0x118>
  e0:	8d 75 f4             	lea    -0xc(%ebp),%esi
  e3:	eb 08                	jmp    ed <forktest+0x9d>
  e5:	8d 76 00             	lea    0x0(%esi),%esi
  e8:	83 eb 01             	sub    $0x1,%ebx
  eb:	74 33                	je     120 <forktest+0xd0>
    if(wait(&pid) < 0){
  ed:	89 34 24             	mov    %esi,(%esp)
  f0:	e8 a5 02 00 00       	call   39a <wait>
  f5:	85 c0                	test   %eax,%eax
  f7:	79 ef                	jns    e8 <forktest+0x98>
      printf(1, "wait stopped early\n");
  f9:	c7 44 24 04 57 04 00 	movl   $0x457,0x4(%esp)
 100:	00 
 101:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 108:	e8 13 ff ff ff       	call   20 <printf>
      exit(0);
 10d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 114:	e8 79 02 00 00       	call   392 <exit>
  for(; n > 0; n--){
 119:	83 eb 01             	sub    $0x1,%ebx
 11c:	75 cf                	jne    ed <forktest+0x9d>
 11e:	66 90                	xchg   %ax,%ax
  if(wait(&pid) != -1){
 120:	89 34 24             	mov    %esi,(%esp)
 123:	e8 72 02 00 00       	call   39a <wait>
 128:	83 f8 ff             	cmp    $0xffffffff,%eax
 12b:	74 20                	je     14d <forktest+0xfd>
    printf(1, "wait got too many\n");
 12d:	c7 44 24 04 6b 04 00 	movl   $0x46b,0x4(%esp)
 134:	00 
 135:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13c:	e8 df fe ff ff       	call   20 <printf>
    exit(0);
 141:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 148:	e8 45 02 00 00       	call   392 <exit>
  printf(1, "fork test OK\n");
 14d:	c7 44 24 04 7e 04 00 	movl   $0x47e,0x4(%esp)
 154:	00 
 155:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 15c:	e8 bf fe ff ff       	call   20 <printf>
}
 161:	83 c4 20             	add    $0x20,%esp
 164:	5b                   	pop    %ebx
 165:	5e                   	pop    %esi
 166:	5d                   	pop    %ebp
 167:	c3                   	ret    
 168:	8d 75 f4             	lea    -0xc(%ebp),%esi
 16b:	eb b3                	jmp    120 <forktest+0xd0>
 16d:	66 90                	xchg   %ax,%ax
 16f:	90                   	nop

00000170 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 45 08             	mov    0x8(%ebp),%eax
 176:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 179:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 17a:	89 c2                	mov    %eax,%edx
 17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 180:	83 c1 01             	add    $0x1,%ecx
 183:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 187:	83 c2 01             	add    $0x1,%edx
 18a:	84 db                	test   %bl,%bl
 18c:	88 5a ff             	mov    %bl,-0x1(%edx)
 18f:	75 ef                	jne    180 <strcpy+0x10>
    ;
  return os;
}
 191:	5b                   	pop    %ebx
 192:	5d                   	pop    %ebp
 193:	c3                   	ret    
 194:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 19a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 55 08             	mov    0x8(%ebp),%edx
 1a6:	53                   	push   %ebx
 1a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1aa:	0f b6 02             	movzbl (%edx),%eax
 1ad:	84 c0                	test   %al,%al
 1af:	74 2d                	je     1de <strcmp+0x3e>
 1b1:	0f b6 19             	movzbl (%ecx),%ebx
 1b4:	38 d8                	cmp    %bl,%al
 1b6:	74 0e                	je     1c6 <strcmp+0x26>
 1b8:	eb 2b                	jmp    1e5 <strcmp+0x45>
 1ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1c0:	38 c8                	cmp    %cl,%al
 1c2:	75 15                	jne    1d9 <strcmp+0x39>
    p++, q++;
 1c4:	89 d9                	mov    %ebx,%ecx
 1c6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 1c9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 1cc:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1cf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 1d3:	84 c0                	test   %al,%al
 1d5:	75 e9                	jne    1c0 <strcmp+0x20>
 1d7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 1d9:	29 c8                	sub    %ecx,%eax
}
 1db:	5b                   	pop    %ebx
 1dc:	5d                   	pop    %ebp
 1dd:	c3                   	ret    
 1de:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 1e1:	31 c0                	xor    %eax,%eax
 1e3:	eb f4                	jmp    1d9 <strcmp+0x39>
 1e5:	0f b6 cb             	movzbl %bl,%ecx
 1e8:	eb ef                	jmp    1d9 <strcmp+0x39>
 1ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001f0 <strlen>:

uint
strlen(const char *s)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1f6:	80 39 00             	cmpb   $0x0,(%ecx)
 1f9:	74 12                	je     20d <strlen+0x1d>
 1fb:	31 d2                	xor    %edx,%edx
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
 200:	83 c2 01             	add    $0x1,%edx
 203:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 207:	89 d0                	mov    %edx,%eax
 209:	75 f5                	jne    200 <strlen+0x10>
    ;
  return n;
}
 20b:	5d                   	pop    %ebp
 20c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 20d:	31 c0                	xor    %eax,%eax
}
 20f:	5d                   	pop    %ebp
 210:	c3                   	ret    
 211:	eb 0d                	jmp    220 <memset>
 213:	90                   	nop
 214:	90                   	nop
 215:	90                   	nop
 216:	90                   	nop
 217:	90                   	nop
 218:	90                   	nop
 219:	90                   	nop
 21a:	90                   	nop
 21b:	90                   	nop
 21c:	90                   	nop
 21d:	90                   	nop
 21e:	90                   	nop
 21f:	90                   	nop

00000220 <memset>:

void*
memset(void *dst, int c, uint n)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
 226:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 227:	8b 4d 10             	mov    0x10(%ebp),%ecx
 22a:	8b 45 0c             	mov    0xc(%ebp),%eax
 22d:	89 d7                	mov    %edx,%edi
 22f:	fc                   	cld    
 230:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 232:	89 d0                	mov    %edx,%eax
 234:	5f                   	pop    %edi
 235:	5d                   	pop    %ebp
 236:	c3                   	ret    
 237:	89 f6                	mov    %esi,%esi
 239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000240 <strchr>:

char*
strchr(const char *s, char c)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	8b 45 08             	mov    0x8(%ebp),%eax
 246:	53                   	push   %ebx
 247:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 24a:	0f b6 18             	movzbl (%eax),%ebx
 24d:	84 db                	test   %bl,%bl
 24f:	74 1d                	je     26e <strchr+0x2e>
    if(*s == c)
 251:	38 d3                	cmp    %dl,%bl
 253:	89 d1                	mov    %edx,%ecx
 255:	75 0d                	jne    264 <strchr+0x24>
 257:	eb 17                	jmp    270 <strchr+0x30>
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 260:	38 ca                	cmp    %cl,%dl
 262:	74 0c                	je     270 <strchr+0x30>
  for(; *s; s++)
 264:	83 c0 01             	add    $0x1,%eax
 267:	0f b6 10             	movzbl (%eax),%edx
 26a:	84 d2                	test   %dl,%dl
 26c:	75 f2                	jne    260 <strchr+0x20>
      return (char*)s;
  return 0;
 26e:	31 c0                	xor    %eax,%eax
}
 270:	5b                   	pop    %ebx
 271:	5d                   	pop    %ebp
 272:	c3                   	ret    
 273:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <gets>:

char*
gets(char *buf, int max)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 285:	31 f6                	xor    %esi,%esi
{
 287:	53                   	push   %ebx
 288:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 28b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 28e:	eb 31                	jmp    2c1 <gets+0x41>
    cc = read(0, &c, 1);
 290:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 297:	00 
 298:	89 7c 24 04          	mov    %edi,0x4(%esp)
 29c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2a3:	e8 02 01 00 00       	call   3aa <read>
    if(cc < 1)
 2a8:	85 c0                	test   %eax,%eax
 2aa:	7e 1d                	jle    2c9 <gets+0x49>
      break;
    buf[i++] = c;
 2ac:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 2b0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 2b2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 2b5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 2b7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2bb:	74 0c                	je     2c9 <gets+0x49>
 2bd:	3c 0a                	cmp    $0xa,%al
 2bf:	74 08                	je     2c9 <gets+0x49>
  for(i=0; i+1 < max; ){
 2c1:	8d 5e 01             	lea    0x1(%esi),%ebx
 2c4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2c7:	7c c7                	jl     290 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2c9:	8b 45 08             	mov    0x8(%ebp),%eax
 2cc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2d0:	83 c4 2c             	add    $0x2c,%esp
 2d3:	5b                   	pop    %ebx
 2d4:	5e                   	pop    %esi
 2d5:	5f                   	pop    %edi
 2d6:	5d                   	pop    %ebp
 2d7:	c3                   	ret    
 2d8:	90                   	nop
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002e0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	56                   	push   %esi
 2e4:	53                   	push   %ebx
 2e5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2e8:	8b 45 08             	mov    0x8(%ebp),%eax
 2eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2f2:	00 
 2f3:	89 04 24             	mov    %eax,(%esp)
 2f6:	e8 d7 00 00 00       	call   3d2 <open>
  if(fd < 0)
 2fb:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 2fd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 2ff:	78 27                	js     328 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 301:	8b 45 0c             	mov    0xc(%ebp),%eax
 304:	89 1c 24             	mov    %ebx,(%esp)
 307:	89 44 24 04          	mov    %eax,0x4(%esp)
 30b:	e8 da 00 00 00       	call   3ea <fstat>
  close(fd);
 310:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 313:	89 c6                	mov    %eax,%esi
  close(fd);
 315:	e8 a0 00 00 00       	call   3ba <close>
  return r;
 31a:	89 f0                	mov    %esi,%eax
}
 31c:	83 c4 10             	add    $0x10,%esp
 31f:	5b                   	pop    %ebx
 320:	5e                   	pop    %esi
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	90                   	nop
 324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 328:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 32d:	eb ed                	jmp    31c <stat+0x3c>
 32f:	90                   	nop

00000330 <atoi>:

int
atoi(const char *s)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	8b 4d 08             	mov    0x8(%ebp),%ecx
 336:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 337:	0f be 11             	movsbl (%ecx),%edx
 33a:	8d 42 d0             	lea    -0x30(%edx),%eax
 33d:	3c 09                	cmp    $0x9,%al
  n = 0;
 33f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 344:	77 17                	ja     35d <atoi+0x2d>
 346:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 348:	83 c1 01             	add    $0x1,%ecx
 34b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 34e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 352:	0f be 11             	movsbl (%ecx),%edx
 355:	8d 5a d0             	lea    -0x30(%edx),%ebx
 358:	80 fb 09             	cmp    $0x9,%bl
 35b:	76 eb                	jbe    348 <atoi+0x18>
  return n;
}
 35d:	5b                   	pop    %ebx
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    

00000360 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 360:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 361:	31 d2                	xor    %edx,%edx
{
 363:	89 e5                	mov    %esp,%ebp
 365:	56                   	push   %esi
 366:	8b 45 08             	mov    0x8(%ebp),%eax
 369:	53                   	push   %ebx
 36a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 36d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 370:	85 db                	test   %ebx,%ebx
 372:	7e 12                	jle    386 <memmove+0x26>
 374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 378:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 37c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 37f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 382:	39 da                	cmp    %ebx,%edx
 384:	75 f2                	jne    378 <memmove+0x18>
  return vdst;
}
 386:	5b                   	pop    %ebx
 387:	5e                   	pop    %esi
 388:	5d                   	pop    %ebp
 389:	c3                   	ret    

0000038a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 38a:	b8 01 00 00 00       	mov    $0x1,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <exit>:
SYSCALL(exit)
 392:	b8 02 00 00 00       	mov    $0x2,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <wait>:
SYSCALL(wait)
 39a:	b8 03 00 00 00       	mov    $0x3,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <pipe>:
SYSCALL(pipe)
 3a2:	b8 04 00 00 00       	mov    $0x4,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <read>:
SYSCALL(read)
 3aa:	b8 05 00 00 00       	mov    $0x5,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <write>:
SYSCALL(write)
 3b2:	b8 10 00 00 00       	mov    $0x10,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <close>:
SYSCALL(close)
 3ba:	b8 15 00 00 00       	mov    $0x15,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <kill>:
SYSCALL(kill)
 3c2:	b8 06 00 00 00       	mov    $0x6,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <exec>:
SYSCALL(exec)
 3ca:	b8 07 00 00 00       	mov    $0x7,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <open>:
SYSCALL(open)
 3d2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <mknod>:
SYSCALL(mknod)
 3da:	b8 11 00 00 00       	mov    $0x11,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <unlink>:
SYSCALL(unlink)
 3e2:	b8 12 00 00 00       	mov    $0x12,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <fstat>:
SYSCALL(fstat)
 3ea:	b8 08 00 00 00       	mov    $0x8,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <link>:
SYSCALL(link)
 3f2:	b8 13 00 00 00       	mov    $0x13,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <mkdir>:
SYSCALL(mkdir)
 3fa:	b8 14 00 00 00       	mov    $0x14,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <chdir>:
SYSCALL(chdir)
 402:	b8 09 00 00 00       	mov    $0x9,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <dup>:
SYSCALL(dup)
 40a:	b8 0a 00 00 00       	mov    $0xa,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <getpid>:
SYSCALL(getpid)
 412:	b8 0b 00 00 00       	mov    $0xb,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <sbrk>:
SYSCALL(sbrk)
 41a:	b8 0c 00 00 00       	mov    $0xc,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <sleep>:
SYSCALL(sleep)
 422:	b8 0d 00 00 00       	mov    $0xd,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <uptime>:
SYSCALL(uptime)
 42a:	b8 0e 00 00 00       	mov    $0xe,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <hello>:
SYSCALL(hello)
 432:	b8 18 00 00 00       	mov    $0x18,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <waitpid>:
SYSCALL(waitpid)
 43a:	b8 19 00 00 00       	mov    $0x19,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <setpriority>:
SYSCALL(setpriority)
 442:	b8 1a 00 00 00       	mov    $0x1a,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    
