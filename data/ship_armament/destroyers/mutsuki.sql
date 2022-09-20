
/*
    143 - Муцуки   
    144 - Кисараги 
    145 - Яей      
    146 - Удзуки   
    147 - Сацуки   
    148 - Минадзуки
    149 - Фумидзуки
    150 - Нагацуки 
    151 - Кикудзуки
    152 - Микадзуки
    153 - Мотидзуки
    154 - Юдзуки   
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (143, '1926-03-25', '1942-08-25',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (144, '1925-12-21', '1941-12-11',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (145, '1926-08-28', '1942-09-11',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (146, '1926-09-14', '1944-12-12',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (147, '1925-11-15', '1944-09-21',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (148, '1927-03-22', '1944-06-06',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (149, '1926-07-03', '1944-02-18',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (150, '1927-04-30', '1943-07-06',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (151, '1926-11-20', '1942-05-05',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (152, '1927-05-05', '1943-07-29',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (153, '1927-10-31', '1943-10-24',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700),
    (154, '1927-07-25', '1944-12-12',    1315, 1445,   102.7, 9.16, 2.96,  154, 37.2, 14, 6700);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 143, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 143, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 143, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 143, '1934-12-01', '1936-01-31', 'Сасебо, в резерве'), /* неточные даты */
    (0, 143, '1937-01-01', '1937-02-28', 'Йокосука'), /* неточные даты */
    (1, 143, '1941-03-01', '1941-03-31', 'Сасебо'), /* неточные даты */
    (1, 143, '1942-01-03', '1942-01-07', 'Трук'),
    (0, 143, '1942-01-16', '1942-01-17', 'Рабаул'),
    (1, 143, '1942-07-16', '1942-08-14', 'Сасебо'),

    (6, 144, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 144, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 144, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 144, '1934-12-01', '1936-01-31', 'Сасебо, в резерве'), /* неточные даты */
    (0, 144, '1937-01-01', '1937-02-28', 'Йокосука'), /* неточные даты */
    (1, 144, '1941-03-01', '1941-03-31', 'Сасебо'), /* неточные даты */

    (6, 145, '1928-01-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (0, 145, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (6, 145, '1934-12-01', '1936-03-31', 'Сасебо, в резерве'), /* неточные даты */
    (0, 145, '1937-01-01', '1937-06-30', 'Сасебо'), /* неточные даты */
    (1, 145, '1942-01-03', '1942-01-07', 'Трук'),
    (0, 145, '1942-01-16', '1942-01-17', 'Рабаул'),
    (0, 145, '1942-07-09', '1942-08-15', 'Сасебо, ПВО'), /* установка 13.2мм тип 93 и 25мм тип 96, количество неизвестно */

    (6, 146, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 146, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 146, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 146, '1934-12-01', '1936-01-31', 'Сасебо, в резерве'), /* неточные даты */
    (0, 146, '1937-01-01', '1937-02-28', 'Йокосука'), /* неточные даты */
    (1, 146, '1942-05-28', '1942-06-08', 'Сасебо'),
    (0, 146, '1942-09-14', '1942-12-03', 'Сасебо, укорочена корма для приема десантных барж'),
    (7, 146, '1943-01-05', '1943-01-05', 'Рабаул, поврежден близкими разрывами бомб'),
    (1, 146, '1943-01-21', '1943-04-02', 'Трук, с помощью Акаси'),
    (0, 146, '1943-06-03', '1943-10-09', 'Сасебо, ПВО'), /* установка 13.2мм тип 93 и 25мм тип 96, количество неизвестно */
    (0, 146, '1944-02-25', '1944-03-03', 'Сасебо'),
    (1, 146, '1944-03-25', '1944-03-27', 'Трук'),
    (0, 146, '1944-08-21', '1944-09-05', 'Куре'),
    (7, 146, '1944-11-09', '1944-11-09', 'столкновение с авианосцем Дзюнье, сорвана грот-мачта с радаром тип 13'),
    (0, 146, '1944-11-17', '1944-11-23', 'Куре'),

    (6, 147, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 147, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 147, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 147, '1933-08-01', '1934-09-30', 'Куре, в резерве'), /* неточные даты */
    (6, 147, '1936-04-01', '1937-11-30', 'Куре'), /* неточные даты */
    (0, 147, '1938-01-01', '1938-12-31', 'Куре'), /* неточные даты */
    (0, 147, '1942-10-19', '1942-11-30', 'Сасебо, модернизация ПВО'), /* установка 25мм тип 96, количество неизвестно */
    (7, 147, '1943-05-28', '1943-05-29', 'к юго-востоку Бугенвиля, сил на рифы'),
    (1, 147, '1943-05-29', '1943-06-03', 'Рабаул'),
    (7, 147, '1943-07-17', '1943-07-17', 'Шортленд, поврежден близкими разрывами бомб'),
    (1, 147, '1943-07-18', '1943-07-27', 'Рабаул'), /* неточные даты */
    (0, 147, '1943-11-17', '1943-12-07', 'Сасебо, гидроаккустическое оборудование'),
    (0, 147, '1943-08-10', '1943-08-31', 'Куре'),
    (0, 147, '1944-02-11', '1944-03-30', 'Сасебо'),
    (0, 147, '1944-06-21', '1944-06-22', 'Йокосука'),

    (6, 148, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 148, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 148, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 148, '1933-08-01', '1934-09-30', 'Куре, в резерве'), /* неточные даты */
    (6, 148, '1936-04-01', '1937-11-30', 'Куре'), /* неточные даты */
    (0, 148, '1938-01-01', '1938-12-31', 'Куре'), /* неточные даты */
    (0, 148, '1942-08-18', '1942-09-30', 'Сасебо, гидроаккустическое оборудование'),
    (0, 148, '1943-02-06', '1943-02-23', 'Сасебо'),
    (0, 148, '1943-08-10', '1943-09-12', 'Куре'),
    (7, 148, '1943-10-12', '1943-10-12', 'Рабаул, поврежден близкими разрывами бомб, орудия No 1, No 2 временно выведены из строя'),

    (6, 149, '1927-12-01', '1931-09-15', 'Сасебо, в резерве'), /* неточные даты */
    (1, 149, '1931-09-15', '1931-12-31', 'Сасебо'), /* неточные даты */
    (0, 149, '1932-03-22', '1932-09-15', 'Сасебо'), /* неточные даты */
    (6, 149, '1933-08-01', '1934-09-30', 'Куре, в резерве'), /* неточные даты */
    (6, 149, '1936-04-01', '1937-11-30', 'Куре'), /* неточные даты */
    (0, 149, '1938-01-01', '1938-12-31', 'Куре'), /* неточные даты */
    (0, 149, '1942-07-17', '1942-08-29', 'Сасебо, гидроаккустическое оборудование'),
    (7, 149, '1942-09-16', '1942-09-16', 'столкновение с Качидоки Мару'),
    (1, 149, '1942-09-16', '1942-10-09', 'Мако'),
    (1, 149, '1942-10-12', '1942-10-30', 'Сасебо'),
    (1, 149, '1942-10-30', '1942-12-28', 'Нагасаки'),
    (0, 149, '1943-05-11', '1943-08-18', 'Сасебо'),
    (7, 149, '1943-11-02', '1943-11-02', 'Рабаул, поврежден авиацией'),
    (1, 149, '1943-11-14', '1943-11-20', 'Трук'),

    (0, 150, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (0, 150, '1938-01-01', '1938-12-31', ''), /* неточные даты */
    (0, 150, '1942-09-19', '1942-10-28', 'Сасебо, гидроаккустическое оборудование'),

    (0, 151, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (0, 151, '1938-01-01', '1938-12-31', ''), /* неточные даты */
    (7, 151, '1942-05-04', '1942-05-04', 'атакован авиацией, 1 торпеда в правый борт между котельной No 3 и машинным'),
    /* 07.1943 - 10.1943 обследование */
    /* 11.06.1944 отбуксирован в бухту, брошен на мели */

    (0, 152, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (6, 152, '1934-12-01', '1936-11-30', 'Сасебо, в резерве'), /* неточные даты */
    (0, 152, '1941-01-01', '1941-07-31', 'Сасебо'), /* неточные даты */
    (0, 152, '1943-03-26', '1943-06-10', 'Сасебо'),

    (0, 153, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (6, 153, '1934-12-01', '1937-01-15', 'Сасебо, в резерве'), /* неточные даты */
    (0, 153, '1937-01-15', '1938-02-28', 'Сасебо'), /* неточные даты */
    (1, 153, '1942-01-03', '1942-01-07', 'Трук'),
    (0, 153, '1942-01-16', '1942-01-17', 'Рабаул'),
    (1, 153, '1942-07-13', '1942-08-27', 'Сасебо'),
    (0, 153, '1943-02-02', '1943-02-23', 'Сасебо'),
    (0, 153, '1943-08-14', '1943-09-18', 'Сасебо'),

    (0, 154, '1932-03-01', '1932-09-30', 'Сасебо'), /* неточные даты */
    (6, 154, '1934-12-01', '1936-11-30', 'Сасебо, в резерве'), /* неточные даты */
    (0, 154, '1941-01-01', '1941-07-31', 'Сасебо'), /* неточные даты */
    (1, 154, '1943-01-02', '1943-01-31', 'Сасебо'), /* неточная дата окончания */
    (0, 154, '1943-12-07', '1944-01-22', 'Йокосука'),
    (0, 154, '1944-05-29', '1944-06-20', 'Сасебо');

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (143, 0, 4, '1926-03-25', '1942-08-25'),
    (144, 0, 4, '1925-12-21', '1941-12-11'),
    (145, 0, 4, '1926-08-28', '1942-09-11'),
    (146, 0, 4, '1926-09-14', '1943-06-03'),
    (146, 0, 2, '1943-10-09', '1944-12-12'), /* No 1 и No 3 */
    (147, 0, 4, '1925-11-15', '1943-08-10'),
    (147, 0, 3, '1943-08-31', '1944-09-21'), /* No 1, No 2, No 3 */
    (148, 0, 4, '1927-03-22', '1943-08-10'),
    (148, 0, 3, '1943-09-12', '1944-06-06'), /* No 1, No 2, No 3 */
    (149, 0, 4, '1926-07-03', '1943-05-11'),
    (149, 0, 2, '1943-08-18', '1944-02-18'), /* No 1 и No 3 */
    (150, 0, 4, '1927-04-30', '1943-07-06'),
    (151, 0, 4, '1926-11-20', '1942-05-05'),
    (152, 0, 4, '1927-05-05', '1943-03-26'),
    (152, 0, 2, '1943-06-10', '1943-07-29'), /* No 1 и No 3 */
    (153, 0, 4, '1927-10-31', '1943-08-14'),
    (153, 0, 3, '1943-09-18', '1943-10-24'), /* No 1, No 2, No 3 */
    (154, 0, 4, '1927-07-25', '1943-12-07'),
    (154, 0, 2, '1944-01-22', '1944-12-12'); /* No 1 и No 3 */
        
        
        
/* ПВО */
/* по данным Альпакова      7.7мм были заменены на спаренные 13мм тип 93 в 1937-1938 */
/* по данным combinedfleet  7.7мм были заменены на спаренные 25мм тип 96 в 1942-1943 */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (143, 58, 2, '1926-03-25', '1937-01-01'),
    (143, 52, 2, '1937-02-28', '1942-01-16'), 
    (143, 44, 2, '1937-02-28', '1942-08-25'), 
    (143, 52, 3, '1942-01-17', '1942-08-25'),

    (144, 58, 2, '1925-12-21', '1937-01-01'),
    (144, 52, 2, '1937-02-28', '1941-12-11'),
    (144, 44, 2, '1937-02-28', '1941-12-11'),

    (145, 58, 2, '1926-08-28', '1937-01-01'),
    (145, 52, 2, '1937-06-30', '1942-01-16'),
    (145, 44, 2, '1937-06-30', '1942-09-11'),
    (145, 52, 3, '1942-01-16', '1942-09-11'),
    /* с 09.07.1942 по 15.08.1942 было усилено 13.2мм тип 93 и 25мм тип 96 (по данным combinedfleet) */

    (146, 58, 2, '1926-09-14', '1937-01-01'),
    (146, 52, 2, '1937-02-28', '1943-06-03'),
    (146, 44, 2, '1937-02-28', '1944-12-12'),
    /* с 03.06.1943 по 09.10.1943 было усилено 13.2мм тип 93 и 25мм тип 96 (по данным combinedfleet) */
    (146, 52, 4, '1943-10-09', '1944-08-21'), /* неточное количество */
    (146, 45, 2, '1943-10-09', '1944-12-12'),
    (146, 52, 2, '1944-09-05', '1944-12-12'), /* неточное количесnво (-= 2) */
    (146, 43, 2, '1944-02-25', '1944-08-21'),
    (146, 43, 7, '1944-09-05', '1944-12-12'),

    (147, 58, 2, '1925-11-15', '1938-01-01'),
    (147, 52, 2, '1938-12-31', '1943-08-10'),
    (147, 44, 2, '1938-12-31', '1944-09-21'),
    (147, 45, 2, '1943-08-31', '1944-06-21'),
    (147, 52, 3, '1943-08-31', '1944-02-11'),
    (147, 52, 2, '1944-03-30', '1944-09-21'),
    (147, 43, 5, '1944-03-30', '1944-06-21'),
    (147, 45, 3, '1944-06-22', '1944-09-21'),
    (147, 43, 9, '1944-06-22', '1944-09-21'),
    (147, 51, 5, '1944-06-22', '1944-09-21'),

    (148, 58, 2, '1927-03-22', '1938-01-01'),
    (148, 52, 2, '1938-12-31', '1943-02-06'),
    (148, 44, 2, '1938-12-31', '1943-02-06'),
    (148, 44, 3, '1943-02-23', '1944-06-06'),
    (148, 52, 3, '1943-02-23', '1943-08-10'), /* одна установка была добавлена раньше, ее переместили */
    (148, 45, 2, '1943-09-12', '1944-06-06'),
    (148, 52, 4, '1943-09-12', '1944-06-06'),

    (149, 58, 2, '1926-07-03', '1938-01-01'),
    (149, 52, 2, '1938-01-01', '1943-05-11'),
    (149, 44, 2, '1938-01-01', '1944-02-18'),
    (149, 45, 2, '1943-08-18', '1944-02-18'),
    (149, 52, 5, '1943-08-18', '1944-02-18'),
    
    (150, 58, 2, '1927-04-30', '1938-01-01'),
    (150, 52, 2, '1938-12-31', '1943-07-06'),
    (150, 44, 2, '1938-12-31', '1943-07-06'),

    (151, 58, 2, '1926-11-20', '1938-01-01'),
    (151, 52, 2, '1938-12-31', '1942-05-05'),
    (151, 44, 2, '1938-12-31', '1942-05-05'),

    (152, 58, 2, '1927-05-05', '1941-01-01'),
    (152, 52, 2, '1941-07-31', '1943-07-29'),
    (152, 44, 2, '1941-07-31', '1943-07-29'),
    (152, 45, 2, '1943-06-10', '1943-07-29'),

    (153, 58, 2, '1927-10-31', '1937-01-15'),
    (153, 52, 2, '1938-02-28', '1942-01-16'),
    (153, 44, 2, '1938-02-28', '1943-02-02'),
    (153, 52, 3, '1942-01-17', '1943-10-24'),
    (153, 44, 3, '1943-02-23', '1943-08-14'),
    (153, 45, 2, '1943-09-18', '1943-10-24'),
    (153, 44, 4, '1943-09-18', '1943-10-24'),

    (154, 58, 2, '1927-07-25', '1941-01-01'),
    (154, 52, 2, '1941-07-31', '1943-12-07'),
    (154, 44, 2, '1941-07-31', '1944-12-12'),
    (154, 52, 4, '1944-01-22', '1944-05-29'),
    (154, 45, 2, '1944-01-22', '1944-12-12'),
    (154, 43, 5, '1944-06-20', '1944-12-12'),
    (154, 52, 2, '1944-06-20', '1944-12-12');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (143, 9, 2, '1926-03-25', '1942-08-25'),
    (144, 9, 2, '1925-12-21', '1941-12-11'),
    (145, 9, 2, '1926-08-28', '1942-09-11'),
    (146, 9, 2, '1926-09-14', '1943-06-03'),
    (146, 9, 1, '1943-10-09', '1944-12-12'), /* носовой */
    (147, 9, 2, '1925-11-15', '1944-09-21'),
    (148, 9, 2, '1927-03-22', '1944-06-06'),
    (149, 9, 2, '1926-07-03', '1943-05-11'),
    (149, 9, 1, '1943-08-18', '1944-02-18'), /* носовой */
    (150, 9, 2, '1927-04-30', '1943-07-06'),
    (151, 9, 2, '1926-11-20', '1942-05-05'),
    (152, 9, 2, '1927-05-05', '1943-03-26'),
    (152, 9, 1, '1943-06-10', '1943-07-29'), /* носовой */
    (153, 9, 2, '1927-10-31', '1943-10-24'),
    (154, 9, 2, '1927-07-25', '1943-12-07'),
    (154, 9, 1, '1944-01-22', '1944-12-12'); /* носовой */
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (146, 1, 1, '1944-09-05', '1944-12-12'), /* тип 22 мод 4 */
    (146, 2, 1, '1944-09-05', '1944-11-09'), /* тип 13 */
    /* столкновение с Дзюнье */
    (146, 2, 1, '1944-11-23', '1944-12-12'), /* тип 13 */

    /* по данным combinedfleet Сацуки с 31.08.1943 имел радар детектор */
    (147, 2, 1, '1944-03-30', '1944-09-21'), /* тип 13 */

    /* по данным combinedfleet Минадзуки с 12.09.1943 имел радар детектор */

    /* по данным combinedfleet Мотидзуки с 18.09.1943 имел радар детектор */

    (154, 1, 1, '1944-06-20', '1944-12-12'), /* тип 22 мод 4 */
    (154, 2, 1, '1944-06-20', '1944-12-12'); /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (143, 37, 1, '1926-03-25', '1942-08-25'),
    (144, 37, 1, '1925-12-21', '1941-12-11'),
    (145, 37, 1, '1926-08-28', '1942-09-11'),
    (146, 37, 1, '1926-09-14', '1943-06-03'),
    (147, 37, 1, '1925-11-15', '1944-09-21'),
    (148, 37, 1, '1927-03-22', '1944-06-06'),
    (149, 37, 1, '1926-07-03', '1944-02-18'),
    (150, 37, 1, '1927-04-30', '1943-07-06'),
    (151, 37, 1, '1926-11-20', '1942-05-05'),
    (152, 37, 1, '1927-05-05', '1943-07-29'),
    (153, 37, 1, '1927-10-31', '1943-10-24'),
    (154, 37, 1, '1927-07-25', '1944-12-12');
    
    
    
/*
    с 1937-1938
        сонар тип 93
        гидрофон тип 92
*/
    
    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (143, 5, 2, '1932-09-15', '1937-01-01'),
    (143, 0, 2, '1937-02-28', '1942-08-25'),

    (144, 5, 2, '1932-09-15', '1937-01-01'),
    (144, 0, 2, '1937-02-28', '1941-12-11'),

    (145, 5, 2, '1932-09-30', '1937-01-01'),
    (145, 0, 2, '1937-06-30', '1942-09-11'),
        
    (146, 5, 2, '1932-09-15', '1937-01-01'),
    (146, 0, 2, '1937-02-28', '1944-12-12'),

    (147, 5, 2, '1932-09-15', '1938-01-01'),
    (147, 0, 2, '1938-12-31', '1944-09-21'),

    (148, 5, 2, '1932-09-15', '1938-01-01'),
    (148, 0, 2, '1938-12-31', '1944-06-06'),

    (149, 5, 2, '1932-09-15', '1938-01-01'),
    (149, 0, 2, '1938-12-31', '1944-02-18'),

    (150, 5, 2, '1932-09-30', '1938-01-01'),
    (150, 0, 2, '1938-12-31', '1943-07-06'),

    (151, 5, 2, '1932-09-30', '1938-01-01'),
    (151, 0, 2, '1938-12-31', '1942-05-05'),
        
    (152, 5, 2, '1932-09-30', '1941-01-01'),
    (152, 0, 2, '1941-07-31', '1943-07-29'),
        
    (153, 5, 2, '1932-09-30', '1937-01-15'),
    (153, 0, 2, '1938-02-28', '1943-10-24'),
        
    (154, 5, 2, '1932-09-30', '1941-01-01'),
    (154, 0, 2, '1941-07-31', '1944-12-12');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (143, 3, 2, '1932-09-15', '1942-08-25'),
    (144, 3, 2, '1932-09-15', '1941-12-11'),
    (145, 3, 2, '1932-09-30', '1942-09-11'),
    (146, 3, 2, '1932-09-15', '1944-12-12'),
    (147, 3, 2, '1932-09-15', '1944-09-21'),
    (148, 3, 2, '1932-09-15', '1944-06-06'),
    (149, 3, 2, '1932-09-15', '1944-02-18'),
    (150, 3, 2, '1932-09-30', '1943-07-06'),
    (151, 3, 2, '1932-09-30', '1942-05-05'),
    (152, 3, 2, '1932-09-30', '1943-07-29'),
    (153, 3, 2, '1932-09-30', '1943-10-24'),
    (154, 3, 2, '1932-09-30', '1944-12-12');
    
    
