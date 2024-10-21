# Anualidades Vencidas
En este repositorio se agrupan las funciones para calcular anualidades vencidas.

## Funciones 

Con el siguiente código , puede usted cargar las funciones necesarias para los cálculos de anualidades vencidas: 
```{r}
source("https://raw.githubusercontent.com/Alexagm03/AnualidadesVencidas/refs/heads/main/VencidasFormulas.R")
```
## Cálculo del Valor Futuro 

Para ilsutrar el ejemplo, se tiene el siguiente ejercicio: 

Un inversionista realiza un pago mensual de $1,200 al final de cada mes durante 5 años en una anualidad vencida que paga una tasa de interés del 6% anual, compuesta mensualmente. ¿Cuál es el valor futuro de esta inversión?

Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada: 
A=1200
r=0.0005
t=60
# Calculamos el valor futuro: 
ValorFuturo=ValorFuturo(A,r,t)
#Imprimir el resultado:
ValorFuturo
```
