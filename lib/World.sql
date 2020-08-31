
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

UPDATE personne SET nom='Rakoto', prenom='Be Nify', age=10, taille='1,50', poids='70,0', couleur_preferer='rouge' WHERE id=1;
UPDATE personne SET nom='Lava', prenom='Rapeto', age=25, taille='2,0', poids='30,0', couleur_preferer='vert' WHERE id=2;
UPDATE personne SET nom='Ba', prenom='Lita', age=7, taille='1,0', poids='20,5', couleur_preferer='jaune' WHERE id=3;
UPDATE personne SET nom='Kiala', prenom='manjakely', age=100, taille='1,68', poids='45,7', couleur_preferer='violet' WHERE id=4;
UPDATE personne SET nom='Kioala', prenom='Pota', age=37, taille='0,8', poids='50,0', couleur_preferer='grise' WHERE id=5;