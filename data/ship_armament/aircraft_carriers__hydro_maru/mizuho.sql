    
/*
    81 - Мидзухо
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (81, '1939-02-25', '1942-05-01',    10850, 12650,   183.6, 18.8, 7.08,    696, 19, 16, 18000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 81, '1940-05-21', '1940-05-25', 'Йокосука'),
    (1, 81, '1941-04-27', '1941-05-01', 'Йокосука'),
    (1, 81, '1941-09-20', '1941-09-30', 'Йокосука'),
    (1, 81, '1942-03-28', '1942-05-01', 'Йокосука');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (81, 13,  3, '1939-02-25', '1942-05-01'),
    (81, 44, 10, '1939-02-25', '1942-05-01');
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (81, 32, 3, '1939-02-25', '1942-05-01');
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (81, 10, 4, '1939-02-25', '1942-05-01'); /* по данным Альпакова Куре No 2 мод 3 */

    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (81, 30,  4, 0, '1939-02-25', '1941-09-20'), /* E7K1 */ /* неточная дата окончания, неточное количество: E7K1 + E7K2 9 штук, 2 на картинке в 1939 */
    (81, 31,  5, 0, '1939-02-25', '1941-09-20'), /* E7K2 */ /* неточная дата окончания, неточное количество: E7K1 + E7K2 9 штук, 2 на картинке в 1939 */
    (81, 33,  9, 0, '1939-02-25', '1941-09-20'), /* E8N2 */ /* неточная дата окончания */
    (81, 31,  3, 0, '1941-09-30', '1942-05-01'), /* E7K2 */ /* неточная дата начала */
    (81, 37, 12, 0, '1941-09-30', '1942-05-01'); /* F1M */  /* неточная дата начала */

