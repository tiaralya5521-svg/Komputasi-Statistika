===============================================================================
## 1. Pemodelan Poisson
===============================================================================
# Diketahui:
# - Rata-rata pelanggan datang per jam (lambda) = 3
# - X = variabel acak jumlah pelanggan yang datang per jam
# - X ~ Poisson(lambda = 3)

# Parameter Poisson
lambda <- 3

# Menghitung P(X >= 5) = 1 - P(X <= 4)
prob <- 1 - ppois(4, lambda = lambda)
prob

===============================================================================
## 2. Pemodelan Hipergeometrik
===============================================================================
# Parameter populasi dan sampel
N <- 100  # Ukuran populasi
K <- 20   # Jumlah sukses di populasi (bola merah)
n <- 10   # Ukuran sampel

# Domain k (banyak bola merah yang terambil dalam sampel)
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf_hyper <- dhyper(k, m = K, n = N - K, k = n)

# Menampilkan tabel PMF
data.frame(Jumlah_Merah = k, Peluang = pmf_hyper)

===============================================================================
## 3. Simulasi Binomial vs PMF Teoretis
===============================================================================
# 1. Set seed agar hasil simulasi dapat direproduksi
set.seed(123)

# 2. Parameter Binomial
n_trials <- 1000
n <- 15
p <- 0.4

# 3. Simulasi 1.000 percobaan Binomial
simulasi <- rbinom(n_trials, size = n, prob = p)

# 4. Menghitung PMF teoritis untuk nilai x = 0 s.d. 15
x_vals <- 0:n
pmf_teoritis <- dbinom(x_vals, size = n, prob = p)

# 5. Membuat plot perbandingan Histogram vs PMF Teoritis
hist(simulasi, 
     breaks = seq(-0.5, n + 0.5, by = 1), 
     freq = FALSE, 
     col = "lightblue", 
     main = "Simulasi Binomial (n=15, p=0.4) vs PMF Teoritis",
     xlab = "Jumlah Keberhasilan (X)", 
     ylab = "Peluang / Frekuensi Relatif")

# Menambahkan garis PMF Teoritis
lines(x_vals, pmf_teoritis, type = "b", col = "red", pch = 19, lwd = 2)

# Menambahkan legenda
legend("topright", legend = c("Simulasi (Histogram)", "PMF Teoritis"),
       fill = c("lightblue", NA), col = c(NA, "red"), lty = c(NA, 1), pch = c(NA, 19))