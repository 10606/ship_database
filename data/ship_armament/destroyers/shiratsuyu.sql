
/*
    185 - Сирацую   
    186 - Сигуре    
    187 - Мурасаме  
    188 - Юдати     
    189 - Самидаре  
    190 - Харусаме  
    191 - Ямакадзе  
    192 - Кавакадзе 
    193 - Умикадзе  
    194 - Судзукадзе
*/


/* характеристики */
insert into general
    (ship_id, date_from, date_to, 
     displacement_standart, displacement_full, 
     length, width, draft,
     crew, speed_max, speed_cruise, range)
    values
    (185, '1936-08-20', '1944-06-15',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (186, '1936-09-07', '1945-01-24',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (187, '1937-01-07', '1943-03-05',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (188, '1937-01-07', '1942-11-13',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (189, '1937-01-29', '1944-08-25',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (190, '1937-08-26', '1944-06-08',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (191, '1937-01-30', '1942-06-25',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (192, '1937-04-30', '1943-08-07',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (193, '1937-05-31', '1944-02-01',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400),
    (194, '1937-08-31', '1944-01-26',   1685, 1980,     107.5, 9.9, 3.5,    226, 34, 18, 7400);
 
 
    
/* модернизации */
insert into ship_event_list
    (class_id, ship_id, date_from, date_to, description)
    values
    (7, 185, '1942-11-29', '1942-11-29', 'попадание бомбы B-17'),
    (1, 185, '1942-11-30', '1942-12-18', 'Рабаул'),
    (1, 185, '1942-12-22', '1943-02-16', 'Трук'),
    (1, 185, '1942-02-19', '1943-02-25', 'Сайпан'),
    (1, 185, '1942-03-02', '1942-07-20', 'Сасебо'),
    (7, 185, '1942-11-02', '1942-11-02', 'бой в заливе императрицы Августы, столкновение с Самидаре, обстрелян авиацией'),
    (0, 185, '1943-11-17', '1943-12-24', 'Сасебо'),

    (1, 186, '1943-02-20', '1943-03-13', 'Сасебо'),
    (1, 186, '1943-09-01', '1943-09-20', 'Рабаул'),
    (1, 186, '1943-11-17', '1943-12-20', 'Сасебо'), /* неточная дата окончания */
    (7, 186, '1943-12-24', '1943-12-24', 'столкновение с рыбацкой лодкой в проливе Бунго'),
    (7, 186, '1944-02-17', '1944-02-17', 'Трук, попадание бомбы в башню No2'),
    (1, 186, '1944-02-19', '1944-03-06', 'Палау'),
    (0, 186, '1944-03-22', '1944-05-11', 'Сасебо'), /* неточная дата окончания */
    (0, 186, '1944-11-16', '1944-11-30', 'Сасебо'), /* неточная дата окончания */

    (7, 187, '1941-12-26', '1941-12-26', 'Такео, столкновение с тральщиком W-20'),
    (1, 187, '1942-05-06', '1942-05-31', 'Йокосука'), /* неточная дата окончания */
    (7, 187, '1942-10-05', '1942-10-05', 'у Шортленда, поврежден близкими разрывами бомб'),
    (1, 187, '1942-10-08', '1942-10-13', 'Трук'), /* неточные даты */
    (5, 187, '1942-11-12', '1942-11-13', 'Гуадалканал, попадание снаряда в котельное отделение'),
    (1, 187, '1942-11-18', '1942-11-29', 'Трук'),
    (1, 187, '1943-01-20', '1943-02-07', 'Йокосука'),

    (1, 188, '1941-05-06', '1941-05-31', 'Йокосука'), /* неточная дата окончания */

    (1, 189, '1942-05-06', '1942-05-31', 'Йокосука'), /* неточная дата окончания */
    (1, 189, '1942-10-29', '1942-11-08', 'Трук'), /* неточные даты */
    (1, 189, '1942-11-27', '1942-12-19', 'Йокосука'),
    (1, 189, '1943-08-06', '1943-09-07', 'Йокосука'),
    (7, 189, '1943-11-02', '1943-11-02', 'бой в заливе императрицы Августы, столкновение с Сирацую, попадание 2 снарадов'),
    (1, 189, '1943-11-14', '1943-12-13', 'Трук'),
    (0, 189, '1943-12-19', '1944-03-31', 'Йокосука'), /* неточная дата окончания */

    (1, 190, '1942-05-06', '1942-05-31', 'Йокосука'), /* неточная дата окончания */
    (1, 190, '1942-12-14', '1943-01-05', 'Йокосука'),
    (1, 190, '1943-01-24', '1943-01-24', 'Вевек, торпедирован SS-238 Wahoo, выбросился на мель'),
    (1, 190, '1942-02-23', '1943-05-21', 'Трук'),
    (0, 190, '1943-05-30', '1943-11-05', 'Йокосука'),

    (1, 191, '1942-05-01', '1942-05-31', 'Сасебо'), /* неточная дата окончания */

    (1, 192, '1942-05-01', '1942-05-31', 'Сасебо'), /* неточная дата окончания */
    (7, 192, '1943-02-10', '1943-02-10', 'столкновение с Тоун-Мару'),
    (1, 192, '1943-02-13', '1943-03-02', 'Рабаул'),
    (1, 192, '1943-03-06', '1943-03-21', 'Трук'),
    (1, 192, '1943-03-26', '1943-05-26', 'Сасебо'), /* неточная дата окончания */
    (7, 192, '1943-06-30', '1943-06-30', 'Трук, подрезал рифы'),

    (1, 193, '1942-05-01', '1942-05-31', 'Сасебо'), /* неточная дата окончания */
    (1, 193, '1942-09-28', '1942-10-13', 'Трук'), /* неточная дата окончания */
    (7, 193, '1942-11-18', '1942-11-18', 'попадание бомбы B-17'),
    (1, 193, '1942-11-21', '1942-12-26', 'Рабаул'),
    (1, 193, '1943-01-05', '1943-02-27', 'Сасебо'), /* неточная дата окончания */
    (1, 193, '1943-07-24', '1943-08-17', 'Сасебо'), /* неточная дата окончания */
    (0, 193, '1943-11-06', '1943-12-14', 'Сасебо'), /* неточная дата окончания */

    (7, 194, '1942-02-04', '1942-02-04', 'бухта Старинга, торпедирован SS-191 Sculpin'),
    (1, 194, '1942-02-04', '1942-03-28', 'бухта Старинга'),
    (1, 194, '1942-04-08', '1942-07-15', 'Сасебо'),
    (7, 194, '1943-01-02', '1943-01-02', 'Гуадалканал, поврежден близкими разрывами бомб'),
    (1, 194, '1943-01-06', '1943-01-16', 'Рабаул'),
    (1, 194, '1943-01-21', '1943-01-31', 'Трук'),
    (1, 194, '1943-02-18', '1943-06-16', 'Сасебо'), /* неточная дата окончания */
    (1, 194, '1943-07-26', '1943-08-17', 'Йокосука'),
    (0, 194, '1943-11-06', '1943-12-14', 'Сасебо'); /* неточная дата окончания */
    
    
    
/* орудия ГК */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (185, 2, 2, '1936-08-20', '1944-06-15'),
    (185, 5, 1, '1936-08-20', '1943-11-17'), /* средняя */
    (186, 2, 2, '1936-09-07', '1945-01-24'),
    (186, 5, 1, '1936-09-07', '1944-03-22'), /* средняя */
    (187, 2, 2, '1937-01-07', '1943-03-05'),
    (187, 5, 1, '1937-01-07', '1943-03-05'), /* средняя */
    (188, 2, 2, '1937-01-07', '1942-11-13'),
    (188, 5, 1, '1937-01-07', '1942-11-13'), /* средняя */
    (189, 2, 2, '1937-01-29', '1944-08-25'),
    (189, 5, 1, '1937-01-29', '1943-12-19'), /* средняя */
    (190, 2, 2, '1937-08-26', '1944-06-08'),
    (190, 5, 1, '1937-08-26', '1943-05-30'), /* средняя */
    (191, 2, 2, '1937-01-30', '1942-06-25'),
    (191, 5, 1, '1937-01-30', '1942-06-25'), /* средняя */
    (192, 2, 2, '1937-04-30', '1943-08-07'),
    (192, 5, 1, '1937-04-30', '1943-08-07'), /* средняя */
    (193, 2, 2, '1937-05-31', '1944-02-01'),
    (193, 5, 1, '1937-05-31', '1943-11-06'), /* средняя */
    (194, 2, 2, '1937-08-31', '1944-01-26'),
    (194, 5, 1, '1937-08-31', '1943-11-06'); /* средняя */
        
        
        
/* ПВО */
insert into ship_guns
    (ship_id, mount_id, amount, date_from, date_to)
    values
    (185, 51,  2, '1936-08-20', '1943-11-17'),
    (185, 45,  3, '1943-12-24', '1944-06-15'),
    (185, 44,  1, '1943-12-24', '1944-06-15'),

    (186, 51,  2, '1936-09-07', '1944-03-22'),
    (186, 45,  3, '1944-05-11', '1945-01-24'),
    (186, 44,  1, '1944-05-11', '1945-01-24'),
    (186, 43, 15, '1944-11-30', '1945-01-24'),
    (186, 51,  4, '1944-11-30', '1945-01-24'),

    (187, 51,  2, '1937-01-07', '1943-03-05'),

    (188, 51,  2, '1937-01-07', '1942-11-13'),

    (189, 51,  2, '1937-01-29', '1943-12-19'),
    (189, 45,  3, '1944-03-31', '1944-08-25'),
    (189, 44,  1, '1944-03-31', '1944-08-25'),

    (190, 51,  2, '1937-08-26', '1944-06-08'),
    (190, 45,  3, '1943-11-05', '1944-06-08'),
    (190, 44,  1, '1943-11-05', '1944-06-08'),

    (191, 51,  2, '1937-01-30', '1942-06-25'),

    (192, 51,  2, '1937-04-30', '1943-08-07'),

    (193, 51,  2, '1937-05-31', '1943-11-06'),
    (193, 45,  3, '1943-12-14', '1944-02-01'),
    (193, 44,  1, '1943-12-14', '1944-02-01'),

    (194, 51,  2, '1937-08-31', '1943-11-06'),
    (194, 45,  3, '1943-12-14', '1944-01-26'),
    (194, 44,  1, '1943-12-14', '1944-01-26');
    
    
    
/* торпедные аппараты */
insert into ship_torpedo_tubes
    (ship_id, tube_id, amount, date_from, date_to)
    values
    (185, 13, 2, '1936-08-20', '1944-06-15'),
    (186, 13, 2, '1936-09-07', '1945-01-24'),
    (187, 13, 2, '1937-01-07', '1943-03-05'),
    (188, 13, 2, '1937-01-07', '1942-11-13'),
    (189, 13, 2, '1937-01-29', '1944-08-25'),
    (190, 13, 2, '1937-08-26', '1944-06-08'),
    (191, 13, 2, '1937-01-30', '1942-06-25'),
    (192, 13, 2, '1937-04-30', '1943-08-07'),
    (193, 13, 2, '1937-05-31', '1944-02-01'),
    (194, 13, 2, '1937-08-31', '1944-01-26');
        
        
        
/* радары */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (186, 1, 1, '1944-11-30', '1945-01-24'), /* тип 22 */
    (186, 2, 1, '1944-11-30', '1945-01-24'), /* тип 13 */

    (190, 1, 1, '1943-11-05', '1944-06-08'); /* тип 22 */
    
    
    
/* прожектора */
insert into ship_searchers
    (ship_id, searcher_id, amount, date_from, date_to)
    values
    (185, 32, 1, '1936-08-20', '1944-06-15'),
    (186, 32, 1, '1936-09-07', '1945-01-24'),
    (187, 32, 1, '1937-01-07', '1943-03-05'),
    (188, 32, 1, '1937-01-07', '1942-11-13'),
    (189, 32, 1, '1937-01-29', '1944-08-25'),
    (190, 32, 1, '1937-08-26', '1944-06-08'),
    (191, 32, 1, '1937-01-30', '1942-06-25'),
    (192, 32, 1, '1937-04-30', '1943-08-07'),
    (193, 32, 1, '1937-05-31', '1944-02-01'),
    (194, 32, 1, '1937-08-31', '1944-01-26');
        
        
        
/* бомбометы */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (185, 0, 2, '1936-08-20', '1944-06-15'),
    (186, 0, 2, '1936-09-07', '1945-01-24'),
    (187, 0, 2, '1937-01-07', '1943-03-05'),
    (188, 0, 2, '1937-01-07', '1942-11-13'),
    (189, 0, 2, '1937-01-29', '1944-08-25'),
    (190, 0, 2, '1937-08-26', '1944-06-08'),
    (191, 0, 2, '1937-01-30', '1942-06-25'),
    (192, 0, 2, '1937-04-30', '1943-08-07'),
    (193, 0, 2, '1937-05-31', '1944-02-01'),
    (194, 0, 2, '1937-08-31', '1944-01-26');
        
        
        
/* бомбосбрасыватели */
insert into ship_throwers
    (ship_id, throwers_id, amount, date_from, date_to)
    values
    (185, 3, 2, '1936-08-20', '1944-06-15'),
    (186, 3, 2, '1936-09-07', '1945-01-24'),
    (187, 3, 2, '1937-01-07', '1943-03-05'),
    (188, 3, 2, '1937-01-07', '1942-11-13'),
    (189, 3, 2, '1937-01-29', '1944-08-25'),
    (190, 3, 2, '1937-08-26', '1944-06-08'),
    (191, 3, 2, '1937-01-30', '1942-06-25'),
    (192, 3, 2, '1937-04-30', '1943-08-07'),
    (193, 3, 2, '1937-05-31', '1944-02-01'),
    (194, 3, 2, '1937-08-31', '1944-01-26'),

    (185, 4, 2, '1936-08-20', '1944-06-15'),
    (186, 4, 2, '1936-09-07', '1945-01-24'),
    (187, 4, 2, '1937-01-07', '1943-03-05'),
    (188, 4, 2, '1937-01-07', '1942-11-13'),
    (189, 4, 2, '1937-01-29', '1944-08-25'),
    (190, 4, 2, '1937-08-26', '1944-06-08'),
    (191, 4, 2, '1937-01-30', '1942-06-25'),
    (192, 4, 2, '1937-04-30', '1943-08-07'),
    (193, 4, 2, '1937-05-31', '1944-02-01'),
    (194, 4, 2, '1937-08-31', '1944-01-26'),

    (185, 2, 1, '1936-08-20', '1944-06-15'),
    (186, 2, 1, '1936-09-07', '1945-01-24'),
    (187, 2, 1, '1937-01-07', '1943-03-05'),
    (188, 2, 1, '1937-01-07', '1942-11-13'),
    (189, 2, 1, '1937-01-29', '1944-08-25'),
    (190, 2, 1, '1937-08-26', '1944-06-08'),
    (191, 2, 1, '1937-01-30', '1942-06-25'),
    (192, 2, 1, '1937-04-30', '1943-08-07'),
    (193, 2, 1, '1937-05-31', '1944-02-01'),
    (194, 2, 1, '1937-08-31', '1944-01-26');

