@echo off
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
ECHO --------------------------------------------------------------------
ECHO.


ECHO ��ȡ��ǰĿ¼
cd %cd%\spring-springmvc-mybatis

ECHO �����������(����յ�ǰĿ¼��target)
ECHO maven clean this directory
SET COMMAND=mvn clean
CALL %COMMAND%

ECHO ���벢���ɸ���Ŀ��Ӧ��archetype
ECHO maven create archetype
SET COMMAND=mvn archetype:create-from-project
CALL %COMMAND%

ECHO �������ɵ�target/generated-sources/archetype
ECHO cd target to install
CD target/generated-sources/archetype

ECHO ��װ��ǰ��archetype�����ص�Maven��
ECHO maven install
SET COMMAND=mvn clean install
CALL %COMMAND%

ECHO ������Ŀ�ĸ�Ŀ¼target/generated-sources/archetype
ECHO cd target to install
CD ../../../

ECHO �����������(����յ�ǰĿ¼��target),��յ�ǰ�������ɵ��ļ�
ECHO maven clean this directory
SET COMMAND=mvn clean
CALL %COMMAND%

echo congratulations, install succeed.
pause