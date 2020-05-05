// Learn more about F# at http://fsharp.org


open System

//expresion regular: a(bb*)* 
let rec Stateq2(cont:int, cadena:string) = //declaracion del ultimo estado del automata. debido a que la expresion regular lo permite, se hace recursiva para no tener que llamar otra vez al estado q1
    let mutable cont1 = cont            //similar a lo anterior
    if cont < cadena.Length then        //validacion del buffer
        if cadena.[cont1] = 'a' then    //no valida a's 
            printfn "Cadena no valida"
        else
            if cadena.[cont1] = 'b' then //valida otra b, aumenta buffer y se vuelve a llamar a si misma. 
                cont1 <- cont1 + 1
                Stateq2(cont1,cadena)
            else
                printfn "Cadena no valida"
    else
        printfn "Cadena valida"


let rec Stateq1(cont:int, cadena:string) = //segundo estado, tiene la posicion de la cadena a analizar y la cadena
    let mutable cont1 = cont    //similar al metodo anterior
    if cont1 < cadena.Length then   //mientras haya algo en el buffer
        if cadena.[cont1] = 'a' then    //si se encuentra una a, es invalido, debido a la exprresion regular
            printfn "Cadena no valida"
        else
            if cadena.[cont1] = 'b' then    //si es que sigue una b, entonces continua al siguiente estado y se recorre el buffer
                cont1 <- cont1 + 1
                Stateq2(cont1,cadena)
            else                            //se sigue otra letra que no sea b, se manda a error
                printfn "Cadena no valida"
    else
        printfn "Cadena valida"

let Stateq0(cont:int,cadena:string) =       //primer estado/estado inicial
    let mutable cont1 = cont    //varible auxiliar para poder trabajar y editar la variable cont, se repite en los demas estados
    if cont1 < cadena.Length then   //si el buffer sigue con un caracter de la cadena continua, de lo contrario, manda error; validacion en todos los estados
        if cadena.[cont1] = 'a' then    //si lo que esta en el bufer coincide con parte de la expresion regular, valida ese caracter y recorre el buffer
            cont1 <- cont1 + 1
            Stateq1(cont1,cadena)   //entra al segundo estado
        else

            printfn "Cadena no valida"
    else
        printfn "Cadena valida"


let start(cadena:string) =
    let  mutable cont = 0   //contador que realiza el corrimiento de la cadena (funcion de buffer)
    Stateq0(cont, cadena)



[<EntryPoint>]
let main argv =
    printf "Escribe una cadena: "
    let phrase = Console.ReadLine() //se ingresa una cadena a evaluar por la expresion regular
    start(phrase)       //inicia evaluacion
    0 // return an integer exit code
