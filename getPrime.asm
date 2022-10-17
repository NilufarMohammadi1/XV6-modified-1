
_getPrime:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    close(fd);
}
    

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 18             	sub    $0x18,%esp
  13:	8b 59 04             	mov    0x4(%ecx),%ebx
  getPrime(atoi(argv[1]),atoi(argv[2]));
  16:	ff 73 08             	pushl  0x8(%ebx)
  19:	e8 c2 03 00 00       	call   3e0 <atoi>
  1e:	89 c6                	mov    %eax,%esi
  20:	58                   	pop    %eax
  21:	ff 73 04             	pushl  0x4(%ebx)
  24:	e8 b7 03 00 00       	call   3e0 <atoi>
  29:	5a                   	pop    %edx
  2a:	59                   	pop    %ecx
  2b:	56                   	push   %esi
  2c:	50                   	push   %eax
  2d:	e8 6e 00 00 00       	call   a0 <getPrime>
  exit();
  32:	e8 1b 04 00 00       	call   452 <exit>
  37:	66 90                	xchg   %ax,%ax
  39:	66 90                	xchg   %ax,%ax
  3b:	66 90                	xchg   %ax,%ax
  3d:	66 90                	xchg   %ax,%ax
  3f:	90                   	nop

00000040 <isPrime>:
int  isPrime(int num){
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	56                   	push   %esi
  44:	53                   	push   %ebx
  45:	8b 5d 08             	mov    0x8(%ebp),%ebx
	return 0;
  48:	31 f6                	xor    %esi,%esi
   if(num <= 1) {
  4a:	83 fb 01             	cmp    $0x1,%ebx
  4d:	7e 29                	jle    78 <isPrime+0x38>
   for (int i = 2; i<num; i ++){
  4f:	83 fb 02             	cmp    $0x2,%ebx
  52:	74 3c                	je     90 <isPrime+0x50>
	if(num % i == 0){
  54:	89 de                	mov    %ebx,%esi
  56:	83 e6 01             	and    $0x1,%esi
  59:	74 1d                	je     78 <isPrime+0x38>
   for (int i = 2; i<num; i ++){
  5b:	b9 02 00 00 00       	mov    $0x2,%ecx
  60:	eb 0f                	jmp    71 <isPrime+0x31>
  62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	if(num % i == 0){
  68:	89 d8                	mov    %ebx,%eax
  6a:	99                   	cltd   
  6b:	f7 f9                	idiv   %ecx
  6d:	85 d2                	test   %edx,%edx
  6f:	74 0f                	je     80 <isPrime+0x40>
   for (int i = 2; i<num; i ++){
  71:	83 c1 01             	add    $0x1,%ecx
  74:	39 cb                	cmp    %ecx,%ebx
  76:	75 f0                	jne    68 <isPrime+0x28>
}
  78:	89 f0                	mov    %esi,%eax
  7a:	5b                   	pop    %ebx
  7b:	5e                   	pop    %esi
  7c:	5d                   	pop    %ebp
  7d:	c3                   	ret    
  7e:	66 90                	xchg   %ax,%ax
	return 0;
  80:	31 f6                	xor    %esi,%esi
}
  82:	89 f0                	mov    %esi,%eax
  84:	5b                   	pop    %ebx
  85:	5e                   	pop    %esi
  86:	5d                   	pop    %ebp
  87:	c3                   	ret    
  88:	90                   	nop
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   return 1;
  90:	be 01 00 00 00       	mov    $0x1,%esi
  95:	eb e1                	jmp    78 <isPrime+0x38>
  97:	89 f6                	mov    %esi,%esi
  99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000000a0 <getPrime>:
void getPrime(int begining,int ending){
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	57                   	push   %edi
  a4:	56                   	push   %esi
  a5:	53                   	push   %ebx
  a6:	83 ec 44             	sub    $0x44,%esp
  a9:	8b 7d 08             	mov    0x8(%ebp),%edi
  ac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    int fd = open("prime_numbers.txt", O_CREATE | O_RDWR);
  af:	68 02 02 00 00       	push   $0x202
  b4:	68 f8 08 00 00       	push   $0x8f8
  b9:	e8 d4 03 00 00       	call   492 <open>
    if(fd != -1)
  be:	83 c4 10             	add    $0x10,%esp
  c1:	83 f8 ff             	cmp    $0xffffffff,%eax
    int fd = open("prime_numbers.txt", O_CREATE | O_RDWR);
  c4:	89 45 c0             	mov    %eax,-0x40(%ebp)
    if(fd != -1)
  c7:	74 24                	je     ed <getPrime+0x4d>
        unlink("prime_numbers.txt");
  c9:	83 ec 0c             	sub    $0xc,%esp
  cc:	68 f8 08 00 00       	push   $0x8f8
  d1:	e8 cc 03 00 00       	call   4a2 <unlink>
        fd = open("prime_numbers.txt", O_CREATE | O_RDWR);
  d6:	58                   	pop    %eax
  d7:	5a                   	pop    %edx
  d8:	68 02 02 00 00       	push   $0x202
  dd:	68 f8 08 00 00       	push   $0x8f8
  e2:	e8 ab 03 00 00       	call   492 <open>
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	89 45 c0             	mov    %eax,-0x40(%ebp)
    for(int i = begining; i <= ending; i++)
  ed:	39 df                	cmp    %ebx,%edi
  ef:	0f 8f c7 00 00 00    	jg     1bc <getPrime+0x11c>
  f5:	8d 43 01             	lea    0x1(%ebx),%eax
  f8:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  fb:	90                   	nop
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   if(num <= 1) {
 100:	83 ff 01             	cmp    $0x1,%edi
 103:	0f 8e a7 00 00 00    	jle    1b0 <getPrime+0x110>
   for (int i = 2; i<num; i ++){
 109:	83 ff 02             	cmp    $0x2,%edi
 10c:	0f 84 d6 00 00 00    	je     1e8 <getPrime+0x148>
	if(num % i == 0){
 112:	f7 c7 01 00 00 00    	test   $0x1,%edi
 118:	0f 84 92 00 00 00    	je     1b0 <getPrime+0x110>
   for (int i = 2; i<num; i ++){
 11e:	b9 02 00 00 00       	mov    $0x2,%ecx
 123:	eb 0c                	jmp    131 <getPrime+0x91>
 125:	8d 76 00             	lea    0x0(%esi),%esi
	if(num % i == 0){
 128:	89 f8                	mov    %edi,%eax
 12a:	99                   	cltd   
 12b:	f7 f9                	idiv   %ecx
 12d:	85 d2                	test   %edx,%edx
 12f:	74 7f                	je     1b0 <getPrime+0x110>
   for (int i = 2; i<num; i ++){
 131:	83 c1 01             	add    $0x1,%ecx
 134:	39 cf                	cmp    %ecx,%edi
 136:	75 f0                	jne    128 <getPrime+0x88>
 138:	31 db                	xor    %ebx,%ebx
 13a:	eb 06                	jmp    142 <getPrime+0xa2>
 13c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                buf[j++] = '0' + prime % 10;
 140:	89 f3                	mov    %esi,%ebx
 142:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
 147:	8d 73 01             	lea    0x1(%ebx),%esi
 14a:	f7 e1                	mul    %ecx
 14c:	c1 ea 03             	shr    $0x3,%edx
 14f:	8d 04 92             	lea    (%edx,%edx,4),%eax
 152:	01 c0                	add    %eax,%eax
 154:	29 c1                	sub    %eax,%ecx
 156:	83 c1 30             	add    $0x30,%ecx
            while(prime != 0)
 159:	85 d2                	test   %edx,%edx
                buf[j++] = '0' + prime % 10;
 15b:	88 4c 35 c7          	mov    %cl,-0x39(%ebp,%esi,1)
                prime /= 10;
 15f:	89 d1                	mov    %edx,%ecx
            while(prime != 0)
 161:	75 dd                	jne    140 <getPrime+0xa0>
 163:	8d 45 c8             	lea    -0x38(%ebp),%eax
            while (j-- >= 0)
 166:	89 7d 08             	mov    %edi,0x8(%ebp)
 169:	be 01 00 00 00       	mov    $0x1,%esi
 16e:	01 c3                	add    %eax,%ebx
 170:	29 c6                	sub    %eax,%esi
 172:	89 df                	mov    %ebx,%edi
 174:	8b 5d c0             	mov    -0x40(%ebp),%ebx
 177:	89 f6                	mov    %esi,%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
                write(fd, &buf[j], sizeof(char));
 180:	83 ec 04             	sub    $0x4,%esp
 183:	6a 01                	push   $0x1
 185:	57                   	push   %edi
 186:	83 ef 01             	sub    $0x1,%edi
 189:	53                   	push   %ebx
 18a:	e8 e3 02 00 00       	call   472 <write>
            while (j-- >= 0)
 18f:	89 f0                	mov    %esi,%eax
 191:	83 c4 10             	add    $0x10,%esp
 194:	01 f8                	add    %edi,%eax
 196:	79 e8                	jns    180 <getPrime+0xe0>
            write(fd, " ", sizeof(char));
 198:	83 ec 04             	sub    $0x4,%esp
 19b:	8b 7d 08             	mov    0x8(%ebp),%edi
 19e:	6a 01                	push   $0x1
 1a0:	68 0a 09 00 00       	push   $0x90a
 1a5:	ff 75 c0             	pushl  -0x40(%ebp)
 1a8:	e8 c5 02 00 00       	call   472 <write>
 1ad:	83 c4 10             	add    $0x10,%esp
    for(int i = begining; i <= ending; i++)
 1b0:	83 c7 01             	add    $0x1,%edi
 1b3:	3b 7d c4             	cmp    -0x3c(%ebp),%edi
 1b6:	0f 85 44 ff ff ff    	jne    100 <getPrime+0x60>
    write(fd, "\n", sizeof(char));
 1bc:	8b 75 c0             	mov    -0x40(%ebp),%esi
 1bf:	83 ec 04             	sub    $0x4,%esp
 1c2:	6a 01                	push   $0x1
 1c4:	68 0c 09 00 00       	push   $0x90c
 1c9:	56                   	push   %esi
 1ca:	e8 a3 02 00 00       	call   472 <write>
    close(fd);
 1cf:	89 34 24             	mov    %esi,(%esp)
 1d2:	e8 a3 02 00 00       	call   47a <close>
}
 1d7:	83 c4 10             	add    $0x10,%esp
 1da:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1dd:	5b                   	pop    %ebx
 1de:	5e                   	pop    %esi
 1df:	5f                   	pop    %edi
 1e0:	5d                   	pop    %ebp
 1e1:	c3                   	ret    
 1e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   for (int i = 2; i<num; i ++){
 1e8:	b9 02 00 00 00       	mov    $0x2,%ecx
 1ed:	e9 46 ff ff ff       	jmp    138 <getPrime+0x98>
 1f2:	66 90                	xchg   %ax,%ax
 1f4:	66 90                	xchg   %ax,%ax
 1f6:	66 90                	xchg   %ax,%ax
 1f8:	66 90                	xchg   %ax,%ax
 1fa:	66 90                	xchg   %ax,%ax
 1fc:	66 90                	xchg   %ax,%ax
 1fe:	66 90                	xchg   %ax,%ax

00000200 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 45 08             	mov    0x8(%ebp),%eax
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 20a:	89 c2                	mov    %eax,%edx
 20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 210:	83 c1 01             	add    $0x1,%ecx
 213:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 217:	83 c2 01             	add    $0x1,%edx
 21a:	84 db                	test   %bl,%bl
 21c:	88 5a ff             	mov    %bl,-0x1(%edx)
 21f:	75 ef                	jne    210 <strcpy+0x10>
    ;
  return os;
}
 221:	5b                   	pop    %ebx
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 22a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000230 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	53                   	push   %ebx
 234:	8b 55 08             	mov    0x8(%ebp),%edx
 237:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 23a:	0f b6 02             	movzbl (%edx),%eax
 23d:	0f b6 19             	movzbl (%ecx),%ebx
 240:	84 c0                	test   %al,%al
 242:	75 1c                	jne    260 <strcmp+0x30>
 244:	eb 2a                	jmp    270 <strcmp+0x40>
 246:	8d 76 00             	lea    0x0(%esi),%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 250:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 253:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 256:	83 c1 01             	add    $0x1,%ecx
 259:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 25c:	84 c0                	test   %al,%al
 25e:	74 10                	je     270 <strcmp+0x40>
 260:	38 d8                	cmp    %bl,%al
 262:	74 ec                	je     250 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 264:	29 d8                	sub    %ebx,%eax
}
 266:	5b                   	pop    %ebx
 267:	5d                   	pop    %ebp
 268:	c3                   	ret    
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 270:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 272:	29 d8                	sub    %ebx,%eax
}
 274:	5b                   	pop    %ebx
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    
 277:	89 f6                	mov    %esi,%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <strlen>:

uint
strlen(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 286:	80 39 00             	cmpb   $0x0,(%ecx)
 289:	74 15                	je     2a0 <strlen+0x20>
 28b:	31 d2                	xor    %edx,%edx
 28d:	8d 76 00             	lea    0x0(%esi),%esi
 290:	83 c2 01             	add    $0x1,%edx
 293:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 297:	89 d0                	mov    %edx,%eax
 299:	75 f5                	jne    290 <strlen+0x10>
    ;
  return n;
}
 29b:	5d                   	pop    %ebp
 29c:	c3                   	ret    
 29d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 2a0:	31 c0                	xor    %eax,%eax
}
 2a2:	5d                   	pop    %ebp
 2a3:	c3                   	ret    
 2a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 2bd:	89 d7                	mov    %edx,%edi
 2bf:	fc                   	cld    
 2c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2c2:	89 d0                	mov    %edx,%eax
 2c4:	5f                   	pop    %edi
 2c5:	5d                   	pop    %ebp
 2c6:	c3                   	ret    
 2c7:	89 f6                	mov    %esi,%esi
 2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002d0 <strchr>:

char*
strchr(const char *s, char c)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	8b 45 08             	mov    0x8(%ebp),%eax
 2d7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 2da:	0f b6 10             	movzbl (%eax),%edx
 2dd:	84 d2                	test   %dl,%dl
 2df:	74 1d                	je     2fe <strchr+0x2e>
    if(*s == c)
 2e1:	38 d3                	cmp    %dl,%bl
 2e3:	89 d9                	mov    %ebx,%ecx
 2e5:	75 0d                	jne    2f4 <strchr+0x24>
 2e7:	eb 17                	jmp    300 <strchr+0x30>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	38 ca                	cmp    %cl,%dl
 2f2:	74 0c                	je     300 <strchr+0x30>
  for(; *s; s++)
 2f4:	83 c0 01             	add    $0x1,%eax
 2f7:	0f b6 10             	movzbl (%eax),%edx
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strchr+0x20>
      return (char*)s;
  return 0;
 2fe:	31 c0                	xor    %eax,%eax
}
 300:	5b                   	pop    %ebx
 301:	5d                   	pop    %ebp
 302:	c3                   	ret    
 303:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000310 <gets>:

char*
gets(char *buf, int max)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
 315:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 316:	31 f6                	xor    %esi,%esi
 318:	89 f3                	mov    %esi,%ebx
{
 31a:	83 ec 1c             	sub    $0x1c,%esp
 31d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 320:	eb 2f                	jmp    351 <gets+0x41>
 322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 328:	8d 45 e7             	lea    -0x19(%ebp),%eax
 32b:	83 ec 04             	sub    $0x4,%esp
 32e:	6a 01                	push   $0x1
 330:	50                   	push   %eax
 331:	6a 00                	push   $0x0
 333:	e8 32 01 00 00       	call   46a <read>
    if(cc < 1)
 338:	83 c4 10             	add    $0x10,%esp
 33b:	85 c0                	test   %eax,%eax
 33d:	7e 1c                	jle    35b <gets+0x4b>
      break;
    buf[i++] = c;
 33f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 343:	83 c7 01             	add    $0x1,%edi
 346:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 349:	3c 0a                	cmp    $0xa,%al
 34b:	74 23                	je     370 <gets+0x60>
 34d:	3c 0d                	cmp    $0xd,%al
 34f:	74 1f                	je     370 <gets+0x60>
  for(i=0; i+1 < max; ){
 351:	83 c3 01             	add    $0x1,%ebx
 354:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 357:	89 fe                	mov    %edi,%esi
 359:	7c cd                	jl     328 <gets+0x18>
 35b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 35d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 360:	c6 03 00             	movb   $0x0,(%ebx)
}
 363:	8d 65 f4             	lea    -0xc(%ebp),%esp
 366:	5b                   	pop    %ebx
 367:	5e                   	pop    %esi
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	90                   	nop
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 370:	8b 75 08             	mov    0x8(%ebp),%esi
 373:	8b 45 08             	mov    0x8(%ebp),%eax
 376:	01 de                	add    %ebx,%esi
 378:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 37a:	c6 03 00             	movb   $0x0,(%ebx)
}
 37d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 380:	5b                   	pop    %ebx
 381:	5e                   	pop    %esi
 382:	5f                   	pop    %edi
 383:	5d                   	pop    %ebp
 384:	c3                   	ret    
 385:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <stat>:

int
stat(const char *n, struct stat *st)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	56                   	push   %esi
 394:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 395:	83 ec 08             	sub    $0x8,%esp
 398:	6a 00                	push   $0x0
 39a:	ff 75 08             	pushl  0x8(%ebp)
 39d:	e8 f0 00 00 00       	call   492 <open>
  if(fd < 0)
 3a2:	83 c4 10             	add    $0x10,%esp
 3a5:	85 c0                	test   %eax,%eax
 3a7:	78 27                	js     3d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3a9:	83 ec 08             	sub    $0x8,%esp
 3ac:	ff 75 0c             	pushl  0xc(%ebp)
 3af:	89 c3                	mov    %eax,%ebx
 3b1:	50                   	push   %eax
 3b2:	e8 f3 00 00 00       	call   4aa <fstat>
  close(fd);
 3b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ba:	89 c6                	mov    %eax,%esi
  close(fd);
 3bc:	e8 b9 00 00 00       	call   47a <close>
  return r;
 3c1:	83 c4 10             	add    $0x10,%esp
}
 3c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3c7:	89 f0                	mov    %esi,%eax
 3c9:	5b                   	pop    %ebx
 3ca:	5e                   	pop    %esi
 3cb:	5d                   	pop    %ebp
 3cc:	c3                   	ret    
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3d5:	eb ed                	jmp    3c4 <stat+0x34>
 3d7:	89 f6                	mov    %esi,%esi
 3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <atoi>:

int
atoi(const char *s)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	53                   	push   %ebx
 3e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3e7:	0f be 11             	movsbl (%ecx),%edx
 3ea:	8d 42 d0             	lea    -0x30(%edx),%eax
 3ed:	3c 09                	cmp    $0x9,%al
  n = 0;
 3ef:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3f4:	77 1f                	ja     415 <atoi+0x35>
 3f6:	8d 76 00             	lea    0x0(%esi),%esi
 3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 400:	8d 04 80             	lea    (%eax,%eax,4),%eax
 403:	83 c1 01             	add    $0x1,%ecx
 406:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 40a:	0f be 11             	movsbl (%ecx),%edx
 40d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 410:	80 fb 09             	cmp    $0x9,%bl
 413:	76 eb                	jbe    400 <atoi+0x20>
  return n;
}
 415:	5b                   	pop    %ebx
 416:	5d                   	pop    %ebp
 417:	c3                   	ret    
 418:	90                   	nop
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000420 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
 425:	8b 5d 10             	mov    0x10(%ebp),%ebx
 428:	8b 45 08             	mov    0x8(%ebp),%eax
 42b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 42e:	85 db                	test   %ebx,%ebx
 430:	7e 14                	jle    446 <memmove+0x26>
 432:	31 d2                	xor    %edx,%edx
 434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 438:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 43c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 43f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 442:	39 d3                	cmp    %edx,%ebx
 444:	75 f2                	jne    438 <memmove+0x18>
  return vdst;
}
 446:	5b                   	pop    %ebx
 447:	5e                   	pop    %esi
 448:	5d                   	pop    %ebp
 449:	c3                   	ret    

0000044a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 44a:	b8 01 00 00 00       	mov    $0x1,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <exit>:
SYSCALL(exit)
 452:	b8 02 00 00 00       	mov    $0x2,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <wait>:
SYSCALL(wait)
 45a:	b8 03 00 00 00       	mov    $0x3,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <pipe>:
SYSCALL(pipe)
 462:	b8 04 00 00 00       	mov    $0x4,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <read>:
SYSCALL(read)
 46a:	b8 05 00 00 00       	mov    $0x5,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <write>:
SYSCALL(write)
 472:	b8 10 00 00 00       	mov    $0x10,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <close>:
SYSCALL(close)
 47a:	b8 15 00 00 00       	mov    $0x15,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <kill>:
SYSCALL(kill)
 482:	b8 06 00 00 00       	mov    $0x6,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <exec>:
SYSCALL(exec)
 48a:	b8 07 00 00 00       	mov    $0x7,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <open>:
SYSCALL(open)
 492:	b8 0f 00 00 00       	mov    $0xf,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <mknod>:
SYSCALL(mknod)
 49a:	b8 11 00 00 00       	mov    $0x11,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <unlink>:
SYSCALL(unlink)
 4a2:	b8 12 00 00 00       	mov    $0x12,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <fstat>:
SYSCALL(fstat)
 4aa:	b8 08 00 00 00       	mov    $0x8,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <link>:
SYSCALL(link)
 4b2:	b8 13 00 00 00       	mov    $0x13,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <mkdir>:
SYSCALL(mkdir)
 4ba:	b8 14 00 00 00       	mov    $0x14,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    

000004c2 <chdir>:
SYSCALL(chdir)
 4c2:	b8 09 00 00 00       	mov    $0x9,%eax
 4c7:	cd 40                	int    $0x40
 4c9:	c3                   	ret    

000004ca <dup>:
SYSCALL(dup)
 4ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 4cf:	cd 40                	int    $0x40
 4d1:	c3                   	ret    

000004d2 <getpid>:
SYSCALL(getpid)
 4d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 4d7:	cd 40                	int    $0x40
 4d9:	c3                   	ret    

000004da <sbrk>:
SYSCALL(sbrk)
 4da:	b8 0c 00 00 00       	mov    $0xc,%eax
 4df:	cd 40                	int    $0x40
 4e1:	c3                   	ret    

000004e2 <sleep>:
SYSCALL(sleep)
 4e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 4e7:	cd 40                	int    $0x40
 4e9:	c3                   	ret    

000004ea <uptime>:
SYSCALL(uptime)
 4ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    
 4f2:	66 90                	xchg   %ax,%ax
 4f4:	66 90                	xchg   %ax,%ax
 4f6:	66 90                	xchg   %ax,%ax
 4f8:	66 90                	xchg   %ax,%ax
 4fa:	66 90                	xchg   %ax,%ax
 4fc:	66 90                	xchg   %ax,%ax
 4fe:	66 90                	xchg   %ax,%ax

00000500 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
 505:	53                   	push   %ebx
 506:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 509:	85 d2                	test   %edx,%edx
{
 50b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 50e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 510:	79 76                	jns    588 <printint+0x88>
 512:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 516:	74 70                	je     588 <printint+0x88>
    x = -xx;
 518:	f7 d8                	neg    %eax
    neg = 1;
 51a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 521:	31 f6                	xor    %esi,%esi
 523:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 526:	eb 0a                	jmp    532 <printint+0x32>
 528:	90                   	nop
 529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 530:	89 fe                	mov    %edi,%esi
 532:	31 d2                	xor    %edx,%edx
 534:	8d 7e 01             	lea    0x1(%esi),%edi
 537:	f7 f1                	div    %ecx
 539:	0f b6 92 18 09 00 00 	movzbl 0x918(%edx),%edx
  }while((x /= base) != 0);
 540:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 542:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 545:	75 e9                	jne    530 <printint+0x30>
  if(neg)
 547:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 54a:	85 c0                	test   %eax,%eax
 54c:	74 08                	je     556 <printint+0x56>
    buf[i++] = '-';
 54e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 553:	8d 7e 02             	lea    0x2(%esi),%edi
 556:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 55a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 55d:	8d 76 00             	lea    0x0(%esi),%esi
 560:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 563:	83 ec 04             	sub    $0x4,%esp
 566:	83 ee 01             	sub    $0x1,%esi
 569:	6a 01                	push   $0x1
 56b:	53                   	push   %ebx
 56c:	57                   	push   %edi
 56d:	88 45 d7             	mov    %al,-0x29(%ebp)
 570:	e8 fd fe ff ff       	call   472 <write>

  while(--i >= 0)
 575:	83 c4 10             	add    $0x10,%esp
 578:	39 de                	cmp    %ebx,%esi
 57a:	75 e4                	jne    560 <printint+0x60>
    putc(fd, buf[i]);
}
 57c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 57f:	5b                   	pop    %ebx
 580:	5e                   	pop    %esi
 581:	5f                   	pop    %edi
 582:	5d                   	pop    %ebp
 583:	c3                   	ret    
 584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 588:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 58f:	eb 90                	jmp    521 <printint+0x21>
 591:	eb 0d                	jmp    5a0 <printf>
 593:	90                   	nop
 594:	90                   	nop
 595:	90                   	nop
 596:	90                   	nop
 597:	90                   	nop
 598:	90                   	nop
 599:	90                   	nop
 59a:	90                   	nop
 59b:	90                   	nop
 59c:	90                   	nop
 59d:	90                   	nop
 59e:	90                   	nop
 59f:	90                   	nop

000005a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	56                   	push   %esi
 5a5:	53                   	push   %ebx
 5a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5a9:	8b 75 0c             	mov    0xc(%ebp),%esi
 5ac:	0f b6 1e             	movzbl (%esi),%ebx
 5af:	84 db                	test   %bl,%bl
 5b1:	0f 84 b3 00 00 00    	je     66a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 5b7:	8d 45 10             	lea    0x10(%ebp),%eax
 5ba:	83 c6 01             	add    $0x1,%esi
  state = 0;
 5bd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 5bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5c2:	eb 2f                	jmp    5f3 <printf+0x53>
 5c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 5c8:	83 f8 25             	cmp    $0x25,%eax
 5cb:	0f 84 a7 00 00 00    	je     678 <printf+0xd8>
  write(fd, &c, 1);
 5d1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 5d4:	83 ec 04             	sub    $0x4,%esp
 5d7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 5da:	6a 01                	push   $0x1
 5dc:	50                   	push   %eax
 5dd:	ff 75 08             	pushl  0x8(%ebp)
 5e0:	e8 8d fe ff ff       	call   472 <write>
 5e5:	83 c4 10             	add    $0x10,%esp
 5e8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 5eb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 5ef:	84 db                	test   %bl,%bl
 5f1:	74 77                	je     66a <printf+0xca>
    if(state == 0){
 5f3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 5f5:	0f be cb             	movsbl %bl,%ecx
 5f8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 5fb:	74 cb                	je     5c8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5fd:	83 ff 25             	cmp    $0x25,%edi
 600:	75 e6                	jne    5e8 <printf+0x48>
      if(c == 'd'){
 602:	83 f8 64             	cmp    $0x64,%eax
 605:	0f 84 05 01 00 00    	je     710 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 60b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 611:	83 f9 70             	cmp    $0x70,%ecx
 614:	74 72                	je     688 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 616:	83 f8 73             	cmp    $0x73,%eax
 619:	0f 84 99 00 00 00    	je     6b8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 61f:	83 f8 63             	cmp    $0x63,%eax
 622:	0f 84 08 01 00 00    	je     730 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 628:	83 f8 25             	cmp    $0x25,%eax
 62b:	0f 84 ef 00 00 00    	je     720 <printf+0x180>
  write(fd, &c, 1);
 631:	8d 45 e7             	lea    -0x19(%ebp),%eax
 634:	83 ec 04             	sub    $0x4,%esp
 637:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 63b:	6a 01                	push   $0x1
 63d:	50                   	push   %eax
 63e:	ff 75 08             	pushl  0x8(%ebp)
 641:	e8 2c fe ff ff       	call   472 <write>
 646:	83 c4 0c             	add    $0xc,%esp
 649:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 64c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 64f:	6a 01                	push   $0x1
 651:	50                   	push   %eax
 652:	ff 75 08             	pushl  0x8(%ebp)
 655:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 658:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 65a:	e8 13 fe ff ff       	call   472 <write>
  for(i = 0; fmt[i]; i++){
 65f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 663:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 666:	84 db                	test   %bl,%bl
 668:	75 89                	jne    5f3 <printf+0x53>
    }
  }
}
 66a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66d:	5b                   	pop    %ebx
 66e:	5e                   	pop    %esi
 66f:	5f                   	pop    %edi
 670:	5d                   	pop    %ebp
 671:	c3                   	ret    
 672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 678:	bf 25 00 00 00       	mov    $0x25,%edi
 67d:	e9 66 ff ff ff       	jmp    5e8 <printf+0x48>
 682:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 688:	83 ec 0c             	sub    $0xc,%esp
 68b:	b9 10 00 00 00       	mov    $0x10,%ecx
 690:	6a 00                	push   $0x0
 692:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 695:	8b 45 08             	mov    0x8(%ebp),%eax
 698:	8b 17                	mov    (%edi),%edx
 69a:	e8 61 fe ff ff       	call   500 <printint>
        ap++;
 69f:	89 f8                	mov    %edi,%eax
 6a1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6a4:	31 ff                	xor    %edi,%edi
        ap++;
 6a6:	83 c0 04             	add    $0x4,%eax
 6a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6ac:	e9 37 ff ff ff       	jmp    5e8 <printf+0x48>
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 6bb:	8b 08                	mov    (%eax),%ecx
        ap++;
 6bd:	83 c0 04             	add    $0x4,%eax
 6c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 6c3:	85 c9                	test   %ecx,%ecx
 6c5:	0f 84 8e 00 00 00    	je     759 <printf+0x1b9>
        while(*s != 0){
 6cb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 6ce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 6d0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 6d2:	84 c0                	test   %al,%al
 6d4:	0f 84 0e ff ff ff    	je     5e8 <printf+0x48>
 6da:	89 75 d0             	mov    %esi,-0x30(%ebp)
 6dd:	89 de                	mov    %ebx,%esi
 6df:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6e2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 6e5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6e8:	83 ec 04             	sub    $0x4,%esp
          s++;
 6eb:	83 c6 01             	add    $0x1,%esi
 6ee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 6f1:	6a 01                	push   $0x1
 6f3:	57                   	push   %edi
 6f4:	53                   	push   %ebx
 6f5:	e8 78 fd ff ff       	call   472 <write>
        while(*s != 0){
 6fa:	0f b6 06             	movzbl (%esi),%eax
 6fd:	83 c4 10             	add    $0x10,%esp
 700:	84 c0                	test   %al,%al
 702:	75 e4                	jne    6e8 <printf+0x148>
 704:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 707:	31 ff                	xor    %edi,%edi
 709:	e9 da fe ff ff       	jmp    5e8 <printf+0x48>
 70e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 710:	83 ec 0c             	sub    $0xc,%esp
 713:	b9 0a 00 00 00       	mov    $0xa,%ecx
 718:	6a 01                	push   $0x1
 71a:	e9 73 ff ff ff       	jmp    692 <printf+0xf2>
 71f:	90                   	nop
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 726:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 729:	6a 01                	push   $0x1
 72b:	e9 21 ff ff ff       	jmp    651 <printf+0xb1>
        putc(fd, *ap);
 730:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 733:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 736:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 738:	6a 01                	push   $0x1
        ap++;
 73a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 73d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 740:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 743:	50                   	push   %eax
 744:	ff 75 08             	pushl  0x8(%ebp)
 747:	e8 26 fd ff ff       	call   472 <write>
        ap++;
 74c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 74f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 752:	31 ff                	xor    %edi,%edi
 754:	e9 8f fe ff ff       	jmp    5e8 <printf+0x48>
          s = "(null)";
 759:	bb 0e 09 00 00       	mov    $0x90e,%ebx
        while(*s != 0){
 75e:	b8 28 00 00 00       	mov    $0x28,%eax
 763:	e9 72 ff ff ff       	jmp    6da <printf+0x13a>
 768:	66 90                	xchg   %ax,%ax
 76a:	66 90                	xchg   %ax,%ax
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax

00000770 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 770:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 771:	a1 2c 0c 00 00       	mov    0xc2c,%eax
{
 776:	89 e5                	mov    %esp,%ebp
 778:	57                   	push   %edi
 779:	56                   	push   %esi
 77a:	53                   	push   %ebx
 77b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 77e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 788:	39 c8                	cmp    %ecx,%eax
 78a:	8b 10                	mov    (%eax),%edx
 78c:	73 32                	jae    7c0 <free+0x50>
 78e:	39 d1                	cmp    %edx,%ecx
 790:	72 04                	jb     796 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 792:	39 d0                	cmp    %edx,%eax
 794:	72 32                	jb     7c8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 796:	8b 73 fc             	mov    -0x4(%ebx),%esi
 799:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 79c:	39 fa                	cmp    %edi,%edx
 79e:	74 30                	je     7d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 7a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7a3:	8b 50 04             	mov    0x4(%eax),%edx
 7a6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7a9:	39 f1                	cmp    %esi,%ecx
 7ab:	74 3a                	je     7e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 7ad:	89 08                	mov    %ecx,(%eax)
  freep = p;
 7af:	a3 2c 0c 00 00       	mov    %eax,0xc2c
}
 7b4:	5b                   	pop    %ebx
 7b5:	5e                   	pop    %esi
 7b6:	5f                   	pop    %edi
 7b7:	5d                   	pop    %ebp
 7b8:	c3                   	ret    
 7b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7c0:	39 d0                	cmp    %edx,%eax
 7c2:	72 04                	jb     7c8 <free+0x58>
 7c4:	39 d1                	cmp    %edx,%ecx
 7c6:	72 ce                	jb     796 <free+0x26>
{
 7c8:	89 d0                	mov    %edx,%eax
 7ca:	eb bc                	jmp    788 <free+0x18>
 7cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 7d0:	03 72 04             	add    0x4(%edx),%esi
 7d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7d6:	8b 10                	mov    (%eax),%edx
 7d8:	8b 12                	mov    (%edx),%edx
 7da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7dd:	8b 50 04             	mov    0x4(%eax),%edx
 7e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7e3:	39 f1                	cmp    %esi,%ecx
 7e5:	75 c6                	jne    7ad <free+0x3d>
    p->s.size += bp->s.size;
 7e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 7ea:	a3 2c 0c 00 00       	mov    %eax,0xc2c
    p->s.size += bp->s.size;
 7ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7f5:	89 10                	mov    %edx,(%eax)
}
 7f7:	5b                   	pop    %ebx
 7f8:	5e                   	pop    %esi
 7f9:	5f                   	pop    %edi
 7fa:	5d                   	pop    %ebp
 7fb:	c3                   	ret    
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000800 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 809:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 80c:	8b 15 2c 0c 00 00    	mov    0xc2c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 812:	8d 78 07             	lea    0x7(%eax),%edi
 815:	c1 ef 03             	shr    $0x3,%edi
 818:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 81b:	85 d2                	test   %edx,%edx
 81d:	0f 84 9d 00 00 00    	je     8c0 <malloc+0xc0>
 823:	8b 02                	mov    (%edx),%eax
 825:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 828:	39 cf                	cmp    %ecx,%edi
 82a:	76 6c                	jbe    898 <malloc+0x98>
 82c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 832:	bb 00 10 00 00       	mov    $0x1000,%ebx
 837:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 83a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 841:	eb 0e                	jmp    851 <malloc+0x51>
 843:	90                   	nop
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 848:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 84a:	8b 48 04             	mov    0x4(%eax),%ecx
 84d:	39 f9                	cmp    %edi,%ecx
 84f:	73 47                	jae    898 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 851:	39 05 2c 0c 00 00    	cmp    %eax,0xc2c
 857:	89 c2                	mov    %eax,%edx
 859:	75 ed                	jne    848 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 85b:	83 ec 0c             	sub    $0xc,%esp
 85e:	56                   	push   %esi
 85f:	e8 76 fc ff ff       	call   4da <sbrk>
  if(p == (char*)-1)
 864:	83 c4 10             	add    $0x10,%esp
 867:	83 f8 ff             	cmp    $0xffffffff,%eax
 86a:	74 1c                	je     888 <malloc+0x88>
  hp->s.size = nu;
 86c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 86f:	83 ec 0c             	sub    $0xc,%esp
 872:	83 c0 08             	add    $0x8,%eax
 875:	50                   	push   %eax
 876:	e8 f5 fe ff ff       	call   770 <free>
  return freep;
 87b:	8b 15 2c 0c 00 00    	mov    0xc2c,%edx
      if((p = morecore(nunits)) == 0)
 881:	83 c4 10             	add    $0x10,%esp
 884:	85 d2                	test   %edx,%edx
 886:	75 c0                	jne    848 <malloc+0x48>
        return 0;
  }
}
 888:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 88b:	31 c0                	xor    %eax,%eax
}
 88d:	5b                   	pop    %ebx
 88e:	5e                   	pop    %esi
 88f:	5f                   	pop    %edi
 890:	5d                   	pop    %ebp
 891:	c3                   	ret    
 892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 898:	39 cf                	cmp    %ecx,%edi
 89a:	74 54                	je     8f0 <malloc+0xf0>
        p->s.size -= nunits;
 89c:	29 f9                	sub    %edi,%ecx
 89e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8a1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8a4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 8a7:	89 15 2c 0c 00 00    	mov    %edx,0xc2c
}
 8ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8b0:	83 c0 08             	add    $0x8,%eax
}
 8b3:	5b                   	pop    %ebx
 8b4:	5e                   	pop    %esi
 8b5:	5f                   	pop    %edi
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret    
 8b8:	90                   	nop
 8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 8c0:	c7 05 2c 0c 00 00 30 	movl   $0xc30,0xc2c
 8c7:	0c 00 00 
 8ca:	c7 05 30 0c 00 00 30 	movl   $0xc30,0xc30
 8d1:	0c 00 00 
    base.s.size = 0;
 8d4:	b8 30 0c 00 00       	mov    $0xc30,%eax
 8d9:	c7 05 34 0c 00 00 00 	movl   $0x0,0xc34
 8e0:	00 00 00 
 8e3:	e9 44 ff ff ff       	jmp    82c <malloc+0x2c>
 8e8:	90                   	nop
 8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 8f0:	8b 08                	mov    (%eax),%ecx
 8f2:	89 0a                	mov    %ecx,(%edx)
 8f4:	eb b1                	jmp    8a7 <malloc+0xa7>
