-- Leader search microservice
SELECT Leaders.LeaderName
FROM Leaders
JOIN YieldTagsDetails ON Leaders.LeaderID = YieldTagsDetails.LeaderID
JOIN YieldTags ON YieldTagsDetails.YieldTagName = YieldTags.YieldName
WHERE YieldTags.YieldName = 'gold';

-- Civ search microservice
SELECT Leaders.LeaderName
FROM Leaders
JOIN LeaderCivDetails ON Leaders.LeaderID = LeaderCivDetails.LeaderID
JOIN Civilizations ON LeaderCivDetails.CivName = Civilizations.CivName
WHERE Civilizations.CivName = 'YourCivName';

-- Civ search microservice
SELECT Civilizations.CivName
FROM Civilizations
JOIN LeaderCivDetails ON Civilizations.CivName = LeaderCivDetails.CivName
JOIN Leaders ON LeaderCivDetails.LeaderID = Leaders.LeaderID
WHERE Leaders.LeaderName = 'YourLeaderName';