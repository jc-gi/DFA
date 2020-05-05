//Expresion regular
//[a*(bb)*b*(aa)*]

import java.util.Scanner


fun main(args: Array<String>)
{
    val p = EjAutomatas()
}

class EjAutomatas()
{
    internal var entra = Scanner(System.`in`)
    internal var cadena: String
    internal var cont = 0
    internal var c: CharArray

    init {
        println("AFD MINIMO\n")
        println("Ingrese la cadena\n")
        cadena = entra.next()
        c = cadena.toCharArray()
        inicio()
    }

    fun inicio() {
        cont = 0
        q0()
    }


    fun q0() {
        if (cont < c.size) {
            if (c[cont] == 'a' || c[cont] == 'b' || c[cont]==' ') {
                cont++
                q0()

            } else {
                print("Cadena no valida\n")
            }

        } else {
            println("cadena valida\n")
        }

    }

}