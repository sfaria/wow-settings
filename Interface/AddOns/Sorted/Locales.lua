local _, S = ...

local locales = {
    [1] = "enUS",
    [2] = "enGB",
    [3] = "frFR",
    [4] = "deDE",
    [5] = "itIT",
    [6] = "koKR",
    [7] = "zhCN",
    [8] = "zhTW",
    [9] = "ruRU",
    [10] = "esES",
    [11] = "esMX",
    [12] = "ptBR",
}
local localesFallback = {
    ["zhCN"] = "zhTW",
    ["zhTW"] = "zhCN",
    ["esES"] = "esMX",
    ["esMX"] = "esES"
}
local localizations = {}
for _, locale in pairs(locales) do
    localizations[locale] = {}
end

local function ParseTSV()
-- Tab Separated Values spreadsheet imported directly from https://docs.google.com/spreadsheets/d/17eIDO0UU86-DUYjvu_ZyJ_9b8kMA9kTbAMDiQ0elXQA/edit?usp=sharing
local tsv = 
[[TITLE	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.	Sorted.
NOTES	Modern bag interface with efficient searching and filters.	Modern bag interface with efficient searching and filters.	Interface de Sac moderne avec un système de recherche et de filtre efficace.	Moderne Taschendarstellung mit effzienter Suche und Filtermöglichkeiten		효율적인 검색 및 필터 기능을 갖춘 현대적인 가방 인터페이스.	现代的背包界面，并带有高效搜寻以及过滤分类功能。	摩登酷炫的背包介面，並帶有高效搜尋以及過濾分類功能。		Interfaz de bolsa moderna con búsqueda eficiente y filtros	Interfaz de bolsa moderna con búsqueda eficiente y filtros	Uma bolsa com interface moderana, com funções eficientes de filtros e procura
CATEGORY_WEAPONS	Weapons	Weapons	Armes	Waffen	Armi	무기	武器	武器	Оружие	Armas	Armas	Armas
CATEGORY_ARMOR	Armor	Armour	Armure	Rüstung	Armature	방어구	护甲	護甲	Доспехи	Armadura	Armadura	Armadura
CATEGORY_ACCESSORIES	Accessories	Accessories	Accessoires	Accessoires	Accessori	장식	配件	配件	Аксессуары	Accesorios	Accesorios	Acessórios
CATEGORY_CONTAINERS	Containers	Containers	Conteneurs	Behälter	Borse	가방류	容器	容器	Сумки	Recipientes	Contenedores	Recipientes
CATEGORY_GEMS	Gems	Gems	Gemmes	Edelsteine	Gemme	보석	宝石	寶石	Камни	Gemas	Gemas	Gemas
CATEGORY_ITEM_ENHANCEMENTS	Item Enhancements	Item Enhancements	Améliorations d’objet	Gegenstandsverzauberungen	Potenziamenti oggetto	아이템 강화	物品强化	物品附魔	Улуч. предметов	Mejoras de objetos	Mejoras de objetos	Aperfeiçoamentos de Itens
CATEGORY_CONSUMABLES	Consumables	Consumables	Consommables	Verbrauchbare Gegenstände	Consumabili	소비용품	消耗品	消耗品	Расход. предметы	Consumibles	Consumibles	Consumíveis
CATEGORY_GLYPHS	Glyphs	Glyphs	Glyphes	Glyphen	Glifi	문양	雕文	雕紋	Символы	Glifos	Glifos	Glifos
CATEGORY_TRADE_GOODS	Trade Goods	Trade Goods	Fournitures d’artisanat	Handwerkswaren	Beni commerciali	직업용품	商品	商品	Хоз. товары	Objetos comerciales	Objetos comerciables	Mercadorias
CATEGORY_RECIPES	Recipes	Recipes	Recettes	Rezepte	Ricette	제조법	配方	配方	Рецепты	Recetas	Recetas	Receitas
CATEGORY_BATTLE_PETS	Battle Pets	Battle Pets	Mascottes de combat	Kampfhaustiere	Mascotte da combattimento	전투 애완동물	战斗宠物	戰寵	Питомцы	Mascotas de duelo	Mascotas de duelo	Mascotes de Batalha
CATEGORY_QUEST_ITEMS	Quest Items	Quest Items	Objets de quête	Questgegenstände	Oggetti di missione	퀘스트 아이템	任务物品	任務物品	Для задания	Objetos de misión	Objetos con misión	Itens de missão
CATEGORY_MISCELLANEOUS	Miscellaneous	Miscellaneous	Divers	Verschiedenes	Varie	기타	杂项	雜項	Разное	Miscelánea	Miscelánea	Diversos
ITEM_BACKPACK	Backpack	Backpack	Sac à dos	Rucksack		배낭	背包	背包	Рюкзак	Mochila	Mochila	Mochila
ITEM_UNKNOWN_KEYSTONE	Mythic Keystone	Mythic Keystone	Clé mythique	Mythischer Schlüsselstein		신화 쐐기돌	史诗钥石	傳奇鑰石	Ключ	Piedra angular mítica	Piedra angular mítica	Pedra-chave Mítica
ITEM_MYTHIC_KEYSTONE	Keystone: %s	Keystone: %s	Clé : %s	Schlüsselstein: %s		쐐기돌: %s	钥石：%s	鑰石：%s	Ключ: %s	Piedra angular: %s	Piedra angular: %s	Pedra-chave %s
ITEM_PET_CAGED	Pet Cage: %s	Pet Cage: %s	Mascotte en cage	Haustierkäfig: %s		애완동물 우리: %s	宠物笼：%s	寵物籠：%s	Клетка для питомца	Jaula de mascota: %s	Jaula de mascota: %s	Jaula de Mascote
COLUMN_FAVORITES	Favorites	Favourites	Favoris	Favoriten		즐겨찾기	最爱	最愛	Избранное	Favoritos	Favoritos	Favoritos
COLUMN_QUANTITY	Quantity	Quantity	Quantité	Menge		수량	数量	數量	Кол-во	Cantidad	Cantidad	Quantidade
COLUMN_ICON	Icon	Icon	Icône	Symbol		아이콘	图标	圖示	Значок	Icono	Icono	Ícone
COLUMN_NAME	Name	Name	Nom	Name		이름	名称	名稱	Имя	Nombre	Nombre	Nome
COLUMN_NAME_SHORT	Name	Name	Nom	Name		이름	名称	名稱	Имя	Nombre	Nombre	Nome
COLUMN_RARITY_SHORT	Rarity	Rarity	Rareté	Seltenheit		희귀도	质量	質量	Редкость	Rareza	Rareza	Raridade
COLUMN_REQUIRED_LEVEL	Required Level	Required Level	Niveau Requis	Benötigtes Level		최소 요구 레벨	需要等级	需求等級	Рек. уровень	Nivel necesario	Nivel necesario	Nível necessário
COLUMN_REQUIRED_LEVEL_SHORT	Req	Req	Req	Ben.		최소렙	需求	需求	рек.	Necesita	Necesita	Necessário
COLUMN_ITEM_LEVEL	Item Level	Item Level	Niveau d'Objet	Gegenstandslevel		아이템 레벨	物品等级	物品等級	Ур. предмета	Nivel de objeto	Nivel de objeto	Nível de Item
COLUMN_ITEM_LEVEL_SHORT	Lvl	Lvl	Nv	Lvl		템렙	等级	等級	ур.	Nivel	Nivel	Nível
COLUMN_TIME_ADDED	Time Added	Time Added	Heure d'Ajout	Hinzugefügt		획득 시기	添加时间	加入時間	Время	Tiempo añadido	Tiempo añadido	Adquirido em
COLUMN_TIME_ADDED_SHORT	Age	Age	Age	Alter		획득	时间	時間	Время	Antigüedad	Antigüedad	Idade
COLUMN_TYPE	Type	Type	Type	Typ		종류	类型	類型	Тип	Tipo	Tipo	Tipo
COLUMN_TYPE_SHORT	Type	Type	Type	Typ		종류	类型	類型	Тип	Tipo	Tipo	Tipo
COLUMN_BINDING	Binding	Binding	Lié	Bindung		귀속	绑定类型	綁定類型	Привязка	Ligar	Ligar	Vinculação
COLUMN_BINDING_SHORT	Bind	Bind	Lien	Bind		귀속	绑定	綁定	Перс.	Ligado	Ligado	Vinculado
COLUMN_EXPANSION	Expansion	Expansion	Extension	Erweiterung		확장팩	资料片	資料片	Расширение	Expansión	Expansión	Expansão
COLUMN_EXPANSION_SHORT	Xpac	Xpac	Ext.	Erw.		확팩	资料片	資料片	Расш.	Expan	Expan	Expan
COLUMN_SELL_PRICE	Sell Price	Sell Price	Prix de Vente	Verkaufspreis		판매 가격	售出价格	售出價格	Цена продажи	Precio de venta	Precio de venta	Preço de venda
COLUMN_SELL_PRICE_SHORT	Value	Value	Valeur	Wert		값	售价	售價	Цена	Valor	Valor	Valor
GROUPING_CATEGORY	Category	Category					类别	類別				
TAB_BANK	Bank	Bank	Banque	Bank		은행	银行	銀行	Банк	Banco	Banco	Banco
TAB_REAGENTS	Reagents	Reagents	Composants	Reagenzien		재료 은행	材料银行	材料銀行	Хранилище	Componentes	Componentes	Mercadorias
BUTTON_SELL_GRAYS	Sell Grays	Sell Greys	Vendre gris	Verk. Müll		잡동사니 판매	卖出垃圾	賣出垃圾	Продажа	Vender grises	Vender grises	Vender cinzas
BUTTON_DEPOSIT_REAGENTS	Deposit Reagents	Deposit Reagents	Déposer les composants	Reagenzien lagern		모든 재료 보관	存入材料	存入材料	Сложить предметы	Depositar Componentes	Depositar Componentes	Depositar Mercadorias
BUTTON_BUY_REAGENTS	Purchase	Purchase	Achats	Kaufen		구입	购买	購買	Покупка	Comprar	Comprar	Comprar
WARNING_BUY_REAGENTS	This tab gives you additional storage for raw profession materials.\nDo you wish to purchase this tab?	This tab gives you additional storage for raw profession materials.\nDo you wish to purchase this tab?	Cet onglet vous offre plus d'emplacement de stockage pour les matériaux bruts. Voulez-vous acheter cet onglet?	Dieser Tab gibt Dir zusätzlichen Platz für Rohmaterialien für Berufe. Willst du diesen Tab kaufen?		이 보관함에는 직업용품을 추가로 보관할 수 있습니다.\n이 보관함을 구입하시겠습니까?	此标签页为您提供额外的专业原料存储空间。\n您想要购买此标签页吗？	此標籤為您提供了額外的存儲專業原料的空間。\n您想要購買此標籤頁嗎？	Эта вкладка дает вам дополнительное хранилище для материалов профессии.\nВы хотите приобрести эту вкладку?	Esta pestaña te da almacenaje adicional para materiales de profesiones.\n ¿Te gustaría comprar esta pestaña?	Esta pestaña te da almacenaje adicional para materiales de profesiones.\n ¿Te gustaría comprar esta pestaña?	Esta aba lhe dará espaço adicional para mercadorias.\nVocê deseja comprar esta aba?
WARNING_NO_ITEMS_FOUND	No items found	No items found	Aucun objet trouvé	Keine Gegenstände gefunden		아이템을 찾을 수 없음	没找到物品	沒找到物品	Пусто	No se encontraron objetos	No se encontraron objetos	Itens não encontrados
WARNING_BANK_NOT_CACHED	Visit a banker once on %s\n to see their bank contents here	Visit a banker once on %s\n to see their bank contents here	Rendez visite à un Banquier au moins une fois sur %s\n pour voir le contenu de leur Banque ici	Besuche den Banker einmalig um den Bankinhalt hier zu sehen		%s의 은행원에게 방문하여\n이곳에서 은행 확인	请在%s\n访问银行柜员一次，以便查阅他的银行物品	請登入%s並訪問銀行職員一次\n來查閱他們的銀行物品	Посетите банкира один раз, чтобы увидеть содержимое банка	Visita un banquero en %s\n para ver el contenido del banco aquí	Visita un banquero en %s\n para ver el contenido del banco aquí	Visite um banqueiro uma vez para poder ver seus itens aqui
WARNING_REAGENTS_NOT_CACHED	Visit a banker once on %s\n to see the contents of their reagent bank here	Visit a banker once on %s\n to see the contents of their reagent bank here	Rendez visite à un Banquier au moins une fois sur %s\n pour voir le contenu de leur Banque de Composants  ici	Besuche den Banker einmalig um den Inhalt der Reagenzienbank hier zu sehen		%s의 은행원에게 방문하여\n이곳에서 재료 은행 확인	请在%s\n访问银行柜员一次，以便查阅他的材料银行物品	請登入%s並訪問銀行職員一次\n來查閱他們的材料銀行物品	Посетите банкира один раз, чтобы увидеть содержимое банка реагентов	Visita un banquero en %s\n para ver los componentes del banco aquí	Visita un banquero en %s\n para ver los componentes del banco aquí	Visite um banqueiro uma vez para poder ver suas mercadorias aqui
WARNING_REAGENTS_NOT_PURCHASED	Visit a banker on %s\n to purchase their reagent bank	Visit a banker on %s\n to purchase their reagent bank	Rendez visite à un Banquier pour acheter leur Banque de Composants	Besuche den Banker einmalig um Reagenzienbankplätze zu kaufen		%s의 은행원에게 방문하여\n 재료 은행 구입	请在%s\n访问银行柜员以便购买他的材料银行	請登入%s並訪問銀行職員\n來購買他們的材料銀行	Посетите банкира, чтобы купить банк реагентов	Visita un banquero en %s\n para comprar el banco de componentes	Visita un banquero en %s\n para comprar el banco de componentes	Visite um banqueiro para comprar seu banco de mercadorias
DROPDOWN_MENU_EQUIPMENT_SET	Equipment Sets	Equipment Sets	Ensembles d'équipement	Ausrüstungssets		장비 구성	套装	套裝設定	Комплект	Sets de Equipo	Sets de Equipo	Conjuntos de equipamento
DROPDOWN_MENU_EQUIPMENT_SET_NONE	No Equipment Set	No Equipment Set	Pas d'ensemble d'équipement	Kein Ausrüstungsset		장비 구성 없음	无套装	無套裝設定	Без комплекта	No hay set de Equipo	No hay set de Equipo	Sem conjuntos de equipamento
DROPDOWN_MENU_CLEAR	Clear	Clear	Vider	Löschen		초기화	清除	清除	Очистить	Borrar	Borrar	Limpar
FILTER_TYPE	Type	Type	Type	Typ		종류	类型	類型	Тип	Tipo	Tipo	Tipo
FILTER_EQUIP_LOCATION	Equip Location	Equip Location		Ausrüstungsplatz		착용 부위	装备位置	裝備位置	Ячейка экипировки	Localización del Equipo	Localización del Equipo	Equipado em
FILTER_SUBTYPE	Subtype	Subtype	Sous type	Untertyp		소분류	子类别	子類別	Тип	Subtítulo	Subtítulo	Subtipo
FILTER_STATS	Stats	Stats	Stats	Attribute		능력치	属性	屬性	Характеристики	Estadísticas	Estadísticas	Status
FILTER_QUALITY	Quality	Quality	Qualité	Qualität		품질	品质	品質	Качество	Calidad	Calidad	Qualidade
FILTER_TIME_ADDED	Time Added	Time Added	Temps ajouté	Hinzugefügt am		획득 시간	添加时间	加入時間	Добавлено	Tiempo añadido	Tiempo añadido	Adquirido em
FILTER_BINDING	Binding	Binding	Raccourci	Bindung		귀속	绑定	綁定	Перс.	Vendajes	Vendajes	Vinculação
FILTER_EXPANSION	Expansion	Expansion	Extension	Erweiterung		확장팩	资料片	資料片	Расширение	Expansión	Expansión	Expansão
FILTER_LEVEL	Level	Level	Niveau	Level		레벨	等级	等級	Уровень	Nivel	Nivel	Nível
FILTER_MARKER_ICON	Marker Icon	Marker Icon	Icône de marqueur de cible	Markersymbol		징표	标记	標記圖示	Метка	Icono Marcador	Icono Marcador	Icone Marcador
FILTER_NAME_SEARCH	Name Search	Name Search	Recherche de nom	Namenssuche		이름 검색	名称搜寻	名稱搜尋	Поиск	Búsqueda por nombre	Búsqueda por nombre	Pesquisa por Nome
FILTER_TOOLTIP_SEARCH	Tooltip Search	Tooltip Search				툴팁 검색	提示搜索	提示搜尋				Busca na dica de ferramenta
FILTER_LIB_ITEM_SEARCH	(Advanced) LibItemSearch Query	(Advanced) LibItemSearch Query										
FILTER_SPECIFIC_ITEMS	Specific Items	Specific Items	Objet spécifique	Spezifische Gegenstände		특정 아이템	特定物品	特定物品	Спец. предметы	Objetos específicos	Objetos específicos	Itens específicos
SUBFILTER_TYPE_ARMOR	Armor	Armour	Armure	Rüstung		방어구	护甲	護甲	Броня	Armadura	Armadura	Armadura
SUBFILTER_TYPE_BATTLE_PET	Battle Pet	Battle Pet	Mascotte de combat	Kampfhaustiere		전투 애완동물	战斗宠物	戰寵	Питомцы	Mascota de duelo	Mascota de duelo	Mascote de batalha
SUBFILTER_TYPE_CONSUMABLE	Consumable	Consumable	Consommable	Verbrauchbares		소모성	消耗品	消耗品	Расх. материал	Consumibles	Consumibles	Consumíveis
SUBFILTER_TYPE_CONTAINER	Container	Container	Conteneur	Container		가방	容器	容器	Сумки	Contenedor	Contenedor	Recipientes
SUBFILTER_TYPE_GEM	Gem	Gem	Gemme	Edelstein		보석	宝石	寶石	Камни	Gema	Gema	Gemas
SUBFILTER_TYPE_GLYPH	Glyph	Glyph	Glyphe	Glyph		문양	雕纹	雕紋	Символы	Glifo	Glifo	Glifos
SUBFILTER_TYPE_ITEM_ENHANCEMENT	Item Enhancement	Item Enhancement	Amélioration d'objet	Itemverbesserung		아이템 강화	物品强化	物品強化	Улуч. предмета	Objeto de Mejora	Objeto de Mejora	Aperfeiçoamentos de Itens
SUBFILTER_TYPE_KEY	Key	Key	Clé	Schlüssel		열쇠	钥匙	鑰匙	Ключ	LLave	LLave	Chave
SUBFILTER_TYPE_MISCELLANEOUS	Miscellaneous	Miscellaneous	Divers	Verschiedenes		기타	杂项	雜項	Разное	Miscelánea	Miscelánea	Diversos
SUBFILTER_TYPE_REAGENT	Reagent	Reagent	Composant	Reagenz		재료	试剂	試劑	Реагент	Componentes	Componentes	Mercadorias
SUBFILTER_TYPE_RECIPE	Recipe	Recipe	Recette	Rezept		습득서	配方	配方	Рецепт	Recetas	Recetas	Receita
SUBFILTER_TYPE_PROJECTILE	Projectile	Projectile	Projectile	Projektil		발사체	发射物	發射物	Снаряд	Proyectiles	Proyectiles	Projéteis
SUBFILTER_TYPE_QUEST	Quest	Quest	Quête	Quest		퀘스트	任务	任務	Задание	Misión	Misión	Missão
SUBFILTER_TYPE_QUIVER	Quiver	Quiver	Carquois	Köcher		화살통	箭袋	箭袋	Колчан	Carcaj	Carcaj	Aljava
SUBFILTER_TYPE_TRADE_GOODS	Trade Good	Trade Good		Handelswaren		직업용품	商品	商品	Хоз. товар	Bienes de Comercio	Bienes de Comercio	Mercadorias
SUBFILTER_TYPE_WEAPON	Weapon	Weapon	Arme	Waffe		무기	武器	武器	Оружие	Arma	Arma	Arma
SUBFILTER_EQUIP_LOCATION_HEAD	Head	Head	Tête	Kopf		머리	头部	頭部	Голова	Cabeza	Cabeza	Cabeça
SUBFILTER_EQUIP_LOCATION_NECK	Neck	Neck	Cou	Hals		목	颈部	頸部	Шея	Cuello	Cuello	Pescoço
SUBFILTER_EQUIP_LOCATION_SHOULDER	Shoulder	Shoulder	Épaule	Schulter		어깨	肩部	肩部	Плечи	Hombro	Hombro	Ombro
SUBFILTER_EQUIP_LOCATION_BACK	Back	Back	Dos	Rücken		등	斗篷	背部	Спина	Espalda	Espalda	Costas
SUBFILTER_EQUIP_LOCATION_CHEST	Chest	Chest	Torse	Brust		가슴	胸部	胸部	Грудь	Pecho	Pecho	Torso
SUBFILTER_EQUIP_LOCATION_SHIRT	Shirt	Shirt	Chemise	Hemd		속옷	衬衫	襯衣	Рубашка	Camisa	Camisa	Camiseta
SUBFILTER_EQUIP_LOCATION_TABARD	Tabard	Tabard	Tabard	Wappenrock		겉옷	战袍	外袍	Накидка	Tabardo	Tabardo	Tabardo
SUBFILTER_EQUIP_LOCATION_WRIST	Wrist	Wrist	Poignet	Handgelenk		손목	手腕	手腕	Запястье	Muñeca	Muñeca	Pulsos
SUBFILTER_EQUIP_LOCATION_HANDS	Hands	Hands	Mains	Hände		손	手	手	Кисти	Manos	Manos	Mãos
SUBFILTER_EQUIP_LOCATION_WAIST	Waist	Waist	Ceinture	Taille		허리	腰部	腰部	Пояс	Cintura	Cintura	Cintura
SUBFILTER_EQUIP_LOCATION_LEGS	Legs	Legs	Pantalon	Beine		다리	腿部	腿部	Ноги	Piernas	Piernas	Pernas
SUBFILTER_EQUIP_LOCATION_FEET	Feet	Feet	Pieds	Füße		발	脚	腳	Обувь	Pies	Pies	Pés
SUBFILTER_EQUIP_LOCATION_FINGER	Finger	Finger	Doigt	Finger		손가락	手指	手指	Палец	Dedo	Dedo	Dedos
SUBFILTER_EQUIP_LOCATION_TRINKET	Trinket	Trinket	Bijou	Schmuck		장신구	饰品	飾品	Аксессуар	Abalorio	Abalorio	Berloques
SUBFILTER_EQUIP_LOCATION_OFF_HAND	Off-Hand	Off-Hand	Main gauche	Nebenhand		보조장비	副手	副手	Левая рука	Improvisado	Improvisado	Mão Secundária
SUBFILTER_EQUIP_LOCATION_RELIC	Relic	Relic	Relique	Relikt		유물	圣物	聖物	Реликвия	Reliquia	Reliquia	Relíquia
SUBFILTER_EQUIP_LOCATION_ONE_HAND	One-Handed	One-Handed	Arme à 1 main	Einhändig		한손	单手	單手	Одноручное	Una mano	Una mano	Uma Mão
SUBFILTER_EQUIP_LOCATION_TWO_HAND	Two-Handed	Two-Handed	Arme à 2 mains	Zweihändig		양손	双手	雙手	Двуручное	Dos manos	Dos manos	Duas Mãos
SUBFILTER_EQUIP_LOCATION_RANGED	Ranged	Ranged	Arme à distance	Fernkampf		원거리	远程	遠程	Дальний бой	Rango	Rango	Longo Alcance
SUBFILTER_SUBTYPE_ARMOR_PLATE	Plate	Plate	Plaque	Platte		판금	板甲	鎧甲	Латы	Placa	Placa	Placas
SUBFILTER_SUBTYPE_ARMOR_MAIL	Mail	Mail	Maille	Kette		사슬	锁甲	鎖甲	Кольчуга	Malla	Malla	Malha
SUBFILTER_SUBTYPE_ARMOR_LEATHER	Leather	Leather	Cuir	Leder		가죽	皮甲	皮甲	Кожа	Cuero	Cuero	Couro
SUBFILTER_SUBTYPE_ARMOR_CLOTH	Cloth	Cloth	Tissu	Kleidung		천	布甲	布甲	Ткань	Tela	Tela	Tecido
SUBFILTER_SUBTYPE_ARMOR_COSMETIC	Cosmetic	Cosmetic	Cosmétique	Kosmetisch		장식	造型	造型	Косметика	Cosmético	Cosmético	Cosmético
SUBFILTER_SUBTYPE_ARMOR_GENERIC	Generic	Generic	Générique	Generisch		포괄적	一般	一般	Общий	Generico	Generico	Genérico
SUBFILTER_SUBTYPE_ARMOR_SHIELDS	Shields	Shields	Bouclier	Schild		방패	盾牌	盾牌	Щиты	Escudos	Escudos	Escudos
SUBFILTER_SUBTYPE_ARMOR_LIBRAMS	Librams	Librams		Librams		고서	圣契	聖契	Весы	Librama	Librama	
SUBFILTER_SUBTYPE_ARMOR_IDOLS	Idols	Idols	Idoles	Idole		우상	雕像	雕像	Идолы	Ídolos	Ídolos	Ídolos
SUBFILTER_SUBTYPE_ARMOR_TOTEMS	Totems	Totems	Totems	Totems		토템	图腾	圖騰	Тотемы	Tótems	Tótems	Totems
SUBFILTER_SUBTYPE_ARMOR_SIGILS	Sigils	Sigils	Sigiles	Siegel		인장	符印	符印	Сигилы	Sigilos	Sigilos	Sigílos
SUBFILTER_SUBTYPE_BATTLE_PET_HUMANOID	Humanoid	Humanoid	Humanoïdes	Menschlich		인간형	人形	人形生物	Гуманоид	Humanoide	Humanoide	Humanoide
SUBFILTER_SUBTYPE_BATTLE_PET_DRAGON	Dragon	Dragon	Dragon	Drache		용족	龙类	龍類	Дракон	Dragón	Dragón	Dragão
SUBFILTER_SUBTYPE_BATTLE_PET_FLYING	Flying	Flying	Volant	Fliegend		비행	飞行	飛行	Летающий	Volador	Volador	Voador
SUBFILTER_SUBTYPE_BATTLE_PET_UNDEAD	Undead	Undead	Mort-vivant	Untot		언데드	亡灵	不死	Нежить	No muerto	No muerto	Morto-Vivo
SUBFILTER_SUBTYPE_BATTLE_PET_CRITTER	Critter	Critter	Bestiole	Kleintier		동물	小生物	小動物	Зверек	Bicho	Bicho	Bicho
SUBFILTER_SUBTYPE_BATTLE_PET_MAGICAL	Magical	Magical	Magique	Magisch		마법	魔法	魔法	Магический	Mágico	Mágico	Mágico
SUBFILTER_SUBTYPE_BATTLE_PET_ELEMENTAL	Elemental	Elemental	Elémentale	Elementar		정령	元素	元素	Элементаль	Elemental	Elemental	Elemental
SUBFILTER_SUBTYPE_BATTLE_PET_BEAST	Beast	Beast	Bête	Biest		야수	野兽	野獸	Животное	Bestia	Bestia	Fera
SUBFILTER_SUBTYPE_BATTLE_PET_WATER	Water	Water	Aquatique	Wasser		물	水栖	水棲	Водный	Agua	Agua	Água
SUBFILTER_SUBTYPE_BATTLE_PET_MECHANICAL	Mechanical	Mechanical	Machine	Mechanisch		기계	机械	機械	Механизм	Mecánico	Mecánico	Meânico
SUBFILTER_SUBTYPE_CONSUMABLE_BOMBS_AND_DEVICES	Bombs and Devices	Bombs and Devices		Bomben und Geräte		폭탄물과 장치	爆破物与装置	爆裂物與裝置	Бомбы/устройства	Bombas y Dispositívos	Bombas y Dispositívos	Bombas e Dispositivos
SUBFILTER_SUBTYPE_CONSUMABLE_POTIONS	Potions	Potions	Potions	Tränke		물약	药水	藥水	Зелья	Pociones	Pociones	Poções
SUBFILTER_SUBTYPE_CONSUMABLE_ELIXIRS	Elixirs	Elixirs	Elixires	Elixire		비약	药剂	藥劑	Эликсиры	Elixires	Elixires	Elixires
SUBFILTER_SUBTYPE_CONSUMABLE_FLASKS	Flasks	Flasks	Flacons	Flaschen		영약	合剂	精煉藥劑	Настои	Vial	Vial	Frascos
SUBFILTER_SUBTYPE_CONSUMABLE_FOOD_AND_DRINK	Food & Drink	Food & Drink	Nourriture et boissons	Essen und Trinken		음식과 음료	食物和饮料	食物和飲料	Еда/питьё	Comida y Bebida	Comida y Bebida	Comidas e Bebidas
SUBFILTER_SUBTYPE_CONSUMABLE_BANDAGES	Bandages	Bandages	Bandages	Bandagen		붕대	绷带	繃帶	Бинты	Vendajes	Vendajes	Bandagens
SUBFILTER_SUBTYPE_CONSUMABLE_VANTUS_RUNES	Vantus Runes	Vantus Runes	Runes de Vantus	Vantus Runen		반투스 룬	凡图斯符文	梵陀符文	Вант. руны	Runas Vantus	Runas Vantus	Runa Vantus
SUBFILTER_SUBTYPE_CONSUMABLE_OTHER	Other	Other	Autre	Anderes		그 외	其他	其他	Другое	Otro	Otro	Outros
SUBFILTER_SUBTYPE_CONSUMABLE_CONDUIT	Conduit	Conduit				도관	导灵器	傳導器				
SUBFILTER_SUBTYPE_CONTAINER_BAG	All-Purpose Bag	All-Purpose Bag		Tasche		가방	背包	背包	Сумка	Mochila única	Mochila única	Bolsa 
SUBFILTER_SUBTYPE_CONTAINER_SOUL	Soul Bag	Soul Bag	Sac d'âmes	Seelentasche		영혼석 가방	灵魂袋	靈魂袋	Сумка душ	Bola de almas	Bola de almas	Bolsa de Almas
SUBFILTER_SUBTYPE_CONTAINER_HERB	Herb Bag	Herb Bag	Sac d'herbes	Kräutertasche		약초 가방	草药包	草藥包	Сумка травника	Bolsa de hierbas	Bolsa de hierbas	Bolsa de Herborismo
SUBFILTER_SUBTYPE_CONTAINER_ENCHANTING	Enchanting Bag	Enchanting Bag	Sac d'enchanteur	Verzauberungstasche		마법부여 가방	附魔包	附魔包	Сумка зачаровывателя	Bolsa de Encantamiento	Bolsa de Encantamiento	Bolsa de Encantamento
SUBFILTER_SUBTYPE_CONTAINER_ENGINEERING	Engineering Bag	Engineering Bag	Sac d'ingénieur	Ingenieurstasche		기계공학 가방	工程包	工程包	Сумка инженера	Bolsa de Ingeniería	Bolsa de Ingeniería	Bolsa de Engenharia
SUBFILTER_SUBTYPE_CONTAINER_GEM	Gem Bag	Gem Bag	Sac de gemmes	Edelsteintasche		보석 가방	宝石包	寶石包	Сумка ювелира	Bolsa de Gemas	Bolsa de Gemas	Bolsa de Gemas
SUBFILTER_SUBTYPE_CONTAINER_MINING	Mining Bag	Mining Bag	Sac de minerais	Bergbautasche		채광 가방	矿石包	礦石包	Сумка шахтера	Bolsa de Minería	Bolsa de Minería	Bolsa de Mineração
SUBFILTER_SUBTYPE_CONTAINER_LEATHERWORKING	Leatherworking Bag	Leatherworking Bag	Sac de travailleur du cuir	Lederverarbeitungstasche		가죽세공 가방	制皮包	製皮包	Сумка снятия шкур	Bolsa de Peletería	Bolsa de Peletería	Bolsa de Couraria
SUBFILTER_SUBTYPE_CONTAINER_INSCRIPTION	Inscription Bag	Inscription Bag	Sac de caligraphe	Inschriftentasche		주문각인 가방	铭文包	銘文包	Сумка начертателя	Bolsa de Inscripción	Bolsa de Inscripción	Bolsa de Escrivania
SUBFILTER_SUBTYPE_CONTAINER_TACKLE	Tackle Box	Tackle Box		Angelkasten		낚시 가방	钓饵箱	釣餌箱	Ящик для снастей	Caja de aparejos	Caja de aparejos	Caixa de Pesca
SUBFILTER_SUBTYPE_CONTAINER_COOKING	Cooking Bag	Cooking Bag	Sac de cuisine	Kochtasche		요리 가방	烹饪包	烹飪包	Сумка повара	Bolsa de Cocina	Bolsa de Cocina	Bolsa de Culinária
SUBFILTER_SUBTYPE_GEM_INTELLECT	Intellect	Intellect	Intelligence	Intellekt		지능	智力	智力	Интеллект	Intelecto	Intelecto	Intelecto
SUBFILTER_SUBTYPE_GEM_AGILITY	Agility	Agility	Agilité	Agilität		민첩	敏捷	敏捷	Ловкость	Agilidad	Agilidad	Agilidade
SUBFILTER_SUBTYPE_GEM_STRENGTH	Strength	Strength	Force	Stärke		힘	力量	力量	Сила	Fuerza	Fuerza	Força
SUBFILTER_SUBTYPE_GEM_STAMINA	Stamina	Stamina	Endurance	Ausdauer		체력	耐力	耐力	Выносливость	Aguante	Aguante	Vigor
SUBFILTER_SUBTYPE_GEM_SPIRIT	Spirit	Spirit	Esprit	Geist		영혼	精神	精神	Дух	Espíritu	Espíritu	Espírito
SUBFILTER_SUBTYPE_GEM_CRITICAL_STRIKE	Critical Strike	Critical Strike	Coût Critique	Kritischer Schlag		치명타	暴击	致命一擊	Критический удар	Golpe Crítico	Golpe Crítico	Golpe Crítico
SUBFILTER_SUBTYPE_GEM_MASTERY	Mastery	Mastery	Maîtrise	Meisterschaft		특화	精通	精通	Искусность	Maestría	Maestría	Maestria
SUBFILTER_SUBTYPE_GEM_HASTE	Haste	Haste	Hâte	Tempo		가속	急速	加速	Скорость	Celeridad	Celeridad	Aceleração
SUBFILTER_SUBTYPE_GEM_VERSATILITY	Versatility	Versatility	Polyvalence	Vielseitigkeit		유연성	全能	臨機應變	Универсальность	Versatilidad	Versatilidad	Versatilidade
SUBFILTER_SUBTYPE_GEM_OTHER	Other	Other	Autre	Anderes		그 외	其他	其他	Другое	Otro	Otro	Outro
SUBFILTER_SUBTYPE_GEM_MULTIPLE_STATS	Multiple Stats	Multiple Stats		Mehrere Attribute		다중 능력치	多项属性	多項屬性	Неск. характеристик	Estadísticas Várias	Estadísticas Várias	Múltiplos Atributos
SUBFILTER_SUBTYPE_GEM_ARTIFACT_RELIC	Artifact Relic	Artefact Relic		Artefaktrelikt		유물 보석	神兵圣物	神兵聖物	Реликвия артефакта	Reliquia de Artefacto	Reliquia de Artefacto	Relíquia de Artefato
SUBFILTER_SUBTYPE_GLYPH_WARRIOR	Warrior	Warrior	Guerrier	Krieger		전사	战士	戰士	Воин	Guerrero	Guerrero	Guerreiro
SUBFILTER_SUBTYPE_GLYPH_PALADIN	Paladin	Paladin	Paladin	Paladin		성기사	圣骑士	聖騎士	Паладин	Paladin	Paladin	Paladino
SUBFILTER_SUBTYPE_GLYPH_HUNTER	Hunter	Hunter	Chasseur	Jäger		사냥꾼	猎人	獵人	Охотник	Cazador	Cazador	Caçador
SUBFILTER_SUBTYPE_GLYPH_ROGUE	Rogue	Rogue	Voleur	Schurke		도적	潜行者	盜賊	Разбойник	Pícaro	Pícaro	Ladino
SUBFILTER_SUBTYPE_GLYPH_PRIEST	Priest	Priest	Prêtre	Priester		사제	牧师	牧師	Жрец	Sacerdote	Sacerdote	Sacerdote
SUBFILTER_SUBTYPE_GLYPH_DEATH_KNIGHT	Death Knight	Death Knight	Chevalier de la mort	Todesritter		죽음의 기사	死亡骑士	死亡騎士	Рыцарь смерти	Caballero de la Muerte	Caballero de la Muerte	Cavaleiro da Morte
SUBFILTER_SUBTYPE_GLYPH_SHAMAN	Shaman	Shaman	Chaman	Schamane		주술사	萨满	薩滿	Шаман	Chamán	Chamán	Xamã
SUBFILTER_SUBTYPE_GLYPH_MAGE	Mage	Mage	Mage	Magier		마법사	法师	法師	Маг	Mago	Mago	Mago
SUBFILTER_SUBTYPE_GLYPH_WARLOCK	Warlock	Warlock	Démoniste	Hexenmeister		흑마법사	术士	術士	Чернокнижник	Brujo	Brujo	Bruxo
SUBFILTER_SUBTYPE_GLYPH_MONK	Monk	Monk	Moine	Mönch		수도사	武僧	武僧	Монах	Monje	Monje	Monge
SUBFILTER_SUBTYPE_GLYPH_DRUID	Druid	Druid	Druide	Druide		드루이드	德鲁伊	德魯伊	Друид	Druida	Druida	Druida
SUBFILTER_SUBTYPE_GLYPH_DEMON_HUNTER	Demon Hunter	Demon Hunter	Chasseur de démon	Dämonenjäger		악마 사냥꾼	恶魔猎手	惡魔獵人	Охотник на демонов	Cazador de Demonios	Cazador de Demonios	Caçador de Demônios
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_HEAD	Head	Head	Tête	Kopf		머리	头部	頭部	Голова	Cabeza	Cabeza	Cabeça
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_NECK	Neck	Neck	Cou	Hals		목	颈部	頸部	Шея	Cuello	Cuello	Pescoço
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_SHOULDER	Shoulder	Shoulder	Epaules	Schulter		어깨	肩部	肩部	Плечи	Hombro	Hombro	Ombros
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_CLOAK	Cloak	Cloak	Cape	Umhang		등	背部	背部	Плащ	Capa	Capa	Capa
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_CHEST	Chest	Chest	Torse	Brust		가슴	胸部	胸部	Грудь	Pecho	Pecho	Torso
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_WRIST	Wrist	Wrist	Poignets	Handgelenk		손목	手腕	手腕	Запястья	Muñeca	Muñeca	Pulsos
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_HANDS	Hands	Hands	Mains	Hände		손	手	手	Кисти	Manos	Manos	Mãos
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_WAIST	Waist	Waist	Ceinture	Taille		허리	腰部	腰部	Пояс	Cintura	Cintura	Cintura
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_LEGS	Legs	Legs	Jambes	Beine		다리	腿部	腿部	Ноги	Piernas	Piernas	Pernas
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_FEET	Feet	Feet	Pieds	Füße		발	脚	腳	Обувь	Pies	Pies	Pés
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_FINGER	Finger	Finger	Doigts	Finger		손가락	手指	手指	Палец	Dedo	Dedo	Dedos
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_ONE_HAND	One-Handed Weapons	One-Handed Weapons	Armes à une main	Einhandwaffen		한손 무기	单手武器	單手武器	Одноручное	Armas de una mano	Armas de una mano	Armas de Uma Mão
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_TWO_HAND	Two-Handed Weapons	Two-Handed Weapons	Armes à deux mains	Zweihandwaffen		양손 무기	双手武器	雙手武器	Двуручное	Armas de dos manos	Armas de dos manos	Armas de Duas Mãos
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_SHIELD_OFF_HAND	Shield/Offhand	Shield/Offhand	Bouclier/Main gauche	Schild/Nebenhand		방패/보조무기	盾牌/副手	盾牌/副手	Щит/левая рука	Escudos/Improvisados	Escudos/Improvisados	Escudo/Mão Secundária
SUBFILTER_SUBTYPE_ITEM_ENHANCEMENT_MISCELLANEOUS	Misc	Misc	Divers	Verschiedenes		기타	杂项	雜項	Разное	Misce	Misce	Diversos
SUBFILTER_SUBTYPE_KEY_KEY	Key	Key	Clé	Schlüssel		열쇠	钥匙	鑰匙	Ключ	LLave	LLave	Chave
SUBFILTER_SUBTYPE_KEY_LOCKPICK	Lockpick	Lockpick		Dietrich		자물쇠	开锁器	開鎖器	Отмычка	Ganzúa	Ganzúa	Gazua
SUBFILTER_SUBTYPE_MISCELLANEOUS_JUNK	Junk	Junk	Camelotte	Schrott		잡동사니	垃圾	垃圾	Мусор	Inútil	Inútil	Lixo
SUBFILTER_SUBTYPE_MISCELLANEOUS_REAGENTS	Spell Reagents	Spell Reagents		Zauberreagenzien		주문 재료	施法材料	施法材料	Для заклинаний	Componentes de Conjuros	Componentes de Conjuros	Mercadorias de Conjuração
SUBFILTER_SUBTYPE_MISCELLANEOUS_COMPANION_PETS	Companion Pets	Companion Pets		Begleithaustiere		전투 애완동물	宠物伙伴	寵物夥伴	Питомцы	Mascotas	Mascotas	Mascotes
SUBFILTER_SUBTYPE_MISCELLANEOUS_HOLIDAY	Holiday	Holiday	Vacances	Feiertag		이벤트	节庆用品	節慶用品	Праздничные	Fiesta	Fiesta	Feriado
SUBFILTER_SUBTYPE_MISCELLANEOUS_OTHER	Other	Other	Autre	Anderes		그 외	其他	其他	Другое	Otro	Otro	Outros
SUBFILTER_SUBTYPE_MISCELLANEOUS_MOUNT	Mount	Mount	Monture	Reittier		탈것	坐骑	坐騎	Транспорт	Montura	Montura	Montaria
SUBFILTER_SUBTYPE_MISCELLANEOUS_MOUNT_EQUIPMENT	Mount Equipment	Mount Equipment	Equipement de monture	Reittierausrüstung		탈것 장비	坐骑装备	坐騎裝備	Добавление трапспорта	Equipo de Montura	Equipo de Montura	Equipamento de Montaria
SUBFILTER_SUBTYPE_RECIPE_BOOK	Book	Book	Livre	Buch		책	书籍	書籍	Книга	Libro	Libro	Livro
SUBFILTER_SUBTYPE_RECIPE_LEATHERWORKING	Leatherworking	Leatherworking	Travail du cuir	Lederverarbeitung		가죽세공	制皮	製皮	Снятие шкур	Peletería	Peletería	Couraria
SUBFILTER_SUBTYPE_RECIPE_TAILORING	Tailoring	Tailoring	Coûture	Schneidern		주문각인	裁缝	裁縫	Портняжное дело	Sastrería	Sastrería	Alfaiataria
SUBFILTER_SUBTYPE_RECIPE_ENGINEERING	Engineering	Engineering	Ingénierie	Ingenieurwissenschaft		기계공학	工程学	工程學	Инженерное дело	Ingeniería	Ingeniería	Engenharia
SUBFILTER_SUBTYPE_RECIPE_BLACKSMITHING	Blacksmithing	Blacksmithing	Forge	Schmiedekunst		대장기술	锻造	鍛造	Кузнечное дело	Herrería	Herrería	Ferraria
SUBFILTER_SUBTYPE_RECIPE_COOKING	Cooking	Cooking	Cuisine	Kochen		요리	烹饪	烹飪	Кулинария	Cocina	Cocina	Culinária
SUBFILTER_SUBTYPE_RECIPE_ALCHEMY	Alchemy	Alchemy	Alchimie	Alchemie		연금술	炼金术	煉金術	Алхимия	Alquímia	Alquímia	Alquimia
SUBFILTER_SUBTYPE_RECIPE_FIRST_AID	First Aid	First Aid	Secourisme	Erste Hilfe		응급치료	急救	急救	Первая помощь	Primeros Auxilios	Primeros Auxilios	Primeiros Socorros
SUBFILTER_SUBTYPE_RECIPE_ENCHANTING	Enchanting	Enchanting	Enchantements	Verzauberkunst		마법부여	附魔	附魔	Наложение чар	Encantamiento	Encantamiento	Encantamento
SUBFILTER_SUBTYPE_RECIPE_FISHING	Fishing	Fishing	Pêche	Angeln		낚시	钓鱼	釣魚	Рыбная ловля	Pesca	Pesca	Pescaria
SUBFILTER_SUBTYPE_RECIPE_JEWELCRAFTING	Jewelcrafting	Jewelcrafting	Joaillerie	Juwelenschleifen		보석세공	珠宝加工	珠寶設計	Ювелирное дело	Joyería	Joyería	Joalheria
SUBFILTER_SUBTYPE_RECIPE_INSCRIPTION	Inscription	Inscription	Caligraphie	Inschriftenkunde		주문각인	铭文	銘文	Начертание	Inscripción	Inscripción	Escrivania
SUBFILTER_SUBTYPE_PROJECTILE_ARROW	Arrow	Arrow	Flèche	Pfeil		화살	箭	箭	Стрела	Flecha	Flecha	Flecha
SUBFILTER_SUBTYPE_PROJECTILE_BULLET	Bullet	Bullet	Balle	Kugel		탄약	子弹	子彈	Пуля	Bala	Bala	Bala
SUBFILTER_SUBTYPE_QUIVER_QUIVER	Quiver	Quiver	Carquois	Köcher		화살통	箭袋	箭袋	Колчан	Carcaj	Carcaj	Aljava
SUBFILTER_SUBTYPE_QUIVER_AMMO_POUCH	Ammo Pouch	Ammo Pouch		Munitionsbeutel		탄약 주머니	弹药袋	彈藥袋	Боеприпасы	Cartuchera para municiones	Cartuchera para municiones	Saco de Munição
SUBFILTER_SUBTYPE_TRADE_GOODS_PARTS	Parts	Parts		Teile		부품	零件	零件	Запчасти	Partes	Partes	Partes
SUBFILTER_SUBTYPE_TRADE_GOODS_JEWELCRAFTING	Jewelcrafting	Jewelcrafting	Joaillerie	Juwelenschleifen		보석세공	珠宝加工	珠寶設計	Ювелирное дело	Joyería	Joyería	Joalheria
SUBFILTER_SUBTYPE_TRADE_GOODS_CLOTH	Cloth	Cloth	Tissu	Kleidung		천	布料	布料	Ткань	Tela	Tela	Tecido
SUBFILTER_SUBTYPE_TRADE_GOODS_LEATHER	Leather	Leather	Cuir	Lederverarbeitung		가죽	皮革	皮革	Кожа	Cuero	Cuero	Couro
SUBFILTER_SUBTYPE_TRADE_GOODS_METAL_AND_STONE	Metal & Stone	Metal & Stone	Métal et minerais	Metall & Stein		금속 & 돌	金属与石头	金屬與石頭	Металл/камень	Metal y Piedra	Metal y Piedra	Metal e Pedra
SUBFILTER_SUBTYPE_TRADE_GOODS_COOKING	Cooking	Cooking	Cuisine	Kochen		요리	烹饪	烹飪	Кулинария	Cocina	Cocina	Culinária
SUBFILTER_SUBTYPE_TRADE_GOODS_HERB	Herb	Herb	Herbes	Kräuter		약초	草药	草藥	Травничество	Hierba	Hierba	Erva
SUBFILTER_SUBTYPE_TRADE_GOODS_ELEMENTAL	Elemental	Elemental	Elémentaires	Elementar		원소	元素材料	元素材料	Стихия	Elemental	Elemental	Elemental
SUBFILTER_SUBTYPE_TRADE_GOODS_ENCHANTING	Enchanting	Enchanting	Enchantements	Verzauberkunst		마법부여	附魔	附魔	Наложение чар	Encantamiento	Encantamiento	Encantamento
SUBFILTER_SUBTYPE_TRADE_GOODS_INSCRIPTION	Inscription	Inscription	Caligraphie	Inschriftenkunde		주문각인	铭文	銘文	Начертание	Inscripción	Inscripción	Escrivania
SUBFILTER_SUBTYPE_TRADE_GOODS_OTHER	Other	Other	Autre	Andere		그 외	其他	其他	Другое	Otro	Otro	Outros
SUBFILTER_SUBTYPE_WEAPON_AXES	Axes	Axes	Hâches	Äxte		도끼	斧	斧	Топоры	Hachas	Hachas	Machados
SUBFILTER_SUBTYPE_WEAPON_MACES	Maces	Maces	Masses	Keulen		둔기	锤	錘	Булавы	Mazas	Mazas	Maças
SUBFILTER_SUBTYPE_WEAPON_SWORDS	Swords	Swords	Epées	Schwerter		도검	剑	劍	Мечи	Espadas	Espadas	Espadas
SUBFILTER_SUBTYPE_WEAPON_DAGGERS	Daggers	Daggers	Dagues	Dolche		단검	匕首	匕首	Кинжалы	Dagas	Dagas	Adagas
SUBFILTER_SUBTYPE_WEAPON_POLEARMS	Polearms	Polearms	Armes d'haste	Stangenwaffen		장창	长柄	長柄	Древковое	Varas	Varas	Arma de Haste
SUBFILTER_SUBTYPE_WEAPON_FIST	Fist Weapons	Fist Weapons	Armes de pugilat	Faustwaffen		장착무기	拳套	拳套	Кистевое	Armas de puño	Armas de puño	Arma de Punho
SUBFILTER_SUBTYPE_WEAPON_GLAIVES	Warglaives	Warglaives	Glèves de guerre	Kriegsgleven		전투검	战刃	戰刃	Боевые клинки	Guijas de Guerra	Guijas de Guerra	Glaives de Guerra
SUBFILTER_SUBTYPE_WEAPON_WANDS	Wands	Wands	Baguettes	Zauberstäbe		마법봉	魔杖	魔杖	Жезлы	Varitas	Varitas	Varinhas
SUBFILTER_SUBTYPE_WEAPON_STAVES	Staves	Staves	Bâtons	Stäbe		지팡이	法杖	法杖	Посохи	Bastones	Bastones	Cajados
SUBFILTER_SUBTYPE_WEAPON_BOWS	Bows	Bows	Arcs	Bögen		활	弓	弓	Луки	Arcos	Arcos	Arcos
SUBFILTER_SUBTYPE_WEAPON_CROSSBOWS	Crossbows	Crossbows	Arbalètes	Armbrüste		석궁	弩	弩	Арбалет	Ballestas	Ballestas	Bestas
SUBFILTER_SUBTYPE_WEAPON_GUNS	Guns	Guns	Fusils	Pistolen		총	枪械	槍械	Ружьё	Armas de fuego	Armas de fuego	Armas de Fogo
SUBFILTER_SUBTYPE_WEAPON_THROWN	Thrown	Thrown		Wurfwaffen		투척	投掷	投擲	Метательное	Arrojadizo	Arrojadizo	Arremesso
SUBFILTER_SUBTYPE_WEAPON_FISHING_POLES	Fishing Poles	Fishing Poles	Cannes à pêche	Angelruten		낚싯대	鱼竿	魚竿	Удочки	Cañas de pescar	Cañas de pescar	Vara de pescar
SUBFILTER_SUBTYPE_WEAPON_MISCELLANEOUS	Miscellaneous	Miscellaneous	Divers	Verschiedenes		기타	杂项	雜項	Разное	Miscelánea	Miscelánea	Diversos
SUBFILTER_STATS_STAMINA	Stamina	Stamina	Endurance	Ausdauer		체력	耐力	耐力	Выносливость	Aguante	Aguante	Vigor
SUBFILTER_STATS_STRENGTH	Strength	Strength	Force	Stärke		힘	力量	力量	Сила	Fuerza	Fuerza	Força
SUBFILTER_STATS_AGILITY	Agility	Agility	Agilité	Beweglichkeit		민첩	敏捷	敏捷	Ловкость	Agilidad	Agilidad	Agilidade
SUBFILTER_STATS_INTELLECT	Intellect	Intellect	Intelligence	Intellekt		지능	智力	智力	Интеллект	Intelecto	Intelecto	Intelecto
SUBFILTER_STATS_CRITICAL_STRIKE	Critical Strike	Critical Strike	Coût critique	Kritische Trefferchance		치명타	暴击	致命一擊	Крит. удар	Golpe Crítico	Golpe Crítico	Golpe Crítico
SUBFILTER_STATS_HASTE	Haste	Haste	Hâte	Tempo		가속	急速	加速	Скорость	Celeridad	Celeridad	Aceleração
SUBFILTER_STATS_MASTERY	Mastery	Mastery	Maîtrise	Meisterschaft		특화	精通	精通	Искусность	Maestría	Maestría	Maestria
SUBFILTER_STATS_VERSATILITY	Versatility	Versatility	Polyvalence	Vielseitigkeit		유연성	全能	臨機應變	Универсальность	Versatilidad	Versatilidad	Versatilidade
SUBFILTER_STATS_SPEED	Speed	Speed	Vitesse	Geschwindigkeit		이동속도	速度	速度	Скор. передвижения	Velocidad	Velocidad	Velocidade
SUBFILTER_STATS_INDESTRUCTIBLE	Indestructible	Indestructible	Indestructible	Unzerstörbar		파괴 불가	坚固	永不磨損	Броня	Indestructible	Indestructible	Indestrutível
SUBFILTER_STATS_LEECH	Leech	Leech	Vol de vie	Lebensraub		생기흡수	吸血	汲取	Самоисцеление	Chupasangre	Chupasangre	Sorver
SUBFILTER_STATS_AVOIDANCE	Avoidance	Avoidance	Evitement	Vermeidung		회피	躲闪	迴避	Узбегание	Evasión	Evasión	Evasão
SUBFILTER_QUALITY_HEIRLOOM	Heirloom	Heirloom	Héritage	Erbstück		계승	传家宝	傳家寶	Наследие	Reliquia de familia	Reliquia de familia	Herança
SUBFILTER_QUALITY_ARTIFACT	Artifact	Artefact	Artéfacte	Artefakt		유물	神器	神器	Артефакт	Artefacto	Artefacto	Artefato
SUBFILTER_QUALITY_LEGENDARY	Legendary	Legendary	Légendaire	Legendär		전설	传说	傳奇	Легендарное	Legendario	Legendario	Lendário
SUBFILTER_QUALITY_EPIC	Epic	Epic	Epique	Episch		영웅	史诗	史詩	Эпичное	Épico	Épico	Épico
SUBFILTER_QUALITY_RARE	Rare	Rare	Rare	Selten		희귀	精良	精良	Редкое	Raro	Raro	Raro
SUBFILTER_QUALITY_UNCOMMON	Uncommon	Uncommon	Peu commun	Ungewöhnlich		고급	良好	良好	Необычное	Poco común	Poco común	Incomum
SUBFILTER_QUALITY_COMMON	Common	Common	Commun	Gewöhnlich		일반	普通	普通	Обычное	Común	Común	Comum
SUBFILTER_QUALITY_POOR	Poor	Poor		Armbrüste		하급	粗劣	粗劣	Хлам	Pobre	Pobre	Pobre
SUBFILTER_TIME_SECOND_SHORT	Sec	Sec	Sec	Sek.		초	秒	秒	сек	Seg	Seg	Seg
SUBFILTER_TIME_SECONDS	Seconds	Seconds	Secondes	Sekunden		초	秒	秒	секунд	Segundos	Segundos	Segundos
SUBFILTER_TIME_SECONDS_SHORT	Secs	Secs	Secs	Sek.		초	秒	秒	сек.	Segs	Segs	Segs
SUBFILTER_TIME_MINUTE_SHORT	Min	Min	Min	Min.		분	分	分	мин.	Min	Min	Min
SUBFILTER_TIME_MINUTES	Minutes	Minutes	Minutes	Minuten		분	分钟	分鐘	минут	Minutos	Minutos	Minutos
SUBFILTER_TIME_MINUTES_SHORT	Mins	Mins	Mins	Min.		분	分	分	мин.	Mins	Mins	Mins
SUBFILTER_TIME_HOUR_SHORT	Hour	Hour	Heure	Stunde		시간	小时	小時	час	Hora	Hora	Hora
SUBFILTER_TIME_HOURS	Hours	Hours	Heures	Stunden		시간	小时	小時	часов	Horas	Horas	Horas
SUBFILTER_TIME_HOURS_SHORT	Hrs	Hrs	H	h		시간	小时	小時	ч.	Hrs	Hrs	Hrs
SUBFILTER_TIME_DAY_SHORT	Day	Day	Jour	Tag		일	天	天	день	Día	Día	Dia
SUBFILTER_TIME_DAYS	Days	Days	Jours	Tage		일	天	天	дней	Días	Días	Dias
SUBFILTER_TIME_DAYS_SHORT	Days	Days	Jours	Tage		일	天	天	дн.	Días	Días	Dias
SUBFILTER_TIME_WEEK_SHORT	Week	Week	Semaine	Woche		주	周	週	неделя	Semana	Semana	Semana
SUBFILTER_TIME_WEEKS	Weeks	Weeks	Semaines	Wochen		주	周	週	недель	Semanas	Semanas	Semanas
SUBFILTER_TIME_WEEKS_SHORT	Wks	Wks	Sem	Wo.		주	周	週	н.	Semanas	Semanas	Semanas
SUBFILTER_TIME_MONTH_SHORT	Mnth	Mnth	Mois	Mon.		개월	月	月	месяц	Mes	Mes	Mes
SUBFILTER_TIME_MONTHS	Months	Months	Mois	Monate		개월	月	月	месяцев	Meses	Meses	Meses
SUBFILTER_TIME_MONTHS_SHORT	Mths	Mths	m	Mon.		개월	月	月	мес.	Meses	Meses	Meses
SUBFILTER_TIME_YEAR_SHORT	Year	Year	Année	Jahr		년	年	年	год	Año	Año	Ano
SUBFILTER_TIME_YEARS	Years	Years	Années	Jahre		년	年	年	лет	Años	Años	Anos
SUBFILTER_TIME_YEARS_SHORT	Yrs	Yrs	an	J.		년	年	年	г.	Años	Años	Anos
SUBFILTER_BINDING_NONE	None	None	Aucun	Keine		없음	无	無	нет	Ninguno	Ninguno	Nenhum
SUBFILTER_BINDING_ON_EQUIP	Bind on Equip	Bind on Equip	Lié quand équippé	Binden beim Anlegen		착용 시 귀속	装备后绑定	裝備後		Se liga al equipar	Se liga al equipar	Vincula-se ao Equipar
SUBFILTER_BINDING_ON_EQUIP_SHORT	Equip	Equip	Equippé	Anlegen		착귀	装绑	裝綁		Equipo	Equipo	Equip
SUBFILTER_BINDING_ON_PICKUP	Bind on Pickup	Bind on Pickup	Lié quand ramassé	Binden beim Aufnehmen		획득 시 귀속	拾取后绑定	拾取後		Se liga al recoger	Se liga al recoger	Vincula-se ao Recolher
SUBFILTER_BINDING_ON_PICKUP_SHORT	Pickup	Pickup	Ramassé	Aufnehmen		획귀	拾绑	拾綁		Recoger	Recoger	Recolhido
SUBFILTER_BINDING_ON_USE	Bind on Use	Bind on Use	Lié quand utilisé	Binden beim Benutzen		사용 시 귀속	使用后绑定	使用後		Se liga al usar	Se liga al usar	Vincula-se ao Usar
SUBFILTER_BINDING_ON_USE_SHORT	Use	Use	Utilisé	Benutzen		사용	用绑	用綁	Исп.	Usar	Usar	Usar
SUBFILTER_BINDING_SOULBOUND	Soulbound	Soulbound	Lié au compte	Seelengebunden		계정 귀속	灵魂绑定	靈魂綁定		Ligado al alma	Ligado al alma	Vinculado
SUBFILTER_BINDING_SOULBOUND_SHORT	Bound	Bound	Lié	Gebunden		계귀	绑定	綁定		Ligado	Ligado	Vinculado
SUBFILTER_EXPANSION_TBC	The Burning Crusade	The Burning Crusade	The Burning Crusade	The Burning Crusade		불타는 성전	燃烧的远征	燃燒的遠征	The Burning Crusade	The Burning Crusade	The Burning Crusade	The Burning Crusade
SUBFILTER_EXPANSION_TBC_SHORT	TBC	TBC	TBC	TBC		불성	远征	遠征	TBC	TBC	TBC	TBC
SUBFILTER_EXPANSION_WOTLK	Wrath of the Lich King	Wrath of the Lich King	Wrath of the Lich King	Wrath of the Lich King		리치왕의 분노	巫妖王之怒	巫妖王之怒	Wrath of the Lich King	Wrath of the Lich King	Wrath of the Lich King	Wrath of the Lich King
SUBFILTER_EXPANSION_WOTLK_SHORT	Wrath	Wrath	Wrath	Wrath		리분	巫妖王	巫妖王	Lich King	Wrath	Wrath	Wrath
SUBFILTER_EXPANSION_CATA	Cataclysm	Cataclysm	Cataclysm	Cataclysm		대격변	大地的裂变	浩劫與重生	Cataclysm	Cataclysm	Cataclysm	Cataclysm
SUBFILTER_EXPANSION_CATA_SHORT	Cata	Cata	Cata	Cata		격변	大裂变	浩劫	Cataclysm	Cata	Cata	Cata
SUBFILTER_EXPANSION_MOP	Mists of Pandaria	Mists of Pandaria	Mists of Pandaria	Mists of Pandaria		판다리아의 안개	熊猫人之谜	潘達利亞迷霧	Mists of Pandaria	Mists of Pandaria	Mists of Pandaria	Mists of Pandaria
SUBFILTER_EXPANSION_MOP_SHORT	MoP	MoP	MoP	MoP		판다	熊猫	潘達	MoP	MoP	MoP	MoP
SUBFILTER_EXPANSION_WOD	Warlords of Draenor	Warlords of Draenor	Warlords of Draenor	Warlords of Draenor		드레노어의 전쟁군주	德拉诺之王	德拉諾之霸	Warlords of Draenor	Warlords of Draenor	Warlords of Draenor	Warlords of Draenor
SUBFILTER_EXPANSION_WOD_SHORT	WoD	WoD	WoD	WoD		드군	德拉诺	德拉諾	WoD	WoD	WoD	WoD
SUBFILTER_EXPANSION_LEGION	Legion	Legion	Legion	Legion		군단	军团再临	軍臨天下	Legion	Legion	Legion	Legion
SUBFILTER_EXPANSION_LEGION_SHORT	Legion	Legion	Legion	Legion		군단	军团	軍臨	Legion	Legion	Legion	Legion
SUBFILTER_EXPANSION_BFA	Battle for Azeroth	Battle for Azeroth	Battle for Azeroth	Battle for Azeroth		격전의 아제로스	争霸艾泽拉斯	決戰艾澤拉斯	Battle for Azeroth	Battle for Azeroth	Battle for Azeroth	Battle for Azeroth
SUBFILTER_EXPANSION_BFA_SHORT	BfA	BfA	BfA	BfA		격아	争霸	決戰	BfA	BfA	BfA	BfA
SUBFILTER_EXPANSION_SHADOW	Shadowlands	Shadowlands	Shadowlands	Shadowlands		어둠땅	暗影国度	暗影之境	Shadowlands	Shadowlands	Shadowlands	Shadowlands
SUBFILTER_EXPANSION_SHADOW_SHORT	Shadow	Shadow	Shadow	Shadow		둠땅	暗影	暗影	Shadowlands	Shadow	Shadow	Shadow
SUBFILTER_LEVEL_ITEM_LEVEL	Item Level	Item Level	Niveau d'objet	Gegenstandslevel		아이템 레벨	物品等级	物品等級	Ур. предмета	Nivel de objeto	Nivel de objeto	Nível de Item
SUBFILTER_LEVEL_REQUIRED_LEVEL	Required Level	Required Level	Niveau requis	Benötigtes Level		착용 레벨	需求等级	需求等級	Треб. уровень	Nivel necesario	Nivel necesario	Nível Necessário
SUBFILTER_MARKER_ICON_NONE	No Marker Icon	No Marker Icon	Aucun	Keines		없음	无	無	нет	Ninguno	Ninguno	Nenhum
SUBFILTER_SPECIFIC_ITEMS_ID	ID	ID	ID	ID		ID	ID	ID	ID	ID	ID	ID
SUBFILTER_SPECIFIC_ITEMS_NAME	Name	Name	Nom	Name		이름	名称	名稱	Имя	Nombre	Nombre	Nome
CONFIG_APPEARANCE	Appearance	Appearance	Apparence	Aussehen		외형	外观	外觀	Внешность	Apariencia	Apariencia	Aparência
CONFIG_BEHAVIOR	Behavior	Behavior	Comportement	Verhalten		동작	动作	動作	Поведение	Comportamiento	Comportamiento	Comportamento
CONFIG_CATEGORIES	Categories	Categories	Catégories	Kategorien		분류	类别	類別	Категории	Categorías	Categorías	Categorias
CONFIG_COLUMNS	Columns	Columns	Colonnes	Spalten		열	列	欄目	Столбцы	Columnas	Columnas	Colunas
CONFIG_GROUPING	Grouping	Grouping		Gruppierungen		묶기	分组	分組				Agrupar
CONFIG_PROFILES	Profiles	Profiles	Profils	Profile		프로필	设定档	設定檔	Профили	Perfiles	Perfiles	Perfis
CONFIG_APPEARANCE_SCALE	Scale	Scale	Echelle	Skalierung		크기 비율	缩放	縮放	Масштаб	Escala	Escala	Escala
CONFIG_APPEARANCE_ICON_SIZE	Icon Size	Icon Size	Taille d'icône	Symbolgröße		아이콘 크기	图标尺寸	圖示尺寸	Размер значков	Tamaño del icono	Tamaño del icono	Tamanho de Icone
CONFIG_APPEARANCE_ICON_BORDERS	Icon Borders	Icon Borders	Bordures d'icône	Symbolränder		아이콘 테두리	图标外框	圖示外框	Границы значков	Bordes del icono	Bordes del icono	Bordas de Icone
CONFIG_APPEARANCE_ICON_BORDER_THICKNESS	Border Thickness	Border Thickness	Epaisseur des bordures	Rahmenbreite		테두리 두께	外框厚度	外框厚度		Grosor del borde		Grossura da borda
CONFIG_APPEARANCE_SPACING	Spacing	Spacing	Espacement	Abstand		간격	间距	間距	Интервал	Espaciado	Espaciado	Espaçamento
CONFIG_APPEARANCE_BACKDROP	Backdrop Texture	Backdrop Texture				배경 텍스쳐	背景材质	背景材質				Textura de fundo
CONFIG_APPEARANCE_BACKDROP_OPACITY	Backdrop Opacity	Backdrop Opacity	Opacité du fond	Hintergrunddeckkraft		배경 투명도	背景透明度	背景透明度	Прозрачность	Opacidad del fondo	Opacidad del fondo	Opacidade do Fundo
CONFIG_APPEARANCE_FONT	Font	Font	Police	Schrift		글꼴	字体	字體	Шрифт	Fuente	Fuente	Fonte
CONFIG_APPEARANCE_FONT_SIZE	Size	Size	Taille	Größe		크기	尺寸	尺寸	Размер	Tamaño	Tamaño	Tamanho
CONFIG_APPEARANCE_FONT_SIZE_1	Tiny	Tiny	Très petit	Winzig		매우 작음	超小	超小		Minúsculo	Minúsculo	Minúsculo
CONFIG_APPEARANCE_FONT_SIZE_2	Small	Small	Petit	Kleintier		작음	小	小		Pequeño	Pequeño	Pequeno
CONFIG_APPEARANCE_FONT_SIZE_3	Normal	Normal	Normal	Normal		기본	普通	普通		Normal	Normal	Normal
CONFIG_APPEARANCE_FONT_SIZE_4	Large	Large	Large	Groß		큼	大	大		Grande	Grande	Grande
CONFIG_APPEARANCE_FONT_SIZE_5	Huge	Huge	Très Grand	Riesig		매우 큼	超大	超大		Gigante	Gigante	Gigante
CONFIG_APPEARANCE_FONT_OUTLINE	Outline	Outline	Contour	Outline		외곽선	轮廓	描邊		Contorno	Contorno	Contorno
CONFIG_APPEARANCE_FONT_OUTLINE_1	None	None	Aucun	Nichts		없음	无	無		Ninguno	Ninguno	Nenhum
CONFIG_APPEARANCE_FONT_OUTLINE_2	Thin	Thin	Fin	Dünn		얇음	细	細		Delgado	Delgado	Fino
CONFIG_APPEARANCE_FONT_OUTLINE_3	Thick	Thick	Epais	Dick		굵음	粗	粗		Gordo	Gordo	Grosso
CONFIG_APPEARANCE_SIDE_PANE_WIDTH	Side Pane Width	Side Pane Width		Seitenpanelbreite		측면 칸 넓이	侧窗格宽度	側窗格寬度	Ширина бок. панели	Ancho del panel lateral	Ancho del panel lateral	Largura do painel Lateral
CONFIG_APPEARANCE_ALWAYS_USE_ICONS	Always Use Icons	Always Use Icons	Toujours utiliser les icônes	Immer Symbole benutzen		항상 아이콘 사용	一直使用图标	永遠使用圖示	Всегда исп. значки	Siempre utilizar iconos	Siempre utilizar iconos	Sempre utilizar ícones
CONFIG_APPEARANCE_ELVUI_SKIN	ElvUI Skin	ElvUI Skin	Skin ElvUI	ElvUI Skin		ElvUI 스킨	ElvUI外观	ElvUI外觀				Skin ElvUI
CONFIG_BEHAVIOR_SCROLLING_HEADER	Scrolling	Scrolling	Défilement			스크롤	滚动	捲動				Rolamento
CONFIG_BEHAVIOR_SCROLL_WHEEL_SPEED	Wheel Scroll Speed	Wheel Scroll Speed	Vitesse du bouton de défilement	Mausradgeschwindigkeit		스크롤 속도	鼠标滚轮速度	滾輪捲動速度	Скорость прокрутки	Velocidad de la rueda de desplazamiento	Velocidad de la rueda de desplazamiento	Velocidade da roda do mouse
CONFIG_BEHAVIOR_SMOOTH_SCROLLING	Smooth Scrolling	Smooth Scrolling	Défilement doux	Sanftes Scrollen		부드러운 스크롤	平滑滚动	平滑捲動	Плавная прокрутка	Desplazamiento suave	Desplazamiento suave	Deslizamento suave
CONFIG_BEHAVIOR_SMOOTH_SCROLLING_POWER	Smoothing Strength	Smoothing Strength		Sanftheit-Stärke		부드러움 강도	平滑强度	平滑強度	Сглаживание	Suavizar fuerza	Suavizar fuerza	Força da suavização
CONFIG_BEHAVIOR_ANIMATIONS	Animations	Animations	Animations	Animationen		애니메이션	动画效果	動畫效果	Анимация	Animaciones	Animaciones	Animações
CONFIG_BEHAVIOR_RESET_WINDOW	Reset Window on Close	Reset Window on Close	Réinitialiser la fênetre à la fermeture	Fenster beim Schließen zurücksetzen		닫으면 창 초기화	关闭后重置视窗	關閉後重設視窗	Сброс при закрытии	Reiniciar ventana al cerrar	Reiniciar ventana al cerrar	Reiniciar Janela ao Fechar
CONFIG_BEHAVIOR_COMBINE_STACKS	Combine Stacks	Combine Stacks	Combiner les Piles	Stapel kombinieren		갯수 합치기	合并堆叠	合併堆疊	Объед. пачки	Combinar montones	Combinar montones	Combinar ítens empilháveis
CONFIG_BEHAVIOR_NEW_ITEMS_HEADER	New Items	New Items	Nouveaux objets	Neue Gegenstände		새 아이템	新物品	新物品		Nuevos Objetos		Novo Item
CONFIG_BEHAVIOR_NEW_INDICATORS	Category Indicators	Category Indicators	Indicateur de Catégorie	Kategorieindikatoren		분류에 표시	类别指标	類別指標		Indicadores de Cartegoría		Indicador de Categoria
CONFIG_BEHAVIOR_PIN_NEW	Pin to Top	Pin to Top	Epingler en haut	Anpinnen		상단에 고정	置顶	置頂		Fijar arriba		Manter no Topo
CONFIG_BEHAVIOR_TOOLTIP_HEADER	Tooltips	Tooltips	Infobulle	Tooltips		툴팁	提示资讯	提示資訊				
CONFIG_BEHAVIOR_TOOLTIP_INFO	Info on Item Tooltips	Info on Item Tooltips		Gegenstands Tooltip		툴팁에 정보 표시	物品提示统计资讯	物品提示統計資訊		Info en el globo de ayuda		
CONFIG_BEHAVIOR_TOOLTIP_DELAY	Tooltip Delay	Tooltip Delay	Délai d'infobulle	Tooltip-Verzögerung		툴팁 등장 속도	提示延迟	工具提示延遲	Задержка подсказки	Retraso del Globo de Ayuda	Retraso del Globo de Ayuda	Atraso da janela de Dica
CONFIG_BEHAVIOR_TOOLTIP_DELAY_SECOND	Second	Second	Seconde	Sekunden		초	秒	秒	Секунда	Segundo	Segundo	Segundo
CONFIG_BEHAVIOR_TOOLTIP_DELAY_SECONDS	Seconds	Seconds	Secondes	Sekunden		초	秒	秒	Секунд	Segundos	Segundos	Segundos
CONFIG_BEHAVIOR_ON_OPEN_HEADER	When Opening Bags	When Opening Bags	À l'ouverture des sacs	Wenn Tasche geöffnet wird		가방을 열었을 때	打开背包时	打開背包時				Quando abrir as bolsas
CONFIG_BEHAVIOR_ON_OPEN_SORTING_HEADER	Sort By	Sort By	Trier par	Sortieren nach		정렬하기	物品排序	物品排序				Organizar por
CONFIG_BEHAVIOR_ON_OPEN_FILTERING_HEADER	Filter By	Filter By	Filtrer par	Filtern nach		분류하기	类别筛选	類別篩選				Filtrar por
CONFIG_BEHAVIOR_ON_OPEN_NONE	None	None	Rien			없음	无	無				Nenhum
CONFIG_BEHAVIOR_ON_OPEN_USE_PREVIOUS	Restore Previous	Restore Previous		Vorheriges wiederherstellen		이전으로 복구	还原排序	還原排序				Restaurar anterior
CONFIG_BEHAVIOR_ON_OPEN_USE_SPECIFIC	Use Specific	Use Specific		Benutze spezifisches		특정 분류	特定排序	特定排序				Usar específico
CONFIG_BEHAVIOR_ON_OPEN_KEEP_SEARCH	Restore Search	Restore Search		Suche wiederherstellen		검색 복구	还原搜索	還原搜索				Restaurar pesquisa
CONFIG_BEHAVIOR_ON_OPEN_PIN_FAVORITES	Pin Favorites	Pin Favourites	Epingler les Favoris	Favoriten anpinnen		즐겨찾기 고정	置顶最爱	置頂最愛				Manter nos favoritos
CONFIG_BEHAVIOR_ON_OPEN_SORT_ASCENDING	Ascending	Ascending	Croissant	Aufsteigend		오름차순	升序	升序				Ascendente
CONFIG_BEHAVIOR_ON_OPEN_SORT_DESCENDING	Descending	Descending	Décroissant	Absteigend		내림차순	降序	降序				descendente
CONFIG_BEHAVIOR_AUTO	Automatically	Automatically				자동으로	自动化	自動化				
CONFIG_BEHAVIOR_AUTO_OPEN	Open	Open				열기	开启	開啟				
CONFIG_BEHAVIOR_AUTO_CLOSE	Close	Close				닫기	关闭	關閉後重設視窗				
CONFIG_BEHAVIOR_AUTO_MAIL	Mailbox	Mailbox				우체통	邮箱	郵箱				
CONFIG_BEHAVIOR_AUTO_AUCTION	Auction House	Auction House				경매장	拍卖行	拍賣場				
CONFIG_BEHAVIOR_AUTO_MERCHANT	Merchant	Merchant				상인	商店	商店				
CONFIG_BEHAVIOR_AUTO_BANK	Bank	Bank				은행	银行	銀行				
CONFIG_CATEGORIES_NAME	Name	Name	Nom	Name		이름	名称	名稱	Имя	Nombre	Nombre	Nome
CONFIG_CATEGORIES_ICON	Icon	Icon	Icône	Symbol		아이콘	图标	圖示	Значок	Icono	Icono	Ícone
CONFIG_CATEGORIES_FILTERS	Filters	Filters	Filtres	Filter		필터	类别筛选	類別篩選	Фильтр	Filtros	Filtros	Filtros
CONFIG_CATEGORIES_ADD	Add Category	Add Category	Ajouter Catégorie	Kategorie hinzufügen		분류 추가	新增类别	新增類別	Доб. категорию	Añadir Categoría	Añadir Categoría	Adicionar Categoria
CONFIG_CATEGORIES_DEFAULT_NAME	New Category	New Category	Nouvelle Catégorie	Neue Kategorie		새 분류	新类别	新類別	Новая категория	Nueva Categoría	Nueva Categoría	Nova Categoria
CONFIG_COLUMNS_COLUMN	Column	Column	Colonne	Spalte		열	列	欄目	Столбец	Columna	Columna	Coluna
CONFIG_COLUMNS_WIDTH	Width	Width	Largeur	Breite		넓이	宽度	寬度	Ширина	Ancho	Ancho	Largura
CONFIG_COLUMNS_ENABLED	Enabled	Enabled	Activer	Aktiviert		활성화	启用	啟用	Вкл.	Activado	Activado	Habilitado
CONFIG_PROFILES_PROFILE	Settings Profile	Settings Profile	Option sde Profil	Einstellungsprofil		사용중인 프로필	配置设定档	配置設定檔	Настройки профиля	Perfil de Opciones	Perfil de Opciones	Perfil de Opções
CONFIG_PROFILES_NAME	Name	Name	Nom	Name		이름	名称	名稱	Имя	Nombre	Nombre	Nome
CONFIG_PROFILES_NEW	New	New	Nouveau	Neu		생성	新	新	Новый	Nuevo	Nuevo	Novo
CONFIG_PROFILES_COPY	Copy	Copy	Copier	Kopieren		복사	复制	複製	Копир.	Copiar	Copiar	Copiar
CONFIG_PROFILES_DELETE	Delete	Delete	Supprimer	Löschen		삭제	删除	刪除	Удалить	Borrar	Borrar	Apagar
CONFIG_PROFILES_DEFAULT_NAME	New Profile	New Profile	Nouveau Profil	Neues Profil		새 프로필	新设定档	新設定檔	Новый профиль	Nuevo Perfil	Nuevo Perfil	Novo Perfil
PROFILE_SELECTION_HEADER	Select a settings profile for %s											
PROFILE_SELECTION_CHOOSE_EXISTING	|cff888888Choose existing profile...											
PROFILE_SELECTION_CREATE_NEW	Create new profile											
PROFILE_SELECTION_CREATE	Create											
TOOLTIP_TOGGLE_BLIZZARD	Use Default Bag UI	Use Default Bag UI		Benutze Standard UI		기본 가방 UI 사용	使用预设背包界面	使用預設背包UI				Usar interface padrão de bolsa
TOOLTIP_TOGGLE_SORTED	Use Sorted.	Use Sorted.		Benutze Sorted		Sorted. 사용	使用Sorted	使用Sorted				Usar Sorted.
TOOLTIP_LAYOUT_LIST	Display as List	Display as List	Afficher en Liste	Listen-Anzeige		목록으로 표시	列表显示	列表顯示				Mostrar como lista
TOOLTIP_LAYOUT_GRID	Display as Grid	Display as Grid	Afficher en Grille	Grid-Anzeige		칸으로 표시	格子显示	格子顯示				Mostrar como grid
TOOLTIP_TITLE_ACCOUNT_GOLD	Account Gold	Account Gold	Or du Compte	Accountweites Gold		계정 골드	账号金额	帳號金錢	Золото акквунта	Oro en la cuenta	Oro en la cuenta	Ouro na conta
TOOLTIP_TITLE_BAGS	Bags	Bags	Sacs	Taschen		가방	背包	背包	Сумки	Bolsas	Bolsas	Bolsas
TOOLTIP_TITLE_BANK	Bank Bags	Bank Bags		Bankfächer		은행 가방	银行背包	銀行容器	Сумки банка	Bolsas del Banco	Bolsas del Banco	Bolsas do banco
TOOLTIP_TITLE_REAGENTS	Reagent Bank	Reagent Bank	Banque de Composants	Reagenzienbank		재료 가방	材料银行	材料銀行	Банк реагентов	Banco de componentes	Banco de componentes	Banco de Materiais
TOOLTIP_NEW_ITEM	1 New Item	1 New Item	1 Nouvel Objet	1 neuer Gegenstand		1 새 아이템	1个新物品	1個新物品		1 Nuevo Objeto		1 Novo Item
TOOLTIP_NEW_ITEMS	%s New Items	%s New Items	% Nouveaux Objets	%s neue Gegenstände		%s 새 아이템	%s个新物品	%s個新物品		%s Nuevos objetos		%s Novos Itens
TOOLTIP_CONFIG	Configure Sorted.	Configure Sorted.	Configurer Sorted.	Sorted. konfigurieren		Sorted. 설정	设置Sorted。	設置Sorted。	Настройки	Configurar Sorted.	Configurar Sorted.	Configurar Sorted
TOOLTIP_MINIMISE	Hide Side Panel	Hide Side Panel		Seitenpanel verstecken		측면 칸 숨기기	隐藏侧窗格	隱藏側窗格	Скрыть боковую панель	Esconder Panel Lateral	Esconder Panel Lateral	Esconder painel Lateral
TOOLTIP_MAXIMISE	Show Side Panel	Show Side Panel		Seitenpanel anzeigen		측면 칸 보이기	显示侧窗格	顯示側窗格	Показать боковую панель	Mostrar Panel Lateral	Mostrar Panel Lateral	Mostrar painel Lateral
TOOLTIP_KEYRING	Keyring	Keyring		Schlüsselring		열쇠고리	钥匙圈	鑰匙圈	Брелок	Llavero	Llavero	Chaveiro
TOOLTIP_CONTAINER_BACKPACK	Backpack	Backpack		Rucksack		배낭	背包	背包	Рюкзак	Mochila	Mochila	Mochila
TOOLTIP_CONTAINER_BANK	Bank	Bank	Banque	Bankfächer		은행	银行	銀行	Банк	Banco de componentes	Banco de componentes	Banco 
TOOLTIP_CONTAINER_REAGENTS	Reagents	Reagents	Composants	Reagenzien		재료 은행	材料银行	材料銀行	Реагенты	Componentes	Componentes	Mercadorias
TOOLTIP_CLEANUP_BAGS	< Click to Clean Up Bags >	< Click to Clean Up Bags >	<Cliquer pour trier les sacs>	Klicken um Tasche aufzuräumen		< 가방 정리하기 >	<点击以整理背包>	< 點擊以整理背包 >	<Щелкните, чтобы очистить сумки>	<Clic para limpiar las bolsas>	<Clic para limpiar las bolsas>	< Clique para limpar as Bolsas >
TOOLTIP_CLEANUP_BANK	< Click to Clean Up Bank >	< Click to Clean Up Bank >	<Cliquer pour trier la Banque>	Klicken um Bank aufzuräumen		< 은행 정리하기 >	<点击以整理银行>	< 點擊以整理銀行 >	<Щелкните, чтобы очистить банк>	<Clic para limpiar el banco>	<Clic para limpiar el banco>	< Clique para limpar o Banco>
TOOLTIP_CLEANUP_REAGENTS	< Click to Clean Up Reagents >	< Click to Clean Up Reagents >	<Cliquer pour trier la Banque de Composants>	Klicken um Reagenzien aufzuräumen		< 재료 은행 정리하기 >	<点击以整理材料银行>	< 點擊以整理材料銀行 >	<Щелкните, чтобы очистить банк реагентов>	<Clic para limpiar los componentes>	<Clic para limpiar los componentes>	 < Clique para limpar os Componentes>
TOOLTIP_FORGET_CHARACTER	Forget %s\n\n|cffffffffFree up memory by clearing the data that Sorted \nhas kept on this character.\n\n|cffff0000You will no longer be able to preview their items!	Forget %s\n\n|cffffffffFree up memory by clearing the data that Sorted\n has kept on this character.\n\n|cffff0000You will no longer be able to preview their items!		%s vergesse\n\n|cffffffffErhalte freien Speicher indem die Daten gelöscht werden, die Sorted für diesen Charakter gespeicehrt hat.\n\n|cffff0000Du wirst nicht länger eine Vorschau der Gegenstände dieses Charakters sehen können.		%s 지우기\n\n|cffffffff이 캐릭터에 대한 Sorted의 데이터를 지워 메모리를 확보합니다.\n\n|cffff0000더 이상 이 캐릭터의 아이템을 확인할 수 없습니다!	遗忘 %s\n\n|cffffffff清除Sorted保留在此\n\n角色的数据来释放内存。\n\n|cffff0000您将不再能够预览他的物品！	遺忘 %s\n\n|cffffffff清除Sorted保留在此\n\n角色的數據來釋放記憶體。\n\n|cffff0000您將不再能夠預覽他們的物品！	Удалить\n\n|cffffffffОсвободите память, очистив данные, которые Sorted сохранил для персонажей.\n\n|cffff0000Вы больше не сможете просмотреть их!	Olvida %s\n\n|cffffffffLibera memoria limpiando los datos que Sorted ha guardado de estos personajes.\n\n|cffff0000Ya no podrás tener la vista previa de sus objetos!	Olvida %s\n\n|cffffffffLibera memoria limpiando los datos que Sorted ha guardado de estos personajes.\n\n|cffff0000Ya no podrás tener la vista previa de sus objetos!	Esquecer %s\n\n|cffffffffLibera memória limpando os dados que Sorted mantém destes personagens.\n\n|cffff0000Você não conseguirá mais ver a prévia destes itens!
TOOLTIP_CONFIG_ALWAYS_USE_ICONS	Always Use Icons:\n|cffffffffHides the default category buttons and forces Sorted \nto use the icons instead, which usually only show when \nthe side pane is minimised.\n\n|cffffee00With this checked, and the side pane maximised, the entire height\nof the window will be used for the category's checkbuttons.\nIn this case, the side pane hides automatically.	Always Use Icons:\n|cffffffffHides the default category buttons and forces Sorted \nto use the icons instead, which usually only show when \nthe side pane is minimised.\n\n|cffffee00With this checked, and the side pane maximised, the entire height\nof the window will be used for the category's checkbuttons.\nIn this case, the side pane hides automatically.		Immer Symbole benutzen:\n|cffffffffVersteckt die Standard-Kategorieknöpfe und zwingt Sorted dazu\nSymbole stattdessen zu verwenden, die normalerweise\n nur angezeigt werden, wenn die Seitenleiste angezeigt wird.\n\n|cffffee00Wenn dies angehakt ist und die Seitenleiste minimiert ist\nwird die gesamte Höhe des Fensters für die Kategorieknöpfe verwendet.\nIn dieem Fall wird die Seitenleiste automatisch versteckt.		항상 아이콘 사용하기:\n|cffffffffSorted가 원래의 카테고리 버튼 대신 아이콘을 사용하도록 합니다.\n일반적으론 측면 칸을 접은 경우에만 나타납니다.\n\n|cffffee00이 옵션을 체크하면 세부 분류를 고를 수 있는 공간이 최대화됩니다.\n기존의 대분류 버튼은 자동으로 숨겨집니다.	永远使用图标:\n|cffffffff隐藏预设的类别文字按钮，强制改用图标\n就像是隐藏侧窗格时所显示的样子。\n\n|cffffee00勾选后，显示侧窗格时，整块区域都会用来\n显示类别的复选框，此时侧窗格也会自动隐藏。	永遠使用圖示:\n|cffffffff隱藏預設的類別文字按鈕，強制改用圖示\n就像是隱藏側窗格時所顯示的樣子。\n\n|cffffee00勾選後，顯示側窗格時，整塊區域都會用來\n顯示類別的核取方塊，此時側窗格也會自動隱藏。	Всегда использовать значки:\n|cffffffffСкрывает кнопки категорий по умолчанию и заставляет Sorted использовать вместо них значки, которые обычно отображаются, только когда боковая панель свернута.	Utilizar iconos siempre:\n|cffffffffOculta la categoría de botones por defecto y fuerza a Sorted \na usar a su vez los iconos, que normalmente solo se muestra cuando \nel panel lateral está minimizado.\n\n|cffffee00Activada esta opción,y el panel lateral maximizado, el total de la altura\nde la ventana será usada por la categoría de los botones.\nEn este caso, el panel lateral se oculta automáticamente.	Utilizar iconos siempre:\n|cffffffffOculta la categoría de botones por defecto y fuerza a Sorted \na usar a su vez los iconos, que normalmente solo se muestra cuando \nel panel lateral está minimizado.\n\n|cffffee00Activada esta opción,y el panel lateral maximizado, el total de la altura\nde la ventana será usada por la categoría de los botones.\nEn este caso, el panel lateral se oculta automáticamente.	Sempre usar ícones, esconde as categorias padrões de botões e força o Sorted a usar somente ícones, estes que normalmente aparecem na lateral quando o painel é minimizado. Com esta opção marcada, e o painel maximizado, a altura total da janela será utilizada para os botões de categoria. Neste caso, o painel se esconderá automaticamente.
TOOLTIP_CONFIG_ELVUI_SKIN	ElvUI Skin:\n|cffffffffToggles whether Sorted should use a different\nlook that matches your ElvUI profile.\n\n|cffffee00This feature requires both ElvUI and AddOnSkins to be installed,\nand takes effect only after logging out or performing a /reload.	ElvUI Skin:\n|cffffffffToggles whether Sorted should use a different\nlook that matches your ElvUI profile.\n\n|cffffee00This feature requires both ElvUI and AddOnSkins to be installed,\nand takes effect only after logging out or performing a /reload.				ElvUI 스킨:\n|cffffffffSorted가 ElvUI와 같은 스킨을 사용할지의 여부를 정합니다.\n\n|cffffee00이 기능은 ElvUI와 AddOnSkins를 모두 설치해야 하며,\n다음에 다시 접속하거나 /reload를 했을 때 적용됩니다.	ElvUI外观:/n|cffffffff切换Sorted是否该使用不同的/n外观以匹配您的ElvUI设定档。 \n\n|cffffee00此功能需要同时安装ElvUI以及AddOnSkins。 \n并且只在登出或是重载后才生效。	ElvUI外觀:/n|cffffffff切換Sorted是否該使用不同的/n外觀以匹配您的ElvUI的設定檔。\n\n|cffffee00此功能需要同時安裝ElvUI以及AddOnSkins。\n並且只在登出或是重載後才生效。				Skin ElvUI: \n|cffffffffAlterna se Sorted deve usar uma aparência diferente\n que fique parecida com seu perfil do ElvUI. \n\n|cffffee00Este recurso requer que ambos ElvUI e AddOnSkins estejam instalados, \ne entra em vigor somente após um logou ou executar um /reload.
TOOLTIP_CONFIG_SCROLL_WHEEL_SPEED	Wheel Scroll Speed:\n|cffffffffAdjust how far Sorted should scroll\nper each step of the scroll wheel.\n\n|cffffee00(You can hold ALT at any time to scroll quickly)	Wheel Scroll Speed:\n|cffffffffAdjust how far Sorted should scroll\nper each step of the scroll wheel.\n\n|cffffee00(You can hold ALT at any time to scroll quickly)		Mausrad Scrollgeschwindigkeit:\n|cffffffffPasse an, wie weit Sorted beim Drehen des Mausrads scrollen soll.\n\n|cffffee00(Du kannst jederzeit LT drücken um schnell zu scrollen)		스크롤 속도:\n|cffffffff마우스 휠의 한 단계마다 Sorted가 스크롤할 범위를 조정합니다.\n\n|cffffee00(ALT를 누르고 있으면 언제든지 빠르게 스크롤할 수 있습니다)	滚轮滚动速度:\n|cffffffff调整Sorted的滚轮\n每一步应滚动的距离。 \n\n|cffffee00(您可以随时按住ALT快速滚动)	滾輪捲動速度:\n|cffffffff調整Sorted的滾輪\n每一步應滾動的距離。\n\n|cffffee00(您可以隨時按住ALT快速滾動)	Скорость прокрутки колеса:\n|cffffffffУстановите, насколько далеко Sorted должен прокручивать на каждом шаге колеса прокрутки.\n|cffffffff(Вы можете удерживать ALT для быстрой прокрутки).	Velocidad de desplazamiento:\n|cffffffffAjusta hasta dónde Sorted debería desplazarse\npor cada clic de la rueda.\n\n|cffffee00(Puedes presionar ALT en cualquier momento para desplazarte rápidamente)	Velocidad de desplazamiento:\n|cffffffffAjusta hasta dónde Sorted debería desplazarse\npor cada clic de la rueda.\n\n|cffffee00(Puedes presionar ALT en cualquier momento para desplazarte rápidamente)	Velocidade de rolamento do mouse. Ajuste até onde Sorted deve rolar para cada passo de seu rolamento no mouse  (você pode segurar ALT a qualquer momento para rolar rapidamente.)
TOOLTIP_CONFIG_SMOOTH_SCROLLING	Smooth Scrolling:\n|cffffffffToggles whether Sorted should smoothly animate\nwhen scrolling. Raise the smoothing strength to\nincrease the duration of the animation.\n\n|cffffee00(Disable to improve performance)	Smooth Scrolling:\n|cffffffffToggles whether Sorted should smoothly animate\nwhen scrolling. Raise the smoothing strength to\nincrease the duration of the animation.\n\n|cffffee00(Disable to improve performance)		Sanftes Scrollen:\n|cffffffffSchaltet um ob Sorted sanft scrollen soll.´\nErhöhe die Stärke um die Dauer der Animation zu erhöhen.\n\ncffffee00(Abschalten um Performance zu verbessern)		부드러운 스크롤:\n|cffffffff스크롤 할 때 Sorted가 부드러운 애니메이션을 가하도록 조정합니다.\n부드러움 강도를 높여서 애니메이션 속도를 늘릴 수 있습니다.\n\n|cffffee00(비활성화하면 성능이 향상됨)	平滑滚动:\n|cffffffff切换Sorted是否有平滑的滚动动画\n滚动时，提高平滑强度\n以增加动画的持续时间。\n\n|cffffee00(停用来提高性能)	平滑捲動:\n|cffffffff切換Sorted是否有平滑的捲動動畫\n滾動時，提高平滑強度\n以增加動畫的持續時間。\n\n|cffffee00(停用來提高性能)	Плавная прокрутка:\n|cffffffffВключает, должна ли Sorted  плавную анимацию при прокрутке.\n|cffffffffУвеличьте сглаживание, чтобы увеличить продолжительность анимации.	Desplazamiento suave:\n|cffffffffAlterna si Sorted debería moverse suavemente\ncuando se desplaza. Sube el rango de suavidad para\nincrementar la duración de la animación.\n\n|cffffee00(Desactivar para mejorar rendimiento)	Desplazamiento suave:\n|cffffffffAlterna si Sorted debería moverse suavemente\ncuando se desplaza. Sube el rango de suavidad para\nincrementar la duración de la animación.\n\n|cffffee00(Desactivar para mejorar rendimiento)	Rolamento Suave. Troca entre rolamento suave ou não na animação do rolamento. Aumente a força do rolamento para aumentar a duração da animação. (Desabilite para melhorar performance)
TOOLTIP_CONFIG_RESET_ON_CLOSE	Reset Window on Close:\n|cffffffffLeave unchecked to have Sorted remember\nyour searching, filtering, and sorting options\nafter closing and reopening the window.	Reset Window on Close:\n|cffffffffLeave unchecked to have Sorted remember\nyour searching, filtering, and sorting options\nafter closing and reopening the window.		Fenster beim Schließen zurücksetzen:\n|cffffffffNicht anhaken, wenn Sorted sich Suchen, Sortierung, Filterung auch nach dem Schließen des Fenster merken soll		닫으면 창 초기화:\n|cffffffffSorted를 닫았다가 다시 열었을 때\n검색, 분류 및 정렬 우선도를 그대로 두려면\n체크하지 마십시오.	关闭后重设视窗:\n|cffffffff取消勾选以让Sorted在\n关闭并重新开启视窗之后记住\n您的搜寻、过滤与排序选项。	關閉後重設視窗:\n|cffffffff取消勾選以讓Sorted在\n關閉並重新開啟視窗之後記住\n您的搜尋、過濾與排序選項。	Сбросить окно при закрытии:\n|cffffffffСнимите флажок, чтобы Sorted запомнил параметры поиска, фильтрации и сортировки после закрытия и повторного открытия окна.	Reinicaiar ventana al cerrar:\n|cffffffffDejar sin marcar para que Sorted recuerde\ntu búsqueda, filtros, y orden de opciones\ndespués de cerrar y reabrir la ventana.	Reinicaiar ventana al cerrar:\n|cffffffffDejar sin marcar para que Sorted recuerde\ntu búsqueda, filtros, y orden de opciones\ndespués de cerrar y reabrir la ventana.	Reiniciar a janela ao fechar: Deixe desmarcado para que Sorted lembre a posição e organização de sua bolsa ao reabrir a janela.
TOOLTIP_CONFIG_COMBINE_STACKS	Combine Stacks:\n|cffffffffMerges identical items into one line.\nInteracting with an item will interact with\nthe largest stack of that item in your bags.	Combine Stacks:\n|cffffffffMerges identical items into one line.\nInteracting with an item will interact with\nthe largest stack of that item in your bags.		Stabel kombinieren:\n|cffffffffStapelt identische Gegenstände in einer Reihe. Wenn du mit einem Gegenstand interagierst, beeinflusst du den größten Stapel dieses Gegenständes in deinen Taschen.		갯수 합치기:\n|cffffffff같은 아이템을 한 줄로 합칩니다.\n아이템을 사용하면 해당 아이템 묶음 중\n가장 큰 묶음을 사용합니다.	合并堆叠:\n|cffffffff将相同的物品合并为一行。 \n与物品进行互动将与您背包中\n该物品的最大堆叠物品互动。	合併堆疊:\n|cffffffff將相同的物品合併為一行。\n與物品進行互動將與您背包中\n該物品的最大堆疊物品互動。	Объединить стопки:\n|cffffffffСоединяет идентичные элементы в одну строку.	Combinar Stacks:\n|cffffffffUnifica objetos identicos en una linea.\nçinteractuar con un item hara que se interactue con\nlos items como ese que tienes en tu mochila.	Combinar Stacks:\n|cffffffffUnifica objetos identicos en una linea.\nçinteractuar con un item hara que se interactue con\nlos items como ese que tienes en tu mochila.	Combinar ítens empilháveis: Junta itens idênticos em uma única linha. Interagir com um item irá interagir com a maior pilha de sua bolsa.
TOOLTIP_CONFIG_REMOVE_CATEGORY	Remove "%s"	Remove "%s"		%s' entfernen		"%s" 삭제	移除 "%s"	移除 "%s"	Удалить "%s"	Borrar "%s"	Borrar "%s"	Remover "%s
TOOLTIP_BUY_BANK_SLOT	Purchase Bag Slot	Purchase Bag Slot		Taschenfach kaufen		가방 칸 구입	购买背包格位	購買背包格位	Купить слот	Comprar Ranura de Bolsa	Comprar Ranura de Bolsa	Comprar Espaço de Bolsa
DIALOG_DELETE_CHARACTER_DATA	You will no longer be able to preview %s's items until you next play that character	You will no longer be able to preview %s's items until you next play that character		Du wirst nicht länger Gegenstände von %s sehen können bis Du dieen Charakter wieder gespielt hast		해당 캐릭터를 다시 플레이하기 전까지 %s의 아이템을 확인할 수 없을 것입니다.	在您下次玩此角色前，您将无法预览 %s 的物品	在你下次玩此角色前你再也無法預覽 %s的物品	Вы больше не сможете просматривать предметы, пока не сыграете этим персонажем в следующий раз.	No podrás ver la vista previa de los objetos de %s hasta que vuelvas a jugar con ese personaje	No podrás ver la vista previa de los objetos de %s hasta que vuelvas a jugar con ese personaje	Você não poderá mais previsualizar os itens de %s Até você logar nele novamente
DIALOG_DELETE_SETTINGS_PROFILE	Are you sure you want to delete the settings for profile '%s'?	Are you sure you want to delete the settings for profile '%s'?	Voulez-vous vraiment supprimer  la configuration du profil  '%s'  ?	Bist Du sicher, dass du die Einstellungen für Profil '%s' löschen willst?		%s' 프로필 설정을 정말로 삭제하시겠습니까?	您确定要删除设定档'%s'的配置吗？	您確定想要刪除設定檔 '%s'的配置嗎？	Вы действительно хотите удалить настройки для профиля '%s'?	¿Estás seguro que quiéres eliminar las opciones del perfil de '%s'?	¿Estás seguro que quiéres eliminar las opciones del perfil de '%s'?	Tem certeza de que quer elimitar todas as configurações do perfil '%s'?
DIALOG_BUTTON_ACCEPT	Accept	Accept	Accepter	Annehmen		승락	接受	接受	Принять	Aceptar	Aceptar	Aceitar
DIALOG_BUTTON_CANCEL	Cancel	Cancel	Annuler	Abbrechen		취소	取消	取消	Отмена	Cancelar	Cancelar	Cancelar
DIALOG_BUTTON_DELETE	Delete	Delete	Supprimer	Löschen		삭제	删除	刪除	Удалить	Eliminar	Eliminar	Eliminar
WARNING_BANK_NOT_CACHED	Visit a banker once to see your\nbank contents from anywhere	Visit a banker once to see your\nbank contents from anywhere	Rendez visite à un banquier une fois, pour apercevoir son contenu de n'importe où avec \nbank 	Besuch einmalig die Bank um deine Bankinhalte hier zu sehen		어디서나 은행 보관함을 보려면\n은행원에게 방문	访问银行柜员一次以便\n在任何地方查阅您的银行物品	訪問銀行職員一次以在\n任何地方查閱您的銀行物品	Посетите банкира, чтобы увидеть\nсодержимое своего банка\nиз любого места	Visita un banquero para ver los objetos de tu\n banco desde cualquier lugar	Visita un banquero para ver los objetos de tu\n banco desde cualquier lugar	Visite o banqueiro uma vez para ver o conteúdo de seu banco em qualquer lugar
WARNING_BANK_NOT_CACHED_OTHER	Visit a banker once on %s\nto see their bank contents here	Visit a banker once on %s\nto see their bank contents here		Besuch einmalig die Bank um die Bankinhalte hier zu sehen		%s의 은행원에게 방문하여\n이곳에서 은행 확인	请在%s访问银行柜员一次\n以便查阅他的银行物品	請在%s訪問銀行職員一次\n以便查閱他的銀行物品	Посетите банкира один раз,\nчтобы увидеть здесь содержимое банка	Visita un banquero para ver los objetos de su\n banco aquí	Visita un banquero para ver los objetos de su\n banco aquí	Visite o banqueiro uma vez para ver o conteúdo de seu banco em qualquer lugar
WARNING_REAGENTBANK_NOT_PURCHASED	Visit a banker to purchase\nthe reagent bank	Visit a banker to purchase\nthe reagent bank		Besuch einen Bankier um die Reagenzienbank zu kaufen		은행원에게 방문하여\n재료 은행 구입	访问银行柜员来\n购买材料银行	訪問銀行職員來\n購買材料銀行	Посетите банкира\nдля покупки хранилища.	Visita un banquero para comprar\nel banco de componentes	Visita un banquero para comprar\nel banco de componentes	Visite o banqueiro e compre o banco de Reagentes
WARNING_REAGENTBANK_NOT_PURCHASED_OTHER	Visit a banker on %s\nto purchase their reagent bank	Visit a banker on %s\nto purchase their reagent bank		Besuch einen Bankier um die Reagenzienbank zu kaufen		%s의 은행원에게 방문하여\n재료 은행 구입	请登入%s并访问银行柜员\n来购买他的材料银行	請登入%s並訪問銀行職員\n來購買他們的材料銀行	Посетите банкира, чтобы\nкупить банк реагентов.	Visita un banquero en %s\npara comprar su banco de componentes	Visita un banquero en %s\npara comprar su banco de componentes	Visite o banqueiro com %s\n para comprar o banco de reagentes dele
WARNING_REAGENTBANK_PURCHASE	This tab gives you additional storage for raw profession materials.\nDo you wish to purchase this tab?	This tab gives you additional storage for raw profession materials.\nDo you wish to purchase this tab?		Dieser Reiter gibt dir zufälligen PLatz für Rohmaterialen für Berufe. Willst Du diesen Reiter kaufen?		이 보관함에는 직업용품을 추가로 보관할 수 있습니다.\n이 보관함을 구입하시겠습니까?	此标签页为您提供了额外的专业原料存储空间。 \n您想要购买此标签页嘛？	此標籤為您提供了額外的存儲專業原料的空間。\n您想要購買此標籤嘛？	Эта вкладка показывает хранилище для материалов профессии.\nВы хотите приобрести эту вкладку?	Esta pestaña te da almacenamiento adicional para materiales de profesiones.\n¿Te gustaría comprar esta pestaña?	Esta pestaña te da almacenamiento adicional para materiales de profesiones.\n¿Te gustaría comprar esta pestaña?	Esta aba lhe dará armazenamento adicional para seus materiais de profissão. Você deseja comprar esta aba?
WARNING_NO_ITEMS_FOUND	No items found	No items found	Aucun objet trouvé	Keine Gegenstände gefunden		아이템을 찾을 수 없음	没找到物品	沒找到物品	Пусто	No se encontraron objetos	No se encontraron objetos	Não foram incontrados Itens]]

    for row in string.gmatch(tsv, "[^\r\n]+") do
        local key = string.match(row, "(.-)\t")
        localizations["enUS"][key], localizations["enGB"][key], localizations["frFR"][key], localizations["deDE"][key],
        localizations["itIT"][key], localizations["koKR"][key], localizations["zhCN"][key], localizations["zhTW"][key],
        localizations["ruRU"][key], localizations["esES"][key], localizations["esMX"][key], localizations["ptBR"][key]
            = string.match(row, ".-\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.-)\t(.*)")
    end

    for locale, keys in pairs(localizations) do
        for key, s in pairs(keys) do
            localizations[locale][key] = s:gsub("\\n", "\r\n")
        end
    end
end
ParseTSV()

local clientLocale = GetLocale()
local fallback = localesFallback[clientLocale]
if not fallback then fallback = "enUS" end

function S.Localize(key, ...)    
    if ... then
        if localizations[clientLocale][key] and localizations[clientLocale][key] ~= "" then
            return localizations[clientLocale][key]:format(...)
        elseif localizations[fallback][key] and localizations[fallback][key] ~= "" then
            return localizations[fallback][key]:format(...)
        elseif localizations["enUS"][key] then
            return localizations["enUS"][key]:format(...)
        else
            return "["..key.."]"
        end
    else
        if localizations[clientLocale][key] and localizations[clientLocale][key] ~= "" then
            return localizations[clientLocale][key]
        elseif localizations[fallback][key] and localizations[fallback][key] ~= "" then
            return localizations[fallback][key]
        elseif localizations["enUS"][key] then
            return localizations["enUS"][key]
        else
            return "["..key.."]"
        end
    end
end