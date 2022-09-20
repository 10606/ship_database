
insert into gun_class
    (id, parent_id, name_ru, name_en)
    values
    ( 0, null,  'орудие',                           'gun'),
    ( 1, null,  'зенитное орудие',                  'anti aircraft gun'),
    ( 2, null,  'пулемет',                          'machine gun'),
    
    ( 3, null,  'торпедный аппарат',                'torpedo tube'),
    (10, 3,     'подводный торпедный аппарат',      'submerged torpedo tube'),
    (11, 3,     'фиксированный торпедный аппарат',  'fixed torpedo tube'),
    ( 5, null,  'бомбомет',                         'depth charge projector'),
    (12, 5,     'бомбосбрасыватель',                'depth charge projector'),
    (15, null,  'бомбоскат',                        'depth charge rails'),
    
    ( 4, null,  'глубинные бомбы',                  'depth charge'),
    ( 6, null,  'мина',                             'mine'),
    ( 7, null,  'НУРС',                             'rocket launcher'),
    
    ( 8, null,  'РЛС',                              'radar'),
    ( 9, null,  'гидролокатор',                     'hydro locator'),
    (13, null,  'прожектор',                        'searchlights'),
    (14, 8,     'авиационный РЛС',                  'aircraft radar');

    
insert into gun_list
    (id, name_ru, name_en, caliber, length, class_id, rate_of_fire, effective_range, mass, build_cnt, in_service)
    values
    (0, 'тип 3',        'type 3',       120, 45, 0, 5.5,    16000,   3240, null,    '1919-01-01'),
    (1, 'тип 3',        'type 3',       127, 50, 0, 7.5,    18400,   4205,  700,    '1928-01-01'),
    (2, 'тип 3',        'type 3',       140, 50, 0, 7.0,    19700,   5650, null,    '1914-01-01'),
    (3, 'тип 41',       'type 41',      152, 50, 0, 6.0,    21000,   8360, null,    '1913-01-01'),
    (4, 'тип 3',        'type 3',       155, 60, 0, 5.0,    27400,  12700,  80,     '1935-01-01'),
    (5, 'тип 3',        'type 3',       200, 50, 0, 4.0,    29000,  17900, 300,     '1924-01-01'),
    (32,'тип 3 No 2',   'type 3 No 2',  203, 50, 0, 4.0,    29400,  18700, 300,     '1931-01-01'),
    (6, 'тип 41',       'type 41',      356, 45, 0, 2.0,    35450,  86000, 100,     '1913-01-01'),
    (7, 'тип 3',        'type 3',       410, 45, 0, 2.5,    30200, 102000,  40,     '1920-01-01'),
    (8, 'тип 94',       'type 94',      460, 45, 0, 1.75,   25000, 147300,  27,     '1940-01-01');


insert into gun_list
    (id, name_ru, name_en, caliber, length, class_id, rate_of_fire, effective_range, mass, build_cnt, in_service)
    values
    ( 9, 'Эрликон',             'Oerlikon',                  20, 70,    1,  285,  3000,     68,   null, '1937-01-01'),
    (10, 'тип 98',              'type 98',                   20, 70,    1,  300,  3500,    373,   2500, '1938-01-01'),
    (11, 'тип 2 (Flak 38)',     'type 2 (Flak 38)',          20, 70,    1,  480,  3700,    550,   null, '1942-01-01'),
    (41, 'тип 99 (авиационная)','type 99 (aviation)',        20, 55,    1,  530,  1000,   23.2,  35000, '1939-01-01'),
    (12, 'тип 96',              'type 96',                   25, 60,    1,  240,  3000,    185,  33000, '1935-01-01'),
    (13, 'тип 91 (QF 2)',       'type 91 (QF 2 pounder)',    40, 39.37, 1,  200,  4000,    390,    785, '1925-01-01'),
    (34, 'тип 3',               'type 3',                   76.2,40,    1,   13,  5400,   2400,   null, '1897-01-01'),
    (42, 'тип 3',               'type 3',                   76.2,40,    1,   13,  5400,   2400,   null, '1916-01-01'),
    (14, 'тип 11',              'type 11',                  76.2,40,    1, null,  6600,   2000,     44, '1926-01-01'),
    (15, 'тип 88',              'type 88',                  76.2,44,    1,   15,  9000,   2450,   2000, '1932-01-01'),
    (33, 'тип 98',              'type 98',                  76.2,60,    1,   12,  9100,   1320,     28, '1941-01-01'),
    (16, 'тип 4',               'type 4',                    75, 56.4,  1,   10, 10000,   5850,     70, '1943-01-01'),
    (17, 'тип 99',              'type 99',                   88, 45,    1,   15, 10000,   6500,   1000, '1939-01-01'),
    (18, 'тип 14',              'type 14',                  100, 40,    1, null, 10000,   5194,     70, '1929-01-01'),
    (19, 'тип 98',              'type 98',                  100, 65,    1,   21, 11000,   3000,    169, '1938-01-01'),
    (20, 'тип 10',              'type 10',                  120, 45,    1,   11,  9000,   8500,   2000, '1927-01-01'),
    (21, 'тип 3',               'type 3',                   120, 56,    1,   20, 12000,  19800,    150, '1943-01-01'),
    (22, 'тип 89',              'type 89',                  127, 40,    1,   10,  9400,   3100,   1500, '1932-01-01'),
    (23, 'тип 5',               'type 5',                   150, 60,    1,   10, 14000,   9200,      2, '1945-05-01');

    
/* НУРС */
insert into gun_list
    (id, name_ru, name_en, caliber, length, class_id, rate_of_fire, effective_range, mass, build_cnt, in_service)
    values
    (44, 'пусковые установки НУРС', 'rocket launcher',  120, null,  7,  null,  null, null,  null, null);

    
/*
 Te калибр < 11мм (Te-4)
 Ho               (12.7мм Ho-103) (20мм Ho-5)
*/
insert into gun_list
    (id, name_ru,           name_en, caliber, length, class_id, rate_of_fire, effective_range, mass, build_cnt, in_service)
    values
    (24, 'тип 92 (тяжелый)',                'type 92 (heavy)',   7.7, 93.6,  2,  475,  800,  55.3,  45000,  '1925-01-01'),
    (43, 'тип RU',                          'type RU',           7.7, 86.6,  2,  600, 1000,  11.8,   null,  '1920-01-01'), /*основной, сменил 6.5мм тип 3 (26)*/
    (38, 'тип 92 (Lewis)',                  'type 92 (Lewis)',   7.7, 80.5,  2,  600,  800,  13.0,   null,  '1932-01-01'), /*основной, сменил 7.7мм тип RU*/
    (25, 'тип 97 (танковый)',               'type 97 (tank)',    7.7, 90.9,  2,  500,  450,  12.4,  18000,  '1937-01-01'),
    (37, 'тип 97 (авиационный, Максим)',    'type 97 (aviation)',7.7, 78,    2,  900,  600,  12.6,   null,  '1937-01-01'),
    (26, 'тип 3',                           'type 3',            6.5, 113.4, 2,  425,  850,  55.0,   null,  '1915-01-01'),
    (27, 'тип 96',                          'type 96',           6.5, 84.6,  2,  550,  800,   9.0,  41000,  '1936-01-01'),
    (28, 'тип 93',                          'type 93',          13.2, 76,    2,  450, 1500,    42,   null,  '1932-01-01'),
    (39, 'тип 2 (авиационный)',             'HO-103 (avaition)',12.7, 63,    2,  983,  null,   23,   null,  '1941-01-01'),
    (40, 'тип 3 (авиационный)',             'type 3 (aviation)',13.2, 68,    2,  800,  900,    28,   null,  '1943-01-01'),
    (29, 'тип 99',                          'type 99',           7.7, 71.4,  2,  800,  800,  10.4,  53000,  '1939-01-01'),
    (30, 'тип 11',                          'type 11',           6.5, 57.5,  2,  500,  800,  10.2,  29000,  '1922-01-01'),
    (31, 'тип 92 (авиационный)',            'type 92 (aviation)',7.7, 86.5,  2,  600,  800,   8.5,   null,  '1932-01-01'),
    (35, 'тип 89 (энергия отдачи)',         'type 89 (fixed)',   7.7, 78,    2,  800,  null, 12.7,   null,   null), /*Ki-27 Ki-43 Ki-44 Ki-30 Ki-51 Ki-32 Te-Ke (type 97)*/
    (36, 'тип 89 (отвод газов)',            'type 89 (flixeble)',7.7, 78,    2, 1400,  null,   28,   null,   null); /*Ki-21 Ki-67 Ki-49 Ki-30 Ki-51 Ki-32 Ki-9*/


