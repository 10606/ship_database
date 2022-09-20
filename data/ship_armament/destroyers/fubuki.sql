
/*
     155 - Фубуки   
     156 - Сираюки  
     157 - Хацуюки  
     158 - Миюки    
     159 - Муракумо 
     160 - Синономе 
     161 - Усугумо  
     162 - Сиракумо 
     163 - Исонами  
     164 - Уранами  

     165 - Аянами   
     166 - Сикинами 
     167 - Асагири  
     168 - Югири    
     169 - Амагири  
     170 - Сагири   
     171 - Оборо    
     172 - Акебоно  
     173 - Садзанами
     174 - Усио     

     175 - Акацуки  
     176 - Инадзума 
     177 - Икадзути 
     178 - Хибики   
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (155, '1928-08-10', '1942-10-11',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (156, '1928-12-18', '1943-03-03',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (157, '1929-03-30', '1943-07-17',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (158, '1929-06-29', '1934-06-29',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (159, '1929-05-10', '1942-10-12',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (160, '1928-07-25', '1937-01-01',   1750, 2070,     118.41, 10.36, 3.2,    197,           35, 14, 9300),
    (160, '1937-12-31', '1941-12-17',   1750, 2070,     118.41, 10.36, 3.2,    219,           35, 14, 9300),
    (161, '1928-07-26', '1944-07-07',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (162, '1928-07-28', '1944-03-16',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (163, '1928-06-30', '1943-04-09',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (164, '1929-06-30', '1944-10-26',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),

    (165, '1930-04-30', '1942-11-15',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (166, '1929-12-24', '1944-09-12',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (167, '1930-06-30', '1942-08-28',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (168, '1930-12-03', '1943-11-25',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (169, '1930-11-10', '1944-04-23',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (170, '1931-01-30', '1941-12-24',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (171, '1931-10-31', '1942-10-16',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (172, '1931-07-31', '1944-11-13',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (173, '1932-05-19', '1944-01-14',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (174, '1931-11-14',  null,          1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),

    (175, '1932-11-30', '1942-11-13',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (176, '1932-11-15', '1944-05-14',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (177, '1932-08-15', '1944-04-13',   1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300),
    (178, '1932-03-31',  null,          1750, 2070,     118.41, 10.36, 3.2,    197 /* 219 */, 35, 14, 9300);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 155, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */

    (1, 156, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (1, 156, '1942-12-10', '1942-12-20', 'Куре'), /* неточная дата окончания */

    (7, 157, '1942-10-01', '1942-10-01', 'Трук, поврежден близкими разрывами бомб'),
    (1, 157, '1942-10-01', '1942-10-07', 'Шортленд'),
    (0, 157, '1942-12-10', '1942-12-31', 'Куре'),
    (7, 157, '1943-02-17', '1943-02-17', 'Кавиенг, наскочил на рифы'),
    (1, 157, '1943-02-21', '1943-02-25', 'Рабаул'),
    (1, 157, '1943-03-21', '1943-04-25', 'Куре'),
    (7, 157, '1943-07-05', '1943-07-06', 'сражение в заливе Кула, 3 попадания неразорвавшихся снарядов'),
    (1, 157, '1943-07-08', '1943-07-16', 'Рабаул'),

    (1, 159, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */

    (0, 160, '1937-01-01', '1937-12-31', ''), /* неточные даты (1937 год) */

    (7, 161, '1940-08-15', '1940-08-15', 'у поборежья Южного Китая, подорвался на мине'),
    (1, 161, '1941-02-16', '1942-07-20', 'Майдзуру'),
    (0, 161, '1943-02-10', '1943-02-26', 'Куре'),
    (0, 161, '1943-04-16', '1943-05-10', 'Оминато'),
    (0, 161, '1943-11-25', '1944-02-01', 'Куре'),
    (0, 161, '1944-06-21', '1944-06-28', 'Куре'),

    (1, 162, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (7, 162, '1942-08-26', '1942-08-28', 'сопровождение транспортов к Гуадалканалу, поврежден авиацией'),
    (1, 162, '1942-08-30', '1942-09-06', 'Шортленд'),
    (1, 162, '1942-09-09', '1942-09-30', 'Трук'),
    (1, 162, '1942-10-08', '1942-12-31', 'Куре'),
    (0, 162, '1943-01-01', '1943-03-31', 'Осака'),
    (7, 162, '1943-06-06', '1943-06-06', 'столкновение с Нумакадзе'),
    (1, 162, '1943-06-07', '1943-06-12', 'Парамушир'),
    (1, 162, '1943-06-16', '1943-07-19', 'Оминато'),
    (0, 162, '1943-07-19', '1943-09-22', 'Хакодате'),

    (1, 163, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (7, 163, '1942-06-09', '1942-06-09', 'столкновение с Уранами'),
    (1, 163, '1942-06-17', '1942-07-23', 'Йокосука'),
    (0, 163, '1943-01-13', '1943-01-31', 'Куре'),

    (1, 164, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (7, 164, '1942-06-09', '1942-06-09', 'столкновение с Исонами'),
    (1, 164, '1942-06-22', '1942-07-02', 'Куре'),
    (0, 164, '1943-01-22', '1943-02-06', 'Йокосука'),
    (0, 164, '1943-04-26', '1943-08-13', 'Сурабая'),
    (1, 164, '1943-12-25', '1944-01-03', 'Сингапур'),
    (1, 164, '1944-02-12', '1944-02-25', 'Сингапур'),
    (0, 164, '1944-07-02', '1944-08-04', 'Сингапур'),
    (0, 164, '1944-09-06', '1944-09-19', 'Сингапур, установка радаров'),
    (1, 164, '1944-10-11', '1944-10-15', 'Сингапур, обслуживание радара тип 22'),

    (7, 165, '1942-02-17', '1942-02-17', 'Анамбские строва, подрезал рифы'),
    (1, 165, '1942-02-20', '1942-02-21', 'Камрань'),
    (1, 165, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */

    (7, 166, '1942-02-28', '1942-03-01', 'бой в Зондском проливе, поврежден близкими промахами'),
    (1, 166, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (0, 166, '1942-12-27', '1943-01-03', 'Куре'),
    (1, 166, '1943-03-17', '1943-03-31', 'Куре'), /* неточная дата окончания */
    (1, 166, '1943-09-29', '1943-10-09', 'Сингапур'),
    (0, 166, '1944-03-18', '1944-04-26', 'Сингапур'),
    (0, 166, '1944-07-22', '1944-07-29', 'Сингапур'),

    (1, 167, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */

    (7, 168, '1942-08-26', '1942-08-28', 'Гуадалканал, попадание бомбы'),
    (6, 168, '1942-08-30', '1942-08-31', 'Шортленд'),
    (1, 168, '1942-09-01', '1942-10-06', 'Трук'),
    (0, 168, '1942-10-06', '1943-01-15', 'Куре'),
    (7, 168, '1943-05-16', '1943-05-16', 'у острова Муссау (с-з Кавиенга), торпедирован SS-208 Grayback'),
    (1, 168, '1943-05-18', '1943-06-30', 'Рабаул'), /* неточная дата окончания */
    (0, 168, '1943-08-07', '1943-10-30', 'Куре'), /* неточная дата окончания */

    (1, 169, '1942-04-22', '1942-04-30', 'Куре'), /* неточная дата окончания */
    (0, 169, '1943-01-13', '1943-03-10', 'Куре'),
    (1, 169, '1943-04-12', '1943-04-20', 'Трук'),
    (0, 169, '1943-07-07', '1943-07-31', 'Рабаул'),
    (0, 169, '1943-08-10', '1943-08-30', 'Трук'),
    (1, 169, '1943-12-15', '1943-12-20', 'Трук'),
    (0, 169, '1944-01-15', '1944-02-22', 'Куре'),

    (0, 170, '1937-01-01', '1937-12-31', ''), /* неточные даты (1937 год) */

    (1, 171, '1942-07-01', '1942-07-13', 'Йокосука'),

    (7, 172, '1941-12-01', '1941-12-01', 'повреждение винта'),
    (1, 172, '1941-12-01', '1941-12-05', 'винт'),
    (1, 172, '1942-03-25', '1942-04-23', 'Йокосука'),
    (1, 172, '1942-07-06', '1942-07-20', 'Йокосука'),
    (0, 172, '1943-01-10', '1943-01-31', 'Йокосука'),
    (0, 172, '1943-09-12', '1943-10-11', 'Йокосука'),
    (0, 172, '1944-02-13', '1944-03-28', 'Йокогама'),
    (0, 172, '1944-08-12', '1944-08-22', 'Куре'),

    (1, 173, '1942-03-26', '1942-04-17', 'Йокосука'),
    (1, 173, '1942-10-16', '1942-10-23', 'Йокосука'),
    (0, 173, '1942-12-31', '1943-01-31', 'Йокосука'),
    (1, 173, '1943-04-23', '1943-06-12', 'Куре'),
    (0, 173, '1943-09-12', '1943-09-20', 'Йокосука'),

    (1, 174, '1942-03-25', '1942-04-10', 'Йокосука'), /* неточная дата окончания */
    (0, 174, '1943-01-10', '1943-01-31', 'Йокосука'),
    (0, 174, '1943-09-04', '1943-10-05', 'Йокосука'),
    (0, 174, '1944-02-13', '1944-03-28', 'Йокосука'),
    (0, 174, '1944-06-21', '1944-06-23', 'Йокосука'),
    (0, 174, '1944-08-12', '1944-08-22', 'Куре'),
    (7, 174, '1944-11-13', '1944-11-13', 'Манила, поврежден близкими разрывами бомб'),
    (1, 174, '1944-11-22', '1944-12-12', 'Сингапур'), /* неточная дата окончания */
    (1, 174, '1945-01-09', '1945-04-20', 'Йокосука'), /* неточная дата окончания */

    (1, 175, '1942-04-11', '1942-04-16', 'Йокосука'),
    (1, 175, '1942-07-25', '1942-08-06', 'Йокосука'),
    (1, 175, '1942-11-06', '1942-11-10', 'Трук'), /* неточная дата окончания */

    (7, 176, '1934-06-29', '1934-06-29', 'Корейский пролив, столкновение с эсминцем Миюки'),
    (1, 176, '1934-07-01', '1934-10-20', 'Куре'), /* неточная дата начала */
    (7, 176, '1942-01-20', '1942-01-20', 'Давао 21:46, столкновение с Сендай Мару'),
    (1, 176, '1942-01-20', '1942-01-26', 'Акаси'),
    (1, 176, '1942-01-29', '1942-02-17', 'Мако'),
    (1, 176, '1942-03-26', '1942-04-10', 'Йокосука'), /* неточная дата окончания */
    (1, 176, '1942-07-15', '1942-07-31', 'Йокосука'),
    (0, 176, '1943-01-12', '1943-01-28', 'Йокосука'),
    (1, 176, '1943-04-16', '1943-05-05', 'Йокосука'), /* неточная дата окончания */
    (1, 176, '1943-10-06', '1943-11-01', 'Йокосука'), /* неточная дата окончания */
    (0, 176, '1944-04-10', '1944-04-30', 'Куре'),

    (1, 177, '1942-03-26', '1942-04-10', 'Йокосука'), /* неточная дата окончания */
    (1, 177, '1942-08-08', '1942-08-20', 'Йокосука'),
    (7, 177, '1942-11-12', '1942-11-13', 'битва за Гуадалканал, попадание снаряда в башню No 1'),
    (1, 177, '1942-11-17', '1942-11-22', 'Трук'),
    (0, 177, '1943-01-12', '1943-02-04', 'Йокосука'),
    (1, 177, '1943-04-11', '1943-05-04', 'Йокосука'), /* неточная дата окончания */
    (0, 177, '1944-01-03', '1944-01-18', 'Йокосука'),

    (1, 178, '1942-03-26', '1942-04-10', 'Йокосука'), /* неточная дата окончания */
    (7, 178, '1942-06-12', '1942-06-12', 'Кыска, поврежден близкими разрывами бомб PBY Catalina'),
    (1, 178, '1942-06-27', '1942-07-10', 'Оминато'), /* неточная дата окончания */
    (1, 178, '1942-07-12', '1942-10-10', 'Йокосука'),
    (0, 178, '1942-12-31', '1943-01-22', 'Йокосука'),
    (1, 178, '1943-09-09', '1943-09-16', 'Йокосука'),
    (0, 178, '1944-04-10', '1944-04-30', 'Йокосука'),
    (0, 178, '1944-07-17', '1944-07-27', 'Куре'),
    (7, 178, '1944-09-06', '1944-09-06', 'поврежден'),
    (1, 178, '1944-09-07', '1944-10-30', 'Такао'), /* неточная дата окончания */
    (1, 178, '1944-11-16', '1945-01-25', 'Йокосука'),
    (7, 178, '1944-03-29', '1944-03-29', 'Химедзима, подорвался на мине'),
    (1, 178, '1944-04-01', '1944-05-20', 'Куре'); /* неточные даты */

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (155, 1, 3, '1928-08-10', '1942-10-11'),
    (156, 1, 3, '1928-12-18', '1943-03-03'),
    (157, 1, 3, '1929-03-30', '1943-07-17'),
    (158, 1, 3, '1929-06-29', '1934-06-29'),
    (159, 1, 3, '1929-05-10', '1942-10-12'),
    (160, 1, 3, '1928-07-25', '1941-12-17'),
    (161, 1, 3, '1928-07-26', '1943-11-25'),
    (161, 1, 2, '1944-02-01', '1944-07-07'),
    (162, 1, 3, '1928-07-28', '1943-07-19'),
    (162, 1, 2, '1943-09-22', '1944-03-16'),
    (163, 1, 3, '1928-06-30', '1943-04-09'),
    (164, 1, 3, '1929-06-30', '1944-10-26'),
                                         
    (165, 2, 3, '1930-04-30', '1942-11-15'),
    (166, 2, 3, '1929-12-24', '1944-09-12'),
    (167, 2, 3, '1930-06-30', '1942-08-28'),
    (168, 2, 3, '1930-12-03', '1943-11-25'),
    (169, 2, 3, '1930-11-10', '1944-01-15'),
    (169, 2, 2, '1944-02-22', '1944-04-23'),
    (170, 2, 3, '1931-01-30', '1941-12-24'),
    (171, 2, 3, '1931-10-31', '1942-10-16'),
    (172, 2, 3, '1931-07-31', '1944-02-13'),
    (172, 2, 2, '1944-03-28', '1944-11-13'),
    (173, 2, 3, '1932-05-19', '1944-01-14'),
    (174, 2, 3, '1931-11-14', '1943-09-04'),
    (174, 2, 2, '1943-10-05',  null),
                                         
    (175, 2, 3, '1932-11-30', '1942-11-13'),
    (176, 2, 3, '1932-11-15', '1944-04-10'),
    (176, 2, 2, '1944-04-30', '1944-05-14'),
    (177, 2, 3, '1932-08-15', '1944-04-13'),
    (178, 2, 3, '1932-03-31', '1944-04-10'),
    (178, 2, 2, '1944-04-30',  null);
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (155, 58,  2, '1928-08-10', '1942-10-11'),

    (156, 58,  2, '1928-12-18', '1943-03-03'),

    (157, 58,  2, '1929-03-30', '1942-12-10'),
    (157, 52,  3, '1942-12-31', '1943-07-17'), /* неточное количество */

    (158, 58,  2, '1929-06-29', '1934-06-29'),

    (159, 58,  2, '1929-05-10', '1942-10-12'),

    (160, 58,  2, '1928-07-25', '1937-01-01'), /* неточная дата окончания */
    (160, 44,  2, '1937-12-31', '1941-12-17'), /* неточная дата начала */

    (161, 58,  2, '1928-07-26', '1943-02-21'), /* неточная дата окончания */
    (161, 52,  2, '1943-02-26', '1943-04-16'), /* количество неизвестно, место установки неизвестно */
    (161, 52,  4, '1943-05-10', '1943-11-25'),
    (161, 52,  1, '1944-02-01', '1944-07-07'),
    (161, 45,  4, '1944-02-01', '1944-07-07'),
    (161, 44,  1, '1944-02-01', '1944-07-07'),
    (161, 43, 10, '1944-06-21', '1944-07-07'), /* количество неизвестно */
    (161, 51,  4, '1944-06-21', '1944-07-07'), /* количество неизвестно */

    (162, 58,  2, '1928-07-28', '1943-01-01'), /* неточная дата окончания */
    (162, 52,  3, '1943-03-31', '1943-07-19'),
    (162, 45,  4, '1943-09-22', '1944-03-16'),
    (162, 44,  1, '1943-09-22', '1944-03-16'),

    (163, 58,  2, '1928-06-30', '1943-01-13'),
    (163, 52,  3, '1943-01-31', '1943-04-09'), /* неточное количество */
    
    (164, 58,  2, '1929-06-30', '1943-01-22'), /* неточная дата окончания */
    (164, 52,  3, '1943-02-06', '1943-04-26'), /* неточное количество, неточная дата окончания */
    (164, 45,  2, '1943-08-13', '1944-07-02'), /* неточная дата начала */
    (164, 44,  1, '1943-08-13', '1944-10-26'), /* неточная дата начала */
    (164, 45,  4, '1944-08-04', '1944-10-26'),
    (164, 43, 10, '1944-08-04', '1944-10-26'), /* количество неизвестно */
                                          
    (165, 58,  2, '1930-04-30', '1942-11-15'),

    (166, 58,  2, '1929-12-24', '1942-12-27'),
    (166, 52,  3, '1943-01-03', '1944-03-18'),
    (166, 44,  3, '1944-04-26', '1944-09-12'),
    (166, 43, 10, '1944-07-29', '1944-09-12'),
    
    (167, 58,  2, '1930-06-30', '1942-08-28'),

    (168, 58,  2, '1930-12-03', '1942-10-06'),
    (168, 52,  3, '1943-01-15', '1943-08-07'),
    (168, 44,  3, '1943-10-30', '1943-11-25'),

    (169, 58,  2, '1930-11-10', '1943-01-13'),
    (169, 52,  3, '1943-03-10', '1943-07-07'),
    (169, 52,  1, '1943-07-31', '1943-08-10'),
    (169, 44,  2, '1943-07-31', '1943-08-10'),
    (169, 44,  3, '1943-08-30', '1944-04-23'),
    (169, 45,  2, '1944-02-22', '1944-04-23'),

    (170, 58,  2, '1931-01-30', '1937-01-01'),
    (170, 44,  1, '1937-12-31', '1941-12-24'),

    (171, 58,  2, '1931-10-31', '1942-10-16'),

    (172, 58,  2, '1931-07-31', '1943-01-10'), /* неточная дата окончания */
    (172, 52,  3, '1943-01-31', '1943-09-12'),
    (172, 44,  3, '1943-10-11', '1944-02-13'),
    (172, 44,  1, '1944-03-28', '1944-11-13'),
    (172, 45,  4, '1944-03-28', '1944-11-13'),
    (172, 43,  8, '1944-08-22', '1944-11-13'),
    (172, 52,  2, '1944-08-22', '1944-11-13'),
    (172, 51,  6, '1944-08-22', '1944-11-13'),

    (173, 58,  2, '1932-05-19', '1942-12-31'),
    (173, 52,  3, '1943-01-31', '1943-09-12'), /* неточное количество (перед мостиком точно был) */
    (173, 44,  3, '1943-09-20', '1944-01-14'),

    (174, 58,  2, '1931-11-14', '1943-01-10'),
    (174, 52,  3, '1943-01-31', '1943-09-04'), /* неточное количество (перед мостиком точно был) */
    (174, 45,  4, '1943-10-05',  null),
    (174, 44,  1, '1943-10-05',  null),
    (174, 43, 10, '1944-06-23',  null),        /* неточное количество */
    (174, 51,  4, '1944-06-23',  null),        /* неточное количество */
                                          
    (175, 58,  2, '1932-11-30', '1942-11-13'),

    (176, 58,  2, '1932-11-15', '1943-01-12'),
    (176, 52,  3, '1943-01-12', '1944-04-10'), /* неточное количество (перед мостиком точно был) */
    (176, 45,  4, '1944-04-30', '1944-05-14'),
    (176, 44,  1, '1944-04-30', '1944-05-14'),

    (177, 58,  2, '1932-08-15', '1943-01-12'),
    (177, 52,  3, '1943-02-04', '1944-01-03'), /* неточное количество (перед мостиком точно был) */
    (177, 44,  3, '1944-01-18', '1944-04-13'),

    (178, 58,  2, '1932-03-31', '1942-12-31'),
    (178, 52,  3, '1943-01-22', '1944-04-10'),
    (178, 45,  4, '1944-04-30',  null),
    (178, 44,  1, '1944-04-30',  null),
    (178, 43, 10, '1944-07-27',  null);        /* неточное количество */
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (155, 9, 3, '1928-08-10', '1942-10-11'),
    (156, 9, 3, '1928-12-18', '1943-03-03'),
    (157, 9, 3, '1929-03-30', '1943-07-17'),
    (158, 9, 3, '1929-06-29', '1934-06-29'),
    (159, 9, 3, '1929-05-10', '1942-10-12'),
    (160, 9, 3, '1928-07-25', '1941-12-17'),
    (161, 9, 3, '1928-07-26', '1944-07-07'),
    (162, 9, 3, '1928-07-28', '1944-03-16'),
    (163, 9, 3, '1928-06-30', '1943-04-09'),
    (164, 9, 3, '1929-06-30', '1944-10-26'),
                                         
    (165, 9, 3, '1930-04-30', '1942-11-15'),
    (166, 9, 3, '1929-12-24', '1944-09-12'),
    (167, 9, 3, '1930-06-30', '1942-08-28'),
    (168, 9, 3, '1930-12-03', '1943-11-25'),
    (169, 9, 3, '1930-11-10', '1944-04-23'),
    (170, 9, 3, '1931-01-30', '1941-12-24'),
    (171, 9, 3, '1931-10-31', '1942-10-16'),
    (172, 9, 3, '1931-07-31', '1944-11-13'),
    (173, 9, 3, '1932-05-19', '1944-01-14'),
    (174, 9, 3, '1931-11-14',  null),
                                         
    (175, 9, 3, '1932-11-30', '1942-11-13'),
    (176, 9, 3, '1932-11-15', '1944-05-14'),
    (177, 9, 3, '1932-08-15', '1944-04-13'),
    (178, 9, 3, '1932-03-31',  null);
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (161,  1, 1, '1944-02-01', '1944-07-07'), /* тип 22 */
    (161,  2, 1, '1944-06-28', '1944-07-07'), /* тип 13 */

    (162,  1, 1, '1943-09-22', '1944-03-16'), /* тип 22 */
    /* по данным combinedfleet Сиракумо имел радар детекторы */

    (164,  1, 1, '1944-09-19', '1944-10-26'), /* тип 22 */
    (164,  2, 1, '1944-09-19', '1944-10-26'), /* тип 13 */

    (168,  1, 1, '1943-10-30', '1943-11-25'), /* тип 22 */

    (169,  1, 1, '1944-02-22', '1944-04-23'), /* тип 22 */
    (169, 26, 2, '1944-02-22', '1944-04-23'), /* E27 */

    (172,  1, 1, '1944-03-28', '1944-11-13'), /* тип 22 */
    (172, 26, 2, '1944-03-28', '1944-11-13'), /* E27 */
    (172,  2, 1, '1944-08-22', '1944-11-13'), /* тип 13 */

    (174,  1, 1, '1943-10-05',  null),        /* тип 22 */
    (174, 26, 2, '1944-03-28',  null),        /* E27 */
    (174,  2, 1, '1944-08-22',  null),        /* тип 13 */

    (178,  1, 1, '1944-04-10',  null),        /* тип 22 */
    (178, 26, 1, '1944-04-10',  null),        /* E27 */
    (178,  2, 1, '1944-07-27',  null);        /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (155, 36, 1, '1928-08-10', '1942-10-11'),
    (156, 36, 1, '1928-12-18', '1943-03-03'),
    (157, 36, 1, '1929-03-30', '1943-07-17'),
    (158, 36, 1, '1929-06-29', '1934-06-29'),
    (159, 36, 1, '1929-05-10', '1942-10-12'),
    (160, 36, 1, '1928-07-25', '1941-12-17'),
    (161, 36, 1, '1928-07-26', '1944-07-07'),
    (162, 36, 1, '1928-07-28', '1944-03-16'),
    (163, 36, 1, '1928-06-30', '1943-04-09'),
    (164, 36, 1, '1929-06-30', '1944-10-26'),
                                          
    (165, 36, 1, '1930-04-30', '1942-11-15'),
    (166, 36, 1, '1929-12-24', '1944-09-12'),
    (167, 36, 1, '1930-06-30', '1942-08-28'),
    (168, 36, 1, '1930-12-03', '1943-11-25'),
    (169, 36, 1, '1930-11-10', '1944-04-23'),
    (170, 36, 1, '1931-01-30', '1941-12-24'),
    (171, 36, 1, '1931-10-31', '1942-10-16'),
    (172, 36, 1, '1931-07-31', '1944-11-13'),
    (173, 36, 1, '1932-05-19', '1944-01-14'),
    (174, 36, 1, '1931-11-14',  null),
                                          
    (175, 36, 1, '1932-11-30', '1942-11-13'),
    (176, 36, 1, '1932-11-15', '1944-05-14'),
    (177, 36, 1, '1932-08-15', '1944-04-13'),
    (178, 36, 1, '1932-03-31',  null);

    
    
/*
    Синономе с 1937:
        сонар тип 93 мод 1
        гидрофон тип 93
*/
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (155, 5, 2, '1928-08-10', '1942-10-11'),
    (156, 5, 2, '1928-12-18', '1943-03-03'),
    (157, 5, 2, '1929-03-30', '1943-07-17'),
    (158, 5, 2, '1929-06-29', '1934-06-29'),
    (159, 5, 2, '1929-05-10', '1942-10-12'),
    (160, 5, 2, '1928-07-25', '1941-12-17'),
    (160, 0, 1, '1937-12-31', '1941-12-17'), /* неточная дата начала */
    (161, 5, 2, '1928-07-26', '1944-07-07'),
    (162, 5, 2, '1928-07-28', '1944-03-16'),
    (163, 5, 2, '1928-06-30', '1943-04-09'),
    (164, 5, 2, '1929-06-30', '1944-10-26'),
                                         
    (165, 5, 2, '1930-04-30', '1942-11-15'),
    (166, 5, 2, '1929-12-24', '1944-09-12'),
    (167, 5, 2, '1930-06-30', '1942-08-28'),
    (168, 5, 2, '1930-12-03', '1943-11-25'),
    (169, 5, 2, '1930-11-10', '1944-04-23'),
    (170, 5, 2, '1931-01-30', '1941-12-24'),
    (171, 5, 2, '1931-10-31', '1942-10-16'),
    (172, 5, 2, '1931-07-31', '1944-11-13'),
    (173, 5, 2, '1932-05-19', '1944-01-14'),
    (174, 5, 2, '1931-11-14',  null),
                                         
    (175, 5, 2, '1932-11-30', '1942-11-13'),
    (176, 5, 2, '1932-11-15', '1944-05-14'),
    (177, 5, 2, '1932-08-15', '1944-04-13'),
    (178, 5, 2, '1932-03-31',  null);
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (155, 2, 2, '1928-08-10', '1942-10-11'),
    (156, 2, 2, '1928-12-18', '1943-03-03'),
    (157, 2, 2, '1929-03-30', '1943-07-17'),
    (158, 2, 2, '1929-06-29', '1934-06-29'),
    (159, 2, 2, '1929-05-10', '1942-10-12'),
    (160, 2, 2, '1928-07-25', '1941-12-17'),
    (161, 2, 2, '1928-07-26', '1944-07-07'),
    (162, 2, 2, '1928-07-28', '1944-03-16'),
    (163, 2, 2, '1928-06-30', '1943-04-09'),
    (164, 2, 2, '1929-06-30', '1944-10-26'),
                                         
    (165, 2, 2, '1930-04-30', '1942-11-15'),
    (166, 2, 2, '1929-12-24', '1944-09-12'),
    (167, 2, 2, '1930-06-30', '1942-08-28'),
    (168, 2, 2, '1930-12-03', '1943-11-25'),
    (169, 2, 2, '1930-11-10', '1944-04-23'),
    (170, 2, 2, '1931-01-30', '1941-12-24'),
    (171, 2, 2, '1931-10-31', '1942-10-16'),
    (172, 2, 2, '1931-07-31', '1944-11-13'),
    (173, 2, 2, '1932-05-19', '1944-01-14'),
    (174, 2, 2, '1931-11-14',  null),
                                         
    (175, 2, 2, '1932-11-30', '1942-11-13'),
    (176, 2, 2, '1932-11-15', '1944-05-14'),
    (177, 2, 2, '1932-08-15', '1944-04-13'),
    (178, 2, 2, '1932-03-31',  null);
    

