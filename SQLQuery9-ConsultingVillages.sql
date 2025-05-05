SELECT Clan_name, Origim_Place, Age
, count(Age) OVER (PARTITION BY Age) as OldersClans
FROM Clan

SELECT * FROM Villages


SELECT Clan_name, Origim_Place, age, Village_location
FROM Clan
JOIN Villages
ON Clan.Origim_Place = Villages.VillageID
ORDER BY age DESC
