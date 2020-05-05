import java.util.Scanner

fun main(args: Array<String>) {
    val p = AFN()
}

class AFN()
{
    internal var entra = Scanner(System.`in`)
    internal var cadena: String
    internal var cont = 0
    internal var c: CharArray

    init {
        println("AFN\n")
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
            if (c[cont] == 'a') {
                cont++
                q0()

            } else {
                if (c[cont] == 'b') {
                    cont++
                    q1()
                } else {
                    println("Cadena no valida")
                }
            }

        } else {
            qf()
        }

    }

    fun q1() {
        if (cont < c.size) {
            if (c[cont] == 'b') {
                cont++
                q1()

            } else {
                if (c[cont] == 'a') {
                    cont++
                    q2()
                } else {
                    println("Cadena no valida")
                }
            }


        } else {
            qf()
        }

    }

    fun q2() {
        if (cont < c.size) {
            if (c[cont] == 'a') {
                cont++
                q2()

            } else {
                if (c[cont] == 'b') {
                    cont++
                    q1()
                } else {
                    println("Cadena no valida")
                }
            }

        } else {

            qf()

        }

    }


    fun qf() {
        println("Cadena valida\n")
    }

}