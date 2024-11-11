# Usar una imagen oficial de Python como base
FROM python:3.10-slim

# Directorio de trabajo
WORKDIR /app

# Copiar el archivo de requerimientos (ya lo cree)
COPY requirements.txt /app/

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código fuente del proyecto
COPY myproject  /app/myproject

# Exponer el puerto/correrá el servidor Django
EXPOSE 8000

# Ejecutar el servidor de Django 
CMD ["python", "/app/myproject/manage.py", "runserver", "0.0.0.0:8000"]
