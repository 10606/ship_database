    
/*
    77 - Кайе
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (77, '1943-11-23', '1945-07-28',    17500, 20916,   164.2, 21.9, 8.04,  829, 23.8, 15, 13000);

    
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (6, 77, '1944-01-09', '1944-01-10', 'Саеки, прием авиагруппы'),
    (1, 77, '1944-02-24', '1944-03-02', 'Инносима'),
    (6, 77, '1944-03-28', '1944-03-29', 'Токуяма'),
    (6, 77, '1944-04-16', '1944-04-21', 'Сингапур'),
    (0, 77, '1944-07-02', '1944-07-05', 'Куре'),
    (1, 77, '1944-09-06', '1944-09-11', 'Сасебо'),
    (6, 77, '1944-11-22', '1944-11-22', 'Муцуре'),
    (1, 77, '1944-12-13', '1944-12-26', 'Сингапур'), /* неточная дата окончания */
    (0, 77, '1945-04-20', '1945-04-20', 'Куре, нанесение камуфляжа'),
    (1, 77, '1945-04-30', '1945-05-17', 'Куре');
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (77, 13,  4, '1943-11-23', '1945-07-28'),
    (77, 45,  8, '1943-11-23', '1945-07-28'),
    (77, 44, 10, '1944-07-05', '1945-07-28'),
    (77, 63,  6, '1944-07-05', '1945-07-28');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (77, 0, 1, '1943-11-23', '1945-07-28'); /* тип 21 мод 2 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (77, 34, 3, '1943-11-23', '1945-07-28');
        
        
        
/* бомбосбрасыватели */
    /* 8 глубинных бомб */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (77, 2, 2, '1943-11-23', '1945-07-20');

    
    
/* авиагруппа */
    /* 2 подъемника */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (77,  0, 18, 0, '1944-01-10', '1944-03-28'), /* A6M2 */ /* неточная дата окончания */
    (77, 18,  6, 0, '1944-01-10', '1944-03-28'), /* D4Y1 */ /* неточная дата окончания */
    (77, 55,  4, 0, '1944-01-10', '1944-03-28'), /* Ki-76 */ /* неточная дата окончания */
    
    (77,  8, 12, 0, '1944-03-29', '1944-04-16'),
    (77,  8, 14, 0, '1944-11-22', '1944-12-13');

    
