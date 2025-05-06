SELECT *
FROM MirunoDatabase.dbo.Type_Jutsus

SELECT * 
FROM MirunoDatabase.dbo.Classifying_Jutsu

INSERT INTO Classifying_Jutsu VALUES
(1,'E-Rank', 'Basic techniques – Simple jutsu like Transformation or Clone Jutsu.'),
(2,'D-Rank', 'Slightly stronger basics – Academy-level jutsu, like Kawarimi (Substitution Jutsu).'),
(3,'C-Rank', 'Combat-effective jutsu – Stronger techniques like Fireball Jutsu or Water Wall.'),
(4,'B-Rank', 'High-level combat jutsu – Rasengan, Chidori, or Shadow Clone Jutsu.'),
(5,'A-Rank', 'Extremely powerful jutsu – Flying Thunder God, Amaterasu, or Sage Mode techniques.'),
(6,'S-Rank', 'Ultimate, dangerous jutsu – Edo Tensei, Susano’o, Bijuu Bombs, or Kamui.')

INSERT INTO Type_Jutsus VALUES 
(1, 'Ninjutsu', 'Chakra-based techniques that manipulate energy for attacks, defense, or utility.'),
(2, 'Genjutsu', 'Mind-affecting illusions that disrupt perception or trap opponents.'),
(3, 'Taijutsu', 'Physical combat moves, no chakra (or minimal chakra enhancement).'),
(4, 'Fuuinjutsu', 'Seals that trap, bind, or store objects, chakra, or even living beings.'),
(5, 'Senjutsu', 'Natural energy manipulation, enhancing power beyond normal limits.'),
(6, 'Dojutsu', 'Kekkei Genkai (bloodline) abilities tied to special eyes.'),
(7, 'Kekkei Genkai', 'Unique genetic abilities passed through clans.'),
(8, 'Kekkei Tota', 'Advanced genetic abilities combining three chakra natures.'),
(9, 'Kinjutsu', 'Banned jutsu due to extreme risk or unethical nature.'),
(10, 'Space-Time Ninjutsu', 'Manipulates dimensions/teleportation.'),
(11, 'Midical Ninjutsu', 'Chakra-based healing & surgery.'),
(12, 'Barrier Ninjutsu', 'Chakra shields or containment fields.')