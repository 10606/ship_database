
insert into ship_class
    (id, parent_id, name_ru, name_en)
    values
    ( 0, null, 'линкор',            'battleship'),
    ( 1, null, 'легкий крейсер',    'light cruiser'),
    ( 2, null, 'тяжелый крейсер',   'heavy cruiser'),
    ( 3, null, 'эсминец',           'destroyer'),
    ( 4, null, 'авианосец',         'aircraft carrier'),
    ( 5, null, 'подводная лодка',   'submarine'),
    
    ( 6, 3, 'эскортный корабль',    'escort ship'),
    ( 7, 4, 'эскортный авианосец',  'escort aircraft carrier'),
    ( 8, 4, 'гидроавианосец',       'hydro aircraft carrier'),
    ( 9, 1, 'вспомогательный крейсер', 'escort cruiser'),
    (10, 1, 'учебный крейсер',      'training cruiser'),
    (11, 5, 'подводный авианосец',  'submarine aircraft carrier'),
    (12, 5, 'транспортная подводная лодка', 'transport submarine');


insert into ship_types
    (id, name_ru, name_en)
    values
    ( 0, 'Конго',   'Kongo'),
    ( 1, 'Фусо',    'Fuso'),
    ( 2, 'Исе',     'Ise'),
    ( 3, 'Нагато',  'Nagato'),
    ( 4, 'Ямато',   'Yamato');
    
    
insert into ship_types
    (id, name_ru, name_en)
    values
    ( 5, 'Кума',    'Kuma'),
    ( 6, 'Тенрю',   'Tenryu'),
    ( 7, 'Нагара',  'Nagara'),
    ( 8, 'Сендай',  'Sendai'),
    ( 9, 'Агано',   'Agano'),
    (10, 'Юбари',   'Yubari'),
    (11, 'Оедо',    'Oyodo'),
    
    (12, 'Носиро Мару', 'Noshiro Maru'),
    (13, 'Катори',      'Katori');
    
    
insert into ship_types
    (id, name_ru, name_en)
    values
    (14, 'Фурутака',    'Furutaka'),
    (15, 'Такао',       'Takao'),
    (16, 'Аоба',        'Aoba'),
    (17, 'Меко',        'Myoko'),
    (18, 'Могами',      'Mogami'),
    (19, 'Тоне',        'Tone');
    
    
insert into ship_types
    (id, name_ru, name_en)
    values
    (20, 'Хосе',    'Hosho'),
    (21, 'Амаги',   'Amagi'), /* Акаги */
    (22, 'Тоса',    'Tosa'), /* Кага */
    (23, 'Рюдзе',   'Ryujo'),
    (24, 'Сорю',    'Soryu'),
    (25, 'Тайгей',  'Taigei'), /* Рюхо */
    (26, 'Секаку',  'Shokaku'),
    (27, 'Дзуйхо',  'Zuiho'),
    (28, 'Дзюнье',  'Junyo'),
    (29, 'Тайхо',   'Taiho'),
    /* Синано это тип Ямато */
    (30, 'Унрю',    'Unryu'),
    (31, 'Тайе',    'Taiyo'),
    (32, 'Кайе',    'Kaiyo'),
    (33, 'Синье',   'Shinyo'),
    
    (34, 'Титосе',      'Chitose'),
    (35, 'Мидзухо',     'Mizuho'),
    (36, 'Ниссин',      'Nisshin'),
    (37, 'Акицусима',   'Akitsushima'),
    
    /* Мару - армейские */
    (38, 'Акицу Мару',  'Akitsu Maru'),
    (39, 'Ямасиро Мару','Yamashiro Maru'),
    (40, 'Симане Мару', 'Shimane Maru'),
    (41, 'Кумано Мару', 'Kumano Maru');
 
    
insert into ship_types
    (id, name_ru, name_en)
    values
    (42, 'Моми',        'Momi'),
    (43, 'Вакатаке',    'Wakatake'),
    (44, 'Минекадзе',   'Minekaze'),
    (45, 'Камиказде',   'Kamikaze'),
    (46, 'Муцуки',      'Mutsuki'),
    (47, 'Фубуки',      'Fubuki'),
    (48, 'Хацухару',    'Hatsuharu'),
    (49, 'Акидзуки',    'Akizuki'),
    (50, 'Симакадзе',   'Shimakaze'),
    (51, 'Югумо',       'Yugumo'),
    (52, 'Кагеро',      'Kagero'),
    (53, 'Сирацую',     'Shiratsuyu'),
    (54, 'Асасио',      'Asashio'),
    
    (94, 'Тидори',      'Chidori'),
    (95, 'Отори',       'Otori'),
    
    (55, 'Симусю',      'Shimushu'),
    (56, 'Эторофу',     'Etorofu'),
    (57, 'Мацу',        'Matsu'),
    (96, 'Татибана',    'Tachibana'),
    (58, 'Микура',      'Mikura'),
    (59, 'Укуру',       'Ukuru'),
    (60, 'Хибури',      'Hiburi');

    
insert into ship_types
    (id, name_ru, name_en)
    values
    (61, 'I-51',    'I-51'),
    (62, 'I-1',     'I-1'),
    (63, 'I-152',   'I-152'),
    (64, 'I-121',   'I-121'),
    (65, 'I-153',   'I-153'),
    (66, 'I-61',    'I-61'),
    (67, 'I-165',   'I-165'),
    (68, 'I-168',   'I-168'),
    (69, 'I-176',   'I-176'),
    (70, 'I-5',     'I-5'),
    (71, 'I-6',     'I-6'),
    (72, 'I-7',     'I-7'),
    (73, 'I-9',     'I-9'),
    (74, 'I-12',    'I-12'),
    (75, 'I-13',    'I-13'),
    (76, 'I-15',    'I-15'),
    (77, 'I-16',    'I-16'),
    (78, 'I-400',   'I-400'),
    (79, 'I-40',    'I-40'),
    (80, 'I-46',    'I-46'),
    (81, 'I-54',    'I-54'),
    (82, 'I-351',   'I-351'),
    (83, 'I-201',   'I-201'),
    (84, 'I-52',    'I-52'),
    (90, 'I-361',   'I-361'),
    (91, 'I-372',   'I-372'),
    (92, 'I-373',   'I-373'),

    (93, 'RO-57',   'RO-57'),
    (85, 'RO-60',   'RO-60'),
    (86, 'RO-35',   'RO-35'),
    (87, 'RO-33',   'RO-33'),
    (88, 'RO-100',  'RO-100'),
    (89, 'HA-201',  'HA-201');

