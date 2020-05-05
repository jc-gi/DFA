/*
*/

// Validacion de una cadena mediante un AFD

package main

import(
	"fmt" //import de libreria para input y output en consola
)

//Funcion que "apunta" o indica cual es el estado inicial 
func start(s string){
	cont := 0 //se inicializa el contador en 0 
	stateq0(cont, s) //el estado inicial es q0, se puede definir cual se desea que sea el estado inicial en esta linea
}

//El estado q0 Valida que la primera letra de la cadena sea 'a'
func stateq0(cont int, s string){
	if cont < len(s){
		if s[cont] == 'a' {
			cont++
			stateq1(cont,s) //Se mueve al estado q1
		}else{
			fmt.Println("Cadena no valida")
		}
 	}else{
		fmt.Println("Cadena valida")
	}
}

//El estado q1 valida que la cadena continue con b 
func stateq1(cont int, s string){
	if cont < len(s){
		if s[cont] == 'a'{
			fmt.Println("Cadena no valida")
		}else{
			if s[cont] == 'b'{
				cont ++//El contador se utiliza para deerminar cuando se llega al final de la cadena y que o siga evaluando
				stateq1(cont,s)//Estado recursivo, valida que la cadena continue unicamente con b*
			}else{
				fmt.Println("Cadena no valida")
			}
		}
	}else{
		fmt.Println("Cadena valida")
	}
}


func main(){

	var phrase string
	fmt.Scanln(&phrase) //Se pide la entrada de la cadena al usuario
	start(phrase)//Se manda la cadena a la funcion de inicio del automata
}