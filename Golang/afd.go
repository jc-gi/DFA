 package main

import (
	"fmt"
)


func main(){
  cadena := "as"
  start(cadena)
}

func start(cadena string) {
    cont := 0
    Stateq0(cont,cadena)
}

func Stateq0(cont int, cadena string) {

	if(cont < len(cadena) ){
    
		if(string(cadena[cont]) == "a"){
		cont :=cont +1
		Stateq1(cont, cadena)
		}else{
		fmt.Println("Cadena no valida")
		}
	}else{
    fmt.Println("Cadena valida")
  }
}

func Stateq1(cont int , cadena string){
  if(cont < len(cadena) ){
    
		if(string(cadena[cont]) == "a"){
		fmt.Println("Cadena no valida")
		}else{
      if(string(cadena[cont]) == "b"){
          cont:= cont+1
          Stateq2 (cont,cadena)
      }else{
        	fmt.Println("Cadena no valida")
      }
		
		}
	}else{
    fmt.Println("Cadena valida")
  }

}

func Stateq2(cont int , cadena string){
  if(cont < len(cadena) ){
    
		if(string(cadena[cont]) == "a"){
		fmt.Println("Cadena no valida")
		}else{
      if(string(cadena[cont]) == "b"){
          cont:= cont+1
          Stateq1 (cont,cadena)
      }else{
        	fmt.Println("Cadena no valida")
      }
		
		}
	}else{
    fmt.Println("Cadena valida")
  }

}

