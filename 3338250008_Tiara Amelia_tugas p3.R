##TUGAS PERTEMUAN 3###
=======================
# 1. Buka data airquality
data(airquality)

==================================================================
# 2. Buat histogram untuk variabel Wind beserta kurva density-nya
hist(airquality$Wind, 
     probability = TRUE, 
     main = "Histogram dan Density Variabel Wind", 
     xlab = "Kecepatan Angin (Wind)", 
     col = "lightblue", 
     border = "white")
lines(density(airquality$Wind), col = "red", lwd = 2)

===================================================
# 3. boxplot dan stem-and-leaf plot
# Boxplot variabel Wind
boxplot(airquality$Wind, 
        main = "Boxplot Variabel Wind", 
        ylab = "Kecepatan Angin (Wind)", 
        col = "lightgreen")

# Stem-and-leaf display untuk variabel Wind
stem(airquality$Wind)

===================================================
# 4. scatter plot (hubungan antara Ozone dan Wind)
plot(airquality$Wind, airquality$Ozone,
     main = "Scatter Plot Wind vs Ozone",
     xlab = "Kecepatan Angin (Wind)",
     ylab = "Ozon (Ozone)",
     pch = 19, col = "darkblue")