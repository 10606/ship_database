
insert into thrower__torpedo 
    (thrower_id, torpedo_id) 
    values 
    (1, 0),
    (1, 3),
    (2, 0),
    (2, 3),
    (3, 0),
    (3, 3),
    (5, 3),
    (17, 0),

    (6, 1),
    (7, 1),
    (7, 2),
    (8, 1),
    (8, 2),
    (9, 1),
    (9, 2),
    (21, 1),
    (21, 2),
    (22, 1),
    (22, 2),
    
    (10, 4),
    (10, 7),
    (11, 4),
    (11, 7),
    (12, 4),
    (12, 7),
    (13, 4),
    (13, 7),
    (14, 4),
    (14, 7),
    (15, 4),
    (15, 7),
    (16, 4),
    (16, 7);



insert into thrower__depth_charge
    (thrower_id, depth_charge_id)
    values
    (1, 19),
    (1, 20),
    (1, 16),
    (0, 16),
    (0, 17),
    (0, 18);
    


insert into gun_mount 
    (id, name_ru, name_en, gun_id, gun_count, angle)
    values
    /* 120mm type 3 */
    ( 0, '   (с щитом)',                     null,           0, 1, 33), /*Моми Минекадзе Вакатаке Камикадзе Муцуки Симусю Эторофу*/
    
    /* 127mm type 3 */
    ( 1, 'тип А',                           'type A',        1, 2, 40), /*Фубуки 1 [Фубуки Аянами)*/
    ( 2, 'тип B',                           'type B',        1, 2, 75), /*Фубуки 2 [Аянами Акацуки) Фубуки 3 [Акацуки Хибики) Хацухару Сирацую*/
    ( 3, 'тип Ц',                           'type C',        1, 2, 55), /*Асасио Кагеро*/
    ( 4, 'тип Д',                           'type D',        1, 2, 75), /*Югумо Симакадзе*/
    ( 5, 'тип А',                           'type A',        1, 1, 55), /*Cирацую Хацухару*/
    
    /* 100mm type 98 AA */
    ( 6, 'тип А (закрытая)',                'type A',       19, 2, 90), /*Акидзуки*/
    ( 7, 'тип А мод 1 (с щитом)',           'type A mod 1', 19, 2, 90), /*Оедо Тайхо*/
    
    /* 120mm type 10 AA */
    ( 8,  null,                              null,          20, 2, 75), /*Укуру Микура Хибури*/
    ( 9, 'тип Б2',                          'type B2',      20, 1, 75), /*Укуру
                                                                          Микура
                                                                          Хибури
                                                                          Фурутака .33
                                                                          Како .32
                                                                          Такао [] 
                                                                          Атаго [] 
                                                                          Текай 
                                                                          Мая []*/
    /* 127mm type 89 AA */
    (10, '   (с щитом)',                     null,          22, 1, 90), /*Мацу */
    (11, 'тип А       (без щитов)',         'type A',       22, 2, 90), /*Мацу Такао Атаго Мая ...*/
    (12, 'тип А мод 1 (с закрытым щитом)',  'type A mod 1', 22, 2, 90), /*Меко Могами* Тоне* */
    (13, 'тип А мод 2 (с щитом)',           'type A mod 2', 22, 2, 90), /*Кага 
                                                                          Акаги 
                                                                          Секаку 
                                                                          Нагато 
                                                                          Титосе 
                                                                          Конго x4 .32
                                                                          ...*/
    (14, 'тип А мод 3 (закрытые)',          'type A mod 3', 22, 2, 90), /*Ямато*/
    
    /* 140mm type 3 */
    (15, 'тип А (казематный)',              'type A',        2, 1, 20), /*Исе  Хюга  Нагато (верхние)[25.11.20 01.04.34]  Муцу (верхние)[22.11.21 15.11.33]*/
    (16, 'тип А (казематный)',              'type A',        2, 1, 25), /*Нагато (нижние)[25.11.20 01.04.34]  Муцу (нижние)[22.11.21 15.11.33]*/
    (17, 'тип А (казематный)',              'type A',        2, 1, 35), /*Нагато 31.01.36  Муцу 30.09.36*/
    (18, 'тип А (с закрытым  щитом)',       'type A',        2, 1, 20), /*Тенрю Кума Нагара Сендай Юбари Хосе []*/
    (19, 'тип А',                           'type A',        2, 2, 35), /*Юбари Ниссин*/
    (20, 'тип А мод 2',                     'type A mod 2',  2, 2, 35), /*Катори Касима Касии*/
    
    /* 152mm type 41 */
    (21,  null,                              null,           3, 2, 55), /*Агано*/
    (22,  null,                              null,           3, 1, 15), /*Конго [16.08.13 .06.35]  
                                                                          Хией [04.08.14 26.11.36]  
                                                                          Кирисима [19.04.15 18.11.34]  
                                                                          Харуна [19.04.15 .34]
                                                                          Фусо [18.11.15 12.04.30]
                                                                          Ямасиро [31.03.17 18.12.30]*/
    (23,  null,                              null,           3, 1, 30), /*Конго .01.37
                                                                          Хией 31.01.41
                                                                          Кирисима 08.06.36
                                                                          Харуна .34
                                                                          Фусо .03.35 
                                                                          Ямасиро 30.03.35 
                                                                          Носиро Мару 14.10.41*/
                                                                        
    /* 155mm type 3 */
    (24,  null,                              null,           4, 3, 55), /*Ямато  
                                                                          Мусаси  
                                                                          Оедо  
                                                                          Могами [28.07.35 31.01.39]  
                                                                          Микума [29.08.35 20.05.39]  
                                                                          Судзуя [31.10.37 31.01.39]
                                                                          Кумано [31.10.37 20.05.39]*/
    
    /* 200mm type 3, 203mm type 2 No 2 */
    (25, 'тип А',                           'type A',        5, 1, 25), /*Фурутака [31.03.26 .04.37]  
                                                                          Како [20.07.26 .07.36]  
                                                                          Акаги x6 1927  
                                                                          Кага x6 1930 + x4 1934*/
    (26, 'тип Б',                           'type B',        5, 2, 70), /*Акаги x2 [1927 1936)  Кага x2 [1930 1934]*/
    (27, 'тип Ц',                           'type C',        5, 2, 40), /*Аоба [1927 1937-1938]*/
    (28, 'тип Ц',                           'type C',       32, 2, 40), /*Аоба 1937-1938*/
    (29, 'тип Д',                           'type D',        5, 2, 40), /*Меко [1928-1929 1931-1934]*/
    (30, 'тип Д',                           'type D',       32, 2, 40), /*Меко  1931-1934*/
    (31, 'тип Е',                           'type E',       32, 2, 70), /*Такао Атаго Текай 1932*/
    (32, 'тип Е',                           'type E',       32, 2, 55), /*Мая 1932  
                                                                          Фурутака 09.06.39  
                                                                          Како .12.37  
                                                                          Тоне 1937-1938  
                                                                          Могами 12.04.40
                                                                          Микума 30.12.39
                                                                          Судзуя 30.09.39
                                                                          Кумано 20.10.39*/
    
    /* 356mm type 41 */
    (33,  null,                              null,           6, 2, 20), /*Хией [04.08.14 29]
                                                                          Кирисима [19.04.15 29]
                                                                          Харуна [19.04.15 29]
                                                                          Исе [15.12.17 25.09.34]
                                                                          Хюга [30.04.18 1935]*/
    (34,  null,                              null,           6, 2, 25), /*Конго [1913 09.1929]*/
    (35,  null,                              null,           6, 2, 30), /*Фусо [18.11.15 12.04.30]  Ямасиро [31.03.17 18.12.30]*/
    (36,  null,                              null,           6, 2, 33), /*Конго [31.03.1931 .06.35]  
                                                                          Хией [1931 26.11.36]  
                                                                          Кирисима [1931 18.11.34]  
                                                                          Харуна [1931 .34]*/
    (37,  null,                              null,           6, 2, 43), /*Конго 01.37  
                                                                          Хией 31.01.41  
                                                                          Кирисима 08.06.36
                                                                          Харуна .34
                                                                          Фусо .03.35
                                                                          Ямасиро 30.03.35
                                                                          Исе 23.03.37
                                                                          Хюга 1935*/

    /* 410mm type 3 */
    (38,  null,                              null,           7, 2, 30), /*Нагато [25.11.20 01.04.34]  Муцу [22.11.21 15.11.33]*/
    (39,  null,                              null,           7, 2, 43), /*Нагато 31.01.36  Муцу 30.09.36*/

    /* 460mm type 94 */
    (40,  null,                              null,           8, 3, 45); /*Ямато Мусаси*/


insert into gun_mount 
    (id, name_ru, name_en, gun_id, gun_count, angle)
    values
    /* 76.2mm/40 AA gun */
    (42,  null,                              null,          34, 1, 75), /*Конго x16 [16.08.13 1918]
                                                                          Хией x8 [04.08.14 1918]
                                                                          Кирисима x8 [19.04.15 1918]
                                                                          Харуна x8 [19.04.15 1918]*/
    (55,  null,                              null,          42, 1, 75), /*Юбари  
                                                                          Фурутака [31.03.26 .32] 
                                                                          Како [20.07.26 .31]
                                                                          Конго x4 [1918 30.01.32]
                                                                          Хией x4 [1918 ] 
                                                                          Кирисима x4 [1918 ]
                                                                          Харуна x4 [1918 ]*/
    (56,  null,                              null,          14, 1, 75),
    (57,  null,                              null,          15, 1, 75),
    (41,  null,                              null,          33, 2, 90), /*Агано*/

    /* 25mm type 96 AA */
    (43,  null,                              null,          12, 1, 85), 
    (44,  null,                              null,          12, 2, 85),
    (45,  null,                              null,          12, 3, 85),
    (46, '   (закрытая)',                    null,          12, 3, 80), /*Ямато*/
    
    /* 40mm */
    (47,  null,                              null,          13, 1, 85), /*Такао  
                                                                          Атаго  
                                                                          Мая  
                                                                          Текай [30.06.32 31.10.36]
                                                                          Конго [.33 01.06.35]*/
    (48,  null,                              null,          13, 2, 85),

    /* 7.7mm Lewis */
    (49,  null,                              null,          38, 1, 85),
    
    /* 6.5mm type 3 */
    (50,  null,                              null,          26, 1, 85),
    
    /* 13.2mm type 93 */
    (51,  null,                              null,          28, 1, 85),
    (52,  null,                              null,          28, 2, 85),
    (53,  null,                              null,          28, 4, 85);
    


