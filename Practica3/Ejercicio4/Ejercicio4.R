#Nombre : Franco Najarro Mallqui 20081384c
#Respuesta4 : Respuestas en los item correspondientes

# (A)
f1 <- function(x={y <- 1 ; 2} , y=0) {
x+y
}
f1()

#ESTE CODIGO PRODUCE LA SUMA DE LOS VALORES DEL PARAMETRO X E Y , EN ESTE CASO x toma el valor de 2 e Y toma el valor de 1 . ESTA ES OTRA FORMA DE PASAR PARAMETROS A LAS FUNCIONES EN R.

#f1 <- function(x={y <- 1 ; 2} , y=0) {
#     x+y
# }
# f1()
#[1] 3


#(B)
#AMBOS PRODUCEN EL MISMO RESULTADO YA QUE LA FUNCION LAPPLY SE APLICA A CADA ELEMENTO DEL ARRAY O VECTOR O MATRIZ. EN ESTE CASO EL VECTOR trims tiene 4 elementos
#lapply(trims,function(trim) mean(x,trim=trim))  produce un vector de 4 elementos donde cada uno de ellos es la media del vector x con un argumento trim igual al elemento correspondiente de trims .En este caso la funcion se declara dentro del lapply.

# lapply(trims , mean , x=x)  produce el mismo resultado , ya que se esta aplicando sobre cada elemento del vector trims , la funcion a aplicar es mean , y el segundo argumento es la funcion mean , el tercer argumento es el vector sobre el que se aplicara la media tomando como trim a los elementos correspondientes del vector trims . Es por ello que ambos producen el mismo resultado.  
trims <- c(0,0.1,0.2,0.5)
 x <- rcauchy(100)
 
 lapply(trims,function(trim) mean(x,trim=trim))

#[[1]]
#[1] 0.5653242

#[[2]]
#[1] 0.02354415

#[[3]]
#[1] 0.03762374

#[[4]]
#[1] -0.04670744

 lapply(trims , mean , x=x)
#[[1]]
#[1] 0.5653242

#[[2]]
#[1] 0.02354415

#[[3]]
#[1] 0.03762374

#[[4]]
#[1] -0.04670744

#(C)

