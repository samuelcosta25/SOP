@echo off
cls
:menu
cls
color 07

date /t
echo Computador : %computername% Usuario: %username%


echo         MENU TAREFAS
echo ================================================
echo * 1. Reiniciar Computador                      *
echo * 2. Esvaziar a Lixeira e Reiniciar Computador *
echo * 3. Desligar Computador Imediatamente         *
echo * 4. Desligar Computador apos 30s              *
echo * 5. Sair                                      *
echo ================================================

set /p opcao= Escolha uma opcao: 
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /s /q c:$Recycle.bin
echo ===================================
echo *Lixeira Esvaziada, Reiniciar PC?*
echo ===================================
pause
shutdown /r
goto menu

:opcao2
cls
echo ==================================
echo *         Reiniciando PC         *
echo ==================================
shutdown /r
goto menu

:opcao3
cls
echo =================================
echo *  Desligando PC Imediatamente  *
echo =================================
shutdown /s /t 0
goto menu

:opcao4
echo ==================================
echo * Desligando PC Apos 30 segundos *
echo ==================================
shutdown /s /t 30
cls
goto menu

:opcao5
cls
exit

:opcao6
echo ===============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ===============================================
pause
goto menu

