
/*
    528 - Акаси
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (528, '1939-07-31', '1944-03-30',    9144, 10668,   158.5, 20.5, 6.55,  768, 19.38, 14, 14800);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 528, '1942-05-20', '1942-05-24', 'Куре');

 
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (528, 13,  2, '1939-07-31', '1944-03-30'),
    (528, 44,  2, '1939-07-31', '1942-05-20'), /* неточная дата окончания */
    (528, 44,  4, '1942-05-24', '1944-03-30'); /* неточные данные */ /* по некоторым данным затем было увеличено до 12 стволов */
    
    
