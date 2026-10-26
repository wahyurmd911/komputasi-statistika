# Membuat fungsi untuk pengujian hipotesis
perform_t_test <- function(populasi1, populasi2, ukuran_sampel, alpha = 0.05) {
  x <- sample(populasi1, size = ukuran_sampel, replace = TRUE)
  y <- sample(populasi2, size = ukuran_sampel, replace = TRUE)
  
  hasil_uji_t <- t.test(x, y)
  
  cat("Uji dengan ukuran sampel", ukuran_sampel,
      ", mean populasi 1:", mean(populasi1), ", varian populasi 1:", var(populasi1),
      "\ndibandingkan dengan ukuran sampel", ukuran_sampel,
      ", mean populasi 2:", mean(populasi2), ", varian populasi 2:", var(populasi2), ":\n")
  
  cat("H0: Rata-rata kedua populasi sama\n")
  cat("H1: Rata-rata kedua populasi berbeda\n")
  cat("Taraf signifikansi: ", alpha, "\n")
  
  cat("Statistik uji:\n")
  cat("t_hitung:", hasil_uji_t$statistic, "\n")
  cat("t_tabel:", qt(1 - alpha/2, df = 2 * ukuran_sampel - 2), "\n")  # Perubahan df
  cat("p-value:", hasil_uji_t$p.value, "\n")
  
  cat("Daerah kritis: Tolak H0 jika |t_hitung| >", qt(1 - alpha/2, df = 2 * ukuran_sampel - 2), "\n")  # Perubahan df
  
  # kesimpulan
  if (hasil_uji_t$p.value < alpha) {
    cat("Kesimpulan: Ho ditolak, rata-rata kedua populasi berbeda.\n\n")
    return(TRUE)
  } else {
    cat("Kesimpulan: Ho diterima, rata-rata kedua populasi sama.\n\n")
    return(FALSE)
  }
}

# Set parameter untuk populasi
set.seed(5019) # Menggunakan akhiran NIM WAHYU (2203125019)
populasi1 <- rnorm(1000, mean = 20, sd = 10)  # Ukuran populasi untuk seed 1
populasi2 <- rnorm(1000, mean = 20, sd = 1)  # Ukuran populasi untuk seed 2

# Atur ukuran sampel dan taraf signifikansi yang digunakan
ukuran_sampel <- 500  # Sesuaikan ukuran sampel agar t_test dapat dihitung dengan benar
alpha <- 0.05

# Performa 100 kali pengulangan
rejected_tests <- c()
for (i in 1:500) {
  if (perform_t_test(populasi1, populasi2, ukuran_sampel, alpha)) {
    rejected_tests <- append(rejected_tests, i)
  }
}
power_of_test <- (length(rejected_tests)/500) * 100
cat("H0 ditolak sebanyak", length(rejected_tests), "kali pada pengujian ke:", rejected_tests, "\n")
cat("Power of test : ",power_of_test, "%" )