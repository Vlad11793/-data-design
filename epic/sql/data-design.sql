# DROP TABLE IF EXISTS chat;
# DROP TABLE IF EXISTS profile2;
# DROP TABLE IF EXISTS profile1;
#
#
# CREATE TABLE profile1 (
#
# 	steamEmail1 VARCHAR(128) NOT NULL,
#    steamId1 BINARY(16) NOT NULL,
# 	steamName1 CHAR(32) NOT NULL,
# 	steamProfileDetails1 VARCHAR (8000),
# 	steamProfilePic1 VARCHAR(140),
# 	steamTheme1 VARCHAR(140),
#
# 	UNIQUE(steamEmail1),
# 	PRIMARY KEY(steamID1)
# );
#
# CREATE TABLE profile2 (
#
# 	steamEmail2 VARCHAR(128) NOT NULL,
#    steamId2 BINARY(16) NOT NULL,
# 	steamName2 CHAR(32) NOT NULL,
# 	steamProfileDetails2 VARCHAR (8000),
# 	steamProfilePic2 VARCHAR(140),
# 	steamTheme2 VARCHAR(140),
#
# 	UNIQUE(steamEmail2),
# 	PRIMARY KEY(steamId2)
# );
#
# CREATE TABLE chat (
# 	chatDate DATETIME(6) NOT NULL,
# 	chatEmote VARCHAR(255),
#    chatId BINARY(16) NOT NULL,
# 	chatProfileId BINARY(16) NOT NULL,
# 	chatSteamID BINARY(16) NOT NULL,
#
# 	INDEX(chatProfileID),
# 	FOREIGN  KEY(chatSteamID) REFERENCES profile1(steamId1),#might need profile2 and steamid2 original was REFERENCES profile(steamId)
# 	PRIMARY KEY(chatID)

# );

DROP TABLE IF EXISTS 'Product';
DROP TABLE IF EXISTS 'Order';
DROP TABLE IF EXISTS 'SteamAccount';

CREATE TABLE 'SteamAccount' (
	steamId BINARY(32) NOT NULL,
	email varchar(32) NOT NULL,
	phone varchar(10) NOT NULL,
	steamName VARCHAR(32) NOT NULL,
	UNIQUE(email),
	PRIMARY KEY (steamId)
);

CREATE TABLE 'Order' (
	orderId BINARY(32) NOT NULL,
	customerName VARCHAR(32) NOT NULL,
	productId BINARY(32) NOT NULL,
	purchaseDate DATETIME(6) NOT NULL,
	steamId BINARY(32) NOT NULL,


	PRIMARY KEY (orderId),
	FOREIGN KEY (steamId) REFERENCES SteamAccount(steamId),
	FOREIGN KEY (productId) REFERENCES Product(productId)
);

CREATE TABLE 'Product' (
	productId BINARY(16),
	quantity VARCHAR(255) NOT NULL,
	productName VARCHAR(50) NOT NULL,

	PRIMARY KEY (productId)
);

