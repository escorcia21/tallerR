#---- experiemento 1 ----

library(prob)
library(combinat)

# punto a, un dado se lanza dos veces
omega <-rolldie(2);omega
# tamaño de la muestral
dim(omega)

# punto b, la suma de los números es 7
eB <- subset(omega,(X1+X2) == 7); eB
# punto c, la suma de los números es por lo menos un 11
eC <- subset(omega,(X1+X2) >= 11); eC
# punto D, la suma de los números es a lo más un 2
eD <- subset(omega,(X1+X2) <= 2); eD
# punto e, se obtiene un doble
eE <- subset(omega,(X1/X2) == 1); eE
# punto f, No se obtiene un doble
eF <- subset(omega,(X1/X2) != 1); eF
# punto g, unión de B y F
uB_F<-union(eB, eF); uB_F
# punto h, intersección de C y E
iC_E <-intersect(eC, eE); iC_E
# punto i, diferencia C-F
dC_F<- setdiff(eC, eF); dC_F

#---- charly ----
# punto j, union E y F
eJ <- union(eE,eF); eJ
all(eJ %in% omega)     
# punto k, intersección C y D
iC_D <- intersect(eC,eD); iC_D
# punto l, diferencia B y D
dB_D <- setdiff(eB,eD); dB_D
# punto m, contiene los elementos de la forma (3,4), ordenados
eM <- subset(omega, isin(omega, c(3, 4), ordered = TRUE)); eM
# punto n, contiene los elementos de la forma (3,4), no ordenados
eN <- subset(omega, isin(omega, c(3, 4), ordered = FALSE)); eN
# punto o, cualquiera obtenido al aplicar la función corchete
eO <- omega[1:7, ];eO

#---- experiemento 2 ----
# punto a, Una moneda se lanza cuatro veces 
omega2 <-tosscoin(4);omega2
# tamaño de la muestral
dim(omega2)

# punto b, las primeras 2 observaciones
evB <- omega2[1:2, ];evB
# punto c, las primeras 5 observaciones.
evC <- omega2[1:5, ];evC
