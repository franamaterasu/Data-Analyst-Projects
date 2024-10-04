-- Muestra los títulos de los videojuegos y el nombre del desarrollador
SELECT videojuegos.titulo, desarrolladores.nombre AS desarrollador
FROM videojuegos
INNER JOIN desarrolladores
ON videojuegos.desarrollador_id = desarrolladores.id;

-- Muestra los títulos de los videojuegos y el nombre de la plataforma
SELECT videojuegos.titulo, plataformas.nombre as plataforma
FROM videojuegos
INNER JOIN plataformas
ON videojuegos.plataforma_id = plataformas.id;

-- Muestra los títulos de los videojuegos y el nombre del género
SELECT videojuegos.titulo, generos.nombre as genero
FROM videojuegos
INNER JOIN generos
ON videojuegos.genero_id = generos.id;

-- Muestra los títulos, puntuaciones, nombres de desarrolladores y nombres de plataformas
SELECT videojuegos.titulo, videojuegos.puntuacion_metacritic, desarrolladores.nombre AS desarrollador, plataformas.nombre AS plataforma
FROM videojuegos
INNER JOIN desarrolladores
INNER JOIN plataformas
ON videojuegos.desarrollador_id = desarrolladores.id AND videojuegos.plataforma_id = plataformas.id;

-- Muestra el nombre del desarrollador y la cantidad de videojuegos que ha creado
SELECT desarrolladores.nombre AS desarrollador, COUNT(videojuegos.desarrollador_id) AS total_de_juegos
FROM desarrolladores
INNER JOIN videojuegos
ON desarrolladores.id = videojuegos.desarrollador_id
GROUP BY desarrolladores.nombre;

-- Muestra el título del videojuego, el año de lanzamiento, el género y el nombre del desarrollador.
SELECT videojuegos.titulo, videojuegos.lanzamiento, generos.nombre AS genero, desarrolladores.nombre AS desarrollador
FROM videojuegos
INNER JOIN generos
INNER JOIN desarrolladores
ON videojuegos.genero_id = generos.id AND videojuegos.desarrollador_id = desarrolladores.id;

-- Muestra el nombre de la plataforma y la puntuación media de los videojuegos en esa plataforma.
SELECT plataformas.nombre, AVG(videojuegos.puntuacion_metacritic) AS puntuacion_media_de_los_videojuegos
FROM plataformas
INNER JOIN videojuegos
ON plataformas.id = videojuegos.plataforma_id
GROUP BY plataformas.nombre;

-- Muestra el nombre del género, el desarrollador y la cantidad de videojuegos en ese género.
SELECT desarrolladores.nombre AS desarrollador, generos.nombre AS genero, COUNT(videojuegos.genero_id) AS cantidad_videojuegos
FROM videojuegos
INNER JOIN desarrolladores
INNER JOIN generos
ON videojuegos.genero_id = generos.id AND videojuegos.desarrollador_id = desarrolladores.id
GROUP BY generos.nombre, desarrolladores.nombre;


