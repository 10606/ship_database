    
/*
    70 - Синано
*/
    
    
/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (70, '1944-11-19', '1944-11-29',    64800, 71890,   256.0, 36.3, 10.31,  2515, 27.3, 18, 16000);
    
    
    
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (70, 13,  8, '1944-11-19', '1944-11-29'),
    (70, 61, 12, '1944-11-19', '1944-11-29'),
    (70, 45, 35, '1944-11-19', '1944-11-29');
    
    
    
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (70, 1, 1, '1944-11-19', '1944-11-29'), /* тип 22 мод 4 */
    (70, 2, 1, '1944-11-19', '1944-11-29'); /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (70, 32, 3, '1944-11-19', '1944-11-29');

    
    
/* авиагруппа */
    /* 2 подъемника, 1 кран */
insert into ship_aircraft
    (ship_id, aircraft_id, amount, amount_reserve, date_from, date_to)
    values
    (70, 126, 0, 50, '1944-11-26', '1944-11-29'); /* MXY-7 */
    /* 6 лодок смертников Синье (Shinyo) */
    
    /*
        по плану:
            18 (+2) A7M
            18 (+2) B7A
             6 (+1) C6N
    */

