
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (0,  'Кампон высокого давления',            'Kanpon high pressure',              null,  2613,   12410, 4), /* 4* тип Могами */
    (1,  'Кампон среднего давления',            'Kanpon intermediate pressure',      null,  2613,   12340, 4), /* 4* тип Могами */
    (2,  'Кампон низкого давления',             'Kanpon low pressure',               null,  2291,   13250, 4), /* 4* тип Могами */

    (5,  'Кампон высокого давления',            'Kanpon high pressure inner',        null,  2899,    8125, 6), /* 4* тип Такао */
    (6,  'Кампон высокого давления',            'Kanpon high pressure outer',        null,  3017,    8125, 6), /* 2* тип Такао */
    (7,  'Кампон обычная высокого давления',    'Kanpon ordinary use high pressure', null,  3017,    8125, 5), /* 2* тип Такао */
    (8,  'Кампон низкого давления',             'Kanpon low pressure inner',         null,  2054,    8125, 6), /* 4* тип Такао */
    (9,  'Кампон низкого давления',             'Kanpon low pressure outer',         null,  1997,    8125, 6), /* 4* тип Такао */
    (12, 'Кампон индукционная',                 'Kanpon induction',                  null,  null,    null, null); /* 2* тип Такао */ /* для быстрого перевода с крейсерского (2 винта) на полный (4 винта) ход */
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (3,  'Кампон',  'Kanpon',    null,  4796,   2770, 8), /* 4* тип Могами */
    (10, 'Кампон',  'Kanpon',    null,  5439,   3100, 3); /* 2* тип Такао */
    
/* турбины заднего хода */
insert into steam_turbine_reverse
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (4,  'Кампон',  'Kanpon',    null,  1481,   10000, 1), /* 4* тип Могами */
    (11, 'Кампон',  'Kanpon',    null,  1140,    4500, 1); /* 2* тип Такао */
    
    
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    (0,  'Кампон Ро Го',        'Kanpon Ro Go large',   2,  300,    22,  917), /* 8* Могами, Микума */
    (1,  'Кампон Ро Го малый',  'Kanpon Ro Go small',   2,  300,    22,  757), /* 2* Могами, Микума */
    (2,  'Кампон Ро Го',        'Kanpon Ro Go large',   2,  300,    22, 1107), /* 8* Судзуя, Кумано */
    
    (3,  'Кампон Ро Го',        'Kanpon Ro Go',         2,  100,    20,  970), /* 12* тип Такао */
    (4,  'Кампон Ро Го',        'Kanpon Ro Go donkey',  2,  100,    14,   61); /*  2* тип Такао */
    
    
    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (0,  null, 152000,  null), /* Могами, Микума */
    (1,  null, 152000,  null), /* Судзуя, Кумано */
    (2,  null, 132000,  null), /* тип Такао */
    (3,  null, 132000,  null); /* тип Такао */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    /* тип Могами */
    (0, 0,  8),
    (0, 1,  2),
    (1, 2,  8),
    
    /* тип Такао */
    (2, 3, 12),
    (2, 4,  2);

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* тип Могами */
    (0,  0, 4),
    (0,  1, 4),
    (0,  2, 4),
    (0,  3, 4),
    (0,  4, 4),
    
    (1,  0, 4),
    (1,  1, 4),
    (1,  2, 4),
    (1,  3, 4),
    (1,  4, 4),
    
    /* тип Такао */
    (2,  5, 4),
    (2,  6, 2),
    (2,  7, 2),
    (2,  8, 4),
    (2,  9, 4),
    (2, 10, 2),
    (2, 11, 2),
    (2, 12, 2),
    
    (3,  5, 4),
    (3,  6, 2),
    (3,  7, 2),
    (3,  8, 4),
    (3,  9, 4),
    (3, 10, 2),
    (3, 11, 2);
  
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* тип Могами */
    (50, 0, 1,  '1935-07-28', '1944-10-25'),
    (51, 0, 1,  '1935-08-29', '1942-06-06'),
    (52, 1, 1,  '1937-10-31', '1944-10-25'),
    (53, 1, 1,  '1937-10-31', '1944-11-25'),
    
    /* тип Такао */
    (40, 2, 1,  '1932-05-31', '1938-05-01'),
    (40, 3, 1,  '1939-08-21',  null),
    (41, 2, 1,  '1932-03-30', '1939-03-20'),
    (41, 3, 1,  '1939-10-30', '1944-10-23'),
    (42, 2, 1,  '1932-06-20', '1944-10-23'),
    (43, 2, 1,  '1932-06-30', '1944-10-25');



    
    
