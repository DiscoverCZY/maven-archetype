@echo off
setlocal EnableDelayedExpansion
ECHO.
COLOR 0a
ECHO. ˵ ��
ECHO --------------------------------------------------------------------
ECHO @Copyright 2013 Create By yuanmomo QQ:342398690 ���ڣ�2013-12-10 22:59:00
ECHO.
ECHO ��Ҫ��ֱ��˫�����ļ����ɽ��а�װ
ECHO --------------------------------------------------------------------
ECHO ��������ִ�к󣬽�������һЩ����,ȷ�Ϻ������
ECHO 1�������README.mdָʾ������һ����Ŀ��ȷ���Ƿ�װ�ɹ�
cls
ECHO. 
ECHO --------------------------------------------------------------------
echo         ��ѡ��Ҫ��װ��maven-archetype:
echo         [0] all
set a=1
for /D %%s in (*-*) do ( 
	echo         [!a!] %%s
	set /A a+=1
)
ECHO --------------------------------------------------------------------
ECHO.

REM �ȴ��û�����Ҫ��װ��archetype
set /p chooseResult=��ѡ��Ҫ��װ��archetype������[]�еı��:0?

REM ���ֱ�ӻس���Ĭ�ϰ�װ����
if /i '%chooseResult%'=='' (
set /A chooseResult=0
)

echo �������ѡ�%chooseResult%

set current=1
if %chooseResult% EQU 0 (
	for /D %%s in (*-*) do ( 
		rem ./libbat/installArchetype.cmd %%s
		call ./libbat/installArchetype.cmd %%s
	)
	goto _exit
)else if %chooseResult% GTR 0 (
	for /D %%s in (*-*) do (
		if %chooseResult% EQU !current! (
			rem ./libbat/installArchetype.cmd %%s
			call ./libbat/installArchetype.cmd %%s
			goto _exit
		)else (
			set /A current+=1
		)
	)
)

:_exit
pause

