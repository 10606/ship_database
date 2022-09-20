
/* http://michaelhiske.de/Allierte/USA/OrdnancePamphlets/OP1507/Chapter01/Section03.htm */
insert into mine_list
    (id, name_ru,                       name_en,              class_id, size,  mass, mass_ex, in_service)
    values 
    (0,  'тип 98 противодесантная',     'JE antiboat',              6,   510,   48.3,    21,  null),
    (1,  'JG противодесантная',         'JG antiboat',              6,   360,     27,    10,  null),
    (2,  'тип 88',                      'type 88 JA',               6,   861,    960,   180,  null),
    (3,  'тип 93',                      'type 93 JB',               6,   863,    700,   100,  null),
    (4,  'тип 3 сбрасываемая',          'type 3 aircraft',          6,  null,    640,    80,  null),
    (5,  'марк 5',                      'mark 5 JC',                6,   830,    206,    80,  null),
    (6,  'марк 2',                      'mark 2 JD',                6,   203,    15.5,    6,  null),
    (7,  'тип 94',                      'type 94 JF',               6,   721,    263,    86,  null),
    (8,  'марк 6',                      'mark 6 JH',                6,  1051,    453,   217,  null),
    (9,  'К-2',                         'K-2 JI',                   6,  1004,    136,    56,  null),
    (10, 'марк 10',                     'mark 10 JJ',               6,   610,    272,   109,  null),
    (11, 'тип 96 противолодочная',      'type 96 grapefruit',       6,   510,    113,    60,  null),
    (12, 'авокадо',                     'avocado',                  6,   825,    204,    77,  null),
    (13, 'банан',                       'banana',                   6,   851,   null,   125,  null),
    (14, 'тип 3 для подводных лодок',   'type 3 pear',              6,   902,    408,   200,  null),
    (15, 'тип 92',                      'type 92 quince',           6,  1242,    748,   499,  null);

/* http://michaelhiske.de/Allierte/USA/OrdnancePamphlets/OP1507/Chapter02/Section02.htm */
insert into mine_list
    (id, name_ru,                       name_en,              class_id, size,  mass, mass_ex, in_service)
    values 
    (16, 'тип 95',                      'type 95',                  4,   451,    160,   100,  '1940-01-01'),
    (17, 'тип 95 мод 1',                'type 95 mod 1',            4,   451,    215,   147,  null),
    (18, 'тип 95 мод 2',                'type 95 mod 2',            4,   451,    170,   110,  null),
    (19, 'тип 88',                      'type 88',                  4,   452,    237,   148,  '1930-01-01'),
    (20, 'тип 91',                      'type 91',                  4,   452,    160,   100,  '1935-01-01'),
    (21, 'тип 93',                      'type 93',                  4,  null,    200,   null, null),
    (22, 'тип 96',                      'type 96',                  4,  null,    170,   110,  null),
    (23, 'тип 2',                       'type 2',                   4,   446,    222,   162,  '1943-01-01'), /*Кагеро*/
    (24, 'тип 2 мод 2',                 'type 2 mod 2',             4,   446,    160,   100,  null);


insert into throwers
    (id, name_ru,           name_en, class_id, caliber, tubes_count, in_service)
    values
    ( 0, 'тип 94',                  'type 94',          5, null, 2, '1934-01-01'), 
    ( 1, 'тип 81',                  'type 81',          5, null, 1,  null),
    ( 5, 'тип 88',                  'type 88',          5, null, 1,  null),
    ( 6, 'тип 3',                   'type 3',           5, null, 1,  null),
    ( 2,  null,                      null,             15, null, 1,  null),
    ( 3, 'тип 3 (гидравлический)',  'type 3',          12, null, 1,  null),
    ( 4, 'тип 1 (ручной)',          'type 1',          12, null, 1,  null);

