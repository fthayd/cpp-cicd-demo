# 1. Aşama: Derleme (Build Stage)
FROM ubuntu:22.04 AS builder

# Gerekli araçları kur
RUN apt-get update && apt-get install -y g++ cmake make

# Çalışma dizini oluştur
WORKDIR /app

# Proje dosyalarını kopyala
COPY . .

# Build işlemini yap
RUN rm -rf build && mkdir build && cd build && cmake .. && make

# Testi burada çalıştır! Test başarısız olursa build durur.
RUN cd build && ./test_bin 

# 2. Aşama: Çalıştırma (Run Stage - İmajı küçük tutmak için)
FROM ubuntu:22.04

WORKDIR /app

# Sadece derlenmiş olan uygulamayı al
COPY --from=builder /app/build/main_bin .

# Konteyner başlayınca uygulamayı çalıştır
CMD ["./main_bin"]
