#!/bin/bash
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
        # --- FIM DA AÇÃO 'A' ---

        echo "Ação 'a' finalizada."
        ;;

    *)
        # Se qualquer outra tecla for pressionada, executa este bloco.
        echo "DESLIGAMENTO CANCELADO"
        ;;
esac
