CREATE TABLE Caracters (
	id INTEGER PRIMARY KEY,
	FirstName varchar(50),
	Clan_id INTEGER,
	Age INTEGER,
	Origem_village INTEGER,
	Actual_village INTEGER,
	TypeChakra INTEGER,
	FOREIGN KEY (Origem_village) REFERENCES villages(VillageID),
	FOREIGN KEY (Actual_village) REFERENCES villages(VillageID),
	FOREIGN KEY (TypeChakra) REFERENCES BaseElements(id),
	FOREIGN KEY (Clan_id) REFERENCES Clan(Id)
)

CREATE TABLE villages (
	VillageID INTEGER PRIMARY KEY,
	Village_name varchar(50),
	Village_description varchar(500),
	Village_location varchar(100),
	Village_Economy varchar(100),
	Village_cool_place varchar(100),
	Village_second_cool_place varchar(100)
)

SELECT *
FROM MirunoDatabase.dbo.villages

CREATE TABLE Clan (
	Id	INTEGER PRIMARY KEY,
	Clan_name varchar(100),
	Age INTEGER,
	KekkeiGenkai varchar(100),
	Hijutsus varchar(100),
	Symble varchar(200),
	Origim_Place INTEGER,
	FOREIGN KEY (Origim_Place) REFERENCES villages(VillageID)
)

SELECT *
FROM MirunoDatabase.DBO.Clan

CREATE TABLE BaseElements (
id INTEGER PRIMARY KEY,
Name_element varchar(50),
Description_element varchar(100)
)


CREATE TABLE Jutsus (
	Id INTEGER PRIMARY KEY,
	NamePower varchar(100),
	Natural_element INTEGER,
	Rank_tier INTEGER,
	Type_Jutsu INTEGER,
	Power_description varchar(100),
	is_secret varchar(100),
	dificult INTEGER CHECK(dificult BETWEEN 1 AND 10),
	Prerequisite vachar(100),
	Creator INTEGER
	FOREIGN KEY (Natural_element) REFERENCES baseElements(id),
	FOREIGN KEY (Rank_tier) REFERENCES Classifying_Jutsu(id),
	FOREIGN KEY (Type_jutsu) REFERENCES Type_Jutsus(id),
	FOREIGN KEY (Creator) REFERENCES Characters(id)
)

CREATE TABLE Classifying_Jutsu (
id INTEGER PRIMARY KEY,
Rank_name varchar(50),
descriptions varchar(100)
)

CREATE TABLE Type_Jutsus (
id INTEGER PRIMARY KEY,
Tipo_name varchar(50),
descriptions varchar(100)
)

CREATE TABLE KekkeiGenkai (
Power_Id INTEGER PRIMARY KEY,
Clan_id INTEGER NOT NULL,
is_hereditary varchar(50)
)


CREATE TABLE CharactersPowers (
	ElementalChakra varchar(50),
	LevelOfPower int,
	Efficience int
)

CREATE TABLE CaractersFamily (
	id INTEGER PRIMARY KEY,
	Character_one INTEGER,
	Characater_two INTEGER,
	Type_relationship varchar(100),
	FOREIGN KEY (Character_one) REFERENCES Characters(CharacterID),
	FOREIGN KEY (Character_two) REFERENCES Characters(CharacterID)
)