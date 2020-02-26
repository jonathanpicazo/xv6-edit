
_lab2:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 10             	sub    $0x10,%esp
	
	int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#2\n");
   9:	c7 44 24 04 08 0a 00 	movl   $0xa08,0x4(%esp)
  10:	00 
  11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  18:	e8 d3 04 00 00       	call   4f0 <printf>
  
	PScheduler();
  1d:	e8 0e 00 00 00       	call   30 <PScheduler>
	return 0;
 }
  22:	31 c0                	xor    %eax,%eax
  24:	c9                   	leave  
  25:	c3                   	ret    
  26:	66 90                	xchg   %ax,%ax
  28:	66 90                	xchg   %ax,%ax
  2a:	66 90                	xchg   %ax,%ax
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax

00000030 <PScheduler>:
  
    
     int PScheduler(void){
  30:	55                   	push   %ebp
  31:	89 e5                	mov    %esp,%ebp
  33:	56                   	push   %esi
  34:	53                   	push   %ebx
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
  35:	bb 1e 00 00 00       	mov    $0x1e,%ebx
     int PScheduler(void){
  3a:	83 ec 10             	sub    $0x10,%esp
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
  3d:	c7 44 24 04 58 08 00 	movl   $0x858,0x4(%esp)
  44:	00 
  45:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  4c:	e8 9f 04 00 00       	call   4f0 <printf>
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
  51:	c7 44 24 04 b0 08 00 	movl   $0x8b0,0x4(%esp)
  58:	00 
  59:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  60:	e8 8b 04 00 00       	call   4f0 <printf>
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
  65:	c7 44 24 04 00 09 00 	movl   $0x900,0x4(%esp)
  6c:	00 
  6d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  74:	e8 77 04 00 00       	call   4f0 <printf>
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
  79:	c7 44 24 04 54 09 00 	movl   $0x954,0x4(%esp)
  80:	00 
  81:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  88:	e8 63 04 00 00       	call   4f0 <printf>
    setpriority(0);
  8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  94:	e8 a9 03 00 00       	call   442 <setpriority>
    for (i = 0; i <  3; i++) {
	pid = fork();
  99:	e8 ec 02 00 00       	call   38a <fork>
	if (pid > 0 ) {
  9e:	83 f8 00             	cmp    $0x0,%eax
	pid = fork();
  a1:	89 c6                	mov    %eax,%esi
	if (pid > 0 ) {
  a3:	7e 56                	jle    fb <PScheduler+0xcb>
    for (i = 0; i <  3; i++) {
  a5:	83 eb 0a             	sub    $0xa,%ebx
  a8:	75 ef                	jne    99 <PScheduler+0x69>
			printf(2," \n Error \n");
			
        }
	}

	if(pid > 0) {
  aa:	85 f6                	test   %esi,%esi
  ac:	7e 38                	jle    e6 <PScheduler+0xb6>
		for (i = 0; i <  3; i++) {
			wait(0);
  ae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  b5:	e8 e0 02 00 00       	call   39a <wait>
  ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  c1:	e8 d4 02 00 00       	call   39a <wait>
  c6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  cd:	e8 c8 02 00 00       	call   39a <wait>

		}
                     printf(1,"\n if processes with highest priority finished first then its correct \n");
  d2:	c7 44 24 04 c0 09 00 	movl   $0x9c0,0x4(%esp)
  d9:	00 
  da:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  e1:	e8 0a 04 00 00       	call   4f0 <printf>
                     //exit(0);
}
	exit(0);	
  e6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ed:	e8 a0 02 00 00       	call   392 <exit>
	return 0;}
  f2:	83 c4 10             	add    $0x10,%esp
  f5:	31 c0                	xor    %eax,%eax
  f7:	5b                   	pop    %ebx
  f8:	5e                   	pop    %esi
  f9:	5d                   	pop    %ebp
  fa:	c3                   	ret    
	else if ( pid == 0) {
  fb:	75 58                	jne    155 <PScheduler+0x125>
		setpriority(30-10*i);	
  fd:	89 1c 24             	mov    %ebx,(%esp)
 100:	e8 3d 03 00 00       	call   442 <setpriority>
 105:	b8 50 c3 00 00       	mov    $0xc350,%eax
 10a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    setpriority(0);
 110:	ba e8 03 00 00       	mov    $0x3e8,%edx
 115:	8d 76 00             	lea    0x0(%esi),%esi
				asm("nop"); }}
 118:	90                   	nop
			for(k=0;k<1000;k++) {
 119:	83 ea 01             	sub    $0x1,%edx
 11c:	75 fa                	jne    118 <PScheduler+0xe8>
		for (j=0;j<50000;j++) {
 11e:	83 e8 01             	sub    $0x1,%eax
 121:	75 ed                	jne    110 <PScheduler+0xe0>
		printf(1, "\n child# %d with priority %d has finished! \n",getpid(),30-10*i);		
 123:	e8 ea 02 00 00       	call   412 <getpid>
 128:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 12c:	c7 44 24 04 90 09 00 	movl   $0x990,0x4(%esp)
 133:	00 
 134:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13b:	89 44 24 08          	mov    %eax,0x8(%esp)
 13f:	e8 ac 03 00 00       	call   4f0 <printf>
		exit(0);
 144:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 14b:	e8 42 02 00 00       	call   392 <exit>
 150:	e9 50 ff ff ff       	jmp    a5 <PScheduler+0x75>
			printf(2," \n Error \n");
 155:	c7 44 24 04 3c 0a 00 	movl   $0xa3c,0x4(%esp)
 15c:	00 
 15d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 164:	e8 87 03 00 00       	call   4f0 <printf>
 169:	e9 37 ff ff ff       	jmp    a5 <PScheduler+0x75>
 16e:	66 90                	xchg   %ax,%ax

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
 44a:	66 90                	xchg   %ax,%ax
 44c:	66 90                	xchg   %ax,%ax
 44e:	66 90                	xchg   %ax,%ax

00000450 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	56                   	push   %esi
 455:	89 c6                	mov    %eax,%esi
 457:	53                   	push   %ebx
 458:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 45b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 45e:	85 db                	test   %ebx,%ebx
 460:	74 09                	je     46b <printint+0x1b>
 462:	89 d0                	mov    %edx,%eax
 464:	c1 e8 1f             	shr    $0x1f,%eax
 467:	84 c0                	test   %al,%al
 469:	75 75                	jne    4e0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 46b:	89 d0                	mov    %edx,%eax
  neg = 0;
 46d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 474:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 477:	31 ff                	xor    %edi,%edi
 479:	89 ce                	mov    %ecx,%esi
 47b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 47e:	eb 02                	jmp    482 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 480:	89 cf                	mov    %ecx,%edi
 482:	31 d2                	xor    %edx,%edx
 484:	f7 f6                	div    %esi
 486:	8d 4f 01             	lea    0x1(%edi),%ecx
 489:	0f b6 92 4e 0a 00 00 	movzbl 0xa4e(%edx),%edx
  }while((x /= base) != 0);
 490:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 492:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 495:	75 e9                	jne    480 <printint+0x30>
  if(neg)
 497:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 49a:	89 c8                	mov    %ecx,%eax
 49c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 49f:	85 d2                	test   %edx,%edx
 4a1:	74 08                	je     4ab <printint+0x5b>
    buf[i++] = '-';
 4a3:	8d 4f 02             	lea    0x2(%edi),%ecx
 4a6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 4ab:	8d 79 ff             	lea    -0x1(%ecx),%edi
 4ae:	66 90                	xchg   %ax,%ax
 4b0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 4b5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 4b8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4bf:	00 
 4c0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 4c4:	89 34 24             	mov    %esi,(%esp)
 4c7:	88 45 d7             	mov    %al,-0x29(%ebp)
 4ca:	e8 e3 fe ff ff       	call   3b2 <write>
  while(--i >= 0)
 4cf:	83 ff ff             	cmp    $0xffffffff,%edi
 4d2:	75 dc                	jne    4b0 <printint+0x60>
    putc(fd, buf[i]);
}
 4d4:	83 c4 4c             	add    $0x4c,%esp
 4d7:	5b                   	pop    %ebx
 4d8:	5e                   	pop    %esi
 4d9:	5f                   	pop    %edi
 4da:	5d                   	pop    %ebp
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 4e0:	89 d0                	mov    %edx,%eax
 4e2:	f7 d8                	neg    %eax
    neg = 1;
 4e4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 4eb:	eb 87                	jmp    474 <printint+0x24>
 4ed:	8d 76 00             	lea    0x0(%esi),%esi

000004f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 4f4:	31 ff                	xor    %edi,%edi
{
 4f6:	56                   	push   %esi
 4f7:	53                   	push   %ebx
 4f8:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4fb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 4fe:	8d 45 10             	lea    0x10(%ebp),%eax
{
 501:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 504:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 507:	0f b6 13             	movzbl (%ebx),%edx
 50a:	83 c3 01             	add    $0x1,%ebx
 50d:	84 d2                	test   %dl,%dl
 50f:	75 39                	jne    54a <printf+0x5a>
 511:	e9 c2 00 00 00       	jmp    5d8 <printf+0xe8>
 516:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 518:	83 fa 25             	cmp    $0x25,%edx
 51b:	0f 84 bf 00 00 00    	je     5e0 <printf+0xf0>
  write(fd, &c, 1);
 521:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 524:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 52b:	00 
 52c:	89 44 24 04          	mov    %eax,0x4(%esp)
 530:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 533:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 536:	e8 77 fe ff ff       	call   3b2 <write>
 53b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 53e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 542:	84 d2                	test   %dl,%dl
 544:	0f 84 8e 00 00 00    	je     5d8 <printf+0xe8>
    if(state == 0){
 54a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 54c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 54f:	74 c7                	je     518 <printf+0x28>
      }
    } else if(state == '%'){
 551:	83 ff 25             	cmp    $0x25,%edi
 554:	75 e5                	jne    53b <printf+0x4b>
      if(c == 'd'){
 556:	83 fa 64             	cmp    $0x64,%edx
 559:	0f 84 31 01 00 00    	je     690 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 55f:	25 f7 00 00 00       	and    $0xf7,%eax
 564:	83 f8 70             	cmp    $0x70,%eax
 567:	0f 84 83 00 00 00    	je     5f0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 56d:	83 fa 73             	cmp    $0x73,%edx
 570:	0f 84 a2 00 00 00    	je     618 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 576:	83 fa 63             	cmp    $0x63,%edx
 579:	0f 84 35 01 00 00    	je     6b4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 57f:	83 fa 25             	cmp    $0x25,%edx
 582:	0f 84 e0 00 00 00    	je     668 <printf+0x178>
  write(fd, &c, 1);
 588:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 58b:	83 c3 01             	add    $0x1,%ebx
 58e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 595:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 596:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 598:	89 44 24 04          	mov    %eax,0x4(%esp)
 59c:	89 34 24             	mov    %esi,(%esp)
 59f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 5a2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 5a6:	e8 07 fe ff ff       	call   3b2 <write>
        putc(fd, c);
 5ab:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 5ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5b8:	00 
 5b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 5bd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 5c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 5c3:	e8 ea fd ff ff       	call   3b2 <write>
  for(i = 0; fmt[i]; i++){
 5c8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5cc:	84 d2                	test   %dl,%dl
 5ce:	0f 85 76 ff ff ff    	jne    54a <printf+0x5a>
 5d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 5d8:	83 c4 3c             	add    $0x3c,%esp
 5db:	5b                   	pop    %ebx
 5dc:	5e                   	pop    %esi
 5dd:	5f                   	pop    %edi
 5de:	5d                   	pop    %ebp
 5df:	c3                   	ret    
        state = '%';
 5e0:	bf 25 00 00 00       	mov    $0x25,%edi
 5e5:	e9 51 ff ff ff       	jmp    53b <printf+0x4b>
 5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5f3:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 5f8:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 5fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 601:	8b 10                	mov    (%eax),%edx
 603:	89 f0                	mov    %esi,%eax
 605:	e8 46 fe ff ff       	call   450 <printint>
        ap++;
 60a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 60e:	e9 28 ff ff ff       	jmp    53b <printf+0x4b>
 613:	90                   	nop
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 618:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 61b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 61f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 621:	b8 47 0a 00 00       	mov    $0xa47,%eax
 626:	85 ff                	test   %edi,%edi
 628:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 62b:	0f b6 07             	movzbl (%edi),%eax
 62e:	84 c0                	test   %al,%al
 630:	74 2a                	je     65c <printf+0x16c>
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 638:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 63b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 63e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 641:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 648:	00 
 649:	89 44 24 04          	mov    %eax,0x4(%esp)
 64d:	89 34 24             	mov    %esi,(%esp)
 650:	e8 5d fd ff ff       	call   3b2 <write>
        while(*s != 0){
 655:	0f b6 07             	movzbl (%edi),%eax
 658:	84 c0                	test   %al,%al
 65a:	75 dc                	jne    638 <printf+0x148>
      state = 0;
 65c:	31 ff                	xor    %edi,%edi
 65e:	e9 d8 fe ff ff       	jmp    53b <printf+0x4b>
 663:	90                   	nop
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 668:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 66b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 66d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 674:	00 
 675:	89 44 24 04          	mov    %eax,0x4(%esp)
 679:	89 34 24             	mov    %esi,(%esp)
 67c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 680:	e8 2d fd ff ff       	call   3b2 <write>
 685:	e9 b1 fe ff ff       	jmp    53b <printf+0x4b>
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 690:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 693:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 698:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 69b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 6a2:	8b 10                	mov    (%eax),%edx
 6a4:	89 f0                	mov    %esi,%eax
 6a6:	e8 a5 fd ff ff       	call   450 <printint>
        ap++;
 6ab:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6af:	e9 87 fe ff ff       	jmp    53b <printf+0x4b>
        putc(fd, *ap);
 6b4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 6b7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 6b9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6bb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6c2:	00 
 6c3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 6c6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 6c9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 6d0:	e8 dd fc ff ff       	call   3b2 <write>
        ap++;
 6d5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6d9:	e9 5d fe ff ff       	jmp    53b <printf+0x4b>
 6de:	66 90                	xchg   %ax,%ax

000006e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	a1 f4 0c 00 00       	mov    0xcf4,%eax
{
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	53                   	push   %ebx
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ee:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 6f0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f3:	39 d0                	cmp    %edx,%eax
 6f5:	72 11                	jb     708 <free+0x28>
 6f7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6f8:	39 c8                	cmp    %ecx,%eax
 6fa:	72 04                	jb     700 <free+0x20>
 6fc:	39 ca                	cmp    %ecx,%edx
 6fe:	72 10                	jb     710 <free+0x30>
 700:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 702:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 704:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 706:	73 f0                	jae    6f8 <free+0x18>
 708:	39 ca                	cmp    %ecx,%edx
 70a:	72 04                	jb     710 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 70c:	39 c8                	cmp    %ecx,%eax
 70e:	72 f0                	jb     700 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 710:	8b 73 fc             	mov    -0x4(%ebx),%esi
 713:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 716:	39 cf                	cmp    %ecx,%edi
 718:	74 1e                	je     738 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 71a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 71d:	8b 48 04             	mov    0x4(%eax),%ecx
 720:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 723:	39 f2                	cmp    %esi,%edx
 725:	74 28                	je     74f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 727:	89 10                	mov    %edx,(%eax)
  freep = p;
 729:	a3 f4 0c 00 00       	mov    %eax,0xcf4
}
 72e:	5b                   	pop    %ebx
 72f:	5e                   	pop    %esi
 730:	5f                   	pop    %edi
 731:	5d                   	pop    %ebp
 732:	c3                   	ret    
 733:	90                   	nop
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 738:	03 71 04             	add    0x4(%ecx),%esi
 73b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 73e:	8b 08                	mov    (%eax),%ecx
 740:	8b 09                	mov    (%ecx),%ecx
 742:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 745:	8b 48 04             	mov    0x4(%eax),%ecx
 748:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 74b:	39 f2                	cmp    %esi,%edx
 74d:	75 d8                	jne    727 <free+0x47>
    p->s.size += bp->s.size;
 74f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 752:	a3 f4 0c 00 00       	mov    %eax,0xcf4
    p->s.size += bp->s.size;
 757:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 75a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 75d:	89 10                	mov    %edx,(%eax)
}
 75f:	5b                   	pop    %ebx
 760:	5e                   	pop    %esi
 761:	5f                   	pop    %edi
 762:	5d                   	pop    %ebp
 763:	c3                   	ret    
 764:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 76a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000770 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 779:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 77c:	8b 1d f4 0c 00 00    	mov    0xcf4,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 782:	8d 48 07             	lea    0x7(%eax),%ecx
 785:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 788:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 78a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 78d:	0f 84 9b 00 00 00    	je     82e <malloc+0xbe>
 793:	8b 13                	mov    (%ebx),%edx
 795:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 798:	39 fe                	cmp    %edi,%esi
 79a:	76 64                	jbe    800 <malloc+0x90>
 79c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 7a3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 7a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7ab:	eb 0e                	jmp    7bb <malloc+0x4b>
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7b0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7b2:	8b 78 04             	mov    0x4(%eax),%edi
 7b5:	39 fe                	cmp    %edi,%esi
 7b7:	76 4f                	jbe    808 <malloc+0x98>
 7b9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7bb:	3b 15 f4 0c 00 00    	cmp    0xcf4,%edx
 7c1:	75 ed                	jne    7b0 <malloc+0x40>
  if(nu < 4096)
 7c3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7c6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 7cc:	bf 00 10 00 00       	mov    $0x1000,%edi
 7d1:	0f 43 fe             	cmovae %esi,%edi
 7d4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 7d7:	89 04 24             	mov    %eax,(%esp)
 7da:	e8 3b fc ff ff       	call   41a <sbrk>
  if(p == (char*)-1)
 7df:	83 f8 ff             	cmp    $0xffffffff,%eax
 7e2:	74 18                	je     7fc <malloc+0x8c>
  hp->s.size = nu;
 7e4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 7e7:	83 c0 08             	add    $0x8,%eax
 7ea:	89 04 24             	mov    %eax,(%esp)
 7ed:	e8 ee fe ff ff       	call   6e0 <free>
  return freep;
 7f2:	8b 15 f4 0c 00 00    	mov    0xcf4,%edx
      if((p = morecore(nunits)) == 0)
 7f8:	85 d2                	test   %edx,%edx
 7fa:	75 b4                	jne    7b0 <malloc+0x40>
        return 0;
 7fc:	31 c0                	xor    %eax,%eax
 7fe:	eb 20                	jmp    820 <malloc+0xb0>
    if(p->s.size >= nunits){
 800:	89 d0                	mov    %edx,%eax
 802:	89 da                	mov    %ebx,%edx
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 808:	39 fe                	cmp    %edi,%esi
 80a:	74 1c                	je     828 <malloc+0xb8>
        p->s.size -= nunits;
 80c:	29 f7                	sub    %esi,%edi
 80e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 811:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 814:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 817:	89 15 f4 0c 00 00    	mov    %edx,0xcf4
      return (void*)(p + 1);
 81d:	83 c0 08             	add    $0x8,%eax
  }
}
 820:	83 c4 1c             	add    $0x1c,%esp
 823:	5b                   	pop    %ebx
 824:	5e                   	pop    %esi
 825:	5f                   	pop    %edi
 826:	5d                   	pop    %ebp
 827:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 828:	8b 08                	mov    (%eax),%ecx
 82a:	89 0a                	mov    %ecx,(%edx)
 82c:	eb e9                	jmp    817 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 82e:	c7 05 f4 0c 00 00 f8 	movl   $0xcf8,0xcf4
 835:	0c 00 00 
    base.s.size = 0;
 838:	ba f8 0c 00 00       	mov    $0xcf8,%edx
    base.s.ptr = freep = prevp = &base;
 83d:	c7 05 f8 0c 00 00 f8 	movl   $0xcf8,0xcf8
 844:	0c 00 00 
    base.s.size = 0;
 847:	c7 05 fc 0c 00 00 00 	movl   $0x0,0xcfc
 84e:	00 00 00 
 851:	e9 46 ff ff ff       	jmp    79c <malloc+0x2c>
