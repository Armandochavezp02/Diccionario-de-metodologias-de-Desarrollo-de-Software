# Diccionario de Metodologias de Desarrollo de Software

Proyecto del primer parcial para la materia de Desarrollo basado en plataformas.


## Como empezar

Clone el repositorio desde su pagina de control de repositorios favorito (Github, Bitbucket, Gitlab) o descargue el contenedor desde Dockerhub.


## Pre-requisitos

Utilizar un sistema Unix de preferencia.


## Instalacion
**git hub:**
```
git clone git@github.com:Armandochavezp02/Diccionario-de-metodologias-de-Desarrollo-de-Software.git
```
**Bajar Imagen desde Docker**
```
docker pull 329545/diccionario_metodologias:1.0.0  
```
## Probar el programa

**En Docker:**
Usar `docker run -ti -e METODOLOGIA=-a 329545/diccionario_metodologias:1.0.0`  para metodologías ágiles.

```
docker run -ti -e METODOLOGIA=-a 329545/diccionario_metodologias:1.0.0
```
Usar `docker run -ti -e METODOLOGIA=-t 329545/diccionario_metodologias:1.0.0`  para metodologías tradicionales.

```
docker run -ti -e METODOLOGIA=-t 329545/diccionario_metodologias:1.0.0
```
**Desde la terminal:**

Correr el script `./diccionario_metodologias.sh -a` sobre la terminal para metodologías ágiles. 

```
./diccionario_metodologias.sh -a
```

Correr el script `./diccionario_metodologias.sh -t` sobre la terminal para metodologías tradicionales. 

```
./diccionario_metodologias.sh -t
```

## Despliegue
La aplicación es muy sencilla de instalar.


## Herramientas Usadas 

El proyecto está desarrollado en bash script, con apoyo de herramientas de trabajo como Git y Docker.


## Contribuciones

Para contribuir a este proyecto, favor de mandar un mensaje al dueño del repositorio para autorizar la contribución.


## Versiones


**Las versiones y avances pueden revisarse en los diferentes commits**

## Autores
1. [Armando Chavez Perez](https://github.com/Armandochavezp02) *316099*
2. [Juan Daniel Villegas Terrazas](https://github.com/JuanDanielVillegas) *329545*
3. [Javier Andres Tarango Fierro](https://github.com/329904) *329904*

## Licencias

Este proyecto se encuentra bajo ningun tipo de licencia, el codigo es libre como el viento.

## Menciones especiales

I.S.C. Luís Antonio Ramírez Martínez por compartir sus conocimientós con nosotros y por darnos una calificacion aprobatoria a este proyecto.
