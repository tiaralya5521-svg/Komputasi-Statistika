# ==========================================
# 1. Vektor Numerik (Numeric Vector)
# ==========================================
vektor_numerik <- c(1.5, 2.7, 3.14, 8.0)
print(vektor_numerik)
class(vektor_numerik) # Mengecek tipe data

# ==========================================
# 2. Vektor Integer (Integer Vector)
# ==========================================
# Gunakan akhiran 'L' untuk memastikan nilainya berupa integer
vektor_integer <- c(1L, 5L, 10L, 20L)
print(vektor_integer)
class(vektor_integer)

# ==========================================
# 3. Vektor Logical (Logical Vector)
# ==========================================
vektor_logical <- c(TRUE, FALSE, TRUE, TRUE)
print(vektor_logical)
class(vektor_logical)

# ==========================================
# 4. Matrix
# ==========================================
# Membuat matriks 3x3 dengan angka 1 sampai 9
matriks_ku <- matrix(1:9, nrow = 3, ncol = 3)
print(matriks_ku)

# ==========================================
# 5. Array
# ==========================================
# Membuat array 3 dimensi (2 baris, 3 kolom, 2 matriks/layer)
array_ku <- array(1:12, dim = c(2, 3, 2))
print(array_ku)

# ==========================================
# 6. Data Frame (4 kolom: Character, Numerik, Logical, Integer)
# ==========================================
df_ku <- data.frame(
  nama = c("Andi", "Budi", "Cici", "Dina"), # Character
  tinggi = c(170.5, 165.2, 158.0, 160.8), # Numerik
  lulus = c(TRUE, TRUE, FALSE, TRUE),     # Logical
  umur = c(20L, 22L, 19L, 21L)            # Integer
)
print(df_ku)

# ==========================================
# 7. List (Berisi Vektor Numerik, Integer, Data Frame, & List dalam List)
# ==========================================
list_utama <- list(
  elemen_numerik = c(10.5, 20.1),
  elemen_integer = c(1L, 2L, 3L),
  elemen_df = df_ku,
  
  # List bersarang (list di dalam list)
  elemen_sub_list = list(
    sub_numerik = c(99.9, 88.8),
    sub_integer = c(7L, 8L),
    sub_df = data.frame(id = 1:2, kode = c("A", "B"))
  )
)

print(list_utama)