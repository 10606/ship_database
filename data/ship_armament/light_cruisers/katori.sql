
/*
    35 - Катори
    36 - Касима
    37 - Касии 
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (35, '1940-04-20', '1944-02-17',    5400, 6352,     133.5, 15.95, 5.8,   312, 18.05, 8, null),
    (36, '1940-05-31',  null,           5158, 6280,     133.5, 15.95, 5.8,   312, 18.12, 8, null),
    (37, '1941-07-15', '1945-01-12',    5200, 6320,     133.5, 15.95, 5.8,   312, 18,    8, null);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 35, '1941-09-09', '1941-09-15', 'Йокосука'),
    (1, 35, '1942-02-16', '1942-03-05', 'Йокосука'),
    (0, 35, '1942-08-08', '1942-08-17', 'Йокосука'),
    (1, 35, '1943-03-27', '1943-05-05', 'Йокосука'),

    (0, 36, '1942-07-26', '1942-08-25', 'Куре'),
    (1, 36, '1943-04-15', '1943-04-27', 'Куре'),
    (1, 36, '1943-11-25', '1944-01-12', 'Куре'),
    (1, 36, '1944-05-15', '1944-05-26', 'Куре'),
    (0, 36, '1944-12-20', '1945-01-23', 'Куре'),
    (0, 36, '1945-02-06', '1945-02-10', 'Куре'),

    (1, 37, '1942-06-03', '1942-06-14', 'Сингапур'),
    (1, 37, '1942-10-19', '1942-11-08', 'Сингапур'), /* неточная дата окончания */
    (1, 37, '1943-01-16', '1943-01-21', 'Сингапур'),
    (1, 37, '1943-06-06', '1943-07-01', 'Сингапур'), /* неточная дата окончания */
    (7, 37, '1943-08-29', '1943-08-29', 'поврежден HMS Trident'),
    (1, 37, '1943-09-01', '1943-09-11', 'Сингапур'),
    (1, 37, '1944-01-06', '1944-02-01', 'Сасебо'),
    (0, 37, '1944-03-25', '1944-04-29', 'Куре'),
    (0, 37, '1944-06-28', '1944-07-10', 'Куре'),
    (1, 37, '1944-09-25', '1944-10-14', 'Сасебо');
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (35, 20, 2, '1940-04-20', '1944-02-17'),
    (36, 20, 2, '1940-05-31',  null),
    (37, 20, 2, '1941-07-15', '1945-01-12');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (35, 13,  1, '1940-04-20', '1944-02-17'),
    (35, 51,  8, '1940-04-20', '1944-02-17'),
    (35, 44,  2, '1940-04-20', '1942-08-08'),
    (35, 44,  4, '1942-08-17', '1944-02-17'),
    
    (36, 13,  1, '1940-05-31',  null),
    (36, 11,  2, '1945-01-23',  null),
    (36, 51,  8, '1940-05-31',  null),
    (36, 44,  2, '1940-05-31', '1942-07-26'),
    (36, 44,  4, '1942-08-25',  null),
    (36, 45,  4, '1945-01-23',  null),
    (36, 43, 10, '1945-01-23', '1945-02-06'),
    (36, 43, 18, '1945-02-10',  null),

    (37, 13,  1, '1941-07-15', '1944-03-25'),
    (37, 13,  3, '1944-04-29', '1945-01-12'),
    (37, 51,  8, '1941-07-15', '1945-01-12'),
    (37, 44,  2, '1941-07-15', '1944-03-25'),
    (37, 44,  4, '1944-04-29', '1945-01-12'),
    (37, 45,  4, '1944-04-29', '1945-01-12'),
    (37, 43, 10, '1944-07-10', '1945-01-12');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (35, 1, 2, '1940-04-20', '1944-02-17'),
    (36, 1, 2, '1940-05-31', '1944-12-20'),
    (37, 1, 2, '1941-07-15', '1944-03-25');

 
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (35, 32, 2, '1940-04-20', '1944-02-17'),
    (36, 32, 2, '1940-05-31',  null),
    (37, 32, 2, '1941-07-15', '1945-01-12');
    
    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (36, 0, 4, '1945-01-23',  null),
    (37, 0, 4, '1944-04-29', '1945-01-12');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (36, 2, 2, '1945-01-23',  null),
    (37, 2, 2, '1944-04-29', '1945-01-12');



/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (36, 1, 1, '1945-01-23',  null), /* тип 22 мод 4S */
    /* 
        Касима с 23.01.1945 
            2 инфракрасных тип 2 свой-чужой
            гидрофон тип 93
            сонар тип 93 
    */
    (36, 2, 1, '1945-02-10',  null), /* тип 13 */

    (37, 0, 1, '1944-04-29', '1945-01-12'), /* тип 21 мод 2 */
    /* 
        Касии с 29.04.1944 
            гидрофон тип 93
            сонар тип 93 
    */
    (37, 1, 1, '1944-07-10', '1945-01-12'); /* тип 22 */
    
    
    
/* катапульты */
insert into ship_catapult
    (ship_id, catapult_id, amount, date_from, date_to)
    values
    (35, 10, 1, '1940-04-20', '1944-02-17'),
    (36, 10, 1, '1940-05-31',  null),
    (37, 10, 1, '1941-07-15', '1945-01-12');
    
    
    
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, date_from, date_to)
    values
    (35, 37, 1, '1940-04-20', '1944-02-17'),
    (36, 37, 1, '1940-05-31',  null),
    (37, 37, 1, '1941-07-15', '1945-01-12');

    