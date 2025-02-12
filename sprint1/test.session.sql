

-- @block 
CREATE TABLE CustomTags (
    CustomTagName VARCHAR(255) PRIMARY KEY,
    CustomTagDescription TEXT
);

CREATE TABLE Leaders (
    LeaderID INT PRIMARY KEY AUTO_INCREMENT,
    LeaderName VARCHAR(255) NOT NULL,
    LeaderBonus TEXT
);

CREATE TABLE CustomTagsDetails (
    CustomTagName VARCHAR(255),
    LeaderID INT,
    FOREIGN KEY (CustomTagName) REFERENCES CustomTags(CustomTagName),
    FOREIGN KEY (LeaderID) REFERENCES Leaders(LeaderID)
);

CREATE TABLE Civilizations (
    CivName VARCHAR(255) PRIMARY KEY,
    CivBonus TEXT
);

CREATE TABLE LeaderCivDetails (
    CivName VARCHAR(255),
    LeaderID INT,
    FOREIGN KEY (CivName) REFERENCES Civilizations(CivName),
    FOREIGN KEY (LeaderID) REFERENCES Leaders(LeaderID)
);


CREATE TABLE YieldTags (
    YieldName VARCHAR(255) PRIMARY KEY
);

CREATE TABLE YieldTagsDetails (
    YieldTagName VARCHAR(255),
    LeaderID INT,
    FOREIGN KEY (YieldTagName) REFERENCES YieldTags(YieldName),
    FOREIGN KEY (LeaderID) REFERENCES Leaders(LeaderID)
);

CREATE TABLE UnitClasses (
    UnitClass VARCHAR(255) PRIMARY KEY
);

CREATE TABLE UniqueUnits (
    UnitName VARCHAR(255) PRIMARY KEY,
    UnitClass VARCHAR(255),
    UnitPower INT,
    UnitDescription TEXT,
    FOREIGN KEY (UnitClass) REFERENCES UnitClasses(UnitClass)
);

CREATE TABLE UnitCivDetails (
    CivName VARCHAR(255),
    UnitName VARCHAR(255),
    FOREIGN KEY (CivName) REFERENCES Civilizations(CivName),
    FOREIGN KEY (UnitName) REFERENCES UniqueUnits(Unitname)

);



--@block
DROP TABLE IF EXISTS CustomTagsDetails;
DROP TABLE IF EXISTS LeaderCivDetails;
DROP TABLE IF EXISTS YieldTagsDetails;
DROP TABLE IF EXISTS UniqueUnits;
DROP TABLE IF EXISTS UnitClasses;
DROP TABLE IF EXISTS YieldTags;
DROP TABLE IF EXISTS Leaders;
DROP TABLE IF EXISTS Civilizations;
DROP TABLE IF EXISTS CustomTags;
DROP TABLE IF EXISTS UnitCivDetails;