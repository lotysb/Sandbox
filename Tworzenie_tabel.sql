USE master

DROP DATABASE Firma
CREATE DATABASE Firma
USE Firma

CREATE TABLE Produkty
	(model varchar PRIMARY KEY NOT NULL,
	producent text NOT NULL, 
	typ text NOT NULL);

CREATE TABLE PC
	(model varchar PRIMARY KEY NOT NULL,
	procesor integer NOT NULL,
	ram integer NOT NULL,
	hdd integer NOT NULL,
	cd integer NOT NULL,
	ekran integer NULL,
	cena money NOT NULL);


CREATE TABLE Laptop
	(model varchar PRIMARY KEY NOT NULL,
	procesor integer NOT NULL,
	ram integer NOT NULL,
	hdd integer NOT NULL,
	ekran integer NULL,
	cena money NOT NULL);

CREATE TABLE Drukarki
	(model varchar PRIMARY KEY NOT NULL,
	kolor bit NOT NULL, 
	typ text NOT NULL, 
	cena money NOT NULL);

ALTER TABLE Drukarki
	ADD CONSTRAINT fk_model_drukarki FOREIGN KEY (model) REFERENCES Produkty(model);

ALTER TABLE PC
	ADD CONSTRAINT fk_model_pc FOREIGN KEY (model) REFERENCES Produkty(model);

ALTER TABLE Laptop
	ADD CONSTRAINT fk_model_laptop FOREIGN KEY (model) REFERENCES Produkty(model);
