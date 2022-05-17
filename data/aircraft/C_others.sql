
insert into aircraft_list
    (id, name_ru, name_en, class_id, type_id, crew, 
        mass, max_mass, engine_power, max_speed, cruise_speed,
        range, range_with_tank, ceiling, time_to_altitude, in_service)
    values
    (69, 'Пантер',              'Panther',          2, 30, 2, /* 7.7mm Lewis */
     1177, 1177,    230,    174, null,  770, null,  4.4,     3.8,   '1919-01-01'), /* Кисо 1921 (испытания) */

    (47, 'разведчик тип 97',    'Nakajima C3N1',                    2, 15, 3, /* 2* 7.7mm type 92 */
     3000, 3000,     840,   387, 300,   2262, null, 6.67,   null,   '1937-09-01'),

    (52, 'разведчик модель 11',     'Nakajima C6N1 Saiun (Myrt)',   2, 18, 3, /* 13.2mm type 3 */ /* 1 торпеда || 800кг*/
     4500, 5260,    1991,   610, 390,   2600, null, 10.4,   1.35,   '1944-01-01'),
    (53, 'истребитель модель 11',   'Nakajima C6N1-S Saiun (Myrt)', 0, 18, 2, /* 2* 20mm type 99 */
     4500, 5260,    1991,   610, 390,   2600, null, 10.4,   1.35,   '1944-10-01'),
    (54, 'разведчик модель 12',     'Nakajima C6N2 Saiun (Myrt)',   2, 18, 3, /* 13.2mm type 3 */ /* 1 торпеда || 800кг*/
     4500, 5260,    1980,   610, 390,   2600, null, 10.4,   1.35,   '1944-01-01'),

    (56, 'легкий бомбардировщик тип 93',    'Ki-3',                 4, 20, 2, /* 2* 7.7mm type 89 */ /* 500кг */
     3097, 3097,     790,   259, 230,   null, null, 7,      null,   '1934-01-01'),

    (55, 'связной тип 3',                   'Ki-76 Stella',         2, 19, 2, /* 7.7mm type 92 */ /* 2* 60 depth charges */
     1530, 1623,     310,   178, null,   750, null, 5.6,    null,   '1943-01-01');


