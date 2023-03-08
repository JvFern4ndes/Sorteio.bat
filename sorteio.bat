@echo off
title Sorteio
color 0e

set /a numeroSorteado=%random% %%50 +1
set /a palpite=0
set /a tentativas=0

echo Bem-vindo ao jogo de adivinhacao!
echo Voce tem 5 tentativas para adivinhar um numero entre 1 e 50.

:inicio
set /p palpite=Digite seu palpite: 
set /a tentativas+=1

if %palpite% equ %numeroSorteado% (
    echo Parabens! Voce adivinhou o numero em %tentativas% tentativa(s)!
    goto fim
) else if %palpite% lss %numeroSorteado% (
    echo Seu palpite foi menor que o numero correto.
) else (
    echo Seu palpite foi maior que o numero correto.
)

if %tentativas% lss 5 goto inicio

echo Voce esgotou todas as suas tentativas. O numero correto era %numeroSorteado%.

:fim
pause>nul