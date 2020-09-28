/* 
 *  Programa que utiliza metodos para simular cada estado (q's), para la expresion regular:  E(r) = a(bb*)*
 *  Cadenas validas: a, ab, abb
 */

use std::io;//Libreria para leer datos del usuario

//Función donde igualamos nuestro contador a 0 y llamamos a nuestro estado inicial del autómata
fn start(cont: &mut usize, string: &mut String){
    *cont = 0;
    state_q0(cont,string);
}
//Primero nos confirma si el tamaño del contador es menor que el arreglo de caracteres
fn state_q0(cont: &mut usize, string: &mut String){
    if *cont < string.len(){
        if string.chars().nth(*cont).unwrap() == 'a'{
            *cont += 1;
            state_q1(cont,string);
        }else{
            println!("Cadena no valida");
        }
    }else{
        println!("Cadena no valida");
    }
}

fn state_q1(cont: &mut usize, string: &mut String){
    if *cont < string.len(){
        if string.chars().nth(*cont).unwrap() == 'a'{
            println!("Cadena no valida");
        }else{
            if string.chars().nth(*cont).unwrap() == 'b'{
                *cont += 1;
                state_q2(cont, string);
            }else{
                println!("Cadena no valida");
            }
        }
    }else{
        println!("Cadena valida");
    }
}

fn state_q2(cont: &mut usize, string: &mut String){
    if string.len() > *cont {
        if string.chars().nth(*cont).unwrap() == 'a'{
            println!("Cadena no valida");
        }else{
            if string.chars().nth(*cont).unwrap() == 'b'{
                *cont += 1;
                state_q1(cont, string);
            }else{
                println!("Cadena no valida");
            } 
        }
    }else{
        println!("Cadena valida");
    }
}

fn main() {
    let mut input = String::new();//Se crea String donde se guardará la cadena que ingrese el usuario
    println!("Esciba una cadena y oprima entar: : ");//Se le pide al usuario que ingrese una cadena
        io::stdin().read_line(&mut input).unwrap();//Se obtiene lo que el usuario escribió
    let mut string = input.trim().to_string();
    let mut cont: usize = 0;
    start(&mut cont,&mut string);     
}
