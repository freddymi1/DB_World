BEGIN TRANSACTION;
DROP TABLE IF EXISTS "personne";
CREATE TABLE "personne" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,
	"nom"	TEXT,
	"prenom"	TEXT,
	"age"	INTEGER,
	"taille"	TEXT,
	"poids"	TEXT,
	"couleur_predefinie"	TEXT
);
COMMIT;
