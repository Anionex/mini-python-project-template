@echo off
rem 提示用户输入新的项目名称
set /p project_name="Enter the new project name: "

rem 获取当前目录的名称
for %%I in (.) do set current_folder=%%~nxI

rem 在父目录下创建新的目录
mkdir ..\%project_name%

rem 将当前目录的所有内容复制到新目录中
xcopy /E /I . ..\%project_name%

rem 提示用户手动删除当前目录
echo.
echo Please manually delete the current directory: %current_folder%
echo You can use the following command:
echo RD /S /Q "%cd%"
echo.
pause