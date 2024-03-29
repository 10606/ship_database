
/*
    520 - Отори   
    521 - Хиедори 
    522 - Хаябуса 
    523 - Касасаги
    524 - Кидзи   
    525 - Кари    
    526 - Саги    
    527 - Хато    
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (520, '1936-10-10', '1944-06-12',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (521, '1936-12-20', '1944-11-17',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (522, '1936-12-07', '1944-09-24',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (523, '1937-01-25', '1943-09-26',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (524, '1937-07-31',  null,          840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (525, '1937-09-20', '1945-07-16',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (526, '1937-07-31', '1944-11-08',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400),
    (527, '1937-08-07', '1944-10-16',   840, 1040,  88.5, 8.18, 2.76,   113, 30.5,  14, 6400);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 520, '1942-04-05', '1943-04-17', 'Гонг-Конг'),
    (1, 520, '1942-11-23', '1943-12-05', 'Рабаул'),
    (0, 520, '1943-05-21', '1943-06-07', 'Йокосука'), /* неточные даты */ /* по данным Альпакова с 04.43 по 05.43 в Сурабае, с помощью ремонтной секции 102 */
    (1, 520, '1943-09-01', '1943-09-15', 'Майдзуру'),

    (1, 521, '1942-03-03', '1943-03-27', 'Гонг-Конг'),
    (0, 521, '1942-12-20', '1943-01-31', 'Сасебо'), /* неточные данные */
    (1, 521, '1943-11-30', '1943-12-18', 'Майдзуру'), 
    (7, 521, '1944-03-03', '1944-03-03', 'Сайпан, поврежден'),
    (0, 521, '1944-03-19', '1944-03-30', 'Йокосука'), /* по данным Альпакова в апреле в Такао */
    (1, 521, '1944-08-05', '1944-08-07', 'Сасебо'),

    (1, 522, '1942-04-04', '1942-04-30', 'Мако'), /* неточные даты */
    (1, 522, '1942-07-27', '1942-08-06', 'Сасебо'), /* неточные даты */
    (1, 522, '1942-09-12', '1942-09-19', 'Сасебо'),
    (0, 522, '1942-11-01', '1943-01-20', 'Сасебо'), /* неточные даты */
    (1, 522, '1943-01-30', '1943-02-05', 'Мако'),
    (1, 522, '1943-05-15', '1943-06-19', 'Майдзуру'), /* неточные даты */
    (0, 522, '1944-04-13', '1944-04-27', 'Манила, с помощью ремонтной секции 103'), /* неточные даты */
    
    (1, 523, '1942-04-07', '1942-04-17', 'Гонг-Конг'),
    (1, 523, '1942-09-19', '1942-09-23', 'Гонг-Конг'),
    (1, 523, '1942-10-18', '1942-10-25', 'Гонг-Конг'),
    (7, 523, '1943-02-13', '1943-02-18', 'устье реки Гуанчжоу, поврежден'),
    (0, 523, '1943-02-21', '1943-03-25', 'Гонг-Конг'), /* по данным Альпакова с 01.43 по 03.43 в Сурабае, с помощью ремонтной секции 102 (Сурабая -> Гонг-Конг 3400км) */

    (1, 524, '1942-06-17', '1942-07-02', 'Куре'),
    (1, 524, '1943-01-06', '1943-01-13', 'Циндао'),
    (0, 524, '1943-02-15', '1943-03-15', 'Майдзуру'), /* неточные данные */
    (7, 524, '1943-04-14', '1943-04-14', 'сопровождение транспортов до Саумлаки, поврежден авиацией'),
    (1, 524, '1943-04-28', '1943-05-07', 'Сурабая'),
    (1, 524, '1943-08-23', '1943-09-22', 'Сурабая'),
    (1, 524, '1944-03-11', '1944-03-30', 'Сурабая'),
    (7, 524, '1944-06-03', '1944-06-03', 'около Маноквари, поврежден авиацией'),
    (0, 524, '1944-07-09', '1944-09-10', 'Сурабая, с помощью ремонтной секции 102'), /* неточная дата окончания */
    (0, 524, '1945-01-01', '1945-01-31', 'Сурабая'), /* неточные даты */
    (7, 524, '1945-08-15', '1945-08-31', 'Сурабая, передан американцам'), /* неточные даты */

    (1, 525, '1942-06-23', '1942-07-01', 'Сингапур'),
    (7, 525, '1942-11-30', '1942-11-30', 'Андамансике острова, поврежден авиацией'),
    (1, 525, '1942-12-07', '1942-12-18', 'Сингапур'),
    (7, 525, '1943-02-01', '1943-02-01', 'Рангун (Бирма), поврежден авиацией'),
    (1, 525, '1943-02-06', '1943-02-20', 'Пенанг'),
    (0, 525, '1943-03-29', '1943-04-09', 'Сингапур'), /* по данным Альпакова с 01.1943 по конец 02.1943 в Майдзуру (Рангун -> Майдзуру 7200км) */
    (1, 525, '1943-09-19', '1943-09-29', 'Сингапур'),
    (7, 525, '1944-02-24', '1944-02-24', 'Малакский пролив, подорвался на мине'),
    (1, 525, '1944-02-19', '1944-04-17', 'Сингапур'),
    (0, 525, '1944-06-01', '1944-06-30', 'Сурабая, с помощью ремонтной секции 102'), /* неточные даты */

    (1, 526, '1942-02-14', '1942-02-21', 'Йокосука'),
    (1, 526, '1942-11-02', '1942-11-12', 'Куре'),
    (0, 526, '1943-02-01', '1943-03-31', 'Майдзуру'), /* неточные даты */
    (1, 526, '1943-05-25', '1943-05-29', 'Куре'),
    (7, 526, '1943-08-31', '1943-08-31', 'Восточно-Китайское море, торпедирован SS-197 Seawolf'),
    (1, 526, '1944-01-23', '1944-01-31', 'Куре'),
    (1, 526, '1944-05-23', '1944-06-02', 'Саеки'),
    (0, 526, '1944-08-18', '1944-08-27', 'Саеки'), /* по данным Альпакова в августе в Маниле, с помощью ремонтной секции 103 */

    (1, 527, '1942-05-16', '1942-06-04', 'Куре'),
    (1, 527, '1942-07-04', '1942-07-20', 'Куре'),
    (0, 527, '1943-02-12', '1943-02-20', 'Куре'), /* по данным Альпакова с 01.1943 по 02.1943 в Майдзуру */
    (1, 527, '1943-10-28', '1943-11-08', 'Куре'),
    (1, 527, '1944-02-29', '1944-03-10', 'Куре'), /* неточные даты */
    (0, 527, '1944-08-16', '1944-08-22', 'Такао'); /* неточные даты */ /* по данным Альпакова в мае */

    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (520, 70, 3, '1936-10-10', '1943-05-21'), /* неточная дата окончания */
    (520, 70, 2, '1943-06-07', '1944-06-12'), /* No 1, No 2 */ /* неточная дата начала */

    (521, 70, 3, '1936-12-20', '1942-12-20'),
    (521, 70, 2, '1943-01-31', '1944-11-17'), /* No 1, No 2 */

    (522, 70, 3, '1936-12-07', '1942-11-01'),
    (522, 70, 2, '1943-01-20', '1944-09-24'), /* No 1, No 2 */

    (523, 70, 3, '1937-01-25', '1943-02-21'),
    (523, 70, 2, '1943-03-25', '1943-09-26'), /* No 1, No 2 */

    (524, 70, 3, '1937-07-31', '1943-02-15'),
    (524, 70, 2, '1943-03-15',  null), /* No 1, No 2 */

    (525, 70, 3, '1937-09-20', '1943-03-29'), /* неточная дата окончания */
    (525, 70, 2, '1943-04-09', '1945-07-16'), /* No 1, No 2 */ /* неточная дата начала */

    (526, 70, 3, '1937-07-31', '1943-02-01'),
    (526, 70, 2, '1943-03-31', '1944-11-08'), /* No 1, No 2 */

    (527, 70, 3, '1937-08-07', '1943-02-12'),
    (527, 70, 2, '1943-02-20', '1944-10-16'); /* No 1, No 2 */
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (520, 47, 1, '1936-10-10', '1943-05-21'), /* неточная дата окончания */
    (520, 45, 2, '1943-06-07', '1944-06-12'), /* неточная дата начала */
    (520, 43, 4, '1943-06-07', '1944-06-12'), /* неточная дата начала */

    (521, 47, 1, '1936-12-20', '1942-12-20'),
    (521, 45, 2, '1943-01-31', '1944-11-17'), /* по другим данным 3*2 */
    (521, 43, 1, '1943-01-31', '1944-03-19'),
    (521, 43, 5, '1944-03-30', '1944-11-17'),

    (522, 47, 1, '1936-12-07', '1942-11-01'),
    (522, 45, 2, '1943-01-20', '1944-09-24'),
    (522, 43, 1, '1943-01-20', '1944-04-13'),
    (522, 43, 5, '1944-04-27', '1944-09-24'),

    (523, 47, 1, '1937-01-25', '1943-02-21'),
    (523, 45, 3, '1943-03-25', '1943-09-26'),
    (523, 43, 1, '1943-03-25', '1943-09-26'),

    (524, 47, 1, '1937-07-31', '1943-02-15'),
    (524, 45, 2, '1943-03-15', '1944-07-09'),
    (524, 43, 1, '1943-03-15', '1945-01-01'),
    (524, 45, 3, '1944-09-10',  null),
    (524, 43, 4, '1945-01-31',  null),

    (525, 47, 1, '1937-09-20', '1943-03-29'), /* неточная дата окончания */
    (525, 45, 2, '1943-04-09', '1944-06-01'),
    (525, 45, 3, '1944-06-30', '1945-07-16'),
    (525, 43, 1, '1943-04-09', '1945-07-16'), /* неточная дата начала */

    (526, 47, 1, '1937-07-31', '1943-02-01'),
    (526, 45, 2, '1943-03-31', '1944-11-08'),
    (526, 43, 1, '1943-03-31', '1944-08-18'),
    (526, 43, 5, '1944-08-27', '1944-11-08'),

    (527, 47, 1, '1937-08-07', '1943-02-12'),
    (527, 45, 2, '1943-02-20', '1944-10-16'),
    (527, 43, 1, '1943-02-20', '1944-08-16'),
    (527, 43, 4, '1944-08-22', '1944-10-16');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (520, 4, 1, '1936-10-10', '1944-06-12'),
    (521, 4, 1, '1936-12-20', '1944-11-17'),
    (522, 4, 1, '1936-12-07', '1944-09-24'),
    (523, 4, 1, '1937-01-25', '1943-09-26'),
    (524, 4, 1, '1937-07-31',  null),
    (525, 4, 1, '1937-09-20', '1945-07-16'),
    (526, 4, 1, '1937-07-31', '1944-11-08'),
    (527, 4, 1, '1937-08-07', '1944-10-16');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (524, 2, 1, '1945-01-31',  null), /* тип 13 */
    (526, 2, 1, '1944-08-27', '1944-11-08'); /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (520, 32, 1, '1936-10-10', '1944-06-12'),
    (521, 32, 1, '1936-12-20', '1944-11-17'),
    (522, 32, 1, '1936-12-07', '1944-09-24'),
    (523, 32, 1, '1937-01-25', '1943-09-26'),
    (524, 32, 1, '1937-07-31',  null),
    (525, 32, 1, '1937-09-20', '1945-07-16'),
    (526, 32, 1, '1937-07-31', '1944-11-08'),
    (527, 32, 1, '1937-08-07', '1944-10-16');
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (520, 0, 1, '1936-10-10', '1943-05-21'), /* неточная дата окончания */
    (520, 0, 2, '1943-06-07', '1944-06-12'), /* неточная дата начала */

    (521, 0, 1, '1936-12-20', '1942-12-20'),
    (521, 0, 2, '1943-01-31', '1944-11-17'),

    (522, 0, 1, '1936-12-07', '1942-11-01'),
    (522, 0, 2, '1943-01-20', '1944-09-24'),

    (523, 0, 1, '1937-01-25', '1943-02-21'),
    (523, 0, 2, '1943-03-25', '1943-09-26'),

    (524, 0, 1, '1937-07-31', '1943-02-15'),
    (524, 0, 2, '1943-03-15',  null),

    (525, 0, 1, '1937-09-20', '1943-03-29'), /* неточная дата окончания */
    (525, 0, 2, '1943-04-09', '1945-07-16'), /* неточная дата начала */

    (526, 0, 1, '1937-07-31', '1943-02-01'),
    (526, 0, 2, '1943-03-31', '1944-11-08'),

    (527, 0, 1, '1937-08-07', '1943-02-12'),
    (527, 0, 2, '1943-02-20', '1944-10-16');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (520, 4, 4, '1936-10-10', '1944-06-12'),
    (520, 3, 2, '1936-10-10', '1943-05-21'), /* неточная дата окончания */
    (520, 3, 4, '1943-06-07', '1944-06-12'), /* неточная дата начала */

    (521, 4, 4, '1936-12-20', '1944-11-17'),
    (521, 3, 2, '1936-12-20', '1942-12-20'),
    (521, 3, 4, '1943-01-31', '1944-11-17'),

    (522, 4, 4, '1936-12-07', '1944-09-24'),
    (522, 3, 2, '1936-12-07', '1942-11-01'),
    (522, 3, 4, '1943-01-20', '1944-09-24'),

    (523, 4, 4, '1937-01-25', '1943-09-26'),
    (523, 3, 2, '1937-01-25', '1943-02-21'),
    (523, 3, 4, '1943-03-25', '1943-09-26'),

    (524, 4, 4, '1937-07-31',  null),
    (524, 3, 2, '1937-07-31', '1943-02-15'),
    (524, 3, 4, '1943-03-15',  null),

    (525, 4, 4, '1937-09-20', '1945-07-16'),
    (525, 3, 2, '1937-09-20', '1943-03-29'), /* неточная дата окончания */
    (525, 3, 4, '1943-04-09', '1945-07-16'), /* неточная дата начала */

    (526, 4, 4, '1937-07-31', '1944-11-08'),
    (526, 3, 2, '1937-07-31', '1943-02-01'),
    (526, 3, 4, '1943-03-31', '1944-11-08'),

    (527, 4, 4, '1937-08-07', '1944-10-16'),
    (527, 3, 2, '1937-08-07', '1943-02-12'),
    (527, 3, 4, '1943-02-20', '1944-10-16');
    
    
