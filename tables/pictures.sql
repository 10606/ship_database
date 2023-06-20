
create table pictures_ship
(
    ship_id int not null,
    path_small text not null,
    path_full text not null,
    description text not null,
    
    primary key (ship_id, path_full),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade
);


create table pictures_aircraft
(
    aircraft_id int not null,
    path_small text not null,
    path_full text not null,
    description text not null,
    
    primary key (aircraft_id, path_full),
    foreign key (aircraft_id) references aircraft_list(id)
        on delete restrict on update cascade
);


create table pictures_gun
(
    gun_id int not null,
    path_small text not null,
    path_full text not null,
    description text not null,
    
    primary key (gun_id, path_full),
    foreign key (gun_id) references gun_list(id)
        on delete restrict on update cascade
);


create table pictures_searcher
(
    searcher_id int not null,
    path_small text not null,
    path_full text not null,
    description text not null,
    
    primary key (searcher_id, path_full),
    foreign key (searcher_id) references searchers(id)
        on delete restrict on update cascade
);


create table pictures_catapult
(
    catapult_id int not null,
    path_small text not null,
    path_full text not null,
    description text not null,
    
    primary key (catapult_id, path_full),
    foreign key (catapult_id) references searchers(id)
        on delete restrict on update cascade
);

