# INSERT INTO profile1(steamEmail1, steamId1, steamName1, steamProfileDetails1, steamProfilePic1, steamTheme1) VALUES ("email1@gmail.com",UNHEX("5b7f786033a546958b675bd1e24e0e16"), "UserName","I like FPS Games", "Image1", "Favorite theme1");
# INSERT INTO profile2(steamEmail2, steamId2, steamName2, steamProfileDetails2, steamProfilePic2, steamTheme2) VALUES ("email2@gmail.com",UNHEX("96169e15fe2147759f5bd63721d6d7f2"), "UserName","I like RTS Games", "Image2", "Favorite theme2");
# #INSERT INTO chat(chatDate, chatEmote, chatId, chatProfileId, chatSteamID) VALUES (NOW(),"Emote",UNHEX("c0dec6dbc64141be8a33c0d408c89d95"),UNHEX("5b7f786033a546958b675bd1e24e0e16"), UNHEX("d990d75157744d778116ad0552469a4b"));


INSERT INTO SteamAccount(steamId, steamEmail, steamName, steamPhone) VALUES (UNHEX('9623b0f940a542099cabad318ff52841'), 'email@gmail.com', 'Max Payne', '5059030949');
INSERT INTO Product(productSteamId, productId, productName, productQuantity) VALUES (UNHEX('9623b0f940a542099cabad318ff52841'),UNHEX('e20fcc00bd304a72a9509904cf6f06e5'),'Master Chief Collection', '1');
INSERT INTO Purchase(purchaseId, purchaseDate, purchaseProductId, purchaseSteamId) VALUES (UNHEX('4211e58be6bd4dbdbe0e315c32749170'), NOW(),UNHEX('e20fcc00bd304a72a9509904cf6f06e5'), UNHEX('9623b0f940a542099cabad318ff52841'));

UPDATE SteamAccount SET steamPhone = '5059030358' WHERE steamId = UNHEX('9623b0f940a542099cabad318ff52841');

INSERT INTO SteamAccount(steamId, steamEmail, steamName, steamPhone) VALUES (UNHEX('c833a478b34245f0a58853feba2099a3'), 'VladdyDaddy@gmail.com', 'Vladdy Daddy', '5059031111');
DELETE FROM SteamAccount WHERE steamId = UNHEX('c833a478b34245f0a58853feba2099a3');

SELECT steamId, steamEmail, steamName from SteamAccount WHERE steamId = UNHEX('9623b0f940a542099cabad318ff52841');

SELECT SteamAccount.steamId, SteamAccount.steamEmail, SteamAccount.steamName, Product.productSteamId, Product.productId  FROM SteamAccount INNER JOIN Product on SteamAccount.steamId = Product.productSteamId WHERE SteamAccount.steamName = 'Max Payne'