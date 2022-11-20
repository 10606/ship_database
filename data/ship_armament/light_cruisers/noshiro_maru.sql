
/*
    34 - Носиро Мару
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (34, '1941-10-14', '1944-09-24',    7138, 7189,   136.7, 19.0, 8.5,   50, 18, 18, null);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (7, 34, '1943-01-16', '1943-01-16', 'Рабаул, попадание бомбы B-17'),
    (7, 34, '1943-03-13', '1943-03-13', 'архипелаг Бисмарка, 00°10'' ю.ш. 151°06'' в.д., торпедирован SS-208 Grayback'),
    (1, 34, '1943-03-16', '1943-04-26', 'Трук, с помощью Акаси'),
    (1, 34, '1943-05-19', '1943-07-21', 'Йокосука'),
    (1, 34, '1944-06-19', '1944-07-15', 'Йокогама'),
    (7, 34, '1944-09-21', '1944-09-21', 'Манила, 3 попадания бомбы TF-38');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (34, 23, 4, '1941-10-14', '1944-09-24');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (34, 55, 1, '1941-10-14', '1944-09-24'), /* неточная модель */
    (34, 49, 2, '1941-10-14', '1944-09-24');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (34, 10, 1, '1941-10-14', '1944-09-24'); /* неточная модель */
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (34, 31, 2, '1941-10-14', '1944-09-24');


