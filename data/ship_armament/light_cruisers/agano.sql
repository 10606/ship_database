
/*
    28 - Агано 
    29 - Носиро
    30 - Яхаги 
    31 - Сакава
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (28, '1942-10-31', '1944-02-16',    7895, 8534,   174.5, 15.2, 5.71,  726, 35.82, 18, 11700),
    (29, '1943-06-30', '1944-10-26',    7895, 8534,   174.5, 15.2, 5.71,  712, 35.0,  18, 11100),
    (30, '1943-12-29', '1945-04-07',    7895, 8534,   174.5, 15.2, 5.71,  736, 35.0,  18, 11100),
    (31, '1944-04-09',  null,           7895, 8534,   174.5, 15.2, 5.71,  805, 35.0,  18, 11100);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 28, '1943-02-18', '1943-02-26', 'Трук, с помощью Акаси'),
    (0, 28, '1943-06-03', '1943-06-30', 'Куре, модернизация ПВО'),
    (0, 29, '1944-02-01', '1944-03-19', 'Йокосука, модернизация ПВО'),
    (0, 29, '1944-06-30', '1944-07-07', 'Куре, модернизация ПВО'), /* неточные даты */
    (0, 30, '1944-01-28', '1944-02-03', 'Куре, модернизация ПВО'),
    (0, 30, '1944-06-25', '1944-07-07', 'Куре, модернизация ПВО'),
    (0, 30, '1944-11-24', '1944-12-18', 'Куре, модернизация ПВО'),
    (0, 31, '1945-04-08', '1945-04-20', 'Майдзуру'); /* неточные даты */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (28, 21, 3, '1942-10-31', '1944-02-16'),
    (29, 21, 3, '1943-06-30', '1944-10-26'),
    (30, 21, 3, '1943-12-29', '1945-04-07'),
    (31, 21, 3, '1944-04-09',  null       );

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (28, 41,  2, '1942-10-31', '1944-02-16'),
    (28, 45,  2, '1942-10-31', '1943-06-03'),
    (28, 52,  2, '1942-10-31', '1943-06-03'),
    (28, 44,  2, '1943-06-30', '1944-02-16'),
    (28, 45,  4, '1943-06-30', '1944-02-16'),
    
    (29, 41,  2, '1943-06-30', '1944-10-26'),
    (29, 45,  2, '1943-06-30', '1944-02-01'),
    (29, 52,  2, '1943-06-30', '1944-02-01'),
    (29, 43,  8, '1944-03-19', '1944-06-30'),
    (29, 45,  8, '1944-03-19', '1944-06-30'),
    (29, 43, 18, '1944-07-07', '1944-10-26'),
    (29, 45, 10, '1944-07-07', '1944-10-26'),
    
    (30, 41,  2, '1943-12-29', '1945-04-07'),
    (30, 45,  2, '1943-12-29', '1944-01-28'),
    (30, 44,  4, '1943-12-29', '1944-01-28'),
    (30, 43,  8, '1944-02-03', '1944-06-25'),
    (30, 45,  8, '1944-02-03', '1944-06-25'),
    (30, 43, 18, '1944-07-07', '1944-11-24'),
    (30, 45, 10, '1944-07-07', '1945-04-07'),
    (30, 43, 28, '1944-12-18', '1945-04-07'),
    
    (31, 41,  2, '1944-04-09',  null       ),
    (31, 43, 18, '1944-04-09', '1945-04-08'),
    (31, 45, 10, '1944-04-09',  null       ),
    (31, 43, 31, '1945-04-20',  null       );
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (28, 15, 2, '1942-10-31', '1944-02-16'),
    (29, 15, 2, '1943-06-30', '1944-10-26'),
    (30, 15, 2, '1943-12-29', '1945-04-07'),
    (31, 15, 2, '1944-04-09',  null       );



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (28, 0, 1, '1943-06-30', '1944-02-16'), /* тип 21 */
    
    (29, 0, 1, '1943-06-30', '1944-10-26'), /* тип 21 */
    (29, 1, 1, '1944-07-07', '1944-10-26'), /* тип 22 */
    (29, 2, 1, '1944-07-07', '1944-10-26'), /* тип 13 */
    
    (30, 0, 1, '1943-12-29', '1945-04-07'), /* тип 21 */
    (30, 1, 1, '1944-07-07', '1945-04-07'), /* тип 22 */
    (30, 2, 1, '1944-07-07', '1945-04-07'), /* тип 13 */
    
    (31, 0, 1, '1944-04-09',  null       ), /* тип 21 */
    (31, 1, 1, '1944-04-09',  null       ), /* тип 22 */
    (31, 2, 1, '1944-04-09',  null       ); /* тип 13 */

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (28, 30, 3, '1942-10-31', '1944-02-16'),
    (28, 33, 2, '1942-10-31', '1944-02-16'),
    (29, 30, 3, '1943-06-30', '1944-10-26'),
    (29, 33, 2, '1943-06-30', '1944-10-26'),
    (30, 30, 3, '1943-12-29', '1945-04-07'),
    (30, 33, 2, '1943-12-29', '1945-04-07'),
    (31, 30, 3, '1944-04-09',  null       ),
    (31, 33, 2, '1944-04-09',  null       );
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (28,  11, 1, '1942-10-31', '1943-06-03'), 
    (28,  10, 1, '1943-06-30', '1944-02-16'), 
    (29,  11, 1, '1943-06-30', '1944-02-01'), 
    (29,  10, 1, '1944-03-19', '1944-10-26'), 
    (30,  10, 1, '1943-12-29', '1945-04-07'), 
    (31,  10, 1, '1944-04-09', '1945-04-08');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (28, 63, 2, '1942-10-31', '1943-06-03'),
    (28, 11, 2, '1943-06-30', '1944-02-16'),
    (29, 63, 2, '1943-06-30', '1944-02-01'), 
    (29, 11, 2, '1944-03-19', '1944-10-26'),
    (30, 11, 2, '1943-12-29', '1945-04-07'),
    (31, 11, 2, '1944-04-09', '1945-04-08');
    
    
