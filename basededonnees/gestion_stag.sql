
-- Creer une base de données si elle n'existe pas
create database if not exists gestion_stag;
-- utiliser cette base de données 
use gestion_stag;


-- Creer une table et son schema
create table filiere (
    idFiliere int(4) auto_increment primary key,
    nomFiliere varchar(50),
    niveau varchar(50),
);

create table stagiaire
(
    idStagiaire int(4) auto_increment primary key,
    nom varchar(50),
    prenom varchar(50),
    civilite varchar(1),
    photo varchar (100),
    idFiliere int(4), 

    );

create table utilisateurs
(
     iduser int(4) auto_increment primary key,
     login varchar(50)
    email varchar(255),
    role varchar(1),
    etat int(1),
    pwd varchar(255)
)

-- Contrainte clé etrangere

-- Ajoute une cle etrangere sur la table stagiaire au nivau du champs idfilierei! qui va refencerer la table filiere sur le champ idfiliere.
--Ce qui permet de voir directement la filiere d'un stagiaire

Alter table stagiaire add constraint foreign key(idFiliere) references filiere(idFiliere);

--Insertion de donnée dans la table utilisateur 
INSERT INTO UTILISATEUR VALUES 
	(1,'admin',md5('123'),'ADMIN','lahcenabousalih@gmail.com',1),
	(2,'user1',md5('123'),'VISITEUR','user1@gmail.com',1),
	(3,'user2',md5('123'),'VISITEUR','user2@gmail.com',1);	

INSERT INTO STAGIAIRE(NOM,PRENOM,ID_FILIERE,PHOTO,CIVILITE,FRAIS_INSCRIPTION,FRAIS_MOIS,FRAIS_EXAMEN,FRAIS_DIPLOME) VALUES
('SAADAOUI','MOHAMMED',1,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',2,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',3,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',4,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',5,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',6,'user_green.png','M',500,500,500,500),	
('SAADAOUI','MOHAMMED',2,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',3,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',4,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',5,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',6,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',1,'user_green.png','M',500,500,500,500),	
('SAADAOUI','MOHAMMED',3,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',4,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',5,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',6,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',1,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',2,'user_green.png','M',500,500,500,500),	
('SAADAOUI','MOHAMMED',4,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',5,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',6,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',1,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',2,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',3,'user_green.png','M',500,500,500,500),	
('SAADAOUI','MOHAMMED',5,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',6,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',1,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',2,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',3,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',4,'user_green.png','M',500,500,500,500),
('SAADAOUI','MOHAMMED',6,'User.png','M',500,500,500,500),
	('CHKIRI','OMAR',1,'user_green.png','M',500,500,500,500),
	('SLIMANI','RACHIDA',2,'User.png','F',500,450,500,500),
	('FAOUZI','NABILA',3,'user_green.png','F',500,500,500,500),
	('ETTAOUSSI','KAMAL',4,'User.png','M',500,450,500,500),
	('EZZAKI','ABDELKARIM',5,'user_green.png','M',500,500,500,500);	

SELECT * FROM FILIERE;
SELECT * FROM STAGIAIRE;
SELECT * FROM UTILISATEUR;
				

-- SAUVGARDER UNE BASE DE DONNEE MYSQL
-- ouvrez l'invite de commande cmd
-- mysqldump -u root -p ges_stag > ges_stag.sql				
