
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
  int i;

  if(argc < 2){
   6:	bb 01 00 00 00       	mov    $0x1,%ebx
{
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 75 08             	mov    0x8(%ebp),%esi
  14:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(argc < 2){
  17:	83 fe 01             	cmp    $0x1,%esi
  1a:	7e 2c                	jle    48 <main+0x48>
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ls(".");
    exit(0);
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  20:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
  for(i=1; i<argc; i++)
  23:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  26:	89 04 24             	mov    %eax,(%esp)
  29:	e8 e2 00 00 00       	call   110 <ls>
  for(i=1; i<argc; i++)
  2e:	39 f3                	cmp    %esi,%ebx
  30:	75 ee                	jne    20 <main+0x20>
  exit(0);
  32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  39:	e8 84 05 00 00       	call   5c2 <exit>
  return 0;
}
  3e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  41:	31 c0                	xor    %eax,%eax
  43:	5b                   	pop    %ebx
  44:	5e                   	pop    %esi
  45:	5f                   	pop    %edi
  46:	5d                   	pop    %ebp
  47:	c3                   	ret    
    ls(".");
  48:	c7 04 24 ce 0a 00 00 	movl   $0xace,(%esp)
  4f:	e8 bc 00 00 00       	call   110 <ls>
    exit(0);
  54:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  5b:	e8 62 05 00 00       	call   5c2 <exit>
  60:	eb d0                	jmp    32 <main+0x32>
  62:	66 90                	xchg   %ax,%ax
  64:	66 90                	xchg   %ax,%ax
  66:	66 90                	xchg   %ax,%ax
  68:	66 90                	xchg   %ax,%ax
  6a:	66 90                	xchg   %ax,%ax
  6c:	66 90                	xchg   %ax,%ax
  6e:	66 90                	xchg   %ax,%ax

00000070 <fmtname>:
{
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	56                   	push   %esi
  74:	53                   	push   %ebx
  75:	83 ec 10             	sub    $0x10,%esp
  78:	8b 5d 08             	mov    0x8(%ebp),%ebx
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  7b:	89 1c 24             	mov    %ebx,(%esp)
  7e:	e8 9d 03 00 00       	call   420 <strlen>
  83:	01 d8                	add    %ebx,%eax
  85:	73 10                	jae    97 <fmtname+0x27>
  87:	eb 13                	jmp    9c <fmtname+0x2c>
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  90:	83 e8 01             	sub    $0x1,%eax
  93:	39 c3                	cmp    %eax,%ebx
  95:	77 05                	ja     9c <fmtname+0x2c>
  97:	80 38 2f             	cmpb   $0x2f,(%eax)
  9a:	75 f4                	jne    90 <fmtname+0x20>
  p++;
  9c:	8d 58 01             	lea    0x1(%eax),%ebx
  if(strlen(p) >= DIRSIZ)
  9f:	89 1c 24             	mov    %ebx,(%esp)
  a2:	e8 79 03 00 00       	call   420 <strlen>
  a7:	83 f8 0d             	cmp    $0xd,%eax
  aa:	77 53                	ja     ff <fmtname+0x8f>
  memmove(buf, p, strlen(p));
  ac:	89 1c 24             	mov    %ebx,(%esp)
  af:	e8 6c 03 00 00       	call   420 <strlen>
  b4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  b8:	c7 04 24 c8 0d 00 00 	movl   $0xdc8,(%esp)
  bf:	89 44 24 08          	mov    %eax,0x8(%esp)
  c3:	e8 c8 04 00 00       	call   590 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  c8:	89 1c 24             	mov    %ebx,(%esp)
  cb:	e8 50 03 00 00       	call   420 <strlen>
  d0:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  d3:	bb c8 0d 00 00       	mov    $0xdc8,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  d8:	89 c6                	mov    %eax,%esi
  da:	e8 41 03 00 00       	call   420 <strlen>
  df:	ba 0e 00 00 00       	mov    $0xe,%edx
  e4:	29 f2                	sub    %esi,%edx
  e6:	89 54 24 08          	mov    %edx,0x8(%esp)
  ea:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  f1:	00 
  f2:	05 c8 0d 00 00       	add    $0xdc8,%eax
  f7:	89 04 24             	mov    %eax,(%esp)
  fa:	e8 51 03 00 00       	call   450 <memset>
}
  ff:	83 c4 10             	add    $0x10,%esp
 102:	89 d8                	mov    %ebx,%eax
 104:	5b                   	pop    %ebx
 105:	5e                   	pop    %esi
 106:	5d                   	pop    %ebp
 107:	c3                   	ret    
 108:	90                   	nop
 109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000110 <ls>:
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	57                   	push   %edi
 114:	56                   	push   %esi
 115:	53                   	push   %ebx
 116:	81 ec 6c 02 00 00    	sub    $0x26c,%esp
 11c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 11f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 126:	00 
 127:	89 3c 24             	mov    %edi,(%esp)
 12a:	e8 d3 04 00 00       	call   602 <open>
 12f:	85 c0                	test   %eax,%eax
 131:	89 c3                	mov    %eax,%ebx
 133:	0f 88 c7 01 00 00    	js     300 <ls+0x1f0>
  if(fstat(fd, &st) < 0){
 139:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 13f:	89 74 24 04          	mov    %esi,0x4(%esp)
 143:	89 04 24             	mov    %eax,(%esp)
 146:	e8 cf 04 00 00       	call   61a <fstat>
 14b:	85 c0                	test   %eax,%eax
 14d:	0f 88 f5 01 00 00    	js     348 <ls+0x238>
  switch(st.type){
 153:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 15a:	66 83 f8 01          	cmp    $0x1,%ax
 15e:	74 68                	je     1c8 <ls+0xb8>
 160:	66 83 f8 02          	cmp    $0x2,%ax
 164:	75 48                	jne    1ae <ls+0x9e>
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 166:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 16c:	89 3c 24             	mov    %edi,(%esp)
 16f:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 175:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 17b:	e8 f0 fe ff ff       	call   70 <fmtname>
 180:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 186:	89 74 24 10          	mov    %esi,0x10(%esp)
 18a:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 191:	00 
 192:	c7 44 24 04 ae 0a 00 	movl   $0xaae,0x4(%esp)
 199:	00 
 19a:	89 54 24 14          	mov    %edx,0x14(%esp)
 19e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1a5:	89 44 24 08          	mov    %eax,0x8(%esp)
 1a9:	e8 72 05 00 00       	call   720 <printf>
  close(fd);
 1ae:	89 1c 24             	mov    %ebx,(%esp)
 1b1:	e8 34 04 00 00       	call   5ea <close>
}
 1b6:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 1bc:	5b                   	pop    %ebx
 1bd:	5e                   	pop    %esi
 1be:	5f                   	pop    %edi
 1bf:	5d                   	pop    %ebp
 1c0:	c3                   	ret    
 1c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1c8:	89 3c 24             	mov    %edi,(%esp)
 1cb:	e8 50 02 00 00       	call   420 <strlen>
 1d0:	83 c0 10             	add    $0x10,%eax
 1d3:	3d 00 02 00 00       	cmp    $0x200,%eax
 1d8:	0f 87 4a 01 00 00    	ja     328 <ls+0x218>
    strcpy(buf, path);
 1de:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1e4:	89 7c 24 04          	mov    %edi,0x4(%esp)
 1e8:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 1ee:	89 04 24             	mov    %eax,(%esp)
 1f1:	e8 aa 01 00 00       	call   3a0 <strcpy>
    p = buf+strlen(buf);
 1f6:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1fc:	89 04 24             	mov    %eax,(%esp)
 1ff:	e8 1c 02 00 00       	call   420 <strlen>
 204:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 20a:	01 c8                	add    %ecx,%eax
    *p++ = '/';
 20c:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 20f:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 215:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 21b:	c6 00 2f             	movb   $0x2f,(%eax)
 21e:	66 90                	xchg   %ax,%ax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 220:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 227:	00 
 228:	89 7c 24 04          	mov    %edi,0x4(%esp)
 22c:	89 1c 24             	mov    %ebx,(%esp)
 22f:	e8 a6 03 00 00       	call   5da <read>
 234:	83 f8 10             	cmp    $0x10,%eax
 237:	0f 85 71 ff ff ff    	jne    1ae <ls+0x9e>
      if(de.inum == 0)
 23d:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 244:	00 
 245:	74 d9                	je     220 <ls+0x110>
      memmove(p, de.name, DIRSIZ);
 247:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 24d:	89 44 24 04          	mov    %eax,0x4(%esp)
 251:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
 257:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 25e:	00 
 25f:	89 04 24             	mov    %eax,(%esp)
 262:	e8 29 03 00 00       	call   590 <memmove>
      p[DIRSIZ] = 0;
 267:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 26d:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 271:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 277:	89 74 24 04          	mov    %esi,0x4(%esp)
 27b:	89 04 24             	mov    %eax,(%esp)
 27e:	e8 8d 02 00 00       	call   510 <stat>
 283:	85 c0                	test   %eax,%eax
 285:	0f 88 e5 00 00 00    	js     370 <ls+0x260>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 28b:	0f bf 95 d4 fd ff ff 	movswl -0x22c(%ebp),%edx
 292:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 298:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 29e:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 2a4:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
 2aa:	89 14 24             	mov    %edx,(%esp)
 2ad:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 2b3:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 2b9:	e8 b2 fd ff ff       	call   70 <fmtname>
 2be:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 2c4:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 2ca:	c7 44 24 04 ae 0a 00 	movl   $0xaae,0x4(%esp)
 2d1:	00 
 2d2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2d9:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 2dd:	8b 8d b4 fd ff ff    	mov    -0x24c(%ebp),%ecx
 2e3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2e7:	89 44 24 08          	mov    %eax,0x8(%esp)
 2eb:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 2ef:	e8 2c 04 00 00       	call   720 <printf>
 2f4:	e9 27 ff ff ff       	jmp    220 <ls+0x110>
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot open %s\n", path);
 300:	89 7c 24 08          	mov    %edi,0x8(%esp)
 304:	c7 44 24 04 86 0a 00 	movl   $0xa86,0x4(%esp)
 30b:	00 
 30c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 313:	e8 08 04 00 00       	call   720 <printf>
}
 318:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 31e:	5b                   	pop    %ebx
 31f:	5e                   	pop    %esi
 320:	5f                   	pop    %edi
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	90                   	nop
 324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "ls: path too long\n");
 328:	c7 44 24 04 bb 0a 00 	movl   $0xabb,0x4(%esp)
 32f:	00 
 330:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 337:	e8 e4 03 00 00       	call   720 <printf>
      break;
 33c:	e9 6d fe ff ff       	jmp    1ae <ls+0x9e>
 341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot stat %s\n", path);
 348:	89 7c 24 08          	mov    %edi,0x8(%esp)
 34c:	c7 44 24 04 9a 0a 00 	movl   $0xa9a,0x4(%esp)
 353:	00 
 354:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 35b:	e8 c0 03 00 00       	call   720 <printf>
    close(fd);
 360:	89 1c 24             	mov    %ebx,(%esp)
 363:	e8 82 02 00 00       	call   5ea <close>
    return;
 368:	e9 49 fe ff ff       	jmp    1b6 <ls+0xa6>
 36d:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "ls: cannot stat %s\n", buf);
 370:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 376:	89 44 24 08          	mov    %eax,0x8(%esp)
 37a:	c7 44 24 04 9a 0a 00 	movl   $0xa9a,0x4(%esp)
 381:	00 
 382:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 389:	e8 92 03 00 00       	call   720 <printf>
        continue;
 38e:	e9 8d fe ff ff       	jmp    220 <ls+0x110>
 393:	66 90                	xchg   %ax,%ax
 395:	66 90                	xchg   %ax,%ax
 397:	66 90                	xchg   %ax,%ax
 399:	66 90                	xchg   %ax,%ax
 39b:	66 90                	xchg   %ax,%ax
 39d:	66 90                	xchg   %ax,%ax
 39f:	90                   	nop

000003a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 3a9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3aa:	89 c2                	mov    %eax,%edx
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b0:	83 c1 01             	add    $0x1,%ecx
 3b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 3b7:	83 c2 01             	add    $0x1,%edx
 3ba:	84 db                	test   %bl,%bl
 3bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 3bf:	75 ef                	jne    3b0 <strcpy+0x10>
    ;
  return os;
}
 3c1:	5b                   	pop    %ebx
 3c2:	5d                   	pop    %ebp
 3c3:	c3                   	ret    
 3c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 55 08             	mov    0x8(%ebp),%edx
 3d6:	53                   	push   %ebx
 3d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3da:	0f b6 02             	movzbl (%edx),%eax
 3dd:	84 c0                	test   %al,%al
 3df:	74 2d                	je     40e <strcmp+0x3e>
 3e1:	0f b6 19             	movzbl (%ecx),%ebx
 3e4:	38 d8                	cmp    %bl,%al
 3e6:	74 0e                	je     3f6 <strcmp+0x26>
 3e8:	eb 2b                	jmp    415 <strcmp+0x45>
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3f0:	38 c8                	cmp    %cl,%al
 3f2:	75 15                	jne    409 <strcmp+0x39>
    p++, q++;
 3f4:	89 d9                	mov    %ebx,%ecx
 3f6:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 3f9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3fc:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3ff:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 403:	84 c0                	test   %al,%al
 405:	75 e9                	jne    3f0 <strcmp+0x20>
 407:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 409:	29 c8                	sub    %ecx,%eax
}
 40b:	5b                   	pop    %ebx
 40c:	5d                   	pop    %ebp
 40d:	c3                   	ret    
 40e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
 411:	31 c0                	xor    %eax,%eax
 413:	eb f4                	jmp    409 <strcmp+0x39>
 415:	0f b6 cb             	movzbl %bl,%ecx
 418:	eb ef                	jmp    409 <strcmp+0x39>
 41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000420 <strlen>:

uint
strlen(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 426:	80 39 00             	cmpb   $0x0,(%ecx)
 429:	74 12                	je     43d <strlen+0x1d>
 42b:	31 d2                	xor    %edx,%edx
 42d:	8d 76 00             	lea    0x0(%esi),%esi
 430:	83 c2 01             	add    $0x1,%edx
 433:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 437:	89 d0                	mov    %edx,%eax
 439:	75 f5                	jne    430 <strlen+0x10>
    ;
  return n;
}
 43b:	5d                   	pop    %ebp
 43c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 43d:	31 c0                	xor    %eax,%eax
}
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret    
 441:	eb 0d                	jmp    450 <memset>
 443:	90                   	nop
 444:	90                   	nop
 445:	90                   	nop
 446:	90                   	nop
 447:	90                   	nop
 448:	90                   	nop
 449:	90                   	nop
 44a:	90                   	nop
 44b:	90                   	nop
 44c:	90                   	nop
 44d:	90                   	nop
 44e:	90                   	nop
 44f:	90                   	nop

00000450 <memset>:

void*
memset(void *dst, int c, uint n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 55 08             	mov    0x8(%ebp),%edx
 456:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 457:	8b 4d 10             	mov    0x10(%ebp),%ecx
 45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 45d:	89 d7                	mov    %edx,%edi
 45f:	fc                   	cld    
 460:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 462:	89 d0                	mov    %edx,%eax
 464:	5f                   	pop    %edi
 465:	5d                   	pop    %ebp
 466:	c3                   	ret    
 467:	89 f6                	mov    %esi,%esi
 469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <strchr>:

char*
strchr(const char *s, char c)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	53                   	push   %ebx
 477:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 47a:	0f b6 18             	movzbl (%eax),%ebx
 47d:	84 db                	test   %bl,%bl
 47f:	74 1d                	je     49e <strchr+0x2e>
    if(*s == c)
 481:	38 d3                	cmp    %dl,%bl
 483:	89 d1                	mov    %edx,%ecx
 485:	75 0d                	jne    494 <strchr+0x24>
 487:	eb 17                	jmp    4a0 <strchr+0x30>
 489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 490:	38 ca                	cmp    %cl,%dl
 492:	74 0c                	je     4a0 <strchr+0x30>
  for(; *s; s++)
 494:	83 c0 01             	add    $0x1,%eax
 497:	0f b6 10             	movzbl (%eax),%edx
 49a:	84 d2                	test   %dl,%dl
 49c:	75 f2                	jne    490 <strchr+0x20>
      return (char*)s;
  return 0;
 49e:	31 c0                	xor    %eax,%eax
}
 4a0:	5b                   	pop    %ebx
 4a1:	5d                   	pop    %ebp
 4a2:	c3                   	ret    
 4a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <gets>:

char*
gets(char *buf, int max)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4b5:	31 f6                	xor    %esi,%esi
{
 4b7:	53                   	push   %ebx
 4b8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
 4bb:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 4be:	eb 31                	jmp    4f1 <gets+0x41>
    cc = read(0, &c, 1);
 4c0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4c7:	00 
 4c8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 4cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4d3:	e8 02 01 00 00       	call   5da <read>
    if(cc < 1)
 4d8:	85 c0                	test   %eax,%eax
 4da:	7e 1d                	jle    4f9 <gets+0x49>
      break;
    buf[i++] = c;
 4dc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
 4e0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
 4e2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 4e5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
 4e7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4eb:	74 0c                	je     4f9 <gets+0x49>
 4ed:	3c 0a                	cmp    $0xa,%al
 4ef:	74 08                	je     4f9 <gets+0x49>
  for(i=0; i+1 < max; ){
 4f1:	8d 5e 01             	lea    0x1(%esi),%ebx
 4f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4f7:	7c c7                	jl     4c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4f9:	8b 45 08             	mov    0x8(%ebp),%eax
 4fc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 500:	83 c4 2c             	add    $0x2c,%esp
 503:	5b                   	pop    %ebx
 504:	5e                   	pop    %esi
 505:	5f                   	pop    %edi
 506:	5d                   	pop    %ebp
 507:	c3                   	ret    
 508:	90                   	nop
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000510 <stat>:

int
stat(const char *n, struct stat *st)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
 515:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 518:	8b 45 08             	mov    0x8(%ebp),%eax
 51b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 522:	00 
 523:	89 04 24             	mov    %eax,(%esp)
 526:	e8 d7 00 00 00       	call   602 <open>
  if(fd < 0)
 52b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
 52d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 52f:	78 27                	js     558 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 531:	8b 45 0c             	mov    0xc(%ebp),%eax
 534:	89 1c 24             	mov    %ebx,(%esp)
 537:	89 44 24 04          	mov    %eax,0x4(%esp)
 53b:	e8 da 00 00 00       	call   61a <fstat>
  close(fd);
 540:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 543:	89 c6                	mov    %eax,%esi
  close(fd);
 545:	e8 a0 00 00 00       	call   5ea <close>
  return r;
 54a:	89 f0                	mov    %esi,%eax
}
 54c:	83 c4 10             	add    $0x10,%esp
 54f:	5b                   	pop    %ebx
 550:	5e                   	pop    %esi
 551:	5d                   	pop    %ebp
 552:	c3                   	ret    
 553:	90                   	nop
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 558:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 55d:	eb ed                	jmp    54c <stat+0x3c>
 55f:	90                   	nop

00000560 <atoi>:

int
atoi(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	8b 4d 08             	mov    0x8(%ebp),%ecx
 566:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 567:	0f be 11             	movsbl (%ecx),%edx
 56a:	8d 42 d0             	lea    -0x30(%edx),%eax
 56d:	3c 09                	cmp    $0x9,%al
  n = 0;
 56f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 574:	77 17                	ja     58d <atoi+0x2d>
 576:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 578:	83 c1 01             	add    $0x1,%ecx
 57b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 57e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 582:	0f be 11             	movsbl (%ecx),%edx
 585:	8d 5a d0             	lea    -0x30(%edx),%ebx
 588:	80 fb 09             	cmp    $0x9,%bl
 58b:	76 eb                	jbe    578 <atoi+0x18>
  return n;
}
 58d:	5b                   	pop    %ebx
 58e:	5d                   	pop    %ebp
 58f:	c3                   	ret    

00000590 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 590:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 591:	31 d2                	xor    %edx,%edx
{
 593:	89 e5                	mov    %esp,%ebp
 595:	56                   	push   %esi
 596:	8b 45 08             	mov    0x8(%ebp),%eax
 599:	53                   	push   %ebx
 59a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 59d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
 5a0:	85 db                	test   %ebx,%ebx
 5a2:	7e 12                	jle    5b6 <memmove+0x26>
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 5a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5af:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 5b2:	39 da                	cmp    %ebx,%edx
 5b4:	75 f2                	jne    5a8 <memmove+0x18>
  return vdst;
}
 5b6:	5b                   	pop    %ebx
 5b7:	5e                   	pop    %esi
 5b8:	5d                   	pop    %ebp
 5b9:	c3                   	ret    

000005ba <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ba:	b8 01 00 00 00       	mov    $0x1,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <exit>:
SYSCALL(exit)
 5c2:	b8 02 00 00 00       	mov    $0x2,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <wait>:
SYSCALL(wait)
 5ca:	b8 03 00 00 00       	mov    $0x3,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <pipe>:
SYSCALL(pipe)
 5d2:	b8 04 00 00 00       	mov    $0x4,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <read>:
SYSCALL(read)
 5da:	b8 05 00 00 00       	mov    $0x5,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <write>:
SYSCALL(write)
 5e2:	b8 10 00 00 00       	mov    $0x10,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <close>:
SYSCALL(close)
 5ea:	b8 15 00 00 00       	mov    $0x15,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <kill>:
SYSCALL(kill)
 5f2:	b8 06 00 00 00       	mov    $0x6,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <exec>:
SYSCALL(exec)
 5fa:	b8 07 00 00 00       	mov    $0x7,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <open>:
SYSCALL(open)
 602:	b8 0f 00 00 00       	mov    $0xf,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <mknod>:
SYSCALL(mknod)
 60a:	b8 11 00 00 00       	mov    $0x11,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <unlink>:
SYSCALL(unlink)
 612:	b8 12 00 00 00       	mov    $0x12,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <fstat>:
SYSCALL(fstat)
 61a:	b8 08 00 00 00       	mov    $0x8,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <link>:
SYSCALL(link)
 622:	b8 13 00 00 00       	mov    $0x13,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <mkdir>:
SYSCALL(mkdir)
 62a:	b8 14 00 00 00       	mov    $0x14,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <chdir>:
SYSCALL(chdir)
 632:	b8 09 00 00 00       	mov    $0x9,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <dup>:
SYSCALL(dup)
 63a:	b8 0a 00 00 00       	mov    $0xa,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <getpid>:
SYSCALL(getpid)
 642:	b8 0b 00 00 00       	mov    $0xb,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <sbrk>:
SYSCALL(sbrk)
 64a:	b8 0c 00 00 00       	mov    $0xc,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <sleep>:
SYSCALL(sleep)
 652:	b8 0d 00 00 00       	mov    $0xd,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <uptime>:
SYSCALL(uptime)
 65a:	b8 0e 00 00 00       	mov    $0xe,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <hello>:
SYSCALL(hello)
 662:	b8 18 00 00 00       	mov    $0x18,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <waitpid>:
SYSCALL(waitpid)
 66a:	b8 19 00 00 00       	mov    $0x19,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    
 672:	66 90                	xchg   %ax,%ax
 674:	66 90                	xchg   %ax,%ax
 676:	66 90                	xchg   %ax,%ax
 678:	66 90                	xchg   %ax,%ax
 67a:	66 90                	xchg   %ax,%ax
 67c:	66 90                	xchg   %ax,%ax
 67e:	66 90                	xchg   %ax,%ax

00000680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	89 c6                	mov    %eax,%esi
 687:	53                   	push   %ebx
 688:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 68b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 68e:	85 db                	test   %ebx,%ebx
 690:	74 09                	je     69b <printint+0x1b>
 692:	89 d0                	mov    %edx,%eax
 694:	c1 e8 1f             	shr    $0x1f,%eax
 697:	84 c0                	test   %al,%al
 699:	75 75                	jne    710 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 69b:	89 d0                	mov    %edx,%eax
  neg = 0;
 69d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6a4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
 6a7:	31 ff                	xor    %edi,%edi
 6a9:	89 ce                	mov    %ecx,%esi
 6ab:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 6ae:	eb 02                	jmp    6b2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 6b0:	89 cf                	mov    %ecx,%edi
 6b2:	31 d2                	xor    %edx,%edx
 6b4:	f7 f6                	div    %esi
 6b6:	8d 4f 01             	lea    0x1(%edi),%ecx
 6b9:	0f b6 92 d7 0a 00 00 	movzbl 0xad7(%edx),%edx
  }while((x /= base) != 0);
 6c0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 6c2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6c5:	75 e9                	jne    6b0 <printint+0x30>
  if(neg)
 6c7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
 6ca:	89 c8                	mov    %ecx,%eax
 6cc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
 6cf:	85 d2                	test   %edx,%edx
 6d1:	74 08                	je     6db <printint+0x5b>
    buf[i++] = '-';
 6d3:	8d 4f 02             	lea    0x2(%edi),%ecx
 6d6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 6db:	8d 79 ff             	lea    -0x1(%ecx),%edi
 6de:	66 90                	xchg   %ax,%ax
 6e0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 6e5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 6e8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6ef:	00 
 6f0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 6f4:	89 34 24             	mov    %esi,(%esp)
 6f7:	88 45 d7             	mov    %al,-0x29(%ebp)
 6fa:	e8 e3 fe ff ff       	call   5e2 <write>
  while(--i >= 0)
 6ff:	83 ff ff             	cmp    $0xffffffff,%edi
 702:	75 dc                	jne    6e0 <printint+0x60>
    putc(fd, buf[i]);
}
 704:	83 c4 4c             	add    $0x4c,%esp
 707:	5b                   	pop    %ebx
 708:	5e                   	pop    %esi
 709:	5f                   	pop    %edi
 70a:	5d                   	pop    %ebp
 70b:	c3                   	ret    
 70c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
 710:	89 d0                	mov    %edx,%eax
 712:	f7 d8                	neg    %eax
    neg = 1;
 714:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 71b:	eb 87                	jmp    6a4 <printint+0x24>
 71d:	8d 76 00             	lea    0x0(%esi),%esi

00000720 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 724:	31 ff                	xor    %edi,%edi
{
 726:	56                   	push   %esi
 727:	53                   	push   %ebx
 728:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 72b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
 72e:	8d 45 10             	lea    0x10(%ebp),%eax
{
 731:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 734:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 737:	0f b6 13             	movzbl (%ebx),%edx
 73a:	83 c3 01             	add    $0x1,%ebx
 73d:	84 d2                	test   %dl,%dl
 73f:	75 39                	jne    77a <printf+0x5a>
 741:	e9 c2 00 00 00       	jmp    808 <printf+0xe8>
 746:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 748:	83 fa 25             	cmp    $0x25,%edx
 74b:	0f 84 bf 00 00 00    	je     810 <printf+0xf0>
  write(fd, &c, 1);
 751:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 754:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 75b:	00 
 75c:	89 44 24 04          	mov    %eax,0x4(%esp)
 760:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
 763:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
 766:	e8 77 fe ff ff       	call   5e2 <write>
 76b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
 76e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 772:	84 d2                	test   %dl,%dl
 774:	0f 84 8e 00 00 00    	je     808 <printf+0xe8>
    if(state == 0){
 77a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 77c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 77f:	74 c7                	je     748 <printf+0x28>
      }
    } else if(state == '%'){
 781:	83 ff 25             	cmp    $0x25,%edi
 784:	75 e5                	jne    76b <printf+0x4b>
      if(c == 'd'){
 786:	83 fa 64             	cmp    $0x64,%edx
 789:	0f 84 31 01 00 00    	je     8c0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 78f:	25 f7 00 00 00       	and    $0xf7,%eax
 794:	83 f8 70             	cmp    $0x70,%eax
 797:	0f 84 83 00 00 00    	je     820 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 79d:	83 fa 73             	cmp    $0x73,%edx
 7a0:	0f 84 a2 00 00 00    	je     848 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7a6:	83 fa 63             	cmp    $0x63,%edx
 7a9:	0f 84 35 01 00 00    	je     8e4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7af:	83 fa 25             	cmp    $0x25,%edx
 7b2:	0f 84 e0 00 00 00    	je     898 <printf+0x178>
  write(fd, &c, 1);
 7b8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7bb:	83 c3 01             	add    $0x1,%ebx
 7be:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7c5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7c6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 7c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7cc:	89 34 24             	mov    %esi,(%esp)
 7cf:	89 55 d0             	mov    %edx,-0x30(%ebp)
 7d2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 7d6:	e8 07 fe ff ff       	call   5e2 <write>
        putc(fd, c);
 7db:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
 7de:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7e1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7e8:	00 
 7e9:	89 44 24 04          	mov    %eax,0x4(%esp)
 7ed:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
 7f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7f3:	e8 ea fd ff ff       	call   5e2 <write>
  for(i = 0; fmt[i]; i++){
 7f8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7fc:	84 d2                	test   %dl,%dl
 7fe:	0f 85 76 ff ff ff    	jne    77a <printf+0x5a>
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
 808:	83 c4 3c             	add    $0x3c,%esp
 80b:	5b                   	pop    %ebx
 80c:	5e                   	pop    %esi
 80d:	5f                   	pop    %edi
 80e:	5d                   	pop    %ebp
 80f:	c3                   	ret    
        state = '%';
 810:	bf 25 00 00 00       	mov    $0x25,%edi
 815:	e9 51 ff ff ff       	jmp    76b <printf+0x4b>
 81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 820:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 823:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
 828:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
 82a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 831:	8b 10                	mov    (%eax),%edx
 833:	89 f0                	mov    %esi,%eax
 835:	e8 46 fe ff ff       	call   680 <printint>
        ap++;
 83a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 83e:	e9 28 ff ff ff       	jmp    76b <printf+0x4b>
 843:	90                   	nop
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 848:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 84b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
 84f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
 851:	b8 d0 0a 00 00       	mov    $0xad0,%eax
 856:	85 ff                	test   %edi,%edi
 858:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 85b:	0f b6 07             	movzbl (%edi),%eax
 85e:	84 c0                	test   %al,%al
 860:	74 2a                	je     88c <printf+0x16c>
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 868:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 86b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
 86e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
 871:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 878:	00 
 879:	89 44 24 04          	mov    %eax,0x4(%esp)
 87d:	89 34 24             	mov    %esi,(%esp)
 880:	e8 5d fd ff ff       	call   5e2 <write>
        while(*s != 0){
 885:	0f b6 07             	movzbl (%edi),%eax
 888:	84 c0                	test   %al,%al
 88a:	75 dc                	jne    868 <printf+0x148>
      state = 0;
 88c:	31 ff                	xor    %edi,%edi
 88e:	e9 d8 fe ff ff       	jmp    76b <printf+0x4b>
 893:	90                   	nop
 894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 898:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
 89b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 89d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8a4:	00 
 8a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8a9:	89 34 24             	mov    %esi,(%esp)
 8ac:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 8b0:	e8 2d fd ff ff       	call   5e2 <write>
 8b5:	e9 b1 fe ff ff       	jmp    76b <printf+0x4b>
 8ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
 8c8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
 8cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8d2:	8b 10                	mov    (%eax),%edx
 8d4:	89 f0                	mov    %esi,%eax
 8d6:	e8 a5 fd ff ff       	call   680 <printint>
        ap++;
 8db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8df:	e9 87 fe ff ff       	jmp    76b <printf+0x4b>
        putc(fd, *ap);
 8e4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
 8e7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
 8e9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8eb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8f2:	00 
 8f3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
 8f6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 8f9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 900:	e8 dd fc ff ff       	call   5e2 <write>
        ap++;
 905:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 909:	e9 5d fe ff ff       	jmp    76b <printf+0x4b>
 90e:	66 90                	xchg   %ax,%ax

00000910 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 910:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	a1 d8 0d 00 00       	mov    0xdd8,%eax
{
 916:	89 e5                	mov    %esp,%ebp
 918:	57                   	push   %edi
 919:	56                   	push   %esi
 91a:	53                   	push   %ebx
 91b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 91e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
 920:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 923:	39 d0                	cmp    %edx,%eax
 925:	72 11                	jb     938 <free+0x28>
 927:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 928:	39 c8                	cmp    %ecx,%eax
 92a:	72 04                	jb     930 <free+0x20>
 92c:	39 ca                	cmp    %ecx,%edx
 92e:	72 10                	jb     940 <free+0x30>
 930:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 932:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 934:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 936:	73 f0                	jae    928 <free+0x18>
 938:	39 ca                	cmp    %ecx,%edx
 93a:	72 04                	jb     940 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 93c:	39 c8                	cmp    %ecx,%eax
 93e:	72 f0                	jb     930 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 940:	8b 73 fc             	mov    -0x4(%ebx),%esi
 943:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 946:	39 cf                	cmp    %ecx,%edi
 948:	74 1e                	je     968 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 94a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 94d:	8b 48 04             	mov    0x4(%eax),%ecx
 950:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 953:	39 f2                	cmp    %esi,%edx
 955:	74 28                	je     97f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 957:	89 10                	mov    %edx,(%eax)
  freep = p;
 959:	a3 d8 0d 00 00       	mov    %eax,0xdd8
}
 95e:	5b                   	pop    %ebx
 95f:	5e                   	pop    %esi
 960:	5f                   	pop    %edi
 961:	5d                   	pop    %ebp
 962:	c3                   	ret    
 963:	90                   	nop
 964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 968:	03 71 04             	add    0x4(%ecx),%esi
 96b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 96e:	8b 08                	mov    (%eax),%ecx
 970:	8b 09                	mov    (%ecx),%ecx
 972:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 975:	8b 48 04             	mov    0x4(%eax),%ecx
 978:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 97b:	39 f2                	cmp    %esi,%edx
 97d:	75 d8                	jne    957 <free+0x47>
    p->s.size += bp->s.size;
 97f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
 982:	a3 d8 0d 00 00       	mov    %eax,0xdd8
    p->s.size += bp->s.size;
 987:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 98a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 98d:	89 10                	mov    %edx,(%eax)
}
 98f:	5b                   	pop    %ebx
 990:	5e                   	pop    %esi
 991:	5f                   	pop    %edi
 992:	5d                   	pop    %ebp
 993:	c3                   	ret    
 994:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 99a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000009a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9a0:	55                   	push   %ebp
 9a1:	89 e5                	mov    %esp,%ebp
 9a3:	57                   	push   %edi
 9a4:	56                   	push   %esi
 9a5:	53                   	push   %ebx
 9a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9ac:	8b 1d d8 0d 00 00    	mov    0xdd8,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b2:	8d 48 07             	lea    0x7(%eax),%ecx
 9b5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 9b8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9ba:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 9bd:	0f 84 9b 00 00 00    	je     a5e <malloc+0xbe>
 9c3:	8b 13                	mov    (%ebx),%edx
 9c5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 9c8:	39 fe                	cmp    %edi,%esi
 9ca:	76 64                	jbe    a30 <malloc+0x90>
 9cc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
 9d3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 9d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9db:	eb 0e                	jmp    9eb <malloc+0x4b>
 9dd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9e2:	8b 78 04             	mov    0x4(%eax),%edi
 9e5:	39 fe                	cmp    %edi,%esi
 9e7:	76 4f                	jbe    a38 <malloc+0x98>
 9e9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9eb:	3b 15 d8 0d 00 00    	cmp    0xdd8,%edx
 9f1:	75 ed                	jne    9e0 <malloc+0x40>
  if(nu < 4096)
 9f3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9f6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 9fc:	bf 00 10 00 00       	mov    $0x1000,%edi
 a01:	0f 43 fe             	cmovae %esi,%edi
 a04:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
 a07:	89 04 24             	mov    %eax,(%esp)
 a0a:	e8 3b fc ff ff       	call   64a <sbrk>
  if(p == (char*)-1)
 a0f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a12:	74 18                	je     a2c <malloc+0x8c>
  hp->s.size = nu;
 a14:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 a17:	83 c0 08             	add    $0x8,%eax
 a1a:	89 04 24             	mov    %eax,(%esp)
 a1d:	e8 ee fe ff ff       	call   910 <free>
  return freep;
 a22:	8b 15 d8 0d 00 00    	mov    0xdd8,%edx
      if((p = morecore(nunits)) == 0)
 a28:	85 d2                	test   %edx,%edx
 a2a:	75 b4                	jne    9e0 <malloc+0x40>
        return 0;
 a2c:	31 c0                	xor    %eax,%eax
 a2e:	eb 20                	jmp    a50 <malloc+0xb0>
    if(p->s.size >= nunits){
 a30:	89 d0                	mov    %edx,%eax
 a32:	89 da                	mov    %ebx,%edx
 a34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 a38:	39 fe                	cmp    %edi,%esi
 a3a:	74 1c                	je     a58 <malloc+0xb8>
        p->s.size -= nunits;
 a3c:	29 f7                	sub    %esi,%edi
 a3e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 a41:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 a44:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a47:	89 15 d8 0d 00 00    	mov    %edx,0xdd8
      return (void*)(p + 1);
 a4d:	83 c0 08             	add    $0x8,%eax
  }
}
 a50:	83 c4 1c             	add    $0x1c,%esp
 a53:	5b                   	pop    %ebx
 a54:	5e                   	pop    %esi
 a55:	5f                   	pop    %edi
 a56:	5d                   	pop    %ebp
 a57:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 a58:	8b 08                	mov    (%eax),%ecx
 a5a:	89 0a                	mov    %ecx,(%edx)
 a5c:	eb e9                	jmp    a47 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
 a5e:	c7 05 d8 0d 00 00 dc 	movl   $0xddc,0xdd8
 a65:	0d 00 00 
    base.s.size = 0;
 a68:	ba dc 0d 00 00       	mov    $0xddc,%edx
    base.s.ptr = freep = prevp = &base;
 a6d:	c7 05 dc 0d 00 00 dc 	movl   $0xddc,0xddc
 a74:	0d 00 00 
    base.s.size = 0;
 a77:	c7 05 e0 0d 00 00 00 	movl   $0x0,0xde0
 a7e:	00 00 00 
 a81:	e9 46 ff ff ff       	jmp    9cc <malloc+0x2c>
