#Se presentan las funciones de anualidades vencidas 
#Autor: Alexa García Méndez
#V.1.0: 19 de octubre del 2024

#Valor futuro, teniendo anualidad, tasa del periodo y número de anualidades:
A=1500
i=0.05  
r=i/12 
t=60 
VF=A*(((1+r)^t-1)/r)
return(VF)  

#Anualidad, teniendo valor futuro, tasa del periodo y número de pagos:
VF=102009 
i=0.05
r=i/12 
t=60 
A=VF/(((1+r)^t-1)/r)
return(A)

#Número de pagos, teniendo valor futuro, anualidad y tasa del periodo:
A=1500 
i=0.05 
r=i/12 
VF=102009 
t=log(((VF*r)/A)+1)/log(1+r)
t=round(t,0) #da valores redondeados 
return(t)

#Tasa del periodo, teniendo valor futuro, número de pagos y anualidad:
source("https://www.dropbox.com/s/s1nv2dypd2z0f3e/funcionesRMateFin.R?raw=1")
A=1500
VF=102009
t= 60 
r=tasaAnualidadVencidaVF(VF,A,t,umbral=10*(10^-17))
return(r)

#Valor Actual, teniendo anualidad, tasa del periodo y número de pagos.
A=1500
i=0.05
r=i/12
t=60
VA=A*((1-(1+r)^-t)/r)
return(VA)

#Anualidad, conociendo valor actual, tasa del periodo y número de pagos
VA= 79486.059
i=0.05
r=i/12
t=60
A=VA/((1-(1+r)^-t)/r)
return(t)

#Número de pagos, teniendo valor actual, anualidad y tasa del periodo.
VA= 79486.059
A=1500
i=0.05
r=i/12
t=-log(1-((VA*r)/A))/log(1+r)
t=round(t,0) #da valores redondeados 
return(t)

#Tasa del periodo, teniendo valor actual, número de pagos y anualidad.
source("https://www.dropbox.com/s/s1nv2dypd2z0f3e/funcionesRMateFin.R?raw=1")
VA= 79486.059
A=1500
t=60
r=tasaAnualidadVencidaVA(VA,A,t,umbral=10*(10^-17))
return(r)
