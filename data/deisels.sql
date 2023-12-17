    
/* дизеля */
insert into diesel_list
    (id, mass, max_power, in_service ,
        name_ru, name_en,
        cilinder_diameter, cilinder_stroke, cilinder_count,
        volume_of_engine, tact_value)
    values
    (14,  37960, 2250, null, 'Кампон No 22 модель 10',      'Kampon No 22 model 10',  430,  450, 10,   653, 4), /* 2* тип Катори, 4* Акицусима */
    (25,   null, 6400, null, 'Кампон No 11 модель 10',      'Kampon No 11 model 10', null, null, 10,  null, 2), /* 2* тип Титосе */
    (26,   null, 3800, null, 'Кампон No 11 модель 8',       'Kampon No 11 model 8',  null, null,  8,  null, 2), /* 4* Мидзухо */
    (27, 120000, 9600, null, 'Кампон No 13 модель 12',      'Kampon No 13 model 12',  480,  600, 12,  1303, 2), /* 2* Ниссин */
    (28, 104000, 7600, null, 'Кампон No 13 модель 10',      'Kampon No 13 model 10',  480,  600, 10,  1086, 2), /* 4* Ниссин */
    (29,   null, 1900, null, 'Кампон No 13 модель 6',       'Kampon No 13 model 6',   420,  520,  6, 432.3, 2); /* 2* Ниссин (компрессор для Кампон No 13 модель 12) */
    
    
