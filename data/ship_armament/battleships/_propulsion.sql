    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (36, null, 153550,  null), /* тип Ямато */
    (37, null,  64000,  null), /* Конго, Хией, Кирисима до 1929 */
    (38, null,  64000,  null), /* Харуна до 1924 */
    (39, null,  64000,  null), /* Харуна с 1928 по 1933 */
    (40, null,   null,  null), /* Харуна после 1934 */
    (41, null,   null,  null), /* Хией с 1933 по 1936 */
    (42, null,  64000,  null), /* Конго с 1931 по 1935, Кирисима с 1931 по 1934 */
    (43, null, 136000,  null), /* Конго после 1937, Хией после 1940, Кирисима после 1936 */
    (44, null,  46500,  null), /* Фусо до 1930, Ямасиро до 1930 */
    (45, null,  76500,  null), /* Фусо после 1932, Ямасиро после 1935 */
    (46, null,  56498,  null), /* Исе до 1934 */
    (47, null,  63211,  null), /* Хьюга до 1934 */
    (48, null,  80000,  null); /* Исе после 1937, Хьюга после 1936 */

insert into external_burn_boiling
    (object_id, item_id, count)
    values
    (36, 39, 12), /* тип Ямато */
    
    (37, 40, 36), /* Конго, Хией, Кирисима до 1929 */
    (41, 40, 11), /* Хией с 1933 по 1936 */
    (42, 41,  6), /* Конго с 1931 по 1935, Кирисима с 1931 по 1934 */
    (42, 42,  4), /* Конго с 1931 по 1935, Кирисима с 1931 по 1934 */
    
    (38, 40, 36), /* Харуна до 1924 */
    (39, 43,  6), /* Харуна с 1928 по 1933 */
    (39, 44, 10), /* Харуна с 1928 по 1933 */
    (40, 45,  6), /* Харуна после 1934 */
    (40, 46,  5), /* Харуна после 1934 */

    (43, 47,  8), /* Конго после 1937, Хией после 1940, Кирисима после 1936 */
    
    (44, 48, 24), /* Фусо до 1930, Ямасиро до 1930 */
    (45, 49,  6), /* Фусо после 1932, Ямасиро после 1935 */
    
    (46, 50, 24), /* Исе до 1934 */
    (47, 50, 24), /* Хьюга до 1934 */
    (48, 51,  8); /* Исе после 1937, Хьюга после 1936 */
    

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* тип Ямато */
    (36, 86,  4),
    (36, 87,  4),
    (36, 88,  4),
    (36, 89,  4),
    
    /* Конго, Хией, Кирисима до 1929 */
    (37, 90,  8),
    (37, 91,  4),
    (37, 92,  4),
    (37, 98,  4),
    
    /* Хией с 1933 по 1936 */
    (41, 90,  8),
    (41, 91,  4),
    (41, 92,  4),
    (41, 98,  4),
    
    /* Конго с 1931 по 1935, Кирисима с 1931 по 1934 */
    (42, 90,  8),
    (42, 91,  4),
    (42, 92,  4),
    (42, 98,  4),
    
    /* Харуна до 1924 */
    (38, 93,  8),
    (38, 94,  4),
    (38, 95,  4),
    
    /* Харуна с 1928 по 1933 */
    (39, 93,  8),
    (39, 94,  4),
    (39, 95,  4),
    
    /* Харуна после 1934 */
    (40, 96,  8),
    (40, 97, 16),
    (40, 99,  2),
    
    /* Конго после 1937, Хией после 1940, Кирисима после 1936 */
    (43, 96,  8),
    (43, 97, 16),
    (43, 99,  2),
    
    /* Фусо до 1930, Ямасиро до 1930 */
    (44, 100, 8),
    (44, 101, 4),
    
    /* Фусо после 1932, Ямасиро после 1935 */
    (45, 102, 8),
    (45, 103, 8),
    (45, 104, 8);
    
    /* Исе до 1934 */
    (46, 105, 2),
    (46, 106, 2),
    
    /* Хьюга до 1934 */
    (47, 107, 4),
    (47, 108, 4),
    (47, 109, 8),
    
    /* Исе после 1937, Хьюга после 1936 */
    (48, 110, 8),
    (48, 111, 8),
    (48, 112, 8);
    
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* тип Ямато */
    (10, 36, 1,  '1941-12-16', '1945-04-07'),
    (11, 36, 1,  '1942-08-05', '1944-10-24'),
    (70, 36, 1,  '1944-11-19', '1944-11-29'),
    
    /* Конго */
    ( 0, 37, 1,  '1913-08-16', '1929-09-01'),
    ( 0, 42, 1,  '1931-03-31', '1935-06-01'),
    ( 0, 43, 1,  '1937-01-08', '1944-11-21'),
    
    /* Хией */
    ( 1, 37, 1,  '1914-08-04', '1929-10-15'),
    ( 1, 41, 1,  '1933-08-13', '1936-11-26'),
    ( 1, 43, 1,  '1940-01-31', '1942-11-13'),
    
    /* Кирисима */
    ( 2, 37, 1,  '1915-04-19', '1929-01-01'),
    ( 2, 42, 1,  '1931-01-01', '1934-11-18'),
    ( 2, 43, 1,  '1936-06-08', '1942-11-15'),
    
    /* Харуна */
    ( 3, 38, 1,  '1915-04-19', '1926-07-01'),
    ( 3, 39, 1,  '1928-07-31', '1933-08-01'),
    ( 3, 40, 1,  '1934-09-30', '1945-07-28'),
    
    /* Фусо */
    ( 4, 44, 1,  '1915-11-18', '1930-04-19'),
    ( 4, 45, 1,  '1932-05-26', '1944-10-25'),
    
    /* Ямасиро */
    ( 5, 44, 1,  '1917-03-31', '1930-12-18'),
    ( 5, 45, 1,  '1935-02-03', '1944-10-25'),
    
    /* Исе */
    ( 6, 46, 1,  '1917-12-15', '1934-09-25'),
    ( 6, 48, 1,  '1937-03-23', '1945-07-28'),
    
    /* Хьюга */
    ( 7, 47, 1,  '1918-04-30', '1934-10-24'),
    ( 7, 48, 1,  '1936-09-07', '1945-07-24');
    
