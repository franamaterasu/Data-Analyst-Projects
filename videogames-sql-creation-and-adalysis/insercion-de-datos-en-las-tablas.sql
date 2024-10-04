INSERT INTO generos (nombre)
VALUES ("Acción"), ("Aventura"), ("Rol RPG"), ("Deportes"), ("Estrategia");

INSERT INTO plataformas (nombre)
VALUES ("PlayStation"), ("Xbox"), ("Nintendo"), ("PC");

INSERT INTO desarrolladores (nombre, pais, rol)
VALUES
("Naughty Dog", "Estados Unidos", "Acción-aventura"),
("Rockstar Games", "Estados Unidos", "Mundo abierto"),
("Nintendo", "Japón", "Variados"),
("Ubisoft", "Francia", "Acción-aventura"),
("Epic Games", "Estados Unidos", "Acción-aventura"),
("Valve", "Estados Unidos", "Variados");

INSERT INTO videojuegos (titulo, genero_id, plataforma_id, lanzamiento, desarrollador_id, puntuacion_metacritic)
VALUES 
("The Last of Us Part II", 1, 1, 2020, 1, 93),
("Uncharted 4: A Thief's End", 2, 1, 2016, 1, 93),
("Grand Theft Auto V", 1, 2, 2013, 2, 97),
("Red Dead Redemption 2", 1, 2, 2018, 2, 97),
("The Legend of Zelda: Breath of the Wild", 2, 3, 2017, 3, 97),
("Super Mario Odyssey", 2, 3, 2017, 3, 97),
("Assassin's Creed Valhalla", 1, 2, 2020, 4, 84),
("Far Cry 6", 1, 2, 2021, 4, 76),
("Fortnite", 1, 4, 2017, 5, 81),
("Gears of War 5", 1, 2, 2019, 6, 84),
("Dota 2", 5, 4, 2013, 6, 90),
("Half-Life: Alyx", 1, 4, 2020, 6, 93),
("The Witcher 3: Wild Hunt", 3, 4, 2015, 2, 93),
("FIFA 22", 4, 1, 2021, 4, 79),
("Rocket League", 4, 4, 2015, 6, 86),
("Ghost of Tsushima", 1, 1, 2020, 1, 83),
("Mario Kart 8 Deluxe", 4, 3, 2017, 3, 92),
("Animal Crossing: New Horizons", 2, 3, 2020, 3, 90),
("Watch Dogs: Legion", 1, 2, 2020, 4, 72),
("Counter-Strike: Global Offensive", 1, 4, 2012, 6, 83);
