@echo off
title Sorteio
color 0e

set /a numeroSorteado=%random% %%50 +1
set /a palpite=0
set /a tentativas=0

echo --------------------------------------------------------------------------------
echo.
echo 		ADIVINHE UM NUMERO SORTEADO ENTRE 01  E 50
echo.
echo 		VOCE TEM 5 TENTATIVAS
echo.
echo --------------------------------------------------------------------------------

:inicio
echo.
set /p palpite=Digite seu palpite: 
set /a tentativas+=1
echo.
echo --------------------------------------------------------------------------------

if %palpite% equ %numeroSorteado% (
	echo --------------------------------------------------------------------------------
	echo.
    echo Parabens! Voce adivinhou o numero em %tentativas% tentativas!
	echo.
	echo --------------------------------------------------------------------------------
    goto fim
) else if %palpite% lss %numeroSorteado% (
	echo.
    echo Seu palpite foi menor que o numero correto. Tente novamente!
	echo.
	echo --------------------------------------------------------------------------------
) else (
	echo.
    echo Seu palpite foi maior que o numero correto. Tente novamente!
	echo.
	echo --------------------------------------------------------------------------------
)

if %tentativas% lss 5 goto inicio

echo.
echo Voce esgotou todas as suas tentativas. O numero correto era %numeroSorteado%.
echo.
echo --------------------------------------------------------------------------------

:fim
pause