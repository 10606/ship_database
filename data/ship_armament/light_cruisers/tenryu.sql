
/*
    12 - Тенрю 
    13 - Тацута
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (12, '1919-11-20', '1942-12-18',    3200, 4130,     139.56, 12.34, 3.96,    340, 33.25, 10, 9300),
    (13, '1919-05-31', '1944-01-01',    3230, 4130,     139.56, 12.34, 3.96,    340, 33.41, 10, 9300);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 12, '1921-04-20', '1921-12-01', 'Куре, в резерве'), /* по другим данным в Сасебо */
    (6, 12, '1922-06-26', '1922-07-04', 'Порт-Артур'),
    (6, 12, '1924-12-02', '1925-12-01', 'Куре, в резерве'),
    (1, 12, '1927-06-01', '1928-01-31', 'Куре'), /* неточные даты */
    (6, 12, '1928-12-01', '1931-10-03', 'Куре, в резерве'),
    (1, 12, '1933-10-03', '1933-11-27', 'Куре'),
    (7, 12, '1934-09-26', '1934-09-26', 'повреждения во время тайфуна'),
    (1, 12, '1935-10-10', '1936-03-31', 'Куре'),
    (0, 12, '1937-07-01', '1937-07-31', 'Куре'), /* неточные даты */
    (0, 12, '1937-09-08', '1937-09-10', 'Сасебо'),
    (6, 12, '1938-12-15', '1939-11-15', 'Куре, в резерве'),
    (1, 12, '1941-05-05', '1941-05-24', 'Куре'),
    (5, 12, '1941-12-05', '1941-12-13', 'Уэйк'),
    (5, 12, '1941-12-20', '1941-12-28', 'Уэйк'),
    (0, 12, '1942-02-23', '1942-02-27', 'Трук'),
    (0, 12, '1942-06-03', '1942-06-13', 'Майдзуру'),

    (6, 13, '1921-12-01', '1922-12-01', 'Сасебо, в резерве'),
    (1, 13, '1926-04-01', '1926-12-31', 'Сасебо'), /* неточные даты */
    (1, 13, '1927-08-05', '1927-09-15', 'Сасебо'),
    (6, 13, '1927-12-01', '1934-02-15', 'Сасебо, в резерве'),
    (1, 13, '1933-04-16', '1933-05-25', 'Сасебо'),
    (7, 13, '1934-03-12', '1934-03-13', 'буксировка Томодзуру в Сасебо'),
    (0, 13, '1937-07-01', '1937-07-31', 'Сасебо'), /* неточные даты */
    (0, 13, '1940-12-01', '1940-12-31', 'Йокосука'), /* неточные даты */
    (1, 13, '1941-08-06', '1941-08-20', 'Майдзуру'),
    (5, 13, '1941-12-05', '1941-12-13', 'Уэйк'),
    (5, 13, '1941-12-20', '1941-12-28', 'Уэйк'),
    (0, 13, '1942-02-23', '1942-03-02', 'Трук'),
    (1, 13, '1942-05-24', '1942-06-13', 'Майдзуру'),
    (1, 13, '1943-01-19', '1943-03-28', 'Майдзуру'),
    (0, 13, '1943-08-12', '1943-09-09', 'Куре'),
    (0, 13, '1944-02-22', '1944-03-02', 'Куре');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (12, 18, 4, '1919-11-20', '1942-12-18'),
    (13, 18, 4, '1919-05-31', '1944-03-13');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (12, 55, 1, '1919-11-20', '1942-12-18'),
    (12, 50, 2, '1919-11-20', '1937-09-08'),
    (12, 51, 2, '1937-07-31', '1942-02-23'),
    (12, 49, 2, '1937-09-10', '1942-02-23'),
    (12, 44, 2, '1942-02-27', '1942-06-03'), /* по другим данным с декабря 1941 */
    (12, 44, 4, '1942-06-13', '1942-12-18'),
    
    (13, 55, 1, '1919-05-31', '1944-03-13'),
    (13, 50, 2, '1919-05-31', '1940-12-01'),
    (13, 51, 2, '1937-07-01', '1940-12-01'),
    (13, 44, 2, '1940-12-31', '1942-02-23'),
    (13, 44, 4, '1942-03-02', '1943-08-12'),
    (13, 44, 5, '1943-09-09', '1944-03-13');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (12, 2, 2, '1919-11-20', '1942-12-18'),
    (13, 2, 2, '1919-05-31', '1944-03-13');



/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (13, 2, 2, '1943-09-09', '1944-03-13'),
    (13, 0, 4, '1943-09-09', '1944-03-13');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (13, 1, 1, '1943-09-09', '1944-03-13'), /* тип 22 мод 4 */
    (13, 2, 1, '1944-02-22', '1944-03-13'); /* тип 13 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (12, 36, 2, '1919-11-20', '1942-06-03'),
    (12, 36, 1, '1942-06-13', '1942-12-18'),
    (12, 32, 1, '1942-06-13', '1942-12-18'),

    (13, 36, 2, '1919-05-31', '1944-03-13');


