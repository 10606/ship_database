    
/* силовая установка */
insert into external_burn_list
    (id, mass, max_power, in_service)
    values
    (24, null, 44000,  null); /* тип Титосе */
    
insert into external_burn_boiling
    (object_id, item_id, count)
    values
    (24, 31, 4); /* тип Титосе */

insert into external_burn_machines
    (object_id, item_id, count)
    values
    /* тип Титосе */
    (24, 77, 2),
    (24, 78, 2),
    (24, 79, 2);
    
    
    
insert into ship_propulsion
    (ship_id, propulsion_id, amount, date_from, date_to)
    values
    /* тип Титосе */
    (79, 24, 1, '1938-07-25', '1944-10-25'),
    (79, 25, 2, '1938-07-25', '1944-10-25'),
    
    (80, 24, 1, '1938-12-15', '1944-10-25'),
    (80, 25, 2, '1938-12-15', '1944-10-25'),

    /* Мидзухо */
    (81, 26, 1, '1939-02-25', '1942-05-01'),

    /* Ниссин */
    (82, 27, 2, '1942-02-27', '1943-07-22'),
    (82, 28, 4, '1942-02-27', '1943-07-22'),

    /* Акицусима */
    (83, 14, 4, '1942-04-29', '1944-09-24');
    
    
