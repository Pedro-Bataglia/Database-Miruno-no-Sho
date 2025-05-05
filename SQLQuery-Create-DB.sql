CREATE TABLE Caracters (
	id INTEGER PRIMARY KEY,
	FirstName TEXT,
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
	Village_name TEXT,
	Village_description TEXT,
	Village_location TEXT,
	Village_Economy TEXT,
	Village_cool_place TEXT,
	Village_second_cool_place TEXT
)

SELECT *
FROM MirunoDatabase.dbo.villages

CREATE TABLE Clan (
	Id	INTEGER PRIMARY KEY,
	Clan_name TEXT,
	Age INTEGER,
	KekkeiGenkai TEXT,
	Hijutsus TEXT,
	Symble TEXT,
	Origim_Place INTEGER,
	FOREIGN KEY (Origim_Place) REFERENCES villages(VillageID)
)

SELECT *
FROM MirunoDatabase.DBO.Clan

CREATE TABLE BaseElements (
id INTEGER PRIMARY KEY,
Name_element TEXT,
Description_element TEXT
)


CREATE TABLE Jutsus (
	Id INTEGER PRIMARY KEY,
	NamePower TEXT,
	Natural_element INTEGER,
	Rank_tier INTEGER,
	Type_Jutsu INTEGER,
	Power_description TEXT,
	is_secret TEXT,
	dificult INTEGER CHECK(dificult BETWEEN 1 AND 10),
	Prerequisite TEXT,
	Creator INTEGER
	FOREIGN KEY (Natural_element) REFERENCES baseElements(id),
	FOREIGN KEY (Rank_tier) REFERENCES Classifying_Jutsu(id),
	FOREIGN KEY (Type_jutsu) REFERENCES Type_Jutsus(id),
	FOREIGN KEY (Creator) REFERENCES Characters(id)
)

CREATE TABLE Classifying_Jutsu (
id INTEGER PRIMARY KEY,
Rank_name TEXT,
descriptions TEXT
)

CREATE TABLE Type_Jutsus (
id INTEGER PRIMARY KEY,
Tipo_name TEXT,
descriptions TEXT
)

CREATE TABLE KekkeiGenkai (
Power_Id INTEGER PRIMARY KEY,
Clan_id INTEGER NOT NULL,
is_hereditary TEXT
)


CREATE TABLE CharactersPowers (
	ElementalChakra varchar(50),
	LevelOfPower int,
	Efficience int
)

CREATE TABLE CaractersFamily (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	Character_one INTEGER,
	Characater_two INTEGER,
	Type_relationship TEXT,
	FOREIGN KEY (Character_one) REFERENCES Characters(CharacterID),
	FOREIGN KEY (Character_two) REFERENCES Characters(CharacterID)
)