    
/*
    87 - Кумано Мару
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (87, '1945-03-31',  null,   8258, 10500,   152.7, 19.58, 7.0,    null, 19, 17, 11000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (7, 87, '1945-03-19', '1945-03-19', 'Инносима, атакован авиацией TF-58'),
    (7, 87, '1945-08-15', '1945-08-15', 'северо-западное побережье Канава-Дзима, передан американцам');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (87, 57,  8, '1945-03-31',  null),
    (87, 68,  6, '1945-03-31',  null); /* по другим данным 25мм тип 96 */
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (87, 26, 1, '1945-03-31',  null); /* E27 */

    
    
/* 15см противолодочный миномет тип 2 */

    
    
/* 
    13 десантных барж Дайхацу
    12 десантных барж Току-Дайхацу
*/
    
    
    
/* 3т кран, кормовой самолетоподъемник */
/* авиагруппа */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (87, 55, 8, 0, '1945-03-31',  null); /* Ki-76 */
    /* также могли размещаться 35 истребителей тип 4 Хаяте (17 в ангаре, 18 на палубе) */

