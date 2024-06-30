# Gebruik de officiële PHP image
FROM php:8.1-cli

# Installeer de benodigde extensies
RUN docker-php-ext-install pdo pdo_mysql

# Stel de werkdirectory in
WORKDIR /app

# Kopieer alle bestanden naar de werkdirectory
COPY . /app

# Stel het startcommando in
CMD ["php", "-S", "0.0.0.0:8000"]
