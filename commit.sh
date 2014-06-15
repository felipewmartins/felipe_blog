#!/bin/bash
msgm=$1;

# Criado por Clairton Luz - http://clairtonluz.github.io/index.html

case $msgm in
    # verifica mensagem de commit
    "") echo "faltou a mensagem de commit use assim: ./commit.sh 'mensagem de commit'"; exit;;
 
    # Se nenhum parametro for passado, mostra a ajuda abaixo
    *) 
    echo "commiting felipe_blog..."; 
    git add -A .;
    git commit -m $msgm;
    git push origin master;
    
    cd ../felipewmartins.github.io/;
    echo "commiting felipewmartins.github.io..."; 
    
    git add -A .;
    git commit -m $msgm;
    git push origin master;
    
    cd ../felipe_blog/;
    
    echo;
    echo "Terminou!";

	exit 1;;
esac
