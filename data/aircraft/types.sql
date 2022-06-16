
insert into aircraft_class
    (id, parent_id, name_ru, name_en)
    values
    (0, null,   'истребитель',                  'fighter'),         /* A */
    (1, null,   'торпедоносец',                 'torpedo bomber'),  /* B */
    (2, null,   'разведчик',                    'reconnaissance'),  /* C */
    (3, null,   'пикировщик',                   'dive bomber'),     /* D */
    (4, null,   'легкий бомбардировщик',        'light bomber'),
    (5, null,   'тяжелый бомбардировщик',       'heavy bomber'),
    (6, 2,      'гидросамолет разведчик',       'reconnaissance'),  /* E F */
    (7, 2,      'летающая лодка',               'flying boat'),     /* H */
    (8, 1,      'гидросамолет торпедоносец',    'torpedo bomber'),  /* M */
    (9, null,   'транспорт',                    'transport'),       /* L */
    (10, null,  'реактивный снаряд',            'rocket aircraft');

 
/* http://www.airwar.ru/enc/fww2/ */
insert into aircraft_types
    (id, name_ru, name_en)
    values
    (0,  'истребитель тип 0',               'Mitsubushi A6M Zero'),
    (1,  'торпедоносец тип 97',             'Nakajima B5N Kate'),
    (2,  'пикировщик тип 99',               'Aichi D3A Val'),
    (3,  'гидросамолет разведчик тип 0',    'Aichi E13A Jake'),
    (4,  'истребитель тип 96',              'Mitsubishi A5M Claude'),
    (5,  'пикировщик тип 2',                'Yokosuka D4Y Suisei (Judy)'),
    (6,  'гидросамолет разведчик тип 94',   'Kawanishi E7K Alf'),
    (7,  'гидросамолет разведчик тип 95',   'Nakajima E8N Dave'),
    (8,  'летающая лодка тип 97',           'Kawanishi H6K Mavis'),
    (9,  'гидросамолет патрульный тип 0',   'Mitsubishi F1M Pete'),
    (10, 'торпедоносец B6N',                'Nakajima B6N Tenzan'),
    (11, 'гидросамолет разведчик тип 90',   'Nakajima E4N'),
    (12, 'гидросамолет разведчик тип 96',   'Aichi E10A Hank'),
    (13, 'гидросамолет разведчик тип 98',   'Aichi E11A Laura'),
    (14, 'пикировщик тип 94',               'Aichi D1A Susie'),
    (15, 'разведчик тип 97',                'Nakajima C3N'),
    (16, 'истребитель A7M',                 'Mitsubishi A7M Reppu (Sam)'),
    (17, 'торпедоносец B7A Grace',          'Aichi B7A Ryusei'),
    (18, 'разведчик модель 11',             'Nakajima C6N Saiun (Myrt)'),
    (19, 'связной тип 3',                   'Ki-76 Stella'),
    (20, 'легкий бомбардировщик тип 93',    'Ki-3'),
    (21, 'гидросамолет разведчик тип 91',   'Yokosuka E6Y1'),
    (22, 'истребитель тип 10',              'Mitsubishi 1MF3'),
    (23, 'истребитель тип 3',               'Nakajima A1N1'),
    (24, 'гидросамолет разведчик тип 2',    'Kawanishi E151 Shiun (Norm)'),
    (25, 'гидросамолет разведчик тип 0',    'Yokosuka E14Y'),
    (26, 'гидросамолет торпедоносец M6A',   'Aichi M6A1 Seiran'),
    (27, 'гидросамолет разведчик W.33',     'Hansa Brandenburg W.33'),
    (28, 'гидросамолет разведчик тип 15',   'Nakajima E2N1'),
    (29, 'Спарроухаук',                     'Gloster Sparrowhawk'),
    (30, 'Пантер',                          'Parnall Panther'),
    (31, 'торпедоносец тип 92',             'Yokosuka B3Y'),
    (32, 'гидросамолет разведчик тип 14',   'Yokosuka E1Y'),
    (33, 'гидросамолет Йокошо',             'Yokosuka Ro-go Ko-gata'),
    (34, 'гидросамолет разведчик тип 96',   'Watanabe E9W'),
    (35, 'летающая лодка тип 91',           'Hiro H4H'),
    (36, 'гидросамолет разедчик тип 2',     'HD-26'),
    (37, 'торпедоносец тип 96',             'Mitsubishi G3M Nell'),
    (38, 'транспорт тип 96',                'Yokosuka L3Y'),
    (39, 'торпедоносец тип 1',              'Mitsubishi G4M Betty'),
    (40, 'истребитель тип 1',               'Ki-43 Hayabusa (Oscar)'),
    (41, 'палубный штурмовик тип 13',       'Mitsubishi B1M'),
    (42, 'разведчик тип 10',                'Mitsubishi C1M'),
    (43, 'палубный штурмовик тип 96',       'Yokosuka B4Y Jean'),
    (44, 'истребитель тип 90',              'Nakajima A2N'),
    (45, 'торпедоносец тип 89',             'Mitsubishi B2M'),
    (46, 'истребитель тип 95',              'Nakajima A4N'),
    (47, 'реактивный снаряд',               'Yokosuka MXY7 Okha'),
    (48, 'армейский бомбардировщик тип 99', 'Kawasaki Ki-48 Lily'),
    (49, 'гидросамолет разведчик тип 16',   'Aichi E16A Zuiun (Paul)');

