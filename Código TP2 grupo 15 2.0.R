#TP 2 proba

set.seed(323)
x <- runif (150)*3 + 1
u <- runif(150)
y <- (-log(1-u))/x^2 #Y/X=x

pares <- t(matrix(c(x,y),nrow = 2,byrow = TRUE))

ex<-mean(x) #promedio de las X
ey<-mean(y) #promedio de las y
vx<-mean((x-ex)^2) #varianza de X
cxy<-mean((x-ex)*(y-ey)) #covarianza entre X e Y

a<-cxy/vx #pendiente recta regresión
b<-mean(y)-a*mean(x) #ordenada al origen

m <- seq(1,4,0.1)

plot(m,
     5/(m^2),
     xlab = 'x',
     ylab = 'f(x)',
     type = 'l',
     lwd = 3,
     col = 'darkslategray',
     xlim = c(0.9,4.1),
     ylim = c(-.1,5),
     cex.lab = 1.5,
     main = 'Scatter Plot')
abline(a=b,b=a,col= '#8B6508', lwd = 3)
points(pares, pch = 20, col = "black")


NW <- function(j,h){
  ñ = c()
  l = 0
  for(i in 1:length(pares[,1])){
    if(abs(pares[i,1] - j) <= h){
       l = l+1
       ñ <- c(ñ,pares[i,2])}}
  k <- mean(ñ)
  return(k)
}


NW2 <- function(){
  x <- c()
  for(i in seq(1,4,0.02)){
    x <- c(x,NW(i,0.2))}
    return(x)
}



#NW y NW2 son usados para realizar el cálculo teórico del método de Nadarama-Watson detallado en el informe
#(elgir en esta función el valor de h cambiando la segunda variable en el vector(NW(i,0.5)))

#Aqui debajo dejamos opciones para graficar los incisos D y E
#Las del inciso D se deben graficar por sobre el plot anterior.

#D)
x <- NW2()
lines(seq(1,4,0.02),x,col="firebrick",lwd=3)

#E)
hist(pares[,2],breaks=50, main ="Histograma de Y con curva de densidad",prob=TRUE)
lines(density(pares[,2]), lwd = 2, col = 'darkblue')
