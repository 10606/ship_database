
/*
    243 - Акидзуки  
    244 - Терудзуки 
    245 - Судзуцуки 
    246 - Хацудзуки 
    247 - Ниидзуки  
    248 - Вакацуки  
    249 - Симоцуки  
    250 - Фуюдзуки  
    251 - Харуцуки  
    252 - Еидзуки   
    253 - Нацудзуки 
    254 - Ханадзуки 
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (243, '1942-06-11', '1944-10-25',   2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (244, '1942-08-31', '1942-12-11',   2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (245, '1942-12-29',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (246, '1942-12-29', '1944-10-25',   2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (247, '1943-03-31', '1943-07-06',   2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (248, '1943-05-31', '1944-11-11',   2743, 3759,     134.2, 11.6, 4.15,  289, 33, 18, 15400),
    (249, '1944-03-31', '1944-11-25',   2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (250, '1944-05-25',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (251, '1944-12-28',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (252, '1945-01-31',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (253, '1945-04-08',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400),
    (254, '1944-12-26',  null,          2743, 3759,     134.2, 11.6, 4.15,  263, 33, 18, 15400);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (0, 243, '1942-11-06', '1942-12-28', 'Йокосука'),
    (5, 243, '1943-01-19', '1943-01-19', 'торпедирован SS-168 Nautilus'),
    (1, 243, '1943-02-02', '1943-03-11', 'Акаси, ремонт после торпедного попадания'),
    (7, 243, '1943-03-14', '1943-03-14', 'поврежденный 19.01 киль лопнул'),
    (6, 243, '1943-03-15', '1943-06-24', 'посажен на мель, демонтаж артиллерийских установок'),
    (0, 243, '1943-07-02', '1943-11-04', 'Нагасаки'),
    (0, 243, '1944-06-18', '1944-07-11', ''),
    (0, 243, '1944-10-11', '1944-10-15', ''),
    
    (1, 244, '1942-10-29', '1942-10-30', 'Трук, после попадания бомбы'), /* неточная дата окончания */
    
    (0, 245, '1944-01-18', '1944-10-12', 'Куре, ремонт после 2 торпедных попаданий от SS-187, оторваны нос и корма'),
    (1, 245, '1944-10-17', '1944-11-11', 'Куре'),
    (0, 245, '1945-04-08', '1945-05-05', 'Сасебо'),
    (6, 245, '1945-05-05',  null,        'Сасебо, в качестве ПВО'),
    
    (0, 246, '1944-08-01', '1944-08-31', ''), /* неточные даты: с 07.44 по 10.44 */
    
    (0, 248, '1943-11-25', '1944-02-06', 'Йокосука'),
    
    (0, 249, '1944-08-17', '1944-08-24', 'Йокосука'),
    
    (1, 250, '1944-09-21', '1944-09-25', 'Йокосука'),
    (1, 250, '1944-10-14', '1944-10-20', 'Куре, ремонт после торпедного попадания'),
    (1, 250, '1945-02-23', '1945-02-27', 'Куре'),
    
    (7, 253, '1944-06-16', '1944-06-16', 'подорвался на мине, отбуксирован в Сасебо'),
    (1, 253, '1944-06-17', '1944-06-30', 'Сасебо'); /* неточные даты */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (243, 6, 4, '1942-06-11', '1943-06-01'), /* неточная дата конца */
    (243, 6, 4, '1943-11-04', '1944-10-25'),
    (244, 6, 4, '1942-08-31', '1942-12-11'),
    (245, 6, 4, '1942-12-29',  null),
    (246, 6, 4, '1942-12-29', '1944-10-25'),
    (247, 6, 4, '1943-03-31', '1943-07-06'),
    (248, 6, 4, '1943-05-31', '1944-11-11'),
    (249, 6, 4, '1944-03-31', '1944-11-25'),
    (250, 6, 4, '1944-05-25',  null),
    (251, 6, 4, '1944-12-28',  null),
    (252, 6, 4, '1945-01-31',  null),
    (253, 6, 4, '1945-04-08',  null),
    (254, 6, 4, '1944-12-26',  null);
        
        
        
/* ПВО */
    /* 2 директора, позже 1 (носовой демонтировали для установки строенного 25мм тип 96) */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (243, 44,  2, '1942-06-11', '1944-06-18'),
    (243, 45,  2, '1942-12-28', '1944-06-18'),
    (243, 51,  4, '1943-11-04', '1944-10-25'),
    (243, 45,  5, '1944-07-11', '1944-10-25'),
    (243, 43, 14, '1944-07-11', '1944-10-11'),
    (243, 43, 20, '1944-10-15', '1944-10-25'),
    
    (244, 44,  2, '1942-08-31', '1942-12-11'),
    
    (245, 45,  4, '1942-12-29', '1944-01-18'),
    (245, 45,  7, '1944-10-12',  null),
    (245, 51,  4, '1944-10-12',  null),
    (245, 43, 20, '1944-10-12',  null),
    
    (246, 45,  4, '1942-12-29', '1944-08-01'),
    (246, 45,  5, '1944-08-31', '1944-10-25'),
    (246, 43, 12, '1944-08-31', '1944-10-25'),
    
    (247, 45,  4, '1943-03-31', '1943-07-06'),
    
    (248, 45,  4, '1943-05-31', '1943-11-25'),
    (248, 45,  7, '1944-02-06', '1944-11-11'),
    (248, 43, 14, '1944-02-06', '1944-11-11'),
    (248, 51,  4, '1944-02-06', '1944-11-11'),
    
    (249, 45,  5, '1944-03-31', '1944-08-17'),
    (249, 43, 10, '1944-03-31', '1944-08-17'),
    (249, 51,  4, '1944-03-31', '1944-11-25'),
    (249, 45,  7, '1944-08-24', '1944-11-25'),
    (249, 43, 14, '1944-08-24', '1944-11-25'),
    
    (250, 45,  7, '1944-05-25',  null),
    (250, 43, 20, '1944-05-25',  null),
    (250, 51,  4, '1944-05-25',  null),
    
    (251, 45,  7, '1944-12-28',  null),
    (251, 43, 20, '1944-12-28',  null),
    (251, 51,  4, '1944-12-28',  null),
    
    (252, 45,  7, '1945-01-31',  null),
    (252, 43, 20, '1945-01-31',  null),
    (252, 51,  4, '1945-01-31',  null),
    
    (253, 45,  7, '1945-04-08',  null),
    (253, 43, 20, '1945-04-08',  null),
    (253, 51,  4, '1945-04-08',  null),
    
    (254, 45,  7, '1944-12-26',  null),
    (254, 43, 20, '1944-12-26',  null),
    (254, 51,  4, '1944-12-26',  null);
    
    
    
/* торпедные аппараты */
    /* 2* торпедных прицела тип 97 мод 2 */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (243, 15, 1, '1942-06-11', '1944-10-25'),
    (244, 15, 1, '1942-08-31', '1942-12-11'),
    (245, 15, 1, '1942-12-29',  null),
    (246, 15, 1, '1942-12-29', '1944-10-25'),
    (247, 15, 1, '1943-03-31', '1943-07-06'),
    (248, 15, 1, '1943-05-31', '1944-11-11'),
    (249, 15, 1, '1944-03-31', '1944-11-25'),
    (250, 15, 1, '1944-05-25',  null),
    (251, 15, 1, '1944-12-28',  null),
    (252, 15, 1, '1945-01-31',  null),
    (253, 15, 1, '1945-04-08',  null),
    (254, 15, 1, '1944-12-26',  null);
    
    

/* гидролокатор тип 93 мод 3 */

    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (243, 0, 2, '1942-06-11', '1944-10-25'),
    (244, 0, 2, '1942-08-31', '1942-12-11'),
    (245, 0, 2, '1942-12-29',  null),
    (246, 0, 2, '1942-12-29', '1944-10-25'),
    (247, 0, 2, '1943-03-31', '1943-07-06'),
    (248, 0, 2, '1943-05-31', '1944-11-11'),
    (249, 0, 2, '1944-03-31', '1944-11-25'),
    (250, 0, 2, '1944-05-25',  null),
    (251, 0, 2, '1944-12-28',  null),
    (252, 0, 2, '1945-01-31',  null),
    (253, 0, 2, '1945-04-08',  null),
    (254, 0, 2, '1944-12-26',  null);
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (243, 3, 2, '1942-06-11', '1943-02-02'),
    (243, 4, 4, '1942-06-11', '1943-02-02'),
    (243, 2, 2, '1943-11-04', '1944-10-25'),

    (244, 3, 2, '1942-08-31', '1942-12-11'),
    (244, 4, 4, '1942-08-31', '1942-12-11'),

    (245, 3, 2, '1942-12-29', '1944-01-18'),
    (245, 4, 4, '1942-12-29', '1944-01-18'),
    (245, 2, 2, '1944-10-12',  null),

    /*
    (246, 3, 2, '1942-12-29', '1943-'),
    (246, 4, 4, '1942-12-29', '1943-'),
    */
    (246, 2, 2, '1942-12-29', '1944-10-25'),
    
    (247, 3, 2, '1943-03-31', '1943-07-06'),
    (247, 4, 3, '1943-03-31', '1943-07-06'),
    
    (248, 2, 2, '1943-05-31', '1944-11-11'),
    (249, 2, 2, '1944-03-31', '1944-11-25'),
    (250, 2, 2, '1944-05-25',  null),
    (251, 2, 2, '1944-12-28',  null),
    (252, 2, 2, '1945-01-31',  null),
    (253, 2, 2, '1945-04-08',  null),
    (254, 2, 2, '1944-12-26',  null);
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (243, 0, 1, '1943-11-04',  null), /* тип 21 */
    (243, 2, 1, '1944-07-11',  null), /* тип 13 */
    
    (245, 0, 1, '1942-12-29', '1944-01-18'), /* тип 21 */
    (245, 1, 1, '1944-10-12',  null), /* тип 22 */
    (245, 2, 2, '1944-10-12',  null), /* тип 13 */
    
    (246, 0, 1, '1942-12-29', '1944-10-25'), /* тип 21 */
    (246, 2, 1, '1944-08-31', '1944-10-25'), /* тип 13 */
    
    (247, 0, 1, '1943-03-31', '1943-07-06'), /* тип 21 */
    
    (248, 0, 1, '1943-05-31', '1944-11-11'), /* тип 21 */
    (248, 2, 1, '1944-02-06', '1944-11-11'), /* тип 13 */

    (249, 0, 1, '1944-03-31', '1944-11-25'), /* тип 21 */
    (249, 2, 1, '1944-08-24', '1944-11-25'), /* тип 13 */
    
    (250, 0, 1, '1944-05-25',  null), /* тип 21 */
    (250, 2, 1, '1944-05-25',  null), /* тип 13 */

    (251, 1, 1, '1944-12-28',  null), /* тип 22 */
    (251, 2, 2, '1944-12-28',  null), /* тип 13 */

    (252, 1, 1, '1945-01-31',  null), /* тип 22 */
    (252, 2, 2, '1945-01-31',  null), /* тип 13 */
    
    (253, 1, 1, '1945-04-08',  null), /* тип 22 */
    (253, 2, 2, '1945-04-08',  null), /* тип 13 */

    (254, 1, 1, '1944-12-26',  null), /* тип 22 */
    (254, 2, 2, '1944-12-26',  null); /* тип 13 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (243, 32, 1, '1942-06-11', '1944-10-25'),
    (244, 32, 1, '1942-08-31', '1942-12-11'),
    (245, 32, 1, '1942-12-29',  null),
    (246, 32, 1, '1942-12-29', '1944-10-25'),
    (247, 32, 1, '1943-03-31', '1943-07-06'),
    (248, 32, 1, '1943-05-31', '1944-11-11'),
    (249, 32, 1, '1944-03-31', '1944-11-25'),
    (250, 32, 1, '1944-05-25',  null),
    (251, 32, 1, '1944-12-28',  null),
    (252, 32, 1, '1945-01-31',  null),
    (253, 32, 1, '1945-04-08',  null),
    (254, 32, 1, '1944-12-26',  null);
    
