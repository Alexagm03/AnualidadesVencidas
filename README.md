# Anualidades Vencidas
En este repositorio se agrupan las funciones para calcular anualidades vencidas, al igual que dos ejemplo para corroborar su funcionalidad.

## Funciones 

Con el siguiente código , puede usted cargar las funciones necesarias para los cálculos de anualidades vencidas: 
```{r}
source("https://raw.githubusercontent.com/Alexagm03/AnualidadesVencidas/refs/heads/main/VencidasFormulas.R")
```
## Cálculo del Valor Futuro teniendo la anualidad, tasa del periodo y numero de pagos.
 
Un inversionista realiza un pago mensual de $1,200 al final de cada mes durante 5 años en una anualidad vencida que paga una tasa de interés del 6% anual, compuesta mensualmente. ¿Cuál es el valor futuro de esta inversión?

Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada: 
A=1200
r=0.005
t=60
# Calculamos el valor futuro: 
ValorFuturo=ValorFuturo(A,r,t)
#Imprimir el resultado:
ValorFuturo
```
## Calculo del numero de pagos teniendo anualidad, tasa del periodo, valor final.

Un individuo realiza pagos quincenales de $1,000 al final de cada quincena en una cuenta que paga una tasa de interés del 5% anual, compuesta quincenalmente. Si quiere acumular $80,000, ¿cuántas quincenas deberá hacer estos pagos bajo una anualidad vencida?

Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada: 
A=1000
r=0.002083
VF=80000
# Calculamos el numero de pagos: 
NumeroPagos=NumeroPagos(VF,A,r)
#Imprimir el resultado:
NumeroPagos
```
