
/*
бомбы 
    250кг тип 99
    60кг тип 97
    
*/
insert into bombs
    (id, name_ru, name_en, mass, mass_ex, in_service)
    values
    ( 0, 'No 6',                        'No 6',                      63.5,   null,   null), /* устарела в ходе войны */
    ( 1, 'тип 97 No 6',                 'type 97 No 6',              56,     23,     null), /* A6M7 */
    ( 2, 'тип 2 No 6 мод 5',            'type 2 No 6 mod 5',         60,     null,   null),
    ( 3, 'No 25',                       'No 25',                    250,    150,     null), /* разработана в 38; в начале войны производство прекращено */
    ( 4, 'тип 98 No 25',                'type 98 No 25',            241,     96,     '1938-01-01'), /* использовалась при Мидуэе */
    ( 5, 'No 80',                       'No 80',                    800,    382,     '1938-01-01'), /* использовалась при Мидуэе */
    ( 6, 'тип 99 No 25',                'type 99 No 25',            250,     60,     '1939-01-01'), /* A6M7 */
    ( 7, 'тип 2 No 50 мод 1',           'type 2 No 50 mod 1',       500,     67,     null),
    ( 8, 'No 80 мод 1',                 'No 80 mod 1',              830,    350,     null),
    ( 9, 'No 3 мод 2',                  'No 3 mod 2',                32,     null,   null), /* устарела в начале войны */
    (10, 'No 6 мод 2',                  'No 6 mod 2',                63,     29,     null), /* проиводилась до 1940-1941 */
    (11, 'No 25 мод 2',                 'No 25 mod 2',              253,    103,     null), /* использовалась при Мидуэе */
    (12, 'No 50 мод 2',                 'No 50 mod 2',              490,    207.5,   null),
    (13, 'тип 99 No 6 марк 2',          'type 99 No 6 mk 2',         64,     39,     null),
    (14, 'тип 1 No 25 марк 2 мод 1',    'type 1 No 25 mk 2 mod 1',  259,    144,     null),
    (15, 'тип 99 No 80 марк 5',         'type 99 No 80 mk 5',       744,     30,     '1941-01-01'),
    (16, 'тип 2 No 80 марк 5',          'type 2 No 80 mk 5',        800,     45,     '1942-01-01'),
    (17, 'тип 3 No 150 марк 5',         'type 3 No 150 mk 5',      1500,     91,     '1944-01-01'),
    (18, 'тип 3 No 25 марк 8 мод 1',    'type 3 No 25 mk 8 mod 1',  294,    119,     null),
    (19, 'тип 3 No 6 марк 23 мод 1',    'type 3 No 6 mk 23 mod 1',   65,     23,     null),
    (20, 'тип 3 No 25 марк 31 мод 1',   'type 3 No 25 mk 31 mod 1', 171,     79,     null),
    (21, 'тип 3 No 80 марк 31 мод 1',   'type 3 No 80 mk 31 mod 1', 718,    418,     null);
    
