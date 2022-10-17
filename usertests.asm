
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 16 4d 00 00       	push   $0x4d16
      16:	6a 01                	push   $0x1
      18:	e8 b3 39 00 00       	call   39d0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 2a 4d 00 00       	push   $0x4d2a
      26:	e8 97 38 00 00       	call   38c2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 64 54 00 00       	push   $0x5464
      39:	6a 01                	push   $0x1
      3b:	e8 90 39 00 00       	call   39d0 <printf>
    exit();
      40:	e8 3d 38 00 00       	call   3882 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 2a 4d 00 00       	push   $0x4d2a
      51:	e8 6c 38 00 00       	call   38c2 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 4c 38 00 00       	call   38aa <close>

  argptest();
      5e:	e8 3d 35 00 00       	call   35a0 <argptest>
  createdelete();
      63:	e8 a8 11 00 00       	call   1210 <createdelete>
  linkunlink();
      68:	e8 63 1a 00 00       	call   1ad0 <linkunlink>
  concreate();
      6d:	e8 5e 17 00 00       	call   17d0 <concreate>
  fourfiles();
      72:	e8 99 0f 00 00       	call   1010 <fourfiles>
  sharedfd();
      77:	e8 d4 0d 00 00       	call   e50 <sharedfd>

  bigargtest();
      7c:	e8 df 31 00 00       	call   3260 <bigargtest>
  bigwrite();
      81:	e8 6a 23 00 00       	call   23f0 <bigwrite>
  bigargtest();
      86:	e8 d5 31 00 00       	call   3260 <bigargtest>
  bsstest();
      8b:	e8 50 31 00 00       	call   31e0 <bsstest>
  sbrktest();
      90:	e8 9b 2c 00 00       	call   2d30 <sbrktest>
  validatetest();
      95:	e8 96 30 00 00       	call   3130 <validatetest>

  opentest();
      9a:	e8 51 03 00 00       	call   3f0 <opentest>
  writetest();
      9f:	e8 dc 03 00 00       	call   480 <writetest>
  writetest1();
      a4:	e8 b7 05 00 00       	call   660 <writetest1>
  createtest();
      a9:	e8 82 07 00 00       	call   830 <createtest>

  openiputtest();
      ae:	e8 3d 02 00 00       	call   2f0 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 be 0c 00 00       	call   d80 <mem>
  pipe1();
      c2:	e8 49 09 00 00       	call   a10 <pipe1>
  preempt();
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
  exitwait();
      cc:	e8 1f 0c 00 00       	call   cf0 <exitwait>

  rmdot();
      d1:	e8 0a 27 00 00       	call   27e0 <rmdot>
  fourteen();
      d6:	e8 c5 25 00 00       	call   26a0 <fourteen>
  bigfile();
      db:	e8 f0 23 00 00       	call   24d0 <bigfile>
  subdir();
      e0:	e8 2b 1c 00 00       	call   1d10 <subdir>
  linktest();
      e5:	e8 d6 14 00 00       	call   15c0 <linktest>
  unlinkread();
      ea:	e8 41 13 00 00       	call   1430 <unlinkread>
  dirfile();
      ef:	e8 6c 28 00 00       	call   2960 <dirfile>
  iref();
      f4:	e8 67 2a 00 00       	call   2b60 <iref>
  forktest();
      f9:	e8 82 2b 00 00       	call   2c80 <forktest>
  bigdir(); // slow
      fe:	e8 dd 1a 00 00       	call   1be0 <bigdir>

  uio();
     103:	e8 28 34 00 00       	call   3530 <uio>

  exectest();
     108:	e8 b3 08 00 00       	call   9c0 <exectest>

  exit();
     10d:	e8 70 37 00 00       	call   3882 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 bc 3d 00 00       	push   $0x3dbc
     12b:	ff 35 a8 5d 00 00    	pushl  0x5da8
     131:	e8 9a 38 00 00       	call   39d0 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 4f 3d 00 00 	movl   $0x3d4f,(%esp)
     13d:	e8 a8 37 00 00       	call   38ea <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 4f 3d 00 00       	push   $0x3d4f
     151:	e8 9c 37 00 00       	call   38f2 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 4c 3d 00 00       	push   $0x3d4c
     169:	e8 64 37 00 00       	call   38d2 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 71 3d 00 00       	push   $0x3d71
     17d:	e8 70 37 00 00       	call   38f2 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 f4 3d 00 00       	push   $0x3df4
     191:	ff 35 a8 5d 00 00    	pushl  0x5da8
     197:	e8 34 38 00 00       	call   39d0 <printf>
}
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 28 3d 00 00       	push   $0x3d28
     1a8:	ff 35 a8 5d 00 00    	pushl  0x5da8
     1ae:	e8 1d 38 00 00       	call   39d0 <printf>
    exit();
     1b3:	e8 ca 36 00 00       	call   3882 <exit>
    printf(stdout, "chdir / failed\n");
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 73 3d 00 00       	push   $0x3d73
     1bf:	ff 35 a8 5d 00 00    	pushl  0x5da8
     1c5:	e8 06 38 00 00       	call   39d0 <printf>
    exit();
     1ca:	e8 b3 36 00 00       	call   3882 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 57 3d 00 00       	push   $0x3d57
     1d6:	ff 35 a8 5d 00 00    	pushl  0x5da8
     1dc:	e8 ef 37 00 00       	call   39d0 <printf>
    exit();
     1e1:	e8 9c 36 00 00       	call   3882 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 36 3d 00 00       	push   $0x3d36
     1ed:	ff 35 a8 5d 00 00    	pushl  0x5da8
     1f3:	e8 d8 37 00 00       	call   39d0 <printf>
    exit();
     1f8:	e8 85 36 00 00       	call   3882 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 83 3d 00 00       	push   $0x3d83
     20b:	ff 35 a8 5d 00 00    	pushl  0x5da8
     211:	e8 ba 37 00 00       	call   39d0 <printf>
  pid = fork();
     216:	e8 5f 36 00 00       	call   387a <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 82 00 00 00    	js     2a8 <exitiputtest+0xa8>
  if(pid == 0){
     226:	75 48                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 4f 3d 00 00       	push   $0x3d4f
     230:	e8 b5 36 00 00       	call   38ea <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 96 00 00 00    	js     2d6 <exitiputtest+0xd6>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 4f 3d 00 00       	push   $0x3d4f
     248:	e8 a5 36 00 00       	call   38f2 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	78 6b                	js     2bf <exitiputtest+0xbf>
    if(unlink("../iputdir") < 0){
     254:	83 ec 0c             	sub    $0xc,%esp
     257:	68 4c 3d 00 00       	push   $0x3d4c
     25c:	e8 71 36 00 00       	call   38d2 <unlink>
     261:	83 c4 10             	add    $0x10,%esp
     264:	85 c0                	test   %eax,%eax
     266:	78 28                	js     290 <exitiputtest+0x90>
    exit();
     268:	e8 15 36 00 00       	call   3882 <exit>
     26d:	8d 76 00             	lea    0x0(%esi),%esi
  wait();
     270:	e8 15 36 00 00       	call   388a <wait>
  printf(stdout, "exitiput test ok\n");
     275:	83 ec 08             	sub    $0x8,%esp
     278:	68 a6 3d 00 00       	push   $0x3da6
     27d:	ff 35 a8 5d 00 00    	pushl  0x5da8
     283:	e8 48 37 00 00       	call   39d0 <printf>
}
     288:	83 c4 10             	add    $0x10,%esp
     28b:	c9                   	leave  
     28c:	c3                   	ret    
     28d:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     290:	83 ec 08             	sub    $0x8,%esp
     293:	68 57 3d 00 00       	push   $0x3d57
     298:	ff 35 a8 5d 00 00    	pushl  0x5da8
     29e:	e8 2d 37 00 00       	call   39d0 <printf>
      exit();
     2a3:	e8 da 35 00 00       	call   3882 <exit>
    printf(stdout, "fork failed\n");
     2a8:	51                   	push   %ecx
     2a9:	51                   	push   %ecx
     2aa:	68 69 4c 00 00       	push   $0x4c69
     2af:	ff 35 a8 5d 00 00    	pushl  0x5da8
     2b5:	e8 16 37 00 00       	call   39d0 <printf>
    exit();
     2ba:	e8 c3 35 00 00       	call   3882 <exit>
      printf(stdout, "child chdir failed\n");
     2bf:	50                   	push   %eax
     2c0:	50                   	push   %eax
     2c1:	68 92 3d 00 00       	push   $0x3d92
     2c6:	ff 35 a8 5d 00 00    	pushl  0x5da8
     2cc:	e8 ff 36 00 00       	call   39d0 <printf>
      exit();
     2d1:	e8 ac 35 00 00       	call   3882 <exit>
      printf(stdout, "mkdir failed\n");
     2d6:	52                   	push   %edx
     2d7:	52                   	push   %edx
     2d8:	68 28 3d 00 00       	push   $0x3d28
     2dd:	ff 35 a8 5d 00 00    	pushl  0x5da8
     2e3:	e8 e8 36 00 00       	call   39d0 <printf>
      exit();
     2e8:	e8 95 35 00 00       	call   3882 <exit>
     2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <openiputtest>:
{
     2f0:	55                   	push   %ebp
     2f1:	89 e5                	mov    %esp,%ebp
     2f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     2f6:	68 b8 3d 00 00       	push   $0x3db8
     2fb:	ff 35 a8 5d 00 00    	pushl  0x5da8
     301:	e8 ca 36 00 00       	call   39d0 <printf>
  if(mkdir("oidir") < 0){
     306:	c7 04 24 c7 3d 00 00 	movl   $0x3dc7,(%esp)
     30d:	e8 d8 35 00 00       	call   38ea <mkdir>
     312:	83 c4 10             	add    $0x10,%esp
     315:	85 c0                	test   %eax,%eax
     317:	0f 88 88 00 00 00    	js     3a5 <openiputtest+0xb5>
  pid = fork();
     31d:	e8 58 35 00 00       	call   387a <fork>
  if(pid < 0){
     322:	85 c0                	test   %eax,%eax
     324:	0f 88 92 00 00 00    	js     3bc <openiputtest+0xcc>
  if(pid == 0){
     32a:	75 34                	jne    360 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     32c:	83 ec 08             	sub    $0x8,%esp
     32f:	6a 02                	push   $0x2
     331:	68 c7 3d 00 00       	push   $0x3dc7
     336:	e8 87 35 00 00       	call   38c2 <open>
    if(fd >= 0){
     33b:	83 c4 10             	add    $0x10,%esp
     33e:	85 c0                	test   %eax,%eax
     340:	78 5e                	js     3a0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     342:	83 ec 08             	sub    $0x8,%esp
     345:	68 4c 4d 00 00       	push   $0x4d4c
     34a:	ff 35 a8 5d 00 00    	pushl  0x5da8
     350:	e8 7b 36 00 00       	call   39d0 <printf>
      exit();
     355:	e8 28 35 00 00       	call   3882 <exit>
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  sleep(1);
     360:	83 ec 0c             	sub    $0xc,%esp
     363:	6a 01                	push   $0x1
     365:	e8 a8 35 00 00       	call   3912 <sleep>
  if(unlink("oidir") != 0){
     36a:	c7 04 24 c7 3d 00 00 	movl   $0x3dc7,(%esp)
     371:	e8 5c 35 00 00       	call   38d2 <unlink>
     376:	83 c4 10             	add    $0x10,%esp
     379:	85 c0                	test   %eax,%eax
     37b:	75 56                	jne    3d3 <openiputtest+0xe3>
  wait();
     37d:	e8 08 35 00 00       	call   388a <wait>
  printf(stdout, "openiput test ok\n");
     382:	83 ec 08             	sub    $0x8,%esp
     385:	68 f0 3d 00 00       	push   $0x3df0
     38a:	ff 35 a8 5d 00 00    	pushl  0x5da8
     390:	e8 3b 36 00 00       	call   39d0 <printf>
     395:	83 c4 10             	add    $0x10,%esp
}
     398:	c9                   	leave  
     399:	c3                   	ret    
     39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3a0:	e8 dd 34 00 00       	call   3882 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3a5:	51                   	push   %ecx
     3a6:	51                   	push   %ecx
     3a7:	68 cd 3d 00 00       	push   $0x3dcd
     3ac:	ff 35 a8 5d 00 00    	pushl  0x5da8
     3b2:	e8 19 36 00 00       	call   39d0 <printf>
    exit();
     3b7:	e8 c6 34 00 00       	call   3882 <exit>
    printf(stdout, "fork failed\n");
     3bc:	52                   	push   %edx
     3bd:	52                   	push   %edx
     3be:	68 69 4c 00 00       	push   $0x4c69
     3c3:	ff 35 a8 5d 00 00    	pushl  0x5da8
     3c9:	e8 02 36 00 00       	call   39d0 <printf>
    exit();
     3ce:	e8 af 34 00 00       	call   3882 <exit>
    printf(stdout, "unlink failed\n");
     3d3:	50                   	push   %eax
     3d4:	50                   	push   %eax
     3d5:	68 e1 3d 00 00       	push   $0x3de1
     3da:	ff 35 a8 5d 00 00    	pushl  0x5da8
     3e0:	e8 eb 35 00 00       	call   39d0 <printf>
    exit();
     3e5:	e8 98 34 00 00       	call   3882 <exit>
     3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <opentest>:
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     3f6:	68 02 3e 00 00       	push   $0x3e02
     3fb:	ff 35 a8 5d 00 00    	pushl  0x5da8
     401:	e8 ca 35 00 00       	call   39d0 <printf>
  fd = open("echo", 0);
     406:	58                   	pop    %eax
     407:	5a                   	pop    %edx
     408:	6a 00                	push   $0x0
     40a:	68 0d 3e 00 00       	push   $0x3e0d
     40f:	e8 ae 34 00 00       	call   38c2 <open>
  if(fd < 0){
     414:	83 c4 10             	add    $0x10,%esp
     417:	85 c0                	test   %eax,%eax
     419:	78 36                	js     451 <opentest+0x61>
  close(fd);
     41b:	83 ec 0c             	sub    $0xc,%esp
     41e:	50                   	push   %eax
     41f:	e8 86 34 00 00       	call   38aa <close>
  fd = open("doesnotexist", 0);
     424:	5a                   	pop    %edx
     425:	59                   	pop    %ecx
     426:	6a 00                	push   $0x0
     428:	68 25 3e 00 00       	push   $0x3e25
     42d:	e8 90 34 00 00       	call   38c2 <open>
  if(fd >= 0){
     432:	83 c4 10             	add    $0x10,%esp
     435:	85 c0                	test   %eax,%eax
     437:	79 2f                	jns    468 <opentest+0x78>
  printf(stdout, "open test ok\n");
     439:	83 ec 08             	sub    $0x8,%esp
     43c:	68 50 3e 00 00       	push   $0x3e50
     441:	ff 35 a8 5d 00 00    	pushl  0x5da8
     447:	e8 84 35 00 00       	call   39d0 <printf>
}
     44c:	83 c4 10             	add    $0x10,%esp
     44f:	c9                   	leave  
     450:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     451:	50                   	push   %eax
     452:	50                   	push   %eax
     453:	68 12 3e 00 00       	push   $0x3e12
     458:	ff 35 a8 5d 00 00    	pushl  0x5da8
     45e:	e8 6d 35 00 00       	call   39d0 <printf>
    exit();
     463:	e8 1a 34 00 00       	call   3882 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     468:	50                   	push   %eax
     469:	50                   	push   %eax
     46a:	68 32 3e 00 00       	push   $0x3e32
     46f:	ff 35 a8 5d 00 00    	pushl  0x5da8
     475:	e8 56 35 00 00       	call   39d0 <printf>
    exit();
     47a:	e8 03 34 00 00       	call   3882 <exit>
     47f:	90                   	nop

00000480 <writetest>:
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	56                   	push   %esi
     484:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     485:	83 ec 08             	sub    $0x8,%esp
     488:	68 5e 3e 00 00       	push   $0x3e5e
     48d:	ff 35 a8 5d 00 00    	pushl  0x5da8
     493:	e8 38 35 00 00       	call   39d0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     498:	58                   	pop    %eax
     499:	5a                   	pop    %edx
     49a:	68 02 02 00 00       	push   $0x202
     49f:	68 6f 3e 00 00       	push   $0x3e6f
     4a4:	e8 19 34 00 00       	call   38c2 <open>
  if(fd >= 0){
     4a9:	83 c4 10             	add    $0x10,%esp
     4ac:	85 c0                	test   %eax,%eax
     4ae:	0f 88 88 01 00 00    	js     63c <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
     4b4:	83 ec 08             	sub    $0x8,%esp
     4b7:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     4b9:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4bb:	68 75 3e 00 00       	push   $0x3e75
     4c0:	ff 35 a8 5d 00 00    	pushl  0x5da8
     4c6:	e8 05 35 00 00       	call   39d0 <printf>
     4cb:	83 c4 10             	add    $0x10,%esp
     4ce:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4d0:	83 ec 04             	sub    $0x4,%esp
     4d3:	6a 0a                	push   $0xa
     4d5:	68 ac 3e 00 00       	push   $0x3eac
     4da:	56                   	push   %esi
     4db:	e8 c2 33 00 00       	call   38a2 <write>
     4e0:	83 c4 10             	add    $0x10,%esp
     4e3:	83 f8 0a             	cmp    $0xa,%eax
     4e6:	0f 85 d9 00 00 00    	jne    5c5 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4ec:	83 ec 04             	sub    $0x4,%esp
     4ef:	6a 0a                	push   $0xa
     4f1:	68 b7 3e 00 00       	push   $0x3eb7
     4f6:	56                   	push   %esi
     4f7:	e8 a6 33 00 00       	call   38a2 <write>
     4fc:	83 c4 10             	add    $0x10,%esp
     4ff:	83 f8 0a             	cmp    $0xa,%eax
     502:	0f 85 d6 00 00 00    	jne    5de <writetest+0x15e>
  for(i = 0; i < 100; i++){
     508:	83 c3 01             	add    $0x1,%ebx
     50b:	83 fb 64             	cmp    $0x64,%ebx
     50e:	75 c0                	jne    4d0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     510:	83 ec 08             	sub    $0x8,%esp
     513:	68 c2 3e 00 00       	push   $0x3ec2
     518:	ff 35 a8 5d 00 00    	pushl  0x5da8
     51e:	e8 ad 34 00 00       	call   39d0 <printf>
  close(fd);
     523:	89 34 24             	mov    %esi,(%esp)
     526:	e8 7f 33 00 00       	call   38aa <close>
  fd = open("small", O_RDONLY);
     52b:	5b                   	pop    %ebx
     52c:	5e                   	pop    %esi
     52d:	6a 00                	push   $0x0
     52f:	68 6f 3e 00 00       	push   $0x3e6f
     534:	e8 89 33 00 00       	call   38c2 <open>
  if(fd >= 0){
     539:	83 c4 10             	add    $0x10,%esp
     53c:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     53e:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     540:	0f 88 b1 00 00 00    	js     5f7 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
     546:	83 ec 08             	sub    $0x8,%esp
     549:	68 cd 3e 00 00       	push   $0x3ecd
     54e:	ff 35 a8 5d 00 00    	pushl  0x5da8
     554:	e8 77 34 00 00       	call   39d0 <printf>
  i = read(fd, buf, 2000);
     559:	83 c4 0c             	add    $0xc,%esp
     55c:	68 d0 07 00 00       	push   $0x7d0
     561:	68 80 85 00 00       	push   $0x8580
     566:	53                   	push   %ebx
     567:	e8 2e 33 00 00       	call   389a <read>
  if(i == 2000){
     56c:	83 c4 10             	add    $0x10,%esp
     56f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     574:	0f 85 94 00 00 00    	jne    60e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     57a:	83 ec 08             	sub    $0x8,%esp
     57d:	68 01 3f 00 00       	push   $0x3f01
     582:	ff 35 a8 5d 00 00    	pushl  0x5da8
     588:	e8 43 34 00 00       	call   39d0 <printf>
  close(fd);
     58d:	89 1c 24             	mov    %ebx,(%esp)
     590:	e8 15 33 00 00       	call   38aa <close>
  if(unlink("small") < 0){
     595:	c7 04 24 6f 3e 00 00 	movl   $0x3e6f,(%esp)
     59c:	e8 31 33 00 00       	call   38d2 <unlink>
     5a1:	83 c4 10             	add    $0x10,%esp
     5a4:	85 c0                	test   %eax,%eax
     5a6:	78 7d                	js     625 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
     5a8:	83 ec 08             	sub    $0x8,%esp
     5ab:	68 29 3f 00 00       	push   $0x3f29
     5b0:	ff 35 a8 5d 00 00    	pushl  0x5da8
     5b6:	e8 15 34 00 00       	call   39d0 <printf>
}
     5bb:	83 c4 10             	add    $0x10,%esp
     5be:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5c1:	5b                   	pop    %ebx
     5c2:	5e                   	pop    %esi
     5c3:	5d                   	pop    %ebp
     5c4:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5c5:	83 ec 04             	sub    $0x4,%esp
     5c8:	53                   	push   %ebx
     5c9:	68 70 4d 00 00       	push   $0x4d70
     5ce:	ff 35 a8 5d 00 00    	pushl  0x5da8
     5d4:	e8 f7 33 00 00       	call   39d0 <printf>
      exit();
     5d9:	e8 a4 32 00 00       	call   3882 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5de:	83 ec 04             	sub    $0x4,%esp
     5e1:	53                   	push   %ebx
     5e2:	68 94 4d 00 00       	push   $0x4d94
     5e7:	ff 35 a8 5d 00 00    	pushl  0x5da8
     5ed:	e8 de 33 00 00       	call   39d0 <printf>
      exit();
     5f2:	e8 8b 32 00 00       	call   3882 <exit>
    printf(stdout, "error: open small failed!\n");
     5f7:	51                   	push   %ecx
     5f8:	51                   	push   %ecx
     5f9:	68 e6 3e 00 00       	push   $0x3ee6
     5fe:	ff 35 a8 5d 00 00    	pushl  0x5da8
     604:	e8 c7 33 00 00       	call   39d0 <printf>
    exit();
     609:	e8 74 32 00 00       	call   3882 <exit>
    printf(stdout, "read failed\n");
     60e:	52                   	push   %edx
     60f:	52                   	push   %edx
     610:	68 2d 42 00 00       	push   $0x422d
     615:	ff 35 a8 5d 00 00    	pushl  0x5da8
     61b:	e8 b0 33 00 00       	call   39d0 <printf>
    exit();
     620:	e8 5d 32 00 00       	call   3882 <exit>
    printf(stdout, "unlink small failed\n");
     625:	50                   	push   %eax
     626:	50                   	push   %eax
     627:	68 14 3f 00 00       	push   $0x3f14
     62c:	ff 35 a8 5d 00 00    	pushl  0x5da8
     632:	e8 99 33 00 00       	call   39d0 <printf>
    exit();
     637:	e8 46 32 00 00       	call   3882 <exit>
    printf(stdout, "error: creat small failed!\n");
     63c:	50                   	push   %eax
     63d:	50                   	push   %eax
     63e:	68 90 3e 00 00       	push   $0x3e90
     643:	ff 35 a8 5d 00 00    	pushl  0x5da8
     649:	e8 82 33 00 00       	call   39d0 <printf>
    exit();
     64e:	e8 2f 32 00 00       	call   3882 <exit>
     653:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 3d 3f 00 00       	push   $0x3f3d
     66d:	ff 35 a8 5d 00 00    	pushl  0x5da8
     673:	e8 58 33 00 00       	call   39d0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     678:	58                   	pop    %eax
     679:	5a                   	pop    %edx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 b7 3f 00 00       	push   $0x3fb7
     684:	e8 39 32 00 00       	call   38c2 <open>
  if(fd < 0){
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 61 01 00 00    	js     7f5 <writetest1+0x195>
     694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     696:	31 db                	xor    %ebx,%ebx
     698:	90                   	nop
     699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     6a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6a3:	89 1d 80 85 00 00    	mov    %ebx,0x8580
    if(write(fd, buf, 512) != 512){
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 80 85 00 00       	push   $0x8580
     6b3:	56                   	push   %esi
     6b4:	e8 e9 31 00 00       	call   38a2 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b3 00 00 00    	jne    77a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 cf 31 00 00       	call   38aa <close>
  fd = open("big", O_RDONLY);
     6db:	5b                   	pop    %ebx
     6dc:	5e                   	pop    %esi
     6dd:	6a 00                	push   $0x0
     6df:	68 b7 3f 00 00       	push   $0x3fb7
     6e4:	e8 d9 31 00 00       	call   38c2 <open>
  if(fd < 0){
     6e9:	83 c4 10             	add    $0x10,%esp
     6ec:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     6ee:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6f0:	0f 88 e8 00 00 00    	js     7de <writetest1+0x17e>
  n = 0;
     6f6:	31 db                	xor    %ebx,%ebx
     6f8:	eb 1d                	jmp    717 <writetest1+0xb7>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 9f 00 00 00    	jne    7aa <writetest1+0x14a>
    if(((int*)buf)[0] != n){
     70b:	a1 80 85 00 00       	mov    0x8580,%eax
     710:	39 d8                	cmp    %ebx,%eax
     712:	75 7f                	jne    793 <writetest1+0x133>
    n++;
     714:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     717:	83 ec 04             	sub    $0x4,%esp
     71a:	68 00 02 00 00       	push   $0x200
     71f:	68 80 85 00 00       	push   $0x8580
     724:	56                   	push   %esi
     725:	e8 70 31 00 00       	call   389a <read>
    if(i == 0){
     72a:	83 c4 10             	add    $0x10,%esp
     72d:	85 c0                	test   %eax,%eax
     72f:	75 cf                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     731:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     737:	0f 84 86 00 00 00    	je     7c3 <writetest1+0x163>
  close(fd);
     73d:	83 ec 0c             	sub    $0xc,%esp
     740:	56                   	push   %esi
     741:	e8 64 31 00 00       	call   38aa <close>
  if(unlink("big") < 0){
     746:	c7 04 24 b7 3f 00 00 	movl   $0x3fb7,(%esp)
     74d:	e8 80 31 00 00       	call   38d2 <unlink>
     752:	83 c4 10             	add    $0x10,%esp
     755:	85 c0                	test   %eax,%eax
     757:	0f 88 af 00 00 00    	js     80c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
     75d:	83 ec 08             	sub    $0x8,%esp
     760:	68 de 3f 00 00       	push   $0x3fde
     765:	ff 35 a8 5d 00 00    	pushl  0x5da8
     76b:	e8 60 32 00 00       	call   39d0 <printf>
}
     770:	83 c4 10             	add    $0x10,%esp
     773:	8d 65 f8             	lea    -0x8(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5d                   	pop    %ebp
     779:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     77a:	83 ec 04             	sub    $0x4,%esp
     77d:	53                   	push   %ebx
     77e:	68 67 3f 00 00       	push   $0x3f67
     783:	ff 35 a8 5d 00 00    	pushl  0x5da8
     789:	e8 42 32 00 00       	call   39d0 <printf>
      exit();
     78e:	e8 ef 30 00 00       	call   3882 <exit>
      printf(stdout, "read content of block %d is %d\n",
     793:	50                   	push   %eax
     794:	53                   	push   %ebx
     795:	68 b8 4d 00 00       	push   $0x4db8
     79a:	ff 35 a8 5d 00 00    	pushl  0x5da8
     7a0:	e8 2b 32 00 00       	call   39d0 <printf>
      exit();
     7a5:	e8 d8 30 00 00       	call   3882 <exit>
      printf(stdout, "read failed %d\n", i);
     7aa:	83 ec 04             	sub    $0x4,%esp
     7ad:	50                   	push   %eax
     7ae:	68 bb 3f 00 00       	push   $0x3fbb
     7b3:	ff 35 a8 5d 00 00    	pushl  0x5da8
     7b9:	e8 12 32 00 00       	call   39d0 <printf>
      exit();
     7be:	e8 bf 30 00 00       	call   3882 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7c3:	52                   	push   %edx
     7c4:	68 8b 00 00 00       	push   $0x8b
     7c9:	68 9e 3f 00 00       	push   $0x3f9e
     7ce:	ff 35 a8 5d 00 00    	pushl  0x5da8
     7d4:	e8 f7 31 00 00       	call   39d0 <printf>
        exit();
     7d9:	e8 a4 30 00 00       	call   3882 <exit>
    printf(stdout, "error: open big failed!\n");
     7de:	51                   	push   %ecx
     7df:	51                   	push   %ecx
     7e0:	68 85 3f 00 00       	push   $0x3f85
     7e5:	ff 35 a8 5d 00 00    	pushl  0x5da8
     7eb:	e8 e0 31 00 00       	call   39d0 <printf>
    exit();
     7f0:	e8 8d 30 00 00       	call   3882 <exit>
    printf(stdout, "error: creat big failed!\n");
     7f5:	50                   	push   %eax
     7f6:	50                   	push   %eax
     7f7:	68 4d 3f 00 00       	push   $0x3f4d
     7fc:	ff 35 a8 5d 00 00    	pushl  0x5da8
     802:	e8 c9 31 00 00       	call   39d0 <printf>
    exit();
     807:	e8 76 30 00 00       	call   3882 <exit>
    printf(stdout, "unlink big failed\n");
     80c:	50                   	push   %eax
     80d:	50                   	push   %eax
     80e:	68 cb 3f 00 00       	push   $0x3fcb
     813:	ff 35 a8 5d 00 00    	pushl  0x5da8
     819:	e8 b2 31 00 00       	call   39d0 <printf>
    exit();
     81e:	e8 5f 30 00 00       	call   3882 <exit>
     823:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	68 d8 4d 00 00       	push   $0x4dd8
     841:	ff 35 a8 5d 00 00    	pushl  0x5da8
     847:	e8 84 31 00 00       	call   39d0 <printf>
  name[0] = 'a';
     84c:	c6 05 80 a5 00 00 61 	movb   $0x61,0xa580
  name[2] = '\0';
     853:	c6 05 82 a5 00 00 00 	movb   $0x0,0xa582
     85a:	83 c4 10             	add    $0x10,%esp
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     863:	88 1d 81 a5 00 00    	mov    %bl,0xa581
     869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 80 a5 00 00       	push   $0xa580
     876:	e8 47 30 00 00       	call   38c2 <open>
    close(fd);
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 27 30 00 00       	call   38aa <close>
  for(i = 0; i < 52; i++){
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88b:	c6 05 80 a5 00 00 61 	movb   $0x61,0xa580
  name[2] = '\0';
     892:	c6 05 82 a5 00 00 00 	movb   $0x0,0xa582
     899:	bb 30 00 00 00       	mov    $0x30,%ebx
     89e:	66 90                	xchg   %ax,%ax
    unlink(name);
     8a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8a3:	88 1d 81 a5 00 00    	mov    %bl,0xa581
     8a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8ac:	68 80 a5 00 00       	push   $0xa580
     8b1:	e8 1c 30 00 00       	call   38d2 <unlink>
  for(i = 0; i < 52; i++){
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 00 4e 00 00       	push   $0x4e00
     8c6:	ff 35 a8 5d 00 00    	pushl  0x5da8
     8cc:	e8 ff 30 00 00       	call   39d0 <printf>
}
     8d1:	83 c4 10             	add    $0x10,%esp
     8d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d7:	c9                   	leave  
     8d8:	c3                   	ret    
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8e6:	68 ec 3f 00 00       	push   $0x3fec
     8eb:	ff 35 a8 5d 00 00    	pushl  0x5da8
     8f1:	e8 da 30 00 00       	call   39d0 <printf>
  if(mkdir("dir0") < 0){
     8f6:	c7 04 24 f8 3f 00 00 	movl   $0x3ff8,(%esp)
     8fd:	e8 e8 2f 00 00       	call   38ea <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 58                	js     961 <dirtest+0x81>
  if(chdir("dir0") < 0){
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 f8 3f 00 00       	push   $0x3ff8
     911:	e8 dc 2f 00 00       	call   38f2 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 85 00 00 00    	js     9a6 <dirtest+0xc6>
  if(chdir("..") < 0){
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 9d 45 00 00       	push   $0x459d
     929:	e8 c4 2f 00 00       	call   38f2 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 5a                	js     98f <dirtest+0xaf>
  if(unlink("dir0") < 0){
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 f8 3f 00 00       	push   $0x3ff8
     93d:	e8 90 2f 00 00       	call   38d2 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	85 c0                	test   %eax,%eax
     947:	78 2f                	js     978 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
     949:	83 ec 08             	sub    $0x8,%esp
     94c:	68 35 40 00 00       	push   $0x4035
     951:	ff 35 a8 5d 00 00    	pushl  0x5da8
     957:	e8 74 30 00 00       	call   39d0 <printf>
}
     95c:	83 c4 10             	add    $0x10,%esp
     95f:	c9                   	leave  
     960:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     961:	50                   	push   %eax
     962:	50                   	push   %eax
     963:	68 28 3d 00 00       	push   $0x3d28
     968:	ff 35 a8 5d 00 00    	pushl  0x5da8
     96e:	e8 5d 30 00 00       	call   39d0 <printf>
    exit();
     973:	e8 0a 2f 00 00       	call   3882 <exit>
    printf(stdout, "unlink dir0 failed\n");
     978:	50                   	push   %eax
     979:	50                   	push   %eax
     97a:	68 21 40 00 00       	push   $0x4021
     97f:	ff 35 a8 5d 00 00    	pushl  0x5da8
     985:	e8 46 30 00 00       	call   39d0 <printf>
    exit();
     98a:	e8 f3 2e 00 00       	call   3882 <exit>
    printf(stdout, "chdir .. failed\n");
     98f:	52                   	push   %edx
     990:	52                   	push   %edx
     991:	68 10 40 00 00       	push   $0x4010
     996:	ff 35 a8 5d 00 00    	pushl  0x5da8
     99c:	e8 2f 30 00 00       	call   39d0 <printf>
    exit();
     9a1:	e8 dc 2e 00 00       	call   3882 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9a6:	51                   	push   %ecx
     9a7:	51                   	push   %ecx
     9a8:	68 fd 3f 00 00       	push   $0x3ffd
     9ad:	ff 35 a8 5d 00 00    	pushl  0x5da8
     9b3:	e8 18 30 00 00       	call   39d0 <printf>
    exit();
     9b8:	e8 c5 2e 00 00       	call   3882 <exit>
     9bd:	8d 76 00             	lea    0x0(%esi),%esi

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9c6:	68 44 40 00 00       	push   $0x4044
     9cb:	ff 35 a8 5d 00 00    	pushl  0x5da8
     9d1:	e8 fa 2f 00 00       	call   39d0 <printf>
  if(exec("echo", echoargv) < 0){
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 ac 5d 00 00       	push   $0x5dac
     9dd:	68 0d 3e 00 00       	push   $0x3e0d
     9e2:	e8 d3 2e 00 00       	call   38ba <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
}
     9ee:	c9                   	leave  
     9ef:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 4f 40 00 00       	push   $0x404f
     9f7:	ff 35 a8 5d 00 00    	pushl  0x5da8
     9fd:	e8 ce 2f 00 00       	call   39d0 <printf>
    exit();
     a02:	e8 7b 2e 00 00       	call   3882 <exit>
     a07:	89 f6                	mov    %esi,%esi
     a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a10 <pipe1>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
     a15:	53                   	push   %ebx
  if(pipe(fds) != 0){
     a16:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a19:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a1c:	50                   	push   %eax
     a1d:	e8 70 2e 00 00       	call   3892 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 3e 01 00 00    	jne    b6b <pipe1+0x15b>
     a2d:	89 c3                	mov    %eax,%ebx
  pid = fork();
     a2f:	e8 46 2e 00 00       	call   387a <fork>
  if(pid == 0){
     a34:	83 f8 00             	cmp    $0x0,%eax
     a37:	0f 84 84 00 00 00    	je     ac1 <pipe1+0xb1>
  } else if(pid > 0){
     a3d:	0f 8e 3b 01 00 00    	jle    b7e <pipe1+0x16e>
    close(fds[1]);
     a43:	83 ec 0c             	sub    $0xc,%esp
     a46:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
     a49:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
     a4e:	e8 57 2e 00 00       	call   38aa <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a53:	83 c4 10             	add    $0x10,%esp
    total = 0;
     a56:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a5d:	83 ec 04             	sub    $0x4,%esp
     a60:	57                   	push   %edi
     a61:	68 80 85 00 00       	push   $0x8580
     a66:	ff 75 e0             	pushl  -0x20(%ebp)
     a69:	e8 2c 2e 00 00       	call   389a <read>
     a6e:	83 c4 10             	add    $0x10,%esp
     a71:	85 c0                	test   %eax,%eax
     a73:	0f 8e ab 00 00 00    	jle    b24 <pipe1+0x114>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a79:	89 d9                	mov    %ebx,%ecx
     a7b:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     a7e:	f7 d9                	neg    %ecx
     a80:	38 9c 0b 80 85 00 00 	cmp    %bl,0x8580(%ebx,%ecx,1)
     a87:	8d 53 01             	lea    0x1(%ebx),%edx
     a8a:	75 1b                	jne    aa7 <pipe1+0x97>
      for(i = 0; i < n; i++){
     a8c:	39 f2                	cmp    %esi,%edx
     a8e:	89 d3                	mov    %edx,%ebx
     a90:	75 ee                	jne    a80 <pipe1+0x70>
      cc = cc * 2;
     a92:	01 ff                	add    %edi,%edi
      total += n;
     a94:	01 45 d4             	add    %eax,-0x2c(%ebp)
     a97:	b8 00 20 00 00       	mov    $0x2000,%eax
     a9c:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     aa2:	0f 4f f8             	cmovg  %eax,%edi
     aa5:	eb b6                	jmp    a5d <pipe1+0x4d>
          printf(1, "pipe1 oops 2\n");
     aa7:	83 ec 08             	sub    $0x8,%esp
     aaa:	68 7e 40 00 00       	push   $0x407e
     aaf:	6a 01                	push   $0x1
     ab1:	e8 1a 2f 00 00       	call   39d0 <printf>
          return;
     ab6:	83 c4 10             	add    $0x10,%esp
}
     ab9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     abc:	5b                   	pop    %ebx
     abd:	5e                   	pop    %esi
     abe:	5f                   	pop    %edi
     abf:	5d                   	pop    %ebp
     ac0:	c3                   	ret    
    close(fds[0]);
     ac1:	83 ec 0c             	sub    $0xc,%esp
     ac4:	ff 75 e0             	pushl  -0x20(%ebp)
     ac7:	31 db                	xor    %ebx,%ebx
     ac9:	be 09 04 00 00       	mov    $0x409,%esi
     ace:	e8 d7 2d 00 00       	call   38aa <close>
     ad3:	83 c4 10             	add    $0x10,%esp
     ad6:	89 d8                	mov    %ebx,%eax
     ad8:	89 f2                	mov    %esi,%edx
     ada:	f7 d8                	neg    %eax
     adc:	29 da                	sub    %ebx,%edx
     ade:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     ae0:	88 84 03 80 85 00 00 	mov    %al,0x8580(%ebx,%eax,1)
     ae7:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
     aea:	39 d0                	cmp    %edx,%eax
     aec:	75 f2                	jne    ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     aee:	83 ec 04             	sub    $0x4,%esp
     af1:	68 09 04 00 00       	push   $0x409
     af6:	68 80 85 00 00       	push   $0x8580
     afb:	ff 75 e4             	pushl  -0x1c(%ebp)
     afe:	e8 9f 2d 00 00       	call   38a2 <write>
     b03:	83 c4 10             	add    $0x10,%esp
     b06:	3d 09 04 00 00       	cmp    $0x409,%eax
     b0b:	0f 85 80 00 00 00    	jne    b91 <pipe1+0x181>
     b11:	81 eb 09 04 00 00    	sub    $0x409,%ebx
    for(n = 0; n < 5; n++){
     b17:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
     b1d:	75 b7                	jne    ad6 <pipe1+0xc6>
    exit();
     b1f:	e8 5e 2d 00 00       	call   3882 <exit>
    if(total != 5 * 1033){
     b24:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b2b:	75 29                	jne    b56 <pipe1+0x146>
    close(fds[0]);
     b2d:	83 ec 0c             	sub    $0xc,%esp
     b30:	ff 75 e0             	pushl  -0x20(%ebp)
     b33:	e8 72 2d 00 00       	call   38aa <close>
    wait();
     b38:	e8 4d 2d 00 00       	call   388a <wait>
  printf(1, "pipe1 ok\n");
     b3d:	5a                   	pop    %edx
     b3e:	59                   	pop    %ecx
     b3f:	68 a3 40 00 00       	push   $0x40a3
     b44:	6a 01                	push   $0x1
     b46:	e8 85 2e 00 00       	call   39d0 <printf>
     b4b:	83 c4 10             	add    $0x10,%esp
}
     b4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b51:	5b                   	pop    %ebx
     b52:	5e                   	pop    %esi
     b53:	5f                   	pop    %edi
     b54:	5d                   	pop    %ebp
     b55:	c3                   	ret    
      printf(1, "pipe1 oops 3 total %d\n", total);
     b56:	53                   	push   %ebx
     b57:	ff 75 d4             	pushl  -0x2c(%ebp)
     b5a:	68 8c 40 00 00       	push   $0x408c
     b5f:	6a 01                	push   $0x1
     b61:	e8 6a 2e 00 00       	call   39d0 <printf>
      exit();
     b66:	e8 17 2d 00 00       	call   3882 <exit>
    printf(1, "pipe() failed\n");
     b6b:	57                   	push   %edi
     b6c:	57                   	push   %edi
     b6d:	68 61 40 00 00       	push   $0x4061
     b72:	6a 01                	push   $0x1
     b74:	e8 57 2e 00 00       	call   39d0 <printf>
    exit();
     b79:	e8 04 2d 00 00       	call   3882 <exit>
    printf(1, "fork() failed\n");
     b7e:	50                   	push   %eax
     b7f:	50                   	push   %eax
     b80:	68 ad 40 00 00       	push   $0x40ad
     b85:	6a 01                	push   $0x1
     b87:	e8 44 2e 00 00       	call   39d0 <printf>
    exit();
     b8c:	e8 f1 2c 00 00       	call   3882 <exit>
        printf(1, "pipe1 oops 1\n");
     b91:	56                   	push   %esi
     b92:	56                   	push   %esi
     b93:	68 70 40 00 00       	push   $0x4070
     b98:	6a 01                	push   $0x1
     b9a:	e8 31 2e 00 00       	call   39d0 <printf>
        exit();
     b9f:	e8 de 2c 00 00       	call   3882 <exit>
     ba4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     baa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000bb0 <preempt>:
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bb9:	68 bc 40 00 00       	push   $0x40bc
     bbe:	6a 01                	push   $0x1
     bc0:	e8 0b 2e 00 00       	call   39d0 <printf>
  pid1 = fork();
     bc5:	e8 b0 2c 00 00       	call   387a <fork>
  if(pid1 == 0)
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 02                	jne    bd3 <preempt+0x23>
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     bd5:	e8 a0 2c 00 00       	call   387a <fork>
  if(pid2 == 0)
     bda:	85 c0                	test   %eax,%eax
  pid2 = fork();
     bdc:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     bde:	75 02                	jne    be2 <preempt+0x32>
     be0:	eb fe                	jmp    be0 <preempt+0x30>
  pipe(pfds);
     be2:	8d 45 e0             	lea    -0x20(%ebp),%eax
     be5:	83 ec 0c             	sub    $0xc,%esp
     be8:	50                   	push   %eax
     be9:	e8 a4 2c 00 00       	call   3892 <pipe>
  pid3 = fork();
     bee:	e8 87 2c 00 00       	call   387a <fork>
  if(pid3 == 0){
     bf3:	83 c4 10             	add    $0x10,%esp
     bf6:	85 c0                	test   %eax,%eax
  pid3 = fork();
     bf8:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     bfa:	75 46                	jne    c42 <preempt+0x92>
    close(pfds[0]);
     bfc:	83 ec 0c             	sub    $0xc,%esp
     bff:	ff 75 e0             	pushl  -0x20(%ebp)
     c02:	e8 a3 2c 00 00       	call   38aa <close>
    if(write(pfds[1], "x", 1) != 1)
     c07:	83 c4 0c             	add    $0xc,%esp
     c0a:	6a 01                	push   $0x1
     c0c:	68 81 46 00 00       	push   $0x4681
     c11:	ff 75 e4             	pushl  -0x1c(%ebp)
     c14:	e8 89 2c 00 00       	call   38a2 <write>
     c19:	83 c4 10             	add    $0x10,%esp
     c1c:	83 e8 01             	sub    $0x1,%eax
     c1f:	74 11                	je     c32 <preempt+0x82>
      printf(1, "preempt write error");
     c21:	50                   	push   %eax
     c22:	50                   	push   %eax
     c23:	68 c6 40 00 00       	push   $0x40c6
     c28:	6a 01                	push   $0x1
     c2a:	e8 a1 2d 00 00       	call   39d0 <printf>
     c2f:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     c32:	83 ec 0c             	sub    $0xc,%esp
     c35:	ff 75 e4             	pushl  -0x1c(%ebp)
     c38:	e8 6d 2c 00 00       	call   38aa <close>
     c3d:	83 c4 10             	add    $0x10,%esp
     c40:	eb fe                	jmp    c40 <preempt+0x90>
  close(pfds[1]);
     c42:	83 ec 0c             	sub    $0xc,%esp
     c45:	ff 75 e4             	pushl  -0x1c(%ebp)
     c48:	e8 5d 2c 00 00       	call   38aa <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c4d:	83 c4 0c             	add    $0xc,%esp
     c50:	68 00 20 00 00       	push   $0x2000
     c55:	68 80 85 00 00       	push   $0x8580
     c5a:	ff 75 e0             	pushl  -0x20(%ebp)
     c5d:	e8 38 2c 00 00       	call   389a <read>
     c62:	83 c4 10             	add    $0x10,%esp
     c65:	83 e8 01             	sub    $0x1,%eax
     c68:	74 19                	je     c83 <preempt+0xd3>
    printf(1, "preempt read error");
     c6a:	50                   	push   %eax
     c6b:	50                   	push   %eax
     c6c:	68 da 40 00 00       	push   $0x40da
     c71:	6a 01                	push   $0x1
     c73:	e8 58 2d 00 00       	call   39d0 <printf>
    return;
     c78:	83 c4 10             	add    $0x10,%esp
}
     c7b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c7e:	5b                   	pop    %ebx
     c7f:	5e                   	pop    %esi
     c80:	5f                   	pop    %edi
     c81:	5d                   	pop    %ebp
     c82:	c3                   	ret    
  close(pfds[0]);
     c83:	83 ec 0c             	sub    $0xc,%esp
     c86:	ff 75 e0             	pushl  -0x20(%ebp)
     c89:	e8 1c 2c 00 00       	call   38aa <close>
  printf(1, "kill... ");
     c8e:	58                   	pop    %eax
     c8f:	5a                   	pop    %edx
     c90:	68 ed 40 00 00       	push   $0x40ed
     c95:	6a 01                	push   $0x1
     c97:	e8 34 2d 00 00       	call   39d0 <printf>
  kill(pid1);
     c9c:	89 3c 24             	mov    %edi,(%esp)
     c9f:	e8 0e 2c 00 00       	call   38b2 <kill>
  kill(pid2);
     ca4:	89 34 24             	mov    %esi,(%esp)
     ca7:	e8 06 2c 00 00       	call   38b2 <kill>
  kill(pid3);
     cac:	89 1c 24             	mov    %ebx,(%esp)
     caf:	e8 fe 2b 00 00       	call   38b2 <kill>
  printf(1, "wait... ");
     cb4:	59                   	pop    %ecx
     cb5:	5b                   	pop    %ebx
     cb6:	68 f6 40 00 00       	push   $0x40f6
     cbb:	6a 01                	push   $0x1
     cbd:	e8 0e 2d 00 00       	call   39d0 <printf>
  wait();
     cc2:	e8 c3 2b 00 00       	call   388a <wait>
  wait();
     cc7:	e8 be 2b 00 00       	call   388a <wait>
  wait();
     ccc:	e8 b9 2b 00 00       	call   388a <wait>
  printf(1, "preempt ok\n");
     cd1:	5e                   	pop    %esi
     cd2:	5f                   	pop    %edi
     cd3:	68 ff 40 00 00       	push   $0x40ff
     cd8:	6a 01                	push   $0x1
     cda:	e8 f1 2c 00 00       	call   39d0 <printf>
     cdf:	83 c4 10             	add    $0x10,%esp
     ce2:	eb 97                	jmp    c7b <preempt+0xcb>
     ce4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000cf0 <exitwait>:
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	56                   	push   %esi
     cf4:	be 64 00 00 00       	mov    $0x64,%esi
     cf9:	53                   	push   %ebx
     cfa:	eb 14                	jmp    d10 <exitwait+0x20>
     cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d00:	74 6f                	je     d71 <exitwait+0x81>
      if(wait() != pid){
     d02:	e8 83 2b 00 00       	call   388a <wait>
     d07:	39 d8                	cmp    %ebx,%eax
     d09:	75 2d                	jne    d38 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d0b:	83 ee 01             	sub    $0x1,%esi
     d0e:	74 48                	je     d58 <exitwait+0x68>
    pid = fork();
     d10:	e8 65 2b 00 00       	call   387a <fork>
    if(pid < 0){
     d15:	85 c0                	test   %eax,%eax
    pid = fork();
     d17:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d19:	79 e5                	jns    d00 <exitwait+0x10>
      printf(1, "fork failed\n");
     d1b:	83 ec 08             	sub    $0x8,%esp
     d1e:	68 69 4c 00 00       	push   $0x4c69
     d23:	6a 01                	push   $0x1
     d25:	e8 a6 2c 00 00       	call   39d0 <printf>
      return;
     d2a:	83 c4 10             	add    $0x10,%esp
}
     d2d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d30:	5b                   	pop    %ebx
     d31:	5e                   	pop    %esi
     d32:	5d                   	pop    %ebp
     d33:	c3                   	ret    
     d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d38:	83 ec 08             	sub    $0x8,%esp
     d3b:	68 0b 41 00 00       	push   $0x410b
     d40:	6a 01                	push   $0x1
     d42:	e8 89 2c 00 00       	call   39d0 <printf>
        return;
     d47:	83 c4 10             	add    $0x10,%esp
}
     d4a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d4d:	5b                   	pop    %ebx
     d4e:	5e                   	pop    %esi
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret    
     d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 1b 41 00 00       	push   $0x411b
     d60:	6a 01                	push   $0x1
     d62:	e8 69 2c 00 00       	call   39d0 <printf>
     d67:	83 c4 10             	add    $0x10,%esp
}
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret    
      exit();
     d71:	e8 0c 2b 00 00       	call   3882 <exit>
     d76:	8d 76 00             	lea    0x0(%esi),%esi
     d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d80 <mem>:
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	57                   	push   %edi
     d84:	56                   	push   %esi
     d85:	53                   	push   %ebx
     d86:	31 db                	xor    %ebx,%ebx
     d88:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
     d8b:	68 28 41 00 00       	push   $0x4128
     d90:	6a 01                	push   $0x1
     d92:	e8 39 2c 00 00       	call   39d0 <printf>
  ppid = getpid();
     d97:	e8 66 2b 00 00       	call   3902 <getpid>
     d9c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     d9e:	e8 d7 2a 00 00       	call   387a <fork>
     da3:	83 c4 10             	add    $0x10,%esp
     da6:	85 c0                	test   %eax,%eax
     da8:	74 0a                	je     db4 <mem+0x34>
     daa:	e9 89 00 00 00       	jmp    e38 <mem+0xb8>
     daf:	90                   	nop
      *(char**)m2 = m1;
     db0:	89 18                	mov    %ebx,(%eax)
     db2:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     db4:	83 ec 0c             	sub    $0xc,%esp
     db7:	68 11 27 00 00       	push   $0x2711
     dbc:	e8 6f 2e 00 00       	call   3c30 <malloc>
     dc1:	83 c4 10             	add    $0x10,%esp
     dc4:	85 c0                	test   %eax,%eax
     dc6:	75 e8                	jne    db0 <mem+0x30>
    while(m1){
     dc8:	85 db                	test   %ebx,%ebx
     dca:	74 18                	je     de4 <mem+0x64>
     dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     dd0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     dd2:	83 ec 0c             	sub    $0xc,%esp
     dd5:	53                   	push   %ebx
     dd6:	89 fb                	mov    %edi,%ebx
     dd8:	e8 c3 2d 00 00       	call   3ba0 <free>
    while(m1){
     ddd:	83 c4 10             	add    $0x10,%esp
     de0:	85 db                	test   %ebx,%ebx
     de2:	75 ec                	jne    dd0 <mem+0x50>
    m1 = malloc(1024*20);
     de4:	83 ec 0c             	sub    $0xc,%esp
     de7:	68 00 50 00 00       	push   $0x5000
     dec:	e8 3f 2e 00 00       	call   3c30 <malloc>
    if(m1 == 0){
     df1:	83 c4 10             	add    $0x10,%esp
     df4:	85 c0                	test   %eax,%eax
     df6:	74 20                	je     e18 <mem+0x98>
    free(m1);
     df8:	83 ec 0c             	sub    $0xc,%esp
     dfb:	50                   	push   %eax
     dfc:	e8 9f 2d 00 00       	call   3ba0 <free>
    printf(1, "mem ok\n");
     e01:	58                   	pop    %eax
     e02:	5a                   	pop    %edx
     e03:	68 4c 41 00 00       	push   $0x414c
     e08:	6a 01                	push   $0x1
     e0a:	e8 c1 2b 00 00       	call   39d0 <printf>
    exit();
     e0f:	e8 6e 2a 00 00       	call   3882 <exit>
     e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e18:	83 ec 08             	sub    $0x8,%esp
     e1b:	68 32 41 00 00       	push   $0x4132
     e20:	6a 01                	push   $0x1
     e22:	e8 a9 2b 00 00       	call   39d0 <printf>
      kill(ppid);
     e27:	89 34 24             	mov    %esi,(%esp)
     e2a:	e8 83 2a 00 00       	call   38b2 <kill>
      exit();
     e2f:	e8 4e 2a 00 00       	call   3882 <exit>
     e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e38:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e3b:	5b                   	pop    %ebx
     e3c:	5e                   	pop    %esi
     e3d:	5f                   	pop    %edi
     e3e:	5d                   	pop    %ebp
    wait();
     e3f:	e9 46 2a 00 00       	jmp    388a <wait>
     e44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000e50 <sharedfd>:
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e59:	68 54 41 00 00       	push   $0x4154
     e5e:	6a 01                	push   $0x1
     e60:	e8 6b 2b 00 00       	call   39d0 <printf>
  unlink("sharedfd");
     e65:	c7 04 24 63 41 00 00 	movl   $0x4163,(%esp)
     e6c:	e8 61 2a 00 00       	call   38d2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e71:	59                   	pop    %ecx
     e72:	5b                   	pop    %ebx
     e73:	68 02 02 00 00       	push   $0x202
     e78:	68 63 41 00 00       	push   $0x4163
     e7d:	e8 40 2a 00 00       	call   38c2 <open>
  if(fd < 0){
     e82:	83 c4 10             	add    $0x10,%esp
     e85:	85 c0                	test   %eax,%eax
     e87:	0f 88 33 01 00 00    	js     fc0 <sharedfd+0x170>
     e8d:	89 c6                	mov    %eax,%esi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e8f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     e94:	e8 e1 29 00 00       	call   387a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e99:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     e9c:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e9e:	19 c0                	sbb    %eax,%eax
     ea0:	83 ec 04             	sub    $0x4,%esp
     ea3:	83 e0 f3             	and    $0xfffffff3,%eax
     ea6:	6a 0a                	push   $0xa
     ea8:	83 c0 70             	add    $0x70,%eax
     eab:	50                   	push   %eax
     eac:	8d 45 de             	lea    -0x22(%ebp),%eax
     eaf:	50                   	push   %eax
     eb0:	e8 2b 28 00 00       	call   36e0 <memset>
     eb5:	83 c4 10             	add    $0x10,%esp
     eb8:	eb 0b                	jmp    ec5 <sharedfd+0x75>
     eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 1000; i++){
     ec0:	83 eb 01             	sub    $0x1,%ebx
     ec3:	74 29                	je     eee <sharedfd+0x9e>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ec5:	8d 45 de             	lea    -0x22(%ebp),%eax
     ec8:	83 ec 04             	sub    $0x4,%esp
     ecb:	6a 0a                	push   $0xa
     ecd:	50                   	push   %eax
     ece:	56                   	push   %esi
     ecf:	e8 ce 29 00 00       	call   38a2 <write>
     ed4:	83 c4 10             	add    $0x10,%esp
     ed7:	83 f8 0a             	cmp    $0xa,%eax
     eda:	74 e4                	je     ec0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     edc:	83 ec 08             	sub    $0x8,%esp
     edf:	68 54 4e 00 00       	push   $0x4e54
     ee4:	6a 01                	push   $0x1
     ee6:	e8 e5 2a 00 00       	call   39d0 <printf>
      break;
     eeb:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     eee:	85 ff                	test   %edi,%edi
     ef0:	0f 84 fe 00 00 00    	je     ff4 <sharedfd+0x1a4>
    wait();
     ef6:	e8 8f 29 00 00       	call   388a <wait>
  close(fd);
     efb:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     efe:	31 db                	xor    %ebx,%ebx
     f00:	31 ff                	xor    %edi,%edi
  close(fd);
     f02:	56                   	push   %esi
     f03:	8d 75 e8             	lea    -0x18(%ebp),%esi
     f06:	e8 9f 29 00 00       	call   38aa <close>
  fd = open("sharedfd", 0);
     f0b:	58                   	pop    %eax
     f0c:	5a                   	pop    %edx
     f0d:	6a 00                	push   $0x0
     f0f:	68 63 41 00 00       	push   $0x4163
     f14:	e8 a9 29 00 00       	call   38c2 <open>
  if(fd < 0){
     f19:	83 c4 10             	add    $0x10,%esp
     f1c:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     f1e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(fd < 0){
     f21:	0f 88 b3 00 00 00    	js     fda <sharedfd+0x18a>
     f27:	89 f8                	mov    %edi,%eax
     f29:	89 df                	mov    %ebx,%edi
     f2b:	89 c3                	mov    %eax,%ebx
     f2d:	8d 76 00             	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f30:	8d 45 de             	lea    -0x22(%ebp),%eax
     f33:	83 ec 04             	sub    $0x4,%esp
     f36:	6a 0a                	push   $0xa
     f38:	50                   	push   %eax
     f39:	ff 75 d4             	pushl  -0x2c(%ebp)
     f3c:	e8 59 29 00 00       	call   389a <read>
     f41:	83 c4 10             	add    $0x10,%esp
     f44:	85 c0                	test   %eax,%eax
     f46:	7e 28                	jle    f70 <sharedfd+0x120>
     f48:	8d 45 de             	lea    -0x22(%ebp),%eax
     f4b:	eb 15                	jmp    f62 <sharedfd+0x112>
     f4d:	8d 76 00             	lea    0x0(%esi),%esi
        np++;
     f50:	80 fa 70             	cmp    $0x70,%dl
     f53:	0f 94 c2             	sete   %dl
     f56:	0f b6 d2             	movzbl %dl,%edx
     f59:	01 d7                	add    %edx,%edi
     f5b:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
     f5e:	39 f0                	cmp    %esi,%eax
     f60:	74 ce                	je     f30 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f62:	0f b6 10             	movzbl (%eax),%edx
     f65:	80 fa 63             	cmp    $0x63,%dl
     f68:	75 e6                	jne    f50 <sharedfd+0x100>
        nc++;
     f6a:	83 c3 01             	add    $0x1,%ebx
     f6d:	eb ec                	jmp    f5b <sharedfd+0x10b>
     f6f:	90                   	nop
  close(fd);
     f70:	83 ec 0c             	sub    $0xc,%esp
     f73:	89 d8                	mov    %ebx,%eax
     f75:	ff 75 d4             	pushl  -0x2c(%ebp)
     f78:	89 fb                	mov    %edi,%ebx
     f7a:	89 c7                	mov    %eax,%edi
     f7c:	e8 29 29 00 00       	call   38aa <close>
  unlink("sharedfd");
     f81:	c7 04 24 63 41 00 00 	movl   $0x4163,(%esp)
     f88:	e8 45 29 00 00       	call   38d2 <unlink>
  if(nc == 10000 && np == 10000){
     f8d:	83 c4 10             	add    $0x10,%esp
     f90:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
     f96:	75 61                	jne    ff9 <sharedfd+0x1a9>
     f98:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     f9e:	75 59                	jne    ff9 <sharedfd+0x1a9>
    printf(1, "sharedfd ok\n");
     fa0:	83 ec 08             	sub    $0x8,%esp
     fa3:	68 6c 41 00 00       	push   $0x416c
     fa8:	6a 01                	push   $0x1
     faa:	e8 21 2a 00 00       	call   39d0 <printf>
     faf:	83 c4 10             	add    $0x10,%esp
}
     fb2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fb5:	5b                   	pop    %ebx
     fb6:	5e                   	pop    %esi
     fb7:	5f                   	pop    %edi
     fb8:	5d                   	pop    %ebp
     fb9:	c3                   	ret    
     fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for writing");
     fc0:	83 ec 08             	sub    $0x8,%esp
     fc3:	68 28 4e 00 00       	push   $0x4e28
     fc8:	6a 01                	push   $0x1
     fca:	e8 01 2a 00 00       	call   39d0 <printf>
    return;
     fcf:	83 c4 10             	add    $0x10,%esp
}
     fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fd5:	5b                   	pop    %ebx
     fd6:	5e                   	pop    %esi
     fd7:	5f                   	pop    %edi
     fd8:	5d                   	pop    %ebp
     fd9:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fda:	83 ec 08             	sub    $0x8,%esp
     fdd:	68 74 4e 00 00       	push   $0x4e74
     fe2:	6a 01                	push   $0x1
     fe4:	e8 e7 29 00 00       	call   39d0 <printf>
    return;
     fe9:	83 c4 10             	add    $0x10,%esp
}
     fec:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fef:	5b                   	pop    %ebx
     ff0:	5e                   	pop    %esi
     ff1:	5f                   	pop    %edi
     ff2:	5d                   	pop    %ebp
     ff3:	c3                   	ret    
    exit();
     ff4:	e8 89 28 00 00       	call   3882 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
     ff9:	53                   	push   %ebx
     ffa:	57                   	push   %edi
     ffb:	68 79 41 00 00       	push   $0x4179
    1000:	6a 01                	push   $0x1
    1002:	e8 c9 29 00 00       	call   39d0 <printf>
    exit();
    1007:	e8 76 28 00 00       	call   3882 <exit>
    100c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001010 <fourfiles>:
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	57                   	push   %edi
    1014:	56                   	push   %esi
    1015:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    1016:	be 8e 41 00 00       	mov    $0x418e,%esi
  for(pi = 0; pi < 4; pi++){
    101b:	31 db                	xor    %ebx,%ebx
{
    101d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1020:	c7 45 d8 8e 41 00 00 	movl   $0x418e,-0x28(%ebp)
    1027:	c7 45 dc d7 42 00 00 	movl   $0x42d7,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    102e:	68 94 41 00 00       	push   $0x4194
    1033:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    1035:	c7 45 e0 db 42 00 00 	movl   $0x42db,-0x20(%ebp)
    103c:	c7 45 e4 91 41 00 00 	movl   $0x4191,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1043:	e8 88 29 00 00       	call   39d0 <printf>
    1048:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    104b:	83 ec 0c             	sub    $0xc,%esp
    104e:	56                   	push   %esi
    104f:	e8 7e 28 00 00       	call   38d2 <unlink>
    pid = fork();
    1054:	e8 21 28 00 00       	call   387a <fork>
    if(pid < 0){
    1059:	83 c4 10             	add    $0x10,%esp
    105c:	85 c0                	test   %eax,%eax
    105e:	0f 88 68 01 00 00    	js     11cc <fourfiles+0x1bc>
    if(pid == 0){
    1064:	0f 84 df 00 00 00    	je     1149 <fourfiles+0x139>
  for(pi = 0; pi < 4; pi++){
    106a:	83 c3 01             	add    $0x1,%ebx
    106d:	83 fb 04             	cmp    $0x4,%ebx
    1070:	74 06                	je     1078 <fourfiles+0x68>
    1072:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1076:	eb d3                	jmp    104b <fourfiles+0x3b>
    wait();
    1078:	e8 0d 28 00 00       	call   388a <wait>
  for(i = 0; i < 2; i++){
    107d:	31 ff                	xor    %edi,%edi
    wait();
    107f:	e8 06 28 00 00       	call   388a <wait>
    1084:	e8 01 28 00 00       	call   388a <wait>
    1089:	e8 fc 27 00 00       	call   388a <wait>
    108e:	c7 45 d0 8e 41 00 00 	movl   $0x418e,-0x30(%ebp)
    fd = open(fname, 0);
    1095:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    1098:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    109a:	6a 00                	push   $0x0
    109c:	ff 75 d0             	pushl  -0x30(%ebp)
    109f:	e8 1e 28 00 00       	call   38c2 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10a4:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10a7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10b0:	83 ec 04             	sub    $0x4,%esp
    10b3:	68 00 20 00 00       	push   $0x2000
    10b8:	68 80 85 00 00       	push   $0x8580
    10bd:	ff 75 d4             	pushl  -0x2c(%ebp)
    10c0:	e8 d5 27 00 00       	call   389a <read>
    10c5:	83 c4 10             	add    $0x10,%esp
    10c8:	85 c0                	test   %eax,%eax
    10ca:	7e 26                	jle    10f2 <fourfiles+0xe2>
      for(j = 0; j < n; j++){
    10cc:	31 d2                	xor    %edx,%edx
    10ce:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    10d0:	0f be b2 80 85 00 00 	movsbl 0x8580(%edx),%esi
    10d7:	83 ff 01             	cmp    $0x1,%edi
    10da:	19 c9                	sbb    %ecx,%ecx
    10dc:	83 c1 31             	add    $0x31,%ecx
    10df:	39 ce                	cmp    %ecx,%esi
    10e1:	0f 85 be 00 00 00    	jne    11a5 <fourfiles+0x195>
      for(j = 0; j < n; j++){
    10e7:	83 c2 01             	add    $0x1,%edx
    10ea:	39 d0                	cmp    %edx,%eax
    10ec:	75 e2                	jne    10d0 <fourfiles+0xc0>
      total += n;
    10ee:	01 c3                	add    %eax,%ebx
    10f0:	eb be                	jmp    10b0 <fourfiles+0xa0>
    close(fd);
    10f2:	83 ec 0c             	sub    $0xc,%esp
    10f5:	ff 75 d4             	pushl  -0x2c(%ebp)
    10f8:	e8 ad 27 00 00       	call   38aa <close>
    if(total != 12*500){
    10fd:	83 c4 10             	add    $0x10,%esp
    1100:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1106:	0f 85 d3 00 00 00    	jne    11df <fourfiles+0x1cf>
    unlink(fname);
    110c:	83 ec 0c             	sub    $0xc,%esp
    110f:	ff 75 d0             	pushl  -0x30(%ebp)
    1112:	e8 bb 27 00 00       	call   38d2 <unlink>
  for(i = 0; i < 2; i++){
    1117:	83 c4 10             	add    $0x10,%esp
    111a:	83 ff 01             	cmp    $0x1,%edi
    111d:	75 1a                	jne    1139 <fourfiles+0x129>
  printf(1, "fourfiles ok\n");
    111f:	83 ec 08             	sub    $0x8,%esp
    1122:	68 d2 41 00 00       	push   $0x41d2
    1127:	6a 01                	push   $0x1
    1129:	e8 a2 28 00 00       	call   39d0 <printf>
}
    112e:	83 c4 10             	add    $0x10,%esp
    1131:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1134:	5b                   	pop    %ebx
    1135:	5e                   	pop    %esi
    1136:	5f                   	pop    %edi
    1137:	5d                   	pop    %ebp
    1138:	c3                   	ret    
    1139:	8b 45 dc             	mov    -0x24(%ebp),%eax
    113c:	bf 01 00 00 00       	mov    $0x1,%edi
    1141:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1144:	e9 4c ff ff ff       	jmp    1095 <fourfiles+0x85>
      fd = open(fname, O_CREATE | O_RDWR);
    1149:	83 ec 08             	sub    $0x8,%esp
    114c:	68 02 02 00 00       	push   $0x202
    1151:	56                   	push   %esi
    1152:	e8 6b 27 00 00       	call   38c2 <open>
      if(fd < 0){
    1157:	83 c4 10             	add    $0x10,%esp
    115a:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    115c:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    115e:	78 59                	js     11b9 <fourfiles+0x1a9>
      memset(buf, '0'+pi, 512);
    1160:	83 ec 04             	sub    $0x4,%esp
    1163:	83 c3 30             	add    $0x30,%ebx
    1166:	68 00 02 00 00       	push   $0x200
    116b:	53                   	push   %ebx
    116c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1171:	68 80 85 00 00       	push   $0x8580
    1176:	e8 65 25 00 00       	call   36e0 <memset>
    117b:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    117e:	83 ec 04             	sub    $0x4,%esp
    1181:	68 f4 01 00 00       	push   $0x1f4
    1186:	68 80 85 00 00       	push   $0x8580
    118b:	56                   	push   %esi
    118c:	e8 11 27 00 00       	call   38a2 <write>
    1191:	83 c4 10             	add    $0x10,%esp
    1194:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1199:	75 57                	jne    11f2 <fourfiles+0x1e2>
      for(i = 0; i < 12; i++){
    119b:	83 eb 01             	sub    $0x1,%ebx
    119e:	75 de                	jne    117e <fourfiles+0x16e>
      exit();
    11a0:	e8 dd 26 00 00       	call   3882 <exit>
          printf(1, "wrong char\n");
    11a5:	83 ec 08             	sub    $0x8,%esp
    11a8:	68 b5 41 00 00       	push   $0x41b5
    11ad:	6a 01                	push   $0x1
    11af:	e8 1c 28 00 00       	call   39d0 <printf>
          exit();
    11b4:	e8 c9 26 00 00       	call   3882 <exit>
        printf(1, "create failed\n");
    11b9:	51                   	push   %ecx
    11ba:	51                   	push   %ecx
    11bb:	68 2f 44 00 00       	push   $0x442f
    11c0:	6a 01                	push   $0x1
    11c2:	e8 09 28 00 00       	call   39d0 <printf>
        exit();
    11c7:	e8 b6 26 00 00       	call   3882 <exit>
      printf(1, "fork failed\n");
    11cc:	53                   	push   %ebx
    11cd:	53                   	push   %ebx
    11ce:	68 69 4c 00 00       	push   $0x4c69
    11d3:	6a 01                	push   $0x1
    11d5:	e8 f6 27 00 00       	call   39d0 <printf>
      exit();
    11da:	e8 a3 26 00 00       	call   3882 <exit>
      printf(1, "wrong length %d\n", total);
    11df:	50                   	push   %eax
    11e0:	53                   	push   %ebx
    11e1:	68 c1 41 00 00       	push   $0x41c1
    11e6:	6a 01                	push   $0x1
    11e8:	e8 e3 27 00 00       	call   39d0 <printf>
      exit();
    11ed:	e8 90 26 00 00       	call   3882 <exit>
          printf(1, "write failed %d\n", n);
    11f2:	52                   	push   %edx
    11f3:	50                   	push   %eax
    11f4:	68 a4 41 00 00       	push   $0x41a4
    11f9:	6a 01                	push   $0x1
    11fb:	e8 d0 27 00 00       	call   39d0 <printf>
          exit();
    1200:	e8 7d 26 00 00       	call   3882 <exit>
    1205:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001210 <createdelete>:
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	57                   	push   %edi
    1214:	56                   	push   %esi
    1215:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1216:	31 db                	xor    %ebx,%ebx
{
    1218:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    121b:	68 e0 41 00 00       	push   $0x41e0
    1220:	6a 01                	push   $0x1
    1222:	e8 a9 27 00 00       	call   39d0 <printf>
    1227:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    122a:	e8 4b 26 00 00       	call   387a <fork>
    if(pid < 0){
    122f:	85 c0                	test   %eax,%eax
    1231:	0f 88 be 01 00 00    	js     13f5 <createdelete+0x1e5>
    if(pid == 0){
    1237:	0f 84 0b 01 00 00    	je     1348 <createdelete+0x138>
  for(pi = 0; pi < 4; pi++){
    123d:	83 c3 01             	add    $0x1,%ebx
    1240:	83 fb 04             	cmp    $0x4,%ebx
    1243:	75 e5                	jne    122a <createdelete+0x1a>
    1245:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    1248:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait();
    124d:	e8 38 26 00 00       	call   388a <wait>
    1252:	e8 33 26 00 00       	call   388a <wait>
    1257:	e8 2e 26 00 00       	call   388a <wait>
    125c:	e8 29 26 00 00       	call   388a <wait>
  name[0] = name[1] = name[2] = 0;
    1261:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1265:	8d 76 00             	lea    0x0(%esi),%esi
    1268:	8d 46 31             	lea    0x31(%esi),%eax
    126b:	88 45 c7             	mov    %al,-0x39(%ebp)
    126e:	8d 46 01             	lea    0x1(%esi),%eax
    1271:	83 f8 09             	cmp    $0x9,%eax
    1274:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1277:	0f 9f c3             	setg   %bl
    127a:	85 c0                	test   %eax,%eax
    127c:	0f 94 c0             	sete   %al
    127f:	09 c3                	or     %eax,%ebx
    1281:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    1284:	bb 70 00 00 00       	mov    $0x70,%ebx
      name[1] = '0' + i;
    1289:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    128d:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1290:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    1293:	6a 00                	push   $0x0
    1295:	57                   	push   %edi
      name[1] = '0' + i;
    1296:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1299:	e8 24 26 00 00       	call   38c2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    129e:	83 c4 10             	add    $0x10,%esp
    12a1:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    12a5:	0f 84 85 00 00 00    	je     1330 <createdelete+0x120>
    12ab:	85 c0                	test   %eax,%eax
    12ad:	0f 88 1a 01 00 00    	js     13cd <createdelete+0x1bd>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    12b3:	83 fe 08             	cmp    $0x8,%esi
    12b6:	0f 86 54 01 00 00    	jbe    1410 <createdelete+0x200>
        close(fd);
    12bc:	83 ec 0c             	sub    $0xc,%esp
    12bf:	50                   	push   %eax
    12c0:	e8 e5 25 00 00       	call   38aa <close>
    12c5:	83 c4 10             	add    $0x10,%esp
    12c8:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    12cb:	80 fb 74             	cmp    $0x74,%bl
    12ce:	75 b9                	jne    1289 <createdelete+0x79>
    12d0:	8b 75 c0             	mov    -0x40(%ebp),%esi
  for(i = 0; i < N; i++){
    12d3:	83 fe 13             	cmp    $0x13,%esi
    12d6:	75 90                	jne    1268 <createdelete+0x58>
    12d8:	be 70 00 00 00       	mov    $0x70,%esi
    12dd:	8d 76 00             	lea    0x0(%esi),%esi
    12e0:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    12e3:	bb 04 00 00 00       	mov    $0x4,%ebx
    12e8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    12eb:	89 f0                	mov    %esi,%eax
      unlink(name);
    12ed:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    12f0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    12f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    12f7:	57                   	push   %edi
      name[1] = '0' + i;
    12f8:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    12fb:	e8 d2 25 00 00       	call   38d2 <unlink>
    for(pi = 0; pi < 4; pi++){
    1300:	83 c4 10             	add    $0x10,%esp
    1303:	83 eb 01             	sub    $0x1,%ebx
    1306:	75 e3                	jne    12eb <createdelete+0xdb>
    1308:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    130b:	89 f0                	mov    %esi,%eax
    130d:	3c 84                	cmp    $0x84,%al
    130f:	75 cf                	jne    12e0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1311:	83 ec 08             	sub    $0x8,%esp
    1314:	68 f3 41 00 00       	push   $0x41f3
    1319:	6a 01                	push   $0x1
    131b:	e8 b0 26 00 00       	call   39d0 <printf>
}
    1320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
    1328:	90                   	nop
    1329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1330:	83 fe 08             	cmp    $0x8,%esi
    1333:	0f 86 cf 00 00 00    	jbe    1408 <createdelete+0x1f8>
      if(fd >= 0)
    1339:	85 c0                	test   %eax,%eax
    133b:	78 8b                	js     12c8 <createdelete+0xb8>
    133d:	e9 7a ff ff ff       	jmp    12bc <createdelete+0xac>
    1342:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    1348:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    134b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    134f:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    1352:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    1355:	31 db                	xor    %ebx,%ebx
    1357:	eb 0f                	jmp    1368 <createdelete+0x158>
    1359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    1360:	83 fb 13             	cmp    $0x13,%ebx
    1363:	74 63                	je     13c8 <createdelete+0x1b8>
    1365:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    1368:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    136b:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    136e:	68 02 02 00 00       	push   $0x202
    1373:	57                   	push   %edi
        name[1] = '0' + i;
    1374:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1377:	e8 46 25 00 00       	call   38c2 <open>
        if(fd < 0){
    137c:	83 c4 10             	add    $0x10,%esp
    137f:	85 c0                	test   %eax,%eax
    1381:	78 5f                	js     13e2 <createdelete+0x1d2>
        close(fd);
    1383:	83 ec 0c             	sub    $0xc,%esp
    1386:	50                   	push   %eax
    1387:	e8 1e 25 00 00       	call   38aa <close>
        if(i > 0 && (i % 2 ) == 0){
    138c:	83 c4 10             	add    $0x10,%esp
    138f:	85 db                	test   %ebx,%ebx
    1391:	74 d2                	je     1365 <createdelete+0x155>
    1393:	f6 c3 01             	test   $0x1,%bl
    1396:	75 c8                	jne    1360 <createdelete+0x150>
          if(unlink(name) < 0){
    1398:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    139b:	89 d8                	mov    %ebx,%eax
    139d:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    139f:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    13a0:	83 c0 30             	add    $0x30,%eax
    13a3:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13a6:	e8 27 25 00 00       	call   38d2 <unlink>
    13ab:	83 c4 10             	add    $0x10,%esp
    13ae:	85 c0                	test   %eax,%eax
    13b0:	79 ae                	jns    1360 <createdelete+0x150>
            printf(1, "unlink failed\n");
    13b2:	52                   	push   %edx
    13b3:	52                   	push   %edx
    13b4:	68 e1 3d 00 00       	push   $0x3de1
    13b9:	6a 01                	push   $0x1
    13bb:	e8 10 26 00 00       	call   39d0 <printf>
            exit();
    13c0:	e8 bd 24 00 00       	call   3882 <exit>
    13c5:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    13c8:	e8 b5 24 00 00       	call   3882 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13cd:	83 ec 04             	sub    $0x4,%esp
    13d0:	57                   	push   %edi
    13d1:	68 a0 4e 00 00       	push   $0x4ea0
    13d6:	6a 01                	push   $0x1
    13d8:	e8 f3 25 00 00       	call   39d0 <printf>
        exit();
    13dd:	e8 a0 24 00 00       	call   3882 <exit>
          printf(1, "create failed\n");
    13e2:	51                   	push   %ecx
    13e3:	51                   	push   %ecx
    13e4:	68 2f 44 00 00       	push   $0x442f
    13e9:	6a 01                	push   $0x1
    13eb:	e8 e0 25 00 00       	call   39d0 <printf>
          exit();
    13f0:	e8 8d 24 00 00       	call   3882 <exit>
      printf(1, "fork failed\n");
    13f5:	53                   	push   %ebx
    13f6:	53                   	push   %ebx
    13f7:	68 69 4c 00 00       	push   $0x4c69
    13fc:	6a 01                	push   $0x1
    13fe:	e8 cd 25 00 00       	call   39d0 <printf>
      exit();
    1403:	e8 7a 24 00 00       	call   3882 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1408:	85 c0                	test   %eax,%eax
    140a:	0f 88 b8 fe ff ff    	js     12c8 <createdelete+0xb8>
        printf(1, "oops createdelete %s did exist\n", name);
    1410:	50                   	push   %eax
    1411:	57                   	push   %edi
    1412:	68 c4 4e 00 00       	push   $0x4ec4
    1417:	6a 01                	push   $0x1
    1419:	e8 b2 25 00 00       	call   39d0 <printf>
        exit();
    141e:	e8 5f 24 00 00       	call   3882 <exit>
    1423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001430 <unlinkread>:
{
    1430:	55                   	push   %ebp
    1431:	89 e5                	mov    %esp,%ebp
    1433:	56                   	push   %esi
    1434:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1435:	83 ec 08             	sub    $0x8,%esp
    1438:	68 04 42 00 00       	push   $0x4204
    143d:	6a 01                	push   $0x1
    143f:	e8 8c 25 00 00       	call   39d0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1444:	5b                   	pop    %ebx
    1445:	5e                   	pop    %esi
    1446:	68 02 02 00 00       	push   $0x202
    144b:	68 15 42 00 00       	push   $0x4215
    1450:	e8 6d 24 00 00       	call   38c2 <open>
  if(fd < 0){
    1455:	83 c4 10             	add    $0x10,%esp
    1458:	85 c0                	test   %eax,%eax
    145a:	0f 88 e6 00 00 00    	js     1546 <unlinkread+0x116>
  write(fd, "hello", 5);
    1460:	83 ec 04             	sub    $0x4,%esp
    1463:	89 c3                	mov    %eax,%ebx
    1465:	6a 05                	push   $0x5
    1467:	68 3a 42 00 00       	push   $0x423a
    146c:	50                   	push   %eax
    146d:	e8 30 24 00 00       	call   38a2 <write>
  close(fd);
    1472:	89 1c 24             	mov    %ebx,(%esp)
    1475:	e8 30 24 00 00       	call   38aa <close>
  fd = open("unlinkread", O_RDWR);
    147a:	58                   	pop    %eax
    147b:	5a                   	pop    %edx
    147c:	6a 02                	push   $0x2
    147e:	68 15 42 00 00       	push   $0x4215
    1483:	e8 3a 24 00 00       	call   38c2 <open>
  if(fd < 0){
    1488:	83 c4 10             	add    $0x10,%esp
    148b:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    148d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    148f:	0f 88 10 01 00 00    	js     15a5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    1495:	83 ec 0c             	sub    $0xc,%esp
    1498:	68 15 42 00 00       	push   $0x4215
    149d:	e8 30 24 00 00       	call   38d2 <unlink>
    14a2:	83 c4 10             	add    $0x10,%esp
    14a5:	85 c0                	test   %eax,%eax
    14a7:	0f 85 e5 00 00 00    	jne    1592 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14ad:	83 ec 08             	sub    $0x8,%esp
    14b0:	68 02 02 00 00       	push   $0x202
    14b5:	68 15 42 00 00       	push   $0x4215
    14ba:	e8 03 24 00 00       	call   38c2 <open>
  write(fd1, "yyy", 3);
    14bf:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14c2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14c4:	6a 03                	push   $0x3
    14c6:	68 72 42 00 00       	push   $0x4272
    14cb:	50                   	push   %eax
    14cc:	e8 d1 23 00 00       	call   38a2 <write>
  close(fd1);
    14d1:	89 34 24             	mov    %esi,(%esp)
    14d4:	e8 d1 23 00 00       	call   38aa <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14d9:	83 c4 0c             	add    $0xc,%esp
    14dc:	68 00 20 00 00       	push   $0x2000
    14e1:	68 80 85 00 00       	push   $0x8580
    14e6:	53                   	push   %ebx
    14e7:	e8 ae 23 00 00       	call   389a <read>
    14ec:	83 c4 10             	add    $0x10,%esp
    14ef:	83 f8 05             	cmp    $0x5,%eax
    14f2:	0f 85 87 00 00 00    	jne    157f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    14f8:	80 3d 80 85 00 00 68 	cmpb   $0x68,0x8580
    14ff:	75 6b                	jne    156c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    1501:	83 ec 04             	sub    $0x4,%esp
    1504:	6a 0a                	push   $0xa
    1506:	68 80 85 00 00       	push   $0x8580
    150b:	53                   	push   %ebx
    150c:	e8 91 23 00 00       	call   38a2 <write>
    1511:	83 c4 10             	add    $0x10,%esp
    1514:	83 f8 0a             	cmp    $0xa,%eax
    1517:	75 40                	jne    1559 <unlinkread+0x129>
  close(fd);
    1519:	83 ec 0c             	sub    $0xc,%esp
    151c:	53                   	push   %ebx
    151d:	e8 88 23 00 00       	call   38aa <close>
  unlink("unlinkread");
    1522:	c7 04 24 15 42 00 00 	movl   $0x4215,(%esp)
    1529:	e8 a4 23 00 00       	call   38d2 <unlink>
  printf(1, "unlinkread ok\n");
    152e:	58                   	pop    %eax
    152f:	5a                   	pop    %edx
    1530:	68 bd 42 00 00       	push   $0x42bd
    1535:	6a 01                	push   $0x1
    1537:	e8 94 24 00 00       	call   39d0 <printf>
}
    153c:	83 c4 10             	add    $0x10,%esp
    153f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1542:	5b                   	pop    %ebx
    1543:	5e                   	pop    %esi
    1544:	5d                   	pop    %ebp
    1545:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    1546:	51                   	push   %ecx
    1547:	51                   	push   %ecx
    1548:	68 20 42 00 00       	push   $0x4220
    154d:	6a 01                	push   $0x1
    154f:	e8 7c 24 00 00       	call   39d0 <printf>
    exit();
    1554:	e8 29 23 00 00       	call   3882 <exit>
    printf(1, "unlinkread write failed\n");
    1559:	51                   	push   %ecx
    155a:	51                   	push   %ecx
    155b:	68 a4 42 00 00       	push   $0x42a4
    1560:	6a 01                	push   $0x1
    1562:	e8 69 24 00 00       	call   39d0 <printf>
    exit();
    1567:	e8 16 23 00 00       	call   3882 <exit>
    printf(1, "unlinkread wrong data\n");
    156c:	53                   	push   %ebx
    156d:	53                   	push   %ebx
    156e:	68 8d 42 00 00       	push   $0x428d
    1573:	6a 01                	push   $0x1
    1575:	e8 56 24 00 00       	call   39d0 <printf>
    exit();
    157a:	e8 03 23 00 00       	call   3882 <exit>
    printf(1, "unlinkread read failed");
    157f:	56                   	push   %esi
    1580:	56                   	push   %esi
    1581:	68 76 42 00 00       	push   $0x4276
    1586:	6a 01                	push   $0x1
    1588:	e8 43 24 00 00       	call   39d0 <printf>
    exit();
    158d:	e8 f0 22 00 00       	call   3882 <exit>
    printf(1, "unlink unlinkread failed\n");
    1592:	50                   	push   %eax
    1593:	50                   	push   %eax
    1594:	68 58 42 00 00       	push   $0x4258
    1599:	6a 01                	push   $0x1
    159b:	e8 30 24 00 00       	call   39d0 <printf>
    exit();
    15a0:	e8 dd 22 00 00       	call   3882 <exit>
    printf(1, "open unlinkread failed\n");
    15a5:	50                   	push   %eax
    15a6:	50                   	push   %eax
    15a7:	68 40 42 00 00       	push   $0x4240
    15ac:	6a 01                	push   $0x1
    15ae:	e8 1d 24 00 00       	call   39d0 <printf>
    exit();
    15b3:	e8 ca 22 00 00       	call   3882 <exit>
    15b8:	90                   	nop
    15b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000015c0 <linktest>:
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	53                   	push   %ebx
    15c4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15c7:	68 cc 42 00 00       	push   $0x42cc
    15cc:	6a 01                	push   $0x1
    15ce:	e8 fd 23 00 00       	call   39d0 <printf>
  unlink("lf1");
    15d3:	c7 04 24 d6 42 00 00 	movl   $0x42d6,(%esp)
    15da:	e8 f3 22 00 00       	call   38d2 <unlink>
  unlink("lf2");
    15df:	c7 04 24 da 42 00 00 	movl   $0x42da,(%esp)
    15e6:	e8 e7 22 00 00       	call   38d2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15eb:	58                   	pop    %eax
    15ec:	5a                   	pop    %edx
    15ed:	68 02 02 00 00       	push   $0x202
    15f2:	68 d6 42 00 00       	push   $0x42d6
    15f7:	e8 c6 22 00 00       	call   38c2 <open>
  if(fd < 0){
    15fc:	83 c4 10             	add    $0x10,%esp
    15ff:	85 c0                	test   %eax,%eax
    1601:	0f 88 1e 01 00 00    	js     1725 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1607:	83 ec 04             	sub    $0x4,%esp
    160a:	89 c3                	mov    %eax,%ebx
    160c:	6a 05                	push   $0x5
    160e:	68 3a 42 00 00       	push   $0x423a
    1613:	50                   	push   %eax
    1614:	e8 89 22 00 00       	call   38a2 <write>
    1619:	83 c4 10             	add    $0x10,%esp
    161c:	83 f8 05             	cmp    $0x5,%eax
    161f:	0f 85 98 01 00 00    	jne    17bd <linktest+0x1fd>
  close(fd);
    1625:	83 ec 0c             	sub    $0xc,%esp
    1628:	53                   	push   %ebx
    1629:	e8 7c 22 00 00       	call   38aa <close>
  if(link("lf1", "lf2") < 0){
    162e:	5b                   	pop    %ebx
    162f:	58                   	pop    %eax
    1630:	68 da 42 00 00       	push   $0x42da
    1635:	68 d6 42 00 00       	push   $0x42d6
    163a:	e8 a3 22 00 00       	call   38e2 <link>
    163f:	83 c4 10             	add    $0x10,%esp
    1642:	85 c0                	test   %eax,%eax
    1644:	0f 88 60 01 00 00    	js     17aa <linktest+0x1ea>
  unlink("lf1");
    164a:	83 ec 0c             	sub    $0xc,%esp
    164d:	68 d6 42 00 00       	push   $0x42d6
    1652:	e8 7b 22 00 00       	call   38d2 <unlink>
  if(open("lf1", 0) >= 0){
    1657:	58                   	pop    %eax
    1658:	5a                   	pop    %edx
    1659:	6a 00                	push   $0x0
    165b:	68 d6 42 00 00       	push   $0x42d6
    1660:	e8 5d 22 00 00       	call   38c2 <open>
    1665:	83 c4 10             	add    $0x10,%esp
    1668:	85 c0                	test   %eax,%eax
    166a:	0f 89 27 01 00 00    	jns    1797 <linktest+0x1d7>
  fd = open("lf2", 0);
    1670:	83 ec 08             	sub    $0x8,%esp
    1673:	6a 00                	push   $0x0
    1675:	68 da 42 00 00       	push   $0x42da
    167a:	e8 43 22 00 00       	call   38c2 <open>
  if(fd < 0){
    167f:	83 c4 10             	add    $0x10,%esp
    1682:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1684:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1686:	0f 88 f8 00 00 00    	js     1784 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    168c:	83 ec 04             	sub    $0x4,%esp
    168f:	68 00 20 00 00       	push   $0x2000
    1694:	68 80 85 00 00       	push   $0x8580
    1699:	50                   	push   %eax
    169a:	e8 fb 21 00 00       	call   389a <read>
    169f:	83 c4 10             	add    $0x10,%esp
    16a2:	83 f8 05             	cmp    $0x5,%eax
    16a5:	0f 85 c6 00 00 00    	jne    1771 <linktest+0x1b1>
  close(fd);
    16ab:	83 ec 0c             	sub    $0xc,%esp
    16ae:	53                   	push   %ebx
    16af:	e8 f6 21 00 00       	call   38aa <close>
  if(link("lf2", "lf2") >= 0){
    16b4:	58                   	pop    %eax
    16b5:	5a                   	pop    %edx
    16b6:	68 da 42 00 00       	push   $0x42da
    16bb:	68 da 42 00 00       	push   $0x42da
    16c0:	e8 1d 22 00 00       	call   38e2 <link>
    16c5:	83 c4 10             	add    $0x10,%esp
    16c8:	85 c0                	test   %eax,%eax
    16ca:	0f 89 8e 00 00 00    	jns    175e <linktest+0x19e>
  unlink("lf2");
    16d0:	83 ec 0c             	sub    $0xc,%esp
    16d3:	68 da 42 00 00       	push   $0x42da
    16d8:	e8 f5 21 00 00       	call   38d2 <unlink>
  if(link("lf2", "lf1") >= 0){
    16dd:	59                   	pop    %ecx
    16de:	5b                   	pop    %ebx
    16df:	68 d6 42 00 00       	push   $0x42d6
    16e4:	68 da 42 00 00       	push   $0x42da
    16e9:	e8 f4 21 00 00       	call   38e2 <link>
    16ee:	83 c4 10             	add    $0x10,%esp
    16f1:	85 c0                	test   %eax,%eax
    16f3:	79 56                	jns    174b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    16f5:	83 ec 08             	sub    $0x8,%esp
    16f8:	68 d6 42 00 00       	push   $0x42d6
    16fd:	68 9e 45 00 00       	push   $0x459e
    1702:	e8 db 21 00 00       	call   38e2 <link>
    1707:	83 c4 10             	add    $0x10,%esp
    170a:	85 c0                	test   %eax,%eax
    170c:	79 2a                	jns    1738 <linktest+0x178>
  printf(1, "linktest ok\n");
    170e:	83 ec 08             	sub    $0x8,%esp
    1711:	68 74 43 00 00       	push   $0x4374
    1716:	6a 01                	push   $0x1
    1718:	e8 b3 22 00 00       	call   39d0 <printf>
}
    171d:	83 c4 10             	add    $0x10,%esp
    1720:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1723:	c9                   	leave  
    1724:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1725:	50                   	push   %eax
    1726:	50                   	push   %eax
    1727:	68 de 42 00 00       	push   $0x42de
    172c:	6a 01                	push   $0x1
    172e:	e8 9d 22 00 00       	call   39d0 <printf>
    exit();
    1733:	e8 4a 21 00 00       	call   3882 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1738:	50                   	push   %eax
    1739:	50                   	push   %eax
    173a:	68 58 43 00 00       	push   $0x4358
    173f:	6a 01                	push   $0x1
    1741:	e8 8a 22 00 00       	call   39d0 <printf>
    exit();
    1746:	e8 37 21 00 00       	call   3882 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    174b:	52                   	push   %edx
    174c:	52                   	push   %edx
    174d:	68 0c 4f 00 00       	push   $0x4f0c
    1752:	6a 01                	push   $0x1
    1754:	e8 77 22 00 00       	call   39d0 <printf>
    exit();
    1759:	e8 24 21 00 00       	call   3882 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    175e:	50                   	push   %eax
    175f:	50                   	push   %eax
    1760:	68 3a 43 00 00       	push   $0x433a
    1765:	6a 01                	push   $0x1
    1767:	e8 64 22 00 00       	call   39d0 <printf>
    exit();
    176c:	e8 11 21 00 00       	call   3882 <exit>
    printf(1, "read lf2 failed\n");
    1771:	51                   	push   %ecx
    1772:	51                   	push   %ecx
    1773:	68 29 43 00 00       	push   $0x4329
    1778:	6a 01                	push   $0x1
    177a:	e8 51 22 00 00       	call   39d0 <printf>
    exit();
    177f:	e8 fe 20 00 00       	call   3882 <exit>
    printf(1, "open lf2 failed\n");
    1784:	53                   	push   %ebx
    1785:	53                   	push   %ebx
    1786:	68 18 43 00 00       	push   $0x4318
    178b:	6a 01                	push   $0x1
    178d:	e8 3e 22 00 00       	call   39d0 <printf>
    exit();
    1792:	e8 eb 20 00 00       	call   3882 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1797:	50                   	push   %eax
    1798:	50                   	push   %eax
    1799:	68 e4 4e 00 00       	push   $0x4ee4
    179e:	6a 01                	push   $0x1
    17a0:	e8 2b 22 00 00       	call   39d0 <printf>
    exit();
    17a5:	e8 d8 20 00 00       	call   3882 <exit>
    printf(1, "link lf1 lf2 failed\n");
    17aa:	51                   	push   %ecx
    17ab:	51                   	push   %ecx
    17ac:	68 03 43 00 00       	push   $0x4303
    17b1:	6a 01                	push   $0x1
    17b3:	e8 18 22 00 00       	call   39d0 <printf>
    exit();
    17b8:	e8 c5 20 00 00       	call   3882 <exit>
    printf(1, "write lf1 failed\n");
    17bd:	50                   	push   %eax
    17be:	50                   	push   %eax
    17bf:	68 f1 42 00 00       	push   $0x42f1
    17c4:	6a 01                	push   $0x1
    17c6:	e8 05 22 00 00       	call   39d0 <printf>
    exit();
    17cb:	e8 b2 20 00 00       	call   3882 <exit>

000017d0 <concreate>:
{
    17d0:	55                   	push   %ebp
    17d1:	89 e5                	mov    %esp,%ebp
    17d3:	57                   	push   %edi
    17d4:	56                   	push   %esi
    17d5:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    17d6:	31 f6                	xor    %esi,%esi
    17d8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    if(pid && (i % 3) == 1){
    17db:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
{
    17e0:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17e3:	68 81 43 00 00       	push   $0x4381
    17e8:	6a 01                	push   $0x1
    17ea:	e8 e1 21 00 00       	call   39d0 <printf>
  file[0] = 'C';
    17ef:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    17f3:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    17f7:	83 c4 10             	add    $0x10,%esp
    17fa:	eb 4c                	jmp    1848 <concreate+0x78>
    17fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1800:	89 f0                	mov    %esi,%eax
    1802:	89 f1                	mov    %esi,%ecx
    1804:	f7 e7                	mul    %edi
    1806:	d1 ea                	shr    %edx
    1808:	8d 04 52             	lea    (%edx,%edx,2),%eax
    180b:	29 c1                	sub    %eax,%ecx
    180d:	83 f9 01             	cmp    $0x1,%ecx
    1810:	0f 84 ba 00 00 00    	je     18d0 <concreate+0x100>
      fd = open(file, O_CREATE | O_RDWR);
    1816:	83 ec 08             	sub    $0x8,%esp
    1819:	68 02 02 00 00       	push   $0x202
    181e:	53                   	push   %ebx
    181f:	e8 9e 20 00 00       	call   38c2 <open>
      if(fd < 0){
    1824:	83 c4 10             	add    $0x10,%esp
    1827:	85 c0                	test   %eax,%eax
    1829:	78 67                	js     1892 <concreate+0xc2>
      close(fd);
    182b:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    182e:	83 c6 01             	add    $0x1,%esi
      close(fd);
    1831:	50                   	push   %eax
    1832:	e8 73 20 00 00       	call   38aa <close>
    1837:	83 c4 10             	add    $0x10,%esp
      wait();
    183a:	e8 4b 20 00 00       	call   388a <wait>
  for(i = 0; i < 40; i++){
    183f:	83 fe 28             	cmp    $0x28,%esi
    1842:	0f 84 aa 00 00 00    	je     18f2 <concreate+0x122>
    unlink(file);
    1848:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    184b:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    184e:	53                   	push   %ebx
    file[1] = '0' + i;
    184f:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1852:	e8 7b 20 00 00       	call   38d2 <unlink>
    pid = fork();
    1857:	e8 1e 20 00 00       	call   387a <fork>
    if(pid && (i % 3) == 1){
    185c:	83 c4 10             	add    $0x10,%esp
    185f:	85 c0                	test   %eax,%eax
    1861:	75 9d                	jne    1800 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1863:	89 f0                	mov    %esi,%eax
    1865:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    186a:	f7 e2                	mul    %edx
    186c:	c1 ea 02             	shr    $0x2,%edx
    186f:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1872:	29 c6                	sub    %eax,%esi
    1874:	83 fe 01             	cmp    $0x1,%esi
    1877:	74 37                	je     18b0 <concreate+0xe0>
      fd = open(file, O_CREATE | O_RDWR);
    1879:	83 ec 08             	sub    $0x8,%esp
    187c:	68 02 02 00 00       	push   $0x202
    1881:	53                   	push   %ebx
    1882:	e8 3b 20 00 00       	call   38c2 <open>
      if(fd < 0){
    1887:	83 c4 10             	add    $0x10,%esp
    188a:	85 c0                	test   %eax,%eax
    188c:	0f 89 28 02 00 00    	jns    1aba <concreate+0x2ea>
        printf(1, "concreate create %s failed\n", file);
    1892:	83 ec 04             	sub    $0x4,%esp
    1895:	53                   	push   %ebx
    1896:	68 94 43 00 00       	push   $0x4394
    189b:	6a 01                	push   $0x1
    189d:	e8 2e 21 00 00       	call   39d0 <printf>
        exit();
    18a2:	e8 db 1f 00 00       	call   3882 <exit>
    18a7:	89 f6                	mov    %esi,%esi
    18a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    18b0:	83 ec 08             	sub    $0x8,%esp
    18b3:	53                   	push   %ebx
    18b4:	68 91 43 00 00       	push   $0x4391
    18b9:	e8 24 20 00 00       	call   38e2 <link>
    18be:	83 c4 10             	add    $0x10,%esp
      exit();
    18c1:	e8 bc 1f 00 00       	call   3882 <exit>
    18c6:	8d 76 00             	lea    0x0(%esi),%esi
    18c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    18d0:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    18d3:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    18d6:	53                   	push   %ebx
    18d7:	68 91 43 00 00       	push   $0x4391
    18dc:	e8 01 20 00 00       	call   38e2 <link>
    18e1:	83 c4 10             	add    $0x10,%esp
      wait();
    18e4:	e8 a1 1f 00 00       	call   388a <wait>
  for(i = 0; i < 40; i++){
    18e9:	83 fe 28             	cmp    $0x28,%esi
    18ec:	0f 85 56 ff ff ff    	jne    1848 <concreate+0x78>
  memset(fa, 0, sizeof(fa));
    18f2:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18f5:	83 ec 04             	sub    $0x4,%esp
    18f8:	6a 28                	push   $0x28
    18fa:	6a 00                	push   $0x0
    18fc:	50                   	push   %eax
    18fd:	e8 de 1d 00 00       	call   36e0 <memset>
  fd = open(".", 0);
    1902:	5f                   	pop    %edi
    1903:	58                   	pop    %eax
    1904:	6a 00                	push   $0x0
    1906:	68 9e 45 00 00       	push   $0x459e
    190b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    190e:	e8 af 1f 00 00       	call   38c2 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    1913:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1916:	89 c6                	mov    %eax,%esi
  n = 0;
    1918:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    191f:	90                   	nop
  while(read(fd, &de, sizeof(de)) > 0){
    1920:	83 ec 04             	sub    $0x4,%esp
    1923:	6a 10                	push   $0x10
    1925:	57                   	push   %edi
    1926:	56                   	push   %esi
    1927:	e8 6e 1f 00 00       	call   389a <read>
    192c:	83 c4 10             	add    $0x10,%esp
    192f:	85 c0                	test   %eax,%eax
    1931:	7e 3d                	jle    1970 <concreate+0x1a0>
    if(de.inum == 0)
    1933:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1938:	74 e6                	je     1920 <concreate+0x150>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    193a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    193e:	75 e0                	jne    1920 <concreate+0x150>
    1940:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1944:	75 da                	jne    1920 <concreate+0x150>
      i = de.name[1] - '0';
    1946:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    194a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    194d:	83 f8 27             	cmp    $0x27,%eax
    1950:	0f 87 4e 01 00 00    	ja     1aa4 <concreate+0x2d4>
      if(fa[i]){
    1956:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    195b:	0f 85 2d 01 00 00    	jne    1a8e <concreate+0x2be>
      fa[i] = 1;
    1961:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1966:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    196a:	eb b4                	jmp    1920 <concreate+0x150>
    196c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1970:	83 ec 0c             	sub    $0xc,%esp
    1973:	56                   	push   %esi
    1974:	e8 31 1f 00 00       	call   38aa <close>
  if(n != 40){
    1979:	83 c4 10             	add    $0x10,%esp
    197c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1980:	0f 85 f5 00 00 00    	jne    1a7b <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    1986:	31 f6                	xor    %esi,%esi
    1988:	eb 48                	jmp    19d2 <concreate+0x202>
    198a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1990:	85 ff                	test   %edi,%edi
    1992:	74 05                	je     1999 <concreate+0x1c9>
    1994:	83 fa 01             	cmp    $0x1,%edx
    1997:	74 64                	je     19fd <concreate+0x22d>
      unlink(file);
    1999:	83 ec 0c             	sub    $0xc,%esp
    199c:	53                   	push   %ebx
    199d:	e8 30 1f 00 00       	call   38d2 <unlink>
      unlink(file);
    19a2:	89 1c 24             	mov    %ebx,(%esp)
    19a5:	e8 28 1f 00 00       	call   38d2 <unlink>
      unlink(file);
    19aa:	89 1c 24             	mov    %ebx,(%esp)
    19ad:	e8 20 1f 00 00       	call   38d2 <unlink>
      unlink(file);
    19b2:	89 1c 24             	mov    %ebx,(%esp)
    19b5:	e8 18 1f 00 00       	call   38d2 <unlink>
    19ba:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    19bd:	85 ff                	test   %edi,%edi
    19bf:	0f 84 fc fe ff ff    	je     18c1 <concreate+0xf1>
  for(i = 0; i < 40; i++){
    19c5:	83 c6 01             	add    $0x1,%esi
      wait();
    19c8:	e8 bd 1e 00 00       	call   388a <wait>
  for(i = 0; i < 40; i++){
    19cd:	83 fe 28             	cmp    $0x28,%esi
    19d0:	74 7e                	je     1a50 <concreate+0x280>
    file[1] = '0' + i;
    19d2:	8d 46 30             	lea    0x30(%esi),%eax
    19d5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19d8:	e8 9d 1e 00 00       	call   387a <fork>
    if(pid < 0){
    19dd:	85 c0                	test   %eax,%eax
    pid = fork();
    19df:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19e1:	0f 88 80 00 00 00    	js     1a67 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    19e7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19ec:	f7 e6                	mul    %esi
    19ee:	d1 ea                	shr    %edx
    19f0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    19f3:	89 f2                	mov    %esi,%edx
    19f5:	29 c2                	sub    %eax,%edx
    19f7:	89 d0                	mov    %edx,%eax
    19f9:	09 f8                	or     %edi,%eax
    19fb:	75 93                	jne    1990 <concreate+0x1c0>
      close(open(file, 0));
    19fd:	83 ec 08             	sub    $0x8,%esp
    1a00:	6a 00                	push   $0x0
    1a02:	53                   	push   %ebx
    1a03:	e8 ba 1e 00 00       	call   38c2 <open>
    1a08:	89 04 24             	mov    %eax,(%esp)
    1a0b:	e8 9a 1e 00 00       	call   38aa <close>
      close(open(file, 0));
    1a10:	58                   	pop    %eax
    1a11:	5a                   	pop    %edx
    1a12:	6a 00                	push   $0x0
    1a14:	53                   	push   %ebx
    1a15:	e8 a8 1e 00 00       	call   38c2 <open>
    1a1a:	89 04 24             	mov    %eax,(%esp)
    1a1d:	e8 88 1e 00 00       	call   38aa <close>
      close(open(file, 0));
    1a22:	59                   	pop    %ecx
    1a23:	58                   	pop    %eax
    1a24:	6a 00                	push   $0x0
    1a26:	53                   	push   %ebx
    1a27:	e8 96 1e 00 00       	call   38c2 <open>
    1a2c:	89 04 24             	mov    %eax,(%esp)
    1a2f:	e8 76 1e 00 00       	call   38aa <close>
      close(open(file, 0));
    1a34:	58                   	pop    %eax
    1a35:	5a                   	pop    %edx
    1a36:	6a 00                	push   $0x0
    1a38:	53                   	push   %ebx
    1a39:	e8 84 1e 00 00       	call   38c2 <open>
    1a3e:	89 04 24             	mov    %eax,(%esp)
    1a41:	e8 64 1e 00 00       	call   38aa <close>
    1a46:	83 c4 10             	add    $0x10,%esp
    1a49:	e9 6f ff ff ff       	jmp    19bd <concreate+0x1ed>
    1a4e:	66 90                	xchg   %ax,%ax
  printf(1, "concreate ok\n");
    1a50:	83 ec 08             	sub    $0x8,%esp
    1a53:	68 e6 43 00 00       	push   $0x43e6
    1a58:	6a 01                	push   $0x1
    1a5a:	e8 71 1f 00 00       	call   39d0 <printf>
}
    1a5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a62:	5b                   	pop    %ebx
    1a63:	5e                   	pop    %esi
    1a64:	5f                   	pop    %edi
    1a65:	5d                   	pop    %ebp
    1a66:	c3                   	ret    
      printf(1, "fork failed\n");
    1a67:	83 ec 08             	sub    $0x8,%esp
    1a6a:	68 69 4c 00 00       	push   $0x4c69
    1a6f:	6a 01                	push   $0x1
    1a71:	e8 5a 1f 00 00       	call   39d0 <printf>
      exit();
    1a76:	e8 07 1e 00 00       	call   3882 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1a7b:	51                   	push   %ecx
    1a7c:	51                   	push   %ecx
    1a7d:	68 30 4f 00 00       	push   $0x4f30
    1a82:	6a 01                	push   $0x1
    1a84:	e8 47 1f 00 00       	call   39d0 <printf>
    exit();
    1a89:	e8 f4 1d 00 00       	call   3882 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1a8e:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a91:	53                   	push   %ebx
    1a92:	50                   	push   %eax
    1a93:	68 c9 43 00 00       	push   $0x43c9
    1a98:	6a 01                	push   $0x1
    1a9a:	e8 31 1f 00 00       	call   39d0 <printf>
        exit();
    1a9f:	e8 de 1d 00 00       	call   3882 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1aa4:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1aa7:	56                   	push   %esi
    1aa8:	50                   	push   %eax
    1aa9:	68 b0 43 00 00       	push   $0x43b0
    1aae:	6a 01                	push   $0x1
    1ab0:	e8 1b 1f 00 00       	call   39d0 <printf>
        exit();
    1ab5:	e8 c8 1d 00 00       	call   3882 <exit>
      close(fd);
    1aba:	83 ec 0c             	sub    $0xc,%esp
    1abd:	50                   	push   %eax
    1abe:	e8 e7 1d 00 00       	call   38aa <close>
    1ac3:	83 c4 10             	add    $0x10,%esp
    1ac6:	e9 f6 fd ff ff       	jmp    18c1 <concreate+0xf1>
    1acb:	90                   	nop
    1acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001ad0 <linkunlink>:
{
    1ad0:	55                   	push   %ebp
    1ad1:	89 e5                	mov    %esp,%ebp
    1ad3:	57                   	push   %edi
    1ad4:	56                   	push   %esi
    1ad5:	53                   	push   %ebx
    1ad6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ad9:	68 f4 43 00 00       	push   $0x43f4
    1ade:	6a 01                	push   $0x1
    1ae0:	e8 eb 1e 00 00       	call   39d0 <printf>
  unlink("x");
    1ae5:	c7 04 24 81 46 00 00 	movl   $0x4681,(%esp)
    1aec:	e8 e1 1d 00 00       	call   38d2 <unlink>
  pid = fork();
    1af1:	e8 84 1d 00 00       	call   387a <fork>
  if(pid < 0){
    1af6:	83 c4 10             	add    $0x10,%esp
    1af9:	85 c0                	test   %eax,%eax
  pid = fork();
    1afb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1afe:	0f 88 b6 00 00 00    	js     1bba <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1b04:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b08:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1b0d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b12:	19 ff                	sbb    %edi,%edi
    1b14:	83 e7 60             	and    $0x60,%edi
    1b17:	83 c7 01             	add    $0x1,%edi
    1b1a:	eb 1e                	jmp    1b3a <linkunlink+0x6a>
    1b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b20:	83 fa 01             	cmp    $0x1,%edx
    1b23:	74 7b                	je     1ba0 <linkunlink+0xd0>
      unlink("x");
    1b25:	83 ec 0c             	sub    $0xc,%esp
    1b28:	68 81 46 00 00       	push   $0x4681
    1b2d:	e8 a0 1d 00 00       	call   38d2 <unlink>
    1b32:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b35:	83 eb 01             	sub    $0x1,%ebx
    1b38:	74 3d                	je     1b77 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    1b3a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b40:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b46:	89 f8                	mov    %edi,%eax
    1b48:	f7 e6                	mul    %esi
    1b4a:	d1 ea                	shr    %edx
    1b4c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1b4f:	89 fa                	mov    %edi,%edx
    1b51:	29 c2                	sub    %eax,%edx
    1b53:	75 cb                	jne    1b20 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b55:	83 ec 08             	sub    $0x8,%esp
    1b58:	68 02 02 00 00       	push   $0x202
    1b5d:	68 81 46 00 00       	push   $0x4681
    1b62:	e8 5b 1d 00 00       	call   38c2 <open>
    1b67:	89 04 24             	mov    %eax,(%esp)
    1b6a:	e8 3b 1d 00 00       	call   38aa <close>
    1b6f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b72:	83 eb 01             	sub    $0x1,%ebx
    1b75:	75 c3                	jne    1b3a <linkunlink+0x6a>
  if(pid)
    1b77:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b7a:	85 c0                	test   %eax,%eax
    1b7c:	74 4f                	je     1bcd <linkunlink+0xfd>
    wait();
    1b7e:	e8 07 1d 00 00       	call   388a <wait>
  printf(1, "linkunlink ok\n");
    1b83:	83 ec 08             	sub    $0x8,%esp
    1b86:	68 09 44 00 00       	push   $0x4409
    1b8b:	6a 01                	push   $0x1
    1b8d:	e8 3e 1e 00 00       	call   39d0 <printf>
}
    1b92:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b95:	5b                   	pop    %ebx
    1b96:	5e                   	pop    %esi
    1b97:	5f                   	pop    %edi
    1b98:	5d                   	pop    %ebp
    1b99:	c3                   	ret    
    1b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("cat", "x");
    1ba0:	83 ec 08             	sub    $0x8,%esp
    1ba3:	68 81 46 00 00       	push   $0x4681
    1ba8:	68 05 44 00 00       	push   $0x4405
    1bad:	e8 30 1d 00 00       	call   38e2 <link>
    1bb2:	83 c4 10             	add    $0x10,%esp
    1bb5:	e9 7b ff ff ff       	jmp    1b35 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1bba:	52                   	push   %edx
    1bbb:	52                   	push   %edx
    1bbc:	68 69 4c 00 00       	push   $0x4c69
    1bc1:	6a 01                	push   $0x1
    1bc3:	e8 08 1e 00 00       	call   39d0 <printf>
    exit();
    1bc8:	e8 b5 1c 00 00       	call   3882 <exit>
    exit();
    1bcd:	e8 b0 1c 00 00       	call   3882 <exit>
    1bd2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001be0 <bigdir>:
{
    1be0:	55                   	push   %ebp
    1be1:	89 e5                	mov    %esp,%ebp
    1be3:	57                   	push   %edi
    1be4:	56                   	push   %esi
    1be5:	53                   	push   %ebx
    1be6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1be9:	68 18 44 00 00       	push   $0x4418
    1bee:	6a 01                	push   $0x1
    1bf0:	e8 db 1d 00 00       	call   39d0 <printf>
  unlink("bd");
    1bf5:	c7 04 24 25 44 00 00 	movl   $0x4425,(%esp)
    1bfc:	e8 d1 1c 00 00       	call   38d2 <unlink>
  fd = open("bd", O_CREATE);
    1c01:	5a                   	pop    %edx
    1c02:	59                   	pop    %ecx
    1c03:	68 00 02 00 00       	push   $0x200
    1c08:	68 25 44 00 00       	push   $0x4425
    1c0d:	e8 b0 1c 00 00       	call   38c2 <open>
  if(fd < 0){
    1c12:	83 c4 10             	add    $0x10,%esp
    1c15:	85 c0                	test   %eax,%eax
    1c17:	0f 88 de 00 00 00    	js     1cfb <bigdir+0x11b>
  close(fd);
    1c1d:	83 ec 0c             	sub    $0xc,%esp
    1c20:	8d 7d de             	lea    -0x22(%ebp),%edi
  for(i = 0; i < 500; i++){
    1c23:	31 f6                	xor    %esi,%esi
  close(fd);
    1c25:	50                   	push   %eax
    1c26:	e8 7f 1c 00 00       	call   38aa <close>
    1c2b:	83 c4 10             	add    $0x10,%esp
    1c2e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c30:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c32:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c35:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c39:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1c3c:	57                   	push   %edi
    1c3d:	68 25 44 00 00       	push   $0x4425
    name[1] = '0' + (i / 64);
    1c42:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1c45:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c49:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c4c:	89 f0                	mov    %esi,%eax
    1c4e:	83 e0 3f             	and    $0x3f,%eax
    1c51:	83 c0 30             	add    $0x30,%eax
    1c54:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c57:	e8 86 1c 00 00       	call   38e2 <link>
    1c5c:	83 c4 10             	add    $0x10,%esp
    1c5f:	85 c0                	test   %eax,%eax
    1c61:	89 c3                	mov    %eax,%ebx
    1c63:	75 6e                	jne    1cd3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c65:	83 c6 01             	add    $0x1,%esi
    1c68:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c6e:	75 c0                	jne    1c30 <bigdir+0x50>
  unlink("bd");
    1c70:	83 ec 0c             	sub    $0xc,%esp
    1c73:	68 25 44 00 00       	push   $0x4425
    1c78:	e8 55 1c 00 00       	call   38d2 <unlink>
    1c7d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c80:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c82:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c85:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c89:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1c8c:	57                   	push   %edi
    name[3] = '\0';
    1c8d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c91:	83 c0 30             	add    $0x30,%eax
    1c94:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c97:	89 d8                	mov    %ebx,%eax
    1c99:	83 e0 3f             	and    $0x3f,%eax
    1c9c:	83 c0 30             	add    $0x30,%eax
    1c9f:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1ca2:	e8 2b 1c 00 00       	call   38d2 <unlink>
    1ca7:	83 c4 10             	add    $0x10,%esp
    1caa:	85 c0                	test   %eax,%eax
    1cac:	75 39                	jne    1ce7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1cae:	83 c3 01             	add    $0x1,%ebx
    1cb1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1cb7:	75 c7                	jne    1c80 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1cb9:	83 ec 08             	sub    $0x8,%esp
    1cbc:	68 67 44 00 00       	push   $0x4467
    1cc1:	6a 01                	push   $0x1
    1cc3:	e8 08 1d 00 00       	call   39d0 <printf>
}
    1cc8:	83 c4 10             	add    $0x10,%esp
    1ccb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cce:	5b                   	pop    %ebx
    1ccf:	5e                   	pop    %esi
    1cd0:	5f                   	pop    %edi
    1cd1:	5d                   	pop    %ebp
    1cd2:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1cd3:	83 ec 08             	sub    $0x8,%esp
    1cd6:	68 3e 44 00 00       	push   $0x443e
    1cdb:	6a 01                	push   $0x1
    1cdd:	e8 ee 1c 00 00       	call   39d0 <printf>
      exit();
    1ce2:	e8 9b 1b 00 00       	call   3882 <exit>
      printf(1, "bigdir unlink failed");
    1ce7:	83 ec 08             	sub    $0x8,%esp
    1cea:	68 52 44 00 00       	push   $0x4452
    1cef:	6a 01                	push   $0x1
    1cf1:	e8 da 1c 00 00       	call   39d0 <printf>
      exit();
    1cf6:	e8 87 1b 00 00       	call   3882 <exit>
    printf(1, "bigdir create failed\n");
    1cfb:	50                   	push   %eax
    1cfc:	50                   	push   %eax
    1cfd:	68 28 44 00 00       	push   $0x4428
    1d02:	6a 01                	push   $0x1
    1d04:	e8 c7 1c 00 00       	call   39d0 <printf>
    exit();
    1d09:	e8 74 1b 00 00       	call   3882 <exit>
    1d0e:	66 90                	xchg   %ax,%ax

00001d10 <subdir>:
{
    1d10:	55                   	push   %ebp
    1d11:	89 e5                	mov    %esp,%ebp
    1d13:	53                   	push   %ebx
    1d14:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d17:	68 72 44 00 00       	push   $0x4472
    1d1c:	6a 01                	push   $0x1
    1d1e:	e8 ad 1c 00 00       	call   39d0 <printf>
  unlink("ff");
    1d23:	c7 04 24 fb 44 00 00 	movl   $0x44fb,(%esp)
    1d2a:	e8 a3 1b 00 00       	call   38d2 <unlink>
  if(mkdir("dd") != 0){
    1d2f:	c7 04 24 98 45 00 00 	movl   $0x4598,(%esp)
    1d36:	e8 af 1b 00 00       	call   38ea <mkdir>
    1d3b:	83 c4 10             	add    $0x10,%esp
    1d3e:	85 c0                	test   %eax,%eax
    1d40:	0f 85 b3 05 00 00    	jne    22f9 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d46:	83 ec 08             	sub    $0x8,%esp
    1d49:	68 02 02 00 00       	push   $0x202
    1d4e:	68 d1 44 00 00       	push   $0x44d1
    1d53:	e8 6a 1b 00 00       	call   38c2 <open>
  if(fd < 0){
    1d58:	83 c4 10             	add    $0x10,%esp
    1d5b:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d5d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d5f:	0f 88 81 05 00 00    	js     22e6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d65:	83 ec 04             	sub    $0x4,%esp
    1d68:	6a 02                	push   $0x2
    1d6a:	68 fb 44 00 00       	push   $0x44fb
    1d6f:	50                   	push   %eax
    1d70:	e8 2d 1b 00 00       	call   38a2 <write>
  close(fd);
    1d75:	89 1c 24             	mov    %ebx,(%esp)
    1d78:	e8 2d 1b 00 00       	call   38aa <close>
  if(unlink("dd") >= 0){
    1d7d:	c7 04 24 98 45 00 00 	movl   $0x4598,(%esp)
    1d84:	e8 49 1b 00 00       	call   38d2 <unlink>
    1d89:	83 c4 10             	add    $0x10,%esp
    1d8c:	85 c0                	test   %eax,%eax
    1d8e:	0f 89 3f 05 00 00    	jns    22d3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1d94:	83 ec 0c             	sub    $0xc,%esp
    1d97:	68 ac 44 00 00       	push   $0x44ac
    1d9c:	e8 49 1b 00 00       	call   38ea <mkdir>
    1da1:	83 c4 10             	add    $0x10,%esp
    1da4:	85 c0                	test   %eax,%eax
    1da6:	0f 85 14 05 00 00    	jne    22c0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dac:	83 ec 08             	sub    $0x8,%esp
    1daf:	68 02 02 00 00       	push   $0x202
    1db4:	68 ce 44 00 00       	push   $0x44ce
    1db9:	e8 04 1b 00 00       	call   38c2 <open>
  if(fd < 0){
    1dbe:	83 c4 10             	add    $0x10,%esp
    1dc1:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dc3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1dc5:	0f 88 24 04 00 00    	js     21ef <subdir+0x4df>
  write(fd, "FF", 2);
    1dcb:	83 ec 04             	sub    $0x4,%esp
    1dce:	6a 02                	push   $0x2
    1dd0:	68 ef 44 00 00       	push   $0x44ef
    1dd5:	50                   	push   %eax
    1dd6:	e8 c7 1a 00 00       	call   38a2 <write>
  close(fd);
    1ddb:	89 1c 24             	mov    %ebx,(%esp)
    1dde:	e8 c7 1a 00 00       	call   38aa <close>
  fd = open("dd/dd/../ff", 0);
    1de3:	58                   	pop    %eax
    1de4:	5a                   	pop    %edx
    1de5:	6a 00                	push   $0x0
    1de7:	68 f2 44 00 00       	push   $0x44f2
    1dec:	e8 d1 1a 00 00       	call   38c2 <open>
  if(fd < 0){
    1df1:	83 c4 10             	add    $0x10,%esp
    1df4:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    1df6:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1df8:	0f 88 de 03 00 00    	js     21dc <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1dfe:	83 ec 04             	sub    $0x4,%esp
    1e01:	68 00 20 00 00       	push   $0x2000
    1e06:	68 80 85 00 00       	push   $0x8580
    1e0b:	50                   	push   %eax
    1e0c:	e8 89 1a 00 00       	call   389a <read>
  if(cc != 2 || buf[0] != 'f'){
    1e11:	83 c4 10             	add    $0x10,%esp
    1e14:	83 f8 02             	cmp    $0x2,%eax
    1e17:	0f 85 3a 03 00 00    	jne    2157 <subdir+0x447>
    1e1d:	80 3d 80 85 00 00 66 	cmpb   $0x66,0x8580
    1e24:	0f 85 2d 03 00 00    	jne    2157 <subdir+0x447>
  close(fd);
    1e2a:	83 ec 0c             	sub    $0xc,%esp
    1e2d:	53                   	push   %ebx
    1e2e:	e8 77 1a 00 00       	call   38aa <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e33:	5b                   	pop    %ebx
    1e34:	58                   	pop    %eax
    1e35:	68 32 45 00 00       	push   $0x4532
    1e3a:	68 ce 44 00 00       	push   $0x44ce
    1e3f:	e8 9e 1a 00 00       	call   38e2 <link>
    1e44:	83 c4 10             	add    $0x10,%esp
    1e47:	85 c0                	test   %eax,%eax
    1e49:	0f 85 c6 03 00 00    	jne    2215 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e4f:	83 ec 0c             	sub    $0xc,%esp
    1e52:	68 ce 44 00 00       	push   $0x44ce
    1e57:	e8 76 1a 00 00       	call   38d2 <unlink>
    1e5c:	83 c4 10             	add    $0x10,%esp
    1e5f:	85 c0                	test   %eax,%eax
    1e61:	0f 85 16 03 00 00    	jne    217d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e67:	83 ec 08             	sub    $0x8,%esp
    1e6a:	6a 00                	push   $0x0
    1e6c:	68 ce 44 00 00       	push   $0x44ce
    1e71:	e8 4c 1a 00 00       	call   38c2 <open>
    1e76:	83 c4 10             	add    $0x10,%esp
    1e79:	85 c0                	test   %eax,%eax
    1e7b:	0f 89 2c 04 00 00    	jns    22ad <subdir+0x59d>
  if(chdir("dd") != 0){
    1e81:	83 ec 0c             	sub    $0xc,%esp
    1e84:	68 98 45 00 00       	push   $0x4598
    1e89:	e8 64 1a 00 00       	call   38f2 <chdir>
    1e8e:	83 c4 10             	add    $0x10,%esp
    1e91:	85 c0                	test   %eax,%eax
    1e93:	0f 85 01 04 00 00    	jne    229a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1e99:	83 ec 0c             	sub    $0xc,%esp
    1e9c:	68 66 45 00 00       	push   $0x4566
    1ea1:	e8 4c 1a 00 00       	call   38f2 <chdir>
    1ea6:	83 c4 10             	add    $0x10,%esp
    1ea9:	85 c0                	test   %eax,%eax
    1eab:	0f 85 b9 02 00 00    	jne    216a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1eb1:	83 ec 0c             	sub    $0xc,%esp
    1eb4:	68 8c 45 00 00       	push   $0x458c
    1eb9:	e8 34 1a 00 00       	call   38f2 <chdir>
    1ebe:	83 c4 10             	add    $0x10,%esp
    1ec1:	85 c0                	test   %eax,%eax
    1ec3:	0f 85 a1 02 00 00    	jne    216a <subdir+0x45a>
  if(chdir("./..") != 0){
    1ec9:	83 ec 0c             	sub    $0xc,%esp
    1ecc:	68 9b 45 00 00       	push   $0x459b
    1ed1:	e8 1c 1a 00 00       	call   38f2 <chdir>
    1ed6:	83 c4 10             	add    $0x10,%esp
    1ed9:	85 c0                	test   %eax,%eax
    1edb:	0f 85 21 03 00 00    	jne    2202 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ee1:	83 ec 08             	sub    $0x8,%esp
    1ee4:	6a 00                	push   $0x0
    1ee6:	68 32 45 00 00       	push   $0x4532
    1eeb:	e8 d2 19 00 00       	call   38c2 <open>
  if(fd < 0){
    1ef0:	83 c4 10             	add    $0x10,%esp
    1ef3:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    1ef5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ef7:	0f 88 e0 04 00 00    	js     23dd <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1efd:	83 ec 04             	sub    $0x4,%esp
    1f00:	68 00 20 00 00       	push   $0x2000
    1f05:	68 80 85 00 00       	push   $0x8580
    1f0a:	50                   	push   %eax
    1f0b:	e8 8a 19 00 00       	call   389a <read>
    1f10:	83 c4 10             	add    $0x10,%esp
    1f13:	83 f8 02             	cmp    $0x2,%eax
    1f16:	0f 85 ae 04 00 00    	jne    23ca <subdir+0x6ba>
  close(fd);
    1f1c:	83 ec 0c             	sub    $0xc,%esp
    1f1f:	53                   	push   %ebx
    1f20:	e8 85 19 00 00       	call   38aa <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f25:	59                   	pop    %ecx
    1f26:	5b                   	pop    %ebx
    1f27:	6a 00                	push   $0x0
    1f29:	68 ce 44 00 00       	push   $0x44ce
    1f2e:	e8 8f 19 00 00       	call   38c2 <open>
    1f33:	83 c4 10             	add    $0x10,%esp
    1f36:	85 c0                	test   %eax,%eax
    1f38:	0f 89 65 02 00 00    	jns    21a3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f3e:	83 ec 08             	sub    $0x8,%esp
    1f41:	68 02 02 00 00       	push   $0x202
    1f46:	68 e6 45 00 00       	push   $0x45e6
    1f4b:	e8 72 19 00 00       	call   38c2 <open>
    1f50:	83 c4 10             	add    $0x10,%esp
    1f53:	85 c0                	test   %eax,%eax
    1f55:	0f 89 35 02 00 00    	jns    2190 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f5b:	83 ec 08             	sub    $0x8,%esp
    1f5e:	68 02 02 00 00       	push   $0x202
    1f63:	68 0b 46 00 00       	push   $0x460b
    1f68:	e8 55 19 00 00       	call   38c2 <open>
    1f6d:	83 c4 10             	add    $0x10,%esp
    1f70:	85 c0                	test   %eax,%eax
    1f72:	0f 89 0f 03 00 00    	jns    2287 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f78:	83 ec 08             	sub    $0x8,%esp
    1f7b:	68 00 02 00 00       	push   $0x200
    1f80:	68 98 45 00 00       	push   $0x4598
    1f85:	e8 38 19 00 00       	call   38c2 <open>
    1f8a:	83 c4 10             	add    $0x10,%esp
    1f8d:	85 c0                	test   %eax,%eax
    1f8f:	0f 89 df 02 00 00    	jns    2274 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1f95:	83 ec 08             	sub    $0x8,%esp
    1f98:	6a 02                	push   $0x2
    1f9a:	68 98 45 00 00       	push   $0x4598
    1f9f:	e8 1e 19 00 00       	call   38c2 <open>
    1fa4:	83 c4 10             	add    $0x10,%esp
    1fa7:	85 c0                	test   %eax,%eax
    1fa9:	0f 89 b2 02 00 00    	jns    2261 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1faf:	83 ec 08             	sub    $0x8,%esp
    1fb2:	6a 01                	push   $0x1
    1fb4:	68 98 45 00 00       	push   $0x4598
    1fb9:	e8 04 19 00 00       	call   38c2 <open>
    1fbe:	83 c4 10             	add    $0x10,%esp
    1fc1:	85 c0                	test   %eax,%eax
    1fc3:	0f 89 85 02 00 00    	jns    224e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fc9:	83 ec 08             	sub    $0x8,%esp
    1fcc:	68 7a 46 00 00       	push   $0x467a
    1fd1:	68 e6 45 00 00       	push   $0x45e6
    1fd6:	e8 07 19 00 00       	call   38e2 <link>
    1fdb:	83 c4 10             	add    $0x10,%esp
    1fde:	85 c0                	test   %eax,%eax
    1fe0:	0f 84 55 02 00 00    	je     223b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1fe6:	83 ec 08             	sub    $0x8,%esp
    1fe9:	68 7a 46 00 00       	push   $0x467a
    1fee:	68 0b 46 00 00       	push   $0x460b
    1ff3:	e8 ea 18 00 00       	call   38e2 <link>
    1ff8:	83 c4 10             	add    $0x10,%esp
    1ffb:	85 c0                	test   %eax,%eax
    1ffd:	0f 84 25 02 00 00    	je     2228 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2003:	83 ec 08             	sub    $0x8,%esp
    2006:	68 32 45 00 00       	push   $0x4532
    200b:	68 d1 44 00 00       	push   $0x44d1
    2010:	e8 cd 18 00 00       	call   38e2 <link>
    2015:	83 c4 10             	add    $0x10,%esp
    2018:	85 c0                	test   %eax,%eax
    201a:	0f 84 a9 01 00 00    	je     21c9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2020:	83 ec 0c             	sub    $0xc,%esp
    2023:	68 e6 45 00 00       	push   $0x45e6
    2028:	e8 bd 18 00 00       	call   38ea <mkdir>
    202d:	83 c4 10             	add    $0x10,%esp
    2030:	85 c0                	test   %eax,%eax
    2032:	0f 84 7e 01 00 00    	je     21b6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2038:	83 ec 0c             	sub    $0xc,%esp
    203b:	68 0b 46 00 00       	push   $0x460b
    2040:	e8 a5 18 00 00       	call   38ea <mkdir>
    2045:	83 c4 10             	add    $0x10,%esp
    2048:	85 c0                	test   %eax,%eax
    204a:	0f 84 67 03 00 00    	je     23b7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2050:	83 ec 0c             	sub    $0xc,%esp
    2053:	68 32 45 00 00       	push   $0x4532
    2058:	e8 8d 18 00 00       	call   38ea <mkdir>
    205d:	83 c4 10             	add    $0x10,%esp
    2060:	85 c0                	test   %eax,%eax
    2062:	0f 84 3c 03 00 00    	je     23a4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2068:	83 ec 0c             	sub    $0xc,%esp
    206b:	68 0b 46 00 00       	push   $0x460b
    2070:	e8 5d 18 00 00       	call   38d2 <unlink>
    2075:	83 c4 10             	add    $0x10,%esp
    2078:	85 c0                	test   %eax,%eax
    207a:	0f 84 11 03 00 00    	je     2391 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2080:	83 ec 0c             	sub    $0xc,%esp
    2083:	68 e6 45 00 00       	push   $0x45e6
    2088:	e8 45 18 00 00       	call   38d2 <unlink>
    208d:	83 c4 10             	add    $0x10,%esp
    2090:	85 c0                	test   %eax,%eax
    2092:	0f 84 e6 02 00 00    	je     237e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    2098:	83 ec 0c             	sub    $0xc,%esp
    209b:	68 d1 44 00 00       	push   $0x44d1
    20a0:	e8 4d 18 00 00       	call   38f2 <chdir>
    20a5:	83 c4 10             	add    $0x10,%esp
    20a8:	85 c0                	test   %eax,%eax
    20aa:	0f 84 bb 02 00 00    	je     236b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20b0:	83 ec 0c             	sub    $0xc,%esp
    20b3:	68 7d 46 00 00       	push   $0x467d
    20b8:	e8 35 18 00 00       	call   38f2 <chdir>
    20bd:	83 c4 10             	add    $0x10,%esp
    20c0:	85 c0                	test   %eax,%eax
    20c2:	0f 84 90 02 00 00    	je     2358 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20c8:	83 ec 0c             	sub    $0xc,%esp
    20cb:	68 32 45 00 00       	push   $0x4532
    20d0:	e8 fd 17 00 00       	call   38d2 <unlink>
    20d5:	83 c4 10             	add    $0x10,%esp
    20d8:	85 c0                	test   %eax,%eax
    20da:	0f 85 9d 00 00 00    	jne    217d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20e0:	83 ec 0c             	sub    $0xc,%esp
    20e3:	68 d1 44 00 00       	push   $0x44d1
    20e8:	e8 e5 17 00 00       	call   38d2 <unlink>
    20ed:	83 c4 10             	add    $0x10,%esp
    20f0:	85 c0                	test   %eax,%eax
    20f2:	0f 85 4d 02 00 00    	jne    2345 <subdir+0x635>
  if(unlink("dd") == 0){
    20f8:	83 ec 0c             	sub    $0xc,%esp
    20fb:	68 98 45 00 00       	push   $0x4598
    2100:	e8 cd 17 00 00       	call   38d2 <unlink>
    2105:	83 c4 10             	add    $0x10,%esp
    2108:	85 c0                	test   %eax,%eax
    210a:	0f 84 22 02 00 00    	je     2332 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2110:	83 ec 0c             	sub    $0xc,%esp
    2113:	68 ad 44 00 00       	push   $0x44ad
    2118:	e8 b5 17 00 00       	call   38d2 <unlink>
    211d:	83 c4 10             	add    $0x10,%esp
    2120:	85 c0                	test   %eax,%eax
    2122:	0f 88 f7 01 00 00    	js     231f <subdir+0x60f>
  if(unlink("dd") < 0){
    2128:	83 ec 0c             	sub    $0xc,%esp
    212b:	68 98 45 00 00       	push   $0x4598
    2130:	e8 9d 17 00 00       	call   38d2 <unlink>
    2135:	83 c4 10             	add    $0x10,%esp
    2138:	85 c0                	test   %eax,%eax
    213a:	0f 88 cc 01 00 00    	js     230c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2140:	83 ec 08             	sub    $0x8,%esp
    2143:	68 7a 47 00 00       	push   $0x477a
    2148:	6a 01                	push   $0x1
    214a:	e8 81 18 00 00       	call   39d0 <printf>
}
    214f:	83 c4 10             	add    $0x10,%esp
    2152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2155:	c9                   	leave  
    2156:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    2157:	50                   	push   %eax
    2158:	50                   	push   %eax
    2159:	68 17 45 00 00       	push   $0x4517
    215e:	6a 01                	push   $0x1
    2160:	e8 6b 18 00 00       	call   39d0 <printf>
    exit();
    2165:	e8 18 17 00 00       	call   3882 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    216a:	50                   	push   %eax
    216b:	50                   	push   %eax
    216c:	68 72 45 00 00       	push   $0x4572
    2171:	6a 01                	push   $0x1
    2173:	e8 58 18 00 00       	call   39d0 <printf>
    exit();
    2178:	e8 05 17 00 00       	call   3882 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    217d:	52                   	push   %edx
    217e:	52                   	push   %edx
    217f:	68 3d 45 00 00       	push   $0x453d
    2184:	6a 01                	push   $0x1
    2186:	e8 45 18 00 00       	call   39d0 <printf>
    exit();
    218b:	e8 f2 16 00 00       	call   3882 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2190:	50                   	push   %eax
    2191:	50                   	push   %eax
    2192:	68 ef 45 00 00       	push   $0x45ef
    2197:	6a 01                	push   $0x1
    2199:	e8 32 18 00 00       	call   39d0 <printf>
    exit();
    219e:	e8 df 16 00 00       	call   3882 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    21a3:	52                   	push   %edx
    21a4:	52                   	push   %edx
    21a5:	68 d4 4f 00 00       	push   $0x4fd4
    21aa:	6a 01                	push   $0x1
    21ac:	e8 1f 18 00 00       	call   39d0 <printf>
    exit();
    21b1:	e8 cc 16 00 00       	call   3882 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21b6:	52                   	push   %edx
    21b7:	52                   	push   %edx
    21b8:	68 83 46 00 00       	push   $0x4683
    21bd:	6a 01                	push   $0x1
    21bf:	e8 0c 18 00 00       	call   39d0 <printf>
    exit();
    21c4:	e8 b9 16 00 00       	call   3882 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21c9:	51                   	push   %ecx
    21ca:	51                   	push   %ecx
    21cb:	68 44 50 00 00       	push   $0x5044
    21d0:	6a 01                	push   $0x1
    21d2:	e8 f9 17 00 00       	call   39d0 <printf>
    exit();
    21d7:	e8 a6 16 00 00       	call   3882 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21dc:	50                   	push   %eax
    21dd:	50                   	push   %eax
    21de:	68 fe 44 00 00       	push   $0x44fe
    21e3:	6a 01                	push   $0x1
    21e5:	e8 e6 17 00 00       	call   39d0 <printf>
    exit();
    21ea:	e8 93 16 00 00       	call   3882 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21ef:	51                   	push   %ecx
    21f0:	51                   	push   %ecx
    21f1:	68 d7 44 00 00       	push   $0x44d7
    21f6:	6a 01                	push   $0x1
    21f8:	e8 d3 17 00 00       	call   39d0 <printf>
    exit();
    21fd:	e8 80 16 00 00       	call   3882 <exit>
    printf(1, "chdir ./.. failed\n");
    2202:	50                   	push   %eax
    2203:	50                   	push   %eax
    2204:	68 a0 45 00 00       	push   $0x45a0
    2209:	6a 01                	push   $0x1
    220b:	e8 c0 17 00 00       	call   39d0 <printf>
    exit();
    2210:	e8 6d 16 00 00       	call   3882 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2215:	51                   	push   %ecx
    2216:	51                   	push   %ecx
    2217:	68 8c 4f 00 00       	push   $0x4f8c
    221c:	6a 01                	push   $0x1
    221e:	e8 ad 17 00 00       	call   39d0 <printf>
    exit();
    2223:	e8 5a 16 00 00       	call   3882 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2228:	53                   	push   %ebx
    2229:	53                   	push   %ebx
    222a:	68 20 50 00 00       	push   $0x5020
    222f:	6a 01                	push   $0x1
    2231:	e8 9a 17 00 00       	call   39d0 <printf>
    exit();
    2236:	e8 47 16 00 00       	call   3882 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    223b:	50                   	push   %eax
    223c:	50                   	push   %eax
    223d:	68 fc 4f 00 00       	push   $0x4ffc
    2242:	6a 01                	push   $0x1
    2244:	e8 87 17 00 00       	call   39d0 <printf>
    exit();
    2249:	e8 34 16 00 00       	call   3882 <exit>
    printf(1, "open dd wronly succeeded!\n");
    224e:	50                   	push   %eax
    224f:	50                   	push   %eax
    2250:	68 5f 46 00 00       	push   $0x465f
    2255:	6a 01                	push   $0x1
    2257:	e8 74 17 00 00       	call   39d0 <printf>
    exit();
    225c:	e8 21 16 00 00       	call   3882 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2261:	50                   	push   %eax
    2262:	50                   	push   %eax
    2263:	68 46 46 00 00       	push   $0x4646
    2268:	6a 01                	push   $0x1
    226a:	e8 61 17 00 00       	call   39d0 <printf>
    exit();
    226f:	e8 0e 16 00 00       	call   3882 <exit>
    printf(1, "create dd succeeded!\n");
    2274:	50                   	push   %eax
    2275:	50                   	push   %eax
    2276:	68 30 46 00 00       	push   $0x4630
    227b:	6a 01                	push   $0x1
    227d:	e8 4e 17 00 00       	call   39d0 <printf>
    exit();
    2282:	e8 fb 15 00 00       	call   3882 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2287:	50                   	push   %eax
    2288:	50                   	push   %eax
    2289:	68 14 46 00 00       	push   $0x4614
    228e:	6a 01                	push   $0x1
    2290:	e8 3b 17 00 00       	call   39d0 <printf>
    exit();
    2295:	e8 e8 15 00 00       	call   3882 <exit>
    printf(1, "chdir dd failed\n");
    229a:	50                   	push   %eax
    229b:	50                   	push   %eax
    229c:	68 55 45 00 00       	push   $0x4555
    22a1:	6a 01                	push   $0x1
    22a3:	e8 28 17 00 00       	call   39d0 <printf>
    exit();
    22a8:	e8 d5 15 00 00       	call   3882 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    22ad:	50                   	push   %eax
    22ae:	50                   	push   %eax
    22af:	68 b0 4f 00 00       	push   $0x4fb0
    22b4:	6a 01                	push   $0x1
    22b6:	e8 15 17 00 00       	call   39d0 <printf>
    exit();
    22bb:	e8 c2 15 00 00       	call   3882 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22c0:	53                   	push   %ebx
    22c1:	53                   	push   %ebx
    22c2:	68 b3 44 00 00       	push   $0x44b3
    22c7:	6a 01                	push   $0x1
    22c9:	e8 02 17 00 00       	call   39d0 <printf>
    exit();
    22ce:	e8 af 15 00 00       	call   3882 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22d3:	50                   	push   %eax
    22d4:	50                   	push   %eax
    22d5:	68 64 4f 00 00       	push   $0x4f64
    22da:	6a 01                	push   $0x1
    22dc:	e8 ef 16 00 00       	call   39d0 <printf>
    exit();
    22e1:	e8 9c 15 00 00       	call   3882 <exit>
    printf(1, "create dd/ff failed\n");
    22e6:	50                   	push   %eax
    22e7:	50                   	push   %eax
    22e8:	68 97 44 00 00       	push   $0x4497
    22ed:	6a 01                	push   $0x1
    22ef:	e8 dc 16 00 00       	call   39d0 <printf>
    exit();
    22f4:	e8 89 15 00 00       	call   3882 <exit>
    printf(1, "subdir mkdir dd failed\n");
    22f9:	50                   	push   %eax
    22fa:	50                   	push   %eax
    22fb:	68 7f 44 00 00       	push   $0x447f
    2300:	6a 01                	push   $0x1
    2302:	e8 c9 16 00 00       	call   39d0 <printf>
    exit();
    2307:	e8 76 15 00 00       	call   3882 <exit>
    printf(1, "unlink dd failed\n");
    230c:	50                   	push   %eax
    230d:	50                   	push   %eax
    230e:	68 68 47 00 00       	push   $0x4768
    2313:	6a 01                	push   $0x1
    2315:	e8 b6 16 00 00       	call   39d0 <printf>
    exit();
    231a:	e8 63 15 00 00       	call   3882 <exit>
    printf(1, "unlink dd/dd failed\n");
    231f:	52                   	push   %edx
    2320:	52                   	push   %edx
    2321:	68 53 47 00 00       	push   $0x4753
    2326:	6a 01                	push   $0x1
    2328:	e8 a3 16 00 00       	call   39d0 <printf>
    exit();
    232d:	e8 50 15 00 00       	call   3882 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2332:	51                   	push   %ecx
    2333:	51                   	push   %ecx
    2334:	68 68 50 00 00       	push   $0x5068
    2339:	6a 01                	push   $0x1
    233b:	e8 90 16 00 00       	call   39d0 <printf>
    exit();
    2340:	e8 3d 15 00 00       	call   3882 <exit>
    printf(1, "unlink dd/ff failed\n");
    2345:	53                   	push   %ebx
    2346:	53                   	push   %ebx
    2347:	68 3e 47 00 00       	push   $0x473e
    234c:	6a 01                	push   $0x1
    234e:	e8 7d 16 00 00       	call   39d0 <printf>
    exit();
    2353:	e8 2a 15 00 00       	call   3882 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2358:	50                   	push   %eax
    2359:	50                   	push   %eax
    235a:	68 26 47 00 00       	push   $0x4726
    235f:	6a 01                	push   $0x1
    2361:	e8 6a 16 00 00       	call   39d0 <printf>
    exit();
    2366:	e8 17 15 00 00       	call   3882 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    236b:	50                   	push   %eax
    236c:	50                   	push   %eax
    236d:	68 0e 47 00 00       	push   $0x470e
    2372:	6a 01                	push   $0x1
    2374:	e8 57 16 00 00       	call   39d0 <printf>
    exit();
    2379:	e8 04 15 00 00       	call   3882 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    237e:	50                   	push   %eax
    237f:	50                   	push   %eax
    2380:	68 f2 46 00 00       	push   $0x46f2
    2385:	6a 01                	push   $0x1
    2387:	e8 44 16 00 00       	call   39d0 <printf>
    exit();
    238c:	e8 f1 14 00 00       	call   3882 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2391:	50                   	push   %eax
    2392:	50                   	push   %eax
    2393:	68 d6 46 00 00       	push   $0x46d6
    2398:	6a 01                	push   $0x1
    239a:	e8 31 16 00 00       	call   39d0 <printf>
    exit();
    239f:	e8 de 14 00 00       	call   3882 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    23a4:	50                   	push   %eax
    23a5:	50                   	push   %eax
    23a6:	68 b9 46 00 00       	push   $0x46b9
    23ab:	6a 01                	push   $0x1
    23ad:	e8 1e 16 00 00       	call   39d0 <printf>
    exit();
    23b2:	e8 cb 14 00 00       	call   3882 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23b7:	50                   	push   %eax
    23b8:	50                   	push   %eax
    23b9:	68 9e 46 00 00       	push   $0x469e
    23be:	6a 01                	push   $0x1
    23c0:	e8 0b 16 00 00       	call   39d0 <printf>
    exit();
    23c5:	e8 b8 14 00 00       	call   3882 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23ca:	50                   	push   %eax
    23cb:	50                   	push   %eax
    23cc:	68 cb 45 00 00       	push   $0x45cb
    23d1:	6a 01                	push   $0x1
    23d3:	e8 f8 15 00 00       	call   39d0 <printf>
    exit();
    23d8:	e8 a5 14 00 00       	call   3882 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23dd:	50                   	push   %eax
    23de:	50                   	push   %eax
    23df:	68 b3 45 00 00       	push   $0x45b3
    23e4:	6a 01                	push   $0x1
    23e6:	e8 e5 15 00 00       	call   39d0 <printf>
    exit();
    23eb:	e8 92 14 00 00       	call   3882 <exit>

000023f0 <bigwrite>:
{
    23f0:	55                   	push   %ebp
    23f1:	89 e5                	mov    %esp,%ebp
    23f3:	56                   	push   %esi
    23f4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    23f5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    23fa:	83 ec 08             	sub    $0x8,%esp
    23fd:	68 85 47 00 00       	push   $0x4785
    2402:	6a 01                	push   $0x1
    2404:	e8 c7 15 00 00       	call   39d0 <printf>
  unlink("bigwrite");
    2409:	c7 04 24 94 47 00 00 	movl   $0x4794,(%esp)
    2410:	e8 bd 14 00 00       	call   38d2 <unlink>
    2415:	83 c4 10             	add    $0x10,%esp
    2418:	90                   	nop
    2419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2420:	83 ec 08             	sub    $0x8,%esp
    2423:	68 02 02 00 00       	push   $0x202
    2428:	68 94 47 00 00       	push   $0x4794
    242d:	e8 90 14 00 00       	call   38c2 <open>
    if(fd < 0){
    2432:	83 c4 10             	add    $0x10,%esp
    2435:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2437:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2439:	78 7e                	js     24b9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    243b:	83 ec 04             	sub    $0x4,%esp
    243e:	53                   	push   %ebx
    243f:	68 80 85 00 00       	push   $0x8580
    2444:	50                   	push   %eax
    2445:	e8 58 14 00 00       	call   38a2 <write>
      if(cc != sz){
    244a:	83 c4 10             	add    $0x10,%esp
    244d:	39 d8                	cmp    %ebx,%eax
    244f:	75 55                	jne    24a6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    2451:	83 ec 04             	sub    $0x4,%esp
    2454:	53                   	push   %ebx
    2455:	68 80 85 00 00       	push   $0x8580
    245a:	56                   	push   %esi
    245b:	e8 42 14 00 00       	call   38a2 <write>
      if(cc != sz){
    2460:	83 c4 10             	add    $0x10,%esp
    2463:	39 d8                	cmp    %ebx,%eax
    2465:	75 3f                	jne    24a6 <bigwrite+0xb6>
    close(fd);
    2467:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    246a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2470:	56                   	push   %esi
    2471:	e8 34 14 00 00       	call   38aa <close>
    unlink("bigwrite");
    2476:	c7 04 24 94 47 00 00 	movl   $0x4794,(%esp)
    247d:	e8 50 14 00 00       	call   38d2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2482:	83 c4 10             	add    $0x10,%esp
    2485:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    248b:	75 93                	jne    2420 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    248d:	83 ec 08             	sub    $0x8,%esp
    2490:	68 c7 47 00 00       	push   $0x47c7
    2495:	6a 01                	push   $0x1
    2497:	e8 34 15 00 00       	call   39d0 <printf>
}
    249c:	83 c4 10             	add    $0x10,%esp
    249f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24a2:	5b                   	pop    %ebx
    24a3:	5e                   	pop    %esi
    24a4:	5d                   	pop    %ebp
    24a5:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    24a6:	50                   	push   %eax
    24a7:	53                   	push   %ebx
    24a8:	68 b5 47 00 00       	push   $0x47b5
    24ad:	6a 01                	push   $0x1
    24af:	e8 1c 15 00 00       	call   39d0 <printf>
        exit();
    24b4:	e8 c9 13 00 00       	call   3882 <exit>
      printf(1, "cannot create bigwrite\n");
    24b9:	83 ec 08             	sub    $0x8,%esp
    24bc:	68 9d 47 00 00       	push   $0x479d
    24c1:	6a 01                	push   $0x1
    24c3:	e8 08 15 00 00       	call   39d0 <printf>
      exit();
    24c8:	e8 b5 13 00 00       	call   3882 <exit>
    24cd:	8d 76 00             	lea    0x0(%esi),%esi

000024d0 <bigfile>:
{
    24d0:	55                   	push   %ebp
    24d1:	89 e5                	mov    %esp,%ebp
    24d3:	57                   	push   %edi
    24d4:	56                   	push   %esi
    24d5:	53                   	push   %ebx
    24d6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24d9:	68 d4 47 00 00       	push   $0x47d4
    24de:	6a 01                	push   $0x1
    24e0:	e8 eb 14 00 00       	call   39d0 <printf>
  unlink("bigfile");
    24e5:	c7 04 24 f0 47 00 00 	movl   $0x47f0,(%esp)
    24ec:	e8 e1 13 00 00       	call   38d2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    24f1:	58                   	pop    %eax
    24f2:	5a                   	pop    %edx
    24f3:	68 02 02 00 00       	push   $0x202
    24f8:	68 f0 47 00 00       	push   $0x47f0
    24fd:	e8 c0 13 00 00       	call   38c2 <open>
  if(fd < 0){
    2502:	83 c4 10             	add    $0x10,%esp
    2505:	85 c0                	test   %eax,%eax
    2507:	0f 88 5e 01 00 00    	js     266b <bigfile+0x19b>
    250d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    250f:	31 db                	xor    %ebx,%ebx
    2511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2518:	83 ec 04             	sub    $0x4,%esp
    251b:	68 58 02 00 00       	push   $0x258
    2520:	53                   	push   %ebx
    2521:	68 80 85 00 00       	push   $0x8580
    2526:	e8 b5 11 00 00       	call   36e0 <memset>
    if(write(fd, buf, 600) != 600){
    252b:	83 c4 0c             	add    $0xc,%esp
    252e:	68 58 02 00 00       	push   $0x258
    2533:	68 80 85 00 00       	push   $0x8580
    2538:	56                   	push   %esi
    2539:	e8 64 13 00 00       	call   38a2 <write>
    253e:	83 c4 10             	add    $0x10,%esp
    2541:	3d 58 02 00 00       	cmp    $0x258,%eax
    2546:	0f 85 f8 00 00 00    	jne    2644 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    254c:	83 c3 01             	add    $0x1,%ebx
    254f:	83 fb 14             	cmp    $0x14,%ebx
    2552:	75 c4                	jne    2518 <bigfile+0x48>
  close(fd);
    2554:	83 ec 0c             	sub    $0xc,%esp
    2557:	56                   	push   %esi
    2558:	e8 4d 13 00 00       	call   38aa <close>
  fd = open("bigfile", 0);
    255d:	5e                   	pop    %esi
    255e:	5f                   	pop    %edi
    255f:	6a 00                	push   $0x0
    2561:	68 f0 47 00 00       	push   $0x47f0
    2566:	e8 57 13 00 00       	call   38c2 <open>
  if(fd < 0){
    256b:	83 c4 10             	add    $0x10,%esp
    256e:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2570:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2572:	0f 88 e0 00 00 00    	js     2658 <bigfile+0x188>
  total = 0;
    2578:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    257a:	31 ff                	xor    %edi,%edi
    257c:	eb 30                	jmp    25ae <bigfile+0xde>
    257e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2580:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2585:	0f 85 91 00 00 00    	jne    261c <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    258b:	0f be 05 80 85 00 00 	movsbl 0x8580,%eax
    2592:	89 fa                	mov    %edi,%edx
    2594:	d1 fa                	sar    %edx
    2596:	39 d0                	cmp    %edx,%eax
    2598:	75 6e                	jne    2608 <bigfile+0x138>
    259a:	0f be 15 ab 86 00 00 	movsbl 0x86ab,%edx
    25a1:	39 d0                	cmp    %edx,%eax
    25a3:	75 63                	jne    2608 <bigfile+0x138>
    total += cc;
    25a5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25ab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25ae:	83 ec 04             	sub    $0x4,%esp
    25b1:	68 2c 01 00 00       	push   $0x12c
    25b6:	68 80 85 00 00       	push   $0x8580
    25bb:	56                   	push   %esi
    25bc:	e8 d9 12 00 00       	call   389a <read>
    if(cc < 0){
    25c1:	83 c4 10             	add    $0x10,%esp
    25c4:	85 c0                	test   %eax,%eax
    25c6:	78 68                	js     2630 <bigfile+0x160>
    if(cc == 0)
    25c8:	75 b6                	jne    2580 <bigfile+0xb0>
  close(fd);
    25ca:	83 ec 0c             	sub    $0xc,%esp
    25cd:	56                   	push   %esi
    25ce:	e8 d7 12 00 00       	call   38aa <close>
  if(total != 20*600){
    25d3:	83 c4 10             	add    $0x10,%esp
    25d6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25dc:	0f 85 9c 00 00 00    	jne    267e <bigfile+0x1ae>
  unlink("bigfile");
    25e2:	83 ec 0c             	sub    $0xc,%esp
    25e5:	68 f0 47 00 00       	push   $0x47f0
    25ea:	e8 e3 12 00 00       	call   38d2 <unlink>
  printf(1, "bigfile test ok\n");
    25ef:	58                   	pop    %eax
    25f0:	5a                   	pop    %edx
    25f1:	68 7f 48 00 00       	push   $0x487f
    25f6:	6a 01                	push   $0x1
    25f8:	e8 d3 13 00 00       	call   39d0 <printf>
}
    25fd:	83 c4 10             	add    $0x10,%esp
    2600:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2603:	5b                   	pop    %ebx
    2604:	5e                   	pop    %esi
    2605:	5f                   	pop    %edi
    2606:	5d                   	pop    %ebp
    2607:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2608:	83 ec 08             	sub    $0x8,%esp
    260b:	68 4c 48 00 00       	push   $0x484c
    2610:	6a 01                	push   $0x1
    2612:	e8 b9 13 00 00       	call   39d0 <printf>
      exit();
    2617:	e8 66 12 00 00       	call   3882 <exit>
      printf(1, "short read bigfile\n");
    261c:	83 ec 08             	sub    $0x8,%esp
    261f:	68 38 48 00 00       	push   $0x4838
    2624:	6a 01                	push   $0x1
    2626:	e8 a5 13 00 00       	call   39d0 <printf>
      exit();
    262b:	e8 52 12 00 00       	call   3882 <exit>
      printf(1, "read bigfile failed\n");
    2630:	83 ec 08             	sub    $0x8,%esp
    2633:	68 23 48 00 00       	push   $0x4823
    2638:	6a 01                	push   $0x1
    263a:	e8 91 13 00 00       	call   39d0 <printf>
      exit();
    263f:	e8 3e 12 00 00       	call   3882 <exit>
      printf(1, "write bigfile failed\n");
    2644:	83 ec 08             	sub    $0x8,%esp
    2647:	68 f8 47 00 00       	push   $0x47f8
    264c:	6a 01                	push   $0x1
    264e:	e8 7d 13 00 00       	call   39d0 <printf>
      exit();
    2653:	e8 2a 12 00 00       	call   3882 <exit>
    printf(1, "cannot open bigfile\n");
    2658:	53                   	push   %ebx
    2659:	53                   	push   %ebx
    265a:	68 0e 48 00 00       	push   $0x480e
    265f:	6a 01                	push   $0x1
    2661:	e8 6a 13 00 00       	call   39d0 <printf>
    exit();
    2666:	e8 17 12 00 00       	call   3882 <exit>
    printf(1, "cannot create bigfile");
    266b:	50                   	push   %eax
    266c:	50                   	push   %eax
    266d:	68 e2 47 00 00       	push   $0x47e2
    2672:	6a 01                	push   $0x1
    2674:	e8 57 13 00 00       	call   39d0 <printf>
    exit();
    2679:	e8 04 12 00 00       	call   3882 <exit>
    printf(1, "read bigfile wrong total\n");
    267e:	51                   	push   %ecx
    267f:	51                   	push   %ecx
    2680:	68 65 48 00 00       	push   $0x4865
    2685:	6a 01                	push   $0x1
    2687:	e8 44 13 00 00       	call   39d0 <printf>
    exit();
    268c:	e8 f1 11 00 00       	call   3882 <exit>
    2691:	eb 0d                	jmp    26a0 <fourteen>
    2693:	90                   	nop
    2694:	90                   	nop
    2695:	90                   	nop
    2696:	90                   	nop
    2697:	90                   	nop
    2698:	90                   	nop
    2699:	90                   	nop
    269a:	90                   	nop
    269b:	90                   	nop
    269c:	90                   	nop
    269d:	90                   	nop
    269e:	90                   	nop
    269f:	90                   	nop

000026a0 <fourteen>:
{
    26a0:	55                   	push   %ebp
    26a1:	89 e5                	mov    %esp,%ebp
    26a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26a6:	68 90 48 00 00       	push   $0x4890
    26ab:	6a 01                	push   $0x1
    26ad:	e8 1e 13 00 00       	call   39d0 <printf>
  if(mkdir("12345678901234") != 0){
    26b2:	c7 04 24 cb 48 00 00 	movl   $0x48cb,(%esp)
    26b9:	e8 2c 12 00 00       	call   38ea <mkdir>
    26be:	83 c4 10             	add    $0x10,%esp
    26c1:	85 c0                	test   %eax,%eax
    26c3:	0f 85 97 00 00 00    	jne    2760 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26c9:	83 ec 0c             	sub    $0xc,%esp
    26cc:	68 88 50 00 00       	push   $0x5088
    26d1:	e8 14 12 00 00       	call   38ea <mkdir>
    26d6:	83 c4 10             	add    $0x10,%esp
    26d9:	85 c0                	test   %eax,%eax
    26db:	0f 85 de 00 00 00    	jne    27bf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    26e1:	83 ec 08             	sub    $0x8,%esp
    26e4:	68 00 02 00 00       	push   $0x200
    26e9:	68 d8 50 00 00       	push   $0x50d8
    26ee:	e8 cf 11 00 00       	call   38c2 <open>
  if(fd < 0){
    26f3:	83 c4 10             	add    $0x10,%esp
    26f6:	85 c0                	test   %eax,%eax
    26f8:	0f 88 ae 00 00 00    	js     27ac <fourteen+0x10c>
  close(fd);
    26fe:	83 ec 0c             	sub    $0xc,%esp
    2701:	50                   	push   %eax
    2702:	e8 a3 11 00 00       	call   38aa <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2707:	58                   	pop    %eax
    2708:	5a                   	pop    %edx
    2709:	6a 00                	push   $0x0
    270b:	68 48 51 00 00       	push   $0x5148
    2710:	e8 ad 11 00 00       	call   38c2 <open>
  if(fd < 0){
    2715:	83 c4 10             	add    $0x10,%esp
    2718:	85 c0                	test   %eax,%eax
    271a:	78 7d                	js     2799 <fourteen+0xf9>
  close(fd);
    271c:	83 ec 0c             	sub    $0xc,%esp
    271f:	50                   	push   %eax
    2720:	e8 85 11 00 00       	call   38aa <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2725:	c7 04 24 bc 48 00 00 	movl   $0x48bc,(%esp)
    272c:	e8 b9 11 00 00       	call   38ea <mkdir>
    2731:	83 c4 10             	add    $0x10,%esp
    2734:	85 c0                	test   %eax,%eax
    2736:	74 4e                	je     2786 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2738:	83 ec 0c             	sub    $0xc,%esp
    273b:	68 e4 51 00 00       	push   $0x51e4
    2740:	e8 a5 11 00 00       	call   38ea <mkdir>
    2745:	83 c4 10             	add    $0x10,%esp
    2748:	85 c0                	test   %eax,%eax
    274a:	74 27                	je     2773 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    274c:	83 ec 08             	sub    $0x8,%esp
    274f:	68 da 48 00 00       	push   $0x48da
    2754:	6a 01                	push   $0x1
    2756:	e8 75 12 00 00       	call   39d0 <printf>
}
    275b:	83 c4 10             	add    $0x10,%esp
    275e:	c9                   	leave  
    275f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2760:	50                   	push   %eax
    2761:	50                   	push   %eax
    2762:	68 9f 48 00 00       	push   $0x489f
    2767:	6a 01                	push   $0x1
    2769:	e8 62 12 00 00       	call   39d0 <printf>
    exit();
    276e:	e8 0f 11 00 00       	call   3882 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2773:	50                   	push   %eax
    2774:	50                   	push   %eax
    2775:	68 04 52 00 00       	push   $0x5204
    277a:	6a 01                	push   $0x1
    277c:	e8 4f 12 00 00       	call   39d0 <printf>
    exit();
    2781:	e8 fc 10 00 00       	call   3882 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2786:	52                   	push   %edx
    2787:	52                   	push   %edx
    2788:	68 b4 51 00 00       	push   $0x51b4
    278d:	6a 01                	push   $0x1
    278f:	e8 3c 12 00 00       	call   39d0 <printf>
    exit();
    2794:	e8 e9 10 00 00       	call   3882 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2799:	51                   	push   %ecx
    279a:	51                   	push   %ecx
    279b:	68 78 51 00 00       	push   $0x5178
    27a0:	6a 01                	push   $0x1
    27a2:	e8 29 12 00 00       	call   39d0 <printf>
    exit();
    27a7:	e8 d6 10 00 00       	call   3882 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27ac:	51                   	push   %ecx
    27ad:	51                   	push   %ecx
    27ae:	68 08 51 00 00       	push   $0x5108
    27b3:	6a 01                	push   $0x1
    27b5:	e8 16 12 00 00       	call   39d0 <printf>
    exit();
    27ba:	e8 c3 10 00 00       	call   3882 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27bf:	50                   	push   %eax
    27c0:	50                   	push   %eax
    27c1:	68 a8 50 00 00       	push   $0x50a8
    27c6:	6a 01                	push   $0x1
    27c8:	e8 03 12 00 00       	call   39d0 <printf>
    exit();
    27cd:	e8 b0 10 00 00       	call   3882 <exit>
    27d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    27d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000027e0 <rmdot>:
{
    27e0:	55                   	push   %ebp
    27e1:	89 e5                	mov    %esp,%ebp
    27e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    27e6:	68 e7 48 00 00       	push   $0x48e7
    27eb:	6a 01                	push   $0x1
    27ed:	e8 de 11 00 00       	call   39d0 <printf>
  if(mkdir("dots") != 0){
    27f2:	c7 04 24 f3 48 00 00 	movl   $0x48f3,(%esp)
    27f9:	e8 ec 10 00 00       	call   38ea <mkdir>
    27fe:	83 c4 10             	add    $0x10,%esp
    2801:	85 c0                	test   %eax,%eax
    2803:	0f 85 b0 00 00 00    	jne    28b9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2809:	83 ec 0c             	sub    $0xc,%esp
    280c:	68 f3 48 00 00       	push   $0x48f3
    2811:	e8 dc 10 00 00       	call   38f2 <chdir>
    2816:	83 c4 10             	add    $0x10,%esp
    2819:	85 c0                	test   %eax,%eax
    281b:	0f 85 1d 01 00 00    	jne    293e <rmdot+0x15e>
  if(unlink(".") == 0){
    2821:	83 ec 0c             	sub    $0xc,%esp
    2824:	68 9e 45 00 00       	push   $0x459e
    2829:	e8 a4 10 00 00       	call   38d2 <unlink>
    282e:	83 c4 10             	add    $0x10,%esp
    2831:	85 c0                	test   %eax,%eax
    2833:	0f 84 f2 00 00 00    	je     292b <rmdot+0x14b>
  if(unlink("..") == 0){
    2839:	83 ec 0c             	sub    $0xc,%esp
    283c:	68 9d 45 00 00       	push   $0x459d
    2841:	e8 8c 10 00 00       	call   38d2 <unlink>
    2846:	83 c4 10             	add    $0x10,%esp
    2849:	85 c0                	test   %eax,%eax
    284b:	0f 84 c7 00 00 00    	je     2918 <rmdot+0x138>
  if(chdir("/") != 0){
    2851:	83 ec 0c             	sub    $0xc,%esp
    2854:	68 71 3d 00 00       	push   $0x3d71
    2859:	e8 94 10 00 00       	call   38f2 <chdir>
    285e:	83 c4 10             	add    $0x10,%esp
    2861:	85 c0                	test   %eax,%eax
    2863:	0f 85 9c 00 00 00    	jne    2905 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2869:	83 ec 0c             	sub    $0xc,%esp
    286c:	68 3b 49 00 00       	push   $0x493b
    2871:	e8 5c 10 00 00       	call   38d2 <unlink>
    2876:	83 c4 10             	add    $0x10,%esp
    2879:	85 c0                	test   %eax,%eax
    287b:	74 75                	je     28f2 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    287d:	83 ec 0c             	sub    $0xc,%esp
    2880:	68 59 49 00 00       	push   $0x4959
    2885:	e8 48 10 00 00       	call   38d2 <unlink>
    288a:	83 c4 10             	add    $0x10,%esp
    288d:	85 c0                	test   %eax,%eax
    288f:	74 4e                	je     28df <rmdot+0xff>
  if(unlink("dots") != 0){
    2891:	83 ec 0c             	sub    $0xc,%esp
    2894:	68 f3 48 00 00       	push   $0x48f3
    2899:	e8 34 10 00 00       	call   38d2 <unlink>
    289e:	83 c4 10             	add    $0x10,%esp
    28a1:	85 c0                	test   %eax,%eax
    28a3:	75 27                	jne    28cc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28a5:	83 ec 08             	sub    $0x8,%esp
    28a8:	68 8e 49 00 00       	push   $0x498e
    28ad:	6a 01                	push   $0x1
    28af:	e8 1c 11 00 00       	call   39d0 <printf>
}
    28b4:	83 c4 10             	add    $0x10,%esp
    28b7:	c9                   	leave  
    28b8:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    28b9:	50                   	push   %eax
    28ba:	50                   	push   %eax
    28bb:	68 f8 48 00 00       	push   $0x48f8
    28c0:	6a 01                	push   $0x1
    28c2:	e8 09 11 00 00       	call   39d0 <printf>
    exit();
    28c7:	e8 b6 0f 00 00       	call   3882 <exit>
    printf(1, "unlink dots failed!\n");
    28cc:	50                   	push   %eax
    28cd:	50                   	push   %eax
    28ce:	68 79 49 00 00       	push   $0x4979
    28d3:	6a 01                	push   $0x1
    28d5:	e8 f6 10 00 00       	call   39d0 <printf>
    exit();
    28da:	e8 a3 0f 00 00       	call   3882 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28df:	52                   	push   %edx
    28e0:	52                   	push   %edx
    28e1:	68 61 49 00 00       	push   $0x4961
    28e6:	6a 01                	push   $0x1
    28e8:	e8 e3 10 00 00       	call   39d0 <printf>
    exit();
    28ed:	e8 90 0f 00 00       	call   3882 <exit>
    printf(1, "unlink dots/. worked!\n");
    28f2:	51                   	push   %ecx
    28f3:	51                   	push   %ecx
    28f4:	68 42 49 00 00       	push   $0x4942
    28f9:	6a 01                	push   $0x1
    28fb:	e8 d0 10 00 00       	call   39d0 <printf>
    exit();
    2900:	e8 7d 0f 00 00       	call   3882 <exit>
    printf(1, "chdir / failed\n");
    2905:	50                   	push   %eax
    2906:	50                   	push   %eax
    2907:	68 73 3d 00 00       	push   $0x3d73
    290c:	6a 01                	push   $0x1
    290e:	e8 bd 10 00 00       	call   39d0 <printf>
    exit();
    2913:	e8 6a 0f 00 00       	call   3882 <exit>
    printf(1, "rm .. worked!\n");
    2918:	50                   	push   %eax
    2919:	50                   	push   %eax
    291a:	68 2c 49 00 00       	push   $0x492c
    291f:	6a 01                	push   $0x1
    2921:	e8 aa 10 00 00       	call   39d0 <printf>
    exit();
    2926:	e8 57 0f 00 00       	call   3882 <exit>
    printf(1, "rm . worked!\n");
    292b:	50                   	push   %eax
    292c:	50                   	push   %eax
    292d:	68 1e 49 00 00       	push   $0x491e
    2932:	6a 01                	push   $0x1
    2934:	e8 97 10 00 00       	call   39d0 <printf>
    exit();
    2939:	e8 44 0f 00 00       	call   3882 <exit>
    printf(1, "chdir dots failed\n");
    293e:	50                   	push   %eax
    293f:	50                   	push   %eax
    2940:	68 0b 49 00 00       	push   $0x490b
    2945:	6a 01                	push   $0x1
    2947:	e8 84 10 00 00       	call   39d0 <printf>
    exit();
    294c:	e8 31 0f 00 00       	call   3882 <exit>
    2951:	eb 0d                	jmp    2960 <dirfile>
    2953:	90                   	nop
    2954:	90                   	nop
    2955:	90                   	nop
    2956:	90                   	nop
    2957:	90                   	nop
    2958:	90                   	nop
    2959:	90                   	nop
    295a:	90                   	nop
    295b:	90                   	nop
    295c:	90                   	nop
    295d:	90                   	nop
    295e:	90                   	nop
    295f:	90                   	nop

00002960 <dirfile>:
{
    2960:	55                   	push   %ebp
    2961:	89 e5                	mov    %esp,%ebp
    2963:	53                   	push   %ebx
    2964:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2967:	68 98 49 00 00       	push   $0x4998
    296c:	6a 01                	push   $0x1
    296e:	e8 5d 10 00 00       	call   39d0 <printf>
  fd = open("dirfile", O_CREATE);
    2973:	59                   	pop    %ecx
    2974:	5b                   	pop    %ebx
    2975:	68 00 02 00 00       	push   $0x200
    297a:	68 a5 49 00 00       	push   $0x49a5
    297f:	e8 3e 0f 00 00       	call   38c2 <open>
  if(fd < 0){
    2984:	83 c4 10             	add    $0x10,%esp
    2987:	85 c0                	test   %eax,%eax
    2989:	0f 88 43 01 00 00    	js     2ad2 <dirfile+0x172>
  close(fd);
    298f:	83 ec 0c             	sub    $0xc,%esp
    2992:	50                   	push   %eax
    2993:	e8 12 0f 00 00       	call   38aa <close>
  if(chdir("dirfile") == 0){
    2998:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    299f:	e8 4e 0f 00 00       	call   38f2 <chdir>
    29a4:	83 c4 10             	add    $0x10,%esp
    29a7:	85 c0                	test   %eax,%eax
    29a9:	0f 84 10 01 00 00    	je     2abf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29af:	83 ec 08             	sub    $0x8,%esp
    29b2:	6a 00                	push   $0x0
    29b4:	68 de 49 00 00       	push   $0x49de
    29b9:	e8 04 0f 00 00       	call   38c2 <open>
  if(fd >= 0){
    29be:	83 c4 10             	add    $0x10,%esp
    29c1:	85 c0                	test   %eax,%eax
    29c3:	0f 89 e3 00 00 00    	jns    2aac <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29c9:	83 ec 08             	sub    $0x8,%esp
    29cc:	68 00 02 00 00       	push   $0x200
    29d1:	68 de 49 00 00       	push   $0x49de
    29d6:	e8 e7 0e 00 00       	call   38c2 <open>
  if(fd >= 0){
    29db:	83 c4 10             	add    $0x10,%esp
    29de:	85 c0                	test   %eax,%eax
    29e0:	0f 89 c6 00 00 00    	jns    2aac <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    29e6:	83 ec 0c             	sub    $0xc,%esp
    29e9:	68 de 49 00 00       	push   $0x49de
    29ee:	e8 f7 0e 00 00       	call   38ea <mkdir>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	85 c0                	test   %eax,%eax
    29f8:	0f 84 46 01 00 00    	je     2b44 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    29fe:	83 ec 0c             	sub    $0xc,%esp
    2a01:	68 de 49 00 00       	push   $0x49de
    2a06:	e8 c7 0e 00 00       	call   38d2 <unlink>
    2a0b:	83 c4 10             	add    $0x10,%esp
    2a0e:	85 c0                	test   %eax,%eax
    2a10:	0f 84 1b 01 00 00    	je     2b31 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a16:	83 ec 08             	sub    $0x8,%esp
    2a19:	68 de 49 00 00       	push   $0x49de
    2a1e:	68 42 4a 00 00       	push   $0x4a42
    2a23:	e8 ba 0e 00 00       	call   38e2 <link>
    2a28:	83 c4 10             	add    $0x10,%esp
    2a2b:	85 c0                	test   %eax,%eax
    2a2d:	0f 84 eb 00 00 00    	je     2b1e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a33:	83 ec 0c             	sub    $0xc,%esp
    2a36:	68 a5 49 00 00       	push   $0x49a5
    2a3b:	e8 92 0e 00 00       	call   38d2 <unlink>
    2a40:	83 c4 10             	add    $0x10,%esp
    2a43:	85 c0                	test   %eax,%eax
    2a45:	0f 85 c0 00 00 00    	jne    2b0b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a4b:	83 ec 08             	sub    $0x8,%esp
    2a4e:	6a 02                	push   $0x2
    2a50:	68 9e 45 00 00       	push   $0x459e
    2a55:	e8 68 0e 00 00       	call   38c2 <open>
  if(fd >= 0){
    2a5a:	83 c4 10             	add    $0x10,%esp
    2a5d:	85 c0                	test   %eax,%eax
    2a5f:	0f 89 93 00 00 00    	jns    2af8 <dirfile+0x198>
  fd = open(".", 0);
    2a65:	83 ec 08             	sub    $0x8,%esp
    2a68:	6a 00                	push   $0x0
    2a6a:	68 9e 45 00 00       	push   $0x459e
    2a6f:	e8 4e 0e 00 00       	call   38c2 <open>
  if(write(fd, "x", 1) > 0){
    2a74:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    2a77:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a79:	6a 01                	push   $0x1
    2a7b:	68 81 46 00 00       	push   $0x4681
    2a80:	50                   	push   %eax
    2a81:	e8 1c 0e 00 00       	call   38a2 <write>
    2a86:	83 c4 10             	add    $0x10,%esp
    2a89:	85 c0                	test   %eax,%eax
    2a8b:	7f 58                	jg     2ae5 <dirfile+0x185>
  close(fd);
    2a8d:	83 ec 0c             	sub    $0xc,%esp
    2a90:	53                   	push   %ebx
    2a91:	e8 14 0e 00 00       	call   38aa <close>
  printf(1, "dir vs file OK\n");
    2a96:	58                   	pop    %eax
    2a97:	5a                   	pop    %edx
    2a98:	68 75 4a 00 00       	push   $0x4a75
    2a9d:	6a 01                	push   $0x1
    2a9f:	e8 2c 0f 00 00       	call   39d0 <printf>
}
    2aa4:	83 c4 10             	add    $0x10,%esp
    2aa7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2aaa:	c9                   	leave  
    2aab:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2aac:	50                   	push   %eax
    2aad:	50                   	push   %eax
    2aae:	68 e9 49 00 00       	push   $0x49e9
    2ab3:	6a 01                	push   $0x1
    2ab5:	e8 16 0f 00 00       	call   39d0 <printf>
    exit();
    2aba:	e8 c3 0d 00 00       	call   3882 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2abf:	50                   	push   %eax
    2ac0:	50                   	push   %eax
    2ac1:	68 c4 49 00 00       	push   $0x49c4
    2ac6:	6a 01                	push   $0x1
    2ac8:	e8 03 0f 00 00       	call   39d0 <printf>
    exit();
    2acd:	e8 b0 0d 00 00       	call   3882 <exit>
    printf(1, "create dirfile failed\n");
    2ad2:	52                   	push   %edx
    2ad3:	52                   	push   %edx
    2ad4:	68 ad 49 00 00       	push   $0x49ad
    2ad9:	6a 01                	push   $0x1
    2adb:	e8 f0 0e 00 00       	call   39d0 <printf>
    exit();
    2ae0:	e8 9d 0d 00 00       	call   3882 <exit>
    printf(1, "write . succeeded!\n");
    2ae5:	51                   	push   %ecx
    2ae6:	51                   	push   %ecx
    2ae7:	68 61 4a 00 00       	push   $0x4a61
    2aec:	6a 01                	push   $0x1
    2aee:	e8 dd 0e 00 00       	call   39d0 <printf>
    exit();
    2af3:	e8 8a 0d 00 00       	call   3882 <exit>
    printf(1, "open . for writing succeeded!\n");
    2af8:	53                   	push   %ebx
    2af9:	53                   	push   %ebx
    2afa:	68 58 52 00 00       	push   $0x5258
    2aff:	6a 01                	push   $0x1
    2b01:	e8 ca 0e 00 00       	call   39d0 <printf>
    exit();
    2b06:	e8 77 0d 00 00       	call   3882 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b0b:	50                   	push   %eax
    2b0c:	50                   	push   %eax
    2b0d:	68 49 4a 00 00       	push   $0x4a49
    2b12:	6a 01                	push   $0x1
    2b14:	e8 b7 0e 00 00       	call   39d0 <printf>
    exit();
    2b19:	e8 64 0d 00 00       	call   3882 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b1e:	50                   	push   %eax
    2b1f:	50                   	push   %eax
    2b20:	68 38 52 00 00       	push   $0x5238
    2b25:	6a 01                	push   $0x1
    2b27:	e8 a4 0e 00 00       	call   39d0 <printf>
    exit();
    2b2c:	e8 51 0d 00 00       	call   3882 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b31:	50                   	push   %eax
    2b32:	50                   	push   %eax
    2b33:	68 24 4a 00 00       	push   $0x4a24
    2b38:	6a 01                	push   $0x1
    2b3a:	e8 91 0e 00 00       	call   39d0 <printf>
    exit();
    2b3f:	e8 3e 0d 00 00       	call   3882 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b44:	50                   	push   %eax
    2b45:	50                   	push   %eax
    2b46:	68 07 4a 00 00       	push   $0x4a07
    2b4b:	6a 01                	push   $0x1
    2b4d:	e8 7e 0e 00 00       	call   39d0 <printf>
    exit();
    2b52:	e8 2b 0d 00 00       	call   3882 <exit>
    2b57:	89 f6                	mov    %esi,%esi
    2b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002b60 <iref>:
{
    2b60:	55                   	push   %ebp
    2b61:	89 e5                	mov    %esp,%ebp
    2b63:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b64:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b69:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b6c:	68 85 4a 00 00       	push   $0x4a85
    2b71:	6a 01                	push   $0x1
    2b73:	e8 58 0e 00 00       	call   39d0 <printf>
    2b78:	83 c4 10             	add    $0x10,%esp
    2b7b:	90                   	nop
    2b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2b80:	83 ec 0c             	sub    $0xc,%esp
    2b83:	68 96 4a 00 00       	push   $0x4a96
    2b88:	e8 5d 0d 00 00       	call   38ea <mkdir>
    2b8d:	83 c4 10             	add    $0x10,%esp
    2b90:	85 c0                	test   %eax,%eax
    2b92:	0f 85 bb 00 00 00    	jne    2c53 <iref+0xf3>
    if(chdir("irefd") != 0){
    2b98:	83 ec 0c             	sub    $0xc,%esp
    2b9b:	68 96 4a 00 00       	push   $0x4a96
    2ba0:	e8 4d 0d 00 00       	call   38f2 <chdir>
    2ba5:	83 c4 10             	add    $0x10,%esp
    2ba8:	85 c0                	test   %eax,%eax
    2baa:	0f 85 b7 00 00 00    	jne    2c67 <iref+0x107>
    mkdir("");
    2bb0:	83 ec 0c             	sub    $0xc,%esp
    2bb3:	68 4b 41 00 00       	push   $0x414b
    2bb8:	e8 2d 0d 00 00       	call   38ea <mkdir>
    link("README", "");
    2bbd:	59                   	pop    %ecx
    2bbe:	58                   	pop    %eax
    2bbf:	68 4b 41 00 00       	push   $0x414b
    2bc4:	68 42 4a 00 00       	push   $0x4a42
    2bc9:	e8 14 0d 00 00       	call   38e2 <link>
    fd = open("", O_CREATE);
    2bce:	58                   	pop    %eax
    2bcf:	5a                   	pop    %edx
    2bd0:	68 00 02 00 00       	push   $0x200
    2bd5:	68 4b 41 00 00       	push   $0x414b
    2bda:	e8 e3 0c 00 00       	call   38c2 <open>
    if(fd >= 0)
    2bdf:	83 c4 10             	add    $0x10,%esp
    2be2:	85 c0                	test   %eax,%eax
    2be4:	78 0c                	js     2bf2 <iref+0x92>
      close(fd);
    2be6:	83 ec 0c             	sub    $0xc,%esp
    2be9:	50                   	push   %eax
    2bea:	e8 bb 0c 00 00       	call   38aa <close>
    2bef:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2bf2:	83 ec 08             	sub    $0x8,%esp
    2bf5:	68 00 02 00 00       	push   $0x200
    2bfa:	68 80 46 00 00       	push   $0x4680
    2bff:	e8 be 0c 00 00       	call   38c2 <open>
    if(fd >= 0)
    2c04:	83 c4 10             	add    $0x10,%esp
    2c07:	85 c0                	test   %eax,%eax
    2c09:	78 0c                	js     2c17 <iref+0xb7>
      close(fd);
    2c0b:	83 ec 0c             	sub    $0xc,%esp
    2c0e:	50                   	push   %eax
    2c0f:	e8 96 0c 00 00       	call   38aa <close>
    2c14:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c17:	83 ec 0c             	sub    $0xc,%esp
    2c1a:	68 80 46 00 00       	push   $0x4680
    2c1f:	e8 ae 0c 00 00       	call   38d2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	83 eb 01             	sub    $0x1,%ebx
    2c2a:	0f 85 50 ff ff ff    	jne    2b80 <iref+0x20>
  chdir("/");
    2c30:	83 ec 0c             	sub    $0xc,%esp
    2c33:	68 71 3d 00 00       	push   $0x3d71
    2c38:	e8 b5 0c 00 00       	call   38f2 <chdir>
  printf(1, "empty file name OK\n");
    2c3d:	58                   	pop    %eax
    2c3e:	5a                   	pop    %edx
    2c3f:	68 c4 4a 00 00       	push   $0x4ac4
    2c44:	6a 01                	push   $0x1
    2c46:	e8 85 0d 00 00       	call   39d0 <printf>
}
    2c4b:	83 c4 10             	add    $0x10,%esp
    2c4e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c51:	c9                   	leave  
    2c52:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    2c53:	83 ec 08             	sub    $0x8,%esp
    2c56:	68 9c 4a 00 00       	push   $0x4a9c
    2c5b:	6a 01                	push   $0x1
    2c5d:	e8 6e 0d 00 00       	call   39d0 <printf>
      exit();
    2c62:	e8 1b 0c 00 00       	call   3882 <exit>
      printf(1, "chdir irefd failed\n");
    2c67:	83 ec 08             	sub    $0x8,%esp
    2c6a:	68 b0 4a 00 00       	push   $0x4ab0
    2c6f:	6a 01                	push   $0x1
    2c71:	e8 5a 0d 00 00       	call   39d0 <printf>
      exit();
    2c76:	e8 07 0c 00 00       	call   3882 <exit>
    2c7b:	90                   	nop
    2c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002c80 <forktest>:
{
    2c80:	55                   	push   %ebp
    2c81:	89 e5                	mov    %esp,%ebp
    2c83:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2c84:	31 db                	xor    %ebx,%ebx
{
    2c86:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2c89:	68 d8 4a 00 00       	push   $0x4ad8
    2c8e:	6a 01                	push   $0x1
    2c90:	e8 3b 0d 00 00       	call   39d0 <printf>
    2c95:	83 c4 10             	add    $0x10,%esp
    2c98:	eb 13                	jmp    2cad <forktest+0x2d>
    2c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2ca0:	74 62                	je     2d04 <forktest+0x84>
  for(n=0; n<1000; n++){
    2ca2:	83 c3 01             	add    $0x1,%ebx
    2ca5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cab:	74 43                	je     2cf0 <forktest+0x70>
    pid = fork();
    2cad:	e8 c8 0b 00 00       	call   387a <fork>
    if(pid < 0)
    2cb2:	85 c0                	test   %eax,%eax
    2cb4:	79 ea                	jns    2ca0 <forktest+0x20>
  for(; n > 0; n--){
    2cb6:	85 db                	test   %ebx,%ebx
    2cb8:	74 14                	je     2cce <forktest+0x4e>
    2cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2cc0:	e8 c5 0b 00 00       	call   388a <wait>
    2cc5:	85 c0                	test   %eax,%eax
    2cc7:	78 40                	js     2d09 <forktest+0x89>
  for(; n > 0; n--){
    2cc9:	83 eb 01             	sub    $0x1,%ebx
    2ccc:	75 f2                	jne    2cc0 <forktest+0x40>
  if(wait() != -1){
    2cce:	e8 b7 0b 00 00       	call   388a <wait>
    2cd3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cd6:	75 45                	jne    2d1d <forktest+0x9d>
  printf(1, "fork test OK\n");
    2cd8:	83 ec 08             	sub    $0x8,%esp
    2cdb:	68 0a 4b 00 00       	push   $0x4b0a
    2ce0:	6a 01                	push   $0x1
    2ce2:	e8 e9 0c 00 00       	call   39d0 <printf>
}
    2ce7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cea:	c9                   	leave  
    2ceb:	c3                   	ret    
    2cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fork claimed to work 1000 times!\n");
    2cf0:	83 ec 08             	sub    $0x8,%esp
    2cf3:	68 78 52 00 00       	push   $0x5278
    2cf8:	6a 01                	push   $0x1
    2cfa:	e8 d1 0c 00 00       	call   39d0 <printf>
    exit();
    2cff:	e8 7e 0b 00 00       	call   3882 <exit>
      exit();
    2d04:	e8 79 0b 00 00       	call   3882 <exit>
      printf(1, "wait stopped early\n");
    2d09:	83 ec 08             	sub    $0x8,%esp
    2d0c:	68 e3 4a 00 00       	push   $0x4ae3
    2d11:	6a 01                	push   $0x1
    2d13:	e8 b8 0c 00 00       	call   39d0 <printf>
      exit();
    2d18:	e8 65 0b 00 00       	call   3882 <exit>
    printf(1, "wait got too many\n");
    2d1d:	50                   	push   %eax
    2d1e:	50                   	push   %eax
    2d1f:	68 f7 4a 00 00       	push   $0x4af7
    2d24:	6a 01                	push   $0x1
    2d26:	e8 a5 0c 00 00       	call   39d0 <printf>
    exit();
    2d2b:	e8 52 0b 00 00       	call   3882 <exit>

00002d30 <sbrktest>:
{
    2d30:	55                   	push   %ebp
    2d31:	89 e5                	mov    %esp,%ebp
    2d33:	57                   	push   %edi
    2d34:	56                   	push   %esi
    2d35:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    2d36:	31 ff                	xor    %edi,%edi
{
    2d38:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d3b:	68 18 4b 00 00       	push   $0x4b18
    2d40:	ff 35 a8 5d 00 00    	pushl  0x5da8
    2d46:	e8 85 0c 00 00       	call   39d0 <printf>
  oldbrk = sbrk(0);
    2d4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d52:	e8 b3 0b 00 00       	call   390a <sbrk>
  a = sbrk(0);
    2d57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    2d5e:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    2d60:	e8 a5 0b 00 00       	call   390a <sbrk>
    2d65:	83 c4 10             	add    $0x10,%esp
    2d68:	89 c6                	mov    %eax,%esi
    2d6a:	eb 06                	jmp    2d72 <sbrktest+0x42>
    2d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    a = b + 1;
    2d70:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    2d72:	83 ec 0c             	sub    $0xc,%esp
    2d75:	6a 01                	push   $0x1
    2d77:	e8 8e 0b 00 00       	call   390a <sbrk>
    if(b != a){
    2d7c:	83 c4 10             	add    $0x10,%esp
    2d7f:	39 f0                	cmp    %esi,%eax
    2d81:	0f 85 52 02 00 00    	jne    2fd9 <sbrktest+0x2a9>
  for(i = 0; i < 5000; i++){
    2d87:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2d8a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    2d8d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    2d90:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2d96:	75 d8                	jne    2d70 <sbrktest+0x40>
  pid = fork();
    2d98:	e8 dd 0a 00 00       	call   387a <fork>
  if(pid < 0){
    2d9d:	85 c0                	test   %eax,%eax
  pid = fork();
    2d9f:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2da1:	0f 88 5b 03 00 00    	js     3102 <sbrktest+0x3d2>
  c = sbrk(1);
    2da7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2daa:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    2dad:	6a 01                	push   $0x1
    2daf:	e8 56 0b 00 00       	call   390a <sbrk>
  c = sbrk(1);
    2db4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dbb:	e8 4a 0b 00 00       	call   390a <sbrk>
  if(c != a + 1){
    2dc0:	83 c4 10             	add    $0x10,%esp
    2dc3:	39 f0                	cmp    %esi,%eax
    2dc5:	0f 85 20 03 00 00    	jne    30eb <sbrktest+0x3bb>
  if(pid == 0)
    2dcb:	85 ff                	test   %edi,%edi
    2dcd:	0f 84 13 03 00 00    	je     30e6 <sbrktest+0x3b6>
  wait();
    2dd3:	e8 b2 0a 00 00       	call   388a <wait>
  a = sbrk(0);
    2dd8:	83 ec 0c             	sub    $0xc,%esp
    2ddb:	6a 00                	push   $0x0
    2ddd:	e8 28 0b 00 00       	call   390a <sbrk>
    2de2:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    2de4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2de9:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    2deb:	89 04 24             	mov    %eax,(%esp)
    2dee:	e8 17 0b 00 00       	call   390a <sbrk>
  if (p != a) {
    2df3:	83 c4 10             	add    $0x10,%esp
    2df6:	39 c6                	cmp    %eax,%esi
    2df8:	0f 85 d1 02 00 00    	jne    30cf <sbrktest+0x39f>
  a = sbrk(0);
    2dfe:	83 ec 0c             	sub    $0xc,%esp
    2e01:	6a 00                	push   $0x0
    2e03:	e8 02 0b 00 00       	call   390a <sbrk>
  c = sbrk(-4096);
    2e08:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e0f:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    2e11:	e8 f4 0a 00 00       	call   390a <sbrk>
  if(c == (char*)0xffffffff){
    2e16:	83 c4 10             	add    $0x10,%esp
    2e19:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e1c:	0f 84 96 02 00 00    	je     30b8 <sbrktest+0x388>
  c = sbrk(0);
    2e22:	83 ec 0c             	sub    $0xc,%esp
    2e25:	6a 00                	push   $0x0
    2e27:	e8 de 0a 00 00       	call   390a <sbrk>
  if(c != a - 4096){
    2e2c:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    2e32:	83 c4 10             	add    $0x10,%esp
    2e35:	39 d0                	cmp    %edx,%eax
    2e37:	0f 85 64 02 00 00    	jne    30a1 <sbrktest+0x371>
  a = sbrk(0);
    2e3d:	83 ec 0c             	sub    $0xc,%esp
    2e40:	6a 00                	push   $0x0
    2e42:	e8 c3 0a 00 00       	call   390a <sbrk>
    2e47:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    2e49:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2e50:	e8 b5 0a 00 00       	call   390a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e55:	83 c4 10             	add    $0x10,%esp
    2e58:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    2e5a:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e5c:	0f 85 28 02 00 00    	jne    308a <sbrktest+0x35a>
    2e62:	83 ec 0c             	sub    $0xc,%esp
    2e65:	6a 00                	push   $0x0
    2e67:	e8 9e 0a 00 00       	call   390a <sbrk>
    2e6c:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    2e72:	83 c4 10             	add    $0x10,%esp
    2e75:	39 d0                	cmp    %edx,%eax
    2e77:	0f 85 0d 02 00 00    	jne    308a <sbrktest+0x35a>
  a = sbrk(0);
    2e7d:	83 ec 0c             	sub    $0xc,%esp
    2e80:	6a 00                	push   $0x0
    2e82:	e8 83 0a 00 00       	call   390a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2e87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2e8e:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    2e90:	e8 75 0a 00 00       	call   390a <sbrk>
    2e95:	89 d9                	mov    %ebx,%ecx
    2e97:	29 c1                	sub    %eax,%ecx
    2e99:	89 0c 24             	mov    %ecx,(%esp)
    2e9c:	e8 69 0a 00 00       	call   390a <sbrk>
  if(c != a){
    2ea1:	83 c4 10             	add    $0x10,%esp
    2ea4:	39 c6                	cmp    %eax,%esi
    2ea6:	0f 85 c7 01 00 00    	jne    3073 <sbrktest+0x343>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2eac:	be 00 00 00 80       	mov    $0x80000000,%esi
    ppid = getpid();
    2eb1:	e8 4c 0a 00 00       	call   3902 <getpid>
    2eb6:	89 c7                	mov    %eax,%edi
    pid = fork();
    2eb8:	e8 bd 09 00 00       	call   387a <fork>
    if(pid < 0){
    2ebd:	85 c0                	test   %eax,%eax
    2ebf:	0f 88 97 01 00 00    	js     305c <sbrktest+0x32c>
    if(pid == 0){
    2ec5:	0f 84 6f 01 00 00    	je     303a <sbrktest+0x30a>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ecb:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait();
    2ed1:	e8 b4 09 00 00       	call   388a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ed6:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    2edc:	75 d3                	jne    2eb1 <sbrktest+0x181>
  if(pipe(fds) != 0){
    2ede:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2ee1:	83 ec 0c             	sub    $0xc,%esp
    2ee4:	50                   	push   %eax
    2ee5:	e8 a8 09 00 00       	call   3892 <pipe>
    2eea:	83 c4 10             	add    $0x10,%esp
    2eed:	85 c0                	test   %eax,%eax
    2eef:	0f 85 32 01 00 00    	jne    3027 <sbrktest+0x2f7>
    2ef5:	8d 7d c0             	lea    -0x40(%ebp),%edi
    2ef8:	89 fe                	mov    %edi,%esi
    2efa:	eb 23                	jmp    2f1f <sbrktest+0x1ef>
    if(pids[i] != -1)
    2efc:	83 f8 ff             	cmp    $0xffffffff,%eax
    2eff:	74 14                	je     2f15 <sbrktest+0x1e5>
      read(fds[0], &scratch, 1);
    2f01:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f04:	83 ec 04             	sub    $0x4,%esp
    2f07:	6a 01                	push   $0x1
    2f09:	50                   	push   %eax
    2f0a:	ff 75 b8             	pushl  -0x48(%ebp)
    2f0d:	e8 88 09 00 00       	call   389a <read>
    2f12:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f15:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f18:	83 c6 04             	add    $0x4,%esi
    2f1b:	39 c6                	cmp    %eax,%esi
    2f1d:	74 53                	je     2f72 <sbrktest+0x242>
    if((pids[i] = fork()) == 0){
    2f1f:	e8 56 09 00 00       	call   387a <fork>
    2f24:	85 c0                	test   %eax,%eax
    2f26:	89 06                	mov    %eax,(%esi)
    2f28:	75 d2                	jne    2efc <sbrktest+0x1cc>
      sbrk(BIG - (uint)sbrk(0));
    2f2a:	83 ec 0c             	sub    $0xc,%esp
    2f2d:	6a 00                	push   $0x0
    2f2f:	e8 d6 09 00 00       	call   390a <sbrk>
    2f34:	ba 00 00 40 06       	mov    $0x6400000,%edx
    2f39:	29 c2                	sub    %eax,%edx
    2f3b:	89 14 24             	mov    %edx,(%esp)
    2f3e:	e8 c7 09 00 00       	call   390a <sbrk>
      write(fds[1], "x", 1);
    2f43:	83 c4 0c             	add    $0xc,%esp
    2f46:	6a 01                	push   $0x1
    2f48:	68 81 46 00 00       	push   $0x4681
    2f4d:	ff 75 bc             	pushl  -0x44(%ebp)
    2f50:	e8 4d 09 00 00       	call   38a2 <write>
    2f55:	83 c4 10             	add    $0x10,%esp
    2f58:	90                   	nop
    2f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    2f60:	83 ec 0c             	sub    $0xc,%esp
    2f63:	68 e8 03 00 00       	push   $0x3e8
    2f68:	e8 a5 09 00 00       	call   3912 <sleep>
    2f6d:	83 c4 10             	add    $0x10,%esp
    2f70:	eb ee                	jmp    2f60 <sbrktest+0x230>
  c = sbrk(4096);
    2f72:	83 ec 0c             	sub    $0xc,%esp
    2f75:	68 00 10 00 00       	push   $0x1000
    2f7a:	e8 8b 09 00 00       	call   390a <sbrk>
    2f7f:	83 c4 10             	add    $0x10,%esp
    2f82:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    if(pids[i] == -1)
    2f85:	8b 07                	mov    (%edi),%eax
    2f87:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f8a:	74 11                	je     2f9d <sbrktest+0x26d>
    kill(pids[i]);
    2f8c:	83 ec 0c             	sub    $0xc,%esp
    2f8f:	50                   	push   %eax
    2f90:	e8 1d 09 00 00       	call   38b2 <kill>
    wait();
    2f95:	e8 f0 08 00 00       	call   388a <wait>
    2f9a:	83 c4 10             	add    $0x10,%esp
    2f9d:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2fa0:	39 fe                	cmp    %edi,%esi
    2fa2:	75 e1                	jne    2f85 <sbrktest+0x255>
  if(c == (char*)0xffffffff){
    2fa4:	83 7d a4 ff          	cmpl   $0xffffffff,-0x5c(%ebp)
    2fa8:	74 66                	je     3010 <sbrktest+0x2e0>
  if(sbrk(0) > oldbrk)
    2faa:	83 ec 0c             	sub    $0xc,%esp
    2fad:	6a 00                	push   $0x0
    2faf:	e8 56 09 00 00       	call   390a <sbrk>
    2fb4:	83 c4 10             	add    $0x10,%esp
    2fb7:	39 d8                	cmp    %ebx,%eax
    2fb9:	77 3c                	ja     2ff7 <sbrktest+0x2c7>
  printf(stdout, "sbrk test OK\n");
    2fbb:	83 ec 08             	sub    $0x8,%esp
    2fbe:	68 c0 4b 00 00       	push   $0x4bc0
    2fc3:	ff 35 a8 5d 00 00    	pushl  0x5da8
    2fc9:	e8 02 0a 00 00       	call   39d0 <printf>
}
    2fce:	83 c4 10             	add    $0x10,%esp
    2fd1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fd4:	5b                   	pop    %ebx
    2fd5:	5e                   	pop    %esi
    2fd6:	5f                   	pop    %edi
    2fd7:	5d                   	pop    %ebp
    2fd8:	c3                   	ret    
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    2fd9:	83 ec 0c             	sub    $0xc,%esp
    2fdc:	50                   	push   %eax
    2fdd:	56                   	push   %esi
    2fde:	57                   	push   %edi
    2fdf:	68 23 4b 00 00       	push   $0x4b23
    2fe4:	ff 35 a8 5d 00 00    	pushl  0x5da8
    2fea:	e8 e1 09 00 00       	call   39d0 <printf>
      exit();
    2fef:	83 c4 20             	add    $0x20,%esp
    2ff2:	e8 8b 08 00 00       	call   3882 <exit>
    sbrk(-(sbrk(0) - oldbrk));
    2ff7:	83 ec 0c             	sub    $0xc,%esp
    2ffa:	6a 00                	push   $0x0
    2ffc:	e8 09 09 00 00       	call   390a <sbrk>
    3001:	29 c3                	sub    %eax,%ebx
    3003:	89 1c 24             	mov    %ebx,(%esp)
    3006:	e8 ff 08 00 00       	call   390a <sbrk>
    300b:	83 c4 10             	add    $0x10,%esp
    300e:	eb ab                	jmp    2fbb <sbrktest+0x28b>
    printf(stdout, "failed sbrk leaked memory\n");
    3010:	50                   	push   %eax
    3011:	50                   	push   %eax
    3012:	68 a5 4b 00 00       	push   $0x4ba5
    3017:	ff 35 a8 5d 00 00    	pushl  0x5da8
    301d:	e8 ae 09 00 00       	call   39d0 <printf>
    exit();
    3022:	e8 5b 08 00 00       	call   3882 <exit>
    printf(1, "pipe() failed\n");
    3027:	52                   	push   %edx
    3028:	52                   	push   %edx
    3029:	68 61 40 00 00       	push   $0x4061
    302e:	6a 01                	push   $0x1
    3030:	e8 9b 09 00 00       	call   39d0 <printf>
    exit();
    3035:	e8 48 08 00 00       	call   3882 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    303a:	0f be 06             	movsbl (%esi),%eax
    303d:	50                   	push   %eax
    303e:	56                   	push   %esi
    303f:	68 8c 4b 00 00       	push   $0x4b8c
    3044:	ff 35 a8 5d 00 00    	pushl  0x5da8
    304a:	e8 81 09 00 00       	call   39d0 <printf>
      kill(ppid);
    304f:	89 3c 24             	mov    %edi,(%esp)
    3052:	e8 5b 08 00 00       	call   38b2 <kill>
      exit();
    3057:	e8 26 08 00 00       	call   3882 <exit>
      printf(stdout, "fork failed\n");
    305c:	51                   	push   %ecx
    305d:	51                   	push   %ecx
    305e:	68 69 4c 00 00       	push   $0x4c69
    3063:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3069:	e8 62 09 00 00       	call   39d0 <printf>
      exit();
    306e:	e8 0f 08 00 00       	call   3882 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3073:	50                   	push   %eax
    3074:	56                   	push   %esi
    3075:	68 3c 53 00 00       	push   $0x533c
    307a:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3080:	e8 4b 09 00 00       	call   39d0 <printf>
    exit();
    3085:	e8 f8 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    308a:	57                   	push   %edi
    308b:	56                   	push   %esi
    308c:	68 14 53 00 00       	push   $0x5314
    3091:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3097:	e8 34 09 00 00       	call   39d0 <printf>
    exit();
    309c:	e8 e1 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    30a1:	50                   	push   %eax
    30a2:	56                   	push   %esi
    30a3:	68 dc 52 00 00       	push   $0x52dc
    30a8:	ff 35 a8 5d 00 00    	pushl  0x5da8
    30ae:	e8 1d 09 00 00       	call   39d0 <printf>
    exit();
    30b3:	e8 ca 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    30b8:	53                   	push   %ebx
    30b9:	53                   	push   %ebx
    30ba:	68 71 4b 00 00       	push   $0x4b71
    30bf:	ff 35 a8 5d 00 00    	pushl  0x5da8
    30c5:	e8 06 09 00 00       	call   39d0 <printf>
    exit();
    30ca:	e8 b3 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    30cf:	56                   	push   %esi
    30d0:	56                   	push   %esi
    30d1:	68 9c 52 00 00       	push   $0x529c
    30d6:	ff 35 a8 5d 00 00    	pushl  0x5da8
    30dc:	e8 ef 08 00 00       	call   39d0 <printf>
    exit();
    30e1:	e8 9c 07 00 00       	call   3882 <exit>
    exit();
    30e6:	e8 97 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    30eb:	57                   	push   %edi
    30ec:	57                   	push   %edi
    30ed:	68 55 4b 00 00       	push   $0x4b55
    30f2:	ff 35 a8 5d 00 00    	pushl  0x5da8
    30f8:	e8 d3 08 00 00       	call   39d0 <printf>
    exit();
    30fd:	e8 80 07 00 00       	call   3882 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3102:	50                   	push   %eax
    3103:	50                   	push   %eax
    3104:	68 3e 4b 00 00       	push   $0x4b3e
    3109:	ff 35 a8 5d 00 00    	pushl  0x5da8
    310f:	e8 bc 08 00 00       	call   39d0 <printf>
    exit();
    3114:	e8 69 07 00 00       	call   3882 <exit>
    3119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003120 <validateint>:
{
    3120:	55                   	push   %ebp
    3121:	89 e5                	mov    %esp,%ebp
}
    3123:	5d                   	pop    %ebp
    3124:	c3                   	ret    
    3125:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003130 <validatetest>:
{
    3130:	55                   	push   %ebp
    3131:	89 e5                	mov    %esp,%ebp
    3133:	56                   	push   %esi
    3134:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3135:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    3137:	83 ec 08             	sub    $0x8,%esp
    313a:	68 ce 4b 00 00       	push   $0x4bce
    313f:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3145:	e8 86 08 00 00       	call   39d0 <printf>
    314a:	83 c4 10             	add    $0x10,%esp
    314d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    3150:	e8 25 07 00 00       	call   387a <fork>
    3155:	85 c0                	test   %eax,%eax
    3157:	89 c6                	mov    %eax,%esi
    3159:	74 63                	je     31be <validatetest+0x8e>
    sleep(0);
    315b:	83 ec 0c             	sub    $0xc,%esp
    315e:	6a 00                	push   $0x0
    3160:	e8 ad 07 00 00       	call   3912 <sleep>
    sleep(0);
    3165:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    316c:	e8 a1 07 00 00       	call   3912 <sleep>
    kill(pid);
    3171:	89 34 24             	mov    %esi,(%esp)
    3174:	e8 39 07 00 00       	call   38b2 <kill>
    wait();
    3179:	e8 0c 07 00 00       	call   388a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    317e:	58                   	pop    %eax
    317f:	5a                   	pop    %edx
    3180:	53                   	push   %ebx
    3181:	68 dd 4b 00 00       	push   $0x4bdd
    3186:	e8 57 07 00 00       	call   38e2 <link>
    318b:	83 c4 10             	add    $0x10,%esp
    318e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3191:	75 30                	jne    31c3 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    3193:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3199:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    319f:	75 af                	jne    3150 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    31a1:	83 ec 08             	sub    $0x8,%esp
    31a4:	68 01 4c 00 00       	push   $0x4c01
    31a9:	ff 35 a8 5d 00 00    	pushl  0x5da8
    31af:	e8 1c 08 00 00       	call   39d0 <printf>
}
    31b4:	83 c4 10             	add    $0x10,%esp
    31b7:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31ba:	5b                   	pop    %ebx
    31bb:	5e                   	pop    %esi
    31bc:	5d                   	pop    %ebp
    31bd:	c3                   	ret    
      exit();
    31be:	e8 bf 06 00 00       	call   3882 <exit>
      printf(stdout, "link should not succeed\n");
    31c3:	83 ec 08             	sub    $0x8,%esp
    31c6:	68 e8 4b 00 00       	push   $0x4be8
    31cb:	ff 35 a8 5d 00 00    	pushl  0x5da8
    31d1:	e8 fa 07 00 00       	call   39d0 <printf>
      exit();
    31d6:	e8 a7 06 00 00       	call   3882 <exit>
    31db:	90                   	nop
    31dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000031e0 <bsstest>:
{
    31e0:	55                   	push   %ebp
    31e1:	89 e5                	mov    %esp,%ebp
    31e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    31e6:	68 0e 4c 00 00       	push   $0x4c0e
    31eb:	ff 35 a8 5d 00 00    	pushl  0x5da8
    31f1:	e8 da 07 00 00       	call   39d0 <printf>
    if(uninit[i] != '\0'){
    31f6:	83 c4 10             	add    $0x10,%esp
    31f9:	80 3d 60 5e 00 00 00 	cmpb   $0x0,0x5e60
    3200:	75 39                	jne    323b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3202:	b8 01 00 00 00       	mov    $0x1,%eax
    3207:	89 f6                	mov    %esi,%esi
    3209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(uninit[i] != '\0'){
    3210:	80 b8 60 5e 00 00 00 	cmpb   $0x0,0x5e60(%eax)
    3217:	75 22                	jne    323b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3219:	83 c0 01             	add    $0x1,%eax
    321c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3221:	75 ed                	jne    3210 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3223:	83 ec 08             	sub    $0x8,%esp
    3226:	68 29 4c 00 00       	push   $0x4c29
    322b:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3231:	e8 9a 07 00 00       	call   39d0 <printf>
}
    3236:	83 c4 10             	add    $0x10,%esp
    3239:	c9                   	leave  
    323a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    323b:	83 ec 08             	sub    $0x8,%esp
    323e:	68 18 4c 00 00       	push   $0x4c18
    3243:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3249:	e8 82 07 00 00       	call   39d0 <printf>
      exit();
    324e:	e8 2f 06 00 00       	call   3882 <exit>
    3253:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003260 <bigargtest>:
{
    3260:	55                   	push   %ebp
    3261:	89 e5                	mov    %esp,%ebp
    3263:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    3266:	68 36 4c 00 00       	push   $0x4c36
    326b:	e8 62 06 00 00       	call   38d2 <unlink>
  pid = fork();
    3270:	e8 05 06 00 00       	call   387a <fork>
  if(pid == 0){
    3275:	83 c4 10             	add    $0x10,%esp
    3278:	85 c0                	test   %eax,%eax
    327a:	74 3f                	je     32bb <bigargtest+0x5b>
  } else if(pid < 0){
    327c:	0f 88 c2 00 00 00    	js     3344 <bigargtest+0xe4>
  wait();
    3282:	e8 03 06 00 00       	call   388a <wait>
  fd = open("bigarg-ok", 0);
    3287:	83 ec 08             	sub    $0x8,%esp
    328a:	6a 00                	push   $0x0
    328c:	68 36 4c 00 00       	push   $0x4c36
    3291:	e8 2c 06 00 00       	call   38c2 <open>
  if(fd < 0){
    3296:	83 c4 10             	add    $0x10,%esp
    3299:	85 c0                	test   %eax,%eax
    329b:	0f 88 8c 00 00 00    	js     332d <bigargtest+0xcd>
  close(fd);
    32a1:	83 ec 0c             	sub    $0xc,%esp
    32a4:	50                   	push   %eax
    32a5:	e8 00 06 00 00       	call   38aa <close>
  unlink("bigarg-ok");
    32aa:	c7 04 24 36 4c 00 00 	movl   $0x4c36,(%esp)
    32b1:	e8 1c 06 00 00       	call   38d2 <unlink>
}
    32b6:	83 c4 10             	add    $0x10,%esp
    32b9:	c9                   	leave  
    32ba:	c3                   	ret    
    32bb:	b8 c0 5d 00 00       	mov    $0x5dc0,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    32c0:	c7 00 60 53 00 00    	movl   $0x5360,(%eax)
    32c6:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    32c9:	3d 3c 5e 00 00       	cmp    $0x5e3c,%eax
    32ce:	75 f0                	jne    32c0 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    32d0:	51                   	push   %ecx
    32d1:	51                   	push   %ecx
    32d2:	68 40 4c 00 00       	push   $0x4c40
    32d7:	ff 35 a8 5d 00 00    	pushl  0x5da8
    args[MAXARG-1] = 0;
    32dd:	c7 05 3c 5e 00 00 00 	movl   $0x0,0x5e3c
    32e4:	00 00 00 
    printf(stdout, "bigarg test\n");
    32e7:	e8 e4 06 00 00       	call   39d0 <printf>
    exec("echo", args);
    32ec:	58                   	pop    %eax
    32ed:	5a                   	pop    %edx
    32ee:	68 c0 5d 00 00       	push   $0x5dc0
    32f3:	68 0d 3e 00 00       	push   $0x3e0d
    32f8:	e8 bd 05 00 00       	call   38ba <exec>
    printf(stdout, "bigarg test ok\n");
    32fd:	59                   	pop    %ecx
    32fe:	58                   	pop    %eax
    32ff:	68 4d 4c 00 00       	push   $0x4c4d
    3304:	ff 35 a8 5d 00 00    	pushl  0x5da8
    330a:	e8 c1 06 00 00       	call   39d0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    330f:	58                   	pop    %eax
    3310:	5a                   	pop    %edx
    3311:	68 00 02 00 00       	push   $0x200
    3316:	68 36 4c 00 00       	push   $0x4c36
    331b:	e8 a2 05 00 00       	call   38c2 <open>
    close(fd);
    3320:	89 04 24             	mov    %eax,(%esp)
    3323:	e8 82 05 00 00       	call   38aa <close>
    exit();
    3328:	e8 55 05 00 00       	call   3882 <exit>
    printf(stdout, "bigarg test failed!\n");
    332d:	50                   	push   %eax
    332e:	50                   	push   %eax
    332f:	68 76 4c 00 00       	push   $0x4c76
    3334:	ff 35 a8 5d 00 00    	pushl  0x5da8
    333a:	e8 91 06 00 00       	call   39d0 <printf>
    exit();
    333f:	e8 3e 05 00 00       	call   3882 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3344:	52                   	push   %edx
    3345:	52                   	push   %edx
    3346:	68 5d 4c 00 00       	push   $0x4c5d
    334b:	ff 35 a8 5d 00 00    	pushl  0x5da8
    3351:	e8 7a 06 00 00       	call   39d0 <printf>
    exit();
    3356:	e8 27 05 00 00       	call   3882 <exit>
    335b:	90                   	nop
    335c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003360 <fsfull>:
{
    3360:	55                   	push   %ebp
    3361:	89 e5                	mov    %esp,%ebp
    3363:	57                   	push   %edi
    3364:	56                   	push   %esi
    3365:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3366:	31 db                	xor    %ebx,%ebx
{
    3368:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    336b:	68 8b 4c 00 00       	push   $0x4c8b
    3370:	6a 01                	push   $0x1
    3372:	e8 59 06 00 00       	call   39d0 <printf>
    3377:	83 c4 10             	add    $0x10,%esp
    337a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3380:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3385:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    338a:	83 ec 04             	sub    $0x4,%esp
    name[1] = '0' + nfiles / 1000;
    338d:	f7 e3                	mul    %ebx
    name[0] = 'f';
    338f:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3393:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3397:	c1 ea 06             	shr    $0x6,%edx
    339a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    339d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    33a3:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    33a6:	89 d8                	mov    %ebx,%eax
    33a8:	29 d0                	sub    %edx,%eax
    33aa:	89 c2                	mov    %eax,%edx
    33ac:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33b1:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    33b3:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    33b8:	c1 ea 05             	shr    $0x5,%edx
    33bb:	83 c2 30             	add    $0x30,%edx
    33be:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    33c1:	f7 e3                	mul    %ebx
    33c3:	89 d8                	mov    %ebx,%eax
    33c5:	c1 ea 05             	shr    $0x5,%edx
    33c8:	6b d2 64             	imul   $0x64,%edx,%edx
    33cb:	29 d0                	sub    %edx,%eax
    33cd:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    33cf:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    33d1:	c1 ea 03             	shr    $0x3,%edx
    33d4:	83 c2 30             	add    $0x30,%edx
    33d7:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    33da:	f7 e1                	mul    %ecx
    33dc:	89 d9                	mov    %ebx,%ecx
    33de:	c1 ea 03             	shr    $0x3,%edx
    33e1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    33e4:	01 c0                	add    %eax,%eax
    33e6:	29 c1                	sub    %eax,%ecx
    33e8:	89 c8                	mov    %ecx,%eax
    33ea:	83 c0 30             	add    $0x30,%eax
    33ed:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    33f0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    33f3:	50                   	push   %eax
    33f4:	68 98 4c 00 00       	push   $0x4c98
    33f9:	6a 01                	push   $0x1
    33fb:	e8 d0 05 00 00       	call   39d0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3400:	58                   	pop    %eax
    3401:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3404:	5a                   	pop    %edx
    3405:	68 02 02 00 00       	push   $0x202
    340a:	50                   	push   %eax
    340b:	e8 b2 04 00 00       	call   38c2 <open>
    if(fd < 0){
    3410:	83 c4 10             	add    $0x10,%esp
    3413:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3415:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3417:	78 57                	js     3470 <fsfull+0x110>
    int total = 0;
    3419:	31 f6                	xor    %esi,%esi
    341b:	eb 05                	jmp    3422 <fsfull+0xc2>
    341d:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    3420:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3422:	83 ec 04             	sub    $0x4,%esp
    3425:	68 00 02 00 00       	push   $0x200
    342a:	68 80 85 00 00       	push   $0x8580
    342f:	57                   	push   %edi
    3430:	e8 6d 04 00 00       	call   38a2 <write>
      if(cc < 512)
    3435:	83 c4 10             	add    $0x10,%esp
    3438:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    343d:	7f e1                	jg     3420 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    343f:	83 ec 04             	sub    $0x4,%esp
    3442:	56                   	push   %esi
    3443:	68 b4 4c 00 00       	push   $0x4cb4
    3448:	6a 01                	push   $0x1
    344a:	e8 81 05 00 00       	call   39d0 <printf>
    close(fd);
    344f:	89 3c 24             	mov    %edi,(%esp)
    3452:	e8 53 04 00 00       	call   38aa <close>
    if(total == 0)
    3457:	83 c4 10             	add    $0x10,%esp
    345a:	85 f6                	test   %esi,%esi
    345c:	74 28                	je     3486 <fsfull+0x126>
  for(nfiles = 0; ; nfiles++){
    345e:	83 c3 01             	add    $0x1,%ebx
    3461:	e9 1a ff ff ff       	jmp    3380 <fsfull+0x20>
    3466:	8d 76 00             	lea    0x0(%esi),%esi
    3469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "open %s failed\n", name);
    3470:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3473:	83 ec 04             	sub    $0x4,%esp
    3476:	50                   	push   %eax
    3477:	68 a4 4c 00 00       	push   $0x4ca4
    347c:	6a 01                	push   $0x1
    347e:	e8 4d 05 00 00       	call   39d0 <printf>
      break;
    3483:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    3486:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    348b:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    name[1] = '0' + nfiles / 1000;
    3490:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3492:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    3497:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + nfiles / 1000;
    349a:	f7 e7                	mul    %edi
    name[0] = 'f';
    349c:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    34a0:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34a4:	c1 ea 06             	shr    $0x6,%edx
    34a7:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34aa:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    34b0:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34b3:	89 d8                	mov    %ebx,%eax
    34b5:	29 d0                	sub    %edx,%eax
    34b7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    34b9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34bb:	c1 ea 05             	shr    $0x5,%edx
    34be:	83 c2 30             	add    $0x30,%edx
    34c1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34c4:	f7 e6                	mul    %esi
    34c6:	89 d8                	mov    %ebx,%eax
    34c8:	c1 ea 05             	shr    $0x5,%edx
    34cb:	6b d2 64             	imul   $0x64,%edx,%edx
    34ce:	29 d0                	sub    %edx,%eax
    34d0:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    34d2:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    34d4:	c1 ea 03             	shr    $0x3,%edx
    34d7:	83 c2 30             	add    $0x30,%edx
    34da:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    34dd:	f7 e1                	mul    %ecx
    34df:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    34e1:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    34e4:	c1 ea 03             	shr    $0x3,%edx
    34e7:	8d 04 92             	lea    (%edx,%edx,4),%eax
    34ea:	01 c0                	add    %eax,%eax
    34ec:	29 c1                	sub    %eax,%ecx
    34ee:	89 c8                	mov    %ecx,%eax
    34f0:	83 c0 30             	add    $0x30,%eax
    34f3:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    34f6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34f9:	50                   	push   %eax
    34fa:	e8 d3 03 00 00       	call   38d2 <unlink>
  while(nfiles >= 0){
    34ff:	83 c4 10             	add    $0x10,%esp
    3502:	83 fb ff             	cmp    $0xffffffff,%ebx
    3505:	75 89                	jne    3490 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    3507:	83 ec 08             	sub    $0x8,%esp
    350a:	68 c4 4c 00 00       	push   $0x4cc4
    350f:	6a 01                	push   $0x1
    3511:	e8 ba 04 00 00       	call   39d0 <printf>
}
    3516:	83 c4 10             	add    $0x10,%esp
    3519:	8d 65 f4             	lea    -0xc(%ebp),%esp
    351c:	5b                   	pop    %ebx
    351d:	5e                   	pop    %esi
    351e:	5f                   	pop    %edi
    351f:	5d                   	pop    %ebp
    3520:	c3                   	ret    
    3521:	eb 0d                	jmp    3530 <uio>
    3523:	90                   	nop
    3524:	90                   	nop
    3525:	90                   	nop
    3526:	90                   	nop
    3527:	90                   	nop
    3528:	90                   	nop
    3529:	90                   	nop
    352a:	90                   	nop
    352b:	90                   	nop
    352c:	90                   	nop
    352d:	90                   	nop
    352e:	90                   	nop
    352f:	90                   	nop

00003530 <uio>:
{
    3530:	55                   	push   %ebp
    3531:	89 e5                	mov    %esp,%ebp
    3533:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    3536:	68 da 4c 00 00       	push   $0x4cda
    353b:	6a 01                	push   $0x1
    353d:	e8 8e 04 00 00       	call   39d0 <printf>
  pid = fork();
    3542:	e8 33 03 00 00       	call   387a <fork>
  if(pid == 0){
    3547:	83 c4 10             	add    $0x10,%esp
    354a:	85 c0                	test   %eax,%eax
    354c:	74 1b                	je     3569 <uio+0x39>
  } else if(pid < 0){
    354e:	78 3d                	js     358d <uio+0x5d>
  wait();
    3550:	e8 35 03 00 00       	call   388a <wait>
  printf(1, "uio test done\n");
    3555:	83 ec 08             	sub    $0x8,%esp
    3558:	68 e4 4c 00 00       	push   $0x4ce4
    355d:	6a 01                	push   $0x1
    355f:	e8 6c 04 00 00       	call   39d0 <printf>
}
    3564:	83 c4 10             	add    $0x10,%esp
    3567:	c9                   	leave  
    3568:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3569:	b8 09 00 00 00       	mov    $0x9,%eax
    356e:	ba 70 00 00 00       	mov    $0x70,%edx
    3573:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3574:	ba 71 00 00 00       	mov    $0x71,%edx
    3579:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    357a:	52                   	push   %edx
    357b:	52                   	push   %edx
    357c:	68 40 54 00 00       	push   $0x5440
    3581:	6a 01                	push   $0x1
    3583:	e8 48 04 00 00       	call   39d0 <printf>
    exit();
    3588:	e8 f5 02 00 00       	call   3882 <exit>
    printf (1, "fork failed\n");
    358d:	50                   	push   %eax
    358e:	50                   	push   %eax
    358f:	68 69 4c 00 00       	push   $0x4c69
    3594:	6a 01                	push   $0x1
    3596:	e8 35 04 00 00       	call   39d0 <printf>
    exit();
    359b:	e8 e2 02 00 00       	call   3882 <exit>

000035a0 <argptest>:
{
    35a0:	55                   	push   %ebp
    35a1:	89 e5                	mov    %esp,%ebp
    35a3:	53                   	push   %ebx
    35a4:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    35a7:	6a 00                	push   $0x0
    35a9:	68 f3 4c 00 00       	push   $0x4cf3
    35ae:	e8 0f 03 00 00       	call   38c2 <open>
  if (fd < 0) {
    35b3:	83 c4 10             	add    $0x10,%esp
    35b6:	85 c0                	test   %eax,%eax
    35b8:	78 39                	js     35f3 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    35ba:	83 ec 0c             	sub    $0xc,%esp
    35bd:	89 c3                	mov    %eax,%ebx
    35bf:	6a 00                	push   $0x0
    35c1:	e8 44 03 00 00       	call   390a <sbrk>
    35c6:	83 c4 0c             	add    $0xc,%esp
    35c9:	83 e8 01             	sub    $0x1,%eax
    35cc:	6a ff                	push   $0xffffffff
    35ce:	50                   	push   %eax
    35cf:	53                   	push   %ebx
    35d0:	e8 c5 02 00 00       	call   389a <read>
  close(fd);
    35d5:	89 1c 24             	mov    %ebx,(%esp)
    35d8:	e8 cd 02 00 00       	call   38aa <close>
  printf(1, "arg test passed\n");
    35dd:	58                   	pop    %eax
    35de:	5a                   	pop    %edx
    35df:	68 05 4d 00 00       	push   $0x4d05
    35e4:	6a 01                	push   $0x1
    35e6:	e8 e5 03 00 00       	call   39d0 <printf>
}
    35eb:	83 c4 10             	add    $0x10,%esp
    35ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    35f1:	c9                   	leave  
    35f2:	c3                   	ret    
    printf(2, "open failed\n");
    35f3:	51                   	push   %ecx
    35f4:	51                   	push   %ecx
    35f5:	68 f8 4c 00 00       	push   $0x4cf8
    35fa:	6a 02                	push   $0x2
    35fc:	e8 cf 03 00 00       	call   39d0 <printf>
    exit();
    3601:	e8 7c 02 00 00       	call   3882 <exit>
    3606:	8d 76 00             	lea    0x0(%esi),%esi
    3609:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003610 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3610:	69 05 a4 5d 00 00 0d 	imul   $0x19660d,0x5da4,%eax
    3617:	66 19 00 
{
    361a:	55                   	push   %ebp
    361b:	89 e5                	mov    %esp,%ebp
}
    361d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    361e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3623:	a3 a4 5d 00 00       	mov    %eax,0x5da4
}
    3628:	c3                   	ret    
    3629:	66 90                	xchg   %ax,%ax
    362b:	66 90                	xchg   %ax,%ax
    362d:	66 90                	xchg   %ax,%ax
    362f:	90                   	nop

00003630 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3630:	55                   	push   %ebp
    3631:	89 e5                	mov    %esp,%ebp
    3633:	53                   	push   %ebx
    3634:	8b 45 08             	mov    0x8(%ebp),%eax
    3637:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    363a:	89 c2                	mov    %eax,%edx
    363c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3640:	83 c1 01             	add    $0x1,%ecx
    3643:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3647:	83 c2 01             	add    $0x1,%edx
    364a:	84 db                	test   %bl,%bl
    364c:	88 5a ff             	mov    %bl,-0x1(%edx)
    364f:	75 ef                	jne    3640 <strcpy+0x10>
    ;
  return os;
}
    3651:	5b                   	pop    %ebx
    3652:	5d                   	pop    %ebp
    3653:	c3                   	ret    
    3654:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    365a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003660 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3660:	55                   	push   %ebp
    3661:	89 e5                	mov    %esp,%ebp
    3663:	53                   	push   %ebx
    3664:	8b 55 08             	mov    0x8(%ebp),%edx
    3667:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    366a:	0f b6 02             	movzbl (%edx),%eax
    366d:	0f b6 19             	movzbl (%ecx),%ebx
    3670:	84 c0                	test   %al,%al
    3672:	75 1c                	jne    3690 <strcmp+0x30>
    3674:	eb 2a                	jmp    36a0 <strcmp+0x40>
    3676:	8d 76 00             	lea    0x0(%esi),%esi
    3679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    3680:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3683:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3686:	83 c1 01             	add    $0x1,%ecx
    3689:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    368c:	84 c0                	test   %al,%al
    368e:	74 10                	je     36a0 <strcmp+0x40>
    3690:	38 d8                	cmp    %bl,%al
    3692:	74 ec                	je     3680 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    3694:	29 d8                	sub    %ebx,%eax
}
    3696:	5b                   	pop    %ebx
    3697:	5d                   	pop    %ebp
    3698:	c3                   	ret    
    3699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    36a2:	29 d8                	sub    %ebx,%eax
}
    36a4:	5b                   	pop    %ebx
    36a5:	5d                   	pop    %ebp
    36a6:	c3                   	ret    
    36a7:	89 f6                	mov    %esi,%esi
    36a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036b0 <strlen>:

uint
strlen(const char *s)
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    36b6:	80 39 00             	cmpb   $0x0,(%ecx)
    36b9:	74 15                	je     36d0 <strlen+0x20>
    36bb:	31 d2                	xor    %edx,%edx
    36bd:	8d 76 00             	lea    0x0(%esi),%esi
    36c0:	83 c2 01             	add    $0x1,%edx
    36c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    36c7:	89 d0                	mov    %edx,%eax
    36c9:	75 f5                	jne    36c0 <strlen+0x10>
    ;
  return n;
}
    36cb:	5d                   	pop    %ebp
    36cc:	c3                   	ret    
    36cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    36d0:	31 c0                	xor    %eax,%eax
}
    36d2:	5d                   	pop    %ebp
    36d3:	c3                   	ret    
    36d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    36da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000036e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    36e0:	55                   	push   %ebp
    36e1:	89 e5                	mov    %esp,%ebp
    36e3:	57                   	push   %edi
    36e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    36e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    36ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    36ed:	89 d7                	mov    %edx,%edi
    36ef:	fc                   	cld    
    36f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    36f2:	89 d0                	mov    %edx,%eax
    36f4:	5f                   	pop    %edi
    36f5:	5d                   	pop    %ebp
    36f6:	c3                   	ret    
    36f7:	89 f6                	mov    %esi,%esi
    36f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003700 <strchr>:

char*
strchr(const char *s, char c)
{
    3700:	55                   	push   %ebp
    3701:	89 e5                	mov    %esp,%ebp
    3703:	53                   	push   %ebx
    3704:	8b 45 08             	mov    0x8(%ebp),%eax
    3707:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    370a:	0f b6 10             	movzbl (%eax),%edx
    370d:	84 d2                	test   %dl,%dl
    370f:	74 1d                	je     372e <strchr+0x2e>
    if(*s == c)
    3711:	38 d3                	cmp    %dl,%bl
    3713:	89 d9                	mov    %ebx,%ecx
    3715:	75 0d                	jne    3724 <strchr+0x24>
    3717:	eb 17                	jmp    3730 <strchr+0x30>
    3719:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3720:	38 ca                	cmp    %cl,%dl
    3722:	74 0c                	je     3730 <strchr+0x30>
  for(; *s; s++)
    3724:	83 c0 01             	add    $0x1,%eax
    3727:	0f b6 10             	movzbl (%eax),%edx
    372a:	84 d2                	test   %dl,%dl
    372c:	75 f2                	jne    3720 <strchr+0x20>
      return (char*)s;
  return 0;
    372e:	31 c0                	xor    %eax,%eax
}
    3730:	5b                   	pop    %ebx
    3731:	5d                   	pop    %ebp
    3732:	c3                   	ret    
    3733:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003740 <gets>:

char*
gets(char *buf, int max)
{
    3740:	55                   	push   %ebp
    3741:	89 e5                	mov    %esp,%ebp
    3743:	57                   	push   %edi
    3744:	56                   	push   %esi
    3745:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3746:	31 f6                	xor    %esi,%esi
    3748:	89 f3                	mov    %esi,%ebx
{
    374a:	83 ec 1c             	sub    $0x1c,%esp
    374d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    3750:	eb 2f                	jmp    3781 <gets+0x41>
    3752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    3758:	8d 45 e7             	lea    -0x19(%ebp),%eax
    375b:	83 ec 04             	sub    $0x4,%esp
    375e:	6a 01                	push   $0x1
    3760:	50                   	push   %eax
    3761:	6a 00                	push   $0x0
    3763:	e8 32 01 00 00       	call   389a <read>
    if(cc < 1)
    3768:	83 c4 10             	add    $0x10,%esp
    376b:	85 c0                	test   %eax,%eax
    376d:	7e 1c                	jle    378b <gets+0x4b>
      break;
    buf[i++] = c;
    376f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3773:	83 c7 01             	add    $0x1,%edi
    3776:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    3779:	3c 0a                	cmp    $0xa,%al
    377b:	74 23                	je     37a0 <gets+0x60>
    377d:	3c 0d                	cmp    $0xd,%al
    377f:	74 1f                	je     37a0 <gets+0x60>
  for(i=0; i+1 < max; ){
    3781:	83 c3 01             	add    $0x1,%ebx
    3784:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3787:	89 fe                	mov    %edi,%esi
    3789:	7c cd                	jl     3758 <gets+0x18>
    378b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    378d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    3790:	c6 03 00             	movb   $0x0,(%ebx)
}
    3793:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3796:	5b                   	pop    %ebx
    3797:	5e                   	pop    %esi
    3798:	5f                   	pop    %edi
    3799:	5d                   	pop    %ebp
    379a:	c3                   	ret    
    379b:	90                   	nop
    379c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37a0:	8b 75 08             	mov    0x8(%ebp),%esi
    37a3:	8b 45 08             	mov    0x8(%ebp),%eax
    37a6:	01 de                	add    %ebx,%esi
    37a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    37aa:	c6 03 00             	movb   $0x0,(%ebx)
}
    37ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37b0:	5b                   	pop    %ebx
    37b1:	5e                   	pop    %esi
    37b2:	5f                   	pop    %edi
    37b3:	5d                   	pop    %ebp
    37b4:	c3                   	ret    
    37b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000037c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    37c0:	55                   	push   %ebp
    37c1:	89 e5                	mov    %esp,%ebp
    37c3:	56                   	push   %esi
    37c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    37c5:	83 ec 08             	sub    $0x8,%esp
    37c8:	6a 00                	push   $0x0
    37ca:	ff 75 08             	pushl  0x8(%ebp)
    37cd:	e8 f0 00 00 00       	call   38c2 <open>
  if(fd < 0)
    37d2:	83 c4 10             	add    $0x10,%esp
    37d5:	85 c0                	test   %eax,%eax
    37d7:	78 27                	js     3800 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    37d9:	83 ec 08             	sub    $0x8,%esp
    37dc:	ff 75 0c             	pushl  0xc(%ebp)
    37df:	89 c3                	mov    %eax,%ebx
    37e1:	50                   	push   %eax
    37e2:	e8 f3 00 00 00       	call   38da <fstat>
  close(fd);
    37e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    37ea:	89 c6                	mov    %eax,%esi
  close(fd);
    37ec:	e8 b9 00 00 00       	call   38aa <close>
  return r;
    37f1:	83 c4 10             	add    $0x10,%esp
}
    37f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    37f7:	89 f0                	mov    %esi,%eax
    37f9:	5b                   	pop    %ebx
    37fa:	5e                   	pop    %esi
    37fb:	5d                   	pop    %ebp
    37fc:	c3                   	ret    
    37fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3800:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3805:	eb ed                	jmp    37f4 <stat+0x34>
    3807:	89 f6                	mov    %esi,%esi
    3809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003810 <atoi>:

int
atoi(const char *s)
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	53                   	push   %ebx
    3814:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3817:	0f be 11             	movsbl (%ecx),%edx
    381a:	8d 42 d0             	lea    -0x30(%edx),%eax
    381d:	3c 09                	cmp    $0x9,%al
  n = 0;
    381f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3824:	77 1f                	ja     3845 <atoi+0x35>
    3826:	8d 76 00             	lea    0x0(%esi),%esi
    3829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3830:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3833:	83 c1 01             	add    $0x1,%ecx
    3836:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    383a:	0f be 11             	movsbl (%ecx),%edx
    383d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3840:	80 fb 09             	cmp    $0x9,%bl
    3843:	76 eb                	jbe    3830 <atoi+0x20>
  return n;
}
    3845:	5b                   	pop    %ebx
    3846:	5d                   	pop    %ebp
    3847:	c3                   	ret    
    3848:	90                   	nop
    3849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003850 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	56                   	push   %esi
    3854:	53                   	push   %ebx
    3855:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3858:	8b 45 08             	mov    0x8(%ebp),%eax
    385b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    385e:	85 db                	test   %ebx,%ebx
    3860:	7e 14                	jle    3876 <memmove+0x26>
    3862:	31 d2                	xor    %edx,%edx
    3864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3868:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    386c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    386f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3872:	39 d3                	cmp    %edx,%ebx
    3874:	75 f2                	jne    3868 <memmove+0x18>
  return vdst;
}
    3876:	5b                   	pop    %ebx
    3877:	5e                   	pop    %esi
    3878:	5d                   	pop    %ebp
    3879:	c3                   	ret    

0000387a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    387a:	b8 01 00 00 00       	mov    $0x1,%eax
    387f:	cd 40                	int    $0x40
    3881:	c3                   	ret    

00003882 <exit>:
SYSCALL(exit)
    3882:	b8 02 00 00 00       	mov    $0x2,%eax
    3887:	cd 40                	int    $0x40
    3889:	c3                   	ret    

0000388a <wait>:
SYSCALL(wait)
    388a:	b8 03 00 00 00       	mov    $0x3,%eax
    388f:	cd 40                	int    $0x40
    3891:	c3                   	ret    

00003892 <pipe>:
SYSCALL(pipe)
    3892:	b8 04 00 00 00       	mov    $0x4,%eax
    3897:	cd 40                	int    $0x40
    3899:	c3                   	ret    

0000389a <read>:
SYSCALL(read)
    389a:	b8 05 00 00 00       	mov    $0x5,%eax
    389f:	cd 40                	int    $0x40
    38a1:	c3                   	ret    

000038a2 <write>:
SYSCALL(write)
    38a2:	b8 10 00 00 00       	mov    $0x10,%eax
    38a7:	cd 40                	int    $0x40
    38a9:	c3                   	ret    

000038aa <close>:
SYSCALL(close)
    38aa:	b8 15 00 00 00       	mov    $0x15,%eax
    38af:	cd 40                	int    $0x40
    38b1:	c3                   	ret    

000038b2 <kill>:
SYSCALL(kill)
    38b2:	b8 06 00 00 00       	mov    $0x6,%eax
    38b7:	cd 40                	int    $0x40
    38b9:	c3                   	ret    

000038ba <exec>:
SYSCALL(exec)
    38ba:	b8 07 00 00 00       	mov    $0x7,%eax
    38bf:	cd 40                	int    $0x40
    38c1:	c3                   	ret    

000038c2 <open>:
SYSCALL(open)
    38c2:	b8 0f 00 00 00       	mov    $0xf,%eax
    38c7:	cd 40                	int    $0x40
    38c9:	c3                   	ret    

000038ca <mknod>:
SYSCALL(mknod)
    38ca:	b8 11 00 00 00       	mov    $0x11,%eax
    38cf:	cd 40                	int    $0x40
    38d1:	c3                   	ret    

000038d2 <unlink>:
SYSCALL(unlink)
    38d2:	b8 12 00 00 00       	mov    $0x12,%eax
    38d7:	cd 40                	int    $0x40
    38d9:	c3                   	ret    

000038da <fstat>:
SYSCALL(fstat)
    38da:	b8 08 00 00 00       	mov    $0x8,%eax
    38df:	cd 40                	int    $0x40
    38e1:	c3                   	ret    

000038e2 <link>:
SYSCALL(link)
    38e2:	b8 13 00 00 00       	mov    $0x13,%eax
    38e7:	cd 40                	int    $0x40
    38e9:	c3                   	ret    

000038ea <mkdir>:
SYSCALL(mkdir)
    38ea:	b8 14 00 00 00       	mov    $0x14,%eax
    38ef:	cd 40                	int    $0x40
    38f1:	c3                   	ret    

000038f2 <chdir>:
SYSCALL(chdir)
    38f2:	b8 09 00 00 00       	mov    $0x9,%eax
    38f7:	cd 40                	int    $0x40
    38f9:	c3                   	ret    

000038fa <dup>:
SYSCALL(dup)
    38fa:	b8 0a 00 00 00       	mov    $0xa,%eax
    38ff:	cd 40                	int    $0x40
    3901:	c3                   	ret    

00003902 <getpid>:
SYSCALL(getpid)
    3902:	b8 0b 00 00 00       	mov    $0xb,%eax
    3907:	cd 40                	int    $0x40
    3909:	c3                   	ret    

0000390a <sbrk>:
SYSCALL(sbrk)
    390a:	b8 0c 00 00 00       	mov    $0xc,%eax
    390f:	cd 40                	int    $0x40
    3911:	c3                   	ret    

00003912 <sleep>:
SYSCALL(sleep)
    3912:	b8 0d 00 00 00       	mov    $0xd,%eax
    3917:	cd 40                	int    $0x40
    3919:	c3                   	ret    

0000391a <uptime>:
SYSCALL(uptime)
    391a:	b8 0e 00 00 00       	mov    $0xe,%eax
    391f:	cd 40                	int    $0x40
    3921:	c3                   	ret    
    3922:	66 90                	xchg   %ax,%ax
    3924:	66 90                	xchg   %ax,%ax
    3926:	66 90                	xchg   %ax,%ax
    3928:	66 90                	xchg   %ax,%ax
    392a:	66 90                	xchg   %ax,%ax
    392c:	66 90                	xchg   %ax,%ax
    392e:	66 90                	xchg   %ax,%ax

00003930 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3930:	55                   	push   %ebp
    3931:	89 e5                	mov    %esp,%ebp
    3933:	57                   	push   %edi
    3934:	56                   	push   %esi
    3935:	53                   	push   %ebx
    3936:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3939:	85 d2                	test   %edx,%edx
{
    393b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    393e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    3940:	79 76                	jns    39b8 <printint+0x88>
    3942:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3946:	74 70                	je     39b8 <printint+0x88>
    x = -xx;
    3948:	f7 d8                	neg    %eax
    neg = 1;
    394a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3951:	31 f6                	xor    %esi,%esi
    3953:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3956:	eb 0a                	jmp    3962 <printint+0x32>
    3958:	90                   	nop
    3959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    3960:	89 fe                	mov    %edi,%esi
    3962:	31 d2                	xor    %edx,%edx
    3964:	8d 7e 01             	lea    0x1(%esi),%edi
    3967:	f7 f1                	div    %ecx
    3969:	0f b6 92 98 54 00 00 	movzbl 0x5498(%edx),%edx
  }while((x /= base) != 0);
    3970:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    3972:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    3975:	75 e9                	jne    3960 <printint+0x30>
  if(neg)
    3977:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    397a:	85 c0                	test   %eax,%eax
    397c:	74 08                	je     3986 <printint+0x56>
    buf[i++] = '-';
    397e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    3983:	8d 7e 02             	lea    0x2(%esi),%edi
    3986:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    398a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    398d:	8d 76 00             	lea    0x0(%esi),%esi
    3990:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    3993:	83 ec 04             	sub    $0x4,%esp
    3996:	83 ee 01             	sub    $0x1,%esi
    3999:	6a 01                	push   $0x1
    399b:	53                   	push   %ebx
    399c:	57                   	push   %edi
    399d:	88 45 d7             	mov    %al,-0x29(%ebp)
    39a0:	e8 fd fe ff ff       	call   38a2 <write>

  while(--i >= 0)
    39a5:	83 c4 10             	add    $0x10,%esp
    39a8:	39 de                	cmp    %ebx,%esi
    39aa:	75 e4                	jne    3990 <printint+0x60>
    putc(fd, buf[i]);
}
    39ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
    39af:	5b                   	pop    %ebx
    39b0:	5e                   	pop    %esi
    39b1:	5f                   	pop    %edi
    39b2:	5d                   	pop    %ebp
    39b3:	c3                   	ret    
    39b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    39b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    39bf:	eb 90                	jmp    3951 <printint+0x21>
    39c1:	eb 0d                	jmp    39d0 <printf>
    39c3:	90                   	nop
    39c4:	90                   	nop
    39c5:	90                   	nop
    39c6:	90                   	nop
    39c7:	90                   	nop
    39c8:	90                   	nop
    39c9:	90                   	nop
    39ca:	90                   	nop
    39cb:	90                   	nop
    39cc:	90                   	nop
    39cd:	90                   	nop
    39ce:	90                   	nop
    39cf:	90                   	nop

000039d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    39d0:	55                   	push   %ebp
    39d1:	89 e5                	mov    %esp,%ebp
    39d3:	57                   	push   %edi
    39d4:	56                   	push   %esi
    39d5:	53                   	push   %ebx
    39d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    39d9:	8b 75 0c             	mov    0xc(%ebp),%esi
    39dc:	0f b6 1e             	movzbl (%esi),%ebx
    39df:	84 db                	test   %bl,%bl
    39e1:	0f 84 b3 00 00 00    	je     3a9a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    39e7:	8d 45 10             	lea    0x10(%ebp),%eax
    39ea:	83 c6 01             	add    $0x1,%esi
  state = 0;
    39ed:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    39ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    39f2:	eb 2f                	jmp    3a23 <printf+0x53>
    39f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    39f8:	83 f8 25             	cmp    $0x25,%eax
    39fb:	0f 84 a7 00 00 00    	je     3aa8 <printf+0xd8>
  write(fd, &c, 1);
    3a01:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3a04:	83 ec 04             	sub    $0x4,%esp
    3a07:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3a0a:	6a 01                	push   $0x1
    3a0c:	50                   	push   %eax
    3a0d:	ff 75 08             	pushl  0x8(%ebp)
    3a10:	e8 8d fe ff ff       	call   38a2 <write>
    3a15:	83 c4 10             	add    $0x10,%esp
    3a18:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    3a1b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3a1f:	84 db                	test   %bl,%bl
    3a21:	74 77                	je     3a9a <printf+0xca>
    if(state == 0){
    3a23:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    3a25:	0f be cb             	movsbl %bl,%ecx
    3a28:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    3a2b:	74 cb                	je     39f8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3a2d:	83 ff 25             	cmp    $0x25,%edi
    3a30:	75 e6                	jne    3a18 <printf+0x48>
      if(c == 'd'){
    3a32:	83 f8 64             	cmp    $0x64,%eax
    3a35:	0f 84 05 01 00 00    	je     3b40 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3a3b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    3a41:	83 f9 70             	cmp    $0x70,%ecx
    3a44:	74 72                	je     3ab8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3a46:	83 f8 73             	cmp    $0x73,%eax
    3a49:	0f 84 99 00 00 00    	je     3ae8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3a4f:	83 f8 63             	cmp    $0x63,%eax
    3a52:	0f 84 08 01 00 00    	je     3b60 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3a58:	83 f8 25             	cmp    $0x25,%eax
    3a5b:	0f 84 ef 00 00 00    	je     3b50 <printf+0x180>
  write(fd, &c, 1);
    3a61:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3a64:	83 ec 04             	sub    $0x4,%esp
    3a67:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3a6b:	6a 01                	push   $0x1
    3a6d:	50                   	push   %eax
    3a6e:	ff 75 08             	pushl  0x8(%ebp)
    3a71:	e8 2c fe ff ff       	call   38a2 <write>
    3a76:	83 c4 0c             	add    $0xc,%esp
    3a79:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3a7c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    3a7f:	6a 01                	push   $0x1
    3a81:	50                   	push   %eax
    3a82:	ff 75 08             	pushl  0x8(%ebp)
    3a85:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3a88:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    3a8a:	e8 13 fe ff ff       	call   38a2 <write>
  for(i = 0; fmt[i]; i++){
    3a8f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    3a93:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3a96:	84 db                	test   %bl,%bl
    3a98:	75 89                	jne    3a23 <printf+0x53>
    }
  }
}
    3a9a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a9d:	5b                   	pop    %ebx
    3a9e:	5e                   	pop    %esi
    3a9f:	5f                   	pop    %edi
    3aa0:	5d                   	pop    %ebp
    3aa1:	c3                   	ret    
    3aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    3aa8:	bf 25 00 00 00       	mov    $0x25,%edi
    3aad:	e9 66 ff ff ff       	jmp    3a18 <printf+0x48>
    3ab2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3ab8:	83 ec 0c             	sub    $0xc,%esp
    3abb:	b9 10 00 00 00       	mov    $0x10,%ecx
    3ac0:	6a 00                	push   $0x0
    3ac2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3ac5:	8b 45 08             	mov    0x8(%ebp),%eax
    3ac8:	8b 17                	mov    (%edi),%edx
    3aca:	e8 61 fe ff ff       	call   3930 <printint>
        ap++;
    3acf:	89 f8                	mov    %edi,%eax
    3ad1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3ad4:	31 ff                	xor    %edi,%edi
        ap++;
    3ad6:	83 c0 04             	add    $0x4,%eax
    3ad9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3adc:	e9 37 ff ff ff       	jmp    3a18 <printf+0x48>
    3ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3ae8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3aeb:	8b 08                	mov    (%eax),%ecx
        ap++;
    3aed:	83 c0 04             	add    $0x4,%eax
    3af0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    3af3:	85 c9                	test   %ecx,%ecx
    3af5:	0f 84 8e 00 00 00    	je     3b89 <printf+0x1b9>
        while(*s != 0){
    3afb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    3afe:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    3b00:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    3b02:	84 c0                	test   %al,%al
    3b04:	0f 84 0e ff ff ff    	je     3a18 <printf+0x48>
    3b0a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    3b0d:	89 de                	mov    %ebx,%esi
    3b0f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3b12:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    3b15:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3b18:	83 ec 04             	sub    $0x4,%esp
          s++;
    3b1b:	83 c6 01             	add    $0x1,%esi
    3b1e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    3b21:	6a 01                	push   $0x1
    3b23:	57                   	push   %edi
    3b24:	53                   	push   %ebx
    3b25:	e8 78 fd ff ff       	call   38a2 <write>
        while(*s != 0){
    3b2a:	0f b6 06             	movzbl (%esi),%eax
    3b2d:	83 c4 10             	add    $0x10,%esp
    3b30:	84 c0                	test   %al,%al
    3b32:	75 e4                	jne    3b18 <printf+0x148>
    3b34:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    3b37:	31 ff                	xor    %edi,%edi
    3b39:	e9 da fe ff ff       	jmp    3a18 <printf+0x48>
    3b3e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    3b40:	83 ec 0c             	sub    $0xc,%esp
    3b43:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3b48:	6a 01                	push   $0x1
    3b4a:	e9 73 ff ff ff       	jmp    3ac2 <printf+0xf2>
    3b4f:	90                   	nop
  write(fd, &c, 1);
    3b50:	83 ec 04             	sub    $0x4,%esp
    3b53:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    3b56:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    3b59:	6a 01                	push   $0x1
    3b5b:	e9 21 ff ff ff       	jmp    3a81 <printf+0xb1>
        putc(fd, *ap);
    3b60:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    3b63:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3b66:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3b68:	6a 01                	push   $0x1
        ap++;
    3b6a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    3b6d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    3b70:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3b73:	50                   	push   %eax
    3b74:	ff 75 08             	pushl  0x8(%ebp)
    3b77:	e8 26 fd ff ff       	call   38a2 <write>
        ap++;
    3b7c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3b7f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3b82:	31 ff                	xor    %edi,%edi
    3b84:	e9 8f fe ff ff       	jmp    3a18 <printf+0x48>
          s = "(null)";
    3b89:	bb 90 54 00 00       	mov    $0x5490,%ebx
        while(*s != 0){
    3b8e:	b8 28 00 00 00       	mov    $0x28,%eax
    3b93:	e9 72 ff ff ff       	jmp    3b0a <printf+0x13a>
    3b98:	66 90                	xchg   %ax,%ax
    3b9a:	66 90                	xchg   %ax,%ax
    3b9c:	66 90                	xchg   %ax,%ax
    3b9e:	66 90                	xchg   %ax,%ax

00003ba0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3ba0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3ba1:	a1 40 5e 00 00       	mov    0x5e40,%eax
{
    3ba6:	89 e5                	mov    %esp,%ebp
    3ba8:	57                   	push   %edi
    3ba9:	56                   	push   %esi
    3baa:	53                   	push   %ebx
    3bab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3bae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3bb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3bb8:	39 c8                	cmp    %ecx,%eax
    3bba:	8b 10                	mov    (%eax),%edx
    3bbc:	73 32                	jae    3bf0 <free+0x50>
    3bbe:	39 d1                	cmp    %edx,%ecx
    3bc0:	72 04                	jb     3bc6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3bc2:	39 d0                	cmp    %edx,%eax
    3bc4:	72 32                	jb     3bf8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3bc6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3bc9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3bcc:	39 fa                	cmp    %edi,%edx
    3bce:	74 30                	je     3c00 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    3bd0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3bd3:	8b 50 04             	mov    0x4(%eax),%edx
    3bd6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3bd9:	39 f1                	cmp    %esi,%ecx
    3bdb:	74 3a                	je     3c17 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    3bdd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    3bdf:	a3 40 5e 00 00       	mov    %eax,0x5e40
}
    3be4:	5b                   	pop    %ebx
    3be5:	5e                   	pop    %esi
    3be6:	5f                   	pop    %edi
    3be7:	5d                   	pop    %ebp
    3be8:	c3                   	ret    
    3be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3bf0:	39 d0                	cmp    %edx,%eax
    3bf2:	72 04                	jb     3bf8 <free+0x58>
    3bf4:	39 d1                	cmp    %edx,%ecx
    3bf6:	72 ce                	jb     3bc6 <free+0x26>
{
    3bf8:	89 d0                	mov    %edx,%eax
    3bfa:	eb bc                	jmp    3bb8 <free+0x18>
    3bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    3c00:	03 72 04             	add    0x4(%edx),%esi
    3c03:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3c06:	8b 10                	mov    (%eax),%edx
    3c08:	8b 12                	mov    (%edx),%edx
    3c0a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3c0d:	8b 50 04             	mov    0x4(%eax),%edx
    3c10:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c13:	39 f1                	cmp    %esi,%ecx
    3c15:	75 c6                	jne    3bdd <free+0x3d>
    p->s.size += bp->s.size;
    3c17:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    3c1a:	a3 40 5e 00 00       	mov    %eax,0x5e40
    p->s.size += bp->s.size;
    3c1f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    3c22:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3c25:	89 10                	mov    %edx,(%eax)
}
    3c27:	5b                   	pop    %ebx
    3c28:	5e                   	pop    %esi
    3c29:	5f                   	pop    %edi
    3c2a:	5d                   	pop    %ebp
    3c2b:	c3                   	ret    
    3c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003c30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3c30:	55                   	push   %ebp
    3c31:	89 e5                	mov    %esp,%ebp
    3c33:	57                   	push   %edi
    3c34:	56                   	push   %esi
    3c35:	53                   	push   %ebx
    3c36:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3c39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3c3c:	8b 15 40 5e 00 00    	mov    0x5e40,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3c42:	8d 78 07             	lea    0x7(%eax),%edi
    3c45:	c1 ef 03             	shr    $0x3,%edi
    3c48:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3c4b:	85 d2                	test   %edx,%edx
    3c4d:	0f 84 9d 00 00 00    	je     3cf0 <malloc+0xc0>
    3c53:	8b 02                	mov    (%edx),%eax
    3c55:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    3c58:	39 cf                	cmp    %ecx,%edi
    3c5a:	76 6c                	jbe    3cc8 <malloc+0x98>
    3c5c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    3c62:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3c67:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3c6a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3c71:	eb 0e                	jmp    3c81 <malloc+0x51>
    3c73:	90                   	nop
    3c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3c78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3c7a:	8b 48 04             	mov    0x4(%eax),%ecx
    3c7d:	39 f9                	cmp    %edi,%ecx
    3c7f:	73 47                	jae    3cc8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3c81:	39 05 40 5e 00 00    	cmp    %eax,0x5e40
    3c87:	89 c2                	mov    %eax,%edx
    3c89:	75 ed                	jne    3c78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    3c8b:	83 ec 0c             	sub    $0xc,%esp
    3c8e:	56                   	push   %esi
    3c8f:	e8 76 fc ff ff       	call   390a <sbrk>
  if(p == (char*)-1)
    3c94:	83 c4 10             	add    $0x10,%esp
    3c97:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c9a:	74 1c                	je     3cb8 <malloc+0x88>
  hp->s.size = nu;
    3c9c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3c9f:	83 ec 0c             	sub    $0xc,%esp
    3ca2:	83 c0 08             	add    $0x8,%eax
    3ca5:	50                   	push   %eax
    3ca6:	e8 f5 fe ff ff       	call   3ba0 <free>
  return freep;
    3cab:	8b 15 40 5e 00 00    	mov    0x5e40,%edx
      if((p = morecore(nunits)) == 0)
    3cb1:	83 c4 10             	add    $0x10,%esp
    3cb4:	85 d2                	test   %edx,%edx
    3cb6:	75 c0                	jne    3c78 <malloc+0x48>
        return 0;
  }
}
    3cb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3cbb:	31 c0                	xor    %eax,%eax
}
    3cbd:	5b                   	pop    %ebx
    3cbe:	5e                   	pop    %esi
    3cbf:	5f                   	pop    %edi
    3cc0:	5d                   	pop    %ebp
    3cc1:	c3                   	ret    
    3cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3cc8:	39 cf                	cmp    %ecx,%edi
    3cca:	74 54                	je     3d20 <malloc+0xf0>
        p->s.size -= nunits;
    3ccc:	29 f9                	sub    %edi,%ecx
    3cce:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3cd1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3cd4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3cd7:	89 15 40 5e 00 00    	mov    %edx,0x5e40
}
    3cdd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3ce0:	83 c0 08             	add    $0x8,%eax
}
    3ce3:	5b                   	pop    %ebx
    3ce4:	5e                   	pop    %esi
    3ce5:	5f                   	pop    %edi
    3ce6:	5d                   	pop    %ebp
    3ce7:	c3                   	ret    
    3ce8:	90                   	nop
    3ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    3cf0:	c7 05 40 5e 00 00 44 	movl   $0x5e44,0x5e40
    3cf7:	5e 00 00 
    3cfa:	c7 05 44 5e 00 00 44 	movl   $0x5e44,0x5e44
    3d01:	5e 00 00 
    base.s.size = 0;
    3d04:	b8 44 5e 00 00       	mov    $0x5e44,%eax
    3d09:	c7 05 48 5e 00 00 00 	movl   $0x0,0x5e48
    3d10:	00 00 00 
    3d13:	e9 44 ff ff ff       	jmp    3c5c <malloc+0x2c>
    3d18:	90                   	nop
    3d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    3d20:	8b 08                	mov    (%eax),%ecx
    3d22:	89 0a                	mov    %ecx,(%edx)
    3d24:	eb b1                	jmp    3cd7 <malloc+0xa7>
