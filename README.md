# Краткий гайд по всем особенностям стима 

## Steam id's
`assetid` -  <**64bit  integer**> уникальный ид для всех инвентарей с одинаковым AppID+ContextID
т.е. уникален для всех предметов csgo, **МЕНЯЕТСЯ ПОСЛЕ ТРЕЙДА**, стим иногда может делать rollback трейдов и тогда ? assetid меняется назад ??? 

`classid` - <**64bit  integer**> тип предмета (AWP | Азимов (Поношенное)),  
может быть = 0 (если качества нету? - кейсы, наклейки и пр)

`instanceid` - <**64bit  integer**> качество и свойства (вроде наклеек)

По паре classid_instanceid  можно получить описание предмета 


## Полезные ссылки:
- https://dev.doctormckay.com/topic/332-identifying-steam-items/
- <a href="https://lab.xpaw.me/steam_api_documentation.html" target="_blank">Самый полный список методов апи (некоторые  недокументированные)</a>
- <a href="https://developer.valvesoftware.com/wiki/Steam_Web_API/Feedback#CS:GO_Weapon_Images" target="_blank">некоторые баги/особенности апи</a>


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
