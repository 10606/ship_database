
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (17, 'Кампон высокого давления',                'Kampon high pressure',              null,  3632,   9250, 3), /* 4* Оедо */
    (18, 'Кампон среднего давления',                'Kampon intermediate pressure',      null,  3385,   9150, 6), /* 4* Оедо */
    (19, 'Кампон низкого давления',                 'Kampon low pressure',               null,  2327,   9100, 5), /* 4* Оедо */
    
    (22, 'однопоточная высокого давления',          'single flow high pressure',         null,  3644,   8400, 3), /* 4* тип Агано */
    (23, 'однопоточная среднего давления',          'single flow intermediate pressure', null,  3395,   8350, 6), /* 4* тип Агано */
    (24, 'однопоточная низкого давления',           'single flow low pressure',          null,  2334,   8250, 5), /* 4* тип Агано */

    (27, 'Гихон высокого давления',                 'Gihon high pressure',               null,  null,   null, 6 /* +5 */),  /* 4* Сендай, Нака */
    (28, 'Мицубиси-Парсон низкого давления',        'Mitsubishi-Parson low pressure',    null,  null,   null, 2),           /* 4* Сендай, Нака */
    (29, 'Браун-Кертис высокого давления',          'Brown-Curtis high pressure',        null,  null,   null, 6),           /* 4* Оои, Кину, Дзинцу */
    (30, 'Браун-Кертис низкого давления',           'Brown-Curtis low pressure',         null,  null,   null, 9);           /* 4* Кину, Дзинцу */
    
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (20, 'Кампон',          'Kampon',            null,  6230,   null, 6), /* 4* Оедо */
    (25, 'однопоточная',    'single flow',       null,  6230,   null, 6), /* 2* тип Агано */
    (31, 'Гихон-Мицубиси',  'Gihon-Mitsubishi',  null,  null,   null, 2), /* 2* Сендай, Нака */
    (32, 'Браун-Кертис',    'Brown-Curtis',      null,  null,   null, 2); /* 4* Оои, Кину, Дзинцу */
    
    
/* турбины заднего хода */
insert into steam_turbine_reverse
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (21, 'Кампон',          'Kampon',            null,  1471,   6875, 1), /* 4* Оедо */
    (26, 'однопоточная',    'single flow',       null,  1498,   6250, 1), /* 4* тип Агано */
    (33, 'Мицубиси-Парсон', 'Mitsubishi-Parson', null,  null,   null, 1), /* 4* Сендай, Нака */
    (34, 'Браун-Кертис',    'Brown-Curtis',      null,  null,   null, 1); /* 4* Оои, Кину, Дзинцу */
    
    
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    ( 8, 'Кампон Ро Го',    'Kampon Ro Go',     2,  350,    30,   981), /* 6* Оедо */
    ( 9, 'Кампон Ро Го',    'Kampon Ro Go',     2,  350,    30,   889), /* 6* тип Агано */
    (10, 'Кампон Ро Го',    'Kampon Ro Go',     2,  100,    18.3, null), /* 12* Оои, Сендай, Нака */
    (11, 'Кампон Ро Го',    'Kampon Ro Go',     2,  156,    18.3, null); /* 12* Кину, Дзинцу */
    
    
    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    ( 6, null, 110000,  null), /* Оедо */
    ( 7, null, 100000,  null), /* тип Агано */
    ( 8, null,  90000,  null), /* Сендай, Нака */
    ( 9, null,  90000,  null), /* Кину, Дзинцу */
    (10, null,  90000,  null); /* Оои */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    ( 6,  8,  6), /* Оедо */
    ( 7,  9,  6), /* тип Агано */
    ( 8, 10, 12), /* Сендай, Нака */
    ( 9, 11, 12), /* Кину, Дзинцу */
    (10, 10, 12); /* Оои */

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* Оедо */
    ( 6, 17, 4),
    ( 6, 18, 4),
    ( 6, 19, 4),
    ( 6, 20, 4),
    ( 6, 21, 4),
    
    /* тип Агано */
    ( 7, 22, 4),
    ( 7, 23, 4),
    ( 7, 24, 4),
    ( 7, 25, 2),
    ( 7, 26, 4),
    
    /* Сендай, Нака */
    ( 8, 27, 4),
    ( 8, 28, 4),
    ( 8, 31, 2),
    ( 8, 33, 4),
    
    /* Кину, Дзинцу */
    ( 9, 29, 4),
    ( 9, 30, 4),
    ( 9, 32, 4),
    ( 9, 34, 4),
    
    /* Оои */
    (10, 29, 4),
    (10, 30, 4),
    (10, 32, 4),
    (10, 34, 4);
  
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* Оедо */
    (33, 6, 1,  '1943-02-28', '1945-07-28'),

    /* тип Агано */
    (28, 7, 1, '1942-10-31', '1944-02-16'),
    (29, 7, 1, '1943-06-30', '1944-10-26'),
    (30, 7, 1, '1943-12-29', '1945-04-07'),
    (31, 7, 1, '1944-04-09',  null       ),
    
    /* тип Сендай */
    (25, 8, 1, '1924-04-29', '1943-11-02'),
    (26, 9, 1, '1925-07-31', '1943-07-13'),
    (27, 8, 1, '1925-11-30', '1944-02-18');
    

