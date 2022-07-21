
/*
    14 - Кума    
    15 - Тама    
    16 - Китаками
    17 - Оои     
    18 - Кисо    
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (14, '1920-08-31', '1944-03-10',    5330, 6970,   162.2, 14.17, 5.2,    438, 36.27, 10, 13600),
    
    (15, '1921-01-29', '1944-10-25',    5330, 6970,   162.2, 14.17, 5.2,    438, 36.18, 10, 13600),
    
    (16, '1921-04-15', '1941-08-25',    5330, 6970,   162.2, 14.17, 5.2,    438, 36.22, 10, 13600),
    (16, '1941-09-30', '1944-08-14',    5860, 7041,   162.2, 17.45, 5.6,    560, 36.22, 10, 13600),
    (16, '1945-01-20',  null,           5640, 7009,   162.2, 17.45, 5.6,    620, 23.8,  10, 13600),
    
    (17, '1921-10-03', '1941-08-25',    5330, 6970,   162.2, 14.17, 5.2,    438, 36.2,  10, 13600),
    (17, '1941-09-30', '1944-07-19',    5610, 6990,   162.2, 17.6,  5.8,    560, 36.2,  10, 13600),
    
    (18, '1921-05-04', '1944-11-13',    5330, 6970,   162.2, 14.17, 5.2,    438, 36.2,  10, 13600);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 14, '1923-12-01', '1924-12-01', 'Куре, в резерве'),
    (0, 14, '1924-01-01', '1924-12-01', 'Куре, установка платформы'), /* неточные даты */
    (1, 14, '1929-03-01', '1929-07-31', 'Куре'), /* неточные даты */
    (0, 14, '1932-09-08', '1932-12-01', 'Куре'),
    (0, 14, '1934-12-12', '1935-01-10', 'Куре, перевод котлов на мазут'),
    (0, 14, '1937-11-23', '1937-12-10', 'Куре'),
    (6, 14, '1939-11-17', '1940-08-01', 'Куре, в резерве'),
    (0, 14, '1940-08-01', '1941-01-31', 'Куре'), /* неточная дата окочания */
    (1, 14, '1942-08-12', '1942-09-15', 'Куре'),
    (1, 14, '1943-04-28', '1943-05-25', 'Сингапур, с помощью ремонтной секции 101'),
    (0, 14, '1943-10-23', '1943-11-12', 'Сингапур'),
    
    (0, 15, '1924-05-01', '1924-08-31', 'Куре, установка платформы'), /* неточные даты */
    (6, 15, '1925-12-01', '1927-10-27', 'Куре, в резерве'),
    (6, 15, '1929-12-23', '1930-12-01', 'Йокосука, в резерве'),
    (0, 15, '1934-04-01', '1934-11-10', 'Йокосука'),
    (1, 15, '1937-01-27', '1937-04-13', 'Майдзуру, перевод котлов на мазут'),
    (0, 15, '1939-12-15', '1940-02-28', 'Йокосука'), /* неточная дата окочания */
    (1, 15, '1940-11-25', '1940-12-03', 'Йокогама'),
    (1, 15, '1941-07-24', '1941-07-30', 'Йокосука, нанесение камуфляжа'),
    (1, 15, '1941-11-17', '1941-11-24', 'Йокосука'),
    (1, 15, '1941-12-27', '1942-01-16', 'Йокосука'),
    (1, 15, '1942-03-10', '1942-03-12', 'Йокосука'),
    (1, 15, '1942-07-16', '1942-08-02', 'Йокосука'),
    (1, 15, '1943-01-09', '1943-02-06', 'Йокосука'),
    (1, 15, '1943-05-04', '1943-05-19', 'Майдзуру'),
    (1, 15, '1943-09-01', '1943-09-12', 'Йокосука'),
    (0, 15, '1943-10-27', '1943-12-09', 'Йокосука'),
    (0, 15, '1944-06-19', '1944-06-30', 'Йокосука'),
    (1, 15, '1944-08-21', '1944-08-27', 'Куре'),

    (6, 16, '1921-12-01', '1922-12-01', 'Куре, в резерве'),
    (0, 16, '1925-05-01', '1925-07-31', 'Сасебо, установка платформы'), /* неточные даты */
    (6, 16, '1926-12-01', '1928-12-01', 'Йокосука, в резерве'),
    (7, 16, '1930-10-20', '1930-10-20', 'столкновение в крейсером Абукума'),
    (1, 16, '1930-10-21', '1931-04-30', 'Йокосука, после столкновения'), /* неточная дата окончания */
    (0, 16, '1932-12-25', '1934-01-31', 'Йокосука'), /* неточная дата окончания */
    (7, 16, '1935-09-26', '1935-09-26', 'повреждения во время тайфуна'),
    (1, 16, '1935-10-13', '1936-02-16', 'Сасебо'),
    (1, 16, '1936-11-19', '1937-03-20', 'Сасебо, перевод котлов на мазут'),
    (0, 16, '1941-08-25', '1941-09-30', 'Сасебо, перестройка в торпедный крейсер'),
    (1, 16, '1942-03-22', '1942-03-27', 'Куре'),
    (1, 16, '1942-04-20', '1942-05-03', 'Сасебо'),
    (0, 16, '1942-07-09', '1942-07-24', 'Куре, перестройка в быстрый транспорт'),
    /*
        по некоторым данным позже оставили только 2*4 610мм ТА,
            при этом стало 18 стволов 25мм тип 96
            6 барж Дайхацу
    */
    (1, 16, '1942-12-28', '1943-01-02', 'Сасебо'),
    (1, 16, '1943-08-10', '1943-08-24', 'Сингапур'),
    (1, 16, '1943-12-16', '1943-12-23', 'Сингапур'),
    (7, 16, '1944-01-27', '1944-01-27', 'торпедирован P316 Templar (2 торпеды)'),
    (1, 16, '1944-01-30', '1944-02-01', 'Малая, после торпедного попадания'),
    (1, 16, '1944-02-01', '1944-06-21', 'Сингапур, с помощью ремонтной базы 101'),
    (1, 16, '1944-07-12', '1944-08-06', 'Кавите, с помощью ремнтной секции 103'),
    (0, 16, '1944-08-14', '1945-01-20', 'Сасебо, перестройка в носитель кайтенов'),

    (1, 17, '1923-12-01', '1923-12-15', 'Куре'), /* неточные даты */
    (0, 17, '1925-04-01', '1925-06-30', 'Сасебо, установка платформы'), /* неточные даты */
    (0, 17, '1932-11-01', '1933-03-31', 'Кобе'),
    (7, 17, '1935-09-26', '1935-09-26', 'повреждения во время тайфуна'),
    (1, 17, '1935-10-11', '1936-05-31', 'Куре'),
    (0, 17, '1941-08-25', '1941-09-30', 'Майдзуру, перестройка в торпедный крейсер'),
    (1, 17, '1942-04-23', '1942-05-09', 'Куре'),
    (0, 17, '1942-07-09', '1942-09-09', 'Куре, перестройка в быстрый транспорт'),
    /*
        по некоторым данным позже оставили только 2*4 610мм ТА,
            при этом стало 28 стволов 25мм тип 96 (а потом и 30)
            6 барж Дайхацу
    */
    (1, 17, '1942-12-28', '1942-12-31', 'Куре'),
    (1, 17, '1943-08-10', '1943-08-24', 'Сингапур'),
    (1, 17, '1943-12-25', '1944-01-04', 'Сингапур'),
    (1, 17, '1944-02-18', '1944-02-24', 'Сингапур'),

    (0, 18, '1922-04-01', '1922-04-30', 'установка платформы'), /* неточные даты */
    (6, 18, '1923-07-07', '1923-09-14', 'Йокосука'),
    (6, 18, '1923-12-01', '1927-12-01', 'Куре, в резерве'),
    (0, 18, '1930-03-20', '1930-05-01', 'Йокосука, демонтаж платформы'),
    (6, 18, '1930-05-01', '1931-05-15', 'в резерве'),
    (6, 18, '1932-12-01', '1935-09-30', 'Йокосука, в резерве'), /* неточная дата окочания */
    (1, 18, '1933-01-30', '1933-02-24', 'Йокосука, перевод котлов на мазут'),
    (1, 18, '1933-04-12', '1934-03-31', 'Йокосука'),
    (0, 18, '1935-12-22', '1936-03-31', 'Йокосука'),
    (1, 18, '1936-05-11', '1937-03-31', 'Йокосука'),
    (6, 18, '1938-04-19', '1940-11-01', 'в резерве'),
    (0, 18, '1939-03-23', '1940-11-01', 'Майдзуру'),
    (1, 18, '1941-07-24', '1941-07-30', 'Йокосука, нанесение камуфляжа'),
    (1, 18, '1941-11-17', '1941-11-24', 'Йокосука'),
    (1, 18, '1941-12-27', '1942-01-16', 'Йокосука'),
    (1, 18, '1942-03-10', '1942-03-12', 'Йокосука'),
    (1, 18, '1942-07-16', '1942-08-02', 'Йокосука'),
    (1, 18, '1942-12-12', '1942-12-22', 'Майдзуру'),
    (0, 18, '1943-03-20', '1943-04-20', 'Майдзуру'),
    (1, 18, '1943-10-21', '1943-10-28', 'Рабаул, после попадания 250 фунтовой бомбы'),
    (1, 18, '1943-10-30', '1943-11-04', 'Трук, после попадания 250 фунтовой бомбы'),
    (0, 18, '1943-11-10', '1944-03-03', 'Майдзуру'),
    (0, 18, '1944-06-19', '1944-06-30', 'Йокосука'),
    (3, 18, '1944-09-01', '1944-09-30', 'Куре, РЛС управления огнем тип 215'); /* неточные даты */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (14, 18, 7, '1920-08-31', '1943-11-01'),
    (14, 18, 6, '1943-11-08', '1944-03-10'),
    
    (15, 18, 7, '1921-01-29', '1943-10-27'),
    (15, 18, 5, '1943-12-09', '1944-10-25'),
    
    (16, 18, 7, '1921-04-15', '1941-08-25'),
    (16, 18, 4, '1941-09-30', '1944-08-14'),
    
    (17, 18, 7, '1921-10-03', '1941-08-25'),
    (17, 18, 4, '1941-09-30', '1944-07-19'),
    
    (18, 18, 7, '1921-05-04', '1943-11-10'),
    (18, 18, 5, '1944-03-03', '1944-11-13');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (14, 55,  2, '1920-08-31', '1932-09-08'),
    (14, 50,  2, '1920-08-31', '1932-09-08'),
    (14, 52,  2, '1932-12-01', '1937-11-23'),
    (14, 49,  2, '1932-12-01', '1944-03-10'),
    (14, 44,  2, '1937-12-10', '1944-03-10'),
    (14, 45,  2, '1943-11-08', '1944-03-10'),
    
    (15, 55,  2, '1921-01-29', '1934-04-01'),
    (15, 50,  2, '1921-01-29', '1934-04-01'),
    (15, 52,  2, '1934-11-10', '1939-12-15'),
    (15, 49,  2, '1934-11-10', '1944-06-19'),
    (15, 44,  2, '1940-02-28', '1944-06-19'),
    (15, 13,  1, '1943-12-09', '1944-10-25'),
    (15, 45,  4, '1943-12-09', '1944-10-25'),
    (15, 43,  6, '1943-12-09', '1944-06-19'),
    (15, 44,  4, '1944-06-30', '1944-10-25'),
    (15, 43, 18, '1944-06-30', '1944-10-25'),
    (15, 51,  8, '1944-06-30', '1944-10-25'),
    
    (16, 55,  2, '1921-04-15', '1941-08-25'),
    (16, 50,  2, '1921-04-15', '1941-08-25'),
    (16, 44,  2, '1941-09-30', '1944-08-14'),
    (16, 45,  2, '1942-07-24', '1944-08-14'),
    (16, 13,  2, '1945-01-20',  null),
    (16, 45, 12, '1945-01-20',  null),
    (16, 43, 31, '1945-01-20',  null),
    
    (17, 55,  2, '1921-10-03', '1941-08-25'),
    (17, 50,  2, '1921-10-03', '1941-08-25'),
    (17, 44,  2, '1941-09-30', '1944-07-19'),
    (17, 45,  2, '1942-09-09', '1944-07-19'),
    
    (18, 55,  2, '1921-05-04', '1935-12-22'),
    (18, 50,  2, '1921-05-04', '1935-12-22'),
    (18, 52,  2, '1936-03-31', '1939-03-23'),
    (18, 49,  2, '1936-03-31', '1943-11-10'),
    (18, 44,  2, '1940-11-01', '1943-03-20'),
    (18, 44,  4, '1943-04-20', '1944-11-13'),
    (18, 13,  1, '1944-03-03', '1944-11-13'),
    (18, 45,  3, '1944-03-03', '1944-06-19'),
    (18, 43,  6, '1944-03-03', '1944-06-19'),
    (18, 51,  2, '1944-03-03', '1944-06-19'),
    (18, 45,  4, '1944-06-30', '1944-11-13'),
    (18, 43, 18, '1944-06-30', '1944-11-13'),
    (18, 51, 10, '1944-06-30', '1944-11-13');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (14,  1,  4, '1920-08-31', '1937-11-23'),
    (14,  6,  4, '1937-12-10', '1944-03-10'), /* неточная модель */ /* неточная дата начала */

    (15,  1,  4, '1921-01-29', '1939-12-15'),
    (15,  6,  4, '1940-02-28', '1944-10-25'), /* неточная модель */ /* неточная дата начала */
    
    (16,  1,  4, '1921-04-15', '1941-08-25'),
    (16, 14, 10, '1941-09-30', '1942-07-09'),
    (16, 14,  6, '1942-07-24', '1944-08-14'),
    
    (17,  1,  4, '1921-10-03', '1941-08-25'),
    (17, 14, 10, '1941-09-30', '1942-07-09'),
    (17, 14,  6, '1942-09-09', '1944-07-19'),
    
    (18,  1,  4, '1921-05-04', '1939-03-23'),
    (18,  6,  4, '1940-11-01', '1944-11-13'); /* неточная модель */ /* неточная дата начала */
    
    
    
/*
    4 десантные баржи Дайхацу (Daihatsu)
        Китаками с 24.07.1942
        Оои с 1942-09-09
        
    8 Кайтенов (тип 2 или тип 4)
        Китаками с 21.01.1945
*/
    
    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (14, 0, 2, '1937-11-23', '1944-03-10'), /* неточная дата начала */
    (15, 0, 2, '1940-02-28', '1944-10-25'), /* неточная дата начала */
    (16, 0, 2, '1945-01-20',  null),
    (18, 0, 2, '1940-11-01', '1944-11-13'); /* неточная дата начала */
    
    
    
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (14, 2, 2, '1920-08-31', '1944-03-10'),
    (15, 2, 2, '1921-01-29', '1944-10-25'),
    (16, 2, 2, '1921-04-15', '1941-08-25'),
    (16, 2, 2, '1942-07-24',  null),
    (17, 2, 2, '1921-10-03', '1941-08-25'),
    (17, 2, 2, '1942-09-09', '1944-07-19'),
    (18, 2, 2, '1921-05-04', '1944-11-13');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (15, 0, 1, '1943-12-09', '1944-10-25'), /* тип 21 мод 2 */
    (15, 1, 1, '1944-06-30', '1944-10-25'), /* тип 22 мод 2 */

    (16, 1, 1, '1945-01-20',  null),        /* тип 22 */
    (16, 2, 1, '1945-01-20',  null),        /* тип 13 */

    (18, 0, 1, '1943-04-20', '1944-11-13'), /* тип 21 мод 2 */
    (18, 1, 1, '1944-06-30', '1944-11-13'); /* тип 22 мод 2 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (14, 36, 3, '1920-08-31', '1940-08-01'),
    (14, 30, 3, '1941-01-31', '1944-03-10'),

    (15, 36, 3, '1921-01-29', '1939-12-15'),
    (15, 30, 3, '1940-02-28', '1944-10-25'), /* неточная дата начала */

    (16, 36, 3, '1921-04-15', '1941-08-25'),
    (16, 30, 3, '1941-09-30',  null),
    
    (17, 36, 3, '1921-10-03', '1941-08-25'),
    (17, 30, 3, '1941-09-30', '1944-07-19'),

    (18, 36, 3, '1921-05-04', '1943-03-20'),
    (18, 30, 3, '1943-04-20', '1944-11-13');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (14,  1, 1, '1924-12-01', '1932-09-08'), /* нетоная дата окончания */
    (14,  6, 1, '1932-12-01', '1937-11-23'),
    (14,  8, 1, '1937-12-10', '1943-11-01'), 
    (15,  1, 1, '1924-08-31', '1934-04-01'), /* нетоная дата окончания */
    (15,  8, 1, '1934-11-10', '1943-10-27'),
    (16,  1, 1, '1925-05-01', '1932-12-25'),
    (17,  1, 1, '1925-06-30', '1932-11-01'),
    (18,  1, 1, '1922-04-30', '1930-03-20'); /* неточная дата начала */
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (14, 41, 1, '1932-12-01', '1937-11-23'), /* E4N2 */
    (14, 30, 1, '1937-12-10', '1943-11-01'), /* E7K1 */

    (15, 41, 1, '1934-11-10', '1937-01-27'), /* E4N2 */
    (15, 30, 1, '1937-04-13', '1943-10-27'); /* E7K1 */

    