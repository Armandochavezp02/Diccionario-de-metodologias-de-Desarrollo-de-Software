#!/bin/bash

#AQUI VAN LAS FUNCIONES
submenu() { 
        echo -ne "
        Usted esta en la sección {nombre de la sección}, seleccione la opción que desea utilizar.
        1) Agregar informacion.
        2) Buscar.
        3) Eliminar informacion.
        4) Leer base de informacion.
        5) Salir.
        "
        read -r res
        case $res in
        1)
            echo "Aqui va la funcion agregar informacion"
            ;;
        2) 
            echo "Aqui va la funcion  Buscar informacion."
            ;;
        3)
            echo "Aqui va la funcion Eliminar informacion"
            ;;
        4) 
            echo "Aqui va la funcion Leer base de informacion."
            ;;
        5) 
            echo "Saliendo del submenu"
            exit 0
            ;;
        *)
            echo "Opcion equivocada."
            exit 1
            ;;
        esac
    }

#Inicio del while loop del menu principal.
#El while loop nos permite seleccionar las opciones -a y -t
while [ -n "$1" ]; do 
    case "$1" in
    
    #Opcion -a con su menu y sub-menus.
    -a) echo "Metodologias agiles" 
    
    menu_principal_agil() {
        echo -ne "
        Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
        1) SCRUM
        2) X.P.
        3) Kanban
        4) Crystal
        5) Salir
        "
        read -r res # res = respuesta
        case $res in
        1)
            submenu
            ;;
        2)
            submenu
            ;;
        3)
            submenu
            ;;    
        4)
            submenu
            ;;
        5)
            echo "Buen dia <3"
            exit 0
            ;;
        *)
            echo "ERROR: Opcion invalida"
            exit 1
            ;;
        esac
    }

menu_principal_agil
;; #Fin de la opcion -a Metodologias agiles.

    #Opcion -t con su menu y sub-menus.
    -t) echo "Metodologias tradicionales"

     menu_principal_tradicional() {
        echo -ne "
        Bienvenido a la guía rápida de Metodologias Tradicionales, para continuar seleccione un tema:
        1) Cascada
        2) Espiral
        3) Modelo V
        4) Salir
        "
        read -r res # res = respuesta
        case $res in
        1)
            submenu
            ;;
        2)
            submenu
            ;;
        3)
            submenu
            ;;    
        4)
            echo "Buen dia <3"
            exit 0
            ;;
        *)
            echo "ERROR: Opcion invalida"
            exit 1
            ;;
        esac
    }
menu_principal_tradicional
;; #Fin de la opcion -t Metodologias tradicionales.

    #Opcion -* encaso de que seleccione un parametro diferente.
    *) echo "La opcion $1 no se reconoce";;

    esac
    shift
done


