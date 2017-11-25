# Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 6: En esta pregunta estamos trabajando con el dataframe iris ( que no esw otra cosa que una base de datos) .
#Hallamos sus principales caracteristicas como el numero de filas y el numero de columnas , tambien hallamos las estadisticas para las columnas numericas

#(a)
#El dataframe iris esta estructurado de la siguiente manera: consta de 5 campos , 4 de los cuales son numericos , y el ultimo campo almacena cadenas (nombre de las especies) . Esto es una base de datos , asi es como podemos armar una base de datos usando R.
#Se observa tambien que los campos son: Sepal.Length , Sepal.Width , Petal.Length , Petal.Width  ,  Species.
#para consultar el numero de registros de este dataframe , con la siguiente instruccion:

nrow(iris)
#[1] 150



#el numero de campos o de columnas se obtiene con la instruccion:

ncol(iris)
#[1] 5

#A continuacion se muestra un estracto del dataframe.(base de datos)
 iris
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
3            4.7         3.2          1.3         0.2     setosa
4            4.6         3.1          1.5         0.2     setosa
5            5.0         3.6          1.4         0.2     setosa
6            5.4         3.9          1.7         0.4     setosa
7            4.6         3.4          1.4         0.3     setosa
8            5.0         3.4          1.5         0.2     setosa
9            4.4         2.9          1.4         0.2     setosa
10           4.9         3.1          1.5         0.1     setosa
11           5.4         3.7          1.5         0.2     setosa
12           4.8         3.4          1.6         0.2     setosa
125          6.7         3.3          5.7         2.1  virginica
126          7.2         3.2          6.0         1.8  virginica
127          6.2         2.8          4.8         1.8  virginica
128          6.1         3.0          4.9         1.8  virginica
129          6.4         2.8          5.6         2.1  virginica
130          7.2         3.0          5.8         1.6  virginica
131          7.4         2.8          6.1         1.9  virginica
132          7.9         3.8          6.4         2.0  virginica
133          6.4         2.8          5.6         2.2  virginica
134          6.3         2.8          5.1         1.5  virginica
135          6.1         2.6          5.6         1.4  virginica
136          7.7         3.0          6.1         2.3  virginica
137          6.3         3.4          5.6         2.4  virginica
138          6.4         3.1          5.5         1.8  virginica
139          6.0         3.0          4.8         1.8  virginica
140          6.9         3.1          5.4         2.1  virginica
141          6.7         3.1          5.6         2.4  virginica
142          6.9         3.1          5.1         2.3  virginica
143          5.8         2.7          5.1         1.9  virginica
144          6.8         3.2          5.9         2.3  virginica
145          6.7         3.3          5.7         2.5  virginica
146          6.7         3.0          5.2         2.3  virginica
147          6.3         2.5          5.0         1.9  virginica
148          6.5         3.0          5.2         2.0  virginica
149          6.2         3.4          5.4         2.3  virginica
150          5.9         3.0          5.1         1.8  virginica
> 
> 
# consulta de las dimensiones del dataframe iris
> length(iris)
[1] 5
> nrow(iris)
[1] 150
> ncol(iris)
[1] 5


#(b) Usando la funcion summary , para obtener las estadisticas de este dataframe.
> summary(iris)
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
#Se observa que nos muestra para cada columna la media , el valor minimo , el valor maximo , la mediana , los quantiles primero , segundo(mediana) y el tercero.
#Ademas nos muestra el conteo de unidades por especie.(50 de setosa , 50 de versicilor , 50 de virginica)

                
#(C) Obteniendo las estadisticas de la primera columna del dataframe iris : por medio de las funciones min() , max() , mean() , quantile() , observamos que coinciden aproximadamente con los valores proporcionados por summary().                
> min(iris[1])
[1] 4.3
> max(iris[1])
[1] 7.9
> mean(iris[[1]])
[1] 5.843333
> quantile(iris[[1]])
  0%  25%  50%  75% 100% 
 4.3  5.1  5.8  6.4  7.9 
> 

