
/*
    19 - Нагара   | Nagara   | 1922-04-21   | 1944-08-07 | торпедирован SS-246 Croaker
    20 - Исудзу   | Isuzu    | 1923-08-15   | 1945-04-07 | торпедирован у Сумбавы
    21 - Натори   | Natori   | 1922-09-15   | 1944-08-19 | торпедирован SS-365 Hardhead
    22 - Юра      | Yura     | 1923-03-20   | 1942-10-25 | авиацией, у Соломоновых островов
    23 - Абукума  | Abukuma  | 1925-05-26   | 1944-10-26 | залив Лейте, Суригао
    24 - Кину     | Kinu     | 1922-11-10   | 1944-10-26 | авиацией, залив Лейте, море Висаян
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (19, '1922-04-21', '1935-10-19',    5410, 7050,     163.0, 14.2, 5.2,   438, 36.05, 10, 14300),
    (19, '1936-03-31', '1944-08-07',    5530, 7050,     163.0, 14.2, 5.3,   495, 32,    10, 14300),

    (20, '1923-08-15', '1934-10-30',    5410, 7050,     163.0, 14.2, 5.2,   438, 36,    10, 14300),
    (20, '1935-01-15', '1944-05-01',    5530, 7050,     163.0, 14.2, 5.3,   495, 33.4,  10, 14300),
    (20, '1944-09-14', '1945-04-07',    5530, 7050,     163.0, 14.2, 5.3,   510, 33.4,  10, 14300),

    (21, '1922-09-15', '1934-05-15',    5410, 7050,     163.0, 14.2, 5.2,   438, 36,    10, 14300),
    (21, '1934-06-15', '1944-08-19',    5530, 7050,     163.0, 14.2, 5.3,   495, 32,    10, 14300),

    (22, '1923-03-20', '1934-10-01',    5410, 7050,     163.0, 14.2, 5.2,   438, 36,    10, 14300),
    (22, '1935-01-31', '1942-10-25',    5530, 7050,     163.0, 14.2, 5.3,   495, 32,    10, 14300),

    (23, '1925-05-26', '1934-06-01',    5410, 7050,     163.0, 14.2, 5.2,   438, 36,    10, 14300),
    (23, '1935-02-28', '1944-10-26',    5530, 7050,     163.0, 14.2, 5.3,   495, 31.46, 10, 14300),

    (24, '1922-11-10', '1934-02-02',    5410, 7050,     163.0, 14.2, 5.2,   438, 36.12, 10, 14300),
    (24, '1934-08-31', '1944-10-26',    5530, 7050,     163.0, 14.2, 5.3,   495, 32,    10, 14300);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 19, '1922-04-21', '1923-03-20', 'Сасебо, в резерве'),
    (0, 19, '1925-05-01', '1925-06-30', 'Сасебо'), /* неточные даты */
    (6, 19, '1926-12-01', '1927-12-20', 'Сасебо, в резерве'),
    (6, 19, '1928-05-01', '1931-02-01', 'в резерве'),
    (0, 19, '1931-12-01', '1934-01-15', 'Сасебо'),
    (1, 19, '1935-10-19', '1936-03-31', 'Сасебо, перевод котлов на мазут'),
    (1, 19, '1937-09-15', '1937-09-28', 'Сасебо'),
    (1, 19, '1941-10-01', '1941-10-30', 'Сасебо'), /* неточные даты */
    (7, 19, '1942-01-25', '1942-01-25', 'столкновение с эсминцем Хацухару'),
    (1, 19, '1942-01-27', '1942-02-01', 'Давао, после столкновения'),
    (0, 19, '1942-04-12', '1942-04-24', 'Майдзуру'),
    (1, 19, '1942-08-10', '1942-08-14', 'Куре'),
    (0, 19, '1942-12-27', '1943-01-13', 'Майдзуру'),
    (0, 19, '1943-08-20', '1943-10-07', 'Майдзуру'),
    (0, 19, '1944-01-26', '1944-04-10', 'Майдзуру'),
    (0, 19, '1944-07-02', '1944-07-10', 'Йокосука'), /* по другим данным в Куре */

    (1, 20, '1924-04-01', '1924-04-30', 'Йокосука'), /* неточные даты */
    (1, 20, '1925-06-01', '1925-08-31', 'Йокосука'),
    (7, 20, '1929-03-01', '1929-03-31', 'с крейсером Юра, испытания пружинной катапульты'), /* неточные даты */
    (0, 20, '1932-09-24', '1932-12-01', 'Йокосука'),
    (0, 20, '1933-08-29', '1934-02-17', 'Йокосука'), /* грот мачту заменили на треногу с 90см прожектором Sperry */
    (1, 20, '1934-10-30', '1935-01-15', 'Куре, модернизация радиооборудования, перевод котлов на мазут'),
    (0, 20, '1938-03-01', '1939-01-31', 'Йокосука'), /* неточная дата окончания */
    (1, 20, '1942-03-31', '1942-04-08', 'Гонг-Конг'),
    (1, 20, '1942-06-30', '1942-07-08', 'Йокосука'),
    (0, 20, '1943-01-19', '1943-01-31', 'Йокогама'),
    (7, 20, '1943-11-04', '1943-11-04', 'около Кавиенга, подорвался на мине'),
    (1, 20, '1943-11-08', '1943-11-20', 'Трук, после подрыва на мине'), /* неточная дата окончания */
    (7, 20, '1943-12-05', '1943-12-05', 'около острова Рой, поврежден бомбардировщиками с CV-10 CV-16'),
    (1, 20, '1943-12-12', '1944-01-12', 'Трук, с помощью Акаси'),
    (1, 20, '1944-01-23', '1944-01-31', 'Йокосука'),
    (0, 20, '1944-05-01', '1944-09-14', 'Йокогома, перестройка в крейсер ПВО'),
    (0, 20, '1944-10-29', '1944-11-14', 'Куре'),
    (1, 20, '1944-11-23', '1944-12-10', 'Сингапур, ремонт после торпедного попадания'),
    (0, 20, '1944-12-12', '1945-04-04', 'Сурабая'),
    
    (6, 21, '1922-09-15', '1922-12-01', 'Сасебо, в резерве'),
    (0, 21, '1931-07-27', '1932-09-30', 'Сасебо'), /* неточная дата окончания */
    (1, 21, '1934-05-15', '1934-06-15', 'Сасебо'),
    (0, 21, '1935-12-01', '1936-06-15', 'Сасебо'),
    (6, 21, '1937-12-01', '1938-12-15', 'Сасебо'),
    (0, 21, '1939-12-01', '1940-04-01', 'Майдзуру'), /* неточные даты */
    (1, 21, '1942-06-17', '1942-07-05', 'Майдзуру'),
    (7, 21, '1942-08-22', '1942-08-22', 'столкновение с торговым судном'),
    (1, 21, '1942-09-10', '1942-09-22', 'Сасебо, после столкновения'),
    (7, 21, '1943-01-09', '1943-01-09', 'торпедирован SS-199 Tautog'),
    (1, 21, '1943-02-02', '1943-05-24', 'Сингапур, с помощью ремонтной секции 101, после торпедного попадания'),
    (0, 21, '1943-06-02', '1944-03-31', 'Майдзуру'),
    (1, 21, '1944-04-12', '1944-04-16', 'Майдзуру'),
    (1, 21, '1944-07-31', '1944-08-10', 'Манила, с помощью ремонтной секции 103, после торпедного попадания'),
    
    (7, 22, '1927-01-01', '1927-02-28', 'опыты по применению E1Y1'),
    (6, 22, '1927-12-01', '1928-12-01', 'Сасебо'),
    (0, 22, '1930-03-01', '1930-04-01', 'Сасебо'), /* неточные даты */
    (7, 22, '1930-04-01', '1930-10-30', 'испытания пружинной катапульты'), /* неточные даты */
    (0, 22, '1930-11-01', '1930-11-30', 'Сасебо'), /* неточные даты */
    (1, 22, '1931-09-14', '1931-12-25', 'Сасебо'),
    (0, 22, '1933-06-13', '1934-01-25', 'Сасебо'),
    (1, 22, '1934-10-01', '1935-01-31', 'Сасебо, перевод котлов на мазут'), /* неточные даты */
    (0, 22, '1937-11-22', '1938-04-08', 'Йокосука'), /* неточные даты */
    (1, 22, '1941-12-27', '1942-01-16', 'Камрань'),
    (1, 22, '1942-04-20', '1942-05-19', 'Сасебо'),
    
    (0, 23, '1925-07-01', '1925-07-31', 'Сасебо'), /* неточные даты */
    (7, 23, '1930-10-20', '1930-10-20', 'столкновение с Китаками'),
    (1, 23, '1930-11-06', '1930-11-22', 'Йокосука, временный ремонт'),
    (1, 23, '1931-04-01', '1931-12-01', 'Куре, ремонт после столкновения'),
    (0, 23, '1932-12-10', '1933-03-15', 'Куре'),
    (1, 23, '1934-06-01', '1935-02-28', 'Йокогама'), /* неточные даты */
    (1, 23, '1935-10-19', '1936-03-31', 'Сасебо, перевод котлов на мазут'), /* неточная дата окончания */
    (0, 23, '1937-04-15', '1938-02-25', 'Сасебо'),
    (0, 23, '1941-01-01', '1941-06-30', ''), /* неточные даты */
    (1, 23, '1941-12-24', '1942-01-07', 'Куре'), /* неточная дата окончания */
    (1, 23, '1942-04-22', '1942-05-19', 'Сасебо'),
    (1, 23, '1942-07-16', '1942-08-04', 'Йокосука'),
    (0, 23, '1942-12-12', '1943-01-12', 'Сасебо'),
    (0, 23, '1943-04-17', '1943-05-17', 'Майдзуру'),
    (0, 23, '1943-10-08', '1943-11-05', 'Йокосука'),
    (0, 23, '1944-03-01', '1944-03-19', 'Оминато'), /* неточная дата начала */
    (0, 23, '1944-06-21', '1944-07-13', 'Йокосука'),
    (1, 23, '1944-08-02', '1944-08-20', 'Куре'),
    
    (1, 24, '1923-12-20', '1924-05-31', 'Куре'), /* неточная дата окончания */
    (7, 24, '1928-02-01', '1928-12-01', 'Куре, в резерве'),
    (0, 24, '1930-10-01', '1930-10-30', 'Куре, установка катапульты'), /* неточные даты */
    (0, 24, '1934-02-02', '1934-08-31', 'Куре'),
    (0, 24, '1935-10-01', '1936-03-31', 'Куре'), /* неточные даты */
    (0, 24, '1937-11-30', '1938-01-31', 'Куре'), /* неточная дата начала */
    (1, 24, '1942-05-10', '1942-06-05', 'Куре'),
    (1, 24, '1942-10-02', '1942-10-10', 'Сурабая'),
    (1, 24, '1943-01-02', '1943-01-19', 'Сингапур, с помощью ремонтной секции 101'),
    (1, 24, '1943-04-27', '1943-05-13', 'Сингапур'),
    (1, 24, '1943-06-30', '1943-07-18', 'Сурабая, с помощью ремонтной секции 102'),
    (0, 24, '1943-08-02', '1943-10-14', 'Куре'),
    (1, 24, '1944-01-08', '1944-01-16', 'Сингапур'),
    (1, 24, '1944-07-02', '1944-07-24', 'Сингапур, с помощью ремонтной секции 101');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (19, 18, 7, '1922-04-21', '1942-12-27'),
    (19, 18, 6, '1943-01-13', '1944-01-26'),
    (19, 18, 5, '1944-04-10', '1944-08-07'),

    (20, 18, 7, '1923-08-15', '1943-01-19'),
    (20, 18, 6, '1943-01-31', '1944-05-01'),

    (21, 18, 7, '1922-09-15', '1943-06-02'),
    (21, 18, 5, '1944-03-31', '1944-08-19'),

    (22, 18, 7, '1923-03-20', '1942-10-25'),

    (23, 18, 7, '1925-05-26', '1942-12-14'),
    (23, 18, 6, '1943-01-12', '1943-10-08'),
    (23, 18, 5, '1943-11-05', '1944-10-26'),

    (24, 18, 7, '1922-11-10', '1943-08-02'),
    (24, 18, 5, '1943-10-14', '1944-10-26');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (19, 55,  2, '1922-04-21', '1931-12-01'),
    (19, 50,  2, '1922-04-21', '1931-12-01'),
    (19, 49,  2, '1934-01-15', '1937-09-15'),
    (19, 52,  2, '1934-01-15', '1937-09-15'),
    (19, 53,  1, '1934-01-15', '1942-04-12'),
    (19, 52,  2, '1942-04-24', '1944-08-07'),
    (19, 44,  2, '1937-09-28', '1943-08-20'),
    (19, 44,  6, '1943-10-07', '1944-08-07'),
    (19, 45,  2, '1944-04-10', '1944-08-07'),
    (19, 13,  1, '1944-04-10', '1944-08-07'),
    (19, 43,  4, '1944-04-10', '1944-07-02'),
    (19, 43, 14, '1944-07-10', '1944-08-07'),
    (19, 51,  6, '1944-07-10', '1944-08-07'),

    (20, 55,  2, '1923-08-15', '1932-09-24'),
    (20, 50,  2, '1923-08-15', '1932-09-24'),
    (20, 52,  2, '1932-12-01', '1938-03-01'),
    (20, 49,  2, '1932-12-01', '1938-03-01'),
    (20, 53,  1, '1932-12-01', '1944-05-01'),
    (20, 44,  2, '1939-01-31', '1944-05-01'),
    (20, 45,  2, '1943-01-31', '1944-05-01'),
    (20, 13,  1, '1943-01-31', '1944-05-01'),
    (20, 13,  3, '1944-09-14', '1945-04-07'),
    (20, 45, 11, '1944-09-14', '1945-04-07'),
    (20, 43,  5, '1944-09-14', '1944-12-12'),
    (20, 43, 16, '1945-04-04', '1945-04-07'),

    (21, 55,  2, '1922-09-15', '1935-12-01'),
    (21, 50,  2, '1922-09-15', '1931-07-27'),
    (21, 53,  1, '1932-09-30', '1935-12-01'),
    (21, 49,  2, '1932-09-30', '1939-12-01'),
    (21, 52,  2, '1936-06-15', '1939-12-01'),
    (21, 47,  2, '1936-06-15', '1943-06-02'),
    (21, 44,  2, '1940-04-01', '1944-08-19'),
    (21, 13,  1, '1944-03-31', '1944-08-19'),
    (21, 45,  2, '1944-03-31', '1944-08-19'),
    (21, 43,  4, '1944-03-31', '1944-08-19'),

    (22, 55,  2, '1923-03-20', '1933-06-13'),
    (22, 50,  2, '1923-03-20', '1933-06-13'),
    (22, 52,  4, '1934-01-25', '1937-11-22'),
    (22, 49,  2, '1934-01-25', '1937-11-22'),
    (22, 52,  2, '1938-04-08', '1942-10-25'),
    (22, 44,  2, '1938-04-08', '1942-10-25'),

    (23, 55,  2, '1925-05-26', '1932-12-10'),
    (23, 50,  2, '1925-05-26', '1932-12-10'),
    (23, 49,  2, '1933-03-15', '1937-04-15'),
    (23, 52,  2, '1933-03-15', '1937-04-15'),
    (23, 53,  1, '1933-03-15', '1942-12-14'),
    (23, 52,  2, '1943-01-12', '1944-10-26'),
    (23, 44,  2, '1938-02-25', '1944-10-26'),
    (23, 45,  2, '1943-01-12', '1943-10-08'),
    (23, 45,  4, '1943-11-05', '1944-10-26'),
    (23, 13,  1, '1943-11-05', '1944-10-26'),
    (23, 43,  4, '1943-11-05', '1944-06-21'),
    (23, 43, 14, '1944-07-13', '1944-10-26'),
    (23, 51,  6, '1944-07-13', '1944-10-26'),

    (24, 55,  2, '1922-11-10', '1934-02-02'),
    (24, 50,  2, '1922-11-10', '1934-02-02'),
    (24, 49,  2, '1934-08-31', '1937-11-30'),
    (24, 52,  4, '1934-08-31', '1935-10-01'),
    (24, 52,  2, '1936-03-31', '1944-10-26'),
    (24, 44,  2, '1936-03-31', '1944-10-26'),
    (24, 45,  2, '1943-10-14', '1944-10-26'),
    (24, 13,  1, '1943-10-14', '1944-10-26');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (19,  6, 4, '1922-04-21', '1944-01-26'),
    (19, 12, 2, '1944-04-10', '1944-08-07'),

    (20,  6, 4, '1923-08-15', '1944-05-01'),
    (20, 12, 2, '1944-09-14', '1945-04-07'),

    (21,  6, 4, '1922-09-15', '1944-08-19'),

    (22,  6, 4, '1923-03-20', '1942-10-25'),

    (23,  6, 4, '1925-05-26', '1941-01-01'), /* неточная дата окончания, в 38 еще было */
    (23, 12, 2, '1941-06-30', '1944-10-26'), /* неточная дата начала, в 41 уже было */

    (24,  6, 4, '1922-11-10', '1944-10-26');

    
    
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (19, 2, 2, '1922-04-21', '1944-01-26'),
    (19, 2, 4, '1944-04-10', '1944-08-07'),

    (20, 2, 2, '1923-08-15', '1944-05-01'),
    (20, 2, 4, '1944-09-14', '1945-04-07'),
    (20, 5, 2, '1944-10-29', '1945-04-07'),

    (21, 2, 2, '1922-09-15', '1944-08-19'),

    (22, 2, 2, '1923-03-20', '1942-10-25'),

    (23, 2, 2, '1925-05-26', '1944-10-26'),

    (24, 2, 2, '1922-11-10', '1944-10-26');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (19, 0, 1, '1943-10-07', '1944-08-07'), /* тип 21 мод 2 */
    (19, 1, 1, '1944-07-10', '1944-08-07'), /* тип 22 */

    (20, 0, 1, '1943-01-31', '1945-04-07'), /* тип 21 мод 2 */
    (20, 1, 1, '1944-09-14', '1945-04-07'), /* тип 22 мод 4 */
    (20, 2, 1, '1944-11-14', '1945-04-07'), /* тип 13 */

    (21, 0, 1, '1944-03-31', '1944-08-19'), /* тип 21 мод 2 */

    (23, 0, 1, '1943-05-17', '1944-10-26'), /* тип 21 мод 2 */
    (23, 1, 1, '1944-07-13', '1944-10-26'), /* тип 22 мод 4 */

    (24, 0, 1, '1943-10-14', '1944-10-26'); /* тип 21 мод 2 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (19, 36, 4, '1922-04-21', '1937-09-15'),
    (19, 30, 3, '1937-09-28', '1944-08-07'),

    (20, 36, 4, '1923-08-15', '1938-03-01'),
    (20, 30, 3, '1939-01-31', '1944-05-01'),
    (20, 30, 1, '1944-09-14', '1945-04-07'),

    (21, 36, 4, '1922-09-15', '1939-12-01'),
    (21, 30, 3, '1940-04-01', '1944-08-19'),

    (22, 36, 4, '1923-03-20', '1937-11-22'),
    (22, 30, 3, '1938-04-08', '1942-10-25'),
    
    (23, 36, 4, '1925-05-26', '1937-04-15'),
    (23, 30, 3, '1938-02-25', '1944-10-26'),

    (24, 36, 4, '1922-11-10', '1937-11-30'),
    (24, 30, 3, '1938-01-31', '1944-10-26');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (19, 2, 1, '1922-04-21', '1925-05-01'),
    (19, 8, 1, '1934-01-15', '1944-01-26'),

    (20, 2, 1, '1923-08-15', '1925-06-01'),
    (20, 8, 1, '1934-02-17', '1944-05-01'),

    (21, 2, 1, '1922-09-15', '1931-07-27'),
    (21, 8, 1, '1932-09-30', '1943-06-02'),

    (22, 2, 1, '1923-03-20', '1930-03-01'),
    (22, 4, 1, '1930-04-01', '1930-11-01'),
    (22, 7, 1, '1930-11-30', '1933-06-13'),
    (22, 8, 1, '1934-01-25', '1942-10-25'),

    (23, 2, 1, '1925-05-26', '1925-07-01'),
    (23, 8, 1, '1933-03-15', '1944-03-01'),

    (24, 2, 1, '1922-11-10', '1930-10-01'),
    (24, 7, 1, '1930-10-30', '1934-02-02'),
    (24, 8, 1, '1934-08-31', '1944-10-26');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (19, 41, 1, '1934-01-15', '1937-09-15'), /* E4N2 */
    (19, 30, 1, '1937-09-15', '1944-01-26'), /* E7K1 */

    (20, 41, 1, '1934-02-17', '1938-03-01'), /* E4N2 */
    (20, 31, 1, '1939-01-31', '1944-05-01'), /* E7K2 */

    (21, 41, 1, '1932-09-30', '1939-12-01'), /* E4N2 */
    (21, 31, 1, '1940-04-01', '1943-06-02'), /* E7K2 */

    (22, 71, 1, '1927-01-01', '1927-02-28'), /* E1Y1 */
    (22, 41, 1, '1934-01-25', '1937-11-22'), /* E4N2 */
    (22, 30, 1, '1938-04-08', '1942-10-25'), /* E7K1 */

    (23, 41, 1, '1933-03-15', '1937-04-15'), /* E4N2 */
    (23, 30, 1, '1938-02-25', '1944-03-01'), /* E7K1 */

    (24, 41, 1, '1934-08-31', '1937-11-30'), /* E4N2 */
    (24, 30, 1, '1938-01-31', '1944-10-26'); /* E7K1 */

    