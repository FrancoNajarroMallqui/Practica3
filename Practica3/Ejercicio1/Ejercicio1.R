#Nombre : Franco Najarro Mallqui 20081384c
#Respuesta1: El codigo usa la funcion paste y lapply para pegar el signo de exclamacion al final de cada elemento de cada miembro de la lista

pegar <- function(a){
paste(a,"!","")
}

f3=list("a",c("b","c","d","e"),"f",c("g","h","i")) # Esta es la lista de elementos a probar la funcion !!

lapply(f3,pegar)


#la ejecucion seria :
#[[1]]
#[1] "a ! "

#[[2]]
#[1] "b ! " "c ! " "d ! " "e ! "

#[[3]]
#[1] "f ! "

#[[4]]
#[1] "g ! " "h ! " "i ! "

