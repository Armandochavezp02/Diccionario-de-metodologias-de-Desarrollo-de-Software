#!/bin/bash

sec_agile_tradi=("SCRUM" "X.P" "Kanban" "Crystal" "Cascada" "Espiral" "Modelo V")

definicion=""
pwd=`pwd`

#AQUI VAN LAS FUNCIONES
creacion_ficheros(){
	if ! [[ -f SCRUM.inf ]]; then
		touch SCRUM.inf
	fi
	if ! [[ -f X.P.inf ]]; then
		touch X.P.inf
	fi
	if ! [[ -f Kanban.inf ]]; then
		touch Kanban.inf
	fi
	if ! [[ -f Crystal.inf ]]; then
		touch Crystal.inf
	fi
	if ! [[ -f Cascada.inf ]]; then
		touch Cascada.inf
	fi
	if ! [[ -f Espiral.inf ]]; then
		touch Espiral.inf
	fi
	if ! [[ -f "Modelo V.inf" ]]; then
		touch "Modelo V.inf"
	fi
}
agregar_informacion(){
	concepto_sin_formato=""
	concepto_con_formato=""
	clear
	read -p "Concepto: " concepto_sin_formato
	read -p "Definicion: " definicion
	concepto_con_formato="[$concepto_sin_formato].-"
	echo "$concepto_con_formato $definicion" >> "${sec_agile_tradi[$1]}.inf"
	read -p "Presione cualquier tecla para continuar ..."
}
leer_base_informacion(){
	clear
	cat "${sec_agile_tradi[$1]}.inf"
	read -p "Presione cualquier tecla para continuar ..."
}
buscar(){
	concepto_buscar=""
	clear
	read -p "Ingrese el Concepto para Buscar: " concepto_buscar
	echo "_________________________________________________"
	echo "           Resultado de la Busqueda"
	echo "_________________________________________________"
	grep -i "[][]$concepto_buscar[][]" "${sec_agile_tradi[$1]}.inf"
	echo " "
	read -p "Presione cualquier tecla para continuar ..."
}
eliminar(){
	concepto_eliminar=""
	clear
	read -p "Ingrese el Concepto para Eliminar: " concepto_eliminar
	grep -i -v "[][]$concepto_eliminar[][]" "${sec_agile_tradi[$1]}.inf" > temporal.inf
	cat temporal.inf > "${sec_agile_tradi[$1]}.inf"
	echo "_________________________________________________"
	echo "           Accion Realizada"
	echo "_________________________________________________"
	echo " "
	read -p "Presione cualquier tecla para continuar ..."
}
submenu() {
	res=0
    while [[ $res != 5 ]]; do 
		clear
        echo "================================================="
        echo "Usted esta en la sección '${sec_agile_tradi[$(($1-1))]}'"
        echo "================================================="
        echo "1) Agregar informacion."
        echo "2) Buscar."
        echo "3) Eliminar informacion."
        echo "4) Leer base de informacion."
        echo "5) Salir."
        
        read -p "Seleccione la opción que desea utilizar: " res
        case $res in
        1)
            agregar_informacion $(($1-1))
            ;;
        2) 
            buscar $(($1-1))
            ;;
        3)
            eliminar $(($1-1))
            ;;
        4) 
            leer_base_informacion $(($1-1))
            ;;
        5) 
            echo "Saliendo del submenu"
            ;;
        *)
            echo "Opcion equivocada."
            exit 1
            ;;
        esac
	done
}

creacion_ficheros
#Inicio del while loop del menu principal.
#El while loop nos permite seleccionar las opciones -a y -t
#while [ -n "$1" ]; do 
    case "$1" in
        #Opcion -a con su menu y sub-menus.
    	-a) 
			res1=0
			echo "Metodologias agiles" 
	    	menu_principal_agil() {
	            while [[ $res1 != 5 ]]; do 
					clear
					echo "================================================="
					echo "     Bienvenido a la guía rápida de Agile"
					echo "================================================="
					echo "1) SCRUM"
					echo "2) X.P."
					echo "3) Kanban"
					echo "4) Crystal"
					echo "5) Salir"
					
					read -p "para continuar seleccione un tema: " res1 # res = respuesta
					case $res1 in
					1)
						submenu 1
						;;
					2)
						submenu 2
						;;
					3)
						submenu 3
						;;    
					4)
						submenu 4
						;;
					5)
						echo "Buen dia <3"
						;;
					*)
						echo "ERROR: Opcion invalida"
						##exit 1
						;;
					esac
				done
	    	}
			menu_principal_agil
		;;
		#Fin de la opcion -a Metodologias agiles.

    	#Opcion -t con su menu y sub-menus.
    	-t) echo "Metodologias tradicionales"

	     	menu_principal_tradicional() {
				while [[ $res2 != 4 ]]; do 
					clear
					echo "================================================================="
					echo "     Bienvenido a la guía rápida de Metodologias Tradicionales"
					echo "================================================================="
					echo "1) Cascada"
					echo "2) Espiral"
					echo "3) Modelo V"
					echo "4) Salir"
					
					read -p "para continuar seleccione un tema: " res2 # res = respuesta
					case $res2 in
						1)
							submenu 5
							;;
						2)
							submenu 6
							;;
						3)
							submenu 7
							;;    
						4)
							echo "Buen dia <3"
							;;
						*)
							echo "ERROR: Opcion invalida"
							exit 1
							;;
					esac
				done
			}
	        menu_principal_tradicional
	        ;; #Fin de la opcion -t Metodologias tradicionales.

    #Opcion -* encaso de que seleccione un parametro diferente.
    *) echo "La opcion $1 no se reconoce";;
    esac
    shift
#done
clear
echo "Ha salido del programa"


