    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (36, null, 153550,  null); /* тип Ямато */

insert into external_burn_boiling
    (object_id, item_id, count)
    values
    (36, 39, 12); /* тип Ямато */

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* тип Ямато */
    (36, 86, 4),
    (36, 87, 4),
    (36, 88, 4),
    (36, 89, 4);
    
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* тип Ямато */
    (10, 36, 1,  '1941-12-16', '1945-04-07'),
    (11, 36, 1,  '1942-08-05', '1944-10-24'),
    (70, 36, 1,  '1944-11-19', '1944-11-29');
    
