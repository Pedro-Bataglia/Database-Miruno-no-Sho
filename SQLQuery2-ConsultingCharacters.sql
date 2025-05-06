SELECT *
FROM MirunoDatabase.dbo.Villages

SELECT *
FROM MirunoDatabase.dbo.Caracters

SELECT * 
FROM MirunoDatabase.dbo.Clan

SELECT FirstName, Clan_Name 
,count(Clan_Name) OVER (PARTITION BY Clan_Name) as QuantityForClan 
FROM Caracters
JOIN Clan
	On Clan_id = Clan.Id
ORDER BY FirstName