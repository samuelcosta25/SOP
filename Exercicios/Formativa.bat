@echo off
cls
:menu
cls
color 07

date /t
echo Computador : %computername% Usuario: %username%

echo        MENU DE MANUTENÇÃO
echo ======================================
echo * 1. Esvaziar a Lixeira              *
echo * 2. Fazer Backup                    *
echo * 3. Escanear e reparar Disco Local  *
echo * 4. Escanear e reparar Windows      *
echo * 5. Verificar Imagem ISO do Windows *
echo * 6. Verificar status de rede        *
echo * 7. Verificar status de DNS         *
echo * 8. Restaurar configuracoes do PC   *
echo * 9. Menu de Ajuda                   *
echo * 10. Sair                           *
echo ======================================

set /p opcao= Escolha uma opcao: 
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% GEQ 11 goto opcao11

:opcao1
cls
rd /s /q c:$Recycle.bin
echo ==================================
echo *         Lixeira Vazia          *
echo ==================================
pause
goto menu

:opcao2
cls
robocopy C:\Users\Aluno DEV Noturno\Documents\ C:\Users\Aluno DEV Noturno\Desktop /mt /z /v /e /copyall
echo ==================================
echo *        Backup Concluido        *
echo ==================================
pause
goto menu

:opcao3
cls
echo =================================
echo *     Escaneamento de Disco     *
echo =================================
chkdsk c:
pause
goto menu

:opcao4
cls
echo =================================
echo *    Escaneamento do Windows    *
echo =================================
sfc /scannow
pause
goto menu

:opcao5
cls
echo =====================================
echo * Verificando imagem ISO do Windows *
echo =====================================
dism /online /cleanup-image /restorehealth
pause
goto menu

:opcao6
cls
echo =================================
echo *       Verificando rede        *
echo =================================
netstat
pause
goto menu

:opcao7
cls
echo =================================
echo *      Verificando de DNS       *
echo =================================
nslookup
pause
goto menu

:opcao8
cls
echo =================================
echo *        Restaurando PC         *
echo =================================
rstrui.exe
pause
goto menu

:opcao9
cls
echo =================================
echo *         Menu de ajuda         *
echo =================================
help
pause
goto menu

:opcao10
cls
exit

:opcao11
echo ===============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ===============================================
pause
goto menu