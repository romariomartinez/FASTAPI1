
#imagen de python 
FROM python:3.11-slim  


#ESTE COMANDO SIRVE PARA QUE NO ME MUESTRE POR CONSOLA SI TENGO QUE ACTUALIZAR LA VERSION DE PIP SIMPLEMETE LO DECLARA
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

ENV PYTHONUNBUFFERED=1

#ENTORNO DE TRABAJO 

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv

# Copia los archivos necesarios a la imagen (main.py, requirements.txt)
RUN /bin/bash -c "source venv/bin/activate"

# Instala las dependencias de Python
RUN pip install -r requirements.txt

COPY  . .
# Expone el puerto 8000 para la API FastAPI
EXPOSE 8000

# Comando para ejecutar el servidor FastAPI con uvicorn
CMD [ "uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]

