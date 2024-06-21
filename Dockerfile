# Gunakan image dasar dari Ubuntu
FROM ubuntu:latest

# Update package list dan install Apache
RUN apt-get update && apt-get install -y apache2

# Salin semua file aplikasi web ke direktori root Apache
COPY . /var/www/html

# Expose port 80 untuk mengakses aplikasi web
EXPOSE 80

# Jalankan Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]