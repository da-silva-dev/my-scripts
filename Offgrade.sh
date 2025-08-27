#!/bin/bash

cd Git/my-scripts/ &&
git pull &&
neofetch &&
echo sudo flatpak update -y &&
echo sudo snap refresh &&
echo sudo apt update &&
echo sudo apt upgrade -y &&
echo DIGITE A SENHA PARA EXECUTAR OS COMANDOS ACIMA: &&
sudo -v &&
sudo flatpak update -y &&
sudo snap refresh &&
sudo apt update &&
sudo apt upgrade -y &&
# Faz a pergunta e espera por uma única tecla como resposta.
# -n 1: lê apenas 1 caractere.
# -p "..." : exibe o texto do prompt.
read -n 1 -p "DESEJA DESLIGAR O COMPUTADOR? (s/S/y/Y): " resposta
echo "" # Adiciona uma quebra de linha para organizar a saída.

# Verifica qual tecla foi pressionada
case "$resposta" in
    [sSyY])
        # Se a resposta for s, S, y ou Y, executa este bloco.
	shutdown -h now
        ;;
    *)
        # Se qualquer outra tecla for pressionada, executa este bloco.
        echo "DESLIGAMENTO CANCELADO"
        ;;
esac
