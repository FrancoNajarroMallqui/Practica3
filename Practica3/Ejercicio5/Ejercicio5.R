#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 5 : El codigo de la parte (a) muestra una funcion que halla la autocorrelación para un vector.

#(A)
tmpFn <- function(xVect){
r1=sum( (xVect[2:length(xVect)]-mean(xVect))*(xVect[1:(length(xVect)-1)]-mean(xVect)) ) / sum((xVect[2:length(xVect)]-mean(xVect))*(xVect[2:length(xVect)]-mean(xVect)) )

r2=sum( (xVect[3:length(xVect)]-mean(xVect))*(xVect[1:(length(xVect)-2)]-mean(xVect)) ) / sum((xVect[2:length(xVect)]-mean(xVect))*(xVect[2:length(xVect)]-mean(xVect)) )

lista = list(r1,r2)
return (lista)
}


xVect=seq(2,56,3)  # vector a aplicar la funcion!!

#la ejecucion seria
#xVect=seq(2,56,3)
#> xVect
# [1]  2  5  8 11 14 17 20 23 26 29 32 35 38 41 44 47 50 53 56

#[[1]]
#[1] 0.9815951

#[[2]]
#[1] 0.799591


 
#(B) generalizacion de la funcion tmpFn:  con un for para hallar cada elemento del vector de salida r
tmpFn <- function(xVect,k){
r=numeric(length(xVect)+1)
r[1]=0
for(i in 1:(length(xVect)-1)){
r[i+1]=sum( (xVect[(1+i):length(xVect)]-mean(xVect))*(xVect[1:(length(xVect)-i)]-mean(xVect)) )/sum((xVect[2:length(xVect)]-mean(xVect))*(xVect[2:length(xVect)]-mean(xVect)) )
}
return (r)
}

#la ejecucion seria :
 #tmpFn((xVect))
 #[1]  0.000000000  0.981595092  0.799591002  0.621676892  0.449897751  #0.286298569  0.132924335 -0.008179959 -0.134969325
#[10] -0.245398773 -0.337423313 -0.408997955 -0.458077710 -0.482617587 -0.480572597 #-0.449897751 -0.388548057 -0.294478528
#[19] -0.165644172  0.000000000


