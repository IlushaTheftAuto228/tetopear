@echo off
chcp 65001
cls
choice /m "Для компиляции в .exe используется модуль Pyinstaller. Вы хотите его установить сейчас?"
if errorlevel 1 goto pippy
if errorlevel 2 goto compile
:pippy
cls
pip install pyinstaller
goto compile
:compile
pyinstaller --noconfirm --onefile --window --icon "tetopear.ico" "tetopear.py"
cd dist
copy tetopear.exe ..
del tetopear.exe
cd ..
rmdir dist
cd build
cd tetopear
cd localpycs
del *.pyc
cd ..
rmdir localpycs
del *.toc
del PYZ-00.pyz
del base_library.zip
del tetopear.pkg
del warn-tetopear.txt
del xref-tetopear.html
cd ..
rmdir tetopear
cd ..
rmdir build
del tetopear.spec
cls
echo Программа скомпилирована.
pause
exit