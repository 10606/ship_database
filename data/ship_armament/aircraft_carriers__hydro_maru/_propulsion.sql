
/* турбины */
insert into steam_turbine
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (77, 'Кампон высокого давления',    'Kampon high pressure', null,   null,   null, null), /* 2* тип Титосе */
    (78, 'Кампон низкого давления',     'Kampon low pressure',  null,   null,   null, null); /* 2* тип Титосе */
    
    
/* турбины крейсерского хода */
insert into steam_turbine_cruise
    (id, name_ru, name_en, in_service, rpm, power, stages)
    values
    (79, 'Кампон',  'Kampon',   null,  null,    3000, null); /* 2* тип Титосе */
    
 
    
/* котлы */
insert into boiling_types
    (id, name_ru, name_en, value, temperature, pressure, heating_surface)
    values
    (31, 'Кампон Ро Го',    'Kampon Ro Go',     2,  280, 22, null); /* 4* тип Титосе */
    
    
    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (24, null, 44000,  null); /* тип Титосе */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    (24, 31, 4); /* тип Титосе */

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* тип Титосе */
    (24, 77, 2),
    (24, 78, 2),
    (24, 79, 2);
  
    
    
/* дизеля */
insert into diesel_list
    (id, mass, max_power, in_service ,
        name_ru, name_en,
        cilinder_diameter, cilinder_stroke, cilinder_count,
        volume_of_engine, tact_value)
    values
    (25, null, 6400, null, 'Кампон No 11 модель 10',    'Kampon No 11 model 10', null, null, 10, null, 2), /* 2* тип Титосе */
    (26, null, 3800, null, 'Кампон No 11 модель 8',     'Kampon No 11 model 8',  null, null,  8, null, 2); /* 4* Мидзухо */
    
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* тип Титосе */
    (79, 24, 1, '1938-07-25', '1944-10-25'),
    (79, 25, 2, '1938-07-25', '1944-10-25'),
    
    (80, 24, 1, '1938-12-15', '1944-10-25'),
    (80, 25, 2, '1938-12-15', '1944-10-25');
    
    
