#!/bin/bash

instalarDependencias(){
    echo "Instalando Dependencias..."
    sudo apt update
   

}


instalarAnsible(){
    echo "Instalando ansible..."
    sudo apt install ansible -y
    ansible --version

}

main(){
    instalarDependencias
    instalarAnsible
}


main