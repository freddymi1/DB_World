
CREATE TABLE "personne" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
	"nom"	TEXT,
	"prenom"	TEXT,
	"age"	INTEGER,
	"taille"	TEXT,
	"poids"	TEXT
);
COMMIT;

INSERT INTO personne (id, nom, prenom, age, taille, poids) VALUES(1, 'Rakoto', 'Be Nify', 10, '1,50', '70,0');
INSERT INTO personne (id, nom, prenom, age, taille, poids) VALUES(2, 'Lava', 'Rapeto', 25, '2,0', '30,0');
INSERT INTO personne (id, nom, prenom, age, taille, poids) VALUES(3, 'Ba', 'Lita', 7, '1,0', '20,5');
INSERT INTO personne (id, nom, prenom, age, taille, poids) VALUES(4, 'Kiala', 'manjakely', 100, '1,68', '45,7');
INSERT INTO personne (id, nom, prenom, age, taille, poids) VALUES(5, 'Kiala', 'Pota', 37, '0,8', '50,0');


ALTER TABLE personne
ADD COLUMN couleur_preferer TEXT

INSERT INTO personne (id, nom, prenom, age, taille, poids, couleur_preferer) VALUES(1, 'Rakoto', 'Be Nify', 10, '1,50', '70,0', 'rouge');
INSERT INTO personne (id, nom, prenom, age, taille, poids, couleur_preferer) VALUES(2, 'Lava', 'Rapeto', 25, '2,0', '30,0', 'vert');
INSERT INTO personne (id, nom, prenom, age, taille, poids, couleur_preferer) VALUES(3, 'Ba', 'Lita', 7, '1,0', '20,5', 'jaune');
INSERT INTO personne (id, nom, prenom, age, taille, poids, couleur_preferer) VALUES(4, 'Kiala', 'manjakely', 100, '1,68', '45,7', 'violet');
INSERT INTO personne (id, nom, prenom, age, taille, poids, couleur_preferer) VALUES(5, 'Kiala', 'Pota', 37, '0,8', '50,0', 'grise');