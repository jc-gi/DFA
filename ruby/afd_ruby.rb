#Programa en Ruby que simula cada estado q para la  E(r) = a(bb*)*

cadena =""
cont=0
  
def initi(cont)
  puts "Introduzca la cadena a validar: "
  cadena = gets.chomp
  c = cadena.scan(/\w/) #Creamos un arreglo de caracteres que nos permitir� recorrer la cadena
  inicio(cont, c)
end

def inicio(cont, c) 
#Metodo donde igualamos nuestro contador a 0 y llamamos a nuestro estado inicial del aut�mata
  cont = 0;
  q0(cont, c)
end
  
def q0(cont, c)   
#Estado q0. Primero nos confirma si el tama�o del contador es menor que el arreglo de caracteres
  if(cont < c.length)
    if(c[cont]=='a') #Valida si la posici�n donde est� es igual a "a". Si as� es, pasar� al siguiente estado, ya que cumpli� la expresi�n regular. Y aumentamos el contador
      cont+=1
      q1(cont, c)
    else #Si es diferente de a, no ser� una cadena valida, ya que no cumple con la expresi�n regular
      puts "Cadena no valida"
    end
  else
    puts "Cadena no valida"
  end
end

def q1(cont, c) 
  if(cont<c.length)
    if(c[cont]=='a') #Si la posici�n donde est� es igual a "a" no pasar� al siguiente estado, porque no cumpli� la expresi�n regular ya que solamente puede ir una a
      puts "Cadena no valida"
    else #Si la posici�n donde est� es igual a "b", pasar� al siguiente estado, ya que cumpli� la expresi�n regular. Y aumentamos el contador
      if(c[cont]=='b')
        cont+=1
        q2(cont, c)
      else #Si es diferente de a, no ser� una cadena valida, ya que no cumple con la expresi�n regular
        puts "Cadena no valida"
      end
    end
  else
    puts "Cadena valida"
  end
end

def q2(cont, c) 
  if(cont<c.length)
    if(c[cont]=='a') #Si la posici�n donde est� es igual a "a", no pasar� al siguiente estado, ya que no cumpli� la expresi�n regular porque solamente puede ir una a al principio
      puts "Cadena no valida"
    else
      if(c[cont]=='b') #Si la posici�n donde est� es igual a "b", pasar� al siguiente estado(regresar� al estado q1), ya que cumpli� la expresi�n regular. Y aumentamos el contador
        cont+=1
        q1(cont, c)
      else
        puts "Cadena no valida"
      end
    end
  else
    puts "Cadena valida"
  end
end

initi(cont) #Inicia el funcionamiento del aut�mata