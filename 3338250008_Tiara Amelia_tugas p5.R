===================================================================
##1. Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?
===================================================================
# Menggunakan sebaran eksponensial
pexp(5, rate = 1/5, lower.tail = FALSE) # atau
1 - pexp(5, rate = 1/5)

========================================================================================================================================================
##2. Kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 (interval 20 menit). Berapakah ragam (varians) waktu tunggu penumpang?
========================================================================================================================================================
# Menghitung varians teoritis Uniform U(a, b)
a <- 0
b <- 20
var_x <- (b - a)^2 / 12
var_x

===================================================================================================================================
##3. Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. Berapa peluang sensor tersebut rusak sebelum mencapai usia 5 tahun?
===================================================================================================================================  
# Menggunakan fungsi pexp untuk menghitung peluang kumulatif P(X < 5)
pexp(5, rate = 1/10)

===========================================================================================================================================================================================================
##4. Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. Kemasan dianggap underweight jika beratnya kurang dari 240 gram. Berapa proporsi produk yang tergolong underweight? 
===========================================================================================================================================================================================================
# Menggunakan fungsi pnorm untuk distribusi Normal N(mu=250, sd=5)
pnorm(240, mean = 250, sd = 5)

