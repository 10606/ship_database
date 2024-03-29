
/*
    205 - Кагеро     
    206 - Сирануи    
    207 - Куросио    
    208 - Оясио      
    209 - Хаясио     
    210 - Нацусио    
    211 - Хацукадзе  
    212 - Юкикадзе   
    213 - Амацукадзе 
    214 - Токицукадзе
    215 - Уракадзе   
    216 - Исокадзе   
    217 - Хамакадзе  
    218 - Таникадзе  
    219 - Новаки     
    220 - Араси      
    221 - Хагикадзе  
    222 - Майкадзе   
    223 - Акигумо    
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (205, '1939-11-06', '1943-05-08',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (206, '1939-12-20', '1944-10-27',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (207, '1940-01-27', '1943-05-08',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (208, '1940-08-20', '1943-05-08',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (209, '1940-08-31', '1942-11-24',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (210, '1940-08-31', '1942-02-09',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (211, '1940-02-15', '1943-11-02',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (212, '1940-01-20',  null,           2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (213, '1940-10-26', '1945-04-06',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (214, '1940-12-15', '1943-03-03',    2032, 2540,   118.5, 10.8, 3.76,  239, 35.5, 18, 8000),
    (215, '1940-12-15', '1944-11-21',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (216, '1940-11-30', '1945-04-07',    2032, 2540,   118.5, 10.8, 3.76,  239, 35,   18, 8000),
    (217, '1941-06-30', '1945-04-07',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (218, '1941-04-25', '1944-06-09',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (219, '1941-04-28', '1944-10-26',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (220, '1941-01-27', '1943-08-06',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (221, '1941-03-31', '1943-08-06',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000),
    (222, '1941-07-15', '1944-02-17',    2032, 2540,   118.5, 10.8, 3.76,  239, 35,   18, 8000),
    (223, '1941-09-27', '1944-04-11',    2032, 2540,   118.5, 10.8, 3.76,  240, 35,   18, 8000);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 205, '1942-02-25', '1942-03-03', 'Урага'),
    (1, 205, '1942-04-23', '1942-04-28', 'Куре'),
    (1, 205, '1942-09-23', '1942-09-30', 'Трук'), /* неточные даты */
    (1, 205, '1943-01-18', '1943-01-31', 'Трук'), /* неточные даты */
    (0, 205, '1943-02-21', '1943-03-22', 'Куре'), /* неточная дата окончания */
    (7, 205, '1943-05-08', '1943-05-08', 'подорвался на мине у острова Рендова'),

    (1, 206, '1942-04-23', '1942-05-20', 'Куре'),
    (7, 206, '1942-07-05', '1942-07-05', 'торпедирован SS-215 Growler, у гавани Кыска'),
    (0, 206, '1942-09-03', '1943-11-15', 'Майдзуру'),

    (7, 207, '1941-06-23', '1941-06-23', 'столкновение с эсминцами Нацусио и Минегумо, пролив Бунго'),
    (1, 207, '1941-07-01', '1941-07-31', 'Куре, после столкновения'),
    (1, 207, '1942-10-30', '1942-11-15', 'Трук'),
    (0, 207, '1943-02-22', '1943-04-04', 'Куре'), /* неточная дата окончания */

    (1, 208, '1942-04-07', '1942-04-13', 'Куре'),
    (0, 208, '1943-02-09', '1943-04-04', 'Куре'), /* неточная дата окончания */

    (1, 209, '1942-04-07', '1942-04-13', 'Куре'),

    (1, 211, '1942-05-03', '1942-05-21', 'Куре'),
    (7, 211, '1943-01-10', '1943-01-10', 'участвовал в потоплении PT-43 и PT-112, торпедирован (вероятно PT-112)'),
    (1, 211, '1943-01-30', '1943-02-02', 'Трук'),
    (0, 211, '1943-04-14', '1943-08-16', 'Куре'), /* неточная дата окончания */

    (1, 212, '1942-05-02', '1942-05-21', 'Куре'),
    (1, 212, '1942-12-10', '1943-01-18', 'Куре'),
    (0, 212, '1943-05-08', '1943-06-16', 'Куре'),
    (0, 212, '1943-09-02', '1943-10-08', 'Куре'),
    (7, 212, '1944-05-22', '1944-05-22', 'наскочил на риф у Тавитави'),
    (0, 212, '1944-07-05', '1944-08-15', 'Куре'),
    (6, 212, '1945-05-19',  null,        'Майдзуру'),

    (1, 213, '1942-05-03', '1942-05-21', 'Куре'),
    (7, 213, '1942-11-12', '1942-11-13', 'Гуадалканал, подврежден крейсером CL-50 Helena'),
    (1, 213, '1942-11-18', '1942-11-25', 'Трук'),
    (0, 213, '1942-12-01', '1943-02-05', 'Куре'), /* неточная дата окончания */
    (0, 213, '1943-08-01', '1943-08-16', 'Куре'), /* неточная дата окончания */
    (7, 213, '1944-01-16', '1944-01-16', 'торпедирован SS-272 Redfin'),
    (1, 213, '1944-11-15', '1945-02-28', 'Сингапур, ремонт после торпедного попадания'), /* неточная дата окончания */

    (1, 214, '1942-05-02', '1942-05-16', 'Куре'),
    (1, 214, '1942-11-16', '1942-11-20', 'Куре'),
    (7, 214, '1943-01-10', '1943-01-10', 'участвовал в потоплении PT-43 и PT-112'),

    (1, 215, '1942-04-27', '1942-05-15', 'Куре'), /* неточная дата окончания */
    (1, 215, '1942-09-24', '1942-09-24', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 215, '1942-09-26', '1942-09-30', 'Трук'), /* неточная дата окончания */
    (1, 215, '1942-11-07', '1942-11-25', 'Куре'), /* неточная дата окончания */
    (7, 215, '1943-01-15', '1943-01-15', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 215, '1943-01-17', '1943-01-25', 'Рабаул'), /* неточные даты */
    (0, 215, '1943-12-05', '1943-12-24', 'Куре'), /* неточная дата окончания */
    (1, 215, '1944-08-01', '1944-08-31', 'Куре'), /* неточные даты */

    (1, 216, '1942-04-27', '1942-05-15', 'Куре'), /* неточная дата окончания */
    (1, 216, '1942-11-07', '1942-11-30', ''), /* неточная дата окончания */
    (7, 216, '1943-02-08', '1943-02-08', 'острова Рассела, поврежден 2 близкими разрывами бомб'),
    (1, 216, '1943-02-09', '1943-02-27', 'Рабаул'), /* неточные даты */
    (1, 216, '1943-03-02', '1943-03-22', 'Трук'), /* неточные даты */
    (1, 216, '1943-03-29', '1943-07-08', 'Куре'),
    (7, 216, '1943-11-04', '1943-11-04', 'Кавиенг, подорвался на мине'),
    (1, 216, '1943-11-06', '1943-11-11', 'Трук'),
    (0, 216, '1943-11-19', '1944-01-05', 'Куре'), /* неточная дата окончания */

    (1, 217, '1942-04-27', '1942-05-15', 'Куре'), /* неточная дата окончания */
    (1, 217, '1942-11-07', '1942-11-30', ''), /* неточная дата окончания */
    (7, 217, '1943-01-15', '1943-01-15', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 217, '1943-01-17', '1943-01-25', 'Рабаул'), /* неточные даты */
    (7, 217, '1943-02-08', '1943-02-08', 'острова Рассела, попадание бомбы в башню No 1'),
    (1, 217, '1943-02-09', '1943-02-15', 'Рабаул'), /* неточные даты */
    (1, 217, '1943-02-19', '1943-03-06', 'Трук'), /* неточные даты */
    (1, 217, '1943-03-16', '1943-06-16', 'Трук'), /* неточные даты */
    (0, 217, '1943-09-18', '1943-10-30', 'Куре'), /* неточные даты */
    (7, 217, '1944-10-24', '1944-10-24', 'залив Лейте, поврежден авиацией'),
    (7, 217, '1945-01-08', '1945-01-08', 'Формоза, Синьчжу, столкновение с Каихо Мару'),
    (1, 217, '1945-02-01', '1945-03-31', 'Куре'), /* неточные даты */

    (1, 218, '1942-04-27', '1942-05-15', 'Куре'), /* неточная дата окончания */
    (1, 218, '1942-11-07', '1942-11-21', ''), /* неточная дата окончания */
    (7, 218, '1943-01-15', '1943-01-15', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 218, '1943-01-17', '1943-01-25', 'Рабаул'), /* неточные даты */
    (1, 218, '1943-05-19', '1943-06-15', 'Йокосука'), /* неточные даты */
    (0, 218, '1943-11-06', '1943-11-25', 'Куре'), /* неточная дата окончания */

    (1, 219, '1942-04-19', '1942-05-15', 'Йокосука'), /* неточные даты */
    (7, 219, '1942-12-07', '1942-12-07', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 219, '1942-12-18', '1943-02-16', 'Трук'),
    (1, 219, '1943-02-24', '1943-04-30', 'Йокосука'), /* неточная дата окончания */
    (0, 219, '1943-12-17', '1943-12-31', 'Сасебо'), /* неточная дата окончания */

    (1, 220, '1942-04-19', '1942-05-15', 'Йокосука'), /* неточная дата окончания */
    (1, 220, '1942-11-06', '1942-11-23', 'Куре'), /* неточные даты */
    (7, 220, '1943-01-15', '1943-01-15', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 220, '1943-01-19', '1943-01-31', 'Трук'),
    (1, 220, '1943-02-20', '1943-07-10', 'Йокосука'), /* неточная дата окончания */

    (1, 221, '1942-04-22', '1942-05-15', 'Йокосука'), /* неточная дата окончания */
    (7, 221, '1942-08-19', '1942-08-19', 'Гуадалканал, попадание бомбы B-17 в башню No 3'),
    (1, 221, '1942-08-24', '1942-10-01', 'Трук'),
    (1, 221, '1942-10-08', '1943-02-28', 'Йокосука'), /* неточная дата окончания */

    (1, 222, '1942-04-22', '1942-05-15', 'Йокосука'), /* неточная дата окончания */
    (1, 222, '1942-11-06', '1942-11-30', 'Куре'),
    (0, 222, '1943-12-16', '1943-12-22', 'Сасебо'), 
    (7, 222, '1943-02-04', '1943-02-04', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 222, '1943-02-12', '1943-03-06', 'Трук'),
    (1, 222, '1943-03-16', '1943-07-23', 'Йокосука'),

    (1, 223, '1942-02-26', '1942-03-03', 'Йокогама'),
    (1, 223, '1942-04-23', '1942-05-26', 'Куре'),
    (1, 223, '1942-11-08', '1942-11-30', ''), /* неточная дата окончания */
    (1, 223, '1943-05-08', '1943-06-10', 'Йокосука'),
    (0, 223, '1943-12-17', '1944-01-13', 'Йокосука');

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (205, 3, 3, '1939-11-06', '1943-05-08'),
    (206, 3, 3, '1939-12-20', '1942-09-03'),
    (206, 3, 2, '1943-11-15', '1944-10-27'),
    (207, 3, 3, '1940-01-27', '1943-05-08'),
    (208, 3, 3, '1940-08-20', '1943-05-08'),
    (209, 3, 3, '1940-08-31', '1942-11-24'),
    (210, 3, 3, '1940-08-31', '1942-02-09'),
    (211, 3, 3, '1940-02-15', '1943-11-02'),
    (212, 3, 3, '1940-01-20', '1943-09-02'),
    (212, 3, 2, '1943-10-08',  null),
    (213, 3, 3, '1940-10-26', '1945-04-06'),
    (214, 3, 3, '1940-12-15', '1943-03-03'),
    (215, 3, 3, '1940-12-15', '1943-12-05'),
    (215, 3, 2, '1943-12-24', '1944-11-21'),
    (216, 3, 3, '1940-11-30', '1943-11-19'),
    (216, 3, 2, '1944-01-05', '1945-04-07'),
    (217, 3, 3, '1941-06-30', '1943-09-18'),
    (217, 3, 2, '1943-10-30', '1945-04-07'),
    (218, 3, 3, '1941-04-25', '1943-11-06'),
    (218, 3, 2, '1943-11-25', '1944-06-09'),
    (219, 3, 3, '1941-04-28', '1943-12-17'),
    (219, 3, 2, '1943-12-31', '1944-10-26'),
    (220, 3, 3, '1941-01-27', '1943-08-06'),
    (221, 3, 3, '1941-03-31', '1943-08-06'),
    (222, 3, 3, '1941-07-15', '1943-12-16'),
    (222, 3, 2, '1943-12-22', '1944-02-17'),
    (223, 3, 3, '1941-09-27', '1943-12-17'),
    (223, 3, 2, '1944-01-13', '1944-04-11');
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (205, 44, 2, '1939-11-06', '1943-02-21'),
    (205, 45, 2, '1943-03-22', '1943-05-08'), /* точно неизвестно */
    (205, 44, 1, '1943-03-22', '1943-05-08'), /* точно неизвестно, но на Оясио была установлена платформа для носового спаренного 25мм */

    (206, 44, 2, '1939-12-20', '1942-09-03'),
    (206, 45, 4, '1943-11-15', '1944-10-27'),
    (206, 44, 1, '1943-11-15', '1944-10-27'),

    (207, 44, 2, '1940-01-27', '1943-02-22'),
    (207, 45, 2, '1943-04-04', '1943-05-08'), /* точно неизвестно */
    (207, 44, 1, '1943-04-04', '1943-05-08'), /* точно неизвестно, но на Оясио была установлена платформа для носового спаренного 25мм */

    (208, 44, 2, '1940-08-20', '1943-02-09'),
    (208, 45, 2, '1943-04-04', '1943-05-08'), /* точно неизвестно */
    (208, 44, 1, '1943-04-04', '1943-05-08'),

    (209, 44, 2, '1940-08-31', '1942-11-24'),

    (210, 44, 2, '1940-08-31', '1942-02-09'),

    (211, 44, 2, '1940-02-15', '1943-04-14'),
    (211, 45, 2, '1943-08-16', '1943-11-02'), /* точно неизвестно */
    (211, 44, 1, '1943-08-16', '1943-11-02'), /* точно неизвестно */

    (212, 44, 2, '1940-01-20', '1943-05-08'),
    (212, 45, 2, '1943-06-16', '1943-09-02'),
    (212, 45, 4, '1943-10-08',  null),
    (212, 44, 1, '1943-06-16',  null),

    (213, 44, 2, '1940-10-26', '1942-12-01'),
    (213, 45, 2, '1943-02-05', '1945-04-06'),
    (213, 44, 1, '1943-02-05', '1945-04-06'),

    (214, 44, 2, '1940-12-15', '1943-03-03'),

    (215, 44, 2, '1940-12-15', '1943-12-05'),
    (215, 45, 4, '1943-12-24', '1944-11-21'),
    (215, 44, 1, '1943-12-24', '1944-11-21'),

    (216, 44, 2, '1940-11-30', '1943-11-19'),
    (216, 45, 4, '1944-01-05', '1945-04-07'),
    (216, 44, 1, '1944-01-05', '1945-04-07'),

    (217, 44, 2, '1941-06-30', '1943-09-18'),
    (217, 45, 4, '1943-10-30', '1945-04-07'),
    (217, 44, 1, '1943-10-30', '1945-04-07'),

    (218, 44, 2, '1941-04-25', '1943-11-06'),
    (218, 45, 4, '1943-11-25', '1944-06-09'),
    (218, 44, 1, '1943-11-25', '1944-06-09'),

    (219, 44, 2, '1941-04-28', '1943-12-17'),
    (219, 45, 4, '1943-12-31', '1944-10-26'),
    (219, 44, 1, '1943-12-31', '1944-10-26'),

    (220, 44, 2, '1941-01-27', '1943-08-06'),

    (221, 44, 2, '1941-03-31', '1943-08-06'),

    (222, 44, 2, '1941-07-15', '1943-12-16'),
    (222, 45, 4, '1943-12-22', '1944-02-17'),
    (222, 44, 1, '1943-12-22', '1944-02-17'),

    (223, 44, 2, '1941-09-27', '1943-12-17'),
    (223, 45, 4, '1944-01-13', '1944-04-11'),
    (223, 44, 1, '1944-01-13', '1944-04-11');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (205, 13, 2, '1939-11-06', '1943-05-08'),
    (206, 13, 2, '1939-12-20', '1944-10-27'),
    (207, 13, 2, '1940-01-27', '1943-05-08'),
    (208, 13, 2, '1940-08-20', '1943-05-08'),
    (209, 13, 2, '1940-08-31', '1942-11-24'),
    (210, 13, 2, '1940-08-31', '1942-02-09'),
    (211, 13, 2, '1940-02-15', '1943-11-02'),
    (212, 13, 2, '1940-01-20',  null),
    (213, 13, 2, '1940-10-26', '1945-04-06'),
    (214, 13, 2, '1940-12-15', '1943-03-03'),
    (215, 13, 2, '1940-12-15', '1944-11-21'),
    (216, 13, 2, '1940-11-30', '1945-04-07'),
    (217, 13, 2, '1941-06-30', '1945-04-07'),
    (218, 13, 2, '1941-04-25', '1944-06-09'),
    (219, 13, 2, '1941-04-28', '1944-10-26'),
    (220, 13, 2, '1941-01-27', '1943-08-06'),
    (221, 13, 2, '1941-03-31', '1943-08-06'),
    (222, 13, 2, '1941-07-15', '1944-02-17'),
    (223, 13, 2, '1941-09-27', '1944-04-11');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (206,  1, 1, '1943-11-15', '1944-10-27'), /* тип 22 */ /* неточные данные */

    /* E27 */ /* по данным combinedfleet c 16.06.1943 но он еще в разработке */
    (212,  1, 1, '1943-10-08',  null), /* тип 22 */
    (212,  2, 1, '1943-10-08',  null), /* тип 13 */

    /* E27 */ /* по данным combinedfleet c 05.02.1943 но он еще в разработке */
    (213,  1, 1, '1943-08-16', '1945-04-06'), /* тип 22 */

    (215,  1, 1, '1943-12-24', '1944-11-21'), /* тип 22 */ /* неточные данные */
    (216,  1, 1, '1944-01-05', '1945-04-07'), /* тип 22 */ /* неточные данные */
    (217,  1, 1, '1943-10-30', '1945-04-07'), /* тип 22 */ /* неточные данные */
    (218,  1, 1, '1943-11-25', '1944-06-09'), /* тип 22 */ /* неточные данные */
    (219,  1, 1, '1943-12-31', '1944-10-26'), /* тип 22 */ /* неточные данные */
    (222,  1, 1, '1943-12-22', '1944-02-17'), /* тип 22 */ /* неточные данные */
    (223,  1, 1, '1944-01-13', '1944-04-11'); /* тип 22 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (205, 32, 1, '1939-11-06', '1943-05-08'),
    (206, 32, 1, '1939-12-20', '1944-10-27'),
    (207, 32, 1, '1940-01-27', '1943-05-08'),
    (208, 32, 1, '1940-08-20', '1943-05-08'),
    (209, 32, 1, '1940-08-31', '1942-11-24'),
    (210, 32, 1, '1940-08-31', '1942-02-09'),
    (211, 32, 1, '1940-02-15', '1943-11-02'),
    (212, 32, 1, '1940-01-20',  null),
    (213, 32, 1, '1940-10-26', '1945-04-06'),
    (214, 32, 1, '1940-12-15', '1943-03-03'),
    (215, 32, 1, '1940-12-15', '1944-11-21'),
    (216, 32, 1, '1940-11-30', '1945-04-07'),
    (217, 32, 1, '1941-06-30', '1945-04-07'),
    (218, 32, 1, '1941-04-25', '1944-06-09'),
    (219, 32, 1, '1941-04-28', '1944-10-26'),
    (220, 32, 1, '1941-01-27', '1943-08-06'),
    (221, 32, 1, '1941-03-31', '1943-08-06'),
    (222, 32, 1, '1941-07-15', '1944-02-17'),
    (223, 32, 1, '1941-09-27', '1944-04-11');
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (205, 0, 1, '1939-11-06', '1943-05-08'),
    (206, 0, 1, '1939-12-20', '1944-10-27'),
    (207, 0, 1, '1940-01-27', '1943-05-08'),
    (208, 0, 1, '1940-08-20', '1943-05-08'),
    (209, 0, 1, '1940-08-31', '1942-11-24'),
    (210, 0, 1, '1940-08-31', '1942-02-09'),
    (211, 0, 1, '1940-02-15', '1943-11-02'),
    (212, 0, 1, '1940-01-20',  null),
    (213, 0, 1, '1940-10-26', '1945-04-06'),
    (214, 0, 1, '1940-12-15', '1943-03-03'),
    (215, 0, 1, '1940-12-15', '1944-11-21'),
    (216, 0, 1, '1940-11-30', '1945-04-07'),
    (217, 0, 1, '1941-06-30', '1945-04-07'),
    (218, 0, 1, '1941-04-25', '1944-06-09'),
    (219, 0, 1, '1941-04-28', '1944-10-26'),
    (220, 0, 1, '1941-01-27', '1943-08-06'),
    (221, 0, 1, '1941-03-31', '1943-08-06'),
    (222, 0, 1, '1941-07-15', '1944-02-17'),
    (223, 0, 1, '1941-09-27', '1944-04-11');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (205, 3, 2, '1939-11-06', '1943-05-08'),
    (205, 4, 4, '1939-11-06', '1943-05-08'),
    (206, 3, 2, '1939-12-20', '1944-10-27'),
    (206, 4, 4, '1939-12-20', '1944-10-27'),
    (207, 3, 2, '1940-01-27', '1943-05-08'),
    (207, 4, 4, '1940-01-27', '1943-05-08'),
    (208, 3, 2, '1940-08-20', '1943-05-08'),
    (208, 4, 4, '1940-08-20', '1943-05-08'),
    (209, 3, 2, '1940-08-31', '1942-11-24'),
    (209, 4, 4, '1940-08-31', '1942-11-24'),
    (210, 3, 2, '1940-08-31', '1942-02-09'),
    (210, 4, 4, '1940-08-31', '1942-02-09'),
    (211, 3, 2, '1940-02-15', '1943-11-02'),
    (211, 4, 4, '1940-02-15', '1943-11-02'),
    (212, 3, 2, '1940-01-20',  null),
    (212, 4, 4, '1940-01-20',  null),
    (213, 3, 2, '1940-10-26', '1945-04-06'),
    (213, 4, 4, '1940-10-26', '1945-04-06'),
    (214, 3, 2, '1940-12-15', '1943-03-03'),
    (214, 4, 4, '1940-12-15', '1943-03-03'),
    (215, 3, 2, '1940-12-15', '1944-11-21'),
    (215, 4, 4, '1940-12-15', '1944-11-21'),
    (216, 3, 2, '1940-11-30', '1945-04-07'),
    (216, 4, 4, '1940-11-30', '1945-04-07'),
    (217, 3, 2, '1941-06-30', '1945-04-07'),
    (217, 4, 4, '1941-06-30', '1945-04-07'),
    (218, 3, 2, '1941-04-25', '1944-06-09'),
    (218, 4, 4, '1941-04-25', '1944-06-09'),
    (219, 3, 2, '1941-04-28', '1944-10-26'),
    (219, 4, 4, '1941-04-28', '1944-10-26'),
    (220, 3, 2, '1941-01-27', '1943-08-06'),
    (220, 4, 4, '1941-01-27', '1943-08-06'),
    (221, 3, 2, '1941-03-31', '1943-08-06'),
    (221, 4, 4, '1941-03-31', '1943-08-06'),
    (222, 3, 2, '1941-07-15', '1944-02-17'),
    (222, 4, 4, '1941-07-15', '1944-02-17'),
    (223, 3, 2, '1941-09-27', '1944-04-11'),
    (223, 4, 4, '1941-09-27', '1944-04-11');


