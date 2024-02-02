
insert into documents_group
    (id, path_preview, description)
    values
    (0, null, 'USNTMJ reports E'),
    (1, null, 'USNTMJ reports O'),
    (2, null, 'USNTMJ reports S'),
    (3, null, 'USNTMJ reports X'),
    (4, null, 'other');
 
    
    
/* https://www.fischer-tropsch.org/primary_documents/gvt_reports/USNAVY/USNTMJ%20Reports/USNTMJ_toc.htm */

insert into documents_general
    (group_id, path_document, path_preview, description, priority)
    values
    (0, 'USNTMJ_reports/E/E-01____radar_ship_and_submarine.pdf',            'USNTMJ_reports/E/E-01____radar_ship_and_submarine__type_13_antenna.png',                                   'E-01   корабельные радары',                                 0),
    (0, 'USNTMJ_reports/E/E-02____radar_airbone.pdf',                       'USNTMJ_reports/E/E-02____type_4_mark_6_mod_3_(FM-1)_receiver.png',                                         'E-02   авиационные радары',                                 1),
    (0, 'USNTMJ_reports/E/E-03____radar_land_based.pdf',                    'USNTMJ_reports/E/E-03____type_12_mod_3.png',                                                               'E-03   радары наземного базирования',                       2),
    (0, 'USNTMJ_reports/E/E-04____cm_wave_techniques.pdf',                  'USNTMJ_reports/E/E-04____cm_wave_techniques.png',                                                          'E-04   волны сантиметрового диапазона',                     3),
    (0, 'USNTMJ_reports/E/E-05____radio_direction_finders.pdf',             'USNTMJ_reports/E/E-05____type_29__115KHz..15MHz.png',                                                      'E-05   радиопеленгаторы',                                   4),
    (0, 'USNTMJ_reports/E/E-06____anti_radar_coverings.pdf',                'USNTMJ_reports/E/E-06____anti_radar_coverings.png',                                                        'E-06   антирадарные покрытия',                              5),
    (0, 'USNTMJ_reports/E/E-07____radar_detectors.pdf',                     'USNTMJ_reports/E/E-07____radar_detector_antenna.png',                                                      'E-07   радар детекторы',                                    6),
    (0, 'USNTMJ_reports/E/E-09____navigation.pdf',                          'USNTMJ_reports/E/E-09____FH-1_altimeter.png',                                                              'E-09   навигация',                                          8),
    (0, 'USNTMJ_reports/E/E-10____sonar.pdf',                               'USNTMJ_reports/E/E-10____sonar_type_93.png',                                                               'E-10   сонары и гидрофоны',                                 9),
    (0, 'USNTMJ_reports/E/E-12____radar_experimental.pdf',                  'USNTMJ_reports/E/E-12____type_62__150MHz_10kW.png',                                                        'E-12   экспериментальные радары',                          10),
    (0, 'USNTMJ_reports/E/E-13____electronic_tubes.pdf',                    'USNTMJ_reports/E/E-13____kenetron_Tokyo_Shibaura_E-34_50MHz_70kV.png',                                     'E-13   радиолампы',                                        11),
    (0, 'USNTMJ_reports/E/E-14____radar_airborne_submarine_detectors.pdf',  'USNTMJ_reports/E/E-14____sumbarine_detector_theory.png',                                                   'E-14   обнаружение подводных лодок с воздуха',             12),
    (0, 'USNTMJ_reports/E/E-15____power_supply.pdf',                        'USNTMJ_reports/E/E-15____selenium_rectifier_with_magnesium.png',                                           'E-15   элементы блоков питания',                           13),
    (0, 'USNTMJ_reports/E/E-16____radar_antenna.pdf',                       'USNTMJ_reports/E/E-16____E-27_racket_type_antenna.png',                                                    'E-16   антенны радаров',                                   14),
    (0, 'USNTMJ_reports/E/E-19____radio_electronic_materials.pdf',          'USNTMJ_reports/E/E-19____dust_cores_RF_coil.png',                                                          'E-19   материалы для радиоэлектроники',                    17),
    (0, 'USNTMJ_reports/E/E-20____radio_freq_transmissions_and_wave_guides.pdf',    'USNTMJ_reports/E/E-20____duplexing.png',                                                           'E-20   передача радиосигнала',                             18),
    (0, 'USNTMJ_reports/E/E-22____radio_freq_measuring.pdf',                'USNTMJ_reports/E/E-22____equipment_for_RF_spectrum_analysis.png',                                          'E-22   радиооборудование для измерений частоты',           19),
    (0, 'USNTMJ_reports/E/E-26____electronic_harbor_protection.pdf',        'USNTMJ_reports/E/E-26____hydrophone_type_97_sonic_evaluator_view.png',                                     'E-26   оборудование для обнаружения кораблей в гавани',    20),
    (0, 'USNTMJ_reports/E/E-28____electronic.pdf',                          'USNTMJ_reports/E/E-28____second_naval_technical_institute.png',                                            'E-28   электроника',                                       21),
    (0, 'USNTMJ_reports/E/E-30 N__electronic.pdf',                          'USNTMJ_reports/E/E-30 N__goniometer.png',                                                                  'E-30 N электроника',                                       22);
    /*
    (0, 'USNTMJ_reports/E/E-08____radio_equipment.pdf',                     'USNTMJ_reports/E/E-08____radio_equipment.png',                                                             'E-08   радиооборудование',                                  7),
    (0, 'USNTMJ_reports/E/E-17____radio_radar_sonar.pdf',                   'USNTMJ_reports/E/E-17____.png',                                                                            'E-17   радио, радары, сонары',                             15),
    (0, 'USNTMJ_reports/E/E-18____radio_apparatus.pdf',                     'USNTMJ_reports/E/E-18____.png',                                                                            'E-18   радиоаппаратура',                                   16),
    */
    

insert into documents_general
    (group_id, path_document, path_preview, description, priority)
    values
    (3, 'USNTMJ_reports/X/X-02-1__infra_red_part_1_rocket_control.pdf',     'USNTMJ_reports/X/X-02-1__infra_red_part_1_rocket_control__airbone_glider_model_106_0.png',                 'X-02-1 инфракрасное управление для ракет',         0),
    (3, 'USNTMJ_reports/X/X-02-2__infra_red_part_2_heat_locator.pdf',       'USNTMJ_reports/X/X-02-2__infra_red_part_2_heat_locator__heat_ray_detector_type_5.png',                     'X-02-2 инфракрасные детекторы источников тепла',   1),
    (3, 'USNTMJ_reports/X/X-02-3__infra_red_part_3_research.pdf',           'USNTMJ_reports/X/X-02-3__infra_red_part_3_research__photophone_0.png',                                     'X-02-3 инфракрасные приборы связи',                2),
    (3, 'USNTMJ_reports/X/X-03____ultra_violet_communication_equipment.pd', 'USNTMJ_reports/X/X-03____ultra_violet_communication_equipment__experimental_army_light_photophone.png',    'X-03   ультрафиолетовые приборы связи',            3),
    (3, 'USNTMJ_reports/X/X-05____optics.pdf',                              'USNTMJ_reports/X/X-05____optics__submarine_10m_periscope_type_3.png',                                      'X-05   оптика',                                    4),
    (3, 'USNTMJ_reports/X/X-14____electric_wires_quality.pdf',              'USNTMJ_reports/X/X-14____electric_wires_quality.png',                                                      'X-14   качество кабелей',                          5),
    (3, 'USNTMJ_reports/X/X-32____camouflage.pdf',                          'USNTMJ_reports/X/X-32____camouflage__Unryu_1.png',                                                         'X-32   маскировка',                                6);


