# Краткий гайд по всем особенностям стима 

## Steam id's
`assetid` -  <**64bit  integer**> уникальный ид для всех инвентарей с одинаковым AppID+ContextID
т.е. уникален для всех предметов csgo, **МЕНЯЕТСЯ ПОСЛЕ ТРЕЙДА**, стим иногда может делать rollback трейдов и тогда ? assetid меняется назад ??? 

`classid` - <**64bit  integer**> тип предмета (AWP | Азимов (Поношенное)),  
может быть = 0 (если качества нету? - кейсы, наклейки и пр)

`instanceid` - <**64bit  integer**> качество и свойства (вроде наклеек)

По паре classid_instanceid  можно получить описание предмета 


## Полезные ссылки:
- https://steamcommunity.com/sharedfiles/filedetails/?l=ukrainian&id=169698044
- https://dev.doctormckay.com/topic/332-identifying-steam-items/
- <a href="https://lab.xpaw.me/steam_api_documentation.html" target="_blank">Самый полный список методов апи (некоторые  недокументированные)</a>
- <a href="http://steamwebapi.azurewebsites.net" target="_blank">Альтернативная документация(походу тот же источник)</a>
- <a href="https://developer.valvesoftware.com/wiki/Steam_Web_API/Feedback#CS:GO_Weapon_Images" target="_blank">некоторые баги/особенности апи</a>
-  <a href="https://github.com/SteamDatabase/GameTracking/blob/master/csgo/csgo/resource/csgo_english_utf8.txt" target="_blank">csgo_english</a>


## Item Rarity
- Consumer grade (white)
- Industrial grade (light blue)
- Mil-spec (darker blue)
- Restricted (purple)
- Classified (pinkish purple)
- Covert (red)
- Exceedingly Rare ★ (gold)
- Contraband (light orange) – discontinued skins

## Item Exteriors
- Battle-Scarred – [BS]
- Well-Worn – [WW]
- Field-Tested – [FT]
- Minimal Wear – [MW]
- Factory New – [FN]

## Skins also come in 3 different types (from Counter-Strike Wiki):
- self-made Prototype 
- StatTrak
- Souvenir
- Normal (for all other skins)

### Item can't cant come in both Souvenir and Stat-Trak!!

In the Steam Market and in-game inventory, all general skins have a white border around the preview icon, while knives are bordered with Purple, the StatTrak™ weapons with Orange, Souvenir weapons with Yellow, and self-made Prototype skins with Green.
## StatTrak
All StatTrak skins must be obtained from a weapon case. This means that weapon drops through normal gameplay do not have StatTrak variants.
This means that weapons that come from a collection that isn't from a case (the Assault collection, the Nuke collection, the Inferno collection, etc.) will not have StatTrak variants.
## Souvenir

http://www.tobyscs.com/csgo-item-quality-guide/
## Item Type 
- Pistol
- SMG
- Rifle
- Sniper Rifle
- Shotgun
- Machinegun
- Knife
- Container
- Sticker
- Graffiti
- Music Kit
- Collectible
- Key
- Pass
- Gift
- Tool
- Tag

### There is also several types that are not selling on market, be carefull with that 
```
"CSGO_Type_Equipment": "Equipment",
"CSGO_Type_Grenade": "Grenade",
"CSGO_Type_C4": "C4",
"CSGO_Type_Collectible": "Collectible",
"CSGO_Type_MapToken": "Map Stamp",
"CSGO_Type_Spray": "Graffiti",
"CSGO_Type_Paint": "Paint",
"CSGO_Type_Recipe": "Contract",
"CSGO_Type_Weapon": "Weapon",
"CSGO_Type_StoreBundle": "Bundle",
"CSGO_Type_Quest": "Mission",
```

## Stickers 
http://blog.counter-strike.net/workshop/stickers/

Golden Stickers (e.g. ``3DMAX (Gold) | Katowice 2015``) doesn't drop separately, they appears only on weapons droped from souvenir tournament packages (e.g. ``ESL One Cologne 2015 Mirage Souvenir Package``)

## Graffiti
https://support.steampowered.com/kb_article.php?ref=7737-UKVB-0657
There are two different types of graffiti patterns: monochrome(Exotic Graffiti) and multi-colored (Base Grade Graffiti). Monochrome (one color) patterns are received as rank up drops and multi-colored patterns are received when purchasing a graffiti box. Both types of graffiti can be traded and sold on the Steam Market.

Graffiti can be sold on the Steam Market and traded as long as it is sealed. Once a player has unsealed their graffiti it can not be traded or sold on the Steam Market.

Graffiti colors are part of the name, and each color has separate listing on market: ``Sealed Graffiti | Sorry (Bazooka Pink)``

### Graffiti colors (for multi-colored)
- Brick Red
- Blood Red
- Tiger Orange
- Dust Brown
- Desert Amber
- Tracer Yellow
- Battle Green
- Jungle Green
- Frog Green
- Cash Green
- Wire Blue
- Monarch Blue
- SWAT Blue
- Violent Violet
- Monster Purple
- Bazooka Pink
- Princess Pink
- War Pig Pink
- Shark White

# Market
market url format: ``http://steamcommunity.com/market/listings/730/{ITEM_NAME}%20%7C%20{SKIN_NAME}%20%28{USAGE_THINGY Ex. Well-Worn}%29``
## in market_hash_name '/' becomes '-'  (Holo/Foil) -> (Holo-Foil)
[ISteamEconomy_CanTrade_v1](https://lab.xpaw.me/steam_api_documentation.html#ISteamEconomy_CanTrade_v1)
[ISteamEconomy_GetAssetPrices_v1](https://lab.xpaw.me/steam_api_documentation.html#ISteamEconomy_GetAssetPrices_v1) курсы валют стима для маркета
https://lab.xpaw.me/steam_api_documentation.html#ISteamPublishedItemSearch ??????

## Get market item price

http://steamcommunity.com/market/priceoverview/?currency=3&appid=730&market_hash_name=<market_hash_name>
```js
{
  "success": true,
  "lowest_price": "1,43&#8364; ",
  "volume": "562",
  "median_price": "1,60&#8364; "
}
