@echo off
chcp 655001 > nul
java -Dsun.stdout.encoding=UTF-8 -Dsun.stdin.encoding=UTF-8 -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dconsole.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8 -jar %1
