
/* http://www.navweaps.com/Weapons/WTJAP_PreWWII.php 
   http://www.navweaps.com/Weapons/WTJAP_WWII.php */
insert into torpedo_list
    (id, name_ru,                       name_en,                    caliber, length, speed, range, mass, mass_ex, in_service)
    values
    ( 0, 'тип 6',                       'type 6',                        533,  6840, 37,     7000,  1432,  203, '1917-10-06'), /*подводные лодки RO*/
    ( 1, 'тип 8 No 1',                  'type 8 No 1',                   610,  8415, 43,     6200,  2215,  300, '1920-01-01'), /*эсминцы, легкие крейсера*/
    ( 2, 'тип 90',                      'type 90',                       610,  8550, 46,     7000,  2540,  390, '1933-01-01'), /*Фубуки, тяжелые крейсера*/
    ( 3, 'тип 89',                      'type 89',                       533,  7163, 45,     5500,  1668,  295, '1931-01-01'), /*подводные лодки*/
    ( 4, 'тип 93 кислородная',          'type 93 long lance',            610,  9000, 48,    20000,  2700,  490, '1933-01-01'),
    ( 5, 'тип 95 кислородная',          'type 95',                       533,  9000, 48,     9000,  1665,  405, '1938-01-01'),
    ( 7, 'тип 93 мод 3 кислородная',    'type 93 mod 3',                 610,  9000, 48,    15000,  3000,  780, '1943-01-01'),
    ( 6, 'тип 95 мод 2 кислородная',    'type 95 mod 2',                 533,  9000, 48,     5500,  1730,  550, '1944-01-01'),
    ( 8, 'тип 97 кислородная',          'type 97',                       450,  5600, 44,     3200,   980,  350, '1939-01-01'),
    ( 9, 'Кайтен тип 1',                'Kaiten type 1',                1000, 14750, 30,    39000,  9300, 1550, '1944-08-01'),
    (10, 'Кайтен тип 2',                'Kaiten type 2',                1350, 16500, 40,    40000, 18370, 1500, '1944-09-01'),
    (11, 'Кайтен тип 4',                'Kaiten type 4',                1350, 16500, 20,    38000, 18170, 1800, '1945-01-01'),
    (12, 'Кайтен тип 10',               'Kaiten type 10',                700,  9000,  7,     3500,  3000,  300, '1945-08-01'),
    (13, 'тип 91 мод 1 авиационная',    'type 91 mod 1 aviation',        450,  5270, 42,     2000,   784,  150, '1933-01-01'),
    (14, 'тип 91 мод 2 авиационная',    'type 91 mod 2 aviation',        450,  5486, 42,     2000,   935,  205, '1941-01-01'),
    (15, 'тип 91 мод 3 авиационная',    'type 91 mod 3 aviation',        450,  5486, 42,     2000,   849,  240, '1942-01-01'),
    (16, 'тип 92 мод 1 электрическая',  'type 92 mod 1 electric',        533,  7150, 30,     7000,  1720,  300, '1934-01-01'),
    (17, 'тип 94 мод 1 авиационная',    'type 94 mod 1 aviation',        533,  null, 48,     3000,  null, null,  null),
    (18, 'тип 94 мод 2 авиационная',    'type 94 mod 2 aviation',        450,  5283, 48,     3000,   848,  150,  null),
    (19, 'тип 96 кислородная',          'type 96',                       533,  null, 48,     4500,  1730,  405, '1942-01-01'),
    (20, 'тип 98 кислородная',          'type 98',                       450,  5600, 42,     3200,   950,  350, '1942-01-01'),
    (21, 'тип 2',                       'type 2',                        450,  5600, 39,     3000,   984,  350, '1944-01-01'),
    (22, 'тип 4 марк 2',                'type 4 mark 2',                 450,  5275, 42,     1500,   984,  313, '1945-01-01'),
    (23, 'тип 4 марк 4',                'type 4 mark 4',                 450,  5715, 42,     1500,  1104,  417, '1945-01-01'),
    (24, 'тип 5',                       'type 5',                        280,  3800, 20,     1500,   230,   60,  null),
    
    (25, 'SHU тип 84',                  'SHU 84 Shiki Nen Shiki gyorai', 356,  4496, 23,      400,   280,   20, '1884-01-01'),
    (26, 'SHU тип 88',                  'SHU 88 Shiki Nen Shiki gyorai', 356,  4620, 24,      600,   332,   57, '1888-01-01'),
    (27, 'HO тип 26',                   'HO 26 Shiki',                   356,  4460, 26,      600,   338,   49, '1893-01-01'),
    (28, 'HO тип 30',                   'HO type 30',                    356,  4560, 24,      800,   338,   50, '1897-01-01'),
    (29, 'HO тип 32',                   'HO type 32',                    356,  4560, 15,     2500,   338,   50, '1899-01-01'), /*торпедные катера*/
    (30, 'HO тип 30',                   'HO type 30',                    450,  4950, 27,     1000,   532,  100, '1897-01-01'), /*дредноуты*/
    (31, 'HO тип 32',                   'HO type 32',                    450,  4950, 15,     3000,   541,   90, '1899-01-01'), /*дредноуты*/
    (32, 'тип 37',                      'type 37',                       450,  4950, 28,     1000,   541,   90, '1904-01-01'),
    (33, 'HO тип 38 No 1',              'HO type 38 No 1',               450,  5150, 27,     1100,   617,  100, '1905-01-01'),
    (34, 'HO тип 38 No 2 А',            'HO type 38 No 2 A',             450,  5090, 31,     1100,   614,   95, '1905-01-01'),
    (35, 'HO тип 38 No 2 Б',            'HO type 38 No 2 B',             450,  5090, 40,     1100,   614,   95, '1905-01-01'),
    (36, 'HO тип 42',                   'HO type 42',                    450,  5150, 40,     1000,   660,   95, '1909-01-01'),
    (37, 'HO тип 43',                   'HO type 43',                    450,  5190, 26,     5000,   663,   95, '1910-01-01'),
    (38, 'тип 44 No 1',                 'type 44 No 1',                  450,  5390, 36,     4000,   719,  110, '1911-01-01'),
    (39, 'тип 44 No 2',                 'type 44 No 2',                  450,  5390, 26,     8000,   750,  110, '1911-01-01'),
    (40, 'тип 43',                      'type 43',                       533,  6390, 27,     8000,  1187,  130, '1910-01-01'),
    (41, 'тип 44 No 1',                 'type 44 No 1',                  533,  6700, 35,     7000,  1325,  160, '1911-01-01'),
    (42, 'тип 44 No 2',                 'type 44 No 2',                  533,  6700, 35,     7000,  1293,  160, '1911-01-01'),
    (43, 'тип 8 No 2',                  'type 8 No 2',                   610,  8415, 38,    10000,  2362,  346, '1920-01-01'), /*эсминцы, легкие крейсера*/
    (44, 'тип 91 мод 3 улучшенный',     'type 91 mod 3 improved',        450,  5275, 43,     2000,   849,  240, '1943-01-01'),
    (45, 'тип 91 мод 3 усиленный',      'type 91 mod 3 strong',          450,  5275, 43,     1500,   849,  240, '1944-01-01'),
    (46, 'тип 91 мод 4',                'type 91 mod 4',                 450,  5275, 43,     1500,   921,  308, '1944-01-01'),
    (47, 'тип 91 мод 7',                'type 91 mod 7',                 450,  5715, 43,     1500,  1052,  420, '1944-01-01');



insert into torpedo_tubes
    (id, name_ru,           name_en, class_id, caliber, tubes_count, in_service)
    values
    ( 0, 'тип 44',          'type 44',          3,  450, 2,  null), /*Исокадзе (1916)*/
    (24, 'тип 43',          'type 44',          3,  533, 2,  null), /* название точно не известно */ /*Конго*/
    ( 1, 'тип 6',           'type 6',           3,  533, 2, '1917-01-01'), /*Кума
                                                                             Катори
                                                                             Кавакадзе
                                                                             Минекадзе
                                                                             Моми
                                                                             Вакатаке
                                                                             Тидори*/
    ( 2, 'тип 6',           'type 6',           3,  533, 3, '1917-01-01'), /*Тенрю*/
    ( 3, 'тип 10',          'type 10',          3,  533, 2, '1921-01-01'), /*Камикадзе*/
    ( 4, 'тип 94',          'type 94',          3,  533, 3,  null), /*Отори*/
    ( 5, 'тип 93',          'type 93',          3,  533, 2, '1933-01-01'),
    ( 6, 'тип 8',           'type 8',           3,  610, 2, '1918-01-01'), /*Нагара Сендай Юбари*/
    ( 7, 'тип 12',          'type 12',          3,  610, 2, '1923-01-01'),
    ( 8, 'тип 89',          'type 89',          3,  610, 2, '1929-01-01'), /*Такао*/
    ( 9, 'тип 12',          'type 12',          3,  610, 3, '1923-01-01'), /*Муцуки Фубуки*/
    (10, 'тип 90 мод 1',    'type 90 mod 1',    3,  610, 3, '1930-01-01'), /*Могами Тоне*/
    (11, 'тип 90 мод 2',    'type 90 mod 2',    3,  610, 3, '1930-01-01'), /*Хацухару */
    (12, 'тип 92 мод 1',    'type 92 mod 1',    3,  610, 4, '1934-01-01'), /*Меко x2 [36 39] x4 [41 44] x2 44
                                                                             Аоба x2 15.11.40
                                                                             Фурутака [
                                                                             Такао (кроме Текай) [
                                                                             Исудзу [
                                                                             Дзинцу [
                                                                             Нака [
                                                                             Агано*/
    (13, 'тип 92 мод 2',    'type 92 mod 2',    3,  610, 4, '1934-01-01'), /*Сирацую
                                                                             Асасио
                                                                             Кагеро
                                                                             Югумо*/
    (14, 'тип 92 мод 3',    'type 92 mod 3',    3,  610, 4, '1940-01-01'), /*Китаками [  Ои [ */
    (15, 'тип 92 мод 4',    'type 92 mod 4',    3,  610, 4, '1940-01-01'), /*Акидзуки Мацу*/
    (16, 'тип 0',           'type 0',           3,  610, 5, '1940-01-01'), /*Симакадзе*/
    
    (23, 'тип 44',          'type 44',         10,  533, 1,  null), /* название точно не известно */ /*Конго Икома*/
    (25, 'тип 6',           'type 6',          10,  533, 1, '1917-01-01'), /* название точно не известно */
    (17, 'тип 10',          'type 10',         10,  533, 1, '1921-01-01'), /*RO-57 RO-60 I-51 */
    (18, 'тип 15',          'type 15',         10,  533, 1,  null), /*I-152 I-61 I-1*/
    (19, 'тип 88',          'type 88',         10,  533, 1,  null), /*RO-33 I-165 I-168 I-7 I-9*/
    (20, 'тип 95',          'type 95',         10,  533, 1,  null),
    
    (21, 'тип 12',          'type 12',         11,  610, 3,  null), /*Меко x4 [32 34]*/
    (22, 'тип 12',          'type 12',         11,  610, 2,  null); /*Аоба x6 [20.09.27 38] Фурутака*/


