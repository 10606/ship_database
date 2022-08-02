
/*
    224 - Югумо    
    225 - Макигумо 
    226 - Кадзaгумо
    227 - Наганами 
    228 - Макинами 
    229 - Таканами 
    230 - Онами    
    231 - Киенами  
    232 - Таманами 
    233 - Судзунами
    234 - Фудзинами
    235 - Хаянами  
    236 - Хаманами 
    237 - Окинами  
    238 - Кисинами 
    239 - Асасимо  
    240 - Хаясимо  
    241 - Акисимо  
    242 - Киесимо  
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (224, '1941-12-05', '1943-10-06',    2077, 2520,   119.15, 10.8, 3.76,  225, 35.5, 18, 9260),
    (225, '1942-03-14', '1943-02-01',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (226, '1942-03-28', '1944-06-08',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (227, '1942-06-30', '1944-11-11',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (228, '1942-08-08', '1943-11-25',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (229, '1942-08-31', '1942-11-30',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (230, '1942-12-29', '1943-11-25',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (231, '1943-01-25', '1943-07-20',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (232, '1943-04-30', '1944-07-07',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (233, '1943-07-27', '1943-11-11',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (234, '1943-07-31', '1944-10-27',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (235, '1943-07-31', '1944-06-07',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (236, '1943-10-15', '1944-11-11',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (237, '1943-12-10', '1944-11-13',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (238, '1943-12-03', '1944-12-04',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (239, '1943-11-27', '1945-04-07',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (240, '1944-02-20', '1944-10-26',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (241, '1944-03-11', '1944-11-13',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260),
    (242, '1944-05-15', '1944-12-29',    2077, 2520,   119.15, 10.8, 3.76,  228, 35.5, 18, 9260);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (1, 224, '1942-12-23', '1942-12-29',  null),
    (0, 224, '1943-05-08', '1943-05-23', 'Йокосука'),
    (1, 225, '1942-12-23', '1942-12-29',  null),
    (1, 226, '1942-12-23', '1942-12-29',  null),
    (1, 226, '1943-04-18', '1943-04-28',  null),
    (0, 226, '1943-12-12', '1943-12-17', 'Йокосука'),
    (1, 227, '1943-01-14', '1943-01-20', 'Трук'),
    (1, 227, '1943-03-17', '1943-04-25', 'Майдзуру'),
    (1, 227, '1943-05-31', '1943-06-18', 'Майдзуру, ремонт двигателей'),
    (1, 227, '1943-08-07', '1943-09-15', 'Майдзуру'),
    (0, 227, '1944-01-25', '1944-06-20', 'Куре'),
    (1, 228, '1943-04-24', '1943-09-15', 'Майдзуру'),
    (1, 230, '1943-08-09', '1943-09-18', 'Майдзуру'),
    (0, 234, '1944-01-18', '1944-01-21', 'Куре'),
    (1, 237, '1944-11-07', '1944-11-13', 'Кавите'),
    (1, 238, '1944-11-03', '1944-11-20', 'Сингапур'), /* 1944-11-20  неточная дата */
    (0, 239, '1945-02-23', '1945-02-27', 'Куре'),
    (1, 241, '1944-11-11', '1944-11-13', 'Кавите'),
    (1, 242, '1944-11-12', '1944-12-01', 'Сингапур'); /* 1944-12-01  неточная дата */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (224, 4, 3, '1941-12-05', '1943-10-06'),
    (225, 4, 3, '1942-03-14', '1943-02-01'),
    (226, 4, 3, '1942-03-28', '1944-06-08'),
    (227, 4, 3, '1942-06-30', '1944-11-11'),
    (228, 4, 3, '1942-08-08', '1943-11-25'),
    (229, 4, 3, '1942-08-31', '1942-11-30'),
    (230, 4, 3, '1942-12-29', '1943-11-25'),
    (231, 4, 3, '1943-01-25', '1943-07-20'),
    (232, 4, 3, '1943-04-30', '1944-07-07'),
    (233, 4, 3, '1943-07-27', '1943-11-11'),
    (234, 4, 3, '1943-07-31', '1944-10-27'),
    (235, 4, 3, '1943-07-31', '1944-06-07'),
    (236, 4, 3, '1943-10-15', '1944-11-11'),
    (237, 4, 3, '1943-12-10', '1944-11-13'),
    (238, 4, 3, '1943-12-03', '1944-12-04'),
    (239, 4, 3, '1943-11-27', '1945-04-07'),
    (240, 4, 3, '1944-02-20', '1944-10-26'),
    (241, 4, 3, '1944-03-11', '1944-11-13'),
    (242, 4, 3, '1944-05-15', '1944-12-29');
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (224, 44, 2, '1941-12-05', '1943-10-06'),
    (225, 44, 2, '1942-03-14', '1943-02-01'),
    (226, 44, 2, '1942-03-28', '1944-06-08'),
    (227, 44, 2, '1942-06-30', '1944-11-11'),
    (228, 44, 2, '1942-08-08', '1943-11-25'), /* ?? */
    (229, 44, 2, '1942-08-31', '1942-11-30'), /* ?? */
    (230, 44, 2, '1942-12-29', '1943-11-25'), /* ?? */
    (231, 44, 2, '1943-01-25', '1943-07-20'), /* ?? */
    (232, 44, 2, '1943-04-30', '1944-07-07'), /* ?? */
    
    (233, 44, 1, '1943-07-27', '1943-11-11'), /* ?? */
    (233, 45, 2, '1943-07-27', '1943-11-11'), /* ?? */
    (234, 44, 1, '1943-07-31', '1944-10-27'),
    (234, 45, 2, '1943-07-31', '1944-10-27'),
    (235, 44, 1, '1943-07-31', '1944-06-07'),
    (235, 45, 2, '1943-07-31', '1944-06-07'),
    (236, 44, 1, '1943-10-15', '1944-11-11'),
    (236, 45, 2, '1943-10-15', '1944-11-11'),
    (237, 44, 1, '1943-12-10', '1944-11-13'), /* ?? */
    (237, 45, 2, '1943-12-10', '1944-11-13'), /* ?? */
    (238, 44, 1, '1943-12-03', '1944-12-04'), /* ?? */
    (238, 45, 2, '1943-12-03', '1944-12-04'), /* ?? */
    (239, 44, 3, '1943-11-27', '1945-04-07'),
    (239, 45, 2, '1943-11-27', '1945-04-07'),
    (240, 44, 1, '1944-02-20', '1944-10-26'),
    (240, 45, 2, '1944-02-20', '1944-10-26'),
    (241, 44, 1, '1944-03-11', '1944-11-13'), /* ?? */
    (241, 45, 2, '1944-03-11', '1944-11-13'), /* ?? */
    (242, 44, 3, '1944-05-15', '1944-12-29'),
    (242, 45, 2, '1944-05-15', '1944-12-29');
    
    /*
    без подтверждений:
        многие представители
            14 * 2  25мм тип 96
            2 * 2  13.2мм тип 93
        Наганами (227), 11.1944
            ~ 20  25мм тип 96
            1  12.7мм М2 (c USS Darter)
        Асасимо (239), 04.1945
            > 20  25мм тип 96
    */
    
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (224, 13, 2, '1941-12-05', '1943-10-06'),
    (225, 13, 2, '1942-03-14', '1943-02-01'),
    (226, 13, 2, '1942-03-28', '1944-06-08'),
    (227, 13, 2, '1942-06-30', '1944-11-11'),
    (228, 13, 2, '1942-08-08', '1943-11-25'),
    (229, 13, 2, '1942-08-31', '1942-11-30'),
    (230, 13, 2, '1942-12-29', '1943-11-25'),
    (231, 13, 2, '1943-01-25', '1943-07-20'),
    (232, 13, 2, '1943-04-30', '1944-07-07'),
    (233, 13, 2, '1943-07-27', '1943-11-11'),
    (234, 13, 2, '1943-07-31', '1944-10-27'),
    (235, 13, 2, '1943-07-31', '1944-06-07'),
    (236, 13, 2, '1943-10-15', '1944-11-11'),
    (237, 13, 2, '1943-12-10', '1944-11-13'),
    (238, 13, 2, '1943-12-03', '1944-12-04'),
    (239, 13, 2, '1943-11-27', '1945-04-07'),
    (240, 13, 2, '1944-02-20', '1944-10-26'),
    (241, 13, 2, '1944-03-11', '1944-11-13'),
    (242, 13, 2, '1944-05-15', '1944-12-29');
    
    
    
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (224, 0, 2, '1941-12-05', '1943-10-06'),
    (225, 0, 2, '1942-03-14', '1943-02-01'),
    (226, 0, 2, '1942-03-28', '1944-06-08'),
    (227, 0, 2, '1942-06-30', '1944-11-11'),
    (228, 0, 2, '1942-08-08', '1943-11-25'),
    (229, 0, 2, '1942-08-31', '1942-11-30'),
    (230, 0, 2, '1942-12-29', '1943-11-25'),
    (231, 0, 2, '1943-01-25', '1943-07-20'),
    (232, 0, 2, '1943-04-30', '1944-07-07'),
    (233, 0, 2, '1943-07-27', '1943-11-11'),
    (234, 0, 2, '1943-07-31', '1944-10-27'),
    (235, 0, 2, '1943-07-31', '1944-06-07'),
    (236, 0, 2, '1943-10-15', '1944-11-11'),
    (237, 0, 2, '1943-12-10', '1944-11-13'),
    (238, 0, 2, '1943-12-03', '1944-12-04'),
    (239, 0, 2, '1943-11-27', '1945-04-07'),
    (240, 0, 2, '1944-02-20', '1944-10-26'),
    (241, 0, 2, '1944-03-11', '1944-11-13'),
    (242, 0, 2, '1944-05-15', '1944-12-29');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (224, 2, 2, '1941-12-05', '1943-10-06'),
    (225, 2, 2, '1942-03-14', '1943-02-01'),
    (226, 2, 2, '1942-03-28', '1944-06-08'),
    (227, 2, 2, '1942-06-30', '1944-11-11'),
    (228, 2, 2, '1942-08-08', '1943-11-25'),
    (229, 2, 2, '1942-08-31', '1942-11-30'),
    (230, 2, 2, '1942-12-29', '1943-11-25'),
    (231, 2, 2, '1943-01-25', '1943-07-20'),
    (232, 2, 2, '1943-04-30', '1944-07-07'),
    (233, 2, 2, '1943-07-27', '1943-11-11'),
    (234, 2, 2, '1943-07-31', '1944-10-27'),
    (235, 2, 2, '1943-07-31', '1944-06-07'),
    (236, 2, 2, '1943-10-15', '1944-11-11'),
    (237, 2, 2, '1943-12-10', '1944-11-13'),
    (238, 2, 2, '1943-12-03', '1944-12-04'),
    (239, 2, 2, '1943-11-27', '1945-04-07'),
    (240, 2, 2, '1944-02-20', '1944-10-26'),
    (241, 2, 2, '1944-03-11', '1944-11-13'),
    (242, 2, 2, '1944-05-15', '1944-12-29');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (226, 1, 1, '1943-12-17', '1944-06-08'),
    (226, 2, 1, '1943-12-17', '1944-06-08'),
    (227, 1, 1, '1944-06-20', '1944-11-11'),
    (233, 1, 1, '1943-07-27', '1943-11-11'), /* ?? */
    (234, 1, 1, '1943-07-31', '1944-10-27'),
    (235, 1, 1, '1943-07-31', '1944-06-07'),
    (236, 1, 1, '1943-10-15', '1944-11-11'),
    (237, 1, 1, '1943-12-10', '1944-11-13'), /* ?? */
    (238, 1, 1, '1943-12-03', '1944-12-04'), /* ?? */
    (239, 1, 1, '1943-11-27', '1945-04-07'),
    (240, 1, 1, '1944-02-20', '1944-10-26'),
    (241, 1, 1, '1944-03-11', '1944-11-13'), /* ?? */
    (242, 1, 1, '1944-05-15', '1944-12-29');
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (224, 32, 1, '1941-12-05', '1943-10-06'),
    (225, 32, 1, '1942-03-14', '1943-02-01'),
    (226, 32, 1, '1942-03-28', '1944-06-08'),
    (227, 32, 1, '1942-06-30', '1944-11-11'),
    (228, 32, 1, '1942-08-08', '1943-11-25'),
    (229, 32, 1, '1942-08-31', '1942-11-30'),
    (230, 32, 1, '1942-12-29', '1943-11-25'),
    (231, 32, 1, '1943-01-25', '1943-07-20'),
    (232, 32, 1, '1943-04-30', '1944-07-07'),
    (233, 32, 1, '1943-07-27', '1943-11-11'),
    (234, 32, 1, '1943-07-31', '1944-10-27'),
    (235, 32, 1, '1943-07-31', '1944-06-07'),
    (236, 32, 1, '1943-10-15', '1944-11-11'),
    (237, 32, 1, '1943-12-10', '1944-11-13'),
    (238, 32, 1, '1943-12-03', '1944-12-04'),
    (239, 32, 1, '1943-11-27', '1945-04-07'),
    (240, 32, 1, '1944-02-20', '1944-10-26'),
    (241, 32, 1, '1944-03-11', '1944-11-13'),
    (242, 32, 1, '1944-05-15', '1944-12-29');
        
        
        
