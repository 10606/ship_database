
/* mines and depth charges */
create table mine_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    size double precision,    /* мм */
    mass double precision,    /* кг */
    mass_ex double precision, /* кг */
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table mine_list add check (size >= 0);
alter table mine_list add check (mass_ex >= 0);
alter table mine_list add check (mass >= mass_ex);

create index on mine_list(id);


create table throwers
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    caliber double precision, /* мм */
    tubes_count int,
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table throwers add check (caliber > 0);
alter table throwers add check (tubes_count > 0);
/* throwers >=< mine_list    */

create index on throwers(id);


create table thrower__depth_charge
(
    thrower_id int not null,
    depth_charge_id int not null,
    
    primary key (thrower_id, depth_charge_id),
    foreign key (thrower_id) references throwers(id)
        on delete restrict on update cascade,
    foreign key (depth_charge_id) references mine_list(id)
        on delete restrict on update cascade
);

create index on thrower__depth_charge(thrower_id);



create table catapult_class
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id)
);
create index on catapult_class(id);


create table catapult
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null,
    
    length  double precision,
    width   double precision,
    speed   double precision, /* м/с */
    launch_mass  double precision, /* кг */
    alleceration double precision, /* g */
    in_service date,
    
    primary key (id),
    foreign key (class_id) references catapult_class(id)
        on delete restrict on update cascade
);
create index on catapult(id);


