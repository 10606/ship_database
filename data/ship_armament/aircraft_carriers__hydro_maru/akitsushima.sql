    
/*
    83 - Акицусима
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (83, '1942-04-29', '1944-09-24',    4725, 5080,   114.8, 15.8, 5.4,    338, 19, 14, 15000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 83, '1942-12-23', '1942-12-30', 'Йокосука'),
    (1, 83, '1943-11-10', '1943-11-23', 'Йокосука'),
    (0, 83, '1944-03-15', '1944-03-31', 'Йокосука'), /* неточные даты */
    (1, 83, '1944-04-02', '1944-04-13', 'Йокосука'),
    (1, 83, '1944-05-14', '1944-05-31', 'Кобе');
    

    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (83, 12, 1, '1942-04-29', '1944-09-24'),
    (83, 13, 1, '1942-04-29', '1944-09-24'),
    (83, 44, 2, '1942-04-29', '1944-03-15'),
    (83, 45, 6, '1944-03-31', '1944-09-24'),
    (83, 43, 3, '1944-03-31', '1944-09-24');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (83, 0, 1, '1944-03-31', '1944-09-24'); /* тип 21 */

    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (83, 0, 1, '1942-04-29', '1944-09-24');

    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (83, 35, 1, 0, '1942-04-29', '1944-03-15'); /* H6K */ /* неточная модель */
    /* c апреля 1944 5 десантных барж Дайхацу */

