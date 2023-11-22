# Pedir al usuario que ingrese un valor para k
k <- as.integer(readline(prompt="Por favor, introduce un valor para k (grados de libertad): "))

# Verificar que k es un entero positivo
if (k <= 0 || is.na(k)) {
  stop("El valor de k debe ser un número entero positivo.")
}

# Definir los límites del gráfico en función de k
limite_superior <- qchisq(0.95, df = k)
valores_x <- seq(0, limite_superior, length.out = 100)

# Calcular los valores de densidad de la distribución Chi cuadrado
valores_densidad <- dchisq(valores_x, df = k)

# Graficar la distribución Chi cuadrado utilizando las funciones base de R
plot(valores_x, valores_densidad, type = "l", col = "blue",
     main = paste("Distribución Chi-cuadrado con k =", k),
     xlab = "Valor", ylab = "Densidad",
     lwd = 2)

