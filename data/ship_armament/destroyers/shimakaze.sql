
/*
    255 - Симакадзе
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (255, '1943-05-10', '1944-11-11',    2567, 3400,   126.0, 11.2, 4.15,  267, 40.9, 18, 9300);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 255, '1944-03-17', '1944-04-12', 'Куре'),
    (0, 255, '1944-06-30', '1944-07-05', 'Куре'); /* неточная дата окончания */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (255, 4, 3, '1943-05-10', '1944-11-11');
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (255, 45, 2, '1943-05-10', '1944-03-17'),
    (255, 45, 4, '1944-04-12', '1944-06-30'),
    (255, 45, 6, '1944-07-05', '1944-11-11'),
    (255, 44, 2, '1944-04-12', '1944-11-11'),
    (255, 43, 7, '1944-07-05', '1944-11-11'),
    (255, 52, 1, '1943-05-10', '1944-11-11'),
    (255, 51, 1, '1944-07-05', '1944-11-11');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (255, 16, 3, '1943-05-10', '1944-11-11');
    
    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (255, 0, 1, '1943-05-10', '1944-11-11');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (255, 2, 2, '1943-05-10', '1944-11-11');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (255, 1, 1, '1943-05-10', '1944-11-11'), /* тип 22 */
    (255, 2, 1, '1944-07-05', '1944-11-11'); /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (255, 32, 1, '1943-05-10', '1944-11-11');

    
