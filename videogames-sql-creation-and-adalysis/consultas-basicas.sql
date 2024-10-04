-- Obtén todos los títulos de los videojuegos.
SELECT titulo
FROM videojuegos;

-- Obtén los nombres de todas las plataformas.
SELECT DISTINCT nombre
FROM plataformas;

-- Obtén los videojuegos lanzados en el año 2020.
SELECT *
FROM videojuegos
WHERE lanzamiento = 2020;

-- Muestra todos los videojuegos ordenados por su puntuación de Metacritic de mayor a menor.
SELECT titulo, puntuacion_metacritic
FROM videojuegos
ORDER BY puntuacion_metacritic DESC

-- Obtén todos los videojuegos y ordénalos por año de lanzamiento de más reciente a más antiguo.
SELECT titulo, lanzamiento
FROM videojuegos
ORDER BY lanzamiento DESC;

-- Muestra los 5 videojuegos con mayor puntuación en Metacritic
SELECT titulo, puntuacion_metacritic
FROM videojuegos
ORDER BY puntuacion_metacritic DESC
LIMIT 5;

-- Obtén los títulos de los videojuegos lanzados en el año 2021.
SELECT titulo, lanzamiento
FROM videojuegos
WHERE lanzamiento = 2021;

-- Muestra todos los géneros disponibles en la tabla generos
SELECT nombre
FROM generos;

-- Obtén el nombre de la plataforma que tiene el identificador 2
SELECT id, nombre
FROM plataformas
WHERE id = 2;

-- Obtén los títulos de todos los videojuegos lanzados en el año 2020.
SELECT titulo, lanzamiento
FROM videojuegos
WHERE lanzamiento = 2020;

-- Muestra todos los nombres de los desarrolladores que son de "Estados Unidos"
SELECT nombre, pais
FROM desarrolladores
WHERE pais = 'Estados Unidos';

-- Muestra los nombres de los géneros cuyos títulos tienen más 5 letras.
SELECT DISTINCT nombre
FROM generos
WHERE nombre LIKE '______';

-- Muestra los títulos de los videojuegos de acción (género con id 1)
SELECT titulo, genero_id
FROM videojuegos
WHERE genero_id = 1;

-- Obtén la información de los videojuegos cuya puntuación en Metacritic sea exactamente 93
SELECT *
FROM videojuegos
WHERE puntuacion_metacritic = 93;

-- Muestra los títulos de los videojuegos que fueron lanzados en 2020 o tienen una puntuación de Metacritic mayor a 90.
SELECT titulo, lanzamiento, puntuacion_metacritic
FROM videojuegos
WHERE lanzamiento = 2020 OR puntuacion_metacritic > 90;

-- Obtén los nombres de los desarrolladores que son de "Estados Unidos" y tienen el rol "Acción-aventura".
SELECT DISTINCT nombre, pais, rol
FROM desarrolladores
WHERE pais = 'Estados Unidos' AND rol = 'Acción-aventura';

-- Muestra los títulos de los videojuegos que fueron lanzados entre 2015 y 2020 (inclusive)
SELECT titulo, lanzamiento
FROM videojuegos
WHERE lanzamiento BETWEEN 2015 AND 2020;

-- Obtén los nombres de las plataformas que tienen un nombre que comienza con la letra "P".
SELECT DISTINCT nombre
FROM plataformas
WHERE nombre LIKE 'P%';

-- Muestra la cantidad total de videojuegos en la tabla videojuegos
SELECT COUNT(*) AS cantidad_videojuegos
FROM videojuegos;

-- Obtén la puntuación media (promedio) de todos los videojuegos en Metacritic
SELECT AVG(puntuacion_metacritic) AS puntuacion_media
FROM videojuegos;

-- Encuentra la puntuación más alta registrada en Metacritic entre todos los videojuegos.
SELECT MAX(puntuacion_metacritic) AS puntuacion_mas_alta
FROM videojuegos;

-- Encuentra la puntuación más baja registrada en Metacritic entre todos los videojuegos.
SELECT MIN(puntuacion_metacritic) AS puntuacion_mas_baja
FROM videojuegos;

-- Cuenta cuántos videojuegos hay por cada género
SELECT genero_id, COUNT(*) AS cantidad_de_juegos
FROM videojuegos
GROUP BY genero_id;

-- Muestra el año de lanzamiento más reciente y la cantidad de videojuegos lanzados en ese año.
SELECT lanzamiento AS fecha_de_lanzamiento, COUNT(lanzamiento) AS cantidad_de_juegos
FROM videojuegos
WHERE lanzamiento = (SELECT MAX(lanzamiento) FROM videojuegos)
GROUP BY lanzamiento;

-- Obtén el promedio de puntuación de Metacritic de los videojuegos agrupados por género.
SELECT genero_id, AVG(puntuacion_metacritic) AS puntuacion_media_del_genero
FROM videojuegos
GROUP BY genero_id;


