
#nombre: Franco Najarro Mallqui 20081384c
#Respuesta3 : Este codigo utiliza una funcion que tiene un argumento lista y utiliza las funciones is.vector() y is.matrix() para saber si un miembro de la lista es de un tipo o del otro. A continuacion se actualizan los miembros de la lista por sus respectivas medias geometricas de los elementos de un vector o un vector de medias geometricas de los elementos de las filas para una matriz !!!! 
geolista <- function(lista){
 
 k=numeric(length(lista))
 for(i in 1: (length(lista)) ) {
 if(is.vector(lista[[i]]))
 {
 lista[[i]]<- prod(lista[[i]])^(1/length(lista[[i]]))
 } else if( is.matrix(lista[[i]]))
  {
 x=apply(lista[[i]],1,prod)
 lista[[i]] <- x^(1/ncol(lista[[i]]))
 }
 }
 return (lista)
 }
 
 f4 <- list(1:3 , matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))
 geolista(f4)
#la ejecucion seria:

#[[1]]
#[1] 1.817121

#[[2]]
#[1] 1.404944 1.395710 1.310132 1.451839

#[[3]]
#[1] 1.840662 2.026346

f5 <- list(1:9,matrix(1:9,1,9), matrix(1:9,9,1),matrix(1:9,3,3))
geolista(f5)
#La ejecucion para esta parte es:
#[[1]]
#[1] 4.147166

#[[2]]
#[1] 4.147166

#[[3]]
#[1] 1 2 3 4 5 6 7 8 9

#[[4]]
#[1] 3.036589 4.308869 5.451362



