# FastAPI Calculator

FastAPI Calculator es una aplicación web API que realiza operaciones matemáticas básicas utilizando el framework FastAPI 


## Requerimientos 
   - Python 3.8 o superior https://www.python.org/downloads/
   - FastAPI==0.68.0
   - uvicorn==0.15.0
   - Docker 

## Instalación y Uso

Para ejecutar esta API localmente, sigue estos pasos:

1. Clona este repositorio.

   - git clone https://github.com/romariomartinez/FASTAPI.git
   
2. Crea un entorno virtual ejecutando
   
    - 'python -m venv venv'.
   
4. Activa el entorno virtual:
   
    - En Windows: 'venv\Scripts\activate'
    - En macOS y Linux: 'source venv/bin/activate'
     
5. Instala las dependencias ejecutando
   
    - 'pip install -r requirements.txt'.
   
6. Ejecuta la API con el comando
   
     - 'uvicorn main:app --reload'.

## Ejemplo de Uso

Una vez que la API esté en funcionamiento, puedes acceder a ella desde tu navegador o utilizando herramientas como curl o Postman. Por ejemplo:

   - curl http://localhost:8000/docs

## Docker

Este proyecto también se puede ejecutar en contenedores Docker. Para ello:

1. Asegúrate de tener Docker instalado en tu sistema.
     - si no lo tienes te ayudamos hacerlo en el siguente paso
   
   ## Instalacion De Docker
   
   Docker es una plataforma que permite desarrollar, enviar y ejecutar aplicaciones en contenedores. A continuación, se detallan los pasos para descargar e instalar Docker en diferentes sistemas operativos:

### Windows y macOS

1. Visita [Docker Desktop](https://www.docker.com/products/docker-desktop) y descarga el instalador adecuado para tu sistema.
2. Sigue las instrucciones de instalación proporcionadas en la página de descarga.
3. Una vez instalado, Docker Desktop se ejecutará automáticamente y estará listo para su uso.

### Linux

1. Para las distribuciones basadas en Debian (como Ubuntu), puedes instalar Docker desde el repositorio oficial de Docker. Ejecuta los siguientes comandos en tu terminal:

 
   -  sudo apt update
   -  sudo apt install docker.io
Una vez instalado, puedes iniciar el servicio Docker y configurarlo para que se inicie automáticamente en el arranque ejecutando:

   - sudo systemctl start docker
   - sudo systemctl enable docker
Ahora Docker está instalado y listo para su uso.

Para verificar que Docker se ha instalado correctamente en tu sistema, puedes ejecutar el siguiente comando en tu terminal:

   - docker --version

2. Construye la imagen Docker
   
   
# Archivo Dockerfile para construir la imagen Docker

![image](https://github.com/romariomartinez/FASTAPI/assets/79557747/c3903725-6533-4012-94a3-a1f29c234826)

   - 'docker build -t  fastapi .'


3. Inicia la aplicación utilizando Docker Compose

Utiliza Docker Compose:

Para iniciar la aplicación utilizando Docker Compose, utiliza el siguiente comando debes crear en la  raíz de tu proyecto un archivo docker-compose.yml abjo te dejo una guia de como hacerlo

# Archivo Docker-compose.yml   para construir el contenedor de  Docker

![image](https://github.com/romariomartinez/FASTAPI/assets/79557747/bcddbd9f-7e29-41ec-a5bb-0ca665314373)

para crear la imagen de docker y el contenedor utiliza el siguente comando, pero recuerda que primero tienes que crear el archivo DOCKERFILE Y EL DOCKER-COMPOSE.YML para ejecutar este comando 

    - 'docker-compose up'
