
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (0,     'Кампон высокого давления',                     'Kampon high pressure',                     null,   2613,  12410,      4), /* 4* тип Могами, тип Тоне, тип Сорю */
    (1,     'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   2613,  12340,      4), /* 4* тип Могами, тип Тоне, тип Сорю */
    (2,     'Кампон низкого давления',                      'Kampon low pressure',                      null,   2291,  13250,      4), /* 4* тип Могами, тип Тоне, тип Сорю */

    (5,     'Кампон высокого давления (внутренние)',        'Kampon high pressure (inner)',             null,   2899,   8125,      6), /* 4* тип Такао, 4* тип Меко, 2* Рюдзе */
    (6,     'Кампон высокого давления (внешние)',           'Kampon high pressure (outer)',             null,   3017,   8125,      6), /* 2* тип Такао, 2* тип Меко, 2* Рюдзе */
    (7,     'Кампон обычная высокого давления',             'Kampon ordinary use high pressure',        null,   3017,   8125,      5), /* 2* тип Такао, 2* тип Меко */
    (8,     'Кампон низкого давления (внутренние)',         'Kampon low pressure (inner)',              null,   2054,   8125,      6), /* 4* тип Такао, 4* тип Меко, 2* Рюдзе */
    (9,     'Кампон низкого давления (внешние)',            'Kampon low pressure (outer)',              null,   1997,   8125,      6), /* 4* тип Такао, 4* тип Меко, 2* Рюдзе */
    (12,    'Кампон индукционная',                          'Kampon induction',                         null,   null,   null,   null), /* 2* тип Такао */ /* для быстрого перевода с крейсерского (2 винта) на полный (4 винта) ход */
    
    (13,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   3000,  12500,      6), /* 4* тип Аоба, тип Фурутака */
    (14,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   2000,  13000,      9), /* 4* тип Аоба, тип Фурутака */
    
    
    (17,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   3632,   9250,      3), /* 4* Оедо */
    (18,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   3385,   9150,      6), /* 4* Оедо */
    (19,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   2327,   9100,      5), /* 4* Оедо */
    
    (22,    'Гихон высокого давления',                      'Gihon high pressure',                      null,   3644,   8400,      3), /* 4* тип Агано */
    (23,    'Гихон среднего давления',                      'Gihon intermediate pressure',              null,   3395,   8350,      6), /* 4* тип Агано */
    (24,    'Гихон низкого давления',                       'Gihon low pressure',                       null,   2334,   8250,      5), /* 4* тип Агано */

    (27,    'Гихон высокого давления',                      'Gihon high pressure',                      null,   null,   null,      6 /* +5 */),  /* 4* Кума, Тама, Китаками, Кисо
                                                                                                                                                    4* Нагара, Исудзу, Натори, Юра, Абукума, 
                                                                                                                                                    4* Сендай, Нака */
    (28,    'Мицубиси-Парсон низкого давления',             'Mitsubishi-Parson low pressure',           null,   null,   null,      2),           /* 4* Кума, Тама, Китаками, Кисо
                                                                                                                                                    4* Нагара, Исудзу, Натори, Юра, Абукума,
                                                                                                                                                    4* Сендай, Нака */
    (29,    'Браун-Кертис высокого давления',               'Brown-Curtis high pressure',               null,   null,   null,      6),           /* 4* Оои, Кину, Дзинцу */
    (30,    'Браун-Кертис низкого давления',                'Brown-Curtis low pressure',                null,   null,   null,      9),           /* 4* Оои, Кину, Дзинцу */
    
    (35,    'Браун-Кертис высокого давления',               'Brown-Curtis high pressure',               null,   3000,   null,      5 /* +1 */),  /* 3* тип Тенрю */
    (36,    'Браун-Кертис низкого давления',                'Brown-Curtis low pressure',                null,   1800,   null,      7),           /* 3* тип Тенрю */

    (39,    'Мицубиси-Парсон высокого давления',            'Mitsubishi-Parson high pressure',          null,   3000,   null,   null), /* 3* Юбари, 2* тип Минекадзе */
    (40,    'Мицубиси-Парсон низкого давления',             'Mitsubishi-Parson low pressure',           null,   2000,   null,   null), /* 3* Юбари, 2* тип Минекадзе  */

    (43,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,      7), /* 2* тип Катори, Хасидате, Удзи */
    (44,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,      4), /* 2* тип Катори, Хасидате, Удзи */
    
    
    (46,    'Гидзицу-Хонбу высокого давления',              'Gijitsu-Honbu high pressure',              null,   null,   null,   null), /* 8* Акаги до 1938 */
    (47,    'Гидзицу-Хонбу среднего давления',              'Gijitsu-Honbu intermediate pressure',      null,   null,   null,   null), /* 4* Акаги до 1938 */
    (48,    'Гидзицу-Хонбу низкого давления',               'Gijitsu-Honbu low pressure',               null,   null,   null,   null), /* 8* Акаги до 1938 */
    
    (49,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 8* Акаги после 1938 */
    (50,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 4* Акаги после 1938 */
    (51,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 4* Акаги после 1938 */
    
    (52,    'Браун-Кертис высокого давления',               'Brown-Curtis high pressure',               null,   null,   null,   null), /* 4* Кага до 1934 */
    (53,    'Браун-Кертис среднего давления',               'Brown-Curtis intermediate pressure',       null,   null,   null,   null), /* 4* Кага до 1934 */
    (54,    'Браун-Кертис низкого давления',                'Brown-Curtis low pressure',                null,   null,   null,   null), /* 8* Кага до 1934 */
    
    (55,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 8* Кага после 1936 */
    (56,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 4* Кага после 1936 */
    (57,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 4* Кага после 1936 */
    
    (58,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 4* тип Секаку, 4* Тайхо */
    (59,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 4* тип Секаку, 4* Тайхо */
    (60,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 8* тип Секаку, 8* Тайхо */

    (66,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 4* Унрю, 4* Амаги */
    (67,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 4* Унрю, 4* Амаги */
    (68,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 4* Унрю, 4* Амаги */
    
    (71,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 4* Кацураги, 2* Кайе */
    (72,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 4* Кацураги, 2* Кайе */
    (73,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 4* Кацураги, 2* Кайе */

    (77,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 2* тип Титосе */
    (78,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 2* тип Титосе */

    (80,    'A.E.G.',                                       'A.E.G',                                    null,   null,  13000,   null), /* 2* Синье */
    
    (81,    'Парсон высокого давления',                     'Parson high pressure',                     null,   null,   null,   null), /* 2* Хосе */
    (82,    'Парсон низкого давления',                      'Parson low pressure',                      null,   null,   null,   null), /* 2* Хосе */
    
    (83,    'Мицубиси-Кертис высокого давления',            'Mitsubishi-Curtis high pressure',          null,   null,   null,   null), /* 2* тип Дзюнье */
    (84,    'Мицубиси-Кертис среднего давления',            'Mitsubishi-Curtis intermediate pressure',  null,   null,   null,   null), /* 2* тип Дзюнье */
    (85,    'Мицубиси-Кертис низкого давления',             'Mitsubishi-Curtis low pressure',           null,   null,   null,   null), /* 4* тип Дзюнье */
    
    
    (86,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 4* тип Ямато */
    (87,    'Кампон среднего давления',                     'Kampon intermediate pressure',             null,   null,   null,   null), /* 4* тип Ямато */
    (88,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 4* тип Ямато */
    
    (90,    'Парсон высокого давления',                     'Parson high pressure',                     null,   null,   null,   null), /*  8* Конго до 1935, Хией до 1936, Кирисима до 1934 */
    (91,    'Парсон среднего давления',                     'Parson intermediate pressure',             null,   null,   null,   null), /*  4* Конго до 1935, Хией до 1936, Кирисима до 1934 */
    (92,    'Парсон низкого давления',                      'Parson low pressure',                      null,   null,   null,   null), /*  4* Конго до 1935, Хией до 1936, Кирисима до 1934 */
    (93,    'Браун-Кертис высокого давления',               'Brown-Curtis high pressure',               null,   null,   null,   null), /*  8* Харуна до 1933 */
    (94,    'Браун-Кертис среднего давления',               'Brown-Curtis intermediate pressure',       null,   null,   null,   null), /*  4* Харуна до 1933 */
    (95,    'Браун-Кертис низкого давления',                'Brown-Curtis low pressure',                null,   null,   null,   null), /*  4* Харуна до 1933 */
    (96,    'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /*  8* Конго после 1937, Хией после 1940, Кирисима после 1936, Харуна после 1934 */
    (97,    'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null), /* 16* Конго после 1937, Хией после 1940, Кирисима после 1936, Харуна после 1934 */
    
    (100,   'Браун-Кертис высокого давления',               'Brown-Curtis high pressure',               null,   null,   null,   null), /* 8* Фусо, Ямасиро до 1930 */
    (101,   'Браун-Кертис низкого давления',                'Brown-Curtis low pressure',                null,   null,   null,   null), /* 4* Фусо, Ямасиро до 1930 */
    (102,   'Кампон высокого давления',                     'Kampon high pressure',                     null,   null,   null,   null), /* 8* Фусо после 1932, Ямасиро после 1935 */
    (103,   'Кампон низкого давления',                      'Kampon low pressure',                      null,   null,   null,   null); /* 8* Фусо после 1932, Ямасиро после 1935 */
    
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    ( 3,    'Кампон',                   'Kampon',                   null,   4796,   2770,      8), /* 4* тип Могами, тип Тоне, тип Сорю */
    (10,    'Кампон',                   'Kampon',                   null,   5439,   3100,      3), /* 2* тип Такао, 2* тип Меко, 2* Рюдзе */
    (15,    'Кампон',                   'Kampon',                   null,   null,   null,      3), /* 2* тип Аоба, тип Фурутака */

    
    (20,    'Кампон',                   'Kampon',                   null,   6230,   null,      6), /* 4* Оедо */
    (25,    'Гихон',                    'Gihon',                    null,   6230,   null,      6), /* 2* тип Агано */
    (31,    'Гихон-Мицубиси',           'Gihon-Mitsubishi',         null,   null,   null,      2), /* 2* Кума, Тама, Китаками, Кисо
                                                                                                   2* Нагара, Исудзу, Натори, Юра, Абукума,
                                                                                                   2* Сендай, Нака */
    (32,    'Браун-Кертис',             'Brown-Curtis',             null,   null,   null,      2), /* 4* Оои, Кину, Дзинцу */
    (37,    'Браун-Кертис',             'Brown-Curtis',             null,   null,   null,      1), /* 3* тип Тенрю */
    (41,    'Мицубиси-Парсон',          'Mitsubishi-Parson',        null,   null,   null,      2), /* 3* Юбари, 2* тип Минекадзе  */
    
    
    (61,    'Кампон',                   'Kampon',                   null,   null,   null,   null), /* 4* тип Секаку, 4* Тайхо */
    (69,    'Кампон',                   'Kampon',                   null,   null,   null,   null), /* 2* Унрю, 2* Амаги */
    (74,    'Кампон высокого давления', 'Kampon high pressure',     null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 2* Кацураги, 2* Кайе */
    (75,    'Кампон низкого давления',  'Kampon low pressure',      null,   null,   null,   null), /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 2* Кацураги, 2* Кайе */
    (79,    'Кампон',                   'Kampon',                   null,   null,   3000,   null), /* 2* тип Титосе */

    
    (89,    'Кампон',                   'Kampon',                   null,   null,   4500,   null), /* 4* тип Ямато */
    (98,    'Парсон',                   'Parson',                   null,   null,   null,   null), /* 4* Конго до 1935, Хией до 1936, Кирисима до 1934 */
    (99,    'Кампон',                   'Kampon',                   null,   null,   null,   null), /* 2* (на внешних винтах) Конго после 1937, Хией после 1940, Кирисима после 1936, Харуна после 1934 */
    (104,   'Кампон',                   'Kampon',                   null,   null,   null,   null); /* 8* Фусо после 1932, Ямасиро после 1935 */
    
    
/* турбины заднего хода */
insert into steam_turbine_reverse
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    ( 4, 'Кампон',          'Kampon',               null,   1481,  10000,      1), /* 4* тип Могами, тип Тоне, тип Сорю */
    (11, 'Кампон',          'Kampon',               null,   1140,   4500,      1), /* 8* тип Такао, 8* тип Меко, 4* Рюдзе */
    (16, 'Кампон',          'Kampon',               null,   null,   7000,      1), /* 4* тип Аоба, тип Фурутака */

    
    (21, 'Кампон',          'Kampon',               null,   1471,   6875,      1), /* 4* Оедо */
    (26, 'Гихон',           'Gihon',                null,   1498,   6250,      1), /* 4* тип Агано */
    (33, 'Мицубиси-Парсон', 'Mitsubishi-Parson',    null,   null,   null,      1), /* 4* Кума, Тама, Китаками, Кисо
                                                                                      4* Нагара, Исудзу, Натори, Юра, Абукума,
                                                                                      4* Сендай, Нака */
    (34, 'Браун-Кертис',    'Brown-Curtis',         null,   null,   null,      1), /* 4* Оои, Кину, Дзинцу */
    (38, 'Браун-Кертис',    'Brown-Curtis',         null,   null,   null,      1), /* 3* тип Тенрю */
    (42, 'Мицубиси-Парсон', 'Mitsubishi-Parson',    null,   null,   null,      1), /* 3* Юбари, 2* тип Минекадзе */
    (45, 'Кампон',          'Kampon',               null,   null,   null,      3), /* 2* тип Катори, Хасидате, Удзи */
    
    
    (70, 'Кампон',          'Kampon',               null,   null,  10000,   null), /* 4* Унрю, 4* Амаги */
    (76, 'Кампон',          'Kampon',               null,   null,  10000,   null); /* 2* тип Кагеро, 2* тип Югумо, 2* тип Акидзуки, 2* тип Дзуйхо, 2* Рюхо, 4* Кацураги, 2* Кайе */
    
    
