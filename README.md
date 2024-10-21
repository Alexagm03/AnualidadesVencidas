# Anualidades Vencidas
En este repositorio se agrupan las funciones para calcular anualidades vencidas al igual que un ejemplo practico para comprobar cada una de ellas. 

## Funciones 

Con el siguiente código , puede usted cargar las funciones necesarias para los cálculos de anualidades vencidas: 
```{r}
source("https://raw.githubusercontent.com/Alexagm03/AnualidadesVencidas/refs/heads/main/VencidasFormulas.R")
```
A continuación se dan ejemplos del uso de las formulas correspondientes: 
## Valor futuro, teniendo anualidad, tasa del periodo y número de anualidades:
$A$=$1,500
$i$=5% anual  
$r$=0.417% mensual 
$t$=60 pagos mensuales en 5 años 
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada: 
A=1500
i=0.05  
r=i/12 
t=60
# Calculamos el valor futuro: 
ValorFuturo=ValorFuturo(A=Anualidad,r=Tasaperiodo,t=NumeroPagos)
#Imprimir el resultado:
ValorFuturo
```
