@echo off

set JAVACC_PATH=..\\javacc\\javacc.jar

rem Silently delete the generated directory and all content
rd /s /q com\\abstractsquirrel\\stop\\parser\\generated

rem Recreate the generated directory (prevents jjtree warning)
md com\\abstractsquirrel\\stop\\parser\\generated

rem Build the parser
java -cp %JAVACC_PATH% jjtree com\\abstractsquirrel\\stop\\parser\\Stop.jjt
java -cp %JAVACC_PATH% javacc com\\abstractsquirrel\\stop\\parser\\generated\\Stop.jj
