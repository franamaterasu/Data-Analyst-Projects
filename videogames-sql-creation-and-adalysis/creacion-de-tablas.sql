CREATE TABLE generos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE plataformas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100)
);

CREATE TABLE desarrolladores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(100),
    rol VARCHAR(50)
);

CREATE TABLE videojuegos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero_id INT,
    plataforma_id INT,
    lanzamiento YEAR,
    desarrollador_id INT,
    puntucion_metacritic DECIMAL(10,1),
    FOREIGN KEY (genero_id) REFERENCES generos(id),
    FOREIGN KEY (plataforma_id) REFERENCES plataformas(id),
    FOREIGN KEY (desarrollador_id) REFERENCES desarrolladores(id)
);