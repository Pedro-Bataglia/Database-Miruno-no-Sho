SELECT *
FROM MirunoDatabase.dbo.Clan

SELECT * FROM Villages

INSERT INTO Clan VALUES 
(13, 'Sarutobi', 800, 'Tensei', '5 Elements', 'a rhombus with internal lines', 1),
(14, 'Cho', 300, 'Hi no Shi', 'Blood Manipulation', 'A drop of blood',  5),
(15, 'Flyyn', 300, 'Tensei', 'High Level Equipaments', 'A Silver Fang', 7)

UPDATE Clan
SET Origim_Place = 7
where Id = 12