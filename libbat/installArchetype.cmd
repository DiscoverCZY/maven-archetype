ECHO ��ȡ��ǰĿ¼
cd %cd%\%1

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

ECHO ������Ŀ�ĸ�Ŀ¼
CD ../../../

ECHO �����������(����յ�ǰĿ¼��target),��յ�ǰ�������ɵ��ļ�
ECHO maven clean this directory
SET COMMAND=mvn clean
CALL %COMMAND%

REM �˻���һ��Ŀ¼
cd ..
echo congratulations, %1% install succeed.