=========================================================================
# 1. Mengambil Elemen dari Vektor, 
Menggunakan kurung siku []. Indeks R dimulai dari angka 1 (bukan 0).
==========================================================================
# Mengambil elemen ke-2
vektor_numerik[2]

# Mengambil elemen ke-1 sampai ke-3
vektor_integer[1:3]

# Filtering: Mengambil nilai yang TRUE saja
vektor_numerik[vektor_logical]
=====================================================================
# 2. Memilih Baris & Kolom di Matriks & Array
Format matriks adalah [baris, kolom]
=====================================================================
# Ambil baris ke-2, kolom ke-3 pada matriks
matriks_ku[2, 3]

# Ambil seluruh baris ke-1 saja
matriks_ku[1, ]

# Ambil data pada Array: baris 1, kolom 2, dari matriks/layer ke-2
array_ku[1, 2, 2]
=================================================================== 
# 3.Mengakses Kolom & Baris pada Data Frame
Bisa pakai simbol $, kurung siku [,], atau [[]].
===================================================================
# Cara paling populer: Pakai $ untuk ambil 1 kolom sebagai vektor
  df_ku$tinggi

# Mengambil baris ke-1 dan ke-3 untuk semua kolom
df_ku[c(1, 3), ]

# Filtering: Cari orang yang tingginya di atas 160 cm
df_ku[df_ku$tinggi > 160, ]
=====================================================================================
# 4. Mengakses List & List Bersarang (Nested List)
Gunakan [[]] untuk masuk ke dalam elemen list, atau panggil nama elemennya pakai $
=====================================================================================
# Mengakses data frame yang ada di dalam list utama
  list_utama$elemen_df

# Masuk ke LIST BERSARANG: Mengambil 'sub_df' di dalam 'elemen_sub_list'
list_utama$elemen_sub_list$sub_df

# Mengambil nilai angka 88.8 spesifik di dalam list bersarang (pencarian presisi)
list_utama[["elemen_sub_list"]][["sub_numerik"]][2]