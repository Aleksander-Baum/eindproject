# Eindproject Aleksander Baum
## 2CCS01 - r0930134

DE DOCUMENTATIE VOOR DIT PROJECT ZAL OVERNEENKOMEN MET HET BASISPROJECT, OMDAT IK VERDER HEB GEBOUWD OP HET VORIGE. EEN GROOT DEEL ZAL DUS HETZELFDE LIJKEN, MAAR ER ZIJN DELEN TOEGEVOEGD.

LINK HOSTED API (Okteto): https://restaurant-service-aleksander-baum.cloud.okteto.net/
**Okteto passlib/auth error waardoor het niet gehost kon worden, lokaal werkt perfect.**

LINK FRONT-END: https://aleksander-api.netlify.app/

Voor dit project heb ik verkozen om verder te bouwen op mijn restaurant API. Hierbij kon ik een PUT functie toevoegen en een frontend uitwerken.

In mijn API zijn er 3 soorten data: Restaurants, Owners en Menu Items. Dit is zowat de basis dat een restaurant API moet hebben.

### Restaurants
Hierin wordt het id, naam, address en rating opgeslagen. Het id wordt automatisch gegeven. De rest van de data kan de gebruiker zelf invullen. Een restaurant kan je toevoegen en je kan ook alle restaurants tonen, of een specifiek restaurant door het id in te vullen. Het aanpassen van het address van het restaurant is nu ook mogelijk.

### Owners
Hierin wordt het id, naam, telefoonnummer en het restaurant dat zij beheren opgeslagen, maar ook hun wachtwoord. Het id wordt ook automatisch toegepast, maar de rest van de data kan de gebruiker zelf invullen. Een owner kan je toevoegen, en je kan alle owners tonen in een lijst.

### Menu Item
Hierin wordt het id, item name, description, price en restaurant id opgeslagen. Zoals tevoren wordt het id automatisch toegepast en kan de gebruiker de rest van de data zelf aanvullen. Hier kan je wat meer mee: je kan een item toevoegen, van een specifiek restaurant alle items tonen, en een item van een specifiek restaurant verwijderen.

### Rest API
In totaal zijn er 5 GET, 3 POST en 1 DELETE en 1 PUT endpoints. Validaties heb ik gebruikt waar nodig/mogelijk, en een aangepast response wordt getoond. De path parameters heb ik ook zo logisch mogelijk proberen uit te werken.

In de beschrijving van het eindproject staat geschreven dat SQLite moet gebruikt worden, maar omdat ik bij het eerste deel gekozen had me MySQL te werken is dit hier ook zo.

### Deploying
Mijn API wordt correct naar docker opgebouwd dankzij automatische GitHub Actions. De deployment naar Okteto werkt helaas niet wegens een passlib error die ik niet opgelost krijg. Het deployen van de frontend gebeurt met Netlify.

### Bijkomende componenten
Om verder te bouwen op het basisproject is er deze keer ook een PUT-functie toegevoegd om het adres van restaurants aan te passen, maar is er ook gezorgd voor login mogelijkheid met hashing en OAuth.

Daarbij is ook nog een simpele frontend toegevoegd. Je kan hier alle simpele functies uitvoeren: restaurant, owner, en menu item toevoegen. Alle restaurants en owners worden automatisch getoond en menu items kan je krijgen door een restaurant id in te vullen. Dit is te bereiken via Netlify, helaas kan hier de API dus niet gebruikt worden wegens de passlib error.

### Uitgewerkte Frontend
Toevoeging: omdat mijn API niet wil werken via Okteto, heb ik er toch voor gezorgd dat mijn front-end online staat met een simpele opmaak. De front-end zelf zou moeten werken wegens de Javascript in het bestand zelf (er is dus geen gebruik gemaakt van bijvoorbeeld Vue of React.). Hiermee bedoel ik dus dat de Javascript probeert de API te bereiken als hij zou runnen op Okteto. Hopelijk kan ik dus nog wat punten verdienen met punt 3.1.1 en 3.1.2.

**Basic website**
![Frontend_Screen](https://github.com/Aleksander-Baum/eindproject/assets/113974461/079570db-60dc-4f81-b570-51f0d3267d9c)

**Configuration Netlify aleksander-api domain**
![site_setup_netlify](https://github.com/Aleksander-Baum/eindproject/assets/113974461/fe1652b4-bd18-4e72-91a1-0a21c07469c9)

**Auto-publishing proof (linked to the index file in this repo)**
![Proof_auto_publishing](https://github.com/Aleksander-Baum/eindproject/assets/113974461/bccac923-f19f-41ec-8976-4452c08507d2)

## Werking API Postman
### Login with owner, enter credentials
![auth_before](https://github.com/Aleksander-Baum/eindproject/assets/113974461/34d101ce-5214-411a-8cf6-721fc6d784ba)

### Login with owner, complete
![auth_complete](https://github.com/Aleksander-Baum/eindproject/assets/113974461/228954eb-69f0-4117-afaa-5f8ae04c7c8b)

### Login with owner, response
![auth_after](https://github.com/Aleksander-Baum/eindproject/assets/113974461/12d69a92-22a9-4484-aab8-5426cfb5cbea)

### Create restaurant
![1Add Restaurant](https://github.com/Aleksander-Baum/basisproject/assets/113974461/81421410-b82a-4ca9-b4a2-942a3208973c)

### Put edit restaurant (before, see current address)
![API555](https://github.com/Aleksander-Baum/eindproject/assets/113974461/f180566a-f49b-42ab-a544-4dcd0413fd45)

### Put edit restaurant (after, new address)
![API_Put_After](https://github.com/Aleksander-Baum/eindproject/assets/113974461/ac845859-cdd1-4624-b0ba-cd129f7422bf)

### Read restaurants
![2Show Restaurants](https://github.com/Aleksander-Baum/basisproject/assets/113974461/2ccb5ba7-55b8-4c86-8ff9-f2f604c05fea)

### Read specific restaurant
![3Show Specifig Restaurant](https://github.com/Aleksander-Baum/basisproject/assets/113974461/666edcb6-5f48-42b1-9917-4853caefaecf)

### Create owner
![Owner_create](https://github.com/Aleksander-Baum/eindproject/assets/113974461/a8c07529-1aa9-4d73-b56f-e3f159dbac1c)

### Read owners
![5Show Owners](https://github.com/Aleksander-Baum/basisproject/assets/113974461/7f8dc11a-be3f-4e13-b3d6-e42d782667bb)

### Create Menu Item
![6Add Menu Item](https://github.com/Aleksander-Baum/basisproject/assets/113974461/db57bbfd-58e5-4681-be9b-89847fb5eb5f)

### Read Menu Items
![7Show Menu Items](https://github.com/Aleksander-Baum/basisproject/assets/113974461/6732ad10-a210-4d4c-8f13-e45ed4d5e66e)

### Delete Menu Item
![8Delete Item](https://github.com/Aleksander-Baum/basisproject/assets/113974461/6701a079-d1b6-45c0-84c7-fbf691532e49)

## OpenAPI Docs screenshots
![Default_OpenAPI](https://github.com/Aleksander-Baum/eindproject/assets/113974461/101e8d4b-f14d-4392-9420-6feceabe0a45)
![Schemas_OpenAPI](https://github.com/Aleksander-Baum/eindproject/assets/113974461/998568e8-44f9-48f6-95b4-8eb65c303c4d)

### Authorization OAuth
![Auth_Screen](https://github.com/Aleksander-Baum/eindproject/assets/113974461/a3f96391-5a45-491c-887f-c1568a716c63)

### POST /restaurant/
![POSTrestaurant](https://github.com/Aleksander-Baum/basisproject/assets/113974461/7d5ac89f-8c3a-41a0-bcd9-92a219162c4c)

### PUT /restaurant/
![Put_Address](https://github.com/Aleksander-Baum/eindproject/assets/113974461/ab5b0dbf-bbaf-4568-83f3-b859ea6cd39a)

### GET /restaurants/
![GETrestaurants](https://github.com/Aleksander-Baum/basisproject/assets/113974461/7b968d46-8219-4262-9205-a2b4651def81)

### GET /restaurants/{restaurant_id}
![GETrestaurantsID](https://github.com/Aleksander-Baum/basisproject/assets/113974461/638fb5c0-0ba3-4740-8b4a-1bc3786bb24f)

### POST /owner/
![Post_Owner](https://github.com/Aleksander-Baum/eindproject/assets/113974461/40718a33-b2af-4922-91cc-d67ef1461688)

### GET /owners/
![GETowners](https://github.com/Aleksander-Baum/basisproject/assets/113974461/eae29037-cc9e-47aa-a23e-1502418063af)

### POST /menuitem/
![POSTmenuitem](https://github.com/Aleksander-Baum/basisproject/assets/113974461/fe34cf61-9dd5-46ef-8d90-341923c2c37c)

### GET /menuitems/{restaurant_id}
![GETmenuitems](https://github.com/Aleksander-Baum/basisproject/assets/113974461/6d22cf00-51f5-4d4f-81ee-f0014425557e)

### DELETE /restaurants/{restaurant_id}/menuitems/{menu_item_id}
![DELETErestaurantsIDitemID](https://github.com/Aleksander-Baum/basisproject/assets/113974461/0d3ca863-3282-402c-a6b7-b27cda55eb6e)
