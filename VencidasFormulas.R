#Valor futuro, teniendo anualidad, tasa del periodo y número de anualidades:
ValorFuturo=function(A,r,t){
VF=A*(((1+r)^t-1)/r)
return(VF)  
}

#Anualidad, teniendo valor futuro, tasa del periodo y número de pagos:
Anualidad=function(VF,r,t){
A=VF/(((1+r)^t-1)/r)
return(A)
}

#Número de pagos, teniendo valor futuro, anualidad y tasa del periodo:
NumeroPagos=function(VF,A,r){
t=log(((VF*r)/A)+1)/log(1+r)
t=round(t,0) #da valores redondeados 
return(t)
}

#Tasa del periodo, teniendo valor futuro, número de pagos y anualidad:
source("https://www.dropbox.com/s/s1nv2dypd2z0f3e/funcionesRMateFin.R?raw=1")
Tasaperiodo=function(VF,t,A){
r=tasaAnualidadVencidaVF(VF,A,t,umbral=10*(10^-17))
return(r)
}

#Valor Actual, teniendo anualidad, tasa del periodo y número de pagos.
ValorActual2=function(A,r,t){
VA=A*((1-(1+r)^-t)/r)
return(VA)
}

#Anualidad, conociendo valor actual, tasa del periodo y número de pagos
Anualidad2=function(VA,r,t){
A=VA/((1-(1+r)^-t)/r)
return(t)
}

#Número de pagos, teniendo valor actual, anualidad y tasa del periodo.
NumeroPagos2=function(VA,A,r){
t=-log(1-((VA*r)/A))/log(1+r)
t=round(t,0) #da valores redondeados 
return(t)
}

#Tasa del periodo, teniendo valor actual, número de pagos y anualidad.
source("https://www.dropbox.com/s/s1nv2dypd2z0f3e/funcionesRMateFin.R?raw=1")
Tasaperodo2=function(VA,t,A){
r=tasaAnualidadVencidaVA(VA,A,t,umbral=10*(10^-17))
return(r)
}
