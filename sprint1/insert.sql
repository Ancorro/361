-- Insert a new civilization
INSERT INTO Civilizations (CivName, CivBonus) 
VALUES ('Rome', 'All Roads Lead to Rome - Founded or 
conquered cities start with a 
Trading Post Trading Post and, if within Trade Route Trade 
Route range of the Capital Capital, a road to it. Trade 
Route Trade Routes generate +1 additional Gold Gold 
from Roman Trading Post Trading Posts they pass through.');

-- Insert a new leader
INSERT INTO Leaders (LeaderName, LeaderBonus) 
VALUES ('Julius Caesar', 'Veni, Vidi, Vici - 
Gains 300 Gold Gold after conquering a city 
for the first time, and after earning Gold 
Gold from a Barbarian Outpost. Both amounts 
become 500 Gold Gold after researching Metal 
Casting and 700 Gold Gold after Steel 
(on Standard speed). Units gain 5 Strength 
Combat Strength and receive full experience 
when fighting Barbarians.');

-- Insert into the intersection table
INSERT INTO LeaderCivDetails (CivName, LeaderID) 
VALUES ('Rome', LAST_INSERT_ID());

