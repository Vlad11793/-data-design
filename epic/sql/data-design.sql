DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS profile1;
DROP TABLE IF EXISTS profile2;


CREATE TABLE profile1 (

	steamEmail1 VARCHAR(128) NOT NULL,
   steamId1 BINARY(16) NOT NULL,
	steamName1 CHAR(32) NOT NULL,
	steamProfileDetails1 VARCHAR (8000),
	steamProfilePic1 VARCHAR(140),
	steamTheme1 VARCHAR(140),

	UNIQUE(steamEmail1),
	PRIMARY KEY(steamID1)
);

CREATE TABLE profile2 (

	steamEmail2 VARCHAR(128) NOT NULL,
   steamId2 BINARY(16) NOT NULL,
	steamName2 CHAR NOT NULL(32),
	steamProfileDetails2 VARCHAR (8000),
	steamProfilePic2 VARCHAR(140),
	steamTheme2 VARCHAR(140),

	UNIQUE(steamEmail2),
	PRIMARY KEY(steamId2)
);

CREATE TABLE chat (
	chatDate DATETIME(6) NOT NULL,
	chatEmote VARCHAR(255),
   chatId BINARY(16) NOT NULL,
	chatProfileId BINARY(16) NOT NULL,
	chatSteamID BINARY(16) NOT NULL,

	INDEX(chatProfileID),
	FOREIGN  KEY(chatSteamID) REFERENCES profile(steamId),
	PRIMARY KEY(chatID)

);