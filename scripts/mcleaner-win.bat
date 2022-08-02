@echo off

@echo =================================
@echo         1. 모드 초기화
@echo         2. 전체 초기화
@echo         3. 종료
@echo =================================

:TOP
set /p choice=항목을 선택하십시오 :

goto %choice%

:1

@echo 바탕화면에 mods 폴더를 복사합니다.

copy %appdata%\.minecraft\mods %USerProfile%\minecleaner-backup

del %appdata%\.minecraft\mods\*

:2

@echo 바탕화면에 minecraft 폴더를 복사합니다.

copy %appdata%\.minecraft %USerProfile%\minecleaner-backup

del %appdata%\.minecraft\*

exit

:3

exit
