    
/*
    62 - Рюхо
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (62, '1942-11-30', '1944-07-11',    13360, 15300,   210.0, 19.6, 6.7,  989, 26.5, 18, 12800),
    (62, '1944-07-20',  null,           13410, 15460,   210.0, 19.6, 6.7,  989, 26.5, 18, 12800);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 62, '1942-12-10', '1943-02-10', 'Йокосука, после торпедного попадания'),
    (1, 62, '1943-08-14', '1943-08-23', 'Сасебо'),
    (0, 62, '1943-09-22', '1943-09-27', 'Куре'),
    (6, 62, '1943-10-24', '1943-10-27', 'Куре'),
    (1, 62, '1944-01-17', '1944-01-28', 'Инносима'),
    (0, 62, '1944-07-11', '1944-07-20', 'Куре'),
    (1, 62, '1944-07-26', '1944-08-02', 'Куре'),
    (1, 62, '1945-02-20', '1945-02-28', 'Сасебо'), /* неточные даты */
    (1, 62, '1945-04-01', '1945-04-20', 'Куре');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (62, 13,  4, '1942-11-30',  null),
    (62, 45, 10, '1942-11-30',  null),
    (62, 44,  4, '1942-11-30',  null),
    (62, 43,  4, '1943-09-27', '1944-07-11'), /* неточные даты */
    (62, 43, 23, '1944-07-20',  null),
    (62, 51,  6, '1944-07-20',  null),
    (62, 61,  6, '1944-07-20',  null);
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (62, 0, 1, '1943-09-27',  null); /* тип 21 */ /* неточные даты */

    
    
/* авиагруппа */
/* 
    2 подъемника:
        13.6м * 12.0м
        13.6м * 12.0м
*/
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (62,   0, 15, 0, '1942-11-30', '1942-12-10'),
    (62,   9, 16, 0, '1942-11-30', '1942-12-10'),
    
    (62,   0, 21, 0, '1943-02-10', '1943-09-22'),
    (62,   8,  9, 0, '1943-02-10', '1943-09-22'),
    
    (62,   0, 12, 2, '1943-09-27', '1943-10-24'),
    (62,  18, 18, 0, '1943-09-27', '1943-10-24'),
    
    (62,   0,  9, 0, '1944-07-20', '1944-10-27'),
    (62,   2, 18, 0, '1944-07-20', '1944-10-27'),
    (62,  39,  9, 0, '1944-07-20', '1944-10-27'),
    
    (62, 126, 0, 58, '1944-12-31', '1945-01-02');

