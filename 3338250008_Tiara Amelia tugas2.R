data("iris")
str(iris)
head(iris)
# 1. Tampilkan data Sepal.Length saja
iris$Sepal.Length

# 2. Sebutkan tipe data tiap kolom
sapply(iris, class)


# 3. Buat variabel baru bernama 'turunan' dari Sepal.Width 
# (Nilai "Besar" jika Sepal.Width > 3, selain itu "Kecil")
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")


# 4. Ubah nama variabel 'turunan' menjadi 'sepal'
colnames(iris)[colnames(iris) == "turunan"] <- "sepal"


# 5. Ambil data dengan sepal bernilai "Besar" dari species "virginica"
data_virginica_besar <- iris[iris$sepal == "Besar" & iris$Species == "virginica", ]
data_virginica_besar


# 6. Cek jumlah species dalam data
table(iris$Species)


# 7. Pecah data iris menjadi 3 data frame khusus untuk species tertentu
df_setosa <- iris[iris$Species == "setosa", ]
df_versicolor <- iris[iris$Species == "versicolor", ]
df_virginica <- iris[iris$Species == "virginica", ]


# 8. Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
df_setosa_sorted <- df_setosa[order(df_setosa$Sepal.Width), ]
df_versicolor_sorted <- df_versicolor[order(df_versicolor$Sepal.Width), ]
df_virginica_sorted <- df_virginica[order(df_virginica$Sepal.Width), ]

# Menampilkan hasil pengurutan (contoh untuk setosa)
head(df_setosa_sorted)