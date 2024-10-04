# ![SQL: Creación y analisis de base de datos](https://t3.ftcdn.net/jpg/02/39/40/08/360_F_239400826_YQExbFZM7u7yesAAnEyZb8QauJu22MWQ.jpg)

## SQL: Creación y analisis de base de datos.

Este proyecto consiste en la creación de una base de datos para almacenar información sobre videojuegos. La base de datos incluye tablas para géneros, plataformas, desarrolladores y videojuegos, y permite realizar consultas para extraer información relevante.

## Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

1. **generos**
   - `id` (INT, PRIMARY KEY): Identificador único para cada género.
   - `nombre` (VARCHAR(100), NOT NULL): Nombre del género.

2. **plataformas**
   - `id` (INT, PRIMARY KEY): Identificador único para cada plataforma.
   - `nombre` (VARCHAR(100), NOT NULL): Nombre de la plataforma.
   - `fabricante` (VARCHAR(100)): Nombre del fabricante de la plataforma.

3. **desarrolladores**
   - `id` (INT, PRIMARY KEY): Identificador único para cada desarrollador.
   - `nombre` (VARCHAR(100), NOT NULL): Nombre del desarrollador.
   - `pais` (VARCHAR(100)): País de origen del desarrollador.
   - `rol` (VARCHAR(50)): Rol del desarrollador.

4. **videojuegos**
   - `id` (INT, PRIMARY KEY): Identificador único para cada videojuego.
   - `titulo` (VARCHAR(100), NOT NULL): Título del videojuego.
   - `genero_id` (INT): Referencia al género del videojuego.
   - `plataforma_id` (INT): Referencia a la plataforma del videojuego.
   - `lanzamiento` (YEAR): Año de lanzamiento del videojuego.
   - `desarrollador_id` (INT): Referencia al desarrollador del videojuego.
   - `puntuacion_metacritic` (DECIMAL(10,1)): Puntuación en Metacritic.

## Archivos del Proyecto

- **creacion-de-tablas**: El archivo `creacion-de-tablas.sql`, donde se definen y crean las tablas de la base de datos.
- **insercion-de-datos**: El archivo `insercion-de-datos.sql`, donde se insertan datos en las tablas previamente creadas.
- **consultas-basicas**: El archivo `consultas-basicas.sql`, donde se realizan consultas básicas para extraer información de la base de datos.
- **consultas-con-joins**: El archivo `consultas-con-joins.sql`, donde se realizan consultas más avanzadas utilizando joins.
