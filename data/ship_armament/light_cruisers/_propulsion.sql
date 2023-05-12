
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (17,  'Кампон высокого давления',                'Kampon high pressure',              null,  3632,   9250, 3), /* 4* Оедо */
    (18,  'Кампон среднего давления',                'Kampon intermediate pressure',      null,  3385,   9150, 6), /* 4* Оедо */
    (19,  'Кампон низкого давления',                 'Kampon low pressure',               null,  2327,   9100, 5); /* 4* Оедо */
    
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (20,  'Кампон', 'Kampon',    null,  6230,   null, 6); /* 4* Оедо */
    
    
/* турбины заднего хода */
insert into steam_turbine_reverse
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (21,  'Кампон', 'Kampon',    null,  1471,   6875, 1); /* 4* Оедо */
    
    
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    (8,  'Кампон Ро Го',    'Kampon Ro Go',     2,  350,    30,   981); /* 6* Оедо */
    
    
    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (6,  null, 110000,  null); /* Оедо */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    /* Оедо */
    (6, 8,  6);

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* Оедо */
    (6, 17, 4),
    (6, 18, 4),
    (6, 19, 4),
    (6, 20, 4),
    (6, 21, 4);
  
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* Оедо */
    (33, 6, 1,  '1943-02-28', '1945-07-28');

