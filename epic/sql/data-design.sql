DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS SteamAccount;

CREATE TABLE SteamAccount (
	steamId BINARY(16) NOT NULL,
	steamEmail VARCHAR(32) NOT NULL,
	steamName VARCHAR(32) NOT NULL,
	steamPhone VARCHAR(10) NOT NULL,


	UNIQUE(steamEmail),
	PRIMARY KEY (steamId)
);

CREATE TABLE Product (
   productSteamId BINARY(16) NOT NULL,
	productId BINARY(16) NOT NULL,
	productName VARCHAR(50) NOT NULL,
	productQuantity VARCHAR(255) NOT NULL,

	PRIMARY KEY (productId)
);

CREATE TABLE Purchase (
	purchaseId BINARY(16) NOT NULL,
	purchaseDate DATETIME(6) NOT NULL,
	purchaseProductId BINARY(16) NOT NULL,
	purchaseSteamId BINARY(16) NOT NULL,

	INDEX (purchaseSteamId),
	PRIMARY KEY (purchaseId),
	FOREIGN KEY (purchaseSteamId) REFERENCES SteamAccount(steamId),
	FOREIGN KEY (purchaseProductId) REFERENCES Product(productId)
);
