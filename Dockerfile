# Imagen base con Python
FROM python:3.9-slim

# Instalar git para poder clonar el repo
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clonar el repositorio directamente desde GitHub (HTTPS)
RUN git clone https://github.com/CarlosMarinTC-alt/docker-app.git /app

# Definir directorio de trabajo
WORKDIR /app

# Ejecutar el archivo principal
CMD ["python", "app.py"]
